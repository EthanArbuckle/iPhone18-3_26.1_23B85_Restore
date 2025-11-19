unint64_t sub_226E3CA2C()
{
  result = qword_27D7B6AB8;
  if (!qword_27D7B6AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7B6AB8);
  }

  return result;
}

void sub_226E3CB28(void *a1)
{
  if (!a1)
  {
    return;
  }

  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 72);
  v21 = *(v1 + 64);
  v6 = *(v1 + 80);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000010, 0x8000000226E73380);

  v11 = sub_226E639B0();

  v12 = sub_226E639B0();
  [a1 addStringValueForField:v11 fieldValue:v12];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000012, 0x8000000226E733A0);

  v13 = sub_226E639B0();

  v14 = sub_226E639B0();
  [a1 addStringValueForField:v13 fieldValue:v14];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0x746E756F6D612ELL, 0xE700000000000000);

  v15 = sub_226E639B0();

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [a1 addIntegerValueForField:v15 fieldValue:v4];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0x73616365726F662ELL, 0xEE00657461645F74);

  v16 = sub_226E639B0();

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [a1 addIntegerValueForField:v16 fieldValue:v3];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E733C0);

  v17 = sub_226E639B0();

  [a1 addIntegerValueForField:v17 fieldValue:0];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E733E0);

  v18 = sub_226E639B0();

  [a1 addIntegerValueForField:v18 fieldValue:1000];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E73400);

  v19 = sub_226E639B0();

  v20 = sub_226E639B0();
  [a1 addStringValueForField:v19 fieldValue:v20];

  sub_226E639C0();

  MEMORY[0x22AA8D010](0xD000000000000011, 0x8000000226E73420);

  v22 = sub_226E639B0();

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [a1 addIntegerValueForField:v22 fieldValue:v6];
}

void sub_226E3D074()
{
  sub_226E3D1B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_226E3D1B0()
{
  if (!qword_280CEA230)
  {
    sub_226E63490();
    v0 = sub_226E63D80();
    if (!v1)
    {
      atomic_store(v0, &qword_280CEA230);
    }
  }
}

uint64_t sub_226E3D208(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_226E3D250(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_226E3D26C(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      sub_226E2233C(result + 32, v22);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v20;
      }

      else
      {
        v4 = 0;
      }

      if (result)
      {
        v5 = v21;
      }

      else
      {
        v5 = 0;
      }

      if (v3 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_226E2233C(v2 + 64, v22);
        result = swift_dynamicCast();
        if (result)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }

        if (result)
        {
          v7 = v21;
        }

        else
        {
          v7 = 0;
        }

        if (v3 >= 3)
        {
          sub_226E2233C(v2 + 96, v22);
          result = swift_dynamicCast();
          if (v3 >= 5)
          {
            v18 = result;
            sub_226E2233C(v2 + 160, v22);
            v8 = swift_dynamicCast();
            sub_226E2233C(v2 + 32 * v3, v22);
            v9 = MEMORY[0x277D837D0];
            v10 = swift_dynamicCast();
            v11 = v20;
            if (!v10)
            {
              v11 = 0;
            }

            v17 = v11;
            if (v10)
            {
              v12 = v21;
            }

            else
            {
              v12 = 0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF0, &qword_226E68B20);
            result = swift_initStackObject();
            *(result + 16) = xmmword_226E68A60;
            *(result + 32) = 0x695F656372756F73;
            *(result + 40) = 0xE900000000000064;
            if (v5)
            {
              v13 = result;
              *(result + 48) = v4;
              *(result + 56) = v5;
              *(result + 72) = v9;
              *(result + 80) = 0x6E5F797469746E65;
              *(result + 88) = 0xEB00000000656D61;
              if (v7)
              {
                *(result + 96) = v6;
                *(result + 104) = v7;
                *(result + 120) = v9;
                strcpy((result + 128), "currency_code");
                *(result + 142) = -4864;
                *(result + 144) = 4477781;
                *(result + 152) = 0xE300000000000000;
                *(result + 168) = v9;
                strcpy((result + 176), "amount_average");
                *(result + 191) = -18;
                if (v18)
                {
                  *(result + 192) = v20;
                  *(result + 216) = MEMORY[0x277D83B88];
                  *(result + 224) = 0x6974636964657270;
                  *(result + 232) = 0xEF657461645F6E6FLL;
                  if (v8)
                  {
                    *(result + 264) = MEMORY[0x277D839F8];
                    *(result + 240) = v20;

                    v14 = sub_226E3A558(v13);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF8, &qword_226E68B28);
                    result = swift_arrayDestroy();
                    if (v12)
                    {

                      swift_beginAccess();
                      v15 = *(v1 + 16);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v19 = *(v1 + 16);
                      *(v1 + 16) = 0x8000000000000000;
                      sub_226E39A20(v14, v17, v12, isUniquelyReferenced_nonNull_native, &qword_27D7B6B00, &unk_226E68B30);

                      *(v1 + 16) = v19;
                      return swift_endAccess();
                    }

LABEL_37:
                    __break(1u);
                    return result;
                  }

LABEL_36:
                  __break(1u);
                  goto LABEL_37;
                }

LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  return result;
}

unint64_t sub_226E3D670()
{
  type metadata accessor for TaskCollectionOrchestrator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = 0;
  v0[15] = v1;
  result = sub_226E47DDC(v1);
  v0[17] = 0;
  v0[18] = 0;
  v0[16] = result;
  qword_27D7B73E8 = v0;
  return result;
}

uint64_t *sub_226E3D6C4()
{
  if (qword_27D7B73E0 != -1)
  {
    swift_once();
  }

  return &qword_27D7B73E8;
}

uint64_t static TaskCollectionOrchestrator.shared.getter()
{
  if (qword_27D7B73E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_226E3D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 136) = v22;
  *(v9 + 144) = v8;
  *(v9 + 297) = a7;
  *(v9 + 120) = a6;
  *(v9 + 128) = a8;
  *(v9 + 296) = a5;
  *(v9 + 104) = a3;
  *(v9 + 112) = a4;
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v11 = sub_226E638E0();
  *(v9 + 160) = v11;
  v12 = *(v11 - 8);
  *(v9 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  *(v9 + 184) = v14;
  v15 = *(v14 - 8);
  *(v9 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  v17 = type metadata accessor for TaskCollectionOrchestrator.JobRequest();
  *(v9 + 208) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 298) = *v21;

  return MEMORY[0x2822009F8](sub_226E3D928, v8, 0);
}

uint64_t sub_226E3D928()
{
  v100 = v0;
  if (!*(v0 + 298))
  {
    v25 = *(v0 + 144);
    v26 = v25;
    if (*(v25 + 112))
    {
      v27 = *(v25 + 112);

      sub_226E63BA0();

      v26 = *(v0 + 144);
    }

    v28 = *(v0 + 152);
    v29 = *(v0 + 136);
    v96 = *(v0 + 297);
    v93 = *(v0 + 120);
    v90 = *(v0 + 296);
    v85 = *(v0 + 104);
    v87 = *(v0 + 112);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v32 = swift_allocObject();
    *(v0 + 256) = v32;
    sub_226E19F54();
    v33 = swift_allocError();
    *v34 = 4;
    *(v32 + 16) = v33;
    *(v32 + 24) = 1;
    v35 = sub_226E63B80();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
    v37 = sub_226E48774(&qword_27D7B6B20, v36, type metadata accessor for TaskCollectionOrchestrator);
    v38 = swift_allocObject();
    *(v38 + 16) = v26;
    *(v38 + 24) = v37;
    *(v38 + 32) = v31;
    *(v38 + 40) = v30;
    *(v38 + 48) = v26;
    *(v38 + 56) = v32;
    *(v38 + 64) = v85;
    *(v38 + 72) = v87;
    *(v38 + 80) = v90 & 1;
    *(v38 + 88) = v93;
    *(v38 + 96) = v96 & 1;
    *(v38 + 104) = v29;
    swift_retain_n();

    v39 = sub_226E3F804(0, 0, v28, &unk_226E68B88, v38);
    *(v0 + 264) = v39;
    v40 = *(v25 + 112);
    *(v25 + 112) = v39;

    v41 = *(MEMORY[0x277D857E0] + 4);

    v42 = swift_task_alloc();
    *(v0 + 272) = v42;
    *v42 = v0;
    v42[1] = sub_226E3E5FC;
    v43 = MEMORY[0x277D84F78] + 8;
    v44 = v39;
LABEL_20:

    return MEMORY[0x282200460](v42, v44, v43);
  }

  if (*(v0 + 298) == 1)
  {
    v1 = *(v0 + 144);
    if (*(v1 + 112))
    {
      v3 = *(v0 + 168);
      v2 = *(v0 + 176);
      v4 = *(v0 + 160);
      v5 = *(v0 + 96);
      v6 = sub_226E56FC8();
      (*(v3 + 16))(v2, v6, v4);

      v7 = sub_226E638C0();
      v8 = sub_226E63CA0();

      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 168);
      v10 = *(v0 + 176);
      v12 = *(v0 + 160);
      if (v9)
      {
        v14 = *(v0 + 88);
        v13 = *(v0 + 96);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v99 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_226E1FC98(v14, v13, &v99);
        _os_log_impl(&dword_226DD4000, v7, v8, "Rejecting task '%s'", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x22AA8E1B0](v16, -1, -1);
        MEMORY[0x22AA8E1B0](v15, -1, -1);
      }

      (*(v11 + 8))(v10, v12);
      sub_226E19F54();
      v17 = swift_allocError();
      *v18 = 4;
      v19 = *(v0 + 216);
      v20 = *(v0 + 200);
      v21 = *(v0 + 176);
      v22 = *(v0 + 152);
      swift_willThrow();
      v23 = v17;
      sub_226E47FFC(v17, 1);

      v24 = *(v0 + 8);
      goto LABEL_16;
    }

    v67 = *(v0 + 152);
    v68 = *(v0 + 136);
    v98 = *(v0 + 297);
    v95 = *(v0 + 120);
    v92 = *(v0 + 296);
    v69 = *(v0 + 104);
    v89 = *(v0 + 112);
    v71 = *(v0 + 88);
    v70 = *(v0 + 96);
    v72 = swift_allocObject();
    *(v0 + 224) = v72;
    sub_226E19F54();
    v73 = swift_allocError();
    *v74 = 4;
    *(v72 + 16) = v73;
    *(v72 + 24) = 1;
    v75 = sub_226E63B80();
    (*(*(v75 - 8) + 56))(v67, 1, 1, v75);
    v77 = sub_226E48774(&qword_27D7B6B20, v76, type metadata accessor for TaskCollectionOrchestrator);
    v78 = swift_allocObject();
    *(v78 + 16) = v1;
    *(v78 + 24) = v77;
    *(v78 + 32) = v71;
    *(v78 + 40) = v70;
    *(v78 + 48) = v1;
    *(v78 + 56) = v72;
    *(v78 + 64) = v69;
    *(v78 + 72) = v89;
    *(v78 + 80) = v92 & 1;
    *(v78 + 88) = v95;
    *(v78 + 96) = v98 & 1;
    *(v78 + 104) = v68;
    swift_retain_n();

    v79 = sub_226E3F804(0, 0, v67, &unk_226E68B90, v78);
    *(v0 + 232) = v79;
    v80 = *(v1 + 112);
    *(v1 + 112) = v79;

    v81 = *(MEMORY[0x277D857E0] + 4);

    v42 = swift_task_alloc();
    *(v0 + 240) = v42;
    *v42 = v0;
    v42[1] = sub_226E3E1EC;
    v43 = MEMORY[0x277D84F78] + 8;
    v44 = v79;
    goto LABEL_20;
  }

  v46 = *(v0 + 208);
  v45 = *(v0 + 216);
  v47 = *(v0 + 200);
  v48 = *(v0 + 144);
  v94 = *(v0 + 184);
  v97 = *(v0 + 136);
  v88 = *(v0 + 297);
  v91 = *(v0 + 128);
  v86 = *(v0 + 120);
  v84 = *(v0 + 296);
  v49 = *(v0 + 104);
  v50 = *(v0 + 112);
  v52 = *(v0 + 88);
  v51 = *(v0 + 96);
  v53 = *(v46 + 32);

  sub_226E63580();
  *v45 = v52;
  *(v45 + 8) = v51;
  *(v45 + 16) = v49;
  *(v45 + 24) = v50;
  *(v45 + 32) = v84 & 1;
  *(v45 + 40) = v86;
  *(v45 + 48) = v88 & 1;
  *(v45 + *(v46 + 36)) = v91;
  v54 = *(v94 + 48);
  sub_226E47F3C(v45, v47);
  *(v47 + v54) = v97;
  swift_beginAccess();
  v55 = *(v48 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v48 + 120) = v55;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = sub_226E4599C(0, v55[2] + 1, 1, v55);
    *(v48 + 120) = v55;
  }

  v58 = v55[2];
  v57 = v55[3];
  if (v58 >= v57 >> 1)
  {
    v55 = sub_226E4599C(v57 > 1, v58 + 1, 1, v55);
  }

  v60 = *(v0 + 192);
  v59 = *(v0 + 200);
  v61 = *(v0 + 144);
  v55[2] = v58 + 1;
  sub_226E26D94(v59, v55 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v58, &qword_27D7B6B18, &qword_226E68B70);
  *(v48 + 120) = v55;
  swift_endAccess();
  if (*(v61 + 112))
  {
    sub_226E47FA0(*(v0 + 216));
    v62 = *(v0 + 216);
    v63 = *(v0 + 200);
    v64 = *(v0 + 176);
    v65 = *(v0 + 152);

    v24 = *(v0 + 8);
LABEL_16:

    return v24();
  }

  v82 = swift_task_alloc();
  *(v0 + 288) = v82;
  *v82 = v0;
  v82[1] = sub_226E3EA0C;
  v83 = *(v0 + 144);

  return sub_226E3FB04();
}

uint64_t sub_226E3E1EC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_226E3E318, v3, 0);
}

uint64_t sub_226E3E318()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_226E3E3B8;
  v4 = *(v0 + 144);

  return sub_226E3FB04();
}

uint64_t sub_226E3E3B8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226E3E4C8, v2, 0);
}

uint64_t sub_226E3E4C8()
{
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_226E48124(v2, *(v1 + 24));

  if (v3 == 1)
  {
    v4 = v0[27];
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[19];
    swift_willThrow();
    v8 = v2;
    sub_226E47FFC(v2, 1);
  }

  else
  {
    v10 = v0[27];
    v11 = v0[25];
    v12 = v0[22];
    v13 = v0[19];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_226E3E5FC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_226E3E728, v3, 0);
}

uint64_t sub_226E3E728()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *v3 = v0;
  v3[1] = sub_226E3E7C8;
  v4 = *(v0 + 144);

  return sub_226E3FB04();
}

uint64_t sub_226E3E7C8()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226E3E8D8, v2, 0);
}

uint64_t sub_226E3E8D8()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_226E48124(v2, *(v1 + 24));

  if (v3 == 1)
  {
    v4 = v0[27];
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[19];
    swift_willThrow();
    v8 = v2;
    sub_226E47FFC(v2, 1);
  }

  else
  {
    v10 = v0[27];
    v11 = v0[25];
    v12 = v0[22];
    v13 = v0[19];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_226E3EA0C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226E3EB1C, v2, 0);
}

uint64_t sub_226E3EB1C()
{
  sub_226E47FA0(v0[27]);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226E3EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 313) = v21;
  *(v8 + 208) = v20;
  *(v8 + 216) = v22;
  *(v8 + 312) = v19;
  *(v8 + 192) = a8;
  *(v8 + 200) = v18;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = sub_226E638E0();
  *(v8 + 224) = v10;
  v11 = *(v10 - 8);
  *(v8 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v13 = sub_226E63B50();
  *(v8 + 264) = v13;
  v14 = *(v13 - 8);
  *(v8 + 272) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E3ED18, a6, 0);
}

uint64_t sub_226E3ED18()
{
  v51 = v0;
  if (sub_226E63BC0())
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = *(v0 + 168);
    v5 = sub_226E56FC8();
    (*(v3 + 16))(v1, v5, v2);

    v6 = sub_226E638C0();
    v7 = sub_226E63C80();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 256);
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);
    if (v8)
    {
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_226E1FC98(v13, v12, &v54);
      _os_log_impl(&dword_226DD4000, v6, v7, "Task set %s was cancelled before execution", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x22AA8E1B0](v15, -1, -1);
      MEMORY[0x22AA8E1B0](v14, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    v16 = *(v0 + 264);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    v50 = 2;
    sub_226E4577C(v19, v20, &v50);
    sub_226E48774(&qword_27D7B6B38, 255, MEMORY[0x277D85678]);
    v21 = swift_allocError();
    sub_226E63940();
    swift_beginAccess();
    v22 = *(v18 + 16);
    v23 = *(v18 + 24);
    *(v18 + 16) = v21;
    *(v18 + 24) = 1;
    sub_226E47FFC(v22, v23);
    v24 = *(v0 + 280);
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v27 = *(v0 + 240);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v49 = *(v0 + 313);
    v30 = *(v0 + 216);
    v48 = *(v0 + 208);
    v31 = *(v0 + 312);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *(v0 + 176);
    v47 = *(v0 + 160);
    v35 = *(v30 + 16);
    v36 = sub_226E55240();
    if (*v36 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = *v36;
    }

    v39 = -1 << *(v30 + 32);
    v40 = ~v39;
    v41 = *(v30 + 64);
    v42 = -v39;
    *(v0 + 16) = v30;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    *(v0 + 24) = v30 + 64;
    *(v0 + 32) = v40;
    *(v0 + 40) = 0;
    *(v0 + 48) = v43 & v41;
    sub_226E48774(&qword_27D7B6B20, v37, type metadata accessor for TaskCollectionOrchestrator);
    v44 = swift_task_alloc();
    *(v0 + 288) = v44;
    *(v44 + 16) = v38;
    *(v44 + 24) = v0 + 16;
    *(v44 + 32) = v34;
    *(v44 + 40) = v47;
    *(v44 + 56) = v33;
    *(v44 + 64) = v32;
    *(v44 + 72) = v31 & 1;
    *(v44 + 80) = v48;
    *(v44 + 88) = v49 & 1;
    v45 = *(MEMORY[0x277D859B8] + 4);

    v46 = swift_task_alloc();
    *(v0 + 296) = v46;
    *v46 = v0;
    v46[1] = sub_226E3F120;
    v53 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740]();
  }
}

