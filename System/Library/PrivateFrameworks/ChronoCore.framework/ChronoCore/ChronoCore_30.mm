void sub_224D0D80C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_224DAA8E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  _Block_copy(a4);
  BSDispatchQueueAssert();
  sub_224D0EE58(&qword_27D6F6550, MEMORY[0x277CFA4D8]);
  sub_224DAF198();
  v12 = sub_224DAA8B8();
  BSDispatchQueueAssert();
  v13 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v14 = *(a3 + v13);

  v15 = sub_224D24334(v12, v14);

  if (v15)
  {
    v16 = *(v15 + 16);
    v17 = sub_224DAA0E8();
    v18 = [v17 contentType];

    if (!v18)
    {
      v19 = *__swift_project_boxed_opaque_existential_1((*(v15 + 24) + 16), *(*(v15 + 24) + 40));
      _Block_copy(a4);
      sub_224C8ECA0(v10, v19, a4);
      _Block_release(a4);
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  _Block_release(a4);
}

void sub_224D0DB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  sub_224A3317C(*(a2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 336, v14);
  v6 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v7 = *(v6 + 24);
  v8 = sub_224DADA48();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v8 && (, v9 = sub_224DACFB8(), , v9))
  {
    v10 = *(a3 + 16);
    v11 = v9;
    v10(a3, v11, 0);
  }

  else
  {
    sub_224D0EDFC();
    v12 = swift_allocError();
    v13 = sub_224DA9518();
    (*(a3 + 16))(a3, 0, v13);
  }
}

void sub_224D0DCD0(char *a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v141 = (&v117 - v6);
  v134 = sub_224DAF3B8();
  v124 = *(v134 - 8);
  v7 = *(v124 + 64);
  MEMORY[0x28223BE20](v134);
  i = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v127 = *(v129 - 8);
  v9 = *(v127 + 64);
  MEMORY[0x28223BE20](v129);
  v125 = &v117 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F64F0, &unk_224DC0270);
  v128 = *(v130 - 8);
  v11 = *(v128 + 64);
  MEMORY[0x28223BE20](v130);
  v126 = &v117 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5130, &unk_224DBAE70);
  v135 = *(v140 - 8);
  v13 = v135[8];
  MEMORY[0x28223BE20](v140);
  v15 = &v117 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6500, &unk_224DC0280);
  v142 = *(v16 - 8);
  v17 = *(v142 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v117 - v18);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v143 = *(v139 - 8);
  v20 = v143[8];
  MEMORY[0x28223BE20](v139);
  v138 = &v117 - v21;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
  v22 = *(*(v137 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v137);
  v144 = (&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v136 = &v117 - v26;
  MEMORY[0x28223BE20](v25);
  v145 = &v117 - v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  v29 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  v131 = a2;
  _Block_copy(a2);
  BSDispatchQueueAssert();
  v30 = a1;
  v31 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services];
  sub_224A3317C((v31 + 27), &v148);
  v32 = v149;
  v33 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v34 = (*(v33 + 24))(768, v32, v33);
  v132 = v28;
  if (v34)
  {
    v35 = sub_224CFEA64(v34);

    __swift_destroy_boxed_opaque_existential_1(&v148);
    v19 = sub_224DA26F8(MEMORY[0x277D84F90]);
    v36 = v35 + 64;
    v37 = 1 << v35[32];
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v29 = v38 & *(v35 + 8);
    v39 = (v37 + 63) >> 6;
    v135 = (v143 + 1);
    v140 = v35;

    v30 = 0;
    v134 = (v35 + 64);
    for (i = v39; ; v39 = i)
    {
      if (!v29)
      {
        while (1)
        {
          v42 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v42 >= v39)
          {

            v73 = objc_allocWithZone(MEMORY[0x277CFA1F8]);
            sub_224DAF598();
            v74 = sub_224DAECC8();

            v75 = [v73 initWithConfigurationsByHost_];

            (v131)[2](v131, v75, 0);

            return;
          }

          v29 = *&v36[8 * v42];
          ++v30;
          if (v29)
          {
            v143 = v19;
            v30 = v42;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v143 = v19;
LABEL_13:
      v43 = __clz(__rbit64(v29)) | (v30 << 6);
      v44 = v140;
      v45 = *(v140 + 48);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v47 = *(v46 - 8);
      v48 = v145;
      (*(v47 + 16))(v145, v45 + *(v47 + 72) * v43, v46);
      v49 = *(*(v44 + 56) + 8 * v43);
      v16 = v137;
      *(v48 + *(v137 + 48)) = v49;
      v50 = v136;
      sub_224A3796C(v48, v136, &unk_27D6F6510, &unk_224DC0290);
      v51 = *(v50 + *(v16 + 48));
      v52 = v49;

      v53 = v138;
      sub_224DAA238();
      v141 = *(v47 + 8);
      v142 = v46;
      v141(v50, v46);
      v54 = v139;
      v55 = sub_224DA9FE8();
      v57 = v56;
      (*v135)(v53, v54);
      v58 = v144;
      sub_224A3796C(v48, v144, &unk_27D6F6510, &unk_224DC0290);
      v19 = *&v58[*(v16 + 48)];
      v59 = v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v59;
      v62 = sub_224A3A40C(v55, v57);
      v63 = *(v59 + 16);
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_32;
      }

      v16 = v61;
      if (*(v59 + 24) >= v65)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v68 = v19;
          if (v61)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_224B29FC8();
          v68 = v19;
          if (v16)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_224B18E30(v65, isUniquelyReferenced_nonNull_native);
        v66 = sub_224A3A40C(v55, v57);
        if ((v16 & 1) != (v67 & 1))
        {

          _Block_release(v131);
          sub_224DAFDD8();
          __break(1u);
          return;
        }

        v62 = v66;
        v68 = v19;
        if (v16)
        {
LABEL_5:

          v19 = v148;
          v40 = v148[7];
          v41 = *(v40 + 8 * v62);
          *(v40 + 8 * v62) = v68;

          sub_224A3311C(v145, &unk_27D6F6510, &unk_224DC0290);
          goto LABEL_6;
        }
      }

      v19 = v148;
      v148[(v62 >> 6) + 8] |= 1 << v62;
      v69 = (v19[6] + 16 * v62);
      *v69 = v55;
      v69[1] = v57;
      *(v19[7] + 8 * v62) = v68;
      sub_224A3311C(v145, &unk_27D6F6510, &unk_224DC0290);
      v70 = v19[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_33;
      }

      v19[2] = v72;
LABEL_6:
      v29 &= v29 - 1;
      v141(v144, v142);
      v36 = v134;
    }
  }

  v144 = v31;
  v136 = v15;
  __swift_destroy_boxed_opaque_existential_1(&v148);
  if (qword_281351668 != -1)
  {
LABEL_34:
    swift_once();
  }

  v137 = v16;
  v138 = v30;
  v76 = sub_224DAB258();
  __swift_project_value_buffer(v76, qword_281365078);
  v77 = sub_224DAB228();
  v78 = sub_224DAF2A8();
  v79 = os_log_type_enabled(v77, v78);
  v122 = v19;
  v80 = i;
  v81 = v144;
  if (v79)
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_224A2F000, v77, v78, "Control configuration requested before it's available to the server... waiting.", v82, 2u);
    MEMORY[0x22AA5EED0](v82, -1, -1);
  }

  v83 = swift_allocObject();
  v121 = v83;
  *(v83 + 16) = 0;
  v123 = (v83 + 16);
  v84 = swift_allocObject();
  v120 = v84;
  *(v84 + 16) = 0;
  v131 = (v84 + 16);
  v145 = swift_allocObject();
  *(v145 + 16) = 1;
  sub_224A3317C(v81 + 216, &v148);
  v86 = v149;
  v85 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v147[1] = (*(*(v85 + 8) + 40))(768, v86);
  sub_224DAF388();
  v146 = v29;
  v87 = v29;
  v88 = sub_224DAF358();
  v89 = *(v88 - 8);
  v90 = *(v89 + 56);
  v143 = (v89 + 56);
  v144 = v90;
  v91 = v141;
  v118 = v88;
  (v90)(v141, 1, 1, v88);
  v117 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v139 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  v92 = sub_224B67CF4();
  v93 = v125;
  v119 = v92;
  sub_224DAB468();
  sub_224A3311C(v91, &qword_27D6F5090, &qword_224DB5C30);
  v94 = *(v124 + 8);
  v95 = v134;
  v94(v80, v134);

  __swift_destroy_boxed_opaque_existential_1(&v148);
  sub_224DAF388();
  v96 = v117;
  v148 = v117;
  (v144)(v91, 1, 1, v88);
  sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60);
  v97 = v126;
  v98 = v129;
  sub_224DAB458();
  sub_224A3311C(v91, &qword_27D6F5090, &qword_224DB5C30);

  v94(v80, v95);
  v99 = v120;
  v100 = v98;
  v101 = v121;
  (*(v127 + 8))(v93, v100);
  sub_224A33088(&unk_27D6F6520, &unk_27D6F64F0, &unk_224DC0270);
  v102 = v136;
  v103 = v130;
  sub_224DAB418();
  (*(v128 + 8))(v97, v103);
  v148 = v96;
  (v144)(v91, 1, 1, v118);
  sub_224A33088(&unk_27D6F5150, &unk_27D6F5130, &unk_224DBAE70);
  v104 = v122;
  v105 = v140;
  sub_224DAB448();
  sub_224A3311C(v91, &qword_27D6F5090, &qword_224DB5C30);

  v135[1](v102, v105);
  v106 = swift_allocObject();
  v107 = v138;
  swift_unknownObjectWeakInit();
  v108 = swift_allocObject();
  v108[2] = v106;
  v108[3] = v99;
  v109 = v145;
  v108[4] = v101;
  v108[5] = v109;
  v110 = v132;
  v108[6] = sub_224B7A828;
  v108[7] = v110;
  v111 = swift_allocObject();
  v111[2] = v109;
  v111[3] = v107;
  v111[4] = sub_224B7A828;
  v111[5] = v110;
  sub_224A33088(&unk_27D6F6530, &unk_27D6F6500, &unk_224DC0280);
  swift_retain_n();
  swift_retain_n();

  v107;
  v112 = v137;
  v113 = sub_224DAB408();

  (*(v142 + 8))(v104, v112);
  v114 = v123;
  swift_beginAccess();
  v115 = *v114;
  *v114 = v113;

  v116 = v131;
  swift_beginAccess();
  if (*v116 != 1)
  {
    swift_beginAccess();
    swift_retain_n();
    sub_224ADC248(v147, v113);
    swift_endAccess();
  }
}

unint64_t sub_224D0EDFC()
{
  result = qword_27D6F6540;
  if (!qword_27D6F6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6540);
  }

  return result;
}

uint64_t sub_224D0EE58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224D0EEA0()
{
  result = qword_27D6F6558;
  if (!qword_27D6F6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6558);
  }

  return result;
}

uint64_t sub_224D0EEF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224D058FC(a1, v4, v5, v7, v6);
}

void sub_224D0EFBC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D04184(a1);
}

void sub_224D0EFC4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D043CC(a1);
}

void sub_224D0EFCC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D04684(a1);
}