uint64_t sub_226E3F120()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_226E3F30C;
  }

  else
  {
    v6 = *(v2 + 288);
    v7 = *(v2 + 176);

    v5 = sub_226E3F248;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226E3F248()
{
  v1 = v0[23];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  sub_226E33994();
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_226E47FFC(v7, v8);
  v9 = v0[35];
  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[30];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226E3F30C()
{
  v72 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_226E33994();
  *(v0 + 152) = v1;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  v11 = swift_dynamicCast();
  v12 = *(v0 + 304);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v0 + 168);
  if (v11)
  {
    v16 = *(v0 + 248);

    v17 = sub_226E56FC8();
    (*(v14 + 16))(v16, v17, v13);

    v18 = sub_226E638C0();
    v19 = sub_226E63C80();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 248);
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    if (v20)
    {
      v70 = *(v0 + 248);
      v25 = *(v0 + 160);
      v24 = *(v0 + 168);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v71 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_226E1FC98(v25, v24, &v71);
      _os_log_impl(&dword_226DD4000, v18, v19, "Task set %s cancelled.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x22AA8E1B0](v27, -1, -1);
      MEMORY[0x22AA8E1B0](v26, -1, -1);

      (*(v22 + 8))(v70, v23);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v42 = *(v0 + 272);
    v43 = *(v0 + 280);
    v44 = *(v0 + 264);
    v45 = *(v0 + 176);
    v46 = *(v0 + 184);
    v47 = *(v0 + 160);
    v48 = *(v0 + 168);
    LOBYTE(v71) = 2;
    sub_226E4577C(v47, v48, &v71);
    sub_226E48774(&qword_27D7B6B38, 255, MEMORY[0x277D85678]);
    v49 = swift_allocError();
    sub_226E63940();
    swift_beginAccess();
    v50 = *(v46 + 16);
    v51 = *(v46 + 24);
    *(v46 + 16) = v49;
    *(v46 + 24) = 1;
    sub_226E47FFC(v50, v51);
    (*(v42 + 8))(v43, v44);
  }

  else
  {
    v28 = *(v0 + 240);

    v29 = sub_226E56FC8();
    (*(v14 + 16))(v28, v29, v13);
    v30 = v12;

    v31 = sub_226E638C0();
    v32 = sub_226E63C80();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 304);
      v34 = *(v0 + 232);
      v68 = *(v0 + 224);
      v69 = *(v0 + 240);
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v39 = v71;
      *v37 = 136315394;
      *(v37 + 4) = sub_226E1FC98(v36, v35, &v71);
      *(v37 + 12) = 2112;
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v41;
      *v38 = v41;
      _os_log_impl(&dword_226DD4000, v31, v32, "Task set %s failed: %@", v37, 0x16u);
      sub_226E15E98(v38, &qword_27D7B6918, &qword_226E68950);
      MEMORY[0x22AA8E1B0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x22AA8E1B0](v39, -1, -1);
      MEMORY[0x22AA8E1B0](v37, -1, -1);

      (*(v34 + 8))(v69, v68);
    }

    else
    {
      v52 = *(v0 + 232);
      v53 = *(v0 + 240);
      v54 = *(v0 + 224);

      (*(v52 + 8))(v53, v54);
    }

    v55 = *(v0 + 304);
    v56 = *(v0 + 176);
    v57 = *(v0 + 184);
    v58 = *(v0 + 160);
    v59 = *(v0 + 168);
    LOBYTE(v71) = 1;
    sub_226E4577C(v58, v59, &v71);
    swift_beginAccess();
    v60 = *(v57 + 16);
    v61 = *(v57 + 24);
    *(v57 + 16) = v55;
    *(v57 + 24) = 1;
    sub_226E47FFC(v60, v61);
  }

  v62 = *(v0 + 280);
  v63 = *(v0 + 248);
  v64 = *(v0 + 256);
  v65 = *(v0 + 240);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_226E3F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_226E1A598(a3, v27 - v11, &qword_27D7B6870, &qword_226E683B0);
  v13 = sub_226E63B80();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_226E15E98(v12, &qword_27D7B6870, &qword_226E683B0);
  }

  else
  {
    sub_226E63B70();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_226E63B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_226E639E0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_226E3FB04()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = *(*(type metadata accessor for TaskCollectionOrchestrator.JobRequest() - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_226E63590();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = sub_226E638E0();
  v1[18] = v10;
  v11 = *(v10 - 8);
  v1[19] = v11;
  v12 = *(v11 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E3FD04, v0, 0);
}

uint64_t sub_226E3FD04()
{
  if (sub_226E63BC0())
  {
    v1 = v0[21];
    v2 = v0[18];
    v3 = v0[19];
    v4 = sub_226E56FC8();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_226E638C0();
    v6 = sub_226E63C80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226DD4000, v5, v6, "processNextInQueue cancelled before pruning", v7, 2u);
      MEMORY[0x22AA8E1B0](v7, -1, -1);
    }

    v8 = v0[21];
    v9 = v0[18];
    v10 = v0[19];

    (*(v10 + 8))(v8, v9);
  }

  v11 = v0[17];
  v12 = v0[8];
  sub_226E63580();
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  swift_beginAccess();
  v14 = sub_226E473C8(sub_226E48B34, v13);
  v16 = *(*(v12 + 120) + 16);
  if (v16 < v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  sub_226E48CB8(v14, v16);

  swift_endAccess();
  v20 = *(v18 + 8);
  v0[22] = v20;
  v0[23] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v19);
  if (sub_226E63BC0())
  {
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];
    v24 = sub_226E56FC8();
    (*(v22 + 16))(v21, v24, v23);
    v25 = sub_226E638C0();
    v26 = sub_226E63C80();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226DD4000, v25, v26, "processNextInQueue cancelled after pruning", v27, 2u);
      MEMORY[0x22AA8E1B0](v27, -1, -1);
    }

    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[18];

    (*(v29 + 8))(v28, v30);
  }

  if (*(*(v12 + 120) + 16))
  {
    v31 = v0[17];
    v32 = v0[8];
    sub_226E63580();
    v33 = swift_task_alloc();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    swift_beginAccess();
    sub_226E406F0(sub_226E48D78, v33);

    v34 = *(v12 + 120);
    if (*(v34 + 16))
    {
      v35 = v0[13];
      v36 = v0[14];
      v37 = v0[11];
      v38 = v0[10];
      v71 = v0[9];
      v39 = v0[8];
      v40 = *(v0[12] + 80);
      sub_226E1A598(v34 + ((v40 + 32) & ~v40), v36, &qword_27D7B6B18, &qword_226E68B70);
      sub_226E48CB8(0, 1);
      swift_endAccess();
      sub_226E1A598(v36, v35, &qword_27D7B6B18, &qword_226E68B70);
      v41 = *(v35 + *(v37 + 48));

      sub_226E48E24(v35, v38);
      v43 = *v38;
      v42 = *(v38 + 8);
      v44 = *(v38 + 24);
      v70 = *(v38 + 16);
      v69 = *(v38 + 32);
      v68 = *(v38 + 40);
      v67 = *(v38 + 48);
      v45 = *(v36 + *(v37 + 48));
      v46 = swift_allocObject();
      v0[24] = v46;
      sub_226E19F54();
      v47 = swift_allocError();
      *v48 = 4;
      *(v46 + 16) = v47;
      *(v46 + 24) = 1;
      v49 = sub_226E63B80();
      (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
      v51 = sub_226E48774(&qword_27D7B6B20, v50, type metadata accessor for TaskCollectionOrchestrator);
      v52 = swift_allocObject();
      *(v52 + 16) = v39;
      *(v52 + 24) = v51;
      *(v52 + 32) = v43;
      *(v52 + 40) = v42;
      *(v52 + 48) = v39;
      *(v52 + 56) = v46;
      *(v52 + 64) = v70;
      *(v52 + 72) = v44;
      *(v52 + 80) = v69;
      *(v52 + 88) = v68;
      *(v52 + 96) = v67;
      *(v52 + 104) = v45;
      swift_retain_n();

      v53 = sub_226E3F804(0, 0, v71, &unk_226E68CE8, v52);
      v0[25] = v53;
      v54 = *(v39 + 112);
      *(v39 + 112) = v53;

      v55 = *(MEMORY[0x277D857E0] + 4);
      v14 = swift_task_alloc();
      v0[26] = v14;
      *v14 = v0;
      v14[1] = sub_226E40324;
      v15 = MEMORY[0x277D84F78] + 8;
      v16 = v53;

      return MEMORY[0x282200460](v14, v16, v15);
    }

LABEL_19:
    __break(1u);
    return MEMORY[0x282200460](v14, v16, v15);
  }

  v56 = v0[8];
  v57 = *(v56 + 112);
  *(v56 + 112) = 0;

  v59 = v0[20];
  v58 = v0[21];
  v60 = v0[17];
  v62 = v0[13];
  v61 = v0[14];
  v64 = v0[9];
  v63 = v0[10];

  v65 = v0[1];

  return v65();
}

uint64_t sub_226E40324()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_226E40450, v3, 0);
}

uint64_t sub_226E40450()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_226E404F0;
  v4 = *(v0 + 64);

  return sub_226E3FB04();
}

uint64_t sub_226E404F0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226E40600, v2, 0);
}

uint64_t sub_226E40600()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[10];

  sub_226E47FA0(v7);
  sub_226E15E98(v6, &qword_27D7B6B18, &qword_226E68B70);
  v3(v4, v5);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_226E406F0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_226E47DC8(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_226E45C90(a1, a2);
  *v3 = v7;
  return result;
}

BOOL sub_226E407C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[1] = a3;
  v48 = a2;
  v4 = sub_226E638E0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v47 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v46 - v14;
  v16 = type metadata accessor for TaskCollectionOrchestrator.JobRequest();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v46[0] = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (v46 - v21);
  sub_226E1A598(a1, v15, &qword_27D7B6B18, &qword_226E68B70);
  v23 = *&v15[*(v12 + 56)];

  sub_226E48E24(v15, v22);
  v24 = *(v17 + 40);
  sub_226E63520();
  v26 = v25;
  v27 = sub_226E56FC8();
  v28 = v5[2];
  v28(v10, v27, v4);
  v29 = sub_226E638C0();
  v30 = sub_226E63C90();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v26;
    _os_log_impl(&dword_226DD4000, v29, v30, "timeSinceLastRequest: %f", v31, 0xCu);
    MEMORY[0x22AA8E1B0](v31, -1, -1);
  }

  v32 = v5[1];
  v32(v10, v4);
  v33 = *sub_226E55268();
  if (v33 < v26)
  {
    v34 = v47;
    v28(v47, v27, v4);
    v35 = v46[0];
    sub_226E47F3C(v22, v46[0]);
    v36 = sub_226E638C0();
    v37 = sub_226E63C90();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136315138;
      v40 = v35[1];
      v48 = *v35;
      v49 = v39;

      sub_226E47FA0(v35);
      v41 = sub_226E1FC98(v48, v40, &v49);

      *(v38 + 4) = v41;
      _os_log_impl(&dword_226DD4000, v36, v37, "Pruning expired task '%s' (waited too long)", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x22AA8E1B0](v39, -1, -1);
      MEMORY[0x22AA8E1B0](v38, -1, -1);

      v42 = v47;
    }

    else
    {

      sub_226E47FA0(v35);
      v42 = v34;
    }

    v32(v42, v4);
    v43 = *v22;
    v44 = v22[1];
    v50 = 2;
    sub_226E4577C(v43, v44, &v50);
  }

  sub_226E47FA0(v22);
  return v33 < v26;
}

uint64_t sub_226E40BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  return sub_226E48228(v3);
}

uint64_t sub_226E40C24()
{
  v1 = sub_226E47DDC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v2 = *(v0 + 128);
  *(v0 + 128) = v1;
}

uint64_t sub_226E40C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 370) = v22;
  *(v8 + 184) = v19;
  *(v8 + 192) = v21;
  *(v8 + 369) = v20;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 136) = a3;
  *(v8 + 144) = a4;
  *(v8 + 128) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = sub_226E635C0();
  *(v8 + 232) = v11;
  v12 = *(v11 - 8);
  *(v8 + 240) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B40, &qword_226E68C98) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0);
  *(v8 + 272) = v15;
  v16 = *(v15 - 8);
  *(v8 + 280) = v16;
  *(v8 + 288) = v16;
  *(v8 + 296) = *(v16 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E40EA8, a5, 0);
}

uint64_t sub_226E40EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 136);
  if (v5 < 0)
  {
LABEL_32:
    __break(1u);
    return MEMORY[0x2822004D0](a1, a2, a3, a4);
  }

  if (v5)
  {
    v6 = 0;
    v60 = *(v4 + 288);
    v70 = *(v4 + 272);
    v80 = *(v4 + 144);
    v61 = *(v4 + 240);
    v69 = (v61 + 32);
    while (1)
    {
      v11 = **(v4 + 144);
      v13 = v80[1];
      v12 = v80[2];
      v14 = v80[3];
      v15 = v80[4];
      v83 = v6;
      if (!v15)
      {
        break;
      }

      v78 = v80[2];
      v16 = v80[3];
LABEL_17:
      v21 = *(v4 + 272);
      v22 = *(v4 + 264);
      v23 = *(v4 + 248);
      v24 = *(v4 + 232);
      v71 = v11;
      v74 = *(v4 + 280);
      v76 = (v15 - 1) & v15;
      v25 = __clz(__rbit64(v15)) | (v16 << 6);
      (*(v61 + 16))(v23, *(v11 + 48) + *(v61 + 72) * v25, v24);
      v26 = *(v11 + 56);
      v27 = *(v70 + 48);
      v81 = *(v26 + 16 * v25);
      (*(v61 + 32))(v22, v23, v24);
      *(v22 + v27) = v81;
      v28 = v21;
      v17 = v71;
      (*(v74 + 56))(v22, 0, 1, v28);

      v29 = v76;
      v20 = v16;
      v12 = v78;
LABEL_18:
      v30 = *(v4 + 272);
      v31 = *(v4 + 280);
      v32 = *(v4 + 264);
      **(v4 + 144) = v17;
      v80[1] = v13;
      v80[2] = v12;
      v80[3] = v20;
      v80[4] = v29;
      a1 = (*(v31 + 48))(v32, 1);
      v10 = v83;
      if (a1 != 1)
      {
        v33 = *(v4 + 328);
        v34 = *(v4 + 320);
        v67 = *(v4 + 296);
        v35 = *(v4 + 264);
        v36 = *(v4 + 232);
        v62 = *(v4 + 336);
        v63 = *(v4 + 224);
        v82 = *(v4 + 216);
        v79 = *(v4 + 370);
        v75 = *(v4 + 369);
        v77 = *(v4 + 192);
        v72 = *(v4 + 176);
        v73 = *(v4 + 184);
        v37 = *(v4 + 160);
        v65 = v37;
        v66 = *(v4 + 168);
        v64 = *(v4 + 152);
        v38 = *(v70 + 48);
        v39 = *v69;
        (*v69)(v34, v35, v36);
        v40 = swift_allocObject();
        *(v40 + 16) = *(v35 + v38);
        v41 = (v33 + *(v70 + 48));
        v39(v33, v34, v36);
        *v41 = &unk_226E68CD0;
        v41[1] = v40;
        sub_226E26D94(v33, v62, &qword_27D7B6B48, &qword_226E68CA0);
        v42 = sub_226E63B80();
        v43 = *(v42 - 8);
        (*(v43 + 56))(v63, 1, 1, v42);
        sub_226E1A598(v62, v34, &qword_27D7B6B48, &qword_226E68CA0);
        v44 = (*(v60 + 80) + 89) & ~*(v60 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = 0;
        v68 = (v45 + 16);
        *(v45 + 24) = 0;
        *(v45 + 32) = v64;
        *(v45 + 40) = v65;
        *(v45 + 48) = v66;
        *(v45 + 56) = v72;
        *(v45 + 64) = v73;
        *(v45 + 72) = v75 & 1;
        *(v45 + 80) = v77;
        *(v45 + 88) = v79 & 1;
        sub_226E26D94(v34, v45 + v44, &qword_27D7B6B48, &qword_226E68CA0);
        sub_226E1A598(v63, v82, &qword_27D7B6870, &qword_226E683B0);
        LODWORD(v41) = (*(v43 + 48))(v82, 1, v42);

        v46 = *(v4 + 216);
        if (v41 == 1)
        {
          sub_226E15E98(*(v4 + 216), &qword_27D7B6870, &qword_226E683B0);
        }

        else
        {
          sub_226E63B70();
          (*(v43 + 8))(v46, v42);
        }

        if (*v68)
        {
          v47 = *(v45 + 24);
          v48 = *v68;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v49 = sub_226E63B40();
          v51 = v50;
          swift_unknownObjectRelease();
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v53 = **(v4 + 128);

        if (v51 | v49)
        {
          v7 = v4 + 48;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
          *(v4 + 64) = v49;
          *(v4 + 72) = v51;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v4 + 336);
        v9 = *(v4 + 224);
        *(v4 + 104) = 1;
        *(v4 + 112) = v7;
        *(v4 + 120) = v53;
        swift_task_create();

        sub_226E15E98(v9, &qword_27D7B6870, &qword_226E683B0);
        a1 = sub_226E15E98(v8, &qword_27D7B6B48, &qword_226E68CA0);
        v10 = v83;
      }

      v6 = v10 + 1;
      if (v6 == *(v4 + 136))
      {
        goto LABEL_28;
      }
    }

    v17 = **(v4 + 144);
    v18 = (v12 + 64) >> 6;
    if (v18 <= v14 + 1)
    {
      v19 = v14 + 1;
    }

    else
    {
      v19 = (v12 + 64) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v18)
      {
        v52 = *(v4 + 272);
        (*(*(v4 + 280) + 56))(*(v4 + 264), 1, 1);
        v29 = 0;
        goto LABEL_18;
      }

      v15 = *(v13 + 8 * v16);
      ++v14;
      if (v15)
      {
        v78 = v80[2];
        v11 = **(v4 + 144);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_28:
  v54 = sub_226E48774(&qword_27D7B6B20, a2, type metadata accessor for TaskCollectionOrchestrator);
  *(v4 + 344) = v54;
  v55 = *(v4 + 152);
  v56 = *(MEMORY[0x277D85818] + 4);
  v57 = swift_task_alloc();
  *(v4 + 352) = v57;
  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B50, &unk_226E68CA8);
  *v57 = v4;
  v57[1] = sub_226E415A0;
  v58 = *(v4 + 128);
  a1 = v4 + 368;
  a2 = v55;
  a3 = v54;

  return MEMORY[0x2822004D0](a1, a2, a3, a4);
}

uint64_t sub_226E415A0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_226E41DC8;
  }

  else
  {
    v6 = sub_226E416CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226E416CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + 368) & 1) == 0)
  {
    v17 = *(v4 + 144);
    v19 = *v17;
    v18 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v22 = v17[4];
    if (!v22)
    {
      v24 = (v21 + 64) >> 6;
      if (v24 <= v20 + 1)
      {
        v25 = v20 + 1;
      }

      else
      {
        v25 = (v21 + 64) >> 6;
      }

      v26 = v25 - 1;
      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v23 >= v24)
        {
          v61 = *(v4 + 272);
          (*(*(v4 + 280) + 56))(*(v4 + 256), 1, 1);
          v35 = 0;
          goto LABEL_16;
        }

        v22 = *(v18 + 8 * v23);
        ++v20;
        if (v22)
        {
          v81 = v21;
          goto LABEL_15;
        }
      }

      __break(1u);
      return MEMORY[0x2822004D0](a1, a2, a3, a4);
    }

    v81 = v21;
    v23 = v20;
LABEL_15:
    v27 = *(v4 + 272);
    v29 = *(v4 + 248);
    v28 = *(v4 + 256);
    v30 = *(v4 + 232);
    v31 = *(v4 + 240);
    v77 = *(v4 + 280);
    v79 = (v22 - 1) & v22;
    v32 = __clz(__rbit64(v22)) | (v23 << 6);
    (*(v31 + 16))(v29, *(v19 + 48) + *(v31 + 72) * v32, v30);
    v33 = *(v19 + 56);
    v84 = v19;
    v34 = *(v27 + 48);
    v87 = *(v33 + 16 * v32);
    (*(v31 + 32))(v28, v29, v30);
    *(v28 + v34) = v87;
    v19 = v84;
    (*(v77 + 56))(v28, 0, 1, v27);

    v35 = v79;
    v21 = v81;
    v26 = v23;
LABEL_16:
    v36 = *(v4 + 272);
    v37 = *(v4 + 280);
    v38 = *(v4 + 256);
    v39 = *(v4 + 144);
    *v39 = v19;
    v39[1] = v18;
    v39[2] = v21;
    v39[3] = v26;
    v39[4] = v35;
    if ((*(v37 + 48))(v38, 1) == 1)
    {
LABEL_27:
      v64 = *(v4 + 344);
      v65 = *(v4 + 152);
      v66 = *(MEMORY[0x277D85818] + 4);
      v67 = swift_task_alloc();
      *(v4 + 352) = v67;
      a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B50, &unk_226E68CA8);
      *v67 = v4;
      v67[1] = sub_226E415A0;
      v68 = *(v4 + 128);
      a1 = v4 + 368;
      a2 = v65;
      a3 = v64;

      return MEMORY[0x2822004D0](a1, a2, a3, a4);
    }

    v40 = *(v4 + 320);
    v41 = *(v4 + 304);
    v71 = *(v4 + 288);
    v42 = *(v4 + 272);
    v43 = *(v4 + 256);
    v44 = *(v4 + 232);
    v69 = *(v4 + 312);
    v70 = *(v4 + 208);
    v88 = *(v4 + 200);
    v85 = *(v4 + 370);
    v80 = *(v4 + 369);
    v82 = *(v4 + 192);
    v76 = *(v4 + 296);
    v78 = *(v4 + 184);
    v74 = *(v4 + 168);
    v75 = *(v4 + 176);
    v72 = *(v4 + 152);
    v73 = *(v4 + 160);
    v45 = *(v42 + 48);
    v46 = *(*(v4 + 240) + 32);
    v46(v40, v43, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = *(v43 + v45);
    v48 = (v41 + *(v42 + 48));
    v46(v41, v40, v44);
    *v48 = &unk_226E68CB8;
    v48[1] = v47;
    sub_226E26D94(v41, v69, &qword_27D7B6B48, &qword_226E68CA0);
    v49 = sub_226E63B80();
    v50 = *(v49 - 8);
    (*(v50 + 56))(v70, 1, 1, v49);
    sub_226E1A598(v69, v40, &qword_27D7B6B48, &qword_226E68CA0);
    v51 = (*(v71 + 80) + 89) & ~*(v71 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v53 = (v52 + 16);
    *(v52 + 24) = 0;
    *(v52 + 32) = v72;
    *(v52 + 40) = v73;
    *(v52 + 48) = v74;
    *(v52 + 56) = v75;
    *(v52 + 64) = v78;
    *(v52 + 72) = v80 & 1;
    *(v52 + 80) = v82;
    *(v52 + 88) = v85 & 1;
    sub_226E26D94(v40, v52 + v51, &qword_27D7B6B48, &qword_226E68CA0);
    sub_226E1A598(v70, v88, &qword_27D7B6870, &qword_226E683B0);
    LODWORD(v51) = (*(v50 + 48))(v88, 1, v49);

    v54 = *(v4 + 200);
    if (v51 == 1)
    {
      sub_226E15E98(*(v4 + 200), &qword_27D7B6870, &qword_226E683B0);
      if (*v53)
      {
LABEL_19:
        v55 = *(v52 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v56 = sub_226E63B40();
        v58 = v57;
        swift_unknownObjectRelease();
LABEL_22:
        v59 = **(v4 + 128);

        if (v58 | v56)
        {
          v60 = v4 + 16;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          *(v4 + 32) = v56;
          *(v4 + 40) = v58;
        }

        else
        {
          v60 = 0;
        }

        v62 = *(v4 + 312);
        v63 = *(v4 + 208);
        *(v4 + 80) = 1;
        *(v4 + 88) = v60;
        *(v4 + 96) = v59;
        swift_task_create();

        sub_226E15E98(v63, &qword_27D7B6870, &qword_226E683B0);
        sub_226E15E98(v62, &qword_27D7B6B48, &qword_226E68CA0);
        goto LABEL_27;
      }
    }

    else
    {
      sub_226E63B70();
      (*(v50 + 8))(v54, v49);
      if (*v53)
      {
        goto LABEL_19;
      }
    }

    v56 = 0;
    v58 = 0;
    goto LABEL_22;
  }

  v6 = *(v4 + 328);
  v5 = *(v4 + 336);
  v8 = *(v4 + 312);
  v7 = *(v4 + 320);
  v9 = *(v4 + 304);
  v11 = *(v4 + 256);
  v10 = *(v4 + 264);
  v12 = *(v4 + 248);
  v14 = *(v4 + 216);
  v13 = *(v4 + 224);
  v83 = *(v4 + 208);
  v86 = *(v4 + 200);

  v15 = *(v4 + 8);

  return v15();
}

uint64_t sub_226E41DC8()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v14 = v0[26];
  v15 = v0[25];

  v11 = v0[1];
  v12 = v0[45];

  return v11();
}

uint64_t sub_226E41EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v13;
  *(v8 + 81) = v12;
  *(v8 + 80) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_226E41F08, 0, 0);
}

uint64_t sub_226E41F08()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 81);
  v3 = *(v0 + 80);
  v4 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0) + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_226E48F58;
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 16);

  return sub_226E42220(v13, v12, v10, v11, v3 & 1, v8, v2 & 1, v9);
}

uint64_t sub_226E41FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v13;
  *(v8 + 81) = v12;
  *(v8 + 80) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_226E4203C, 0, 0);
}

uint64_t sub_226E4203C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 81);
  v3 = *(v0 + 80);
  v4 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0) + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_226E42128;
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 16);

  return sub_226E42220(v13, v12, v10, v11, v3 & 1, v8, v2 & 1, v9);
}

uint64_t sub_226E42128()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226E42220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 128) = v25;
  *(v9 + 136) = v8;
  *(v9 + 112) = a8;
  *(v9 + 120) = v24;
  *(v9 + 36) = a7;
  *(v9 + 96) = a4;
  *(v9 + 104) = a6;
  *(v9 + 35) = a5;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 72) = a1;
  v10 = sub_226E63F00();
  *(v9 + 144) = v10;
  v11 = *(v10 - 8);
  *(v9 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v13 = sub_226E63F10();
  *(v9 + 176) = v13;
  v14 = *(v13 - 8);
  *(v9 + 184) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  v16 = sub_226E635C0();
  *(v9 + 200) = v16;
  v17 = *(v16 - 8);
  *(v9 + 208) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  v19 = sub_226E638E0();
  *(v9 + 272) = v19;
  v20 = *(v19 - 8);
  *(v9 + 280) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E424B0, v8, 0);
}

void sub_226E424B0()
{
  v91 = v0;
  v1 = *(v0 + 88);
  if (v1 < 0)
  {
    __break(1u);
    return;
  }

  if (!v1)
  {
    v27 = *(v0 + 304);
    v28 = *(v0 + 272);
    v29 = *(v0 + 280);
    v30 = *(v0 + 232);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    v33 = *(v0 + 112);
    v34 = *(v0 + 80);
    v35 = sub_226E56FC8();
    (*(v29 + 16))(v27, v35, v28);
    (*(v32 + 16))(v30, v33, v31);

    v36 = sub_226E638C0();
    v37 = sub_226E63CA0();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 304);
    v41 = *(v0 + 272);
    v40 = *(v0 + 280);
    v42 = *(v0 + 232);
    v44 = *(v0 + 200);
    v43 = *(v0 + 208);
    if (v38)
    {
      v45 = *(v0 + 88);
      v78 = *(v0 + 80);
      v87 = *(v0 + 304);
      v46 = *(v0 + 72);
      v84 = *(v0 + 272);
      v47 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v90 = v81;
      *v47 = 134218498;
      *(v47 + 4) = v45;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_226E1FC98(v46, v78, &v90);
      *(v47 + 22) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v48 = sub_226E63FE0();
      v50 = v49;
      (*(v43 + 8))(v42, v44);
      v51 = sub_226E1FC98(v48, v50, &v90);

      *(v47 + 24) = v51;
      _os_log_impl(&dword_226DD4000, v36, v37, "Exhausted all %ld retries for task %s, id: %s.", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v81, -1, -1);
      MEMORY[0x22AA8E1B0](v47, -1, -1);

      (*(v40 + 8))(v87, v84);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v39, v41);
    }

LABEL_16:
    v59 = *(v0 + 328);
    v58 = *(v0 + 336);
    v61 = *(v0 + 312);
    v60 = *(v0 + 320);
    v63 = *(v0 + 296);
    v62 = *(v0 + 304);
    v64 = *(v0 + 288);
    v65 = *(v0 + 256);
    v66 = *(v0 + 264);
    v67 = *(v0 + 248);
    v75 = *(v0 + 240);
    v76 = *(v0 + 232);
    v77 = *(v0 + 224);
    v79 = *(v0 + 216);
    v82 = *(v0 + 192);
    v85 = *(v0 + 168);
    v89 = *(v0 + 160);

    v68 = *(v0 + 8);

    v68();
    return;
  }

  *(v0 + 344) = 0;
  if (sub_226E63BC0())
  {
    v2 = *(v0 + 336);
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v5 = *(v0 + 264);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = sub_226E56FC8();
    (*(v4 + 16))(v2, v10, v3);
    (*(v7 + 16))(v5, v8, v6);

    v11 = sub_226E638C0();
    v12 = sub_226E63C80();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 336);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    if (v13)
    {
      v86 = *(v0 + 336);
      v20 = *(v0 + 72);
      v21 = *(v0 + 80);
      v83 = *(v0 + 272);
      v22 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v90 = v80;
      *v22 = 136315394;
      *(v22 + 4) = sub_226E1FC98(v20, v21, &v90);
      *(v22 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v23 = sub_226E63FE0();
      v25 = v24;
      (*(v18 + 8))(v17, v19);
      v26 = sub_226E1FC98(v23, v25, &v90);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_226DD4000, v11, v12, "Task %s, id: %s cancelled", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v80, -1, -1);
      MEMORY[0x22AA8E1B0](v22, -1, -1);

      (*(v15 + 8))(v86, v83);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }

    v55 = *(v0 + 136);
    v56 = *(v0 + 72);
    v57 = *(v0 + 80);
    LOBYTE(v90) = 2;
    sub_226E4577C(v56, v57, &v90);
    goto LABEL_16;
  }

  if (*(v0 + 36))
  {
    v88 = (*(v0 + 120) + **(v0 + 120));
    v52 = *(*(v0 + 120) + 4);
    v53 = swift_task_alloc();
    *(v0 + 376) = v53;
    *v53 = v0;
    v53[1] = sub_226E430CC;
    v54 = *(v0 + 128);

    v88();
  }

  else
  {
    v70 = *(v0 + 120);
    v69 = *(v0 + 128);
    v71 = *(v0 + 104);
    v72 = swift_allocObject();
    *(v0 + 352) = v72;
    *(v72 + 16) = v70;
    *(v72 + 24) = v69;

    v73 = swift_task_alloc();
    *(v0 + 360) = v73;
    *v73 = v0;
    v73[1] = sub_226E42C14;
    v74 = MEMORY[0x277D84F78] + 8;

    static Task<>.setTimeoutWithTaskGroup<A>(timeoutInterval:task:)(v73, &unk_226E68C60, v72, v74, v71);
  }
}

uint64_t sub_226E42C14()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_226E43D24;
  }

  else
  {
    v6 = *(v2 + 352);
    v7 = *(v2 + 136);

    v5 = sub_226E42D3C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226E42D3C()
{
  v57 = v0;
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[14];
  v8 = v0[10];
  v9 = sub_226E56FC8();
  (*(v3 + 16))(v1, v9, v2);
  (*(v6 + 16))(v4, v7, v5);

  v10 = sub_226E638C0();
  v11 = sub_226E63C80();

  if (os_log_type_enabled(v10, v11))
  {
    v51 = v0[34];
    v53 = v0[41];
    v12 = v0[32];
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[9];
    v16 = v0[10];
    v47 = v0[43] + 1;
    v49 = v0[35];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_226E1FC98(v15, v16, &v56);
    *(v17 + 12) = 2080;
    sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
    v19 = sub_226E63FE0();
    v21 = v20;
    (*(v13 + 8))(v12, v14);
    v22 = sub_226E1FC98(v19, v21, &v56);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v47;
    _os_log_impl(&dword_226DD4000, v10, v11, "Task %s, id: %s succeeded: attempt #%ld", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v18, -1, -1);
    MEMORY[0x22AA8E1B0](v17, -1, -1);

    (*(v49 + 8))(v53, v51);
  }

  else
  {
    v23 = v0[41];
    v24 = v0[34];
    v25 = v0[35];
    v26 = v0[32];
    v27 = v0[25];
    v28 = v0[26];

    (*(v28 + 8))(v26, v27);
    (*(v25 + 8))(v23, v24);
  }

  v29 = v0[17];
  v30 = v0[9];
  v31 = v0[10];
  v55 = 0;
  sub_226E4577C(v30, v31, &v55);
  v33 = v0[41];
  v32 = v0[42];
  v35 = v0[39];
  v34 = v0[40];
  v37 = v0[37];
  v36 = v0[38];
  v38 = v0[36];
  v39 = v0[32];
  v40 = v0[33];
  v41 = v0[31];
  v44 = v0[30];
  v45 = v0[29];
  v46 = v0[28];
  v48 = v0[27];
  v50 = v0[24];
  v52 = v0[21];
  v54 = v0[20];

  v42 = v0[1];

  return v42();
}

uint64_t sub_226E430CC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_226E449E0;
  }

  else
  {
    v6 = sub_226E48F50;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226E431F8()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = sub_226E48774(&qword_27D7B6898, 255, MEMORY[0x277D85928]);
  sub_226E64020();
  sub_226E48774(&qword_27D7B68A0, 255, MEMORY[0x277D858F8]);
  sub_226E63F20();
  v8 = *(v5 + 8);
  v0[49] = v8;
  v0[50] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = sub_226E43384;
  v11 = v0[24];
  v13 = v0[21];
  v12 = v0[22];

  return MEMORY[0x2822008C8](v13, v0 + 2, v12, v7);
}

uint64_t sub_226E43384()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 392);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 144);
  v12 = *v1;
  *(*v1 + 416) = v0;

  v5(v6, v7);
  if (v0)
  {
    v8 = sub_226E43C90;
    v9 = 0;
  }

  else
  {
    v10 = v2[17];
    (*(v2[23] + 8))(v2[24], v2[22]);
    v8 = sub_226E43528;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_226E43528()
{
  v92 = v0;
  v1 = *(v0 + 344) + 1;
  if (v1 == *(v0 + 88))
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v5 = *(v0 + 232);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = sub_226E56FC8();
    (*(v4 + 16))(v2, v10, v3);
    (*(v7 + 16))(v5, v8, v6);

    v11 = sub_226E638C0();
    v12 = sub_226E63CA0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 304);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 232);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    if (v13)
    {
      v20 = *(v0 + 88);
      v79 = *(v0 + 80);
      v87 = *(v0 + 304);
      v21 = *(v0 + 72);
      v84 = *(v0 + 272);
      v22 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v91 = v81;
      *v22 = 134218498;
      *(v22 + 4) = v20;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_226E1FC98(v21, v79, &v91);
      *(v22 + 22) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v23 = sub_226E63FE0();
      v25 = v24;
      (*(v18 + 8))(v17, v19);
      v26 = sub_226E1FC98(v23, v25, &v91);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_226DD4000, v11, v12, "Exhausted all %ld retries for task %s, id: %s.", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v81, -1, -1);
      MEMORY[0x22AA8E1B0](v22, -1, -1);

      (*(v15 + 8))(v87, v84);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }

LABEL_15:
    v60 = *(v0 + 328);
    v59 = *(v0 + 336);
    v62 = *(v0 + 312);
    v61 = *(v0 + 320);
    v64 = *(v0 + 296);
    v63 = *(v0 + 304);
    v65 = *(v0 + 288);
    v66 = *(v0 + 256);
    v67 = *(v0 + 264);
    v68 = *(v0 + 248);
    v76 = *(v0 + 240);
    v77 = *(v0 + 232);
    v78 = *(v0 + 224);
    v80 = *(v0 + 216);
    v83 = *(v0 + 192);
    v86 = *(v0 + 168);
    v90 = *(v0 + 160);

    v69 = *(v0 + 8);

    return v69();
  }

  *(v0 + 344) = v1;
  if (sub_226E63BC0())
  {
    v27 = *(v0 + 336);
    v28 = *(v0 + 272);
    v29 = *(v0 + 280);
    v30 = *(v0 + 264);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    v33 = *(v0 + 112);
    v34 = *(v0 + 80);
    v35 = sub_226E56FC8();
    (*(v29 + 16))(v27, v35, v28);
    (*(v32 + 16))(v30, v33, v31);

    v36 = sub_226E638C0();
    v37 = sub_226E63C80();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 336);
    v41 = *(v0 + 272);
    v40 = *(v0 + 280);
    v42 = *(v0 + 264);
    v44 = *(v0 + 200);
    v43 = *(v0 + 208);
    if (v38)
    {
      v88 = *(v0 + 336);
      v45 = *(v0 + 72);
      v46 = *(v0 + 80);
      v85 = *(v0 + 272);
      v47 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v91 = v82;
      *v47 = 136315394;
      *(v47 + 4) = sub_226E1FC98(v45, v46, &v91);
      *(v47 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v48 = sub_226E63FE0();
      v50 = v49;
      (*(v43 + 8))(v42, v44);
      v51 = sub_226E1FC98(v48, v50, &v91);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_226DD4000, v36, v37, "Task %s, id: %s cancelled", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v82, -1, -1);
      MEMORY[0x22AA8E1B0](v47, -1, -1);

      (*(v40 + 8))(v88, v85);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v39, v41);
    }

    v56 = *(v0 + 136);
    v57 = *(v0 + 72);
    v58 = *(v0 + 80);
    LOBYTE(v91) = 2;
    sub_226E4577C(v57, v58, &v91);
    goto LABEL_15;
  }

  if (*(v0 + 36))
  {
    v89 = (*(v0 + 120) + **(v0 + 120));
    v52 = *(*(v0 + 120) + 4);
    v53 = swift_task_alloc();
    *(v0 + 376) = v53;
    *v53 = v0;
    v53[1] = sub_226E430CC;
    v54 = *(v0 + 128);

    return v89();
  }

  else
  {
    v71 = *(v0 + 120);
    v70 = *(v0 + 128);
    v72 = *(v0 + 104);
    v73 = swift_allocObject();
    *(v0 + 352) = v73;
    *(v73 + 16) = v71;
    *(v73 + 24) = v70;

    v74 = swift_task_alloc();
    *(v0 + 360) = v74;
    *v74 = v0;
    v74[1] = sub_226E42C14;
    v75 = MEMORY[0x277D84F78] + 8;

    return static Task<>.setTimeoutWithTaskGroup<A>(timeoutInterval:task:)(v74, &unk_226E68C60, v73, v75, v72);
  }
}

uint64_t sub_226E43C90()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226E48F54, v4, 0);
}