uint64_t objectdestroy_126Tm()
{
  sub_224A78024(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224D0F054(void *a1, SEL *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_224DA96B8();
  [a1 *a2];
}

uint64_t objectdestroy_82Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_224D0F110(uint64_t *a1, int a2)
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

uint64_t sub_224D0F158(uint64_t result, int a2, int a3)
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

unint64_t sub_224D0F1BC()
{
  result = qword_27D6F65F8;
  if (!qword_27D6F65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F65F8);
  }

  return result;
}

void sub_224D0F2A0(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AA5DCC0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_224A3B79C(0, a3, a4);
      sub_224DAAE78();

      if (!v4)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_224D0F3AC()
{
  sub_224DAB9D8();
  sub_224DAB9B8();
}

uint64_t sub_224D0F424(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(void *, uint64_t))
{
  v416 = a4;
  v407 = a3;
  v408 = a2;
  v425 = a1;
  v404 = sub_224DAA998();
  v422 = *(v404 - 8);
  v7 = *(v422 + 64);
  v8 = MEMORY[0x28223BE20](v404);
  v392 = &v338 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v401 = &v338 - v10;
  v11 = sub_224DAAF28();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v398 = &v338 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = sub_224DAAF48();
  v421 = *(v405 - 8);
  v14 = *(v421 + 64);
  v15 = MEMORY[0x28223BE20](v405);
  v394 = &v338 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v397 = &v338 - v18;
  MEMORY[0x28223BE20](v17);
  v403 = &v338 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v396 = &v338 - v22;
  v413 = sub_224DAAC58();
  v420 = *(v413 - 8);
  v23 = v420[8];
  v24 = MEMORY[0x28223BE20](v413);
  v395 = (&v338 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v406 = (&v338 - v26);
  v412 = sub_224DAB018();
  v419 = *(v412 - 8);
  v27 = *(v419 + 64);
  v28 = MEMORY[0x28223BE20](v412);
  v393 = &v338 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v391 = &v338 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v402 = &v338 - v33;
  MEMORY[0x28223BE20](v32);
  v400 = &v338 - v34;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3780, &qword_224DB3D60);
  v411 = *(v415 - 8);
  v35 = *(v411 + 64);
  v36 = MEMORY[0x28223BE20](v415);
  v390 = &v338 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v399 = &v338 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v410 = &v338 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v409 = &v338 - v43;
  MEMORY[0x28223BE20](v42);
  v417 = &v338 - v44;
  v45 = sub_224DAA9E8();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v423 = &v338 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = sub_224DA9908();
  v418 = *(v424 - 8);
  v48 = *(v418 + 64);
  v49 = MEMORY[0x28223BE20](v424);
  v51 = &v338 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v338 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v338 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v338 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v338 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v338 - v64;
  v414 = a5;
  sub_224DAB9E8();
  v66 = sub_224DAB9C8();

  if (v5)
  {
    return result;
  }

  v426 = v66;
  v389 = v65;
  v387 = v63;
  v388 = v60;
  v384 = v57;
  v385 = v54;
  v386 = v51;
  v68 = v425[4];
  __swift_project_boxed_opaque_existential_1(v425, v425[3]);
  result = sub_224DAD888();
  v383 = 0;
  v70 = v426;
  v382 = result;
  if ((v426 & 0xC000000000000001) != 0)
  {
    result = sub_224DAFA68();
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v70 = result | 0x8000000000000000;
  }

  else
  {
    v74 = -1 << *(v426 + 32);
    v71 = (v426 + 64);
    v72 = ~v74;
    v75 = -v74;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    else
    {
      v76 = -1;
    }

    v73 = v76 & *(v426 + 64);
  }

  v78 = v423;
  v77 = v424;
  v79 = v421;
  v80 = v419;
  v81 = v418;
  v82 = 0;
  v419 = v72;
  v83 = (v72 + 64) >> 6;
  v421 = v418 + 48;
  v381 = (v418 + 32);
  v376 = 0x8000000224DC4490;
  v375 = 0x8000000224DC4470;
  v374 = 0x8000000224DC43E0;
  v357 = 0x8000000224DC43C0;
  v355 = 0x8000000224DC43A0;
  v418 += 8;
  v373 = (v81 + 16);
  v372 = (v81 + 56);
  v371 = (v79 + 16);
  v370 = (v422 + 88);
  v369 = *MEMORY[0x277D463D8];
  v361 = *MEMORY[0x277D463E0];
  v368 = (v80 + 8);
  v367 = (v79 + 8);
  v356 = (v422 + 8);
  v360 = *MEMORY[0x277D46560];
  v365 = v420 + 13;
  v359 = (v422 + 96);
  v358 = *MEMORY[0x277D46558];
  v379 = (v80 + 32);
  v364 = (v80 + 16);
  v363 = v420 + 2;
  v362 = v420 + 1;
  v378 = (v420 + 4);
  v420 = MEMORY[0x277D84F90];
  *&v69 = 136380675;
  v380 = v69;
  *(&v84 + 1) = 2;
  v366 = xmmword_224DB3100;
  *&v84 = 136380931;
  v377 = v84;
  *&v84 = 136446210;
  v354 = v84;
  v425 = v71;
  v426 = v70;
  v422 = v83;
  while (2)
  {
    v85 = v82;
    if ((v70 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v93 = sub_224DAFB18();
        if (!v93)
        {
          goto LABEL_148;
        }

        v95 = v94;
        v431 = v93;
        sub_224DAAA08();
        swift_dynamicCast();
        v91 = v427;
        v431 = v95;
        sub_224DAA988();
        swift_dynamicCast();
        v82 = v85;
        v88 = v73;
        if (!v91)
        {
          goto LABEL_148;
        }

LABEL_20:
        sub_224DAA9F8();
        if ((*v421)(v78, 1, v77) != 1)
        {
          break;
        }

        v85 = v82;
        v73 = v88;
        v71 = v425;
        v70 = v426;
        v83 = v422;
        if ((v426 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      v96 = *v381;
      (*v381)(v389, v78, v77);
      sub_224DAA9D8();
      v97 = sub_224DAA9B8();
      v99 = v98;

      v100 = v97 == 0x6F69736E65747865 && v99 == 0xE90000000000006ELL;
      if (v100 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v101 = sub_224DAB258();
        v102 = __swift_project_value_buffer(v101, qword_281365120);

        v103 = sub_224DAB228();
        v104 = sub_224DAF2A8();

        v105 = os_log_type_enabled(v103, v104);
        v353 = v102;
        if (v105)
        {
          v106 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          v427 = v352;
          *v106 = v380;
          v431 = v91;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
          v107 = sub_224DAFD28();
          v109 = sub_224A33F74(v107, v108, &v427);

          *(v106 + 4) = v109;
          _os_log_impl(&dword_224A2F000, v103, v104, "Migrating extension %{private}s", v106, 0xCu);
          v110 = v352;
          __swift_destroy_boxed_opaque_existential_1(v352);
          MEMORY[0x22AA5EED0](v110, -1, -1);
          MEMORY[0x22AA5EED0](v106, -1, -1);
        }

        v111 = v415;
        v112 = *(v415 + 48);
        v113 = v416[3];
        v114 = v416[4];
        v115 = __swift_project_boxed_opaque_existential_1(v416, v113);
        v429 = v113;
        v430 = *(v114 + 16);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v427);
        (*(*(v113 - 8) + 16))(boxed_opaque_existential_1, v115, v113);
        v117 = v417;
        v118 = v417 + v112;
        v119 = v389;
        v120 = v383;
        sub_224D12EA0(v417, v118, v91, v121, v389, v382, v414, &v427);
        if (!v120)
        {
          v383 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v427);
          v137 = v409;
          sub_224A3796C(v117, v409, &qword_27D6F3780, &qword_224DB3D60);
          v138 = *(v111 + 48);
          v139 = v410;
          (*v379)(v410, v137, v412);
          (*v378)(v139 + v138, v137 + v138, v413);
          v140 = v420;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_224AD9A18(0, v140[2] + 1, 1, v140);
          }

          v141 = v411;
          v78 = v423;
          v143 = v140[2];
          v142 = v140[3];
          v420 = v140;
          v353 = (v143 + 1);
          if (v143 >= v142 >> 1)
          {
            v420 = sub_224AD9A18(v142 > 1, v143 + 1, 1, v420);
          }

          sub_224A3311C(v417, &qword_27D6F3780, &qword_224DB3D60);
          v144 = v424;
          (*v418)(v389, v424);
          v145 = v420;
          v420[2] = v353;
          v146 = v145 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v147 = *(v141 + 72);
          v77 = v144;
          result = sub_224A44E4C(v139, &v146[v147 * v143], &qword_27D6F3780, &qword_224DB3D60);
          goto LABEL_54;
        }

        __swift_destroy_boxed_opaque_existential_1(&v427);

        v122 = v120;
        v123 = sub_224DAB228();
        v124 = sub_224DAF2A8();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v353 = v123;
          v126 = v125;
          v352 = swift_slowAlloc();
          v383 = swift_slowAlloc();
          v427 = v383;
          *v126 = v377;
          v431 = v91;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
          v127 = sub_224DAFD28();
          v129 = sub_224A33F74(v127, v128, &v427);

          *(v126 + 4) = v129;
          *(v126 + 12) = 2114;
          v130 = v120;
          v131 = _swift_stdlib_bridgeErrorToNSError();
          *(v126 + 14) = v131;
          v132 = v352;
          *v352 = v131;
          v133 = v353;
          _os_log_impl(&dword_224A2F000, v353, v124, "Failed to migrate extension %{private}s: %{public}@", v126, 0x16u);
          sub_224A3311C(v132, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v132, -1, -1);
          v134 = v383;
          __swift_destroy_boxed_opaque_existential_1(v383);
          MEMORY[0x22AA5EED0](v134, -1, -1);
          MEMORY[0x22AA5EED0](v126, -1, -1);

          v135 = *v418;
          v136 = v389;
        }

        else
        {

          v135 = *v418;
          v136 = v119;
        }

        v77 = v424;
        result = (v135)(v136, v424);
        v383 = 0;
LABEL_51:
        v78 = v423;
LABEL_54:
        v83 = v422;
        v73 = v88;
        v71 = v425;
        v70 = v426;
        continue;
      }

      v148 = v97 == 1852793705 && v99 == 0xE400000000000000;
      if (v148 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v149 = sub_224DAB258();
        __swift_project_value_buffer(v149, qword_281365120);
        v150 = sub_224DAB228();
        v151 = sub_224DAF2A8();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&dword_224A2F000, v150, v151, "Not migrating icon", v152, 2u);
          MEMORY[0x22AA5EED0](v152, -1, -1);
        }

        else
        {
        }

        v77 = v424;
        result = (*v418)(v389, v424);
        goto LABEL_54;
      }

      if (v97 == 0xD000000000000016 && v376 == v99 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v153 = sub_224DAB258();
        v154 = __swift_project_value_buffer(v153, qword_281365120);

        v351 = v154;
        v155 = sub_224DAB228();
        v156 = sub_224DAF2A8();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v353 = swift_slowAlloc();
          v427 = v353;
          *v157 = v380;
          v431 = v91;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
          LODWORD(v352) = v156;
          v158 = sub_224DAFD28();
          v160 = sub_224A33F74(v158, v159, &v427);

          *(v157 + 4) = v160;
          _os_log_impl(&dword_224A2F000, v155, v352, "Migrating timeline configuration %{private}s", v157, 0xCu);
          v161 = v353;
          __swift_destroy_boxed_opaque_existential_1(v353);
          MEMORY[0x22AA5EED0](v161, -1, -1);
          MEMORY[0x22AA5EED0](v157, -1, -1);
        }

        v162 = v408;
        v77 = v424;
        v164 = v416[3];
        v163 = v416[4];
        v165 = __swift_project_boxed_opaque_existential_1(v416, v164);
        v350 = &v338;
        v166 = *(*(v164 - 1) + 64);
        MEMORY[0x28223BE20](v165);
        v349 = v168;
        v169 = *(v168 + 16);
        v352 = (&v338 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
        v353 = v164;
        v169();
        v170 = v383;
        v171 = sub_224D15DAC(v91, v389, v162);
        if (v170)
        {
          v383 = v170;
LABEL_65:
          v174 = v353;
          v175 = v349;
          v176 = v352;
LABEL_66:
          (*(v175 + 8))(v176, v174);

          v177 = v383;
          v178 = v383;
          v179 = sub_224DAB228();
          v180 = sub_224DAF2A8();

          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v353 = 0;
            v182 = v181;
            v351 = swift_slowAlloc();
            v352 = swift_slowAlloc();
            v427 = v352;
            *v182 = v377;
            v431 = v91;
            sub_224DAAA08();
            sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
            LODWORD(v350) = v180;
            v183 = v179;
            v184 = sub_224DAFD28();
            v186 = sub_224A33F74(v184, v185, &v427);

            *(v182 + 4) = v186;
            v77 = v424;
            *(v182 + 12) = 2114;
            v187 = v177;
            v188 = _swift_stdlib_bridgeErrorToNSError();
            *(v182 + 14) = v188;
            v189 = v351;
            *v351 = v188;
            _os_log_impl(&dword_224A2F000, v183, v350, "Failed to migrate configuration-timeline %{private}s: %{public}@", v182, 0x16u);
            sub_224A3311C(v189, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v189, -1, -1);
            v190 = v352;
            __swift_destroy_boxed_opaque_existential_1(v352);
            MEMORY[0x22AA5EED0](v190, -1, -1);
            MEMORY[0x22AA5EED0](v182, -1, -1);

            result = (*v418)(v389, v77);
LABEL_68:
            v383 = v353;
            goto LABEL_51;
          }

          result = (*v418)(v389, v77);
          goto LABEL_70;
        }

        v346 = v163;
        v347 = v171;
        v172 = sub_224C91BAC();
        sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
        v173 = v388;
        v348 = v172;
        sub_224DAAE58();
        v383 = 0;
        v96(v387, v173, v77);
        v427 = v348;
        v428 = 1;
        v211 = v346[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190);
        v176 = v352;
        v212 = v383;
        v213 = v353;
        v346 = sub_224DAB0A8();
        v383 = v212;
        if (v212)
        {
          v77 = v424;
          (*v418)(v387, v424);

          v174 = v213;
          v175 = v349;
          goto LABEL_66;
        }

        v225 = v214;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v226 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v227 = *(*v226 + 72);
        v228 = (*(*v226 + 80) + 32) & ~*(*v226 + 80);
        v229 = swift_allocObject();
        *(v229 + 16) = v366;
        v230 = (v229 + v228);
        v345 = v226[14];
        *v230 = 1;
        v231 = sub_224DA9688();
        (*(*(v231 - 8) + 56))(v396, 1, 1, v231);
        sub_224A77FD0(v346, v225);
        v345 = v225;
        sub_224DAAFB8();
        v344 = sub_224DA06F0(v229);
        swift_setDeallocating();
        sub_224A3311C(v230, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v343 = sub_224DAA9C8();
        v342 = v232;
        sub_224DAA9D8();
        v341 = sub_224DAA9B8();
        v340 = v233;

        sub_224DAA9D8();
        sub_224DAA9A8();
        v338 = v234;

        v339 = *v373;
        v235 = v398;
        v236 = v424;
        v339(v398, v389, v424);
        (*v372)(v235, 0, 1, v236);
        v237 = v403;
        sub_224DAAEE8();
        (*v371)(v397, v237, v405);
        v339(v384, v387, v236);
        sub_224DAAF78();
        v238 = v401;
        sub_224DAA978();
        v239 = (*v370)(v238, v404);
        if (v239 == v369)
        {
          v240 = v401;
          (*v359)(v401, v404);
          *v406 = *v240;
          v241 = v358;
        }

        else
        {
          v241 = v360;
          if (v239 != v361)
          {

            v296 = sub_224DAB228();
            v297 = sub_224DAF2A8();

            if (os_log_type_enabled(v296, v297))
            {
              v298 = swift_slowAlloc();
              v383 = swift_slowAlloc();
              v427 = v383;
              *v298 = v380;
              v431 = v91;
              sub_224DAAA08();
              sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
              v299 = sub_224DAFD28();
              v301 = sub_224A33F74(v299, v300, &v427);

              *(v298 + 4) = v301;
              _os_log_impl(&dword_224A2F000, v296, v297, "Failed to migrate configuration %{private}s as its metadata has no destination", v298, 0xCu);
              v302 = v383;
              __swift_destroy_boxed_opaque_existential_1(v383);
              MEMORY[0x22AA5EED0](v302, -1, -1);
              MEMORY[0x22AA5EED0](v298, -1, -1);
            }

            sub_224D15EFC();
            v383 = swift_allocError();
            swift_willThrow();
            sub_224A78024(v346, v345);

            (*v368)(v402, v412);
            (*v367)(v403, v405);
            v77 = v424;
            (*v418)(v387, v424);
            (*v356)(v401, v404);

            goto LABEL_65;
          }
        }

        (*v365)(v406, v241, v413);

        v261 = sub_224DAB228();
        v262 = sub_224DAF2A8();

        if (os_log_type_enabled(v261, v262))
        {
          v263 = swift_slowAlloc();
          v351 = swift_slowAlloc();
          v427 = v351;
          *v263 = v380;
          v431 = v91;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
          v264 = sub_224DAFD28();
          v266 = sub_224A33F74(v264, v265, &v427);

          *(v263 + 4) = v266;
          _os_log_impl(&dword_224A2F000, v261, v262, "Migrating configuration %{private}s", v263, 0xCu);
          v267 = v351;
          __swift_destroy_boxed_opaque_existential_1(v351);
          MEMORY[0x22AA5EED0](v267, -1, -1);
          MEMORY[0x22AA5EED0](v263, -1, -1);
        }

        sub_224A78024(v346, v345);
        (*v367)(v403, v405);
        v268 = *v418;
        (*v418)(v387, v424);
        v269 = v400;
        v270 = v412;
        (*v379)(v400, v402, v412);

        (*(v349 + 8))(v352, v353);
        v271 = *(v415 + 48);
        v272 = v399;
        (*v364)(v399, v269, v270);
        (*v363)(&v272[v271], v406, v413);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v420 = sub_224AD9A18(0, v420[2] + 1, 1, v420);
        }

        v274 = v420[2];
        v273 = v420[3];
        if (v274 >= v273 >> 1)
        {
          v420 = sub_224AD9A18(v273 > 1, v274 + 1, 1, v420);
        }

        (*v362)(v406, v413);
        (*v368)(v400, v412);
        v275 = v424;
        v268(v389, v424);
        v276 = v420;
        v420[2] = v274 + 1;
        v277 = v276 + ((*(v411 + 80) + 32) & ~*(v411 + 80)) + *(v411 + 72) * v274;
        v77 = v275;
        v278 = &v430;
LABEL_108:
        result = sub_224A44E4C(*(v278 - 32), v277, &qword_27D6F3780, &qword_224DB3D60);
        goto LABEL_51;
      }

      if (v97 == 0xD000000000000016 && v375 == v99 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v191 = sub_224DAB258();
        v192 = __swift_project_value_buffer(v191, qword_281365120);

        v352 = v192;
        v193 = sub_224DAB228();
        v194 = sub_224DAF2A8();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v353 = swift_slowAlloc();
          v427 = v353;
          *v195 = v380;
          v431 = v91;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
          LODWORD(v351) = v194;
          v196 = sub_224DAFD28();
          v198 = sub_224A33F74(v196, v197, &v427);

          *(v195 + 4) = v198;
          _os_log_impl(&dword_224A2F000, v193, v351, "Migrating snapshot configuration %{private}s", v195, 0xCu);
          v199 = v353;
          __swift_destroy_boxed_opaque_existential_1(v353);
          MEMORY[0x22AA5EED0](v199, -1, -1);
          MEMORY[0x22AA5EED0](v195, -1, -1);
        }

        v200 = v407;
        v201 = v389;
        v203 = v416[3];
        v202 = v416[4];
        v204 = __swift_project_boxed_opaque_existential_1(v416, v203);
        v351 = &v338;
        v205 = *(*(v203 - 8) + 64);
        MEMORY[0x28223BE20](v204);
        v350 = v207;
        isa = v207[2].isa;
        v353 = (&v338 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0));
        isa();
        v209 = v383;
        v210 = sub_224D15DAC(v91, v201, v200);
        if (v209)
        {
          v383 = v209;
LABEL_97:
          (v350[1].isa)(v353, v203);

          v246 = v383;
          v247 = v383;
          v248 = sub_224DAB228();
          v249 = sub_224DAF2A8();

          if (os_log_type_enabled(v248, v249))
          {
            v250 = swift_slowAlloc();
            v353 = 0;
            v251 = v250;
            v351 = swift_slowAlloc();
            v352 = swift_slowAlloc();
            v427 = v352;
            *v251 = v377;
            v431 = v91;
            sub_224DAAA08();
            sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
            v350 = v248;
            v252 = sub_224DAFD28();
            v254 = sub_224A33F74(v252, v253, &v427);

            *(v251 + 4) = v254;
            *(v251 + 12) = 2114;
            v255 = v246;
            v256 = _swift_stdlib_bridgeErrorToNSError();
            *(v251 + 14) = v256;
            v257 = v351;
            *v351 = v256;
            v258 = v350;
            _os_log_impl(&dword_224A2F000, v350, v249, "Failed to migrate configuration-snapshot %{private}s: %{public}@", v251, 0x16u);
            sub_224A3311C(v257, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v257, -1, -1);
            v259 = v352;
            __swift_destroy_boxed_opaque_existential_1(v352);
            MEMORY[0x22AA5EED0](v259, -1, -1);
            MEMORY[0x22AA5EED0](v251, -1, -1);

            v77 = v424;
            result = (*v418)(v389, v424);
            goto LABEL_68;
          }

          v260 = v201;
          v77 = v424;
          result = (*v418)(v260, v424);
LABEL_70:
          v383 = 0;
          goto LABEL_51;
        }

        v347 = v202;
        v349 = v203;
        v348 = v210;
        v215 = sub_224C91BAC();
        sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
        v216 = v386;
        sub_224DAAE58();
        v383 = 0;
        v96(v385, v216, v424);
        v346 = v215;
        v427 = v215;
        v428 = 1;
        v242 = *(v347 + 2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190);
        v243 = v383;
        v345 = sub_224DAB0A8();
        v347 = v244;
        v383 = v243;
        if (v243)
        {
          (*v418)(v385, v424);

          v245 = &v377;
LABEL_96:

          v201 = v389;
          v203 = v349;
          goto LABEL_97;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v281 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v282 = *(*v281 + 72);
        v283 = (*(*v281 + 80) + 32) & ~*(*v281 + 80);
        v284 = swift_allocObject();
        *(v284 + 16) = v366;
        v285 = (v284 + v283);
        v344 = v281[14];
        *v285 = 1;
        v286 = sub_224DA9688();
        (*(*(v286 - 8) + 56))(v396, 1, 1, v286);
        sub_224A77FD0(v345, v347);
        sub_224DAAFB8();
        v340 = sub_224DA06F0(v284);
        swift_setDeallocating();
        sub_224A3311C(v285, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v344 = sub_224DAA9C8();
        v343 = v287;
        sub_224DAA9D8();
        v342 = sub_224DAA9B8();
        v341 = v288;

        sub_224DAA9D8();
        v338 = sub_224DAA9A8();

        v339 = *v373;
        v289 = v398;
        v290 = v424;
        v339(v398, v389, v424);
        (*v372)(v289, 0, 1, v290);
        v291 = v394;
        sub_224DAAEE8();
        (*v371)(v397, v291, v405);
        v339(v384, v385, v290);
        sub_224DAAF78();
        v292 = v392;
        sub_224DAA978();
        v293 = (*v370)(v292, v404);
        if (v293 == v369)
        {
          v294 = v392;
          (*v359)(v392, v404);
          *v395 = *v294;
          v295 = v358;
        }

        else
        {
          v295 = v360;
          if (v293 != v361)
          {

            v319 = sub_224DAB228();
            v320 = sub_224DAF2A8();

            if (os_log_type_enabled(v319, v320))
            {
              v321 = swift_slowAlloc();
              v383 = swift_slowAlloc();
              v427 = v383;
              *v321 = v380;
              v431 = v91;
              sub_224DAAA08();
              sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
              v322 = sub_224DAFD28();
              v324 = sub_224A33F74(v322, v323, &v427);

              *(v321 + 4) = v324;
              _os_log_impl(&dword_224A2F000, v319, v320, "Failed to migrate configuration %{private}s as its metadata has no destination", v321, 0xCu);
              v325 = v383;
              __swift_destroy_boxed_opaque_existential_1(v383);
              MEMORY[0x22AA5EED0](v325, -1, -1);
              MEMORY[0x22AA5EED0](v321, -1, -1);
            }

            sub_224D15EFC();
            v383 = swift_allocError();
            swift_willThrow();
            sub_224A78024(v345, v347);

            (*v368)(v393, v412);
            (*v367)(v394, v405);
            (*v418)(v385, v424);
            (*v356)(v392, v404);
            v245 = &v378;
            goto LABEL_96;
          }
        }

        (*v365)(v395, v295, v413);

        v303 = sub_224DAB228();
        v304 = sub_224DAF2A8();

        if (os_log_type_enabled(v303, v304))
        {
          v305 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          v427 = v352;
          *v305 = v380;
          v431 = v91;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8]);
          v306 = sub_224DAFD28();
          v308 = sub_224A33F74(v306, v307, &v427);

          *(v305 + 4) = v308;
          _os_log_impl(&dword_224A2F000, v303, v304, "Migrating configuration %{private}s", v305, 0xCu);
          v309 = v352;
          __swift_destroy_boxed_opaque_existential_1(v352);
          MEMORY[0x22AA5EED0](v309, -1, -1);
          MEMORY[0x22AA5EED0](v305, -1, -1);
        }

        sub_224A78024(v345, v347);
        (*v367)(v394, v405);
        v310 = *v418;
        (*v418)(v385, v424);
        v311 = v391;
        v312 = v412;
        (*v379)(v391, v393, v412);

        (v350[1].isa)(v353, v349);
        v313 = *(v415 + 48);
        v314 = v390;
        (*v364)(v390, v311, v312);
        (*v363)(&v314[v313], v395, v413);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v420 = sub_224AD9A18(0, v420[2] + 1, 1, v420);
        }

        v316 = v420[2];
        v315 = v420[3];
        if (v316 >= v315 >> 1)
        {
          v420 = sub_224AD9A18(v315 > 1, v316 + 1, 1, v420);
        }

        (*v362)(v395, v413);
        (*v368)(v391, v412);
        v317 = v424;
        v310(v389, v424);
        v318 = v420;
        v420[2] = v316 + 1;
        v277 = v318 + ((*(v411 + 80) + 32) & ~*(v411 + 80)) + *(v411 + 72) * v316;
        v77 = v317;
        v278 = &v422;
        goto LABEL_108;
      }

      if (v97 == 0xD000000000000010 && v374 == v99 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v217 = sub_224DAB258();
        __swift_project_value_buffer(v217, qword_281365120);
        v218 = sub_224DAB228();
        v219 = sub_224DAF2A8();
        if (os_log_type_enabled(v218, v219))
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          v221 = v219;
          v222 = v218;
          v223 = "Not migrating timeline";
LABEL_90:
          _os_log_impl(&dword_224A2F000, v222, v221, v223, v220, 2u);
          v224 = v220;
LABEL_91:
          MEMORY[0x22AA5EED0](v224, -1, -1);

LABEL_142:

          v77 = v424;
          result = (*v418)(v389, v424);
          goto LABEL_51;
        }
      }

      else if (v97 == 0xD000000000000010 && v357 == v99 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v279 = sub_224DAB258();
        __swift_project_value_buffer(v279, qword_281365120);
        v218 = sub_224DAB228();
        v280 = sub_224DAF2A8();
        if (os_log_type_enabled(v218, v280))
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          v221 = v280;
          v222 = v218;
          v223 = "Not migrating snapshot";
          goto LABEL_90;
        }
      }

      else
      {
        if (v97 == 0xD000000000000013 && v355 == v99)
        {
        }

        else
        {
          v326 = sub_224DAFD88();

          if ((v326 & 1) == 0)
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v329 = sub_224DAB258();
            __swift_project_value_buffer(v329, qword_281365120);

            v330 = sub_224DAB228();
            v331 = sub_224DAF2A8();

            v353 = v330;
            if (os_log_type_enabled(v330, v331))
            {
              v332 = swift_slowAlloc();
              v352 = swift_slowAlloc();
              v427 = v352;
              *v332 = v354;
              sub_224DAA9D8();
              v333 = sub_224DAA9B8();
              v335 = v334;

              v336 = sub_224A33F74(v333, v335, &v427);

              *(v332 + 4) = v336;
              v218 = v353;
              _os_log_impl(&dword_224A2F000, v353, v331, "Cannot migrate record with unknown zone %{public}s", v332, 0xCu);
              v337 = v352;
              __swift_destroy_boxed_opaque_existential_1(v352);
              MEMORY[0x22AA5EED0](v337, -1, -1);
              v224 = v332;
              goto LABEL_91;
            }

LABEL_141:

            goto LABEL_142;
          }
        }

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v327 = sub_224DAB258();
        __swift_project_value_buffer(v327, qword_281365120);
        v218 = sub_224DAB228();
        v328 = sub_224DAF2A8();
        if (os_log_type_enabled(v218, v328))
        {
          v220 = swift_slowAlloc();
          *v220 = 0;
          v221 = v328;
          v222 = v218;
          v223 = "Not migrating placeholder";
          goto LABEL_90;
        }
      }

      goto LABEL_141;
    }

    break;
  }

LABEL_12:
  v86 = v85;
  v87 = v73;
  v82 = v85;
  if (v73)
  {
LABEL_16:
    v88 = (v87 - 1) & v87;
    v89 = (v82 << 9) | (8 * __clz(__rbit64(v87)));
    v90 = *(v70 + 56);
    v91 = *(*(v70 + 48) + v89);
    v92 = *(v90 + v89);

    if (v91)
    {
      goto LABEL_20;
    }

LABEL_148:
    sub_224A3B7E4();

    return v420;
  }

  else
  {
    while (1)
    {
      v82 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      if (v82 >= v83)
      {
        goto LABEL_148;
      }

      v87 = v71[v82];
      ++v86;
      if (v87)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224D12C74()
{
  sub_224DABAA8();
  v0 = sub_224DABA98();

  return v0;
}

uint64_t sub_224D12CC8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6600, &unk_224DC04F0);
  v2 = sub_224DAB188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_224DB3100;
  (*(v3 + 16))(v6 + v5, a1, v2);
  return v6;
}

uint64_t sub_224D12E08()
{
  sub_224DAB9A8();
  sub_224DABA78();

  if (!v0)
  {
    sub_224DAB9D8();
    sub_224DABA88();

    sub_224DAB9E8();
    sub_224DABAB8();
  }

  return result;
}

uint64_t sub_224D12EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t), void *a8)
{
  v202 = a8;
  v219 = a7;
  v232 = a6;
  v226 = a5;
  v197 = a2;
  v196 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v236 = v182 - v11;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v206 = *(v235 - 8);
  v12 = *(v206 + 64);
  MEMORY[0x28223BE20](v235);
  v234 = (v182 - v13);
  v195 = sub_224DAB018();
  v194 = *(v195 - 8);
  v14 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v193 = v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v190 = v182 - v18;
  v200 = type metadata accessor for ReplicatedExtension();
  v19 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v201 = v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_224DAAEA8();
  v208 = *(v209 - 8);
  v21 = *(v208 + 64);
  MEMORY[0x28223BE20](v209);
  v220 = v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_224DA9908();
  v23 = *(v228 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v228);
  v191 = v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v210 = v182 - v27;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v217 = *(v218 - 8);
  v28 = *(v217 + 64);
  MEMORY[0x28223BE20](v218);
  v215 = (v182 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6618, &qword_224DC0500);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v216 = v182 - v32;
  v212 = sub_224DAC6F8();
  v211 = *(v212 - 8);
  v33 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v207 = v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6620, &qword_224DC0508);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v224 = v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v223 = (v182 - v39);
  v40 = sub_224DAAF28();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_224DAAF48();
  v225 = *(v227 - 8);
  v44 = *(v225 + 64);
  v45 = MEMORY[0x28223BE20](v227);
  v188 = v182 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v198 = v182 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = v182 - v49;
  v230 = sub_224DACE38();
  v231 = *(v230 - 8);
  v51 = *(v231 + 64);
  v52 = MEMORY[0x28223BE20](v230);
  v189 = v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v199 = v182 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v213 = v182 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v204 = v182 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v205 = (v182 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v214 = v182 - v63;
  MEMORY[0x28223BE20](v62);
  v229 = v182 - v64;
  v222 = sub_224DAA9C8();
  v221 = v65;
  sub_224DAA9D8();
  sub_224DAA9B8();

  v192 = a3;
  sub_224DAA9D8();
  sub_224DAA9A8();

  v66 = v23;
  v68 = v23 + 16;
  v67 = *(v23 + 16);
  v69 = v228;
  v187 = v67;
  v67(v43, v226, v228);
  v203 = v66;
  v70 = *(v66 + 56);
  v186 = v66 + 56;
  v185 = v70;
  v70(v43, 0, 1, v69);
  v71 = v231;
  v72 = v223;
  v73 = v230;
  v222 = v43;
  v74 = v224;
  sub_224DAAEE8();
  v237 = v50;
  v75 = v233;
  sub_224AFD984(sub_224D15F50, v232, v72);
  sub_224A3796C(v72, v74, &qword_27D6F6620, &qword_224DC0508);
  if ((*(v71 + 48))(v74, 1, v73) == 1)
  {
    sub_224A3311C(v74, &qword_27D6F6620, &qword_224DC0508);
    sub_224D15EFC();
    swift_allocError();
    swift_willThrow();
    sub_224A3311C(v72, &qword_27D6F6620, &qword_224DC0508);
    return (*(v225 + 8))(v50, v227);
  }

  else
  {
    v233 = v75;
    v182[1] = v68;
    sub_224A3311C(v72, &qword_27D6F6620, &qword_224DC0508);
    v77 = v229;
    (*(v71 + 32))(v229, v74, v73);
    v78 = v225 + 8;
    v79 = *(v225 + 8);
    v79(v50, v227);
    v80 = v77;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v81 = sub_224DAB258();
    v82 = __swift_project_value_buffer(v81, qword_281365120);
    v83 = *(v71 + 16);
    v84 = v214;
    v224 = (v71 + 16);
    v223 = v83;
    v83(v214, v80, v73);
    v221 = v82;
    v85 = sub_224DAB228();
    v86 = sub_224DAF2A8();
    v87 = os_log_type_enabled(v85, v86);
    v184 = v78;
    v183 = v79;
    if (v87)
    {
      v88 = v84;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138477827;
      v91 = sub_224DACDC8();
      v92 = *(v71 + 8);
      v92(v88, v73);
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&dword_224A2F000, v85, v86, "Found extension %{private}@", v89, 0xCu);
      sub_224A3311C(v90, &unk_27D6F69F0, &unk_224DB3900);
      v93 = v90;
      v94 = v92;
      MEMORY[0x22AA5EED0](v93, -1, -1);
      MEMORY[0x22AA5EED0](v89, -1, -1);
    }

    else
    {

      v94 = *(v71 + 8);
      (v94)(v84, v73);
    }

    sub_224DABB98();
    v95 = v229;
    v96 = sub_224DACDC8();
    v97 = v215;
    sub_224DAF528();

    v98 = v216;
    v99 = v233;
    sub_224DABB78();
    v100 = v220;
    if (v99)
    {

      (*(v217 + 8))(v97, v218);
      return (v94)(v95, v230);
    }

    else
    {
      (*(v217 + 8))(v97, v218);

      v101 = v211;
      v102 = v212;
      v103 = (*(v211 + 48))(v98, 1, v212);
      v219 = v94;
      v214 = 0;
      if (v103 != 1)
      {
        v112 = v207;
        (*(v101 + 32))(v207, v98, v102);
        v113 = v101;
        v114 = sub_224DAC6E8();
        v97 = v205;
        v105 = v229;
        v106 = v230;
        v223(v205, v229, v230);

        v115 = sub_224DAB228();
        v116 = sub_224DAF2A8();
        if (!os_log_type_enabled(v115, v116))
        {

          (v94)(v97, v106);
          (*(v113 + 8))(v112, v212);
          goto LABEL_20;
        }

        v94 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v94 = 134349315;
        LOBYTE(v117) = v116;
        if (v114 >> 62)
        {
          goto LABEL_40;
        }

        v118 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_16;
      }

      sub_224A3311C(v98, &qword_27D6F6618, &qword_224DC0500);
      v104 = v204;
      v105 = v229;
      v106 = v230;
      v223(v204, v229, v230);
      v107 = sub_224DAB228();
      v108 = sub_224DAF2A8();
      if (os_log_type_enabled(v107, v108))
      {
        v97 = v94;
        v94 = swift_slowAlloc();
        v109 = v104;
        v110 = swift_slowAlloc();
        *v94 = 138477827;
        v111 = sub_224DACDC8();
        v97(v109, v106);
        v100 = v220;
        *(v94 + 4) = v111;
        *v110 = v111;
        _os_log_impl(&dword_224A2F000, v107, v108, "Extension has no metadata; migrating anyway %{private}@", v94, 0xCu);
        sub_224A3311C(v110, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v110, -1, -1);
        MEMORY[0x22AA5EED0](v94, -1, -1);
      }

      else
      {

        (v94)(v104, v106);
      }

      v115 = MEMORY[0x277D84F90];
      v117 = v213;
      while (1)
      {
        sub_224BFF164(v117);
        if (v115 >> 62)
        {
          v114 = sub_224DAF838();
          if (!v114)
          {
LABEL_31:

            goto LABEL_32;
          }
        }

        else
        {
          v114 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v114)
          {
            goto LABEL_31;
          }
        }

        v239 = MEMORY[0x277D84F90];
        sub_224DAF9E8();
        if ((v114 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_40:
        v118 = sub_224DAF838();
LABEL_16:
        v119 = v207;
        *(v94 + 4) = v118;

        *(v94 + 12) = 2113;
        v120 = sub_224DACDC8();
        v219(v97, v106);
        *(v94 + 14) = v120;
        *v105 = v120;
        _os_log_impl(&dword_224A2F000, v115, v117, "Extension has %{public}ld descriptors %{private}@", v94, 0x16u);
        sub_224A3311C(v105, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v105, -1, -1);
        MEMORY[0x22AA5EED0](v94, -1, -1);

        (*(v211 + 8))(v119, v212);
        v105 = v229;
LABEL_20:
        v117 = v213;
        v100 = v220;
        v115 = v114;
      }

      v121 = sub_224DAF538();
      v122 = 0;
      v123 = v115;
      v232 = v115 & 0xC000000000000001;
      v233 = v121;
      v124 = (v206 + 16);
      v125 = v123;
      v126 = v114;
      do
      {
        if (v232)
        {
          v127 = MEMORY[0x22AA5DCC0](v122);
        }

        else
        {
          v127 = *(v123 + 8 * v122 + 32);
        }

        v128 = v127;
        ++v122;
        [v127 mutableCopy];
        sub_224DAF758();
        swift_unknownObjectRelease();
        sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
        swift_dynamicCast();
        v129 = v238;
        v130 = [v128 extensionIdentity];
        v131 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v124)(v234, &v130[v131], v235);
        v132 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(&v130[v132], v236, &unk_27D6F5060, &qword_224DB5620);
        v133 = sub_224DAF508();

        [v129 setExtensionIdentity_];
        sub_224DAF9B8();
        v134 = *(v239 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v123 = v125;
      }

      while (v126 != v122);

      v106 = v230;
      v105 = v229;
      v117 = v213;
      v100 = v220;
LABEL_32:
      sub_224DAE9F8();
      v135 = sub_224DAE9A8();
      MEMORY[0x22AA59200]();
      v136 = v214;
      sub_224DACD18();
      if (v136)
      {
        (*(v208 + 8))(v100, v209);

        v139 = v219;
        v219(v117, v106);
        return v139(v105, v106);
      }

      else
      {
        v137 = sub_224DAE9C8();
        sub_224D0F2A0(v137, v100, &unk_2813509D0, 0x277CFA378);

        v138 = sub_224DAE9D8();
        sub_224D0F2A0(v138, v100, &qword_2813509B8, 0x277CFA210);

        sub_224DAAE88();
        (*(v208 + 8))(v100, v209);
        v140 = v202[4];
        v235 = v202[3];
        v236 = v140;
        v141 = __swift_project_boxed_opaque_existential_1(v202, v235);
        v142 = v117;
        v234 = v141;
        v143 = v199;
        v144 = v223;
        v223(v199, v142, v106);
        v145 = v201;
        v144(v201, v143, v106);
        v146 = sub_224DAE9C8();
        v147 = v200;
        *(v145 + *(v200 + 20)) = v146;
        v148 = sub_224DAE9D8();
        v149 = v231 + 8;
        v219(v143, v106);
        *(v145 + *(v147 + 24)) = v148;
        sub_224D15F70(&qword_281358F80, type metadata accessor for ReplicatedExtension);
        sub_224D15F70(&qword_281358F88, type metadata accessor for ReplicatedExtension);
        v150 = sub_224DAB0A8();
        v214 = 0;
        v236 = v149;
        v152 = v151;
        v153 = v150;
        sub_224D15FD8(v145, type metadata accessor for ReplicatedExtension);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v154 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v155 = *(*v154 + 72);
        v156 = (*(*v154 + 80) + 32) & ~*(*v154 + 80);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_224DB3100;
        v158 = (v157 + v156);
        v159 = v154[14];
        *v158 = 1;
        v160 = sub_224DA9688();
        (*(*(v160 - 8) + 56))(v190, 1, 1, v160);
        sub_224A77FD0(v153, v152);
        v234 = v153;
        v235 = v152;
        sub_224DAAFB8();
        v233 = sub_224DA06F0(v157);
        swift_setDeallocating();
        sub_224A3311C(v158, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v232 = sub_224DAA9C8();
        sub_224DAA9D8();
        v231 = sub_224DAA9B8();
        v220 = v161;

        sub_224DAA9D8();
        sub_224DAA9A8();

        v162 = v222;
        v163 = v228;
        v164 = v187;
        v187(v222, v226, v228);
        v185(v162, 0, 1, v163);
        v165 = v198;
        v166 = v230;
        sub_224DAAEE8();
        (*(v225 + 16))(v188, v165, v227);
        v164(v191, v210, v163);
        v167 = v193;
        sub_224DAAF78();
        v168 = v189;
        v223(v189, v229, v166);
        v169 = sub_224DAB228();
        v170 = sub_224DAF288();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *v171 = 138477827;
          v173 = sub_224DACDC8();
          v174 = v219;
          v219(v168, v230);
          *(v171 + 4) = v173;
          *v172 = v173;
          _os_log_impl(&dword_224A2F000, v169, v170, "Migrating extension %{private}@", v171, 0xCu);
          sub_224A3311C(v172, &unk_27D6F69F0, &unk_224DB3900);
          v175 = v172;
          v166 = v230;
          MEMORY[0x22AA5EED0](v175, -1, -1);
          MEMORY[0x22AA5EED0](v171, -1, -1);

          sub_224A78024(v234, v235);
        }

        else
        {

          sub_224A78024(v234, v235);
          v174 = v219;
          v219(v168, v166);
        }

        v176 = v197;
        v177 = v196;
        v178 = v195;
        v179 = v194;
        v183(v198, v227);
        (*(v203 + 8))(v210, v228);
        v174(v213, v166);
        v174(v229, v166);
        (*(v179 + 32))(v177, v167, v178);
        v180 = *MEMORY[0x277D46560];
        v181 = sub_224DAAC58();
        return (*(*(v181 - 8) + 104))(v176, v180, v181);
      }
    }
  }
}

uint64_t sub_224D14AA0(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_224DAAF28();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = v47 - v7;
  v8 = sub_224DAAF48();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v11 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v50 = v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = (v47 - v19);
  v60 = sub_224DA9908();
  v58 = *(v60 - 8);
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v47 - v27;
  v29 = a1;
  sub_224A3796C(a1, v47 - v27, &qword_27D6F38A8, &unk_224DB4650);

  sub_224DAA1F8();
  v32 = *(v14 + 8);
  v30 = v14 + 8;
  v31 = v32;
  (v32)(v28, v13);
  v33 = sub_224DAA048();

  if ((v33 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v35) = 0;
    return v35 & 1;
  }

  v47[2] = v29;
  sub_224A3796C(v29, v26, &qword_27D6F38A8, &unk_224DB4650);

  sub_224DAA1F8();
  (v31)(v26, v13);
  sub_224DAA058();
  v35 = v34;

  if (v35)
  {
    v36 = v56;
    sub_224DA9888();

    v35 = v58;
    v37 = v60;
    if ((*(v58 + 48))(v36, 1, v60) != 1)
    {
      (*(v35 + 32))(v57, v36, v37);
      v56 = v31;
      v47[1] = v30;
      v39 = v35;
      sub_224DAA1E8();
      sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
      sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
      sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
      sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
      v40 = v50;
      sub_224DAA1D8();
      v41 = sub_224DAAF08();
      v48 = v42;
      v49 = v41;
      v43 = v52;
      v44 = v57;
      v45 = v60;
      (*(v35 + 16))(v52, v57, v60);
      (*(v35 + 56))(v43, 0, 1, v45);
      sub_224DAA218();
      sub_224ACFD88(v43, v53);
      v46 = v51;
      sub_224DAAEE8();
      sub_224D15FD8(v43, MEMORY[0x277D46780]);
      LOBYTE(v35) = MEMORY[0x22AA59240](v46, v59);
      (*(v54 + 8))(v46, v55);
      v56(v40, v13);
      (*(v39 + 8))(v44, v60);
      return v35 & 1;
    }

    sub_224A3311C(v36, &unk_27D6F5630, &unk_224DB34C0);
    goto LABEL_5;
  }

  return v35 & 1;
}

uint64_t sub_224D1519C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAF28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAF48();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v23 = sub_224DA9908();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v59 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DACDC8();
  v28 = [v27 isRemote];

  if (v28)
  {
    v49 = a2;
    v50 = v2;
    v29 = sub_224DACDC8();
    v30 = &v29[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v32 = *v30;
    v31 = *(v30 + 1);

    sub_224DAA058();
    v34 = v33;

    if (v34)
    {
      sub_224DA9888();

      if ((*(v24 + 48))(v22, 1, v23) == 1)
      {
        sub_224A3311C(v22, &unk_27D6F5630, &unk_224DB34C0);
        v35 = 0;
      }

      else
      {
        (*(v24 + 32))(v59, v22, v23);
        v36 = sub_224DACDC8();
        sub_224DAF538();
        v37 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*(v51 + 16))(v18, &v36[v37], v52);
        v38 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(&v36[v38], v53, &unk_27D6F5060, &qword_224DB5620);
        v53 = sub_224DAF508();

        v39 = v54;
        sub_224BFF638(0x6F69736E65747865, 0xE90000000000006ELL);
        v40 = sub_224DAAEF8();
        v51 = v41;
        v52 = v40;
        sub_224DAAF08();
        sub_224DAAEC8();
        v42 = v56;
        (*(v24 + 16))(v56, v59, v23);
        (*(v24 + 56))(v42, 0, 1, v23);
        v43 = v55;
        sub_224DAAEE8();
        v35 = MEMORY[0x22AA59240](v43, v49);

        v44 = *(v57 + 8);
        v45 = v43;
        v46 = v58;
        v44(v45, v58);
        v44(v39, v46);
        (*(v24 + 8))(v59, v23);
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_224D1574C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore26ReplicatorMigrationService_clientDescriptor;
  v2 = sub_224DAB188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReplicatorMigrationService()
{
  result = qword_281354EC8;
  if (!qword_281354EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D15844()
{
  result = sub_224DAB188();
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

uint64_t *sub_224D158E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v38 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v33 - v13;
  v14 = sub_224DAAF28();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DAAF48();
  v43 = *(v46 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAA9C8();
  v36 = v21;
  sub_224DAA9D8();
  sub_224DAA9B8();

  sub_224DAA9D8();
  sub_224DAA9A8();

  v22 = sub_224DA9908();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v17, v39, v22);
  (*(v23 + 56))(v17, 0, 1, v22);
  v24 = v40;
  v25 = v38;
  v26 = v37;
  sub_224DAAEE8();
  v45 = v20;
  sub_224AFDB84(sub_224D15FB8, v44, v42, v26);
  sub_224A3796C(v26, v25, &qword_27D6F4930, &unk_224DB8D00);
  if ((*(v41 + 48))(v25, 1, v24) == 1)
  {
    v27 = &qword_27D6F4930;
    sub_224A3311C(v25, &qword_27D6F4930, &unk_224DB8D00);
    sub_224D15EFC();
    swift_allocError();
    swift_willThrow();
    sub_224A3311C(v26, &qword_27D6F4930, &unk_224DB8D00);
  }

  else
  {
    sub_224A3311C(v26, &qword_27D6F4930, &unk_224DB8D00);
    v28 = v34;
    sub_224A44E4C(v25, v34, &qword_27D6F38A8, &unk_224DB4650);
    v29 = v28;
    v30 = v35;
    sub_224A44E4C(v29, v35, &qword_27D6F38A8, &unk_224DB4650);
    v27 = *(v30 + *(v24 + 48));
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    (*(*(v31 - 8) + 8))(v30, v31);
  }

  (*(v43 + 8))(v20, v46);
  return v27;
}

void *sub_224D15DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = __swift_project_boxed_opaque_existential_1(a3, v5);
  (*(v6 + 32))(v10, 768, v5, v6);
  if (*(&v11 + 1))
  {
    v12[0] = v10[0];
    v12[1] = v10[1];
    v12[2] = v11;
    v7 = v12;
    v8 = sub_224A86CAC();
    if (v8)
    {
      v7 = sub_224D158E4(a1, a2, v8);
      sub_224A699F0(v12);
    }

    else
    {
      sub_224D15EFC();
      swift_allocError();
      swift_willThrow();
      sub_224A699F0(v12);
    }
  }

  else
  {
    sub_224A3311C(v10, &qword_27D6F50E0, &qword_224DB41A0);
    sub_224D15EFC();
    swift_allocError();
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_224D15EFC()
{
  result = qword_27D6F6610;
  if (!qword_27D6F6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6610);
  }

  return result;
}

uint64_t sub_224D15F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224D15FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_224D1604C()
{
  result = qword_27D6F6628;
  if (!qword_27D6F6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6628);
  }

  return result;
}

uint64_t sub_224D160F0()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E68);
  __swift_project_value_buffer(v0, qword_281364E68);
  return sub_224DAB238();
}

uint64_t sub_224D16170()
{
  v2[3] = &type metadata for FeatureFlags.ThingamajigFeatureFlags;
  v2[4] = sub_224D167B8();
  v0 = sub_224DA9C98();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

uint64_t sub_224D161C0()
{
  sub_224DA9E78();
  sub_224DA9E68();
  v0 = sub_224DA9D78();

  return v0 & 1;
}

uint64_t sub_224D16204(char a1)
{
  v2 = v1;
  if (qword_281351508 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E68);

  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240448;
    v9 = v1[7];
    v8 = v1[8];

    LOBYTE(v9) = v9(v10);

    if (v9)
    {
      goto LABEL_10;
    }

    v11 = [objc_opt_self() sharedConnection];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = v11;
    v13 = [v11 isiPhoneWidgetsOnMacAllowed];

    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = v2[9];
    v14 = v2[10];

    LOBYTE(v15) = v15(v16);

    if (v15)
    {
      v17 = 1;
    }

    else
    {
LABEL_10:
      v17 = 0;
    }

    *(v7 + 4) = v17;

    *(v7 + 8) = 1026;
    *(v7 + 10) = a1 & 1;
    _os_log_impl(&dword_224A2F000, v5, v6, "Remote widgets enabled changed from %{BOOL,public}d to %{BOOL,public}d", v7, 0xEu);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  else
  {
  }

  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9D88();

  sub_224DA9E68();
  v19 = v2[7];
  v18 = v2[8];

  LOBYTE(v19) = v19(v20);

  if ((v19 & 1) == 0)
  {
    v21 = [objc_opt_self() sharedConnection];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 isiPhoneWidgetsOnMacAllowed];

      if (v23)
      {
        v25 = v2[9];
        v24 = v2[10];

        v25(v26);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:

    __break(1u);
    return result;
  }

LABEL_16:
  sub_224DA9DF8();
}

uint64_t sub_224D164B4()
{
  v1 = v0;
  if (qword_281351508 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E68);

  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    v7 = v0[7];
    v6 = v0[8];

    LOBYTE(v7) = v7(v8);

    if (v7)
    {
      goto LABEL_10;
    }

    v9 = [objc_opt_self() sharedConnection];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    v11 = [v9 isiPhoneWidgetsOnMacAllowed];

    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

    v13 = v1[9];
    v12 = v1[10];

    LOBYTE(v13) = v13(v14);

    if (v13)
    {
      v15 = 1;
    }

    else
    {
LABEL_10:
      v15 = 0;
    }

    *(v5 + 4) = v15;

    _os_log_impl(&dword_224A2F000, v3, v4, "Profile Restrictions Changed - Remote Widgets Enabled: %{BOOL,public}d", v5, 8u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  else
  {
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v17 = v1[7];
  v16 = v1[8];

  LOBYTE(v17) = v17(v18);

  if ((v17 & 1) == 0)
  {
    v19 = [objc_opt_self() sharedConnection];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 isiPhoneWidgetsOnMacAllowed];

      if (v21)
      {
        v23 = v1[9];
        v22 = v1[10];

        v23(v24);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:

    __break(1u);
    return result;
  }

LABEL_16:
  sub_224DA9DF8();
}

uint64_t sub_224D16728()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return swift_deallocClassInstance();
}

unint64_t sub_224D167B8()
{
  result = qword_28135C2F8[0];
  if (!qword_28135C2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135C2F8);
  }

  return result;
}

uint64_t sub_224D1680C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_224DAFD38();
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

  v10 = sub_224DA9518();

  v11 = [v10 debugDescription];
  v12 = sub_224DAEE18();

  return v12;
}

uint64_t sub_224D169F4()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F70);
  __swift_project_value_buffer(v0, qword_281364F70);
  return sub_224DAB238();
}