uint64_t sub_226E43D24()
{
  v168 = v0;
  v1 = *(v0 + 352);

  v2 = *(v0 + 368);
  *(v0 + 56) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 33) & 0xFE) == 6)
  {

LABEL_22:
    v98 = *(v0 + 328);
    v97 = *(v0 + 336);
    v100 = *(v0 + 312);
    v99 = *(v0 + 320);
    v102 = *(v0 + 296);
    v101 = *(v0 + 304);
    v103 = *(v0 + 288);
    v104 = *(v0 + 256);
    v105 = *(v0 + 264);
    v106 = *(v0 + 248);
    v144 = *(v0 + 240);
    v147 = *(v0 + 232);
    v150 = *(v0 + 224);
    v154 = *(v0 + 216);
    v159 = *(v0 + 192);
    v162 = *(v0 + 168);
    v165 = *(v0 + 160);

    v107 = *(v0 + 8);

    return v107();
  }

  *(v0 + 64) = v2;
  v4 = v2;
  v5 = swift_dynamicCast();
  v6 = *(v0 + 272);
  v7 = *(v0 + 200);
  v8 = *(v0 + 112);
  v9 = *(v0 + 80);
  v10 = (*(v0 + 208) + 16);
  v11 = (*(v0 + 280) + 16);
  if (v5)
  {
    v12 = *(v0 + 34) == 3;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v33 = *(v0 + 296);
    v161 = *(v0 + 200);
    v34 = *(v0 + 224);

    v35 = sub_226E56FC8();
    v163 = *v11;
    (*v11)(v33, v35, v6);
    v36 = v161;
    v160 = *v10;
    (*v10)(v34, v8, v36);

    v37 = sub_226E638C0();
    v38 = sub_226E63CA0();

    if (os_log_type_enabled(v37, v38))
    {
      v149 = *(v0 + 280);
      v152 = *(v0 + 272);
      v158 = *(v0 + 296);
      v141 = v38;
      v39 = *(v0 + 224);
      v40 = *(v0 + 200);
      v41 = *(v0 + 208);
      v43 = *(v0 + 72);
      v42 = *(v0 + 80);
      v143 = *(v0 + 344) + 1;
      v44 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v167 = v146;
      *v44 = 136315650;
      *(v44 + 4) = sub_226E1FC98(v43, v42, &v167);
      *(v44 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v45 = sub_226E63FE0();
      v47 = v46;
      v28 = *(v41 + 8);
      v28(v39, v40);
      v48 = sub_226E1FC98(v45, v47, &v167);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v143;
      _os_log_impl(&dword_226DD4000, v37, v141, "Task %s, id: %s timed out: attempt #%ld", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v146, -1, -1);
      MEMORY[0x22AA8E1B0](v44, -1, -1);

      v49 = v158;
      v157 = *(v149 + 8);
      v157(v49, v152);
    }

    else
    {
      v56 = *(v0 + 296);
      v57 = *(v0 + 272);
      v58 = *(v0 + 280);
      v59 = *(v0 + 224);
      v60 = *(v0 + 200);
      v61 = *(v0 + 208);

      v28 = *(v61 + 8);
      v28(v59, v60);
      v157 = *(v58 + 8);
      v157(v56, v57);
    }
  }

  else
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 216);

    v15 = sub_226E56FC8();
    v163 = *v11;
    (*v11)(v13, v15, v6);
    v160 = *v10;
    (*v10)(v14, v8, v7);

    v16 = v2;
    v17 = sub_226E638C0();
    v18 = sub_226E63CA0();

    if (os_log_type_enabled(v17, v18))
    {
      v148 = *(v0 + 280);
      v151 = *(v0 + 272);
      v156 = *(v0 + 288);
      v139 = v18;
      v20 = *(v0 + 208);
      v19 = *(v0 + 216);
      v21 = *(v0 + 200);
      v23 = *(v0 + 72);
      v22 = *(v0 + 80);
      v142 = *(v0 + 344) + 1;
      v24 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v167 = v145;
      *v24 = 136315906;
      *(v24 + 4) = sub_226E1FC98(v23, v22, &v167);
      *(v24 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v25 = sub_226E63FE0();
      v27 = v26;
      v28 = *(v20 + 8);
      v28(v19, v21);
      v29 = sub_226E1FC98(v25, v27, &v167);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v142;
      *(v24 + 32) = 2112;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 34) = v31;
      *v140 = v31;
      _os_log_impl(&dword_226DD4000, v17, v139, "Task %s, id: %s failed: attempt #%ld: %@", v24, 0x2Au);
      sub_226E15E98(v140, &qword_27D7B6918, &qword_226E68950);
      MEMORY[0x22AA8E1B0](v140, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v145, -1, -1);
      MEMORY[0x22AA8E1B0](v24, -1, -1);

      v32 = v156;
      v157 = *(v148 + 8);
      v157(v32, v151);
    }

    else
    {
      v51 = *(v0 + 280);
      v50 = *(v0 + 288);
      v52 = *(v0 + 272);
      v54 = *(v0 + 208);
      v53 = *(v0 + 216);
      v55 = *(v0 + 200);

      v28 = *(v54 + 8);
      v28(v53, v55);
      v157 = *(v51 + 8);
      v157(v50, v52);
    }
  }

  v62 = *(v0 + 136);
  v63 = *(v0 + 72);
  v64 = *(v0 + 80);
  LOBYTE(v167) = 1;
  sub_226E4577C(v63, v64, &v167);
  if (sub_226E63BC0())
  {
    v65 = *(v0 + 320);
    v66 = *(v0 + 272);
    v67 = *(v0 + 248);
    v68 = *(v0 + 200);
    v69 = *(v0 + 112);
    v70 = *(v0 + 80);
    v71 = *(v0 + 208) + 16;
    v72 = *(v0 + 280) + 16;
    v73 = sub_226E56FC8();
    v163(v65, v73, v66);
    v160(v67, v69, v68);

    v74 = sub_226E638C0();
    v75 = sub_226E63CA0();

    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 320);
    v78 = *(v0 + 272);
    v79 = *(v0 + 280);
    v80 = *(v0 + 248);
    v82 = *(v0 + 200);
    v81 = *(v0 + 208);
    if (v76)
    {
      v164 = v28;
      v153 = *(v0 + 320);
      v83 = *(v0 + 72);
      v84 = *(v0 + 80);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v167 = v86;
      *v85 = 136315394;
      *(v85 + 4) = sub_226E1FC98(v83, v84, &v167);
      *(v85 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v87 = sub_226E63FE0();
      v89 = v88;
      v164(v80, v82);
      v90 = sub_226E1FC98(v87, v89, &v167);

      *(v85 + 14) = v90;
      _os_log_impl(&dword_226DD4000, v74, v75, "Cancelled during retry loop: task %s, id: %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v86, -1, -1);
      MEMORY[0x22AA8E1B0](v85, -1, -1);

      v157(v153, v78);
    }

    else
    {

      v28(v80, v82);
      v157(v77, v78);
    }

    v94 = *(v0 + 136);
    v95 = *(v0 + 72);
    v96 = *(v0 + 80);
    LOBYTE(v167) = 2;
    sub_226E4577C(v95, v96, &v167);
    goto LABEL_22;
  }

  if (*(v0 + 35))
  {
    v91 = *(v0 + 344);
    v92 = *sub_226E55254();
    v93 = exp2(v91) * v92;
  }

  else
  {
    v93 = *(v0 + 96);
  }

  v109 = *(v0 + 312);
  v110 = *(v0 + 272);
  v111 = *(v0 + 240);
  v112 = *(v0 + 200);
  v113 = *(v0 + 112);
  v114 = *(v0 + 80);
  v115 = *(v0 + 208) + 16;
  v116 = *(v0 + 280) + 16;
  v117 = sub_226E56FC8();
  v163(v109, v117, v110);
  v160(v111, v113, v112);

  v118 = sub_226E638C0();
  v119 = sub_226E63CA0();

  v120 = os_log_type_enabled(v118, v119);
  v121 = *(v0 + 312);
  v122 = *(v0 + 272);
  v123 = *(v0 + 280);
  v124 = *(v0 + 240);
  v126 = *(v0 + 200);
  v125 = *(v0 + 208);
  if (v120)
  {
    v166 = v28;
    v155 = *(v0 + 312);
    v127 = *(v0 + 72);
    v128 = *(v0 + 80);
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v167 = v130;
    *v129 = 136315650;
    *(v129 + 4) = sub_226E1FC98(v127, v128, &v167);
    *(v129 + 12) = 2080;
    sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
    v131 = sub_226E63FE0();
    v133 = v132;
    v166(v124, v126);
    v134 = sub_226E1FC98(v131, v133, &v167);

    *(v129 + 14) = v134;
    *(v129 + 22) = 2048;
    *(v129 + 24) = v93;
    _os_log_impl(&dword_226DD4000, v118, v119, "Task %s, id: %s will retry in %f seconds", v129, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v130, -1, -1);
    MEMORY[0x22AA8E1B0](v129, -1, -1);

    v157(v155, v122);
  }

  else
  {

    v28(v124, v126);
    v157(v121, v122);
  }

  v135 = *(v0 + 192);
  v136 = sub_226E640F0();
  v138 = v137;
  sub_226E64040();
  *(v0 + 40) = v136;
  *(v0 + 48) = v138;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_226E431F8, 0, 0);
}

uint64_t sub_226E449E0()
{
  v167 = v0;
  v1 = *(v0 + 384);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 33) & 0xFE) == 6)
  {

LABEL_22:
    v97 = *(v0 + 328);
    v96 = *(v0 + 336);
    v99 = *(v0 + 312);
    v98 = *(v0 + 320);
    v101 = *(v0 + 296);
    v100 = *(v0 + 304);
    v102 = *(v0 + 288);
    v103 = *(v0 + 256);
    v104 = *(v0 + 264);
    v105 = *(v0 + 248);
    v143 = *(v0 + 240);
    v146 = *(v0 + 232);
    v149 = *(v0 + 224);
    v153 = *(v0 + 216);
    v158 = *(v0 + 192);
    v161 = *(v0 + 168);
    v164 = *(v0 + 160);

    v106 = *(v0 + 8);

    return v106();
  }

  *(v0 + 64) = v1;
  v3 = v1;
  v4 = swift_dynamicCast();
  v5 = *(v0 + 272);
  v6 = *(v0 + 200);
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = (*(v0 + 208) + 16);
  v10 = (*(v0 + 280) + 16);
  if (v4)
  {
    v11 = *(v0 + 34) == 3;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v32 = *(v0 + 296);
    v160 = *(v0 + 200);
    v33 = *(v0 + 224);

    v34 = sub_226E56FC8();
    v162 = *v10;
    (*v10)(v32, v34, v5);
    v35 = v160;
    v159 = *v9;
    (*v9)(v33, v7, v35);

    v36 = sub_226E638C0();
    v37 = sub_226E63CA0();

    if (os_log_type_enabled(v36, v37))
    {
      v148 = *(v0 + 280);
      v151 = *(v0 + 272);
      v157 = *(v0 + 296);
      v140 = v37;
      v38 = *(v0 + 224);
      v39 = *(v0 + 200);
      v40 = *(v0 + 208);
      v42 = *(v0 + 72);
      v41 = *(v0 + 80);
      v142 = *(v0 + 344) + 1;
      v43 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v166 = v145;
      *v43 = 136315650;
      *(v43 + 4) = sub_226E1FC98(v42, v41, &v166);
      *(v43 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v44 = sub_226E63FE0();
      v46 = v45;
      v27 = *(v40 + 8);
      v27(v38, v39);
      v47 = sub_226E1FC98(v44, v46, &v166);

      *(v43 + 14) = v47;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v142;
      _os_log_impl(&dword_226DD4000, v36, v140, "Task %s, id: %s timed out: attempt #%ld", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v145, -1, -1);
      MEMORY[0x22AA8E1B0](v43, -1, -1);

      v48 = v157;
      v156 = *(v148 + 8);
      v156(v48, v151);
    }

    else
    {
      v55 = *(v0 + 296);
      v56 = *(v0 + 272);
      v57 = *(v0 + 280);
      v58 = *(v0 + 224);
      v59 = *(v0 + 200);
      v60 = *(v0 + 208);

      v27 = *(v60 + 8);
      v27(v58, v59);
      v156 = *(v57 + 8);
      v156(v55, v56);
    }
  }

  else
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);

    v14 = sub_226E56FC8();
    v162 = *v10;
    (*v10)(v12, v14, v5);
    v159 = *v9;
    (*v9)(v13, v7, v6);

    v15 = v1;
    v16 = sub_226E638C0();
    v17 = sub_226E63CA0();

    if (os_log_type_enabled(v16, v17))
    {
      v147 = *(v0 + 280);
      v150 = *(v0 + 272);
      v155 = *(v0 + 288);
      v138 = v17;
      v19 = *(v0 + 208);
      v18 = *(v0 + 216);
      v20 = *(v0 + 200);
      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      v141 = *(v0 + 344) + 1;
      v23 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v166 = v144;
      *v23 = 136315906;
      *(v23 + 4) = sub_226E1FC98(v22, v21, &v166);
      *(v23 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v24 = sub_226E63FE0();
      v26 = v25;
      v27 = *(v19 + 8);
      v27(v18, v20);
      v28 = sub_226E1FC98(v24, v26, &v166);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2048;
      *(v23 + 24) = v141;
      *(v23 + 32) = 2112;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 34) = v30;
      *v139 = v30;
      _os_log_impl(&dword_226DD4000, v16, v138, "Task %s, id: %s failed: attempt #%ld: %@", v23, 0x2Au);
      sub_226E15E98(v139, &qword_27D7B6918, &qword_226E68950);
      MEMORY[0x22AA8E1B0](v139, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v144, -1, -1);
      MEMORY[0x22AA8E1B0](v23, -1, -1);

      v31 = v155;
      v156 = *(v147 + 8);
      v156(v31, v150);
    }

    else
    {
      v50 = *(v0 + 280);
      v49 = *(v0 + 288);
      v51 = *(v0 + 272);
      v53 = *(v0 + 208);
      v52 = *(v0 + 216);
      v54 = *(v0 + 200);

      v27 = *(v53 + 8);
      v27(v52, v54);
      v156 = *(v50 + 8);
      v156(v49, v51);
    }
  }

  v61 = *(v0 + 136);
  v62 = *(v0 + 72);
  v63 = *(v0 + 80);
  LOBYTE(v166) = 1;
  sub_226E4577C(v62, v63, &v166);
  if (sub_226E63BC0())
  {
    v64 = *(v0 + 320);
    v65 = *(v0 + 272);
    v66 = *(v0 + 248);
    v67 = *(v0 + 200);
    v68 = *(v0 + 112);
    v69 = *(v0 + 80);
    v70 = *(v0 + 208) + 16;
    v71 = *(v0 + 280) + 16;
    v72 = sub_226E56FC8();
    v162(v64, v72, v65);
    v159(v66, v68, v67);

    v73 = sub_226E638C0();
    v74 = sub_226E63CA0();

    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 320);
    v77 = *(v0 + 272);
    v78 = *(v0 + 280);
    v79 = *(v0 + 248);
    v81 = *(v0 + 200);
    v80 = *(v0 + 208);
    if (v75)
    {
      v163 = v27;
      v152 = *(v0 + 320);
      v82 = *(v0 + 72);
      v83 = *(v0 + 80);
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v166 = v85;
      *v84 = 136315394;
      *(v84 + 4) = sub_226E1FC98(v82, v83, &v166);
      *(v84 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
      v86 = sub_226E63FE0();
      v88 = v87;
      v163(v79, v81);
      v89 = sub_226E1FC98(v86, v88, &v166);

      *(v84 + 14) = v89;
      _os_log_impl(&dword_226DD4000, v73, v74, "Cancelled during retry loop: task %s, id: %s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v85, -1, -1);
      MEMORY[0x22AA8E1B0](v84, -1, -1);

      v156(v152, v77);
    }

    else
    {

      v27(v79, v81);
      v156(v76, v77);
    }

    v93 = *(v0 + 136);
    v94 = *(v0 + 72);
    v95 = *(v0 + 80);
    LOBYTE(v166) = 2;
    sub_226E4577C(v94, v95, &v166);
    goto LABEL_22;
  }

  if (*(v0 + 35))
  {
    v90 = *(v0 + 344);
    v91 = *sub_226E55254();
    v92 = exp2(v90) * v91;
  }

  else
  {
    v92 = *(v0 + 96);
  }

  v108 = *(v0 + 312);
  v109 = *(v0 + 272);
  v110 = *(v0 + 240);
  v111 = *(v0 + 200);
  v112 = *(v0 + 112);
  v113 = *(v0 + 80);
  v114 = *(v0 + 208) + 16;
  v115 = *(v0 + 280) + 16;
  v116 = sub_226E56FC8();
  v162(v108, v116, v109);
  v159(v110, v112, v111);

  v117 = sub_226E638C0();
  v118 = sub_226E63CA0();

  v119 = os_log_type_enabled(v117, v118);
  v120 = *(v0 + 312);
  v121 = *(v0 + 272);
  v122 = *(v0 + 280);
  v123 = *(v0 + 240);
  v125 = *(v0 + 200);
  v124 = *(v0 + 208);
  if (v119)
  {
    v165 = v27;
    v154 = *(v0 + 312);
    v126 = *(v0 + 72);
    v127 = *(v0 + 80);
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v166 = v129;
    *v128 = 136315650;
    *(v128 + 4) = sub_226E1FC98(v126, v127, &v166);
    *(v128 + 12) = 2080;
    sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0]);
    v130 = sub_226E63FE0();
    v132 = v131;
    v165(v123, v125);
    v133 = sub_226E1FC98(v130, v132, &v166);

    *(v128 + 14) = v133;
    *(v128 + 22) = 2048;
    *(v128 + 24) = v92;
    _os_log_impl(&dword_226DD4000, v117, v118, "Task %s, id: %s will retry in %f seconds", v128, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v129, -1, -1);
    MEMORY[0x22AA8E1B0](v128, -1, -1);

    v156(v154, v121);
  }

  else
  {

    v27(v123, v125);
    v156(v120, v121);
  }

  v134 = *(v0 + 192);
  v135 = sub_226E640F0();
  v137 = v136;
  sub_226E64040();
  *(v0 + 40) = v135;
  *(v0 + 48) = v137;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_226E431F8, 0, 0);
}

uint64_t sub_226E45694(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E17C50;

  return v6();
}