uint64_t sub_224D16A74()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364D18);
  __swift_project_value_buffer(v0, qword_281364D18);
  if (qword_2813507E0 != -1)
  {
    swift_once();
  }

  v1 = qword_281364CB8;
  return sub_224DAB268();
}

uint64_t sub_224D16C90()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EF8);
  __swift_project_value_buffer(v0, qword_281364EF8);
  return sub_224DAB238();
}

uint64_t sub_224D16D64()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364FA0);
  __swift_project_value_buffer(v0, qword_281364FA0);
  return sub_224DAB238();
}

uint64_t sub_224D16EC0()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F40);
  __swift_project_value_buffer(v0, qword_281364F40);
  return sub_224DAB238();
}

uint64_t sub_224D16F80()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F7210);
  __swift_project_value_buffer(v0, qword_27D6F7210);
  return sub_224DAB238();
}

uint64_t sub_224D17000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v31 = a5;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = sub_224DAE938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAE8B8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAEB38();
  v29 = *(v15 - 8);
  v30 = v15;
  v16 = *(v29 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - v22;
  sub_224DAF528();
  sub_224DAC3B8();
  (*(v20 + 8))(v23, v19);
  if (v34)
  {
    sub_224A36F98(&v33, v35);
    sub_224CF7F14(v26, v14);
    sub_224A4D188(v27, &v33);
    (*(v7 + 16))(v10, v28, v6);
    sub_224DAEB18();
    sub_224DAEB28();
    sub_224DAEB08();
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v24 = swift_allocObject();
    *(v24 + 16) = v31;
    *(v24 + 24) = v32;

    sub_224DAE2B8();

    (*(v29 + 8))(v18, v30);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_224A4D9D4(&v33);
    sub_224AD1978();
    sub_224CBC42C(0, 0, 0);
    return swift_willThrow();
  }
}

uint64_t sub_224D17378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = *v6;

  sub_224D17000(a1, a2, a3, a4, sub_224A4D210, v13);
}

uint64_t sub_224D17450()
{
  v0 = sub_224DAC388();
  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v1, 0);
    v2 = v12;
    v3 = v0 + 32;
    do
    {
      sub_224A3317C(v3, v11);
      v4 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v5 = *(v4 + 8);
      sub_224DAFD58();
      __swift_destroy_boxed_opaque_existential_1(v11);
      v12 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_224A3DFD8((v6 > 1), v7 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v11[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A6B84C();
  v9 = sub_224DAEDA8();

  return v9;
}

uint64_t sub_224D175C8()
{
  v1 = *v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6630, &unk_224DC06F0);
  return sub_224DAEE28();
}

uint64_t get_enum_tag_for_layout_string_18ReplicatorServices0A15DeviceProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_224D1764C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_224D17694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224D176F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v90 = a2;
  v91 = a1;
  v6 = sub_224DAE7C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_224DAAB88();
  v72 = *(v73 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAACE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6638, qword_224DC07A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v82 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  v87 = sub_224DA9908();
  v83 = *(v87 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v87);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_224DAAE38();
  v25 = *(v89 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v89);
  v84 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v88 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v85 = &v70 - v35;
  sub_224A3796C(v4, &v92, &qword_27D6F4900, &unk_224DB8640);
  if (!v93)
  {
    sub_224A3311C(&v92, &qword_27D6F4900, &unk_224DB8640);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  v75 = v21;
  v76 = v4;
  v77 = v13;
  v78 = v12;
  v79 = a3;
  v80 = v7;
  v81 = v6;
  sub_224A36F98(&v92, v94);
  v36 = v94[4];
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  v37 = *(v36 + 16);
  result = sub_224DAAC78();
  v39 = result;
  v40 = *(result + 16);
  v42 = v88;
  v41 = v89;
  if (!v40)
  {
LABEL_9:

    v49 = 1;
    v50 = v79;
    v51 = v78;
    v52 = v77;
    v53 = v76;
    v54 = v75;
    v55 = v84;
    v56 = v85;
LABEL_13:
    (*(v25 + 56))(v56, v49, 1, v41);
    sub_224A3796C(v56, v42, &qword_27D6F3320, &unk_224DBD6F0);
    if ((*(v25 + 48))(v42, 1, v41) == 1)
    {
      v57 = &qword_27D6F3320;
      v58 = v42;
      v59 = &unk_224DBD6F0;
      v60 = v56;
    }

    else
    {
      (*(v25 + 32))(v55, v42, v41);
      v61 = sub_224DAAE18();
      MEMORY[0x28223BE20](v61);
      *(&v70 - 2) = v53;
      sub_224AFD958(sub_224D18110, v61, v54);

      v58 = v82;
      sub_224A3796C(v54, v82, &qword_27D6F6638, qword_224DC07A0);
      if ((*(v52 + 48))(v58, 1, v51) != 1)
      {
        v62 = v55;
        v63 = v70;
        (*(v52 + 32))(v70, v58, v51);
        v64 = v71;
        sub_224DAACC8();
        v65 = sub_224DAAB68();
        (*(v72 + 8))(v64, v73);
        (*(v52 + 8))(v63, v51);
        sub_224A3311C(v54, &qword_27D6F6638, qword_224DC07A0);
        (*(v25 + 8))(v62, v89);
        sub_224A3311C(v85, &qword_27D6F3320, &unk_224DBD6F0);
        v66 = v80;
        v67 = MEMORY[0x277CE3CD0];
        if (v65 != 2)
        {
          v67 = MEMORY[0x277CE3CD8];
        }

        if (v65 <= 1)
        {
          v67 = MEMORY[0x277CE3CE0];
        }

        v68 = v74;
        v69 = v81;
        (*(v80 + 104))(v74, *v67, v81);
        (*(v66 + 32))(v50, v68, v69);
        (*(v66 + 56))(v50, 0, 1, v69);
        return __swift_destroy_boxed_opaque_existential_1(v94);
      }

      v57 = &qword_27D6F6638;
      v59 = qword_224DC07A0;
      sub_224A3311C(v54, &qword_27D6F6638, qword_224DC07A0);
      (*(v25 + 8))(v55, v89);
      v60 = v56;
    }

    sub_224A3311C(v60, &qword_27D6F3320, &unk_224DBD6F0);
    sub_224A3311C(v58, v57, v59);
    (*(v80 + 56))(v50, 1, 1, v81);
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v43 = 0;
  v86 = v25 + 16;
  v44 = (v83 + 8);
  while (v43 < *(v39 + 16))
  {
    (*(v25 + 16))(v30, v39 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v43, v41);
    sub_224DAAD98();
    v45 = sub_224DA9898();
    v47 = v46;
    (*v44)(v24, v87);
    if (v45 == v91 && v47 == v90)
    {

LABEL_12:

      v42 = v88;
      v41 = v89;
      v56 = v85;
      (*(v25 + 32))(v85, v30, v89);
      v49 = 0;
      v50 = v79;
      v51 = v78;
      v52 = v77;
      v53 = v76;
      v54 = v75;
      v55 = v84;
      goto LABEL_13;
    }

    v48 = sub_224DAFD88();

    if (v48)
    {
      goto LABEL_12;
    }

    ++v43;
    v41 = v89;
    result = (*(v25 + 8))(v30, v89);
    v42 = v88;
    if (v40 == v43)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D1809C(uint64_t a1, uint64_t a2)
{
  if (sub_224DAACB8() == *(a2 + 40) && v3 == *(a2 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_224DAFD88();
  }

  return v5 & 1;
}

void sub_224D18130(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_224DA9518();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_224D18194(void *a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener;
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__subscriptions] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients] = v4;
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__services] = a1;
  v8 = objc_opt_self();

  v9 = sub_224DAEDE8();
  v10 = [v8 serialQueueTargetingSharedWorkloop:v9 withQoS:33];

  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue] = v10;
  v11 = *&v1[v3];
  *&v1[v3] = 0;

  v35.receiver = v1;
  v35.super_class = type metadata accessor for ActivityRendererServer();
  v12 = objc_msgSendSuper2(&v35, sel_init);
  v30[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224D21494;
  *(v13 + 24) = v30;
  v33 = sub_224A75AA4;
  v34 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  v32 = &block_descriptor_114;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v12;

  v17 = [v15 listenerWithConfigurator_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v19 = *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener];
    *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener] = v17;

    v20 = a1[11];
    __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(aBlock, v32);
    v30[3] = sub_224DAD178();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
    sub_224DAB488();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v23 = a1[16];
    __swift_project_boxed_opaque_existential_1(a1 + 12, a1[15]);
    v24 = *(v23 + 8);
    aBlock[0] = sub_224DAD9F8();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6838, &qword_224DC0840);
    sub_224A33088(&qword_2813510A0, &unk_27D6F6838, &qword_224DC0840);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v27 = *__swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    aBlock[0] = sub_224BCE258();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57D8, &qword_224DBBD38);
    sub_224A33088(&unk_281351130, &unk_27D6F57D8, &qword_224DBBD38);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v28 = *__swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    aBlock[0] = sub_224BCE2D4();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5800, &unk_224DBB470);
    sub_224A33088(&qword_2813510E0, &unk_27D6F5800, &unk_224DBB470);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v29 = *__swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    aBlock[0] = sub_224BCE414();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6848, &qword_224DC0848);
    sub_224A33088(&qword_281351160, &unk_27D6F6848, &qword_224DC0848);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    return v16;
  }

  return result;
}

id sub_224D1891C(void *a1, uint64_t a2)
{
  sub_224DAA738();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAA6E8();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_224D189C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = a3[11];
    __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_224DAD168();
    v12 = __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x28223BE20](v12);
    v13[-2] = v8;
    sub_224D19EFC(sub_224D21538);

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_224D18B5C(void *a1, uint64_t a2)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v8, v7, v4);
  *(v10 + v9) = a1;
  v11 = a1;
  sub_224D1CC1C(sub_224D21540, v10);
}

void sub_224D18CB0(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = sub_224DAB7B8();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_224DAB848();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v12 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, a3[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  v13 = *(sub_224DAC1E8() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_224DB3100;
  sub_224DAC1B8();
  v16 = *(v12 + 16);
  v17 = sub_224DADA18();

  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(v17 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    return;
  }

  if (!sub_224DAF838())
  {
    goto LABEL_7;
  }

LABEL_4:
  v52 = v17;
  v46 = *&v11[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
  os_unfair_lock_lock(*(v46 + 16));
  v18 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients;
  swift_beginAccess();
  v19 = *&v11[v18];
  v47 = v11;
  if ((v19 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for ActivityRendererClient();
    sub_224D20EB0(&qword_27D6F6830, type metadata accessor for ActivityRendererClient);
    sub_224DAF1F8();
    v19 = v63[10];
    v20 = v63[11];
    v22 = v63[12];
    v21 = v63[13];
    v23 = v63[14];
  }

  else
  {
    v24 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v22 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v19 + 56);

    v21 = 0;
  }

  v45[1] = v22;
  v27 = (v22 + 64) >> 6;
  v50 = v63;
  v49 = (v4 + 8);
  v48 = (v7 + 8);
  v51 = v27;
  v28 = v53;
  if (v19 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = v21;
    v30 = v23;
    v31 = v21;
    if (!v23)
    {
      break;
    }

LABEL_17:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v19 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
LABEL_23:

      sub_224A3B7E4();
      os_unfair_lock_unlock(*(v46 + 16));

      return;
    }

    while (1)
    {
      v35 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
      sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
      v60 = v32;
      sub_224A87A80();
      v36 = sub_224DAF1A8();
      v37 = [v35 initWithExtensions_];

      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      v59 = *&v33[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
      v39 = swift_allocObject();
      v39[2] = v33;
      v39[3] = sub_224CCBCD4;
      v39[4] = v38;
      v63[2] = sub_224D21624;
      v63[3] = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v63[0] = sub_224A39F40;
      v63[1] = &block_descriptor_145;
      v40 = _Block_copy(aBlock);
      v57 = v37;
      v58 = v33;

      sub_224DAB7E8();
      v61 = MEMORY[0x277D84F90];
      sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v41 = v20;
      v42 = v55;
      v43 = v56;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v28, v42, v40);
      _Block_release(v40);

      v44 = v42;
      v20 = v41;
      v27 = v51;
      (*v49)(v44, v43);
      (*v48)(v28, v54);

      v21 = v31;
      v23 = v60;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v34 = sub_224DAF878();
      if (v34)
      {
        v61 = v34;
        type metadata accessor for ActivityRendererClient();
        swift_dynamicCast();
        v33 = aBlock[0];
        v31 = v21;
        v32 = v23;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      goto LABEL_23;
    }

    v30 = *(v20 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224D1943C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x28223BE20](Strong);
    sub_224D19EFC(sub_224D214CC);
  }
}

uint64_t sub_224D194DC()
{
  v0 = sub_224DABCC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C90, &qword_224DBA440);
    v8 = MEMORY[0x22AA5BB00](v7);
    MEMORY[0x28223BE20](v8);
    *(&v9 - 2) = v4;
    sub_224D19EFC(sub_224D21620);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_224D19634(uint64_t *a1)
{
  v47 = sub_224DAB7B8();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_224DAB848();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v36 = *(Strong + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock);
    os_unfair_lock_lock(*(v36 + 16));
    v10 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients;
    swift_beginAccess();
    v11 = *&v9[v10];
    v37 = v9;
    if ((v11 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for ActivityRendererClient();
      sub_224D20EB0(&qword_27D6F6830, type metadata accessor for ActivityRendererClient);
      sub_224DAF1F8();
      v11 = v52[10];
      v12 = v52[11];
      v14 = v52[12];
      v13 = v52[13];
      v15 = v52[14];
    }

    else
    {
      v16 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v14 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v11 + 56);

      v13 = 0;
    }

    v35 = v14;
    v19 = (v14 + 64) >> 6;
    v41 = v52;
    v40 = (v2 + 8);
    v39 = (v5 + 8);
    v42 = v11;
    v38 = v12;
    if (v11 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v20 = v13;
      v21 = v15;
      v22 = v13;
      if (!v15)
      {
        break;
      }

LABEL_13:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v24)
      {
LABEL_19:
        sub_224A3B7E4();
        os_unfair_lock_unlock(*(v36 + 16));

        return;
      }

      while (1)
      {
        v26 = swift_allocObject();
        *(v26 + 16) = v43;
        v49 = *&v24[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
        v27 = swift_allocObject();
        v27[2] = v24;
        v27[3] = sub_224D214C4;
        v27[4] = v26;
        v52[2] = sub_224D21624;
        v52[3] = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v52[0] = sub_224A39F40;
        v52[1] = &block_descriptor_135;
        v28 = _Block_copy(aBlock);
        v48 = v24;

        v29 = v44;
        sub_224DAB7E8();
        v50 = MEMORY[0x277D84F90];
        sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198]);
        v15 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v30 = v46;
        v31 = v19;
        v32 = v47;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v29, v30, v28);
        _Block_release(v28);
        v11 = v42;

        v33 = v32;
        v19 = v31;
        (*v40)(v30, v33);
        v34 = v29;
        v12 = v38;
        (*v39)(v34, v45);

        v13 = v22;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v25 = sub_224DAF878();
        if (v25)
        {
          v50 = v25;
          type metadata accessor for ActivityRendererClient();
          swift_dynamicCast();
          v24 = aBlock[0];
          v22 = v13;
          v23 = v15;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_19;
      }

      v21 = *(v12 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id sub_224D19C48()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ActivityRendererServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224D19D90()
{
  v1 = v0;
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E98);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_224DAA6E8();
    v9 = sub_224A33F74(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_224A2F000, v3, v4, "%{public}s begin listening for connections", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener);

  return [v10 activate];
}

void sub_224D19EFC(void (*a1)(id))
{
  v18 = *(v1 + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock);
  os_unfair_lock_lock(*(v18 + 16));
  v3 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(v1 + v3);
    }

    sub_224DAF7E8();
    type metadata accessor for ActivityRendererClient();
    sub_224D20EB0(&qword_27D6F6830, type metadata accessor for ActivityRendererClient);
    sub_224DAF1F8();
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_20:
      sub_224A3B7E4();
      os_unfair_lock_unlock(*(v18 + 16));
      return;
    }

    while (1)
    {
      a1(v17);

      v8 = v15;
      v9 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_224DAF878())
      {
        type metadata accessor for ActivityRendererClient();
        swift_dynamicCast();
        v17 = v19;
        v15 = v8;
        v16 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_224D1A1BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAA6E8();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAA6F8();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAA708();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAA728();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224D21474;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_89_0;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224D2147C;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_97;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224D21484;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_105_1;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

void sub_224D1A5E0(void *a1)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E98);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v22);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono render service connection from %{public}s activated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue];
      BSDispatchQueueAssert();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      v21 = v18;
      sub_224D1CC1C(sub_224D2148C, v20);
    }

    else
    {
    }
  }
}

void sub_224D1A864(void *a1)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E98);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono render service connection from %{public}s interrupted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  [v3 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue];
      BSDispatchQueueAssert();
      sub_224D1B380();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02FA0(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

void sub_224D1AB1C(void *a1)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E98);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono render service connection from %{public}s invalidated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue];
      BSDispatchQueueAssert();
      sub_224D1B380();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02FA0(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

uint64_t sub_224D1AE58(void *a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_224DAA758();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB728();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = sub_224DAE4F8();
  v33 = *(v35 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v35);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = &v31 - v13;
  v14 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services);
  sub_224A3317C(v14 + 96, v39);
  v15 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  v16 = *(sub_224DAC1E8() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_224DB3100;
  v19 = v33;
  sub_224DAC1B8();
  v20 = *(v15 + 16);
  sub_224DADA18();

  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_224A3317C(v14 + 56, v39);
  __swift_project_boxed_opaque_existential_1(v39, v40);
  sub_224DADA68();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  v21 = v34;
  sub_224DAD168();
  sub_224DAE4D8();
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v22 = *(v14 + 160);
  v23 = (v14 + 136);
  v24 = v35;
  v25 = *(*__swift_project_boxed_opaque_existential_1(v23, v22) + 144);
  (*(v19 + 16))(v12, v21, v24);
  sub_224DAA748();
  sub_224D20EB0(&qword_281351798, MEMORY[0x277D7BBA8]);
  v36 = v3;
  v26 = sub_224DAED78();
  v28 = v27;
  v29 = sub_224DA96B8();
  [v32 initializeConnection_];
  sub_224A78024(v26, v28);

  (*(v37 + 8))(v6, v36);
  return (*(v19 + 8))(v21, v24);
}

uint64_t sub_224D1B380()
{
  v75 = sub_224DAB7B8();
  v74 = *(v75 - 8);
  v1 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_224DAB848();
  v71 = *(v73 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v0;
  v80 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__subscriptions;
  v5 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__subscriptions];
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224D20EB0(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v8 = v86;
    v7 = v87;
    v9 = v88;
    v10 = v89;
    v11 = v90;
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v5 + 56);
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    v8 = v5;
  }

  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v10;
    v16 = v11;
    v17 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      sub_224A3B7E4();

      v21 = v76;
      v22 = *&v76[v80];
      *&v76[v80] = MEMORY[0x277D84FA0];

      v69 = *&v21[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
      os_unfair_lock_lock(*(v69 + 16));
      v23 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
      swift_beginAccess();
      v68 = v23;
      v24 = *&v21[v23];
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = sub_224DAFA68() | 0x8000000000000000;
      }

      else
      {
        v29 = -1 << *(v24 + 32);
        v26 = ~v29;
        v25 = v24 + 64;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v27 = v31 & *(v24 + 64);
        v28 = v24;
      }

      v67[2] = v24;
      result = swift_bridgeObjectRetain_n();
      v32 = 0;
      v67[1] = v26;
      *&v33 = 136446210;
      v77 = v33;
      v79 = v25;
      for (i = v28; ; v28 = i)
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          v46 = sub_224DAFB18();
          if (!v46)
          {
            goto LABEL_39;
          }

          v48 = v47;
          v81[0] = v46;
          sub_224DAA6D8();
          swift_dynamicCast();
          v49 = aBlock[0];
          v81[0] = v48;
          type metadata accessor for ActivityRendererSession();
          swift_dynamicCast();
          v45 = aBlock[0];
          j = v32;
          v42 = v27;
          if (!v49)
          {
LABEL_39:
            sub_224A3B7E4();

            v58 = v76;
            v59 = *&v76[v68];
            *&v76[v68] = MEMORY[0x277D84F98];

            os_unfair_lock_unlock(*(v69 + 16));
            v60 = *&v58[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
            v61 = swift_allocObject();
            *(v61 + 16) = v58;
            v84 = sub_224D21464;
            v85 = v61;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_224A39F40;
            v83 = &block_descriptor_70;
            v62 = _Block_copy(aBlock);
            v63 = v58;
            v64 = v70;
            sub_224DAB7E8();
            v81[0] = MEMORY[0x277D84F90];
            sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
            sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
            v65 = v72;
            v66 = v75;
            sub_224DAF788();
            MEMORY[0x22AA5D760](0, v64, v65, v62);
            _Block_release(v62);
            (*(v74 + 8))(v65, v66);
            (*(v71 + 8))(v64, v73);
          }
        }

        else
        {
          v39 = v32;
          v40 = v27;
          for (j = v32; !v40; ++v39)
          {
            j = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_41;
            }

            if (j >= ((v26 + 64) >> 6))
            {
              goto LABEL_39;
            }

            v40 = *(v25 + 8 * j);
          }

          v42 = (v40 - 1) & v40;
          v43 = (j << 9) | (8 * __clz(__rbit64(v40)));
          v44 = *(*(v28 + 48) + v43);
          v45 = *(*(v28 + 56) + v43);

          if (!v44)
          {
            goto LABEL_39;
          }
        }

        if (qword_281351518 != -1)
        {
          swift_once();
        }

        v80 = v42;
        v50 = sub_224DAB258();
        __swift_project_value_buffer(v50, qword_281364E80);

        v51 = sub_224DAB228();
        v52 = sub_224DAF2A8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          aBlock[0] = v54;
          *v53 = v77;
          v81[0] = *(v45 + 16);
          sub_224DAA6D8();
          sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
          v55 = sub_224DAFD28();
          v57 = sub_224A33F74(v55, v56, aBlock);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_224A2F000, v51, v52, "[%{public}s] Invalidated", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x22AA5EED0](v54, -1, -1);
          MEMORY[0x22AA5EED0](v53, -1, -1);
        }

        sub_224A3317C(*(v45 + 24) + 16, aBlock);
        v34 = v83;
        v35 = v84;
        __swift_project_boxed_opaque_existential_1(aBlock, v83);
        v36 = *(v45 + 16);
        v81[3] = sub_224DAA6D8();
        v81[4] = sub_224D20EB0(&qword_2813517D0, MEMORY[0x277D7BB80]);
        v81[0] = v36;
        v37 = *(v35 + 1);
        v38 = *(v37 + 16);

        v38(v81, v34, v37);
        __swift_destroy_boxed_opaque_existential_1(v81);
        __swift_destroy_boxed_opaque_existential_1(aBlock);

        v32 = j;
        v25 = v79;
        v27 = v80;
      }
    }

    while (1)
    {
      sub_224DAB328();

      v10 = v17;
      v11 = v18;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = sub_224DAF878();
      if (v20)
      {
        v81[0] = v20;
        sub_224DAB338();
        swift_dynamicCast();
        v17 = v10;
        v18 = v11;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v9 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_224D1BD00(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion;
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion) invalidate];
  v6 = *(a1 + v5);
  *(a1 + v5) = 0;

  v7 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer) invalidate];
  v8 = *(a1 + v7);
  *(a1 + v7) = 0;
}

uint64_t sub_224D1BD9C(void *a1, uint64_t a2)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAE4F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  sub_224DAE4D8();
  sub_224D20EB0(&qword_281350C60, MEMORY[0x277CE3AB8]);
  v14 = sub_224DAED78();
  v16 = v15;
  v17 = sub_224DA96B8();
  [a1 systemEnvironmentDidChange_];
  sub_224A78024(v14, v16);

  return (*(v10 + 8))(v13, v9);
}

void sub_224D1C144(uint64_t a1)
{
  v43 = sub_224DAA8A8();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DABCC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v45 = 0;
  v13 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v13 + 16));
  sub_224D1C7E0(v1, a1, &v45);
  os_unfair_lock_unlock(*(v13 + 16));
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  v15 = __swift_project_value_buffer(v14, qword_281364E98);
  v38 = *(v7 + 16);
  v39 = v7 + 16;
  v38(v12, a1, v6);
  v16 = v1;
  v37 = v15;
  v17 = sub_224DAB228();
  v18 = sub_224DAF278();

  v19 = os_log_type_enabled(v17, v18);
  v40 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v36 = a1;
    v21 = v20;
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v21 = 136446722;
    *(v21 + 4) = sub_224A33F74(*&v16[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v16[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v44);
    *(v21 + 12) = 2082;
    sub_224D20EB0(&qword_281350EA0, MEMORY[0x277CF9880]);
    v22 = v18;
    v23 = sub_224DAFD28();
    v24 = v5;
    v26 = v25;
    (*(v7 + 8))(v12, v6);
    v27 = sub_224A33F74(v23, v26, v44);
    v5 = v24;

    *(v21 + 14) = v27;
    *(v21 + 22) = 1026;
    swift_beginAccess();
    *(v21 + 24) = v45;
    _os_log_impl(&dword_224A2F000, v17, v22, "[%{public}s] Activity reload detected - key[%{public}s]: matchesSession=%{BOOL,public}d", v21, 0x1Cu);
    v28 = v35;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v29 = v21;
    a1 = v36;
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  swift_beginAccess();
  if (v45 == 1)
  {
    v30 = *__swift_project_boxed_opaque_existential_1((*&v40[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 136), *(*&v40[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 160));
    sub_224BD770C();
    v38(v42, a1, v6);
    sub_224DAA898();
    sub_224D20EB0(&unk_281351760, MEMORY[0x277D7BC08]);
    v31 = sub_224DAED78();
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v33;
    sub_224A77FD0(v31, v33);
    sub_224D1CC1C(sub_224D21408, v34);

    sub_224A78024(v31, v33);
    (*(v41 + 8))(v5, v43);
  }
}

uint64_t sub_224D1C7E0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v42 = a3;
  v53 = a2;
  v52 = sub_224DABCC8();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - v9;
  v10 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {
    if (v11 < 0)
    {
      v12 = *(a1 + v10);
    }

    v13 = sub_224DAFA68();
    v45 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v13 | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v14 = ~v17;
    v18 = *(v11 + 64);
    v45 = v11 + 64;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v15 = v20 & v18;
    v16 = v11;
  }

  v22 = 0;
  v43 = v14;
  v23 = (v14 + 64) >> 6;
  v46 = (v4 + 8);
  v47 = (v7 + 8);
  v48 = v16;
  while ((v16 & 0x8000000000000000) != 0)
  {
    v30 = sub_224DAFB18();
    if (!v30)
    {
      return sub_224A3B7E4();
    }

    v32 = v31;
    v54 = v30;
    sub_224DAA6D8();
    swift_dynamicCast();
    v33 = v55;
    v54 = v32;
    type metadata accessor for ActivityRendererSession();
    swift_dynamicCast();
    v26 = v15;
    if (!v33)
    {
      return sub_224A3B7E4();
    }

LABEL_19:
    v44 = v15;

    v15 = v26;
    v34 = v23;
    v35 = v49;
    sub_224DAA698();
    v37 = v50;
    v36 = v51;
    MEMORY[0x22AA5ABC0](v50);
    v38 = v35;
    v23 = v34;
    (*v47)(v38, v37);
    v39 = sub_224DABCB8();

    v40 = v36;
    v16 = v48;
    result = (*v46)(v40, v52);
    if (v39)
    {
      result = sub_224A3B7E4();
      *v42 = 1;
      return result;
    }
  }

  v24 = v22;
  v25 = v15;
  if (v15)
  {
LABEL_15:
    v26 = (v25 - 1) & v25;
    v27 = (v22 << 9) | (8 * __clz(__rbit64(v25)));
    v28 = *(*(v16 + 48) + v27);
    v29 = *(*(v16 + 56) + v27);

    if (!v28)
    {
      return sub_224A3B7E4();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v22 >= v23)
    {
      return sub_224A3B7E4();
    }

    v25 = *(v45 + 8 * v22);
    ++v24;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_224D1CBA0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [a1 currentRemoteSubscriptionTypeDidChange_];
}

uint64_t sub_224D1CC1C(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB848();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_224D213F4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_51;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_224DAB7E8();
  v20 = MEMORY[0x277D84F90];
  sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_224D1CF00(char *a1, void *a2, uint64_t a3)
{
  if ([*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_connection] remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    return sub_224A3311C(v10, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F67B0, &qword_224DC0830);
  result = swift_dynamicCast();
  if (result)
  {

    swift_unknownObjectRetain();
    sub_224D1FD50(a1, a2, a3, v7);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

void sub_224D1D01C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364E98);
    v8 = v6;
    v9 = a3;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v12 = 136446466;
      v15 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier];
      v16 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8];

      v17 = sub_224A33F74(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v9;
      v18 = v9;
      _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s] Runtime timer for target=%{public}@ expired.", v12, 0x16u);
      sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    [a1 invalidate];
    v19 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer;
    v20 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer];
    if (v20)
    {
      sub_224A3B79C(0, &qword_281350978, 0x277CF0BD8);
      v21 = a1;
      v22 = v20;
      v23 = sub_224DAF6A8();

      if (v23)
      {
        v24 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion;
        [*&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion] invalidate];
        v25 = *&v8[v24];
        *&v8[v24] = 0;

        v26 = *&v8[v19];
        *&v8[v19] = 0;

        v8 = v26;
      }
    }
  }
}

id sub_224D1D2E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRendererClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224D1D430(uint64_t a1, char *a2, uint64_t a3)
{
  v111 = a3;
  v5 = sub_224DABCC8();
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 8);
  MEMORY[0x28223BE20](v5);
  v103 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v101 = *(v102 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v10 = &v97 - v9;
  v11 = sub_224DAA7A8();
  v104 = *(v11 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DA9F08();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v97 - v19;
  v110 = a1;
  v21 = sub_224DAA768();
  v22 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v23 = a2;
  v24 = *&a2[v22];

  v25 = sub_224D24360(v21, v24);

  if (v25)
  {

    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281364E98);

    v27 = v23;
    v28 = sub_224DAB228();
    v29 = sub_224DAF288();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v113[0] = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_224A33F74(*&v27[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v27[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v113);
      *(v30 + 12) = 2082;
      v113[5] = v21;
      sub_224DAA6D8();
      sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
      v32 = sub_224DAFD28();
      v34 = sub_224A33F74(v32, v33, v113);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_224A2F000, v28, v29, "[%{public}s] Error subscribing to session: Cannot stomp an existing session: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }

    v35 = v111;
    v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v37 = sub_224DAEDE8();
    v38 = [v36 initWithDomain:v37 code:23 userInfo:0];

    v39 = sub_224DA9518();
    (v35)[2](v35, 0, v39);

    goto LABEL_24;
  }

  v98 = v10;
  v99 = v14;
  v100 = v11;
  v40 = v23;
  v41 = *&v23[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services];
  v42 = type metadata accessor for ActivityRendererSession();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  v97 = v41;
  v46 = sub_224BA5F64(v45, v21);
  sub_224DAA778();
  v47 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  swift_beginAccess();
  v49 = v105;
  v48 = v106;
  v50 = v107;
  (*(v106 + 16))(v105, &v46[v47], v107);
  swift_beginAccess();
  (*(v48 + 24))(&v46[v47], v20, v50);
  swift_endAccess();
  sub_224BA5B18();
  v51 = *(v48 + 8);
  v51(v49, v50);
  v51(v20, v50);
  swift_beginAccess();
  v52 = *&v40[v22];
  if ((v52 & 0xC000000000000001) != 0)
  {
    if (v52 < 0)
    {
      v53 = *&v40[v22];
    }

    else
    {
      v53 = v52 & 0xFFFFFFFFFFFFFF8;
    }

    v54 = sub_224DAF838();
    v56 = v108;
    v55 = v109;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    *&v40[v22] = sub_224D2D4FC(v53, v54 + 1);
  }

  else
  {
    v57 = *&v40[v22];

    v56 = v108;
    v55 = v109;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *&v40[v22];
  sub_224B23428(v46, v21, isUniquelyReferenced_nonNull_native);
  *&v40[v22] = v114;

  swift_endAccess();
  sub_224A3317C(v97 + 136, v113);
  v59 = __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  v60 = v21;
  v61 = v98;
  v109 = v60;
  sub_224DAA698();
  v62 = v103;
  v63 = v102;
  MEMORY[0x22AA5ABC0](v102);
  (*(v101 + 8))(v61, v63);
  v64 = *v59;
  sub_224BD770C();
  (*(v56 + 1))(v62, v55);
  v65 = v99;
  sub_224DAA798();
  __swift_destroy_boxed_opaque_existential_1(v113);
  sub_224D20EB0(&qword_281351788, MEMORY[0x277D7BBC8]);
  v66 = v100;
  v67 = v112;
  v68 = sub_224DAED78();
  v49 = v67;
  if (v67)
  {
    (*(v104 + 8))(v65, v66);
    if (qword_281351520 == -1)
    {
LABEL_16:
      v70 = sub_224DAB258();
      __swift_project_value_buffer(v70, qword_281364E98);
      v71 = v40;
      v72 = v49;
      v73 = sub_224DAB228();
      v74 = sub_224DAF288();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v113[0] = v77;
        *v75 = 136446466;
        *(v75 + 4) = sub_224A33F74(*&v71[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v71[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v113);
        *(v75 + 12) = 2114;
        v78 = v49;
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 14) = v79;
        *v76 = v79;
        _os_log_impl(&dword_224A2F000, v73, v74, "[%{public}s] Error subscribing to session: %{public}@", v75, 0x16u);
        sub_224A3311C(v76, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v76, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x22AA5EED0](v77, -1, -1);
        MEMORY[0x22AA5EED0](v75, -1, -1);
      }

      v35 = v111;
      v80 = v49;
      v81 = sub_224DA9518();
      (v35)[2](v35, 0, v81);

      goto LABEL_24;
    }

LABEL_26:
    swift_once();
    goto LABEL_16;
  }

  v82 = v68;
  v83 = v69;
  v108 = v46;
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v84 = sub_224DAB258();
  __swift_project_value_buffer(v84, qword_281364E98);
  v85 = v40;

  v86 = sub_224DAB228();
  v87 = sub_224DAF2A8();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v113[0] = v89;
    *v88 = 136446466;
    *(v88 + 4) = sub_224A33F74(*&v85[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v85[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v113);
    *(v88 + 12) = 2082;
    v114 = sub_224DAA768();
    sub_224DAA6D8();
    v112 = 0;
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v90 = sub_224DAFD28();
    v92 = v91;

    v93 = sub_224A33F74(v90, v92, v113);

    *(v88 + 14) = v93;
    _os_log_impl(&dword_224A2F000, v86, v87, "[%{public}s] Successfully subscribed to session: %{public}s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v89, -1, -1);
    v94 = v88;
    v65 = v99;
    MEMORY[0x22AA5EED0](v94, -1, -1);
  }

  v95 = v104;
  sub_224A77FD0(v82, v83);
  v96 = sub_224DA96B8();
  v35 = v111;
  (*(v111 + 16))(v111, v96, 0);

  sub_224A78024(v82, v83);
  sub_224A78024(v82, v83);

  (*(v95 + 8))(v65, v100);
LABEL_24:
  _Block_release(v35);
}

void sub_224D1E14C(uint64_t a1, void *a2)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E98);
  v5 = a2;

  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_224A33F74(*&v5[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v5[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v17);
    *(v8 + 12) = 2082;
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v10 = sub_224DAFD28();
    v12 = sub_224A33F74(v10, v11, v17);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_224A2F000, v6, v7, "[%{public}s] Unsubscribe from %{public}s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  v13 = *&v5[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v15 = *&v5[v14];

  v16 = sub_224D24360(a1, v15);

  if (v16)
  {
    sub_224BA75AC();
  }

  swift_beginAccess();
  sub_224B0E6B4(a1);
  swift_endAccess();

  os_unfair_lock_unlock(*(v13 + 16));
}

uint64_t sub_224D1E4A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-1] - v4;
  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  sub_224A3317C(*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services) + 96, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);

  sub_224DA9FF8();
  sub_224DACA78();
  (*(v2 + 8))(v5, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void sub_224D1E684(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 unsignedIntegerValue];
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281364E98);
  v7 = a3;

  v8 = sub_224DAB228();
  v9 = sub_224DAF278();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136446722;
    *(v10 + 4) = sub_224A33F74(*&v7[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v7[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v24);
    *(v10 + 12) = 2082;
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v12 = sub_224DAFD28();
    v14 = sub_224A33F74(v12, v13, v24);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2082;
    v15 = NSStringFromWRReloadReason();
    v16 = sub_224DAEE18();
    v18 = v17;

    v19 = sub_224A33F74(v16, v18, v24);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_224A2F000, v8, v9, "[%{public}s] Received message to reload %{public}s for reason: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v20 = *&v7[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v20 + 16));
  v21 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v22 = *&v7[v21];

  v23 = sub_224D24360(a1, v22);

  if (v23)
  {
    sub_224BA64D8(v5);
  }

  os_unfair_lock_unlock(*(v20 + 16));
}

void sub_224D1EA44(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v48 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6740, &unk_224DC0810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = sub_224DAA548();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v50 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v49 = v14;
  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281364E98);
  v20 = a2;

  v21 = v20;
  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  v24 = os_log_type_enabled(v22, v23);
  v47 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44 = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v46 = a5;
    v43 = v28;
    v51 = a1;
    v52 = v28;
    *v25 = 138543618;
    *(v25 + 4) = v21;
    *v27 = v21;
    *(v25 + 12) = 2082;
    sub_224DAA6D8();
    v45 = v15;
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v29 = v21;
    v30 = sub_224DAFD28();
    v32 = sub_224A33F74(v30, v31, &v52);

    *(v25 + 14) = v32;
    v15 = v45;
    _os_log_impl(&dword_224A2F000, v22, v23, "Received action %{public}@ for interaction %{public}s", v25, 0x16u);
    sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
    v33 = v27;
    a4 = v44;
    MEMORY[0x22AA5EED0](v33, -1, -1);
    v34 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    a5 = v46;
    MEMORY[0x22AA5EED0](v34, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  v35 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v35 + 16));
  [a4 integerValue];
  v36 = v49;
  sub_224DAA538();
  v37 = *(v16 + 48);
  v38 = v37(v36, 1, v15);
  v39 = v50;
  if (v38 == 1)
  {
    (*(v16 + 104))(v50, *MEMORY[0x277CFA0A8], v15);
    if (v37(v36, 1, v15) != 1)
    {
      sub_224A3311C(v36, &unk_27D6F6740, &unk_224DC0810);
    }
  }

  else
  {
    (*(v16 + 32))(v50, v36, v15);
  }

  v40 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v41 = *(a3 + v40);

  v42 = sub_224D24360(a1, v41);

  if (v42)
  {
    sub_224BA6950(v47, v39, a5, v48);
  }

  (*(v16 + 8))(v39, v15);
  os_unfair_lock_unlock(*(v35 + 16));
}

uint64_t sub_224D1F058(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6120, qword_224DBE860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_224DA9F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  [a2 integerValue];
  sub_224DA9EE8();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_224A3311C(v9, &qword_27D6F6120, qword_224DBE860);
  }

  v55 = a3;
  (*(v11 + 32))(v23, v9, v10);
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v54 = v18;
  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364EC8);
  v52 = *(v11 + 16);
  v53 = v11 + 16;
  v52(v21, v23, v10);

  v26 = sub_224DAB228();
  v27 = sub_224DAF278();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = v15;
    v29 = v28;
    v50 = swift_slowAlloc();
    v57[0] = v50;
    *v29 = 136446466;
    v56 = a1;
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v30 = sub_224DAFD28();
    v32 = sub_224A33F74(v30, v31, v57);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = sub_224DA9EC8();
    v35 = v34;
    v49 = a1;
    v36 = *(v11 + 8);
    v36(v21, v10);
    v37 = sub_224A33F74(v33, v35, v57);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_224A2F000, v26, v27, "Received setWidgetTaskPriority for %{public}s: %{public}s", v29, 0x16u);
    v38 = v50;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v38, -1, -1);
    v39 = v29;
    v15 = v51;
    MEMORY[0x22AA5EED0](v39, -1, -1);

    v40 = v49;
  }

  else
  {

    v40 = a1;
    v36 = *(v11 + 8);
    v36(v21, v10);
  }

  v41 = v55;
  v42 = *(v55 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v42 + 16));
  v43 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v44 = *(v41 + v43);

  v45 = sub_224D24360(v40, v44);

  os_unfair_lock_unlock(*(v42 + 16));
  if (v45)
  {
    v46 = v54;
    v47 = v52;
    v52(v54, v23, v10);
    v48 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
    swift_beginAccess();
    v47(v15, v45 + v48, v10);
    swift_beginAccess();
    (*(v11 + 24))(v45 + v48, v46, v10);
    swift_endAccess();
    sub_224BA5B18();

    v36(v15, v10);
    v36(v46, v10);
  }

  return (v36)(v23, v10);
}