uint64_t sub_226E4577C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  result = swift_beginAccess();
  v9 = v3[16];
  if (*(v9 + 16))
  {

    v10 = sub_226E20614(a1, a2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = (*(v9 + 56) + 24 * v10);
    v14 = *v12;
    v13 = v12[1];
    for (i = v12[2]; ; i = 0)
    {

      if (v7)
      {
        break;
      }

LABEL_5:
      v16 = __OFADD__(v14++, 1);
      if (!v16)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_8:
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    i = 0;
    v13 = 0;
    v14 = 0;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (v7 == 1)
  {
    v16 = __OFADD__(v13++, 1);
    if (!v16)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v16 = __OFADD__(i++, 1);
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_15:
  swift_beginAccess();
  v17 = v4[16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v4[16];
  v4[16] = 0x8000000000000000;
  sub_226E47AB8(v14, v13, i, a1, a2, isUniquelyReferenced_nonNull_native);
  v4[16] = v21;
  result = swift_endAccess();
  v19 = v4[17];
  if (v19)
  {
    v20 = v4[18];
    v22[0] = v7;

    v19(a1, a2, v22);
    return sub_226E48228(v19);
  }

  return result;
}

void *TaskCollectionOrchestrator.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[18];
  sub_226E48228(v0[17]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskCollectionOrchestrator.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[18];
  sub_226E48228(v0[17]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

size_t sub_226E4599C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B58, qword_226E68CF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_226E45B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B60, &qword_226E696C0);
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

uint64_t sub_226E45C90(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_226E63FD0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
        v9 = sub_226E63B20();
        *(v9 + 16) = v8;
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_226E46094(v11, v12, v2, a1, a2, v7);
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
    return sub_226E45DE4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_226E45DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v5;
  v50 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v10 = *(*(v47 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v37 - v14;
  result = MEMORY[0x28223BE20](v13);
  v48 = &v37 - v17;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v16 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v44 = -v19;
    v45 = v18;
    v21 = a1 - a3;
    v38 = v19;
    v22 = v18 + v19 * a3;
    v23 = &qword_27D7B6B18;
    v24 = &qword_226E68B70;
LABEL_3:
    v42 = v20;
    v43 = a3;
    v40 = v22;
    v41 = v21;
    v25 = v21;
    v26 = v20;
    while (1)
    {
      v51 = v25;
      v27 = v48;
      sub_226E1A598(v22, v48, v23, v24);
      v28 = v24;
      v29 = v23;
      v30 = v49;
      sub_226E1A598(v26, v49, v29, v28);
      v31 = v6;
      v32 = v50(v27, v30);
      v33 = v30;
      v23 = v29;
      v24 = v28;
      sub_226E15E98(v33, v23, v28);
      result = sub_226E15E98(v27, v23, v28);
      if (v31)
      {
        break;
      }

      if ((v32 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v43 + 1;
        v20 = v42 + v38;
        v21 = v41 - 1;
        v22 = v40 + v38;
        if (v43 + 1 != v39)
        {
          goto LABEL_3;
        }

        return result;
      }

      v34 = v51;
      if (!v45)
      {
        __break(1u);
        return result;
      }

      v35 = v46;
      sub_226E26D94(v22, v46, v23, v28);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_226E26D94(v35, v26, v23, v28);
      v26 += v44;
      v22 += v44;
      v36 = __CFADD__(v34, 1);
      v25 = v34 + 1;
      v6 = 0;
      if (v36)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_226E46094(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v135 = a4;
  v136 = a5;
  v124 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v132 = *(v128 - 8);
  v10 = *(v132 + 64);
  v11 = MEMORY[0x28223BE20](v128);
  v125 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v112 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v112 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v112 - v22;
  result = MEMORY[0x28223BE20](v21);
  v134 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_100:
    a6 = *v124;
    if (*v124)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v135;
      v18 = v136;
      if ((result & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_102;
    }

    goto LABEL_140;
  }

  v121 = &v112 - v25;
  v122 = v23;
  v129 = v27;
  v126 = v26;
  v117 = a6;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v120 = v28;
  while (1)
  {
    v32 = v30;
    if (v30 + 1 >= v29)
    {
      v43 = v30 + 1;
    }

    else
    {
      v123 = v29;
      v133 = v7;
      v33 = *v134;
      v34 = *(v132 + 72);
      a6 = *v134 + v34 * (v30 + 1);
      v35 = v121;
      sub_226E1A598(a6, v121, &qword_27D7B6B18, &qword_226E68B70);
      v131 = v34;
      v36 = v122;
      sub_226E1A598(v33 + v34 * v30, v122, &qword_27D7B6B18, &qword_226E68B70);
      v37 = v133;
      LODWORD(v133) = v135(v35, v36);
      if (v37)
      {
        sub_226E15E98(v36, &qword_27D7B6B18, &qword_226E68B70);
        sub_226E15E98(v35, &qword_27D7B6B18, &qword_226E68B70);
      }

      v119 = v31;
      v116 = v18;
      sub_226E15E98(v36, &qword_27D7B6B18, &qword_226E68B70);
      result = sub_226E15E98(v35, &qword_27D7B6B18, &qword_226E68B70);
      v115 = v123 - 1;
      v130 = v123 - 2;
      v38 = v131;
      v39 = v33 + v131 * (v30 + 2);
      v118 = v30;
      v40 = v120;
      while (v130 != v30)
      {
        sub_226E1A598(v39, v40, &qword_27D7B6B18, &qword_226E68B70);
        v41 = v129;
        sub_226E1A598(a6, v129, &qword_27D7B6B18, &qword_226E68B70);
        v42 = v135(v40, v41);
        sub_226E15E98(v41, &qword_27D7B6B18, &qword_226E68B70);
        result = sub_226E15E98(v40, &qword_27D7B6B18, &qword_226E68B70);
        ++v30;
        v38 = v131;
        v39 += v131;
        a6 += v131;
        if ((v133 ^ v42))
        {
          v43 = v30 + 1;
          goto LABEL_11;
        }
      }

      v30 = v115;
      v43 = v123;
LABEL_11:
      v18 = v116;
      v7 = 0;
      v32 = v118;
      if (v133)
      {
        v31 = v119;
        if (v43 < v118)
        {
          goto LABEL_134;
        }

        if (v118 <= v30)
        {
          a6 = v38 * (v43 - 1);
          v44 = v43 * v38;
          v123 = v43;
          v45 = v118;
          v30 = v118 * v38;
          do
          {
            if (v45 != --v43)
            {
              v133 = v7;
              v46 = *v134;
              if (!*v134)
              {
                goto LABEL_138;
              }

              sub_226E26D94(v46 + v30, v125, &qword_27D7B6B18, &qword_226E68B70);
              if (v30 < a6 || v46 + v30 >= (v46 + v44))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v30 != a6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_226E26D94(v125, v46 + a6, &qword_27D7B6B18, &qword_226E68B70);
              v7 = v133;
              v38 = v131;
            }

            ++v45;
            a6 -= v38;
            v44 -= v38;
            v30 += v38;
          }

          while (v45 < v43);
          v18 = v116;
          v43 = v123;
        }
      }

      else
      {
        v31 = v119;
      }
    }

    v47 = v134[1];
    if (v43 >= v47)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v43, v32))
    {
      goto LABEL_130;
    }

    if (v43 - v32 >= v117)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v32, v117))
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v32 + v117 >= v47)
    {
      v48 = v134[1];
    }

    else
    {
      v48 = v32 + v117;
    }

    if (v48 < v32)
    {
      goto LABEL_133;
    }

    if (v43 == v48)
    {
LABEL_35:
      a6 = v43;
      if (v43 < v32)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v133 = v7;
      v96 = *v134;
      v97 = *(v132 + 72);
      v98 = *v134 + v97 * (v43 - 1);
      v130 = -v97;
      v131 = v96;
      v118 = v32;
      v99 = (v32 - v43);
      v113 = v97;
      v100 = v96 + v43 * v97;
      v114 = v48;
      do
      {
        v123 = v43;
        v115 = v100;
        v101 = v100;
        v116 = v99;
        v119 = v98;
        do
        {
          sub_226E1A598(v101, v18, &qword_27D7B6B18, &qword_226E68B70);
          v30 = v18;
          v102 = v126;
          sub_226E1A598(v98, v126, &qword_27D7B6B18, &qword_226E68B70);
          v103 = v133;
          v104 = v135(v30, v102);
          v133 = v103;
          if (v103)
          {
            sub_226E15E98(v102, &qword_27D7B6B18, &qword_226E68B70);
            sub_226E15E98(v30, &qword_27D7B6B18, &qword_226E68B70);
          }

          v105 = v104;
          sub_226E15E98(v102, &qword_27D7B6B18, &qword_226E68B70);
          result = sub_226E15E98(v30, &qword_27D7B6B18, &qword_226E68B70);
          v18 = v30;
          if ((v105 & 1) == 0)
          {
            break;
          }

          if (!v131)
          {
            goto LABEL_136;
          }

          v106 = v127;
          sub_226E26D94(v101, v127, &qword_27D7B6B18, &qword_226E68B70);
          swift_arrayInitWithTakeFrontToBack();
          sub_226E26D94(v106, v98, &qword_27D7B6B18, &qword_226E68B70);
          v98 += v130;
          v101 += v130;
        }

        while (!__CFADD__(v99++, 1));
        v43 = v123 + 1;
        v98 = &v119[v113];
        v99 = v116 - 1;
        v100 = v115 + v113;
        a6 = v114;
      }

      while (v123 + 1 != v114);
      v7 = v133;
      v32 = v118;
      if (v114 < v118)
      {
        goto LABEL_129;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v49 = v7;
    if ((result & 1) == 0)
    {
      result = sub_226E45B8C(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v51 = *(v31 + 2);
    v50 = *(v31 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_226E45B8C((v50 > 1), v51 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v52;
    v53 = &v31[16 * v51];
    *(v53 + 4) = v32;
    *(v53 + 5) = a6;
    v30 = a6;
    a6 = *v124;
    if (!*v124)
    {
      goto LABEL_139;
    }

    if (v51)
    {
      break;
    }

    v7 = v49;
LABEL_87:
    v29 = v134[1];
    if (v30 >= v29)
    {
      goto LABEL_100;
    }
  }

  v7 = v49;
  while (1)
  {
    v54 = v52 - 1;
    if (v52 >= 4)
    {
      v59 = &v31[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_116;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_117;
      }

      v66 = &v31[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_119;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_122;
      }

      if (v70 >= v62)
      {
        v88 = &v31[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_128;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v52 == 3)
    {
      v55 = *(v31 + 4);
      v56 = *(v31 + 5);
      v65 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      v58 = v65;
LABEL_56:
      if (v58)
      {
        goto LABEL_118;
      }

      v71 = &v31[16 * v52];
      v73 = *v71;
      v72 = *(v71 + 1);
      v74 = __OFSUB__(v72, v73);
      v75 = v72 - v73;
      v76 = v74;
      if (v74)
      {
        goto LABEL_121;
      }

      v77 = &v31[16 * v54 + 32];
      v79 = *v77;
      v78 = *(v77 + 1);
      v65 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v65)
      {
        goto LABEL_124;
      }

      if (__OFADD__(v75, v80))
      {
        goto LABEL_125;
      }

      if (v75 + v80 >= v57)
      {
        if (v57 < v80)
        {
          v54 = v52 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v81 = &v31[16 * v52];
    v83 = *v81;
    v82 = *(v81 + 1);
    v65 = __OFSUB__(v82, v83);
    v75 = v82 - v83;
    v76 = v65;
LABEL_70:
    if (v76)
    {
      goto LABEL_120;
    }

    v84 = &v31[16 * v54];
    v86 = *(v84 + 4);
    v85 = *(v84 + 5);
    v65 = __OFSUB__(v85, v86);
    v87 = v85 - v86;
    if (v65)
    {
      goto LABEL_123;
    }

    if (v87 < v75)
    {
      goto LABEL_87;
    }

LABEL_77:
    v92 = v54 - 1;
    if (v54 - 1 >= v52)
    {
      break;
    }

    if (!*v134)
    {
      goto LABEL_135;
    }

    v93 = *&v31[16 * v92 + 32];
    v94 = *&v31[16 * v54 + 40];
    sub_226E46BC8(*v134 + *(v132 + 72) * v93, *v134 + *(v132 + 72) * *&v31[16 * v54 + 32], *v134 + *(v132 + 72) * v94, a6, v135, v136);
    if (v7)
    {
    }

    if (v94 < v93)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_226E472C4(v31);
    }

    if (v92 >= *(v31 + 2))
    {
      goto LABEL_115;
    }

    v95 = &v31[16 * v92];
    *(v95 + 4) = v93;
    *(v95 + 5) = v94;
    v137 = v31;
    result = sub_226E47238(v54);
    v31 = v137;
    v52 = *(v137 + 2);
    if (v52 <= 1)
    {
      goto LABEL_87;
    }
  }

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
  result = sub_226E472C4(v31);
  v31 = result;
LABEL_102:
  v137 = v31;
  v108 = *(v31 + 2);
  if (v108 < 2)
  {
  }

  while (*v134)
  {
    v109 = *&v31[16 * v108];
    v110 = *&v31[16 * v108 + 24];
    sub_226E46BC8(*v134 + *(v132 + 72) * v109, *v134 + *(v132 + 72) * *&v31[16 * v108 + 16], *v134 + *(v132 + 72) * v110, a6, v30, v18);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_226E472C4(v31);
    }

    if (v108 - 2 >= *(v31 + 2))
    {
      goto LABEL_127;
    }

    v111 = &v31[16 * v108];
    *v111 = v109;
    *(v111 + 1) = v110;
    v137 = v31;
    result = sub_226E47238(v108 - 1);
    v31 = v137;
    v108 = *(v137 + 2);
    if (v108 <= 1)
    {
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

unint64_t sub_226E46BC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v65 = a6;
  v66 = a5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v12 = *(*(v64 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v64);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v61 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  result = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  v63 = *(v24 + 72);
  if (!v63)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v63 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v63 != -1)
  {
    v62 = a3;
    v26 = (a2 - a1) / v63;
    v70 = a1;
    v69 = a4;
    if (v26 < v25 / v63)
    {
      v27 = v26 * v63;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = a2;
LABEL_17:
      v61 = a4 + v27;
      v67 = v6;
      v68 = a4 + v27;
      if (v27 >= 1 && result < v62)
      {
        v30 = &qword_27D7B6B18;
        v60 = v20;
        while (1)
        {
          v31 = result;
          sub_226E1A598(result, v23, v30, &qword_226E68B70);
          sub_226E1A598(a4, v20, v30, &qword_226E68B70);
          v32 = v30;
          v33 = v67;
          v34 = v66(v23, v20);
          v67 = v33;
          if (v33)
          {
            break;
          }

          v35 = v34;
          sub_226E15E98(v20, v30, &qword_226E68B70);
          sub_226E15E98(v23, v30, &qword_226E68B70);
          if (v35)
          {
            v36 = v63;
            if (a1 < v31 || a1 >= v31 + v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v31 + v36;
          }

          else
          {
            v36 = v63;
            v37 = a4 + v63;
            if (a1 < a4 || a1 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v69 = v37;
            a4 += v36;
            result = v31;
          }

          a1 += v36;
          v70 = a1;
          if (a4 < v61)
          {
            v30 = v32;
            v20 = v60;
            if (result < v62)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        sub_226E15E98(v20, &qword_27D7B6B18, &qword_226E68B70);
        sub_226E15E98(v23, &qword_27D7B6B18, &qword_226E68B70);
      }

LABEL_65:
      sub_226E472D8(&v70, &v69, &v68);
      return 1;
    }

    v28 = v25 / v63 * v63;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        v38 = a4 + v28;
        if (v28 >= 1)
        {
          v39 = v62;
          v40 = -v63;
          v41 = v38;
          v57 = v15;
          v58 = a1;
          do
          {
            v55 = v38;
            v59 = result;
            v60 = (result + v40);
            while (1)
            {
              if (result <= a1)
              {
                v67 = v7;
                v70 = result;
                v38 = v55;
                goto LABEL_62;
              }

              v63 = v39;
              v43 = v7;
              v44 = a4;
              v56 = v38;
              v67 = v41;
              v62 = v41 + v40;
              v45 = v61;
              sub_226E1A598(v41 + v40, v61, &qword_27D7B6B18, &qword_226E68B70);
              sub_226E1A598(v60, v15, &qword_27D7B6B18, &qword_226E68B70);
              v46 = v66(v45, v15);
              if (v43)
              {
                sub_226E15E98(v15, &qword_27D7B6B18, &qword_226E68B70);
                sub_226E15E98(v45, &qword_27D7B6B18, &qword_226E68B70);
                v70 = v59;
                v68 = v56;
                goto LABEL_65;
              }

              v47 = v46;
              v48 = v63;
              v49 = v63 + v40;
              sub_226E15E98(v15, &qword_27D7B6B18, &qword_226E68B70);
              sub_226E15E98(v45, &qword_27D7B6B18, &qword_226E68B70);
              if (v47)
              {
                break;
              }

              v50 = v62;
              v38 = v62;
              v39 = v49;
              if (v48 < v67 || v49 >= v67)
              {
                v42 = v62;
                swift_arrayInitWithTakeFrontToBack();
                v38 = v42;
                a4 = v44;
              }

              else
              {
                a4 = v44;
                if (v48 != v67)
                {
                  v51 = v62;
                  swift_arrayInitWithTakeBackToFront();
                  v38 = v51;
                }
              }

              v41 = v38;
              v7 = 0;
              v15 = v57;
              a1 = v58;
              result = v59;
              if (v50 <= a4)
              {
                goto LABEL_59;
              }
            }

            v39 = v49;
            if (v48 < v59 || v49 >= v59)
            {
              v53 = v60;
              swift_arrayInitWithTakeFrontToBack();
              result = v53;
              a4 = v44;
            }

            else
            {
              result = v60;
              a4 = v44;
              if (v48 != v59)
              {
                v52 = v60;
                swift_arrayInitWithTakeBackToFront();
                result = v52;
              }
            }

            v41 = v67;
            v7 = 0;
            v15 = v57;
            a1 = v58;
            v38 = v56;
          }

          while (v67 > a4);
        }

LABEL_59:
        v67 = v7;
        v70 = result;
LABEL_62:
        v68 = v38;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
    goto LABEL_41;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_226E47238(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226E472C4(v3);
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

uint64_t sub_226E472D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_226E473C8(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *v4;
  result = sub_226E476EC(a1, a2, *v4);
  if (!v3)
  {
    v47 = 0;
    if (v20)
    {
      return v18[2];
    }

    v40 = v17;
    v41 = a1;
    v36 = v15;
    v37 = v12;
    v35 = v4;
    v45 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v23 = v18 + 2;
      v22 = v18[2];
      if (v21 == v22)
      {
        return v45;
      }

      v38 = v8;
      v39 = a2;
      while (v21 < v22)
      {
        v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v46 = v18;
        v42 = v24;
        v25 = *(v8 + 72);
        v43 = v25 * v21;
        v44 = v18 + v24;
        v26 = v40;
        sub_226E1A598(v18 + v24 + v25 * v21, v40, &qword_27D7B6B18, &qword_226E68B70);
        v27 = v47;
        v28 = v41(v26);
        result = sub_226E15E98(v26, &qword_27D7B6B18, &qword_226E68B70);
        v47 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v8 = v38;
          v18 = v46;
        }

        else
        {
          v29 = v45;
          if (v21 == v45)
          {
            v8 = v38;
            v18 = v46;
          }

          else
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v23;
            if (v45 >= *v23)
            {
              goto LABEL_27;
            }

            v31 = v25 * v45;
            v32 = v44;
            result = sub_226E1A598(&v44[v25 * v45], v36, &qword_27D7B6B18, &qword_226E68B70);
            if (v21 >= v30)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_226E1A598(&v32[v43], v37, &qword_27D7B6B18, &qword_226E68B70);
            v18 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_226E47DC8(v18);
            }

            v34 = v18 + v42;
            result = sub_226E48EE0(v37, v18 + v42 + v31);
            if (v21 >= v18[2])
            {
              goto LABEL_29;
            }

            result = sub_226E48EE0(v36, &v34[v33]);
            *v35 = v18;
            v8 = v38;
            v29 = v45;
          }

          v45 = v29 + 1;
        }

        ++v21;
        v23 = v18 + 2;
        v22 = v18[2];
        if (v21 == v22)
        {
          return v45;
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226E476EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_226E477F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B30, &qword_226E68C50);
  v39 = a2;
  result = sub_226E63F60();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v40 = *v26;
      v27 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v40;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_226E47AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_226E20614(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_226E477F8(v20, a6 & 1);
      v24 = *v7;
      result = sub_226E20614(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_226E47C48();
      result = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * result);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  v28 = (v26[6] + 16 * result);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v26[7] + 24 * result);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26[2] = v31;
}

void *sub_226E47C48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B30, &qword_226E68C50);
  v2 = *v0;
  v3 = sub_226E63F50();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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

unint64_t sub_226E47DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B30, &qword_226E68C50);
    v3 = sub_226E63F70();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_226E20614(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t type metadata accessor for TaskCollectionOrchestrator.JobRequest()
{
  result = qword_27D7B7470;
  if (!qword_27D7B7470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226E47F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskCollectionOrchestrator.JobRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E47FA0(uint64_t a1)
{
  v2 = type metadata accessor for TaskCollectionOrchestrator.JobRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226E47FFC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_226E4802C()
{
  v2 = *(v0 + 40);
  v16 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_226E1A614;

  return sub_226E3EBB4(v11, v12, v13, v16, v2, v3, v4, v5);
}

id sub_226E48124(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_226E48130()
{
  v2 = *(v0 + 40);
  v16 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_226E17C50;

  return sub_226E3EBB4(v11, v12, v13, v16, v2, v3, v4, v5);
}

uint64_t sub_226E48228(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of TaskCollectionOrchestrator.processAndWait(label:iterations:fixedDelay:timeout:basePriority:executionPolicy:tasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(*v10 + 232);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v11 + 16) = v20;
  *v20 = v11;
  v20[1] = sub_226E1A614;

  return (v22)(a1, a2, a3, a4, a5 & 1, a6, a7 & 1, a8, a9, a10);
}

void sub_226E48440()
{
  sub_226E484DC();
  if (v0 <= 0x3F)
  {
    sub_226E63590();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226E484DC()
{
  if (!qword_27D7B6B28)
  {
    v0 = sub_226E63D80();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7B6B28);
    }
  }
}

uint64_t sub_226E4852C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226E1A614;

  return sub_226E45694(v4, v2);
}

uint64_t sub_226E485C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E1A614;

  return sub_226E32DC0(a1, v5);
}

uint64_t sub_226E4867C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v15 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226E17C50;

  return sub_226E40C78(v13, a2, v15, v4, v5, v6, v7, v8);
}

uint64_t sub_226E48774(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226E487BC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0) - 8);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = v0 + ((*(v2 + 80) + 89) & ~*(v2 + 80));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_226E1A614;

  return sub_226E41FF4(v12, v13, v14, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_66Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 89) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = sub_226E635C0();
  (*(*(v8 - 8) + 8))(&v0[v3], v8);
  v9 = *&v0[v3 + 8 + v1[14]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226E48A00()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0) - 8);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = v0 + ((*(v2 + 80) + 89) & ~*(v2 + 80));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_226E1A614;

  return sub_226E41EC0(v12, v13, v14, v3, v4, v5, v6, v7);
}

unint64_t sub_226E48B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_226E48CB8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_226E4599C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_226E48B64(v6, a2, 0);
  *v2 = v4;
  return result;
}

BOOL sub_226E48D78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = type metadata accessor for TaskCollectionOrchestrator.JobRequest();
  v7 = *(v6 + 32);
  sub_226E63520();
  v9 = v8;
  v10 = sub_226E55294();
  v11 = *(v6 + 32);
  v12 = v9 * *v10 + *(a1 + *(v6 + 36));
  sub_226E63520();
  return v13 * *v10 + *(a2 + *(v6 + 36)) < v12;
}

uint64_t sub_226E48E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskCollectionOrchestrator.JobRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226E48EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_226E48F5C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_226E639B0();
  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t sub_226E48FE0(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_226E639B0();
  v5 = [v3 initWithSuiteName_];

  *(v2 + 56) = v5;
  sub_226E49104(a1, v2 + 16);
  return v2;
}

uint64_t sub_226E4907C(__int128 *a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_226E639B0();
  v5 = [v3 initWithSuiteName_];

  *(v1 + 56) = v5;
  sub_226E49104(a1, v1 + 16);
  return v1;
}

uint64_t sub_226E49104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_226E4911C(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = sub_226E62FC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226E637E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 2;
  result = static FinHealthFeatureFlag.isEnabled(_:)(&v21);
  if (result)
  {
    result = (*(*v3 + 136))();
    if (result)
    {
      (*(v6 + 16))(v9, v19, v5);
      v16 = v20;

      sub_226E49334(v9, v16, a3, v14);
      v17 = v3[5];
      v18 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
      (*(v18 + 8))(v14, v17, v18);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_226E49334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v89 = a2;
  v94 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B68, &qword_226E68D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B70, &qword_226E68D18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B78, &unk_226E68D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v77 - v16;
  v17 = sub_226E635C0();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  MEMORY[0x28223BE20](v17);
  v82 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226E62D70();
  v85 = *(v20 - 8);
  v86 = v20;
  v21 = *(v85 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B80, &qword_226E68D30);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v81 = &v77 - v26;
  v27 = sub_226E62EA0();
  v79 = *(v27 - 8);
  v80 = v27;
  v28 = *(v79 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_226E63670();
  v88 = *(v96 - 8);
  v31 = *(v88 + 64);
  v32 = MEMORY[0x28223BE20](v96);
  v78 = (&v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v95 = &v77 - v34;
  v35 = sub_226E62E70();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_226E63660();
  v41 = *(v40 - 8);
  v42 = *(v41 + 8);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v97 = &v77 - v46;
  sub_226E62F00();
  v47 = (*(v36 + 88))(v39, v35);
  if (v47 == *MEMORY[0x277CC6FE0])
  {
    (*(v41 + 13))(v45, *MEMORY[0x277D208C8], v40);
    v48 = v41;
  }

  else if (v47 == *MEMORY[0x277CC7018])
  {
    v48 = v41;
    (*(v41 + 13))(v45, *MEMORY[0x277D208B8], v40);
  }

  else
  {
    *v45 = 0;
    (*(v41 + 13))(v45, *MEMORY[0x277D208C0], v40);
    v49 = v39;
    v48 = v41;
    (*(v36 + 8))(v49, v35);
  }

  (*(v48 + 4))(v97, v45, v40);
  v50 = a1;
  sub_226E62F90();
  v52 = v79;
  v51 = v80;
  v53 = (*(v79 + 88))(v30, v80);
  v54 = v78;
  if (v53 == *MEMORY[0x277CC7210])
  {
    v55 = *MEMORY[0x277D208D0];
    v56 = v88;
  }

  else
  {
    v56 = v88;
    if (v53 != *MEMORY[0x277CC7208])
    {
      *v78 = 0;
      v57 = v96;
      (*(v56 + 104))(v54, *MEMORY[0x277D208D8], v96);
      (*(v52 + 8))(v30, v51);
      goto LABEL_12;
    }

    v55 = *MEMORY[0x277D208E0];
  }

  v57 = v96;
  (*(v56 + 104))(v78, v55, v96);
LABEL_12:
  (*(v56 + 32))(v95, v54, v57);
  sub_226E637D0();
  v58 = v81;
  (*(v48 + 2))(v81, v97, v40);
  (*(v48 + 7))(v58, 0, 1, v40);
  v59 = v56;
  sub_226E636C0();
  sub_226E62F10();
  sub_226E62D60();
  v81 = v48;
  v88 = v40;
  v60 = v86;
  v61 = *(v85 + 8);
  v61(v23, v86);
  sub_226E63D20();
  sub_226E636F0();
  v62 = v82;
  sub_226E62F60();
  sub_226E635B0();
  (*(v83 + 8))(v62, v84);
  sub_226E636A0();
  v63 = v87;
  sub_226E62EF0();
  v64 = sub_226E63590();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  sub_226E636B0();
  sub_226E62F10();
  sub_226E62D50();
  v61(v23, v60);
  sub_226E63680();
  sub_226E62F50();
  sub_226E636E0();
  v65 = v89;
  v66 = v90;
  sub_226E63740();
  v67 = [v65 accountID];
  sub_226E639C0();

  sub_226E63730();
  v68 = [v65 institutionName];
  sub_226E639C0();

  sub_226E63710();
  sub_226E4B480(v65);
  sub_226E63700();

  v69 = sub_226E63750();
  (*(*(v69 - 8) + 56))(v66, 0, 1, v69);
  sub_226E63770();
  v70 = sub_226E62ED0();
  sub_226E4A9F8(v70, v71, v92, v91);
  sub_226E637C0();
  v72 = v93;
  v73 = v95;
  v74 = v96;
  (*(v59 + 16))(v93, v95, v96);
  (*(v59 + 56))(v72, 0, 1, v74);
  sub_226E636D0();

  v75 = sub_226E62FC0();
  (*(*(v75 - 8) + 8))(v50, v75);
  (*(v59 + 8))(v73, v74);
  return (*(v81 + 1))(v97, v88);
}

uint64_t sub_226E49DFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_226E63690();
  if (v4)
  {
    v8[0] = v3;
    v8[1] = v4;
    MEMORY[0x28223BE20](v3);
    v7[2] = v8;
    v5 = sub_226E31B70(sub_226E4C190, v7, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_226E49ED8(uint64_t a1, uint64_t a2)
{
  v8 = 2;
  result = static FinHealthFeatureFlag.isEnabled(_:)(&v8);
  if (result)
  {
    if (*(a1 + 16))
    {
      v6 = v2[6];
      v7 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      MEMORY[0x28223BE20](v7);
      return (*(v6 + 16))(a2);
    }
  }

  return result;
}

uint64_t sub_226E49FA4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B78, &unk_226E68D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5];
  sub_226E63760();
  v7 = sub_226E63750();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E15E98(v6, &qword_27D7B6B78, &unk_226E68D20);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v9 = sub_226E63720();
  v11 = v10;
  v12 = (*(v8 + 8))(v6, v7);
  if (!v11)
  {
    goto LABEL_5;
  }

  v16[0] = v9;
  v16[1] = v11;
  MEMORY[0x28223BE20](v12);
  *&v15[-16] = v16;
  v13 = sub_226E31B70(sub_226E4C174, &v15[-32], a2);

  return v13 & 1;
}

uint64_t sub_226E4A144()
{
  v4 = 2;
  result = static FinHealthFeatureFlag.isEnabled(_:)(&v4);
  if (result)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    return (*(v3 + 16))(sub_226E4A1DC, 0, v2, v3);
  }

  return result;
}

BOOL sub_226E4A1E4()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_226E15E98(&v10, &qword_27D7B6B88, &qword_226E68D38);
    goto LABEL_10;
  }

  v2 = sub_226E639B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_226E63DA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v4 = v8;
LABEL_11:
  v5 = sub_226E4BF9C(v4);

  v6 = sub_226E4A340(0xD000000000000012, 0x8000000226E73500, v5);

  return (v6 & 1) == 0;
}

uint64_t sub_226E4A340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_226E640A0();
  sub_226E63A00();
  v7 = sub_226E640C0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_226E4A438()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_226E4A460()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226E4A4A0()
{
  sub_226E63630();
  sub_226E4C11C();
  result = sub_226E63650();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_226E63800();
    return __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return result;
}

uint64_t sub_226E4A538()
{
  sub_226E63630();
  sub_226E4C11C();
  result = sub_226E63640();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_226E637F0();
    return __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return result;
}

uint64_t sub_226E4A5D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226E62E70();
  v14 = *(v4 - 8);
  v5 = (*(v14 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CC6FE0])
  {
    v6 = MEMORY[0x277D208C8];
LABEL_5:
    v7 = *v6;
    v8 = sub_226E63660();
    v9 = *(*(v8 - 8) + 104);

    return v9(a2, v7, v8);
  }

  if (v5 == *MEMORY[0x277CC7018])
  {
    v6 = MEMORY[0x277D208B8];
    goto LABEL_5;
  }

  *a2 = 0;
  v11 = *MEMORY[0x277D208C0];
  v12 = sub_226E63660();
  (*(*(v12 - 8) + 104))(a2, v11, v12);
  v13 = *(v14 + 8);

  return v13(a1, v4);
}

uint64_t sub_226E4A784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226E62EA0();
  v14 = *(v4 - 8);
  v5 = (*(v14 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CC7210])
  {
    v6 = MEMORY[0x277D208D0];
LABEL_5:
    v7 = *v6;
    v8 = sub_226E63670();
    v9 = *(*(v8 - 8) + 104);

    return v9(a2, v7, v8);
  }

  if (v5 == *MEMORY[0x277CC7208])
  {
    v6 = MEMORY[0x277D208E0];
    goto LABEL_5;
  }

  *a2 = 0;
  v11 = *MEMORY[0x277D208D8];
  v12 = sub_226E63670();
  (*(*(v12 - 8) + 104))(a2, v11, v12);
  v13 = *(v14 + 8);

  return v13(a1, v4);
}

void sub_226E4A930(void *a1)
{
  sub_226E63740();
  v1 = [a1 accountID];
  sub_226E639C0();

  sub_226E63730();
  v2 = [a1 institutionName];
  sub_226E639C0();

  sub_226E63710();
  sub_226E4B480(a1);
  sub_226E63700();
}

uint64_t sub_226E4A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a2;
  v93 = a1;
  v102 = a4;
  v88 = sub_226E62D30();
  v87 = *(v88 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226E63320();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v86 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6990, &qword_226E68868);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v85 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6988, &qword_226E68D50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v84 - v20;
  v22 = sub_226E62CC0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_226E62CD0();
  v27 = *(v110 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v110);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B90, &qword_226E68D58);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v98 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v84 - v35;
  v37 = sub_226E637B0();
  v100 = *(v37 - 8);
  v101 = v37;
  v38 = *(v100 + 64);
  MEMORY[0x28223BE20](v37);
  v103 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(v23 + 56);
  v108 = v23 + 56;
  v107(v36, 1, 1, v22);
  v40 = a3;
  v41 = *(a3 + 16);
  v111 = v36;
  if (v41)
  {
    v90 = v26;
    v91 = v21;
    v96 = v15;
    v109 = v22;
    v44 = *(v27 + 16);
    v43 = v27 + 16;
    v42 = v44;
    v45 = (*(v43 + 64) + 32) & ~*(v43 + 64);
    v89 = v40;
    v46 = v40 + v45;
    v47 = *(v43 + 56);
    v48 = (v43 + 72);
    v49 = *MEMORY[0x277CC6BE8];
    v105 = (v43 + 80);
    v106 = (v43 - 8);
    v97 = v23;
    v104 = (v23 + 32);
    v50 = v110;
    v44(v30, v40 + v45, v110);
    while (1)
    {
      if ((*v48)(v30, v50) == v49)
      {
        v51 = v47;
        v52 = v42;
        v53 = v43;
        v54 = v111;
        sub_226E15E98(v111, &qword_27D7B6B90, &qword_226E68D58);
        (*v105)(v30, v50);
        v55 = v109;
        (*v104)(v54, v30, v109);
        v56 = v54;
        v43 = v53;
        v42 = v52;
        v47 = v51;
        v57 = v55;
        v50 = v110;
        v107(v56, 0, 1, v57);
      }

      else
      {
        (*v106)(v30, v50);
      }

      v46 += v47;
      if (!--v41)
      {
        break;
      }

      v42(v30, v46, v50);
    }

    v22 = v109;
    v58 = v96;
    v23 = v97;
    v21 = v91;
    v26 = v90;
    v36 = v111;
  }

  else
  {

    v58 = v15;
  }

  v59 = v100;
  v60 = v103;
  if (!v99)
  {
    v63 = v36;
    v62 = v101;
    goto LABEL_14;
  }

  v61 = v98;
  sub_226E1A598(v36, v98, &qword_27D7B6B90, &qword_226E68D58);
  if ((*(v23 + 48))(v61, 1, v22) != 1)
  {
    (*(v23 + 32))(v26, v61, v22);
    sub_226E637A0();
    v66 = v23;
    sub_226E63780();
    sub_226E62CA0();
    sub_226E62CB0();
    v67 = v92;
    sub_226E1A598(v21, v92, &qword_27D7B6988, &qword_226E68D50);
    v69 = v94;
    v68 = v95;
    if ((*(v94 + 48))(v67, 1, v95) == 1)
    {
      v97 = v66;
      sub_226E15E98(v67, &qword_27D7B6988, &qword_226E68D50);
      v70 = v85;
      sub_226E1A598(v58, v85, &qword_27D7B6990, &qword_226E68868);
      v71 = v87;
      v72 = v88;
      if ((*(v87 + 48))(v70, 1, v88) == 1)
      {
        sub_226E15E98(v58, &qword_27D7B6990, &qword_226E68868);
        sub_226E15E98(v21, &qword_27D7B6988, &qword_226E68D50);
        (*(v97 + 8))(v26, v22);
        sub_226E15E98(v111, &qword_27D7B6B90, &qword_226E68D58);
        v73 = v70;
        v74 = &qword_27D7B6990;
        v75 = &qword_226E68868;
LABEL_21:
        sub_226E15E98(v73, v74, v75);
        v62 = v101;
        v82 = v102;
        (*(v59 + 32))(v102, v60, v101);
        v65 = v82;
        v64 = 0;
        return (*(v59 + 56))(v65, v64, 1, v62);
      }

      v79 = v84;
      (*(v71 + 32))(v84, v70, v72);
      strcpy(v113, "mapsMerchant-");
      HIWORD(v113[3]) = -4864;
      v112 = sub_226E62D20();
      v80 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v80);

      sub_226E63790();
      v81 = v79;
      v60 = v103;
      (*(v71 + 8))(v81, v72);
      sub_226E15E98(v58, &qword_27D7B6990, &qword_226E68868);
      sub_226E15E98(v21, &qword_27D7B6988, &qword_226E68D50);
      (*(v97 + 8))(v26, v22);
    }

    else
    {
      v76 = v67;
      v77 = v86;
      (*(v69 + 32))(v86, v76, v68);
      strcpy(v113, "mapsBrand-");
      HIBYTE(v113[2]) = 0;
      v113[3] = -369098752;
      v96 = v58;
      v112 = sub_226E63310();
      v78 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v78);

      sub_226E63790();
      (*(v69 + 8))(v77, v95);
      sub_226E15E98(v96, &qword_27D7B6990, &qword_226E68868);
      sub_226E15E98(v21, &qword_27D7B6988, &qword_226E68D50);
      (*(v66 + 8))(v26, v22);
    }

    v74 = &qword_27D7B6B90;
    v75 = &qword_226E68D58;
    v73 = v111;
    goto LABEL_21;
  }

  sub_226E15E98(v36, &qword_27D7B6B90, &qword_226E68D58);

  v62 = v101;
  v63 = v61;
LABEL_14:
  sub_226E15E98(v63, &qword_27D7B6B90, &qword_226E68D58);
  v64 = 1;
  v65 = v102;
  return (*(v59 + 56))(v65, v64, 1, v62);
}

void sub_226E4B480(void *a1)
{
  v2 = [a1 dpanSuffix];
  if (v2)
  {
    v3 = v2;
    v4 = sub_226E639C0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v29 = v4;
  v30 = v6;
  v7 = [a1 fpanSuffix];
  if (v7)
  {
    v8 = v7;
    v9 = sub_226E639C0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v31 = v9;
  v32 = v11;
  v12 = [a1 virtualCardSuffix];
  if (v12)
  {
    v13 = v12;
    v14 = sub_226E639C0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = 0;
  v33 = v14;
  v34 = v16;
  v18 = MEMORY[0x277D84F90];
LABEL_11:
  if (v17 <= 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 + 1;
  v21 = 16 * v17 + 40;
  while (1)
  {
    if (v17 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B98, qword_226E68D60);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40);
      sub_226E4C034();
      sub_226E63990();

      return;
    }

    if (v20 == ++v17)
    {
      break;
    }

    v22 = v21 + 16;
    v23 = *&v28[v21];
    v21 += 16;
    if (v23)
    {
      v24 = *&v28[v22 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_226E1FB8C(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_226E1FB8C((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v27 = &v18[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226E4B6D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_226E640A0();
  sub_226E63A00();
  v9 = sub_226E640C0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_226E63FF0() & 1) != 0)
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

    sub_226E4BA88(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_226E4B828(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BA8, &unk_226E68E00);
  result = sub_226E63E20();
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
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
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

uint64_t sub_226E4BA88(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_226E4B828(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_226E4BC08();
      goto LABEL_16;
    }

    sub_226E4BD64(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_226E640A0();
  sub_226E63A00();
  result = sub_226E640C0();
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

      result = sub_226E63FF0();
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
  result = sub_226E64000();
  __break(1u);
  return result;
}

void *sub_226E4BC08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BA8, &unk_226E68E00);
  v2 = *v0;
  v3 = sub_226E63E10();
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

uint64_t sub_226E4BD64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BA8, &unk_226E68E00);
  result = sub_226E63E20();
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
      sub_226E640A0();

      sub_226E63A00();
      result = sub_226E640C0();
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

uint64_t sub_226E4BF9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8D240](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_226E4B6D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_226E4C034()
{
  result = qword_27D7B6BA0;
  if (!qword_27D7B6BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B6AD0, &unk_226E68D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6BA0);
  }

  return result;
}

unint64_t sub_226E4C11C()
{
  result = qword_280CE9FC0;
  if (!qword_280CE9FC0)
  {
    sub_226E63630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CE9FC0);
  }

  return result;
}

uint64_t sub_226E4C1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E68E10;
  v21 = sub_226E639C0();
  v26 = v1;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v2 = sub_226E639C0();
  MEMORY[0x22AA8D010](v2);

  *(v0 + 32) = v21;
  *(v0 + 40) = v26;
  v22 = sub_226E639C0();
  v27 = v3;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  *(v0 + 48) = v22;
  *(v0 + 56) = v27;
  sub_226E63E70();
  v5 = sub_226E639C0();
  v7 = v6;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);
  *(v0 + 64) = v5;
  *(v0 + 72) = v7;
  v23 = sub_226E639C0();
  v28 = v8;
  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);
  *(v0 + 80) = v23;
  *(v0 + 88) = v28;
  v24 = sub_226E639C0();
  v29 = v9;
  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);
  *(v0 + 96) = v24;
  *(v0 + 104) = v29;
  sub_226E63E70();
  v10 = sub_226E639C0();
  v12 = v11;

  MEMORY[0x22AA8D010](0xD000000000000024, 0x8000000226E735A0);
  *(v0 + 112) = v10;
  *(v0 + 120) = v12;
  sub_226E63E70();
  v13 = sub_226E639C0();
  v15 = v14;

  MEMORY[0x22AA8D010](0xD000000000000022, 0x8000000226E735D0);
  *(v0 + 128) = v13;
  *(v0 + 136) = v15;
  v25 = sub_226E639C0();
  v30 = v16;
  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);
  *(v0 + 144) = v25;
  *(v0 + 152) = v30;
  sub_226E63E70();
  v17 = sub_226E639C0();
  v19 = v18;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);
  *(v0 + 160) = v17;
  *(v0 + 168) = v19;
  return v0;
}

uint64_t IncomeInsights.IncomeInsight.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IncomeInsights.IncomeInsight.id.setter(uint64_t a1)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IncomeInsights.IncomeInsight.transactionIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for IncomeInsights.IncomeInsight() + 20));
}

uint64_t type metadata accessor for IncomeInsights.IncomeInsight()
{
  result = qword_280CEA390;
  if (!qword_280CEA390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IncomeInsights.IncomeInsight.transactionIds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IncomeInsights.IncomeInsight() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_226E4C6D8(uint64_t a1)
{
  v2 = sub_226E4C958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226E4C714(uint64_t a1)
{
  v2 = sub_226E4C958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncomeInsights.IncomeInsight.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BC0, &qword_226E68E20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E4C958();
  sub_226E640E0();
  v14 = 0;
  sub_226E635C0();
  sub_226E23108(&qword_27D7B68C8);
  sub_226E63FB0();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for IncomeInsights.IncomeInsight() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
    sub_226E1B038(&qword_27D7B68D8, &qword_27D7B68C8);
    sub_226E63FB0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_226E4C958()
{
  result = qword_27D7B7480[0];
  if (!qword_27D7B7480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7480);
  }

  return result;
}

uint64_t IncomeInsights.IncomeInsight.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_226E635C0();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BC8, &unk_226E68E28);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for IncomeInsights.IncomeInsight();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E4C958();
  sub_226E640D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_226E23108(&qword_27D7B68E8);
  v19 = v30;
  v20 = v28;
  sub_226E63FA0();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
  v32 = 1;
  sub_226E1B038(&qword_27D7B68F0, &qword_27D7B68E8);
  sub_226E63FA0();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_226E4CD44(v22, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_226E4CDA8(v22);
}

uint64_t sub_226E4CD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomeInsights.IncomeInsight();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E4CDA8(uint64_t a1)
{
  v2 = type metadata accessor for IncomeInsights.IncomeInsight();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E4CE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226E635C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for IncomeInsights.IncomeInsight();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_226E4CEB0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4CF4C, 0, 0);
}

uint64_t sub_226E4CF4C()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x80))();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v1 + 16) <= 1uLL)
  {
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_226E63B80();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v4;
  v8 = v4;
  sub_226E4E048(0, 0, v3, &unk_226E68E40, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226E4D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_226E4D0D8, 0, 0);
}

uint64_t sub_226E4D0D8()
{
  v1 = *(v0 + 32);
  v10 = *(v0 + 16);
  v2 = sub_226E62C40();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_226E62C30();
  *(v0 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v10;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_226E4D1F8;

  return MEMORY[0x282200740](v8);
}

uint64_t sub_226E4D1F8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_226E4D378;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_226E4D314;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E4D314()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226E4D378()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_226E4D3E4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E4D0B4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_226E4D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  v7 = *(type metadata accessor for IncomeInsights.IncomeInsight() - 8);
  v6[22] = v7;
  v6[23] = *(v7 + 64);
  v6[24] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6960, &qword_226E68810);
  v6[29] = v9;
  v10 = *(v9 - 8);
  v6[30] = v10;
  v11 = *(v10 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4D61C, 0, 0);
}

uint64_t sub_226E4D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 152);
  if (v6 < 0)
  {
    goto LABEL_23;
  }

  v7 = *(v5 + 184);
  if (!v6)
  {
    v14 = 0;
    v11 = v7 + 7;
LABEL_18:
    *(v5 + 256) = v11;
    v33 = *(v5 + 248);
    *(v5 + 264) = **(v5 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    sub_226E63BD0();
    *(v5 + 272) = v14;
    v34 = *(MEMORY[0x277D85828] + 4);
    v35 = swift_task_alloc();
    *(v5 + 280) = v35;
    *v35 = v5;
    v35[1] = sub_226E4DA20;
    v36 = *(v5 + 248);
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = v5 + 128;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  v8 = 0;
  v9 = 0;
  v39 = *(v5 + 176);
  v10 = *(*(v5 + 144) + 16);
  v11 = v7 + 7;
  v40 = v7 + 7;
  v38 = v10;
  while (1)
  {
    v14 = v10;
    if (v9 != v10)
    {
      break;
    }

LABEL_6:
    ++v8;
    v9 = v14;
    if (v8 == v6)
    {
      goto LABEL_18;
    }
  }

  if (v9 < v10)
  {
    if (__OFADD__(v9, 1))
    {
      goto LABEL_22;
    }

    v44 = v9 + 1;
    v15 = *(v5 + 224);
    v43 = *(v5 + 216);
    v16 = *(v5 + 192);
    v17 = *(v5 + 160);
    v41 = v15;
    v42 = *(v5 + 168);
    v18 = *(v39 + 80);
    v19 = *(v5 + 144) + ((v18 + 32) & ~v18) + *(v39 + 72) * v9;
    v20 = sub_226E63B80();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_226E4CD44(v19, v16);
    v22 = (v18 + 40) & ~v18;
    v23 = swift_allocObject();
    v23[2] = 0;
    v24 = v23 + 2;
    v23[3] = 0;
    v23[4] = v17;
    sub_226E516FC(v16, v23 + v22);
    *(v23 + ((v22 + v11) & 0xFFFFFFFFFFFFFFF8)) = v42;
    sub_226E2324C(v41, v43);
    v25 = (*(v21 + 48))(v43, 1, v20);
    v26 = v17;

    v27 = *(v5 + 216);
    if (v25 == 1)
    {
      sub_226E15E98(*(v5 + 216), &qword_27D7B6870, &qword_226E683B0);
      if (*v24)
      {
LABEL_12:
        v28 = v23[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_226E63B40();
        v31 = v30;
        swift_unknownObjectRelease();
LABEL_15:
        v32 = **(v5 + 136);

        if (v31 | v29)
        {
          v12 = v5 + 16;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = v29;
          *(v5 + 40) = v31;
        }

        else
        {
          v12 = 0;
        }

        v11 = v40;
        v13 = *(v5 + 224);
        *(v5 + 80) = 1;
        *(v5 + 88) = v12;
        *(v5 + 96) = v32;
        swift_task_create();

        a1 = sub_226E15E98(v13, &qword_27D7B6870, &qword_226E683B0);
        v6 = *(v5 + 152);
        v14 = v44;
        v10 = v38;
        goto LABEL_6;
      }
    }

    else
    {
      sub_226E63B70();
      (*(v21 + 8))(v27, v20);
      if (*v24)
      {
        goto LABEL_12;
      }
    }

    v29 = 0;
    v31 = 0;
    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
}

uint64_t sub_226E4DA20()
{
  v2 = *(*v1 + 280);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_226E1C33C;
  }

  else
  {
    v3 = sub_226E4DB30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E4DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(v5 + 288) & 1) == 0)
  {
    v13 = *(v5 + 272);
    v14 = *(v5 + 144);
    v15 = *(v14 + 16);
    if (v13 != v15)
    {
      if (v13 >= v15)
      {
        __break(1u);
        return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
      }

      v16 = *(v5 + 256);
      v17 = *(v5 + 208);
      v44 = *(v5 + 200);
      v18 = *(v5 + 192);
      v19 = *(v5 + 176);
      v42 = v17;
      v43 = *(v5 + 168);
      v20 = *(v5 + 160);
      v21 = *(v19 + 80);
      v22 = v14 + ((v21 + 32) & ~v21) + *(v19 + 72) * v13;
      v23 = sub_226E63B80();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v17, 1, 1, v23);
      sub_226E4CD44(v22, v18);
      v25 = (v21 + 40) & ~v21;
      v26 = swift_allocObject();
      v26[2] = 0;
      v27 = v26 + 2;
      v26[3] = 0;
      v26[4] = v20;
      sub_226E516FC(v18, v26 + v25);
      *(v26 + ((v25 + v16) & 0xFFFFFFFFFFFFFFF8)) = v43;
      sub_226E2324C(v42, v44);
      LODWORD(v16) = (*(v24 + 48))(v44, 1, v23);
      v28 = v20;

      v29 = *(v5 + 200);
      if (v16 == 1)
      {
        sub_226E15E98(*(v5 + 200), &qword_27D7B6870, &qword_226E683B0);
      }

      else
      {
        sub_226E63B70();
        (*(v24 + 8))(v29, v23);
      }

      v30 = v13 + 1;
      if (*v27)
      {
        v31 = v26[3];
        v32 = *v27;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = sub_226E63B40();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      if (v35 | v33)
      {
        v36 = v5 + 48;
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
        *(v5 + 64) = v33;
        *(v5 + 72) = v35;
      }

      else
      {
        v36 = 0;
      }

      v37 = *(v5 + 264);
      v38 = *(v5 + 208);
      *(v5 + 104) = 1;
      *(v5 + 112) = v36;
      *(v5 + 120) = v37;
      swift_task_create();

      sub_226E15E98(v38, &qword_27D7B6870, &qword_226E683B0);
      *(v5 + 272) = v30;
    }

    v39 = *(MEMORY[0x277D85828] + 4);
    v40 = swift_task_alloc();
    *(v5 + 280) = v40;
    *v40 = v5;
    v40[1] = sub_226E4DA20;
    v41 = *(v5 + 248);
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = v5 + 128;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  v6 = *(v5 + 224);
  v8 = *(v5 + 208);
  v7 = *(v5 + 216);
  v10 = *(v5 + 192);
  v9 = *(v5 + 200);
  (*(*(v5 + 240) + 8))(*(v5 + 248), *(v5 + 232));

  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_226E4DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E234EC;

  return sub_226E52104(a5, a6);
}

uint64_t sub_226E4DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E1C5F8;

  return sub_226E52104(a5, a6);
}

uint64_t sub_226E4E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_226E2324C(a3, v24 - v10);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E15E98(v11, &qword_27D7B6870, &qword_226E683B0);
  }

  else
  {
    sub_226E63B70();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_226E63B40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_226E639E0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_226E4E2E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226E638E0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_226E635C0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4E424, 0, 0);
}

uint64_t sub_226E4E424()
{
  v1 = v0[2];
  v2 = sub_226E62C40();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[12] = sub_226E62C30();
  v5 = *(v1 + 16);
  v0[13] = v5;
  if (v5)
  {
    v6 = v0[2];
    v0[14] = @"Income-%@";
    v0[15] = 0;
    v7 = v0[11];
    v9 = *(v6 + 32);
    v8 = *(v6 + 40);
    sub_226E639C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_226E685F0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_226E4EFB0();
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;

    v11 = sub_226E639D0();
    v13 = v12;

    v14 = sub_226E53234();
    asUUID(rawString:lossy:)(v11, v13, v14, v7);

    v15 = *(MEMORY[0x277CC6758] + 4);
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_226E4E628;
    v17 = v0[11];
    v18 = v0[12];

    return MEMORY[0x282116E50](v17);
  }

  else
  {
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    v23 = v0[5];
    v22 = v0[6];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_226E4E628()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226E4EB28;
  }

  else
  {
    v3 = sub_226E4E73C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E4E73C()
{
  v55 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = sub_226E56FC8();
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_226E638C0();
  v10 = sub_226E63C80();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[7];
  v15 = v0[8];
  v16 = v0[6];
  v18 = v0[3];
  v17 = v0[4];
  if (v11)
  {
    v53 = v0[6];
    v19 = swift_slowAlloc();
    v52 = v18;
    v20 = swift_slowAlloc();
    v54 = v20;
    *v19 = 136315138;
    sub_226E23108(&qword_27D7B6920);
    v50 = v10;
    v21 = sub_226E63FE0();
    v51 = v13;
    v23 = v22;
    v24 = *(v15 + 8);
    v24(v12, v14);
    v25 = sub_226E1FC98(v21, v23, &v54);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_226DD4000, v9, v50, "Income Insight Deleted: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x22AA8E1B0](v20, -1, -1);
    MEMORY[0x22AA8E1B0](v19, -1, -1);

    (*(v17 + 8))(v53, v52);
    v24(v51, v14);
  }

  else
  {

    v26 = *(v15 + 8);
    v26(v12, v14);
    (*(v17 + 8))(v16, v18);
    v26(v13, v14);
  }

  v27 = v0[15] + 1;
  if (v27 == v0[13])
  {
    v29 = v0[11];
    v28 = v0[12];
    v31 = v0[9];
    v30 = v0[10];
    v33 = v0[5];
    v32 = v0[6];

    v34 = v0[1];

    return v34();
  }

  else
  {
    v0[15] = v27;
    v36 = v0[14];
    v37 = v0[11];
    v38 = v0[2] + 16 * v27;
    v40 = *(v38 + 32);
    v39 = *(v38 + 40);
    sub_226E639C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_226E685F0;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_226E4EFB0();
    *(v41 + 32) = v40;
    *(v41 + 40) = v39;

    v42 = sub_226E639D0();
    v44 = v43;

    v45 = sub_226E53234();
    asUUID(rawString:lossy:)(v42, v44, v45, v37);

    v46 = *(MEMORY[0x277CC6758] + 4);
    v47 = swift_task_alloc();
    v0[16] = v47;
    *v47 = v0;
    v47[1] = sub_226E4E628;
    v48 = v0[11];
    v49 = v0[12];

    return MEMORY[0x282116E50](v48);
  }
}

uint64_t sub_226E4EB28()
{
  v63 = v0;
  v1 = v0[17];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = sub_226E56FC8();
  (*(v7 + 16))(v6, v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  v10 = v1;
  v11 = sub_226E638C0();
  LOBYTE(v2) = sub_226E63CA0();

  v61 = v2;
  v12 = os_log_type_enabled(v11, v2);
  v13 = v0[17];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[3];
  if (v12)
  {
    v60 = v0[3];
    v21 = swift_slowAlloc();
    v59 = v14;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v62 = v58;
    *v21 = 138412546;
    v23 = v13;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    *(v21 + 12) = 2080;
    sub_226E23108(&qword_27D7B6920);
    v25 = sub_226E63FE0();
    v26 = v17;
    v56 = v17;
    v57 = v19;
    v27 = v25;
    v29 = v28;
    v30 = *(v15 + 8);
    v30(v16, v26);
    v31 = sub_226E1FC98(v27, v29, &v62);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_226DD4000, v11, v61, "Error: %@ when deleting income insight: %s", v21, 0x16u);
    sub_226E15E98(v22, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x22AA8E1B0](v58, -1, -1);
    MEMORY[0x22AA8E1B0](v21, -1, -1);

    (*(v18 + 8))(v57, v60);
    v30(v59, v56);
  }

  else
  {

    v32 = *(v15 + 8);
    v32(v16, v17);
    (*(v18 + 8))(v19, v20);
    v32(v14, v17);
  }

  v33 = v0[15] + 1;
  if (v33 == v0[13])
  {
    v35 = v0[11];
    v34 = v0[12];
    v37 = v0[9];
    v36 = v0[10];
    v39 = v0[5];
    v38 = v0[6];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v0[15] = v33;
    v42 = v0[14];
    v43 = v0[11];
    v44 = v0[2] + 16 * v33;
    v46 = *(v44 + 32);
    v45 = *(v44 + 40);
    sub_226E639C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_226E685F0;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = sub_226E4EFB0();
    *(v47 + 32) = v46;
    *(v47 + 40) = v45;

    v48 = sub_226E639D0();
    v50 = v49;

    v51 = sub_226E53234();
    asUUID(rawString:lossy:)(v48, v50, v51, v43);

    v52 = *(MEMORY[0x277CC6758] + 4);
    v53 = swift_task_alloc();
    v0[16] = v53;
    *v53 = v0;
    v53[1] = sub_226E4E628;
    v54 = v0[11];
    v55 = v0[12];

    return MEMORY[0x282116E50](v54);
  }
}

unint64_t sub_226E4EFB0()
{
  result = qword_27D7B6BD8;
  if (!qword_27D7B6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6BD8);
  }

  return result;
}

uint64_t sub_226E4F004()
{
  v1 = sub_226E638E0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4F0CC, 0, 0);
}

uint64_t sub_226E4F0CC()
{
  v1 = sub_226E62C40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_226E62C30();
  v4 = *(MEMORY[0x277CC6780] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_226E4F180;

  return MEMORY[0x282116E80]();
}

uint64_t sub_226E4F180()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_226E4F3C4;
  }

  else
  {
    v3 = sub_226E4F294;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E4F294()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_226E56FC8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_226E638C0();
  v6 = sub_226E63C80();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226DD4000, v5, v6, "All Income Insights Deleted", v9, 2u);
    MEMORY[0x22AA8E1B0](v9, -1, -1);
  }

  v10 = v0[4];
  (*(v0[3] + 8))(v0[5], v0[2]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_226E4F3C4()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_226E56FC8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_226E638C0();
  v8 = sub_226E63CA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[6];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_226DD4000, v7, v8, "Error: %@ when deleting income insights", v12, 0xCu);
    sub_226E15E98(v13, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v13, -1, -1);
    MEMORY[0x22AA8E1B0](v12, -1, -1);
  }

  else
  {
    v16 = v0[6];
  }

  v17 = v0[5];
  (*(v0[3] + 8))(v0[4], v0[2]);

  v18 = v0[1];

  return v18();
}

void sub_226E4F58C()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for IncomeInsights.IncomeInsight();
  v5 = *(v91 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v91);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v93 = v10 + 16;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84FA0];
  v94 = v11 + 16;
  v12 = [objc_opt_self() retrievePersistedModelVersion_];
  if (!v12)
  {
    goto LABEL_8;
  }

  v87 = v8;
  v96 = v11;
  v13 = v12;
  v14 = sub_226E639C0();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  v90 = v14;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

LABEL_8:
    v36 = sub_226E56FC8();
    (*(v1 + 16))(v4, v36, v0);
    v37 = sub_226E638C0();
    v38 = sub_226E63CA0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_226DD4000, v37, v38, "No model version found for income classification. Skipping income insights retrieval.", v39, 2u);
      MEMORY[0x22AA8E1B0](v39, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    goto LABEL_24;
  }

  v85 = v5;
  v88 = (v9 + 16);
  v95 = v10;
  v89 = v9;
  sub_226E639C0();
  v18 = objc_allocWithZone(FHDatabaseEntity);
  v19 = sub_226E639B0();

  v20 = [v18 initWithEntity_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v21 = swift_allocObject();
  v86 = xmmword_226E685F0;
  *(v21 + 16) = xmmword_226E685F0;
  aBlock = 0;
  v98 = 0xE000000000000000;
  sub_226E63E70();
  v22 = sub_226E639C0();
  v24 = v23;

  aBlock = v22;
  v98 = v24;
  MEMORY[0x22AA8D010](0xD000000000000012, 0x8000000226E733A0);
  v25 = v98;
  *(v21 + 32) = aBlock;
  *(v21 + 40) = v25;
  v26 = objc_opt_self();
  v101 = sub_226E50CC8;
  v102 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_226E23500;
  v100 = &block_descriptor_38;
  v27 = _Block_copy(&aBlock);
  v28 = @"AND";
  v29 = [v26 initWithBuilder:v27 logicalOperator:@"AND"];
  _Block_release(v27);
  v30 = swift_allocObject();
  *(v30 + 16) = MEMORY[0x277D84FA0];
  if (v20)
  {
    v31 = v20;
    v32 = @"AND";
    v84 = @"AND";
    v33 = v32;
    v34 = sub_226E63AE0();

    v101 = sub_226E51C90;
    v102 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_226E1EB4C;
    v100 = &block_descriptor_44;
    v35 = _Block_copy(&aBlock);

    [v31 queryDataWithBlock:v29 logicalOperator:v33 selectFields:v34 usingBlock:v35];

    _Block_release(v35);
    v28 = v84;

    v29 = v34;
  }

  else
  {
  }

  swift_beginAccess();
  v40 = *(v30 + 16);

  v41 = objc_opt_self();
  v42 = swift_allocObject();
  *(v42 + 16) = v90;
  *(v42 + 24) = v16;
  v101 = sub_226E514BC;
  v102 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_226E23500;
  v100 = &block_descriptor_1;
  v43 = _Block_copy(&aBlock);

  v44 = [v41 initWithBuilder:v43 logicalOperator:v28];
  _Block_release(v43);
  if (v44)
  {

    v45 = objc_opt_self();
    v101 = sub_226E50104;
    v102 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_226E23500;
    v100 = &block_descriptor_18;
    v46 = _Block_copy(&aBlock);
    v47 = @"fh_grouping";
    v48 = [v45 initWithBuilder_];
    _Block_release(v46);
    v49 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity:v47 joinClause:v48];

    if (v49)
    {
      v50 = v92;
      v51 = *&v92[OBJC_IVAR____TtC13FinHealthCore14IncomeInsights_fields];
      v84 = v49;
      v83 = v44;
      v52 = v28;
      v53 = sub_226E63AE0();
      v54 = *&v50[OBJC_IVAR____TtC13FinHealthCore14IncomeInsights_orderBy];
      sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
      v55 = sub_226E63AE0();
      v90 = v44;
      v56 = v55;
      v57 = swift_allocObject();
      v58 = v95;
      v59 = v49;
      v60 = v96;
      v57[2] = v95;
      v57[3] = v60;
      v57[4] = v89;
      v57[5] = v50;
      v57[6] = v40;
      v101 = sub_226E51760;
      v102 = v57;
      aBlock = MEMORY[0x277D85DD0];
      v98 = 1107296256;
      v99 = sub_226E1EB4C;
      v100 = &block_descriptor_24;
      v61 = _Block_copy(&aBlock);

      v49 = v59;

      v62 = v50;

      v63 = v84;
      v64 = v83;
      [(__CFString *)v84 queryDataWithBlock:v83 logicalOperator:v52 limit:-1 selectFields:v53 orderby:v56 usingBlock:v61];
      _Block_release(v61);

      v44 = v90;
    }

    else
    {

      v58 = v95;
    }

    v65 = v88;
    v66 = v94;
    swift_beginAccess();
    v67 = *(v58 + 24);
    if (v67)
    {
      v68 = *(v95 + 16);
      swift_beginAccess();
      if (*(*v66 + 16))
      {
        v69 = MEMORY[0x277D837D0];
        sub_226E639C0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
        v70 = swift_allocObject();
        *(v70 + 16) = v86;
        *(v70 + 56) = v69;
        *(v70 + 64) = sub_226E4EFB0();
        *(v70 + 32) = v68;
        *(v70 + 40) = v67;

        v71 = sub_226E639D0();
        v73 = v72;
        v65 = v88;

        v74 = sub_226E53234();
        v75 = v87;
        asUUID(rawString:lossy:)(v71, v73, v74, v87);

        *(v75 + *(v91 + 20)) = *v66;
        swift_beginAccess();
        v76 = *v65;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v65 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = sub_226E512E4(0, v76[2] + 1, 1, v76);
          *v65 = v76;
        }

        v78 = v85;
        v80 = v76[2];
        v79 = v76[3];
        if (v80 >= v79 >> 1)
        {
          v76 = sub_226E512E4(v79 > 1, v80 + 1, 1, v76);
        }

        v76[2] = v80 + 1;
        sub_226E516FC(v87, v76 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v80);
        *v65 = v76;
        swift_endAccess();
      }
    }

    swift_beginAccess();
    v81 = *v65;