void sub_224D1F6D0(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__services];
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue];
  v5 = a1;
  v6 = [v5 remoteProcess];
  v7 = type metadata accessor for ActivityRendererClient();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__subscriptions] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions] = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue] = v4;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_connection] = v5;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] = v3;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v4;

  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v9 + 16) = v12;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock] = v9;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__processHandle] = v6;
  v13 = v6;
  sub_224DAF938();

  aBlock = 0xD000000000000011;
  v47 = 0x8000000224DCEB00;
  LODWORD(v52) = [v13 pid];
  v14 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v14);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v15 = &v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier];
  *v15 = 0xD000000000000011;
  *(v15 + 1) = 0x8000000224DCEB00;
  v53.receiver = v8;
  v53.super_class = v7;
  v16 = objc_msgSendSuper2(&v53, sel_init);
  sub_224A3317C(*&v16[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 256, &aBlock);
  v17 = *__swift_project_boxed_opaque_existential_1(&aBlock, v49);
  v52 = 0;
  v18 = *(v17 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v19 = *(v18 + 16);
  v20 = v16;
  os_unfair_lock_lock(v19);
  sub_224A6A874(v17, v13, &v52);
  os_unfair_lock_unlock(*(v18 + 16));
  sub_224A6AF54();
  v21 = v52;
  if (v52)
  {

    v22 = *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion);
    *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion) = v21;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);

    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    *(v23 + 24) = v20;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_224D2146C;
    *(v24 + 24) = v23;
    v50 = sub_224A75AA4;
    v51 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_224A37E38;
    v49 = &block_descriptor_79;
    v25 = _Block_copy(&aBlock);
    v26 = v20;
    v27 = v2;

    [v10 configureConnection_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = &off_27853F000;
      isEscapingClosureAtFileLocation = [v10 remoteProcess];
      sub_224DAA718();
      v29 = sub_224DAEDE8();

      v30 = [isEscapingClosureAtFileLocation hasEntitlement_];

      if (v30)
      {
        v31 = *&v27[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
        os_unfair_lock_lock(*(v31 + 16));
        swift_beginAccess();
        sub_224ADD098(&v52, v26);
        swift_endAccess();

        os_unfair_lock_unlock(*(v31 + 16));
        v32 = &selRef_activate;
LABEL_9:
        [v10 *v32];

        return;
      }

      if (qword_281351520 == -1)
      {
LABEL_6:
        v33 = sub_224DAB258();
        __swift_project_value_buffer(v33, qword_281364E98);
        v34 = v10;
        v35 = sub_224DAB228();
        v36 = sub_224DAF2A8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          aBlock = v45;
          *v37 = 136446466;
          v38 = [v34 v20[393]];
          v39 = v26;
          v40 = [v38 description];

          v41 = sub_224DAEE18();
          v43 = v42;

          v26 = v39;
          v44 = sub_224A33F74(v41, v43, &aBlock);

          *(v37 + 4) = v44;
          *(v37 + 12) = 2082;
          *(v37 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, &aBlock);
          _os_log_impl(&dword_224A2F000, v35, v36, "Chrono render service connection from %{public}s failed to authenticate <entitled: %{public}s>", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v45, -1, -1);
          MEMORY[0x22AA5EED0](v37, -1, -1);
        }

        v32 = &selRef_invalidate;
        goto LABEL_9;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v18 + 16));
  __break(1u);
}

void sub_224D1FD50(char *a1, id a2, uint64_t a3, id a4)
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v86 - v12;
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion;
  if (*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion])
  {
    goto LABEL_2;
  }

  v88 = v11;
  v89 = a2;
  v16 = __swift_project_boxed_opaque_existential_1((*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 256), *(*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 280));
  v17 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__processHandle];
  v18 = *v16;
  v19 = *(*v16 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v19 + 16));
  v20 = [v17 bundleIdentifier];
  v90 = a3;
  if (v20)
  {
    v87 = a1;
    v21 = v20;
    sub_224DAEE18();

    v22 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v23 = *(v18 + v22);

    sub_224DA9FF8();
    v24 = sub_224A33924(v13, v23);
    a1 = v87;

    (*(v9 + 8))(v13, v88);
    os_unfair_lock_unlock(*(v19 + 16));
    a2 = v89;
    if (v24)
    {
LABEL_2:
      (a2)(a4);
      goto LABEL_3;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v19 + 16));
    a2 = v89;
  }

  v25 = [objc_opt_self() targetWithPid_];
  v26 = sub_224DAEDE8();
  v27 = sub_224DAEDE8();
  v28 = [objc_opt_self() attributeWithDomain:v26 name:v27];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_224DB2780;
  *(v29 + 32) = v28;
  v30 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v31 = v25;
  v32 = v28;
  v33 = sub_224DAEDE8();
  sub_224A3B79C(0, &qword_281350B00, 0x277D46DD8);
  v34 = sub_224DAEFF8();

  v35 = [v30 initWithExplanation:v33 target:v31 attributes:v34];

  aBlock = 0;
  v36 = [v35 acquireWithError_];
  v37 = aBlock;
  if (v36)
  {
    v89 = v32;
    v38 = *&a1[v86];
    *&a1[v86] = v35;
    v39 = v37;
    v40 = v35;

    aBlock = 0;
    v92 = 0xE000000000000000;
    sub_224DAF938();

    aBlock = 0x705B746567726154;
    v92 = 0xEB000000003D6469;
    v41 = [v31 description];
    v42 = sub_224DAEE18();
    v44 = v43;

    MEMORY[0x22AA5D210](v42, v44);

    MEMORY[0x22AA5D210](0xD000000000000018, 0x8000000224DCDAB0);
    v45 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
    v46 = sub_224DAEDE8();

    v47 = [v45 initWithIdentifier_];

    v48 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v31;
    v95 = sub_224D21400;
    v96 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_224A3837C;
    v94 = &block_descriptor_61_0;
    v51 = _Block_copy(&aBlock);
    v52 = v31;

    [v47 scheduleWithFireInterval:v48 leewayInterval:v51 queue:10.0 handler:1.0];
    _Block_release(v51);
    v53 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer];
    *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer] = v47;
    v54 = v47;

    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v55 = sub_224DAB258();
    __swift_project_value_buffer(v55, qword_281364E98);
    v56 = v52;
    v57 = a1;
    v58 = sub_224DAB228();
    v59 = sub_224DAF2A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v88 = v40;
      v61 = a4;
      v62 = v60;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v62 = 136446466;
      *(v62 + 4) = sub_224A33F74(*&v57[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v57[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], &aBlock);
      *(v62 + 12) = 2114;
      *(v62 + 14) = v56;
      *v63 = v56;
      v65 = v56;
      _os_log_impl(&dword_224A2F000, v58, v59, "[%{public}s] Acquired runtime assertion for target: %{public}@", v62, 0x16u);
      sub_224A3311C(v63, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x22AA5EED0](v64, -1, -1);
      v66 = v62;
      a4 = v61;
      v40 = v88;
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }

    (a2)(a4);
  }

  else
  {
    v67 = a1;
    v68 = aBlock;
    v69 = sub_224DA9528();

    swift_willThrow();
    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v70 = sub_224DAB258();
    __swift_project_value_buffer(v70, qword_281364E98);
    v71 = v31;
    v72 = v67;
    v73 = v69;
    v74 = sub_224DAB228();
    v75 = sub_224DAF288();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v88 = a4;
      v77 = v76;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v89 = v32;
      v80 = v79;
      aBlock = v79;
      *v77 = 136446722;
      *(v77 + 4) = sub_224A33F74(*&v72[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v72[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], &aBlock);
      *(v77 + 12) = 2114;
      *(v77 + 14) = v71;
      *v78 = v71;
      *(v77 + 22) = 2114;
      v81 = v71;
      v82 = v69;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 24) = v83;
      v78[1] = v83;
      _os_log_impl(&dword_224A2F000, v74, v75, "[%{public}s] Unable to acquire runtime assertion for target: %{public}@ - error: %{public}@", v77, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v84 = v80;
      v32 = v89;
      MEMORY[0x22AA5EED0](v84, -1, -1);
      v85 = v77;
      a4 = v88;
      MEMORY[0x22AA5EED0](v85, -1, -1);
    }

    (a2)(a4);
  }

LABEL_3:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224D206E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_224DAA6D8();
  sub_224D20EB0(&unk_2813517B0, MEMORY[0x277D7BB80]);
  sub_224DAF198();
  sub_224D1E14C(v9, a7);
}

uint64_t sub_224D20970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  sub_224DAA6D8();
  sub_224D20EB0(&unk_2813517B0, MEMORY[0x277D7BB80]);
  sub_224DAF198();
  sub_224D1EA44(v14, a7, a8, a9, a10, a11);
}

uint64_t sub_224D20C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t))
{
  sub_224DAA6D8();
  sub_224D20EB0(&unk_2813517B0, MEMORY[0x277D7BB80]);
  sub_224DAF198();
  a9(v12, a7, a8);
}

uint64_t sub_224D20EB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_224D20EF8(int a1, int a2, char *a3, void *aBlock)
{
  v6 = *&a3[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
  _Block_copy(aBlock);
  BSDispatchQueueAssert();
  sub_224DAA788();
  sub_224D20EB0(&qword_281351790, MEMORY[0x277D7BBB8]);
  sub_224DAF198();
  v7 = v19;
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281364E98);
  v9 = a3;

  v10 = sub_224DAB228();
  v11 = sub_224DAF278();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v12 = 136446466;
    *(v12 + 4) = sub_224A33F74(*&v9[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v9[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], &v19);
    *(v12 + 12) = 2082;
    sub_224DAA768();
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v13 = sub_224DAFD28();
    v15 = v14;

    v16 = sub_224A33F74(v13, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s] Received message to subscribe to %{public}s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v18, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  v17 = *&v9[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v17 + 16));
  _Block_copy(aBlock);
  sub_224D1D430(v7, v9, aBlock);
  os_unfair_lock_unlock(*(v17 + 16));

  _Block_release(aBlock);
}

void sub_224D21408(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_224DA96B8();
  [a1 contentDidChange_];
}

void sub_224D21474(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D1A5E0(a1);
}

void sub_224D2147C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D1A864(a1);
}

void sub_224D21484(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D1AB1C(a1);
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224D21540(void *a1)
{
  v3 = *(sub_224DAB728() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_224D1BD9C(a1, v1 + v4);
}

uint64_t sub_224D21628()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return swift_deallocClassInstance();
}

id sub_224D2169C(void *a1, uint64_t a2)
{
  sub_224DAEBB8();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAEBB8();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

id sub_224D21748()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ControlCenterServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224D21890()
{
  v1 = v0;
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364F28);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_224DAEBB8();
    v9 = sub_224A33F74(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_224A2F000, v3, v4, "%{public}s begin listening for connections", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener);

  return [v10 activate];
}

void sub_224D21A74(void *a1)
{
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364F28);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono ControlCenter connection from %{public}s interrupted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  [v3 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue];
      BSDispatchQueueAssert();
      sub_224D21FD4();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02FF4(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

void sub_224D21D2C(void *a1)
{
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364F28);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono ControlCenter connection from %{public}s invalidated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue];
      BSDispatchQueueAssert();
      sub_224D21FD4();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02FF4(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

uint64_t sub_224D21FD4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue);
  BSDispatchQueueAssert();
  v21 = OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions;
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions);
    }

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224D241E4(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v7 = v23;
    v6 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v3;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_20:
      sub_224A3B7E4();

      v20 = *(v1 + v21);
      *(v1 + v21) = MEMORY[0x277D84FA0];
    }

    while (1)
    {
      sub_224DAB328();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_20;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_224D2224C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlCenterClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224D22324(uint64_t a1, unint64_t a2)
{
  v5 = sub_224DACB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue);
  BSDispatchQueueAssert();
  if (a2)
  {
    v33 = v6;
    v20 = a2;
  }

  else
  {
    v32 = v5;
    v21 = [*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection) remoteToken];
    v22 = [v21 bundleID];

    if (!v22)
    {
      return;
    }

    v33 = v6;
    a1 = sub_224DAEE18();
    v20 = v23;

    v5 = v32;
  }

  if (sub_224D22728(a1, v20))
  {
    sub_224A38AB0(a1, 1, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
      sub_224A3317C(*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services) + 16, v34);
      v24 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v25 = swift_allocObject();
      v26 = [objc_opt_self() currentContext];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 remoteProcess];
      }

      else
      {
        v28 = 0;
      }

      v29 = v33;
      v25[2] = v28;
      v25[3] = 0xD00000000000001DLL;
      v25[4] = 0x8000000224DCEC60;
      *v9 = v25;
      (*(v29 + 104))(v9, *MEMORY[0x277CF9B90], v5);
      v30 = *v24;
      sub_224C7F024(v18, v9);
      (*(v29 + 8))(v9, v5);
      (*(v15 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1(v34);
    }
  }

  else
  {
  }
}

uint64_t sub_224D22728(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue];
  BSDispatchQueueAssert();
  sub_224A38AB0(a1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v13 = sub_224DA9FE8();
    v15 = v14;
    (*(v12 + 8))(v9, v11);
    LOBYTE(v13) = sub_224D22B64(v13, v15);

    if (v13)
    {
      return 1;
    }
  }

  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_281364F28);

  v18 = v3;
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_224A33F74(a1, a2, &v31);
    *(v21 + 12) = 2082;
    v23 = *&v18[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection];
    v24 = [v23 remoteToken];
    v25 = [v24 bundleID];

    if (!v25)
    {
      v25 = [v23 description];
    }

    v26 = sub_224DAEE18();
    v28 = v27;

    v29 = sub_224A33F74(v26, v28, &v31);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_224A2F000, v19, v20, "[ControlCenter] Connection error for %{public}s: Not authorized from client: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v22, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  return 0;
}

uint64_t sub_224D22B64(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue);
  BSDispatchQueueAssert();
  v10 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection);
  v11 = [v10 remoteToken];
  sub_224DAA318();
  v12 = sub_224DAEDE8();

  v13 = [v11 hasEntitlement_];

  if (v13)
  {
    if (qword_2813515C0 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364F28);
    v15 = sub_224DAB228();
    v16 = sub_224DAF278();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_42;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_224A2F000, v15, v16, "isRequestorAuthorized - ENTITLED", v17, 2u);
    v18 = v17;
LABEL_41:
    MEMORY[0x22AA5EED0](v18, -1, -1);
LABEL_42:

    return 1;
  }

  v19 = [v11 bundleID];
  if (v19)
  {
    v20 = v19;
    v21 = sub_224DAEE18();
    v23 = v22;

    v24 = v21 == a1 && v23 == a2;
    if (v24 || (sub_224DAFD88() & 1) != 0)
    {

      if (qword_2813515C0 != -1)
      {
        swift_once();
      }

      v25 = sub_224DAB258();
      __swift_project_value_buffer(v25, qword_281364F28);

      v15 = sub_224DAB228();
      v26 = sub_224DAF278();

      if (!os_log_type_enabled(v15, v26))
      {
        goto LABEL_42;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_224A33F74(a1, a2, &v50);
      v29 = "isRequestorAuthorized - SOURCE IS THE CONTAINER: %{public}s";
      goto LABEL_40;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  BSDispatchQueueAssert();
  v30 = [v10 remoteProcess];
  v31 = [v30 bundleIdentifier];

  if (!v31)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
    goto LABEL_23;
  }

  v32 = sub_224DAEE18();

  sub_224A38AB0(v32, 0, v8);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v8, 1, v33) == 1)
  {
LABEL_23:
    sub_224A3311C(v8, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_24;
  }

  v35 = sub_224DA9FE8();
  v37 = v36;
  (*(v34 + 8))(v8, v33);
  if (v35 == a1 && v37 == a2)
  {

LABEL_36:

    if (qword_2813515C0 != -1)
    {
      swift_once();
    }

    v48 = sub_224DAB258();
    __swift_project_value_buffer(v48, qword_281364F28);

    v15 = sub_224DAB228();
    v26 = sub_224DAF278();

    if (!os_log_type_enabled(v15, v26))
    {
      goto LABEL_42;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v50 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_224A33F74(a1, a2, &v50);
    v29 = "isRequestorAuthorized - SOURCE IS IN THE CONTAINER BUNDLE: %{public}s";
LABEL_40:
    _os_log_impl(&dword_224A2F000, v15, v26, v29, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v18 = v27;
    goto LABEL_41;
  }

  v47 = sub_224DAFD88();

  if (v47)
  {
    goto LABEL_36;
  }

LABEL_24:
  if (qword_281351460 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281364DC0);

  v40 = sub_224DAB228();
  v41 = sub_224DAF278();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v42 = 136446210;
    if (v23)
    {
      v44 = v21;
    }

    else
    {
      v44 = 7104878;
    }

    if (!v23)
    {
      v23 = 0xE300000000000000;
    }

    v45 = sub_224A33F74(v44, v23, &v50);

    *(v42 + 4) = v45;
    _os_log_impl(&dword_224A2F000, v40, v41, "isRequestorAuthorized - NOT AUTHORIZED: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_224D23260(uint64_t a1, const void *a2)
{
  v4 = sub_224DAE438();
  v145 = *(v4 - 8);
  v5 = *(v145 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC5E8();
  v9 = *(v8 - 8);
  v146 = v8;
  v147 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v148 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v131 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v131 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v131 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v136 = &v131 - v24;
  v25 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue);
  BSDispatchQueueAssert();
  v154 = MEMORY[0x277D84F90];
  BSDispatchQueueAssert();
  v26 = [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection) remoteProcess];
  v27 = [v26 bundleIdentifier];

  if (!v27)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_20:
    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    v30 = 0;
    v51 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_77;
    }

    goto LABEL_21;
  }

  v144 = v7;
  v28 = sub_224DAEE18();

  sub_224A38AB0(v28, 1, v20);

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_20;
  }

  v143 = v4;
  v133 = a2;
  v138 = v22;
  v29 = *(v22 + 32);
  v132 = v21;
  v29(v136, v20, v21);
  v135 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services);
  sub_224A3317C(v135 + 136, v151);
  __swift_project_boxed_opaque_existential_1(v151, v152);
  v30 = off_283828B60[0];
  v134 = type metadata accessor for PushService();
  v31 = v30(v134, &off_283828B40);
  v149 = sub_224DA270C(MEMORY[0x277D84F90]);
  v142 = *(v31 + 16);
  if (!v142)
  {
LABEL_24:

    __swift_destroy_boxed_opaque_existential_1(v151);
    sub_224A3317C(v135 + 136, v151);
    __swift_project_boxed_opaque_existential_1(v151, v152);
    v58 = off_283828B68(v134, &off_283828B40);
    v148 = sub_224DA28F4(MEMORY[0x277D84F90]);
    v59 = v143;
    v142 = *(v58 + 16);
    if (!v142)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v151);
      sub_224A3317C(v135 + 96, v151);
      v84 = v152;
      v85 = v153;
      __swift_project_boxed_opaque_existential_1(v151, v152);
      v86 = (*(v85 + 24))(768, v84, v85);
      if (!v86)
      {

        __swift_destroy_boxed_opaque_existential_1(v151);
        v30 = 0;
        v51 = MEMORY[0x277D84F90];
        v90 = v138;
        goto LABEL_76;
      }

      v30 = 0;
      v87 = sub_224A7B208(v86);
      MEMORY[0x28223BE20](v87);
      *(&v131 - 2) = v136;
      v4 = sub_224A4ECE8(sub_224C8F404, (&v131 - 4), v88);

      __swift_destroy_boxed_opaque_existential_1(v151);
      if (!(v4 >> 62))
      {
        v89 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
        v90 = v138;
        if (v89)
        {
          v134 = v30;
          v91 = 0;
          v92 = v4 & 0xC000000000000001;
          v143 = v147 + 16;
          v144 = v4 & 0xFFFFFFFFFFFFFF8;
          v141 = (v147 + 8);
          v140 = MEMORY[0x277D84F98];
          v135 = v4;
          v142 = v4 & 0xC000000000000001;
          while (1)
          {
            if (v92)
            {
              v93 = MEMORY[0x22AA5DCC0](v91, v4);
            }

            else
            {
              if (v91 >= *(v144 + 16))
              {
                goto LABEL_88;
              }

              v93 = *(v4 + 8 * v91 + 32);
            }

            v30 = v93;
            v94 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              goto LABEL_85;
            }

            v95 = [v93 controlIdentity];
            MEMORY[0x22AA5D350]();
            if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v126 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_224DAF038();
            }

            sub_224DAF078();
            v145 = v154;
            v96 = v149;
            if (v149[2] && (v97 = sub_224B0BD50(v95), (v98 & 1) != 0))
            {
              v99 = v89;
              (*(v147 + 16))(v137, v96[7] + *(v147 + 72) * v97, v146);
              v100 = sub_224DAC588();
              if (!*(v148 + 2))
              {

LABEL_64:

                (*v141)(v137, v146);
                v90 = v138;
                v89 = v99;
                v92 = v142;
                goto LABEL_46;
              }

              v102 = sub_224A3A40C(v100, v101);
              v104 = v103;

              if ((v104 & 1) == 0)
              {
                goto LABEL_64;
              }

              v105 = (*(v148 + 7) + 16 * v102);
              v106 = *v105;
              v107 = v105[1];
              sub_224A77FD0(*v105, v107);
              v139 = v106;
              sub_224A77FD0(v106, v107);
              v108 = v140;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v151[0] = v108;
              v4 = sub_224B0BD50(v95);
              v111 = *(v108 + 16);
              v112 = (v110 & 1) == 0;
              v113 = v111 + v112;
              if (__OFADD__(v111, v112))
              {
                goto LABEL_89;
              }

              v114 = v110;
              if (*(v108 + 24) >= v113)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_224B29134();
                }
              }

              else
              {
                sub_224B171E8(v113, isUniquelyReferenced_nonNull_native);
                v115 = sub_224B0BD50(v95);
                if ((v114 & 1) != (v116 & 1))
                {
                  goto LABEL_93;
                }

                v4 = v115;
              }

              v89 = v99;
              v117 = v151[0];
              v92 = v142;
              v140 = v151[0];
              if (v114)
              {
                v118 = (*(v151[0] + 56) + 16 * v4);
                v119 = *v118;
                v120 = v118[1];
                v121 = v139;
                *v118 = v139;
                v118[1] = v107;
                sub_224A78024(v119, v120);

                sub_224A78024(v121, v107);
                (*v141)(v137, v146);
              }

              else
              {
                *(v151[0] + 8 * (v4 >> 6) + 64) |= 1 << v4;
                *(v117[6] + 8 * v4) = v95;
                v122 = (v117[7] + 16 * v4);
                v123 = v139;
                *v122 = v139;
                v122[1] = v107;

                sub_224A78024(v123, v107);
                (*v141)(v137, v146);
                v124 = v117[2];
                v43 = __OFADD__(v124, 1);
                v125 = v124 + 1;
                if (v43)
                {
                  __break(1u);
                  goto LABEL_92;
                }

                v117[2] = v125;
              }

              v90 = v138;
              v4 = v135;
            }

            else
            {

              v90 = v138;
            }