LABEL_24:

    return;
  }

  __break(1u);
}

void sub_226E50104(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 addKeyPairsWithJoinType:@"inner" leftEntity:@"fh_grouping" rightEntity:@"transactions" joinKey:@"t_identifier"];
    [v1 addKeyPairsWithJoinType:@"inner" leftEntity:@"fh_grouping" leftJoinKey:@"group_id" rightEntity:@"features_predicted_realtime" rightJoinKey:@"identifier"];
  }
}

uint64_t sub_226E501DC(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v109 = a5;
  v106 = a4;
  v9 = sub_226E638E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v107 = v85 - v16;
  v17 = sub_226E635C0();
  v108 = *(v17 - 8);
  v18 = *(v108 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v103 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v105 = v85 - v22;
  MEMORY[0x28223BE20](v21);
  v104 = v85 - v23;
  v24 = type metadata accessor for IncomeInsights.IncomeInsight();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = *(a1 + 2);
    if (v29)
    {
      v86 = v26;
      v88 = v17;
      sub_226E2233C((a1 + 32), v112);
      v30 = swift_dynamicCast();
      v31 = v110;
      if (!v30)
      {
        v31 = 0.0;
      }

      v102 = v31;
      if (v30)
      {
        v32 = v111;
      }

      else
      {
        v32 = 0;
      }

      if (v29 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_226E2233C((a1 + 64), v112);
        v33 = swift_dynamicCast();
        if (v33)
        {
          v9 = *&v110;
        }

        else
        {
          v9 = 0;
        }

        if (v33)
        {
          v13 = v111;
        }

        else
        {
          v13 = 0;
        }

        if (v29 >= 3)
        {
          sub_226E2233C((a1 + 96), v112);
          v34 = swift_dynamicCast();
          if (v34)
          {
            v35 = *&v110;
          }

          else
          {
            v35 = 0;
          }

          if (v34)
          {
            v36 = v111;
          }

          else
          {
            v36 = 0;
          }

          v100 = v36;
          if (v29 != 3)
          {
            v92 = v35;
            sub_226E2233C((a1 + 128), v112);
            v37 = swift_dynamicCast();
            if (v29 >= 5)
            {
              v98 = v37;
              v5 = v110;
              sub_226E2233C((a1 + 160), v112);
              v38 = swift_dynamicCast();
              v39 = v110;
              if (!v38)
              {
                v39 = 0.0;
              }

              v91 = v39;
              if (v38)
              {
                v40 = v111;
              }

              else
              {
                v40 = 0;
              }

              v99 = v40;
              if (v29 != 5)
              {
                sub_226E2233C((a1 + 192), v112);
                v41 = swift_dynamicCast();
                if (v29 >= 7)
                {
                  v97 = v41;
                  v96 = *&v110;
                  sub_226E2233C((a1 + 224), v112);
                  v42 = swift_dynamicCast();
                  if (v29 != 7)
                  {
                    v95 = v42;
                    v87 = v9;
                    v94 = *&v110;
                    sub_226E2233C((a1 + 256), v112);
                    v43 = swift_dynamicCast();
                    v44 = v110;
                    if (v43)
                    {
                      v9 = v111;
                    }

                    else
                    {
                      v44 = 0.0;
                      v9 = 0;
                    }

                    if (v29 >= 9)
                    {
                      v90 = v44;
                      v93 = v13;
                      sub_226E2233C((a1 + 288), v112);
                      v45 = swift_dynamicCast();
                      v46 = v110;
                      if (!v45)
                      {
                        v46 = 0.0;
                      }

                      v89 = v46;
                      if (v45)
                      {
                        a1 = v111;
                      }

                      else
                      {
                        a1 = 0;
                      }

                      swift_beginAccess();
                      v47 = *(a2 + 24);
                      v101 = v32;
                      if (!v47 || (v48 = *(a2 + 16), v32) && (v48 == *&v102 && v47 == v32 || (v49 = *(a2 + 16), (sub_226E63FF0() & 1) != 0)) || (swift_beginAccess(), !*(*(a3 + 16) + 16)))
                      {
LABEL_51:
                        if (v95)
                        {
                          v61 = v94;
                        }

                        else
                        {
                          v61 = 0;
                        }

                        if (v100)
                        {
                          v62 = sub_226E4A340(v92, v100, v109);

                          v63 = v62 & 1;
                        }

                        else
                        {
                          v63 = -1;
                        }

                        v69 = v99;
                        if (v97)
                        {
                          v70 = v96;
                        }

                        else
                        {
                          v70 = 16;
                        }

                        if (!v98)
                        {
                          v5 = 0.0;
                        }

                        if (v9)
                        {
                          v71 = sub_226E639B0();

                          if (a1)
                          {
                            goto LABEL_67;
                          }
                        }

                        else
                        {
                          v71 = 0;
                          if (a1)
                          {
LABEL_67:
                            v72 = sub_226E639B0();

                            if (v69)
                            {
LABEL_68:
                              v73 = sub_226E639B0();

LABEL_72:
                              v74 = checkIfIncomeCandidate(v61, v63, v71, v72, v70, v73, v5);

                              if (v74)
                              {
                                v75 = v101;
                                if (v93)
                                {
                                  v76 = v107;
                                  sub_226E635A0();

                                  v77 = v108;
                                  v78 = v88;
                                  if ((*(v108 + 48))(v76, 1, v88) == 1)
                                  {
                                    sub_226E15E98(v76, &qword_27D7B6940, &qword_226E68A90);
                                  }

                                  else
                                  {
                                    v79 = v104;
                                    (*(v77 + 32))(v104, v76, v78);
                                    v80 = v103;
                                    (*(v77 + 16))(v103, v79, v78);
                                    swift_beginAccess();
                                    v81 = v105;
                                    sub_226E2035C(v105, v80);
                                    swift_endAccess();
                                    v82 = *(v77 + 8);
                                    v82(v81, v78);
                                    v75 = v101;
                                    v82(v79, v78);
                                  }
                                }
                              }

                              else
                              {

                                v75 = v101;
                              }

                              swift_beginAccess();
                              v83 = *(a2 + 24);
                              *(a2 + 16) = v102;
                              *(a2 + 24) = v75;
                            }

LABEL_71:
                            v73 = 0;
                            goto LABEL_72;
                          }
                        }

                        v72 = 0;
                        if (v69)
                        {
                          goto LABEL_68;
                        }

                        goto LABEL_71;
                      }

                      v85[1] = sub_226E639C0();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
                      v50 = a3;
                      v51 = swift_allocObject();
                      *(v51 + 16) = xmmword_226E685F0;
                      *(v51 + 56) = MEMORY[0x277D837D0];
                      *(v51 + 64) = sub_226E4EFB0();
                      *(v51 + 32) = v48;
                      *(v51 + 40) = v47;

                      a3 = v50;
                      v52 = sub_226E639D0();
                      v54 = v53;

                      v55 = sub_226E53234();
                      asUUID(rawString:lossy:)(v52, v54, v55, v28);

                      swift_beginAccess();
                      *&v28[*(v24 + 20)] = *(a3 + 16);
                      v13 = v106;
                      swift_beginAccess();
                      v29 = *(v13 + 2);

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *(v13 + 2) = v29;
                      if (isUniquelyReferenced_nonNull_native)
                      {
LABEL_48:
                        v57 = v86;
                        v59 = v29[2];
                        v58 = v29[3];
                        if (v59 >= v58 >> 1)
                        {
                          v84 = sub_226E512E4(v58 > 1, v59 + 1, 1, v29);
                          v57 = v86;
                          v29 = v84;
                        }

                        v29[2] = v59 + 1;
                        sub_226E516FC(v28, v29 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v59);
                        *(v13 + 2) = v29;
                        swift_endAccess();
                        swift_beginAccess();
                        v60 = *(a3 + 16);
                        *(a3 + 16) = MEMORY[0x277D84FA0];

                        goto LABEL_51;
                      }

LABEL_87:
                      v29 = sub_226E512E4(0, v29[2] + 1, 1, v29);
                      *(v13 + 2) = v29;
                      goto LABEL_48;
                    }

LABEL_86:
                    __break(1u);
                    goto LABEL_87;
                  }

LABEL_85:
                  __break(1u);
                  goto LABEL_86;
                }

LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_81;
    }
  }

  v64 = sub_226E56FC8();
  (*(v10 + 16))(v13, v64, v9);
  v65 = sub_226E638C0();
  v66 = sub_226E63CA0();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_226DD4000, v65, v66, "Income insight query returned invalid response", v67, 2u);
    MEMORY[0x22AA8E1B0](v67, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

void sub_226E50CC8(void *a1)
{
  if (a1)
  {
    v2 = @"==";
    sub_226E63E70();
    sub_226E639C0();

    MEMORY[0x22AA8D010](0xD000000000000011, 0x8000000226E73660);
    v3 = sub_226E639B0();

    [a1 addIntegerClause:v2 fieldName:v3 expression:1];
  }
}

id IncomeInsights.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void IncomeInsights.init()()
{
  v1 = v0;
  v35 = OBJC_IVAR____TtC13FinHealthCore14IncomeInsights_fields;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226E68E10;
  v37 = sub_226E639C0();
  v38 = v3;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  v5 = v38;
  *(v2 + 32) = v37;
  *(v2 + 40) = v5;
  v37 = sub_226E639C0();
  v38 = v6;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v7 = sub_226E639C0();
  MEMORY[0x22AA8D010](v7);

  v8 = v38;
  *(v2 + 48) = v37;
  *(v2 + 56) = v8;
  sub_226E63E70();
  v9 = sub_226E639C0();
  v11 = v10;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);
  *(v2 + 64) = v9;
  *(v2 + 72) = v11;
  v37 = sub_226E639C0();
  v38 = v12;
  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);
  v13 = v38;
  *(v2 + 80) = v37;
  *(v2 + 88) = v13;
  v37 = sub_226E639C0();
  v38 = v14;
  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);
  v15 = v38;
  *(v2 + 96) = v37;
  *(v2 + 104) = v15;
  sub_226E63E70();
  v16 = sub_226E639C0();
  v18 = v17;

  MEMORY[0x22AA8D010](0xD000000000000024, 0x8000000226E735A0);
  *(v2 + 112) = v16;
  *(v2 + 120) = v18;
  sub_226E63E70();
  v19 = sub_226E639C0();
  v21 = v20;

  MEMORY[0x22AA8D010](0xD000000000000022, 0x8000000226E735D0);
  *(v2 + 128) = v19;
  *(v2 + 136) = v21;
  v37 = sub_226E639C0();
  v38 = v22;
  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);
  v23 = v38;
  *(v2 + 144) = v37;
  *(v2 + 152) = v23;
  sub_226E63E70();
  v24 = sub_226E639C0();
  v26 = v25;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);
  *(v2 + 160) = v24;
  *(v2 + 168) = v26;
  *&v0[v35] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_226E685D0;
  v37 = sub_226E639C0();
  v38 = v28;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v29 = sub_226E639C0();
  MEMORY[0x22AA8D010](v29);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v30 = sub_226E63CF0();
  v31 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v32 = sub_226E639B0();

  v33 = [v31 initWithLabelAndRank:v32 featureRank:v30];

  if (v33)
  {
    v34 = OBJC_IVAR____TtC13FinHealthCore14IncomeInsights_orderBy;
    *(v27 + 32) = v33;
    *&v1[v34] = v27;
    v36.receiver = v1;
    v36.super_class = type metadata accessor for IncomeInsights();
    objc_msgSendSuper2(&v36, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id IncomeInsights.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncomeInsights();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_226E512E4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BE0, &qword_226E69030);
  v10 = *(type metadata accessor for IncomeInsights.IncomeInsight() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IncomeInsights.IncomeInsight() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_226E514BC(void *a1)
{
  if (a1)
  {
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    sub_226E639C0();
    v12 = a1;
    v5 = @"==";
    MEMORY[0x22AA8D010](0x657275746165662ELL, 0xED0000656D616E5FLL);
    v6 = sub_226E639B0();

    [v12 addStringClause:v5 fieldName:v6 expression:@"GhentClassificationModel"];

    sub_226E639C0();
    v7 = v5;
    MEMORY[0x22AA8D010](0x6E6F69737265762ELL, 0xE800000000000000);
    v8 = sub_226E639B0();

    v9 = sub_226E639B0();
    [v12 addStringClause:v7 fieldName:v8 expression:v9];

    v10 = @">";
    sub_226E63E70();
    sub_226E639C0();

    MEMORY[0x22AA8D010](0xD000000000000010, 0x8000000226E73640);
    v11 = sub_226E639B0();

    [v12 addDoubleClause:v10 fieldName:v11 expression:0.8];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226E516FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomeInsights.IncomeInsight();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of IncomeInsights.save()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226E17C50;

  return v6();
}

uint64_t dispatch thunk of IncomeInsights.delete(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E1A614;

  return v8(a1);
}

uint64_t dispatch thunk of IncomeInsights.deleteAll()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226E1A614;

  return v6();
}

unint64_t sub_226E51B8C()
{
  result = qword_27D7B7690[0];
  if (!qword_27D7B7690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7690);
  }

  return result;
}

unint64_t sub_226E51BE4()
{
  result = qword_27D7B77A0;
  if (!qword_27D7B77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B77A0);
  }

  return result;
}

unint64_t sub_226E51C3C()
{
  result = qword_27D7B77A8[0];
  if (!qword_27D7B77A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B77A8);
  }

  return result;
}

uint64_t sub_226E51C90(uint64_t result)
{
  if (result && *(result + 16))
  {
    sub_226E2233C(result + 32, v2);
    result = swift_dynamicCast();
    if (result)
    {
      swift_beginAccess();
      sub_226E4B6D8(v1, v1[0], v1[1]);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_226E51D3C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E1A614;

  return sub_226E4D48C(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_226E51DF8()
{
  v2 = *(type metadata accessor for IncomeInsights.IncomeInsight() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E4DF10(v5, v6, v7, v8, v0 + v3, v4);
}

uint64_t objectdestroy_49Tm()
{
  v1 = (type metadata accessor for IncomeInsights.IncomeInsight() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  v7 = sub_226E635C0();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7]);

  v9 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_226E52004()
{
  v2 = *(type metadata accessor for IncomeInsights.IncomeInsight() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E4DFAC(v5, v6, v7, v8, v0 + v3, v4);
}