LABEL_46:
            ++v91;
            if (v94 == v89)
            {

              v30 = v134;
              v51 = v145;
              goto LABEL_76;
            }
          }
        }

        v51 = MEMORY[0x277D84F90];
LABEL_76:
        (*(v90 + 8))(v136, v132);
        a2 = v133;
        if (v51 >> 62)
        {
LABEL_77:
          if (!sub_224DAF838())
          {
            goto LABEL_78;
          }

          goto LABEL_22;
        }

LABEL_21:
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_78:

          goto LABEL_79;
        }

LABEL_22:
        sub_224DAECA8();
        v52 = sub_224DAEC98();
        v53 = sub_224DA9508();
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        sub_224DA94F8();
        v151[0] = v52;
        sub_224D241E4(&qword_27D6F6930, MEMORY[0x277CE3F08]);
        v56 = sub_224DA94E8();
        if (!v30)
        {
          v127 = v56;
          v128 = v57;

          v129 = sub_224DA96B8();
LABEL_80:
          (*(a2 + 2))(a2, v129, 0);

          return sub_224AC1D9C(v127, v128);
        }

LABEL_79:
        v129 = 0;
        v127 = 0;
        v128 = 0xF000000000000000;
        goto LABEL_80;
      }

LABEL_90:
      v89 = sub_224DAF838();
      goto LABEL_43;
    }

    v60 = 0;
    v61 = v144;
    v141 = (v58 + ((*(v145 + 80) + 32) & ~*(v145 + 80)));
    v139 = (v145 + 8);
    v140 = (v145 + 16);
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        goto LABEL_82;
      }

      (*(v145 + 16))(v61, v141 + *(v145 + 72) * v60, v59);
      v30 = sub_224DAE418();
      v4 = v65;
      v66 = sub_224DAE428();
      v68 = v67;
      v69 = v148;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v69;
      v72 = sub_224A3A40C(v30, v4);
      v73 = *(v69 + 2);
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_83;
      }

      v76 = v71;
      if (*(v69 + 3) >= v75)
      {
        if (v70)
        {
          if (v71)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_224B2A138();
          if (v76)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        sub_224B19128(v75, v70);
        v77 = sub_224A3A40C(v30, v4);
        if ((v76 & 1) != (v78 & 1))
        {
LABEL_92:
          _Block_release(v133);
          sub_224DAFDD8();
          __break(1u);
          goto LABEL_93;
        }

        v72 = v77;
        if (v76)
        {
LABEL_26:

          v148 = v150;
          v62 = (*(v150 + 7) + 16 * v72);
          v63 = *v62;
          v64 = v62[1];
          *v62 = v66;
          v62[1] = v68;
          sub_224A78024(v63, v64);
          v59 = v143;
          v61 = v144;
          (*v139)(v144, v143);
          goto LABEL_27;
        }
      }

      v79 = v150;
      *&v150[8 * (v72 >> 6) + 64] |= 1 << v72;
      v80 = (*(v79 + 6) + 16 * v72);
      *v80 = v30;
      v80[1] = v4;
      v81 = (*(v79 + 7) + 16 * v72);
      *v81 = v66;
      v81[1] = v68;
      v59 = v143;
      v61 = v144;
      (*v139)(v144, v143);
      v82 = *(v79 + 2);
      v43 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v43)
      {
        goto LABEL_86;
      }

      v148 = v79;
      *(v79 + 2) = v83;
LABEL_27:
      if (v142 == ++v60)
      {
        goto LABEL_40;
      }
    }
  }

  v4 = 0;
  v30 = v146;
  v141 = (v31 + ((*(v147 + 80) + 32) & ~*(v147 + 80)));
  v32 = (v147 + 8);
  v139 = (v147 + 40);
  v140 = (v147 + 32);
  while (1)
  {
    if (v4 >= *(v31 + 16))
    {
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
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v33 = *(v147 + 72);
    v34 = *(v147 + 16);
    v34(v16, v141 + v33 * v4, v30);
    v35 = sub_224DAC5D8();
    if (!v35)
    {
      goto LABEL_6;
    }

    v36 = v35;
    v34(v148, v16, v30);
    v37 = v149;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v37;
    v39 = sub_224B0BD50(v36);
    v41 = *(v37 + 2);
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_84;
    }

    v45 = v40;
    if (*(v37 + 3) < v44)
    {
      break;
    }

    if ((v38 & 1) == 0)
    {
      v50 = v39;
      sub_224B2A2BC();
      v39 = v50;
    }

LABEL_16:
    v149 = v150;
    if (v45)
    {
      v30 = v146;
      (*v139)(*(v150 + 7) + v39 * v33, v148, v146);

LABEL_6:
      (*v32)(v16, v30);
      goto LABEL_7;
    }

    *&v150[8 * (v39 >> 6) + 64] |= 1 << v39;
    v47 = v148;
    *(v149[6] + 8 * v39) = v36;
    v30 = v146;
    (*v140)(v149[7] + v39 * v33, v47, v146);
    (*v32)(v16, v30);
    v48 = v149[2];
    v43 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v43)
    {
      goto LABEL_87;
    }

    v149[2] = v49;
LABEL_7:
    if (v142 == ++v4)
    {
      goto LABEL_24;
    }
  }

  sub_224B193E4(v44, v38);
  v39 = sub_224B0BD50(v36);
  if ((v45 & 1) == (v46 & 1))
  {
    goto LABEL_16;
  }

LABEL_93:
  sub_224AB43D8();
  _Block_release(v133);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D24194(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F3920, &qword_224DB35B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224D241E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_224D2422C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D21A74(a1);
}

void sub_224D24234(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224D21D2C(a1);
}

void *sub_224D24270(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_224DAFB08();

    if (v4)
    {
      sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_224B0B580(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_224D2438C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v6 = sub_224DAFB08();

    if (v6)
    {
      a4(0);
      swift_dynamicCast();
      return v11;
    }
  }

  else if (*(a2 + 16))
  {
    v8 = a3();
    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v8);
    }
  }

  return 0;
}

void sub_224D24454(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
    v31 = v36;
    if (v30)
    {
      v3 = sub_224DAFA58();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_224DAF798();
      v4 = *(v1 + 36);
    }

    v33 = v3;
    v34 = v4;
    v35 = v30 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      v29 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v14 = v33;
        v15 = v34;
        v16 = v35;
        sub_224C16A2C(v32, v33, v34, v35, v1);
        v18 = v17;
        v19 = [v17 description];
        v20 = sub_224DAEE18();
        v22 = v21;

        v23 = v31;
        v36 = v31;
        v25 = *(v31 + 16);
        v24 = *(v31 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_224A3DFD8((v24 > 1), v25 + 1, 1);
          v23 = v36;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v20;
        *(v26 + 40) = v22;
        v31 = v23;
        if (v30)
        {
          v1 = v29;
          if (!v16)
          {
            goto LABEL_26;
          }

          if (sub_224DAFA88())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          v13 = v6 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6940, &qword_224DC0A78);
          v27 = sub_224DAED28();
          sub_224DAFB48();
          v27(v32, 0);
        }

        else
        {
          v1 = v29;
          sub_224D2EAF0(v14, v15, v16, v29);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_224A3E204(v14, v15, v16);
          v33 = v8;
          v34 = v10;
          v35 = v12 & 1;
          v2 = v28;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_224A3E204(v33, v34, v35);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_224D24720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84F98];
    v34 = MEMORY[0x277D84F98];
    sub_224DAFA68();
    v6 = sub_224DAFB18();
    if (v6)
    {
      v8 = v7;
      v9 = v6;
      sub_224DAF538();
      v10 = v9;
      do
      {
        v32 = v10;
        swift_dynamicCast();
        v31 = v8;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v19 = v33;
        if (!v33)
        {
          break;
        }

        v20 = v32;
        if (*(v32 + 40) || (v21 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace, swift_beginAccess(), v22 = v30, sub_224A3796C(v20 + v21, v30, &qword_27D6F3948, &qword_224DB5C10), v23 = sub_224DAC378(), LODWORD(v21) = (*(*(v23 - 8) + 48))(v22, 1, v23), sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10), v21 != 1))
        {
          v24 = *(v5 + 16);
          if (*(v5 + 24) <= v24)
          {
            sub_224B19B38(v24 + 1, 1);
          }

          v5 = v34;
          v11 = *(v34 + 40);
          result = sub_224DAF698();
          v13 = v5 + 64;
          v14 = -1 << *(v5 + 32);
          v15 = result & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~*(v5 + 64 + 8 * (v15 >> 6))) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~*(v5 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = 0;
            v26 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v26 && (v25 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v27 = v16 == v26;
              if (v16 == v26)
              {
                v16 = 0;
              }

              v25 |= v27;
              v28 = *(v13 + 8 * v16);
            }

            while (v28 == -1);
            v17 = __clz(__rbit64(~v28)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v5 + 48) + 8 * v17) = v19;
          *(*(v5 + 56) + 8 * v17) = v20;
          ++*(v5 + 16);
        }

        else
        {
        }

        v10 = sub_224DAFB18();
        v8 = v18;
      }

      while (v10);
    }

    sub_224A3B7E4();
  }

  else
  {
    v5 = sub_224D2E0B0(a1);
  }

  return v5;
}

uint64_t sub_224D24A88(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84F98];
    v26 = MEMORY[0x277D84F98];
    sub_224DAFA68();
    v2 = sub_224DAFB18();
    if (v2)
    {
      v4 = v3;
      v5 = v2;
      sub_224DAF538();
      v6 = v5;
      do
      {
        v25 = v6;
        swift_dynamicCast();
        v24[5] = v4;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v8 = v24[0];
        if (!v24[0])
        {
          break;
        }

        v9 = v25;
        v10 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
        swift_beginAccess();
        sub_224A3796C(v9 + v10, v24, &unk_27D6F4700, &unk_224DB3A10);
        v11 = v24[3];
        sub_224A3311C(v24, &unk_27D6F4700, &unk_224DB3A10);
        if (v11)
        {
        }

        else
        {
          v12 = *(v1 + 16);
          if (*(v1 + 24) <= v12)
          {
            sub_224B19B38(v12 + 1, 1);
          }

          v1 = v26;
          v13 = *(v26 + 40);
          result = sub_224DAF698();
          v15 = v1 + 64;
          v16 = -1 << *(v1 + 32);
          v17 = result & ~v16;
          v18 = v17 >> 6;
          if (((-1 << v17) & ~*(v1 + 64 + 8 * (v17 >> 6))) != 0)
          {
            v19 = __clz(__rbit64((-1 << v17) & ~*(v1 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = 0;
            v21 = (63 - v16) >> 6;
            do
            {
              if (++v18 == v21 && (v20 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v22 = v18 == v21;
              if (v18 == v21)
              {
                v18 = 0;
              }

              v20 |= v22;
              v23 = *(v15 + 8 * v18);
            }

            while (v23 == -1);
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          }

          *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          *(*(v1 + 48) + 8 * v19) = v8;
          *(*(v1 + 56) + 8 * v19) = v9;
          ++*(v1 + 16);
        }

        v6 = sub_224DAFB18();
        v4 = v7;
      }

      while (v6);
    }

    sub_224A3B7E4();
  }

  else
  {
    v1 = sub_224D2DE28(a1);
  }

  return v1;
}

uint64_t sub_224D24D20(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84F98];
    v42 = MEMORY[0x277D84F98];
    v37 = sub_224DAFA68();
    v2 = sub_224DAFB18();
    if (v2)
    {
      v4 = v3;
      v5 = v2;
      v36 = sub_224DAF538();
      v6 = v5;
      v35 = MEMORY[0x277D84F98];
      do
      {
        v41 = v6;
        swift_dynamicCast();
        v40 = v4;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v8 = v38[0];
        if (!v38[0])
        {
          break;
        }

        v9 = v41;
        v10 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
        swift_beginAccess();
        sub_224A3796C(v9 + v10, v38, &unk_27D6F4700, &unk_224DB3A10);
        v11 = v39;
        if (v39)
        {
          v12 = __swift_project_boxed_opaque_existential_1(v38, v39);
          v13 = *(v11 - 8);
          v14 = *(v13 + 64);
          MEMORY[0x28223BE20](v12);
          v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v13 + 16))(v16);
          v17 = v8;

          sub_224A3311C(v38, &unk_27D6F4700, &unk_224DB3A10);
          v18 = sub_224DAE278();
          (*(v13 + 8))(v16, v11);

          if (v18)
          {
          }

          else
          {
            v19 = *(v35 + 16);
            if (*(v35 + 24) <= v19)
            {
              sub_224B19B38(v19 + 1, 1);
            }

            v20 = v42;
            v21 = *(v42 + 40);
            result = sub_224DAF698();
            v23 = v20 + 64;
            v24 = -1 << *(v20 + 32);
            v25 = result & ~v24;
            v26 = v25 >> 6;
            if (((-1 << v25) & ~*(v20 + 64 + 8 * (v25 >> 6))) != 0)
            {
              v27 = __clz(__rbit64((-1 << v25) & ~*(v20 + 64 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v28 = 0;
              v29 = (63 - v24) >> 6;
              do
              {
                if (++v26 == v29 && (v28 & 1) != 0)
                {
                  __break(1u);
                  return result;
                }

                v30 = v26 == v29;
                if (v26 == v29)
                {
                  v26 = 0;
                }

                v28 |= v30;
                v31 = *(v23 + 8 * v26);
              }

              while (v31 == -1);
              v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            }

            *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
            *(*(v20 + 48) + 8 * v27) = v17;
            *(*(v20 + 56) + 8 * v27) = v9;
            v32 = *(v20 + 16) + 1;
            v35 = v20;
            *(v20 + 16) = v32;
          }
        }

        else
        {
          sub_224A3311C(v38, &unk_27D6F4700, &unk_224DB3A10);
        }

        v6 = sub_224DAFB18();
        v4 = v7;
      }

      while (v6);
    }

    else
    {
      v35 = v1;
    }

    sub_224A3B7E4();
    return v35;
  }

  else
  {
    v33 = sub_224D2DA5C(a1);

    return v33;
  }
}

uint64_t sub_224D25124(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *(v2 + *a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
    sub_224A33088(&qword_281350F08, &unk_27D6F5840, &qword_224DBBD70);
    v6 = v2;
    v5 = sub_224DAB3A8();
    v7 = *(v2 + v3);
    *(v6 + v3) = v5;
  }

  return v5;
}

void sub_224D251F8(uint64_t a1)
{
  v2 = v1;
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364D60);
  v5 = sub_224DAB228();
  v6 = sub_224DAF288();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224A2F000, v5, v6, "[service] simulating timeout fired", v7, 2u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224D2A1DC(a1);
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

uint64_t sub_224D25314(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v7);
  if (*(v1 + 32) == 2)
  {
    __break(1u);
    goto LABEL_60;
  }

  v134 = &v128 - v8;
  v132 = v9;
  v2 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext);
  swift_beginAccess();
  sub_224A3796C(v2, v139, &unk_27D6F4700, &unk_224DB3A10);
  v10 = v140;
  sub_224A3311C(v139, &unk_27D6F4700, &unk_224DB3A10);
  if (!v10)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_8:
    v21 = sub_224DAB258();
    v22 = __swift_project_value_buffer(v21, qword_281364D60);
    swift_retain_n();
    v133 = v22;
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v131 = v24;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v139[0] = v130;
      *v25 = 138543874;
      v27 = *(v3 + 16);
      *(v25 + 4) = v27;
      v129 = v26;
      *v26 = v27;
      *(v25 + 12) = 1026;
      v28 = v2[3];
      if (!v28)
      {
LABEL_65:

        __break(1u);
        goto LABEL_66;
      }

      v29 = v2[4];
      v30 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v31 = *(v28 - 8);
      v32 = *(v31 + 64);
      MEMORY[0x28223BE20](v30);
      v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v34);
      v35 = v27;
      LOBYTE(v29) = sub_224DAE278();
      (*(v31 + 8))(v34, v28);

      *(v25 + 14) = v29 & 1;

      *(v25 + 18) = 2082;
      v36 = v2[3];
      if (!v36)
      {
LABEL_66:

        __break(1u);
        goto LABEL_67;
      }

      v37 = v2[4];
      v38 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v39 = *(v36 - 8);
      v40 = *(v39 + 64);
      MEMORY[0x28223BE20](v38);
      v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42);

      v43 = sub_224DAE328();
      v45 = v44;
      (*(v39 + 8))(v42, v36);
      v46 = sub_224A33F74(v43, v45, v139);

      *(v25 + 20) = v46;
      _os_log_impl(&dword_224A2F000, v23, v131, "[ext:%{public}@] updated with wantsLocation=%{BOOL,public}d container=%{public}s", v25, 0x1Cu);
      v47 = v129;
      sub_224A3311C(v129, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v47, -1, -1);
      v48 = v130;
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x22AA5EED0](v48, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {
    }

    v49 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
    swift_beginAccess();
    v50 = v134;
    sub_224A3796C(v3 + v49, v134, &qword_27D6F3948, &qword_224DB5C10);
    v51 = sub_224DAC378();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v50, 1, v51);
    result = sub_224A3311C(v50, &qword_27D6F3948, &qword_224DB5C10);
    if (v53 == 1)
    {
      goto LABEL_32;
    }

    v55 = v2[3];
    if (!v55)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v56 = v2[4];
    v57 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v58 = *(v55 - 8);
    v59 = *(v58 + 64);
    MEMORY[0x28223BE20](v57);
    v61 = &v128 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v61);
    LOBYTE(v56) = sub_224DAE278();
    result = (*(v58 + 8))(v61, v55);
    if (v56)
    {
      if (!*(v3 + 48))
      {
LABEL_32:
        v90 = v2[3];
        if (v90)
        {
          v91 = v2[4];
          v92 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
          v93 = *(v90 - 8);
          v94 = *(v93 + 64);
          MEMORY[0x28223BE20](v92);
          v96 = &v128 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v93 + 16))(v96);
          LOBYTE(v91) = sub_224DAE278();
          (*(v93 + 8))(v96, v90);
          v97 = v135;
          if ((v91 & 1) == 0)
          {
            v98 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForSignificantLocationChange;
            if (*(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForSignificantLocationChange) == 1)
            {

              v99 = sub_224DAB228();
              v100 = sub_224DAF2A8();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                *v101 = 138543362;
                v103 = *(v3 + 16);
                *(v101 + 4) = v103;
                *v102 = v103;
                v104 = v103;
                _os_log_impl(&dword_224A2F000, v99, v100, "[ext:%{public}@] resetting significant location change since updated doesn't want location", v101, 0xCu);
                sub_224A3311C(v102, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v102, -1, -1);
                MEMORY[0x22AA5EED0](v101, -1, -1);
              }

              *(v3 + v98) = 0;
            }

            v105 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange;
            if (*(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange) == 1)
            {

              v106 = sub_224DAB228();
              v107 = sub_224DAF2A8();

              if (os_log_type_enabled(v106, v107))
              {
                v108 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                *v108 = 138543362;
                v110 = *(v3 + 16);
                *(v108 + 4) = v110;
                *v109 = v110;
                v111 = v110;
                _os_log_impl(&dword_224A2F000, v106, v107, "[ext:%{public}@] resetting visibility change change since updated doesn't want location", v108, 0xCu);
                sub_224A3311C(v109, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v109, -1, -1);
                MEMORY[0x22AA5EED0](v108, -1, -1);
              }

              *(v3 + v105) = 0;
            }
          }

          sub_224A3796C(v97, v139, &unk_27D6F4700, &unk_224DB3A10);
          v112 = v140;
          if (v140)
          {
            __swift_project_boxed_opaque_existential_1(v139, v140);
            v113 = sub_224DAE328();
            v112 = v114;
            __swift_destroy_boxed_opaque_existential_1(v139);
            v115 = v2[3];
            if (v115)
            {
              goto LABEL_44;
            }
          }

          else
          {
            sub_224A3311C(v139, &unk_27D6F4700, &unk_224DB3A10);
            v113 = 0;
            v115 = v2[3];
            if (v115)
            {
LABEL_44:
              v116 = v2[4];
              v117 = __swift_project_boxed_opaque_existential_1(v2, v115);
              v118 = *(v115 - 8);
              v119 = *(v118 + 64);
              MEMORY[0x28223BE20](v117);
              v121 = &v128 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v118 + 16))(v121);
              v122 = sub_224DAE328();
              v124 = v123;
              (*(v118 + 8))(v121, v115);
              if (v112)
              {
                if (v113 == v122 && v112 == v124)
                {
                }

                v125 = sub_224DAFD88();

                if (v125)
                {
                  return result;
                }

                goto LABEL_52;
              }

LABEL_50:

LABEL_52:
              v126 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
              swift_beginAccess();
              sub_224A3796C(v3 + v126, &v136, &qword_27D6F3AE8, &unk_224DB9600);
              if (*(&v137 + 1))
              {
                sub_224A36F98(&v136, v139);
                __swift_project_boxed_opaque_existential_1(v139, v140);
                sub_224DAE1F8();
                v138 = 0;
                v136 = 0u;
                v137 = 0u;
                swift_beginAccess();
                sub_224A838C0(&v136, v3 + v126, &qword_27D6F3AE8, &unk_224DB9600);
                swift_endAccess();
                return __swift_destroy_boxed_opaque_existential_1(v139);
              }

              return sub_224A3311C(&v136, &qword_27D6F3AE8, &unk_224DB9600);
            }
          }

          __break(1u);
          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_63;
      }

      if (*(v135 + 24))
      {
LABEL_70:
        __break(1u);
        return result;
      }

      v62 = sub_224DAB228();
      v63 = sub_224DAF2A8();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138543362;
        v66 = *(v3 + 16);
        *(v64 + 4) = v66;
        *v65 = v66;
        v67 = v66;
        _os_log_impl(&dword_224A2F000, v62, v63, "[ext:%{public}@] resetting grace period after discovering previously unknown", v64, 0xCu);
        sub_224A3311C(v65, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v65, -1, -1);
        v68 = v64;
LABEL_30:
        MEMORY[0x22AA5EED0](v68, -1, -1);
      }
    }

    else
    {
      v82 = *(v135 + 24);

      v62 = sub_224DAB228();
      v83 = sub_224DAF2A8();

      if (os_log_type_enabled(v62, v83))
      {
        if (v82)
        {
          v84 = "[ext:%{public}@] erasing grace period since updated doesn't want location";
        }

        else
        {
          v84 = "[ext:%{public}@] erasing grace period after discovering previously unknown doesn't want location";
        }

        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138543362;
        v87 = *(v3 + 16);
        *(v85 + 4) = v87;
        *v86 = v87;
        v88 = v87;
        _os_log_impl(&dword_224A2F000, v62, v83, v84, v85, 0xCu);
        sub_224A3311C(v86, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v86, -1, -1);
        v68 = v85;
        goto LABEL_30;
      }
    }

    v89 = v132;
    (*(v52 + 56))(v132, 1, 1, v51);
    swift_beginAccess();
    sub_224A838C0(v89, v3 + v49, &qword_27D6F3948, &qword_224DB5C10);
    swift_endAccess();
    goto LABEL_32;
  }

  v11 = *(a1 + 24);
  v135 = a1;
  if (!v11)
  {
    goto LABEL_7;
  }

  sub_224A3796C(a1, v139, &unk_27D6F4700, &unk_224DB3A10);
  if (!v140)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __swift_project_boxed_opaque_existential_1(v139, v140);
  v12 = sub_224DAE278();
  v13 = v2[3];
  if (!v13)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v14 = v12;
  v15 = v2[4];
  v16 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v17 = *(v13 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20);
  LOBYTE(v15) = sub_224DAE278();
  (*(v17 + 8))(v20, v13);
  __swift_destroy_boxed_opaque_existential_1(v139);
  if ((v14 ^ v15))
  {
    goto LABEL_7;
  }

  result = sub_224A3796C(a1, v139, &unk_27D6F4700, &unk_224DB3A10);
  if (!v140)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  __swift_project_boxed_opaque_existential_1(v139, v140);
  result = sub_224DAE328();
  v70 = v2[3];
  if (!v70)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v71 = result;
  v72 = v69;
  v73 = v2[4];
  v74 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v75 = *(v70 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v128 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v78);
  v79 = sub_224DAE328();
  v81 = v80;
  (*(v75 + 8))(v78, v70);
  if (v71 == v79 && v72 == v81)
  {

    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v127 = sub_224DAFD88();

  result = __swift_destroy_boxed_opaque_existential_1(v139);
  if ((v127 & 1) == 0)
  {
LABEL_7:
    *(v3 + 32) = 1;
    if (qword_281351430 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

  return result;
}

void sub_224D263EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  if (*(v1 + 32) == 2)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  sub_224A3796C(v1 + v9, v8, &qword_27D6F3948, &qword_224DB5C10);
  v10 = sub_224DAC378();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
  if (v12 == 1)
  {
    return;
  }

  (*(v11 + 56))(v6, 1, 1, v10);
  swift_beginAccess();
  sub_224A838C0(v6, v1 + v9, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();
  if (qword_281351430 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_281364D60);

  v14 = sub_224DAB228();
  v15 = sub_224DAF2A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = *(v1 + 16);
    *(v16 + 4) = v18;
    *v17 = v18;
    v19 = v18;
    _os_log_impl(&dword_224A2F000, v14, v15, "[ext:%{public}@] clearing grace", v16, 0xCu);
    sub_224A3311C(v17, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  *(v1 + 32) = 1;
}

uint64_t sub_224D266D8()
{
  v1 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity;
  if (!*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
  {
    v3 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
    swift_beginAccess();
    sub_224A3796C(v0 + v3, v8, &qword_27D6F3AE8, &unk_224DB9600);
    v4 = v8[3];
    result = sub_224A3311C(v8, &qword_27D6F3AE8, &unk_224DB9600);
    if (!v4)
    {

      swift_weakDestroy();
      sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace, &qword_27D6F3948, &qword_224DB5C10);
      v6 = *(v0 + v1);
      swift_unknownObjectRelease();
      v7 = *(v0 + v2);
      swift_unknownObjectRelease();
      sub_224A3311C(v0 + v3, &qword_27D6F3AE8, &unk_224DB9600);
      sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext, &unk_27D6F4700, &unk_224DB3A10);
      return v0;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_224D26814()
{
  v0 = *sub_224D266D8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_224D26890()
{
  sub_224B52C2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_224D26978(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v3;
  v66 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 1);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  os_unfair_lock_assert_owner(*(*(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_10;
  }

  v13 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (*(v14 + 16))
  {
    v15 = sub_224A89A08(a1);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      v18 = *&v17[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount];
      v19 = __CFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        a1 = v9;
        v4 = v8;
        *&v17[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount] = v20;
        v21 = qword_281351430;
        v8 = v17;
        if (v21 == -1)
        {
LABEL_6:
          v22 = sub_224DAB258();
          __swift_project_value_buffer(v22, qword_281364D60);
          v23 = sub_224DAB228();
          v24 = sub_224DAF278();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = v8;
            v27 = v12;
            v28 = swift_slowAlloc();
            v68[0] = v28;
            *v25 = 136446210;
            (*(a1 + 16))(v27, &v26[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v4);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
            v29 = sub_224DAFD28();
            LODWORD(v65) = v24;
            v30 = v29;
            v32 = v31;
            v33 = v27;
            v8 = v26;
            (*(a1 + 8))(v33, v4);
            v34 = sub_224A33F74(v30, v32, v68);

            *(v25 + 4) = v34;
            _os_log_impl(&dword_224A2F000, v23, v65, "[mon:%{public}s] added refcount to location authorization monitor", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            MEMORY[0x22AA5EED0](v28, -1, -1);
            MEMORY[0x22AA5EED0](v25, -1, -1);
          }

          goto LABEL_13;
        }
      }

      swift_once();
      goto LABEL_6;
    }
  }

  swift_endAccess();
  v35 = v9[2];
  v35(v12, a1, v8);
  v36 = *(v6 + 96);
  v64 = *(v6 + 104);
  v65 = v36;
  v37 = *(v6 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = objc_allocWithZone(type metadata accessor for _LocationAuthorizationMonitorImpl());
  v40 = v37;
  v5 = sub_224DA8A08(v12, v65, v64, v40, sub_224D2EDE4, v38);

  v61 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier;
  v62 = v35;
  v63 = v9 + 2;
  v35(v12, &v5[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v8);
  swift_beginAccess();
  v2 = v5;
  v41 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v6 + v13);
  *(v6 + v13) = 0x8000000000000000;
  sub_224B2359C(v2, v12, isUniquelyReferenced_nonNull_native);
  v4 = v9[1];
  v64 = v12;
  v65 = v9 + 1;
  a1 = v8;
  (v4)(v12, v8);
  *(v6 + v13) = v67;
  swift_endAccess();
  if (qword_281351430 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v43 = sub_224DAB258();
  __swift_project_value_buffer(v43, qword_281364D60);
  v44 = sub_224DAB228();
  v45 = sub_224DAF2A8();

  v8 = v2;
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68[0] = v47;
    *v46 = 136446210;
    v48 = &v5[v61];
    v61 = v8;
    v49 = v4;
    v50 = v64;
    v62(v64, v48, a1);
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
    v51 = sub_224DAFD28();
    v53 = v52;
    (v49)(v50, a1);
    v8 = v61;
    v54 = sub_224A33F74(v51, v53, v68);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_224A2F000, v44, v45, "[mon:%{public}s] started monitoring location authorization", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x22AA5EED0](v47, -1, -1);
    MEMORY[0x22AA5EED0](v46, -1, -1);
  }

LABEL_13:
  v55 = sub_224DAC198();
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v8;
  v58 = sub_224DAC1A8();
  v59 = MEMORY[0x277CF9950];
  v60 = v66;
  v66[3] = v55;
  v60[4] = v59;

  *v60 = v58;
}

uint64_t sub_224D2700C(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = sub_224DAC378();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = sub_224A71B08(&v33 - v19);
  *(v2 + 32) = 0;
  a2(v21);
  v22 = *(v2 + 32);
  *(v2 + 32) = 2;
  if ((v22 & 1) == 0)
  {
    sub_224A71DBC(v20, a1);
    goto LABEL_6;
  }

  sub_224A6FDF8();
  sub_224A71B08(v18);
  sub_224A3796C(v18, a1, &qword_27D6F3948, &qword_224DB5C10);
  v23 = *(v8 + 48);
  sub_224A3796C(v20, v11, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3796C(v18, &v11[v23], &qword_27D6F3948, &qword_224DB5C10);
  v24 = v36;
  v25 = *(v36 + 48);
  if (v25(v11, 1, v5) != 1)
  {
    v27 = v35;
    sub_224A3796C(v11, v35, &qword_27D6F3948, &qword_224DB5C10);
    if (v25(&v11[v23], 1, v5) != 1)
    {
      v28 = v34;
      (*(v24 + 32))(v34, &v11[v23], v5);
      sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
      v29 = v27;
      v30 = sub_224DAEDD8();
      v31 = *(v24 + 8);
      v31(v28, v5);
      sub_224A3311C(v18, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v20, &qword_27D6F3948, &qword_224DB5C10);
      v31(v29, v5);
      sub_224A3311C(v11, &qword_27D6F3948, &qword_224DB5C10);
      v26 = v30 ^ 1;
      return v26 & 1;
    }

    sub_224A3311C(v18, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3311C(v20, &qword_27D6F3948, &qword_224DB5C10);
    (*(v24 + 8))(v27, v5);
    goto LABEL_9;
  }

  sub_224A3311C(v18, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3311C(v20, &qword_27D6F3948, &qword_224DB5C10);
  if (v25(&v11[v23], 1, v5) != 1)
  {
LABEL_9:
    sub_224A3311C(v11, &qword_27D6F6938, &qword_224DC0A70);
    v26 = 1;
    return v26 & 1;
  }

  sub_224A3311C(v11, &qword_27D6F3948, &qword_224DB5C10);
LABEL_6:
  v26 = 0;
  return v26 & 1;
}

void sub_224D274CC(uint64_t *a1, const char *a2, const char *a3)
{
  v7 = v3;
  v8 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v7 + v8, &v24, &unk_27D6F4700, &unk_224DB3A10);
  if (v25)
  {
    sub_224A36F98(&v24, v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    if (sub_224DAE278())
    {
      v9 = *a1;
      if ((*(v7 + *a1) & 1) == 0)
      {
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v10 = sub_224DAB258();
        __swift_project_value_buffer(v10, qword_281364D60);

        v11 = sub_224DAB228();
        v12 = sub_224DAF2A8();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          v15 = *(v7 + 16);
          *(v13 + 4) = v15;
          *v14 = v15;
          v16 = v15;
          _os_log_impl(&dword_224A2F000, v11, v12, a2, v13, 0xCu);
          sub_224A3311C(v14, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v14, -1, -1);
          MEMORY[0x22AA5EED0](v13, -1, -1);
        }

        *(v7 + v9) = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_224A3311C(&v24, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281364D60);

    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = *(v7 + 16);
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&dword_224A2F000, v18, v19, a3, v20, 0xCu);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    *(v7 + *a1) = 1;
  }
}

uint64_t sub_224D277EC()
{
  v1 = OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService__authPermissionsChangedPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5958, &qword_224DBBE10);
    sub_224A33088(&qword_281350F70, &qword_27D6F5958, &qword_224DBBE10);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D278CC()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v75 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DAC378();
  v74 = *(v78 - 8);
  v10 = *(v74 + 64);
  v11 = MEMORY[0x28223BE20](v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v67 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v67 - v17;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  v19 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceState;
  v20 = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
  result = swift_beginAccess();
  if (*(*(v20 + 16) + 16))
  {
    v70 = v6;
    v71 = v7;
    v72 = v3;
    v73 = v2;
    v22 = sub_224DA0BF0(MEMORY[0x277D84F90]);
    v67[1] = type metadata accessor for LocationGraceRegistry();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v24 = sub_224DAC338();
    v25 = *(v1 + v19);
    MEMORY[0x28223BE20](v24);
    v77 = v18;
    v67[-4] = v18;
    v67[-3] = v1;
    v67[-2] = v23;

    sub_224CBCF38(sub_224D2EE4C);

    v26 = *(v1 + v19);
    swift_beginAccess();
    v27 = *(v26 + 16);
    swift_beginAccess();
    v28 = *(v23 + 16);

    v29 = sub_224A8D408(v27, v28);

    v30 = *(v1 + v19);
    *(v1 + v19) = v23;
    v69 = v23;

    if (v29)
    {
      v31 = v74;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v32 = sub_224DAB258();
      __swift_project_value_buffer(v32, qword_281364D60);
      v33 = v78;
      (*(v31 + 16))(v13, v77, v78);

      v34 = sub_224DAB228();
      v35 = sub_224DAF278();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136446466;
        sub_224A83A44(&unk_281350DD0, MEMORY[0x277CF9A10]);
        v38 = sub_224DAFD28();
        v39 = v33;
        v41 = v40;
        v68 = *(v31 + 8);
        v68(v13, v39);
        v42 = sub_224A33F74(v38, v41, aBlock);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2082;
        v79 = *(v1 + v19);
        sub_224A83A44(qword_281358688, type metadata accessor for LocationGraceRegistry);
        v43 = sub_224DAFD28();
        v45 = sub_224A33F74(v43, v44, aBlock);

        *(v36 + 14) = v45;
        _os_log_impl(&dword_224A2F000, v34, v35, "[service] restored at %{public}s using %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v37, -1, -1);
        MEMORY[0x22AA5EED0](v36, -1, -1);
      }

      else
      {

        v68 = *(v31 + 8);
        v68(v13, v33);
      }
    }

    else
    {
      v46 = v74;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v47 = sub_224DAB258();
      __swift_project_value_buffer(v47, qword_281364D60);
      v48 = v78;
      (*(v46 + 16))(v16, v77, v78);

      v49 = sub_224DAB228();
      v50 = sub_224DAF278();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v51 = 136446466;
        sub_224A83A44(&unk_281350DD0, MEMORY[0x277CF9A10]);
        v53 = sub_224DAFD28();
        v54 = v48;
        v56 = v55;
        v68 = *(v46 + 8);
        v68(v16, v54);
        v57 = sub_224A33F74(v53, v56, aBlock);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2082;
        v79 = *(v1 + v19);
        sub_224A83A44(qword_281358688, type metadata accessor for LocationGraceRegistry);
        v58 = sub_224DAFD28();
        v60 = sub_224A33F74(v58, v59, aBlock);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_224A2F000, v49, v50, "[service] restored (with adjustments) at %{public}s using %{public}s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v52, -1, -1);
        MEMORY[0x22AA5EED0](v51, -1, -1);
      }

      else
      {

        v68 = *(v46 + 8);
        v68(v16, v48);
      }

      sub_224A83EBC();
    }

    sub_224A843F0();
    v61 = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
    v62 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_224D2EE58;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_92;
    v63 = _Block_copy(aBlock);

    v64 = v75;
    sub_224DAB7E8();
    v79 = MEMORY[0x277D84F90];
    sub_224A83A44(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v65 = v70;
    v66 = v73;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v64, v65, v63);
    _Block_release(v63);

    (*(v72 + 8))(v65, v66);
    (*(v76 + 8))(v64, v71);

    return (v68)(v77, v78);
  }

  return result;
}

uint64_t sub_224D28328()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D28380();
  }

  return result;
}

uint64_t sub_224D28380()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D2BD4C(v0, &v5);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v5;
  if (v5 >> 62)
  {
    if (sub_224DAF838() > 0)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_3:
    v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService__significantLocationChangedPublisher);
    v5 = v2;
    sub_224DAB348();
  }
}

void sub_224D28470()
{
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v1 = v0[7];

    v2 = v0[8];
    swift_unknownObjectRelease();
    v3 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushInterval;
    v4 = sub_224DAB798();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);

    v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);

    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier);

    v7 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);

    v8 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer);

    v9 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier);

    v10 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService__authPermissionsChangedPublisher);

    v11 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher);

    v12 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService__significantLocationChangedPublisher);

    v13 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___significantLocationChangedPublisher);

    v14 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService__visibilityReloadPublisher);

    v15 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___visibilityReloadPublisher);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224D285D0()
{
  sub_224D28470();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224D28650()
{
  result = sub_224DAB798();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224D28760(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v8 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v10 = v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v62 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = v58 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v69 = v58 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v70 = v58 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v58 - v21;
  v23 = sub_224DAC378();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v58 - v29;
  result = sub_224DAC318();
  if (result)
  {
    v58[1] = a5;
    v71 = *(v24 + 16);
    v71(v30, a2, v23);
    sub_224DAC2E8();
    v32 = sub_224DAC328();
    v60 = *(v24 + 8);
    v61 = v24 + 8;
    v60(v28, v23);
    if (v32)
    {
      v33 = *(a4 + OBJC_IVAR____TtC10ChronoCore15LocationService_inUseNanosecondsOfGrace);
      sub_224DAC358();
      (*(v24 + 40))(v30, v28, v23);
    }

    v65 = v24 + 16;
    v71(v22, v30, v23);
    v63 = *(v24 + 56);
    v64 = v24 + 56;
    v63(v22, 0, 1, v23);
    v34 = type metadata accessor for ExtensionInfo(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = v68;

    v38 = sub_224D2EC44(v37, a4, v22);

    v68 = *(v38 + 16);
    v39 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v40 = *(a4 + v39);
    v59 = v22;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v58[0] = v10;
      if (v40 < 0)
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = v38;

      v42 = sub_224DAF838();
      v43 = v70;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      *(a4 + v39) = sub_224D2CDF0(v41, v42 + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
      v44 = v10;
      v10 = v58[0];
    }

    else
    {

      v44 = v38;
      v43 = v70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(a4 + v39);
    sub_224B237E0(v44, v68, isUniquelyReferenced_nonNull_native);
    *(a4 + v39) = v72;
    swift_endAccess();
    v68 = v30;
    v71(v43, v30, v23);
    v63(v43, 0, 1, v23);
    v46 = v69;
    v58[0] = v44;
    sub_224A71B08(v69);
    v47 = *(v67 + 48);
    sub_224A3796C(v43, v10, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3796C(v46, &v10[v47], &qword_27D6F3948, &qword_224DB5C10);
    v48 = v43;
    v49 = *(v24 + 48);
    if (v49(v10, 1, v23) == 1)
    {
      sub_224A3311C(v46, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v48, &qword_27D6F3948, &qword_224DB5C10);
      if (v49(&v10[v47], 1, v23) == 1)
      {
        sub_224A3311C(v10, &qword_27D6F3948, &qword_224DB5C10);
        v50 = v59;
        v51 = v60;
        v52 = v68;
LABEL_16:
        v56 = *(v58[0] + 16);
        v71(v50, v52, v23);
        v63(v50, 0, 1, v23);
        v57 = v66;
        sub_224A3796C(v50, v66, &qword_27D6F3948, &qword_224DB5C10);
        swift_beginAccess();
        sub_224A83A8C(v57, v56);
        swift_endAccess();

        sub_224A3311C(v50, &qword_27D6F3948, &qword_224DB5C10);
        return v51(v52, v23);
      }

      goto LABEL_20;
    }

    v41 = v62;
    sub_224A3796C(v10, v62, &qword_27D6F3948, &qword_224DB5C10);
    v53 = v49(&v10[v47], 1, v23);
    v50 = v59;
    if (v53 != 1)
    {
      (*(v24 + 32))(v28, &v10[v47], v23);
      sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
      v54 = v41;
      v55 = sub_224DAEDD8();
      v51 = v60;
      v60(v28, v23);
      sub_224A3311C(v69, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v70, &qword_27D6F3948, &qword_224DB5C10);
      v51(v54, v23);
      result = sub_224A3311C(v10, &qword_27D6F3948, &qword_224DB5C10);
      v52 = v68;
      if (v55)
      {
        goto LABEL_16;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_19:
    sub_224A3311C(v69, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3311C(v70, &qword_27D6F3948, &qword_224DB5C10);
    v60(v41, v23);
LABEL_20:
    result = sub_224A3311C(v10, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_21;
  }

  return result;
}