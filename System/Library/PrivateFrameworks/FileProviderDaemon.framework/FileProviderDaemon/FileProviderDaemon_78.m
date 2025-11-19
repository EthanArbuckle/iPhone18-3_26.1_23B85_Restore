uint64_t sub_1CF7FB814(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[98];
  v11 = *v3;
  v4[99] = a2;
  v4[100] = v2;

  v6 = v4[97];

  if (v2)
  {
    v7 = v4[96];
    v8 = v4[95];
    v9 = sub_1CF7FBE28;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 76);
    v7 = v4[96];
    v8 = v4[95];
    v9 = sub_1CF7FB94C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1CF7FB94C()
{
  v1 = *(v0 + 792);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 800);
    if (fpfs_is_internal_build())
    {
      v3 = (v0 + 378);
      v4 = *(v0 + 688);
      v5 = *(v0 + 680);

      v52 = sub_1CF8E62D8(v4, v1);

      v7 = *(v5 + 16);
      if (v7)
      {
        v8 = 0;
        v54 = (v0 + 208);
        v9 = MEMORY[0x1E69E7CC0];
        v10 = *(v0 + 680) + 32;
        v51 = v10;
        do
        {
          v53 = v9;
          v11 = (v10 + 80 * v8);
          v12 = v8;
          while (1)
          {
            if (v12 >= v7)
            {
              __break(1u);
LABEL_30:
              __break(1u);
              return result;
            }

            *v54 = *v11;
            v13 = v11[1];
            v14 = v11[2];
            v15 = v11[3];
            *(v0 + 265) = *(v11 + 57);
            *(v0 + 240) = v14;
            *(v0 + 256) = v15;
            *(v0 + 224) = v13;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_30;
            }

            v55 = v12 + 1;
            v16 = *(v0 + 216);
            v17 = *(v0 + 217);
            *(v0 + 648) = *(v0 + 208);
            *(v0 + 656) = v16;
            v18 = v3;
            *(v3 + 279) = v17;
            v19 = swift_task_alloc();
            *(v19 + 16) = v0 + 648;
            sub_1CEFCCBDC(v54, v0 + 288, &unk_1EC4C4D10, &qword_1CFA10800);
            v20 = v1;
            v21 = sub_1CF7F74E4(sub_1CF480978, v19, v1);

            if (v21)
            {
              break;
            }

            result = sub_1CEFCCC44(v54, &unk_1EC4C4D10, &qword_1CFA10800);
            ++v12;
            v11 += 5;
            v3 = v18;
            v1 = v20;
            if (v55 == v7)
            {
              v9 = v53;
              goto LABEL_19;
            }
          }

          v9 = v53;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1CF680E64(0, *(v53 + 16) + 1, 1);
            v9 = v53;
          }

          v3 = v18;
          v1 = v20;
          v23 = *(v9 + 16);
          v22 = *(v9 + 24);
          v24 = v23 + 1;
          v8 = v55;
          if (v23 >= v22 >> 1)
          {
            result = sub_1CF680E64((v22 > 1), v23 + 1, 1);
            v24 = v23 + 1;
            v9 = v53;
          }

          *(v9 + 16) = v24;
          v25 = (v9 + 80 * v23);
          v25[2] = *v54;
          v26 = *(v0 + 224);
          v27 = *(v0 + 240);
          v28 = *(v0 + 256);
          *(v25 + 89) = *(v0 + 265);
          v25[4] = v27;
          v25[5] = v28;
          v25[3] = v26;
          v10 = v51;
        }

        while (v55 != v7);
      }

      else
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

LABEL_19:

      if (*(v9 + 16))
      {
        *(v0 + 368) = *(v9 + 32);
        v30 = *(v9 + 48);
        v31 = *(v9 + 64);
        v32 = *(v9 + 80);
        *(v0 + 425) = *(v9 + 89);
        *(v0 + 400) = v31;
        *(v0 + 416) = v32;
        *(v0 + 384) = v30;
        sub_1CEFCCBDC(v0 + 368, v0 + 448, &unk_1EC4C4D10, &qword_1CFA10800);

        v33 = *(v0 + 368);
        v34 = *(v0 + 376);
        v35 = *(v0 + 377);
        v36 = *(v0 + 384);
        v37 = *(v0 + 392);
        v38 = *(v0 + 400);
        v39 = *(v0 + 424);
        v40 = v52;
        if (v37)
        {
          v56 = *(v0 + 400);
          sub_1CEFD0994(v33, v34, v35 & 1);

          MEMORY[0x1D3868CC0](v36, v37);

          MEMORY[0x1D3868CC0](58, 0xE100000000000000);
          *(v0 + 672) = v56;
          v41 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v41);

          v42 = 8250;
          v43 = 0xE200000000000000;
LABEL_25:
          v48 = *(*(v0 + 728) + 64);
          v1 = sub_1CF7F7808(v40, *(v0 + 704), *(v0 + 712), *(v0 + 720), *(v0 + 284), v42, v43);

          goto LABEL_26;
        }

        v47 = *v3 | (*(v3 + 2) << 32);
        v46 = *(v0 + 416);
        v45 = *(v0 + 432);
        v44 = *(v0 + 440);
      }

      else
      {

        v35 = 0;
        v44 = 0;
        v45 = 0;
        v39 = 0;
        v46 = 0;
        v36 = 0;
        v47 = 0;
        LOBYTE(v34) = 0;
        v33 = 0;
        v38 = 0uLL;
        v40 = v52;
      }

      *(v0 + 528) = v33;
      *(v0 + 536) = v34;
      *(v0 + 537) = v35;
      v3[40] = v47;
      *(v3 + 82) = WORD2(v47);
      *(v0 + 544) = v36;
      *(v0 + 552) = 0;
      *(v0 + 560) = v38;
      *(v0 + 576) = v46;
      *(v0 + 584) = v39;
      *(v0 + 592) = v45;
      *(v0 + 600) = v44;
      sub_1CEFCCC44(v0 + 528, &unk_1EC4C4D30, &unk_1CFA17F40);
      v42 = 0;
      v43 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v29 = *(v0 + 792);

    v1 = MEMORY[0x1E69E7CC0];
  }

LABEL_26:
  v49 = *(v0 + 752);

  v50 = *(v0 + 8);

  return v50(v1);
}

uint64_t sub_1CF7FBE28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 76);
  v1 = v0[100];
  v2 = v0[94];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CF7FBE94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1CF680EC4(0, v5, 0);
    v44 = v43;
    v9 = (a2 + 32);
    v27 = *(a3 + 16);
    for (i = v5 - 1; ; --i)
    {
      v10 = v9[1];
      v39 = *v9;
      v40 = v10;
      v11 = v9[3];
      v41 = v9[2];
      v42[0] = v11;
      *(v42 + 9) = *(v9 + 57);
      v35 = v39;
      v36 = WORD4(v39);
      v12 = a1[3];
      v13 = a1[4];
      v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
      sub_1CEFCCBDC(&v39, &v32, &unk_1EC4C4D10, &qword_1CFA10800);
      v15 = sub_1CF2BF56C(&v35, v14, v12, v13);
      if (v4)
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      *&v29[8] = 0;
      v19 = v35;
      v38 = HIBYTE(v36);
      *v29 = v36;
      sub_1CEFD0988(v35, v36, SHIBYTE(v36));
      sub_1CF1A8918(&v40, &v32);
      sub_1CEFCCC44(&v39, &unk_1EC4C4D10, &qword_1CFA10800);
      *&v37[47] = *(v42 + 9);
      *&v37[38] = v42[0];
      *&v37[22] = v41;
      *&v37[6] = v40;
      v20 = v38;
      *&v34[15] = *&v37[47];
      v33 = *&v37[16];
      *v34 = *&v37[32];
      v32 = *v37;
      result = v44;
      v43 = v44;
      v22 = *(v44 + 16);
      v21 = *(v44 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1CF680EC4((v21 > 1), v22 + 1, 1);
        result = v43;
      }

      *(result + 16) = v22 + 1;
      v23 = result + 96 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v29[0];
      *(v23 + 41) = v20;
      v24 = v32;
      v25 = v33;
      v26 = *v34;
      *(v23 + 89) = *&v34[15];
      *(v23 + 74) = v26;
      *(v23 + 58) = v25;
      *(v23 + 42) = v24;
      *(v23 + 105) = *v31;
      *(v23 + 108) = *&v31[3];
      *(v23 + 112) = v17;
      *(v23 + 120) = v18;
      if (!i)
      {
        return result;
      }

      v44 = result;
      v9 += 5;
      v4 = *&v29[4];
    }

    sub_1CEFCCC44(&v39, &unk_1EC4C4D10, &qword_1CFA10800);
  }

  return result;
}

uint64_t sub_1CF7FC11C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      swift_dynamicCast();
      sub_1CF9E7A18();
      v7 = *(v8 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CF7FC230(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1CF680E84(0, v1, 0);
    v2 = v31;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[1];
      v21 = v4[2];
      v22 = v5;
      v7 = v4[3];
      v8 = v4[5];
      v23 = v4[4];
      v24 = v8;
      v9 = v4[1];
      v20[0] = *v4;
      v20[1] = v9;
      v27 = v21;
      v28 = v7;
      v10 = v4[5];
      v29 = v23;
      v30 = v10;
      v25 = v20[0];
      v26 = v6;
      sub_1CEFCCBDC(v20, v19, &qword_1EC4BE6B0, &unk_1CF9FE520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B0, &unk_1CF9FE520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2298, &qword_1CFA107F0);
      swift_dynamicCast();
      v29 = v19[4];
      v30 = v19[5];
      v27 = v19[2];
      v28 = v19[3];
      v25 = v19[0];
      v26 = v19[1];
      v31 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1CF680E84((v11 > 1), v12 + 1, 1);
        v2 = v31;
      }

      *(v2 + 16) = v12 + 1;
      v13 = (v2 + 96 * v12);
      v14 = v26;
      v13[2] = v25;
      v13[3] = v14;
      v15 = v27;
      v16 = v28;
      v17 = v30;
      v13[6] = v29;
      v13[7] = v17;
      v13[4] = v15;
      v13[5] = v16;
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1CF7FC3C8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CF9E57E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1CF7FC438()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  result = fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16));
  if ((result & 1) == 0 && (*(v0 + 152) & 1) == 0)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDEBBE40;
    (*(v2 + 56))(v12, 1, 1, v1);
    sub_1CEFCCBDC(v12, v10, &unk_1EC4BED20, &unk_1CFA00700);
    v15 = *(v2 + 48);
    if (v15(v10, 1, v1) == 1)
    {
      v16 = v14;
      sub_1CF9E6048();
      if (v15(v10, 1, v1) != 1)
      {
        sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v2 + 32))(v5, v10, v1);
    }

    sub_1CF9E7478();
    sub_1CF9E6038();
    (*(v2 + 8))(v5, v1);
    sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    os_unfair_lock_lock((v0 + 208));
    if (!*(v0 + 216))
    {
      *(v0 + 216) = os_transaction_create();
    }

    os_unfair_lock_unlock((v0 + 208));
    v17 = *(v0 + 112);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF7FC72C(uint64_t result)
{
  v1 = result;
  v2 = *(result + qword_1EDEBBB18);
  if (v2)
  {
    v3 = v2 + *(*v2 + 136);
    swift_beginAccess();
    result = type metadata accessor for BackgroundDownloaderPacerState();
    v4 = *(v3 + *(result + 52));
    if (v4)
    {

      v5 = v4;
      sub_1CF7BEE14(1uLL);
    }
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = *(v1 + 24);

    v9 = v6(v8);
    result = sub_1CEFF7124(v6);
    if (v9)
    {
      sub_1CF7FC438();
    }
  }

  return result;
}

void sub_1CF7FC814(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v6 = v5;
  v54 = a4;
  LODWORD(v52) = a3;
  v50 = a1;
  v51 = a2;
  v7 = sub_1CF9E6068();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E64A8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v6 + qword_1EDEBBC38);
  v61 = fpfs_adopt_log();
  v26 = *(v6 + 64);
  *v24 = v26;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v27 = v26;
  LOBYTE(v26) = sub_1CF9E64D8();
  (*(v21 + 8))(v24, v20);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  if ((fp_task_tracker_is_cancelled(*(*(v6 + 168) + 16)) & 1) != 0 || *(v6 + 152) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v28 = v61;
    v29 = fpfs_adopt_log();
LABEL_6:
    v30 = v29;

    return;
  }

  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v31 = qword_1EDEBBE40;
  v32 = v53;
  (*(v53 + 56))(v16, 1, 1, v7);
  v59 = 0x63746162206E7572;
  v60 = 0xEA00000000002068;
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v51 = v60;
  v52 = v59;
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(v32 + 48);
  if (v34(v14, 1, v7) == 1)
  {
    v35 = v31;
    v50 = v31;
    v36 = v58;
    sub_1CF9E6048();
    v37 = v34(v14, 1, v7);
    v38 = v36;
    v31 = v50;
    if (v37 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v38 = v58;
    (*(v32 + 32))(v58, v14, v7);
  }

  v39 = v57;
  (*(v32 + 16))(v57, v38, v7);
  *(v39 + *(v17 + 20)) = v31;
  v40 = v39 + *(v17 + 24);
  *v40 = "DB queue";
  *(v40 + 8) = 8;
  *(v40 + 16) = 2;
  v41 = v31;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1CF9FA450;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1CEFD51C4();
  v43 = v51;
  *(v42 + 32) = v52;
  *(v42 + 40) = v43;
  sub_1CF9E6028();

  (*(v32 + 8))(v58, v7);
  v44 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v56;
  (*(*v6 + 2528))(&v59, sub_1CF8F9348);
  if (v45)
  {
    v59 = v45;
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {

      sub_1CF2CA194();
      swift_allocError();
      swift_willThrow();
    }

    else
    {

      v47 = *(*v6 + 496);
      v48 = v45;
      v47(v45, 1, "runBatch(function:updateBlock:)", 31, 2);
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5338(v39, type metadata accessor for Signpost);
    goto LABEL_5;
  }

  if ((v59 & 1) == 0)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5338(v39, type metadata accessor for Signpost);
    v28 = v61;
    v29 = fpfs_adopt_log();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1CF7FD00C(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v6 = v5;
  v56 = a4;
  LODWORD(v54) = a3;
  v52 = a1;
  v53 = a2;
  v7 = sub_1CF9E6068();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E64A8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v6 + qword_1EDEBBC38);
  v63 = fpfs_adopt_log();
  v26 = *(v6 + 64);
  *v24 = v26;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v27 = v26;
  LOBYTE(v26) = sub_1CF9E64D8();
  (*(v21 + 8))(v24, v20);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  if ((fp_task_tracker_is_cancelled(*(*(v6 + 168) + 16)) & 1) != 0 || *(v6 + 152) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v28 = v63;
    v29 = fpfs_adopt_log();

    return (v28 & 1);
  }

  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v31 = qword_1EDEBBE40;
  v32 = v55;
  (*(v55 + 56))(v16, 1, 1, v7);
  v61 = 0x63746162206E7572;
  v62 = 0xEA00000000002068;
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v53 = v62;
  v54 = v61;
  sub_1CEFCCBDC(v16, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(v32 + 48);
  if (v34(v14, 1, v7) == 1)
  {
    v35 = v31;
    v52 = v31;
    v36 = v60;
    sub_1CF9E6048();
    v37 = v34(v14, 1, v7);
    v38 = v36;
    v31 = v52;
    if (v37 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v38 = v60;
    (*(v32 + 32))(v60, v14, v7);
  }

  v39 = v59;
  (*(v32 + 16))(v59, v38, v7);
  *(v39 + *(v17 + 20)) = v31;
  v40 = v39 + *(v17 + 24);
  *v40 = "DB queue";
  *(v40 + 8) = 8;
  *(v40 + 16) = 2;
  v41 = v31;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1CF9FA450;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1CEFD51C4();
  v43 = v53;
  *(v42 + 32) = v54;
  *(v42 + 40) = v43;
  sub_1CF9E6028();

  (*(v32 + 8))(v60, v7);
  v44 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v58;
  result = (*(*v6 + 2528))(&v61, sub_1CF8F96E4);
  if (v45)
  {
    v61 = v45;
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {

      sub_1CF2CA194();
      swift_allocError();
      swift_willThrow();
    }

    else
    {

      v49 = *(*v6 + 496);
      v50 = v45;
      v49(v45, 1, "runBatch(function:updateBlock:)", 31, 2);
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5338(v39, type metadata accessor for Signpost);
    goto LABEL_5;
  }

  LOBYTE(v28) = v61;
  if (v61 != 2)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5338(v39, type metadata accessor for Signpost);
    v47 = v63;
    v48 = fpfs_adopt_log();

    return (v28 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7FD818(void *a1, unint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v38[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v40 = 0;
  v41 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA427B0);
  if (!a3)
  {
LABEL_5:
    a2 = -a2;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  a2 = (a2 != 0) << 63;
LABEL_7:
  v15 = [a1 bindLongParameter_];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  if (a5)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1CF9E7088();
  }

  v20 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  if (a7)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1CF9E7088();
  }

  v25 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;

  MEMORY[0x1D3868CC0](v26, v28);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v29 = MEMORY[0x1E69E6530];
  v39 = MEMORY[0x1E69E6530];
  v38[0] = a8;
  v30 = sub_1CEFF8EA0(v38);
  v32 = v31;
  sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v32)
  {
    goto LABEL_16;
  }

  MEMORY[0x1D3868CC0](v30, v32);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v38[0] = 0;
  v33 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v33);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v39 = v29;
  v38[0] = a9;
  v34 = sub_1CEFF8EA0(v38);
  v36 = v35;
  sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v36)
  {
    MEMORY[0x1D3868CC0](v34, v36);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v40;
  }

  else
  {
LABEL_16:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF7FDBB8(void *a1, char a2, uint64_t a3, int a4)
{
  v43 = a3;
  v9 = sub_1CF9E5CF8();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40[-v15];
  v17 = *(v4 + 16);
  if (v17)
  {
    v41 = a4;
    v18 = *(v4 + 24);

    v20 = v17(v19);
    sub_1CEFF7124(v17);
    if (v20)
    {
      v21 = qword_1EDEBBC70;
      swift_beginAccess();
      v22 = *(v20 + v21);
      if (*(v22 + 16))
      {
        v23 = sub_1CF7BF2C0(a1, a2);
        if (v24)
        {
          v25 = v23;
          v26 = *(v22 + 56);
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
          v28 = *(v27 - 8);
          sub_1CEFCCBDC(v26 + *(v28 + 72) * v25, v16, &unk_1EC4C04C0, &qword_1CFA07B10);

          (*(v28 + 56))(v16, 0, 1, v27);
          sub_1CEFCCC44(v16, &unk_1EC4C4DD0, &unk_1CF9FCB30);
          return;
        }
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
      (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
      sub_1CEFCCC44(v16, &unk_1EC4C4DD0, &unk_1CF9FCB30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
      inited = swift_initStackObject();
      v31 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      *(inited + 24) = v31;
      *(inited + 32) = v31;
      *(inited + 40) = v31;
      *(inited + 48) = 0;
      v32 = v43;
      sub_1CF7FDFCC(a1, a2, v20, inited, v43, v41);
      if (!v5)
      {
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v34 = v33;
        (*(v42 + 8))(v12, v9);
        v35 = v34 * 1000000000.0;
        if (COERCE__INT64(fabs(v34 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v35 > -9.22337204e18)
        {
          if (v35 < 9.22337204e18)
          {
            sub_1CF7F6588(inited, v35, v32, v41);

            swift_setDeallocating();
            v36 = *(inited + 16);

            v37 = *(inited + 24);

            v38 = *(inited + 32);

            v39 = *(inited + 40);

            return;
          }

          goto LABEL_15;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }
  }
}

void sub_1CF7FDFCC(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v131 = a4;
  v11 = sub_1CF9E6118();
  v132 = *(v11 - 8);
  v12 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = a1;
  v157 = a2;
  v154 = a5;
  v155 = a6;
  v15 = *(a3 + 24);
  v16 = sub_1CF8DCAE8(&qword_1EC4C4E48, &qword_1CFA18018, &unk_1EC4C4E50, &unk_1CFA18020);
  v17 = *(v16 + 52);
  v18 = (*(v16 + 48) + 7) & 0x1FFFFFFF8;
  v19 = swift_allocObject();
  v130 = xmmword_1CF9FA450;
  *(v19 + 16) = xmmword_1CF9FA450;
  *(v19 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
  v20 = v158;
  v21 = (*(*v15 + 312))(&v156, v19, &v154, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v20)
  {
    goto LABEL_2;
  }

  v22 = v21;
  v158 = v14;

  if (!(v22 >> 62))
  {
    v23 = a6;
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_2:

    return;
  }

  v102 = sub_1CF9E7818();
  v23 = a6;
  if (!v102)
  {
    goto LABEL_2;
  }

LABEL_5:
  v24 = a5;
  LODWORD(v129) = v23;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D3869C30](0, v22);
    v25 = v11;
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v25 = v11;
    v26 = *(v22 + 32);
  }

  v27 = v132;

  v28 = *(v26 + 136);
  if ((v28 & 0x10000) != 0)
  {
    goto LABEL_27;
  }

  v132 = 0;
  if ((v28 & 0x20000) != 0)
  {
    goto LABEL_27;
  }

  v128 = v25;

  v29 = fpfs_current_or_default_log();
  v30 = v158;
  sub_1CF9E6128();

  v31 = sub_1CF9E6108();
  v32 = sub_1CF9E72C8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    LODWORD(v127) = v32;
    v34 = v33;
    v126 = swift_slowAlloc();
    v153[0] = v126;
    *v34 = 136446210;
    v125 = v31;
    v35 = v26;
    v123 = sub_1CF059424();
    v37 = v36;

    v123 = sub_1CEFD0DF0(v123, v37, v153);
    v26 = v35;

    v38 = v34;
    v124 = v34;
    *(v34 + 4) = v123;
    v39 = v125;
    _os_log_impl(&dword_1CEFC7000, v125, v127, "✴️  cancelling materialization %{public}s", v38, 0xCu);
    v40 = v126;
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v124, -1, -1);
  }

  else
  {
  }

  (*(v27 + 8))(v30, v128);
  v41 = *(a3 + 16);
  v42 = v132;
  sub_1CF7EB934(v156, v157, v24, v129, v153);
  v132 = v42;
  if (v42)
  {
    goto LABEL_15;
  }

  memcpy(v152, v153, sizeof(v152));
  if (sub_1CF08B99C(v152) == 1)
  {
    memcpy(v151, v153, sizeof(v151));
LABEL_24:
    sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);
    v53 = v156;
    v54 = v157;
    LOBYTE(v139) = 0;
    v55 = *(v26 + 120);
    v56 = *(v26 + 128);

    v57 = v139;
    v151[0] = v53;
    LOBYTE(v151[1]) = v54;
    BYTE1(v151[1]) = v139;
    LOWORD(v151[2]) = 1280;
    v151[3] = v55;
    v151[4] = v56;
    WORD1(v151[14]) = 2572;
    (*(*v131 + 136))(v151);

    v151[0] = v53;
    LOBYTE(v151[1]) = v54;
    BYTE1(v151[1]) = v57;
    LOWORD(v151[2]) = 1280;
    v151[3] = v55;
    v151[4] = v56;
    WORD1(v151[14]) = 2572;
    sub_1CEFCCC44(v151, &qword_1EC4BE6D0, &qword_1CF9FE560);
    return;
  }

  memcpy(v151, v153, sizeof(v151));
  v44 = v151[31];
  if (!v151[31])
  {
    goto LABEL_24;
  }

  v150 = v151[31];
  if (LOBYTE(v151[43]) != 1)
  {
    v58 = v151[31];

    v43 = *(v26 + 112);
    if (v43 != 2)
    {
      v59 = *(v26 + 96);
      v60 = *(v26 + 104);
      *(v26 + 96) = 0;
      *(v26 + 104) = 0;
      *(v26 + 112) = 4;
      sub_1CF03D7A8(v59, v60, v43);
      v61 = *(*v131 + 144);

      v61(v62);

      sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);

LABEL_27:

      return;
    }

LABEL_76:
    sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v43, 162);
  }

  v122 = v26;
  if (LOBYTE(v151[57]) == 1)
  {
    v63 = sub_1CF8DCAE8(&qword_1EC4C4E38, &qword_1CFA18008, &qword_1EC4C4E40, &qword_1CFA18010);
    v64 = *(v63 + 52);
    v65 = (*(v63 + 48) + 7) & 0x1FFFFFFF8;
    v66 = swift_allocObject();
    *(v66 + 16) = v130;
    *(v66 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
    v67 = *(*v15 + 304);
    v24 = v44;
    v68 = v44;
    v69 = v132;
    v70 = v67(&v150, v66, &v154, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v132 = v69;
    if (v69)
    {
LABEL_29:

      sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);

LABEL_15:

      return;
    }

    v71 = v70;
    v121 = v68;

    if (!(v71 >> 62))
    {
      if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_70:

        sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);
        goto LABEL_15;
      }

      goto LABEL_32;
    }

LABEL_69:
    if (!sub_1CF9E7818())
    {
      goto LABEL_70;
    }

LABEL_32:
    if ((v71 & 0xC000000000000001) != 0)
    {
      a5 = MEMORY[0x1D3869C30](0, v71);
LABEL_35:

      v15 = *(a5 + 96);
      v22 = *(a5 + 104);
      v19 = a5 + 96;
      v72 = *(a5 + 112);
      if (!*(a5 + 112))
      {
        if (v22)
        {
          sub_1CF03C530(*(a5 + 96), *(a5 + 104), 0);
          sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);

          v73 = v15;
          v74 = v22;
          v75 = 0;
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (v72 != 1)
      {
        if (v72 == 2)
        {
          sub_1CF03C530(*(a5 + 96), *(a5 + 104), 2u);
          sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);

          v73 = v15;
          v74 = v22;
          v75 = 2;
LABEL_63:
          sub_1CF03D7A8(v73, v74, v75);

          return;
        }

        goto LABEL_64;
      }

LABEL_59:
      if (v15)
      {
        sub_1CF03C530(v15, v22, 1u);
        sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);

        v73 = v15;
        v74 = v22;
        v75 = 1;
        goto LABEL_63;
      }

LABEL_64:
      v103 = v156;
      *&v130 = v156;
      v104 = v157;
      LODWORD(v129) = v157;
      LOBYTE(v133) = 0;
      v158 = v24;
      v105 = *(v122 + 120);
      v106 = *(v122 + 128);

      v107 = v133;
      v139 = v103;
      LOBYTE(v140) = v104;
      HIBYTE(v140) = v133;
      v141 = 1280;
      v142 = v105;
      v143 = v106;
      v144 = 2572;
      v108 = v131;
      v109 = *(*v131 + 136);
      v109(&v139);
      v139 = v130;
      LOBYTE(v140) = v129;
      HIBYTE(v140) = v107;
      v141 = 1280;
      v142 = v105;
      v143 = v106;
      v144 = 2572;
      sub_1CEFCCC44(&v139, &qword_1EC4BE6D0, &qword_1CF9FE560);
      *&v145 = v121;
      WORD4(v145) = 256;
      LOBYTE(v146) = 0;
      v149[18] = 10;
      v135 = v147;
      v136 = v148;
      v137[0] = *v149;
      *(v137 + 15) = *&v149[15];
      v133 = v145;
      v134 = v146;
      v138 = 9;
      v110 = v158;
      v109(&v133);
      sub_1CEFCCC44(&v145, &unk_1EC4BFCF0, &unk_1CFA05410);
      v43 = *(a5 + 112);
      if (v43 != 2)
      {
        v111 = *(a5 + 96);
        v112 = *(a5 + 104);
        *v19 = 0;
        *(v19 + 8) = 0;
        *(a5 + 112) = 4;
        sub_1CF03D7A8(v111, v112, v43);
        v113 = *(*v108 + 152);

        v113(v114);

        v115 = v122;
        v43 = *(v122 + 112);
        if (v43 != 2)
        {
          v116 = *(v122 + 96);
          v117 = *(v122 + 104);
          *(v122 + 96) = 0;
          *(v115 + 104) = 0;
          *(v115 + 112) = 4;
          sub_1CF03D7A8(v116, v117, v43);
          v118 = *(*v108 + 144);

          v118(v119);

          sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);

          goto LABEL_27;
        }
      }

      goto LABEL_76;
    }

    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a5 = *(v71 + 32);

      goto LABEL_35;
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (LOBYTE(v151[57]) == 4)
  {
    goto LABEL_75;
  }

  v45 = sub_1CF8DCAE8(&qword_1EC4C4E38, &qword_1CFA18008, &qword_1EC4C4E40, &qword_1CFA18010);
  v46 = *(v45 + 52);
  v47 = (*(v45 + 48) + 7) & 0x1FFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v130;
  *&v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
  *(v48 + 32) = v130;
  v49 = *(*v15 + 304);
  v24 = v44;
  v50 = v44;
  v51 = v132;
  v52 = v49(&v150, v48, &v154, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v132 = v51;
  if (v51)
  {
    goto LABEL_29;
  }

  v71 = v52;
  v121 = v50;

  if (v71 >> 62)
  {
    v76 = sub_1CF9E7818();
    if (v76)
    {
LABEL_41:
      v77 = 0;
      v158 = (v71 & 0xC000000000000001);
      v123 = v71 & 0xFFFFFFFFFFFFFF8;
      v120 = xmmword_1CF9FEC30;
      v128 = v24;
      v129 = v71;
      v127 = v76;
      while (1)
      {
        if (v158)
        {
          v78 = MEMORY[0x1D3869C30](v77, v71);
        }

        else
        {
          if (v77 >= *(v123 + 16))
          {
            goto LABEL_68;
          }

          v78 = *(v71 + 8 * v77 + 32);
        }

        v79 = (v77 + 1);
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (*(v78 + 136))
        {
          v80 = swift_dynamicCastClassUnconditional();
          v81 = v80;
          if (*(v80 + 112) == 2)
          {
            v82 = *(v80 + 96);
            v126 = *(v80 + 104);
            v83 = *(v78 + 120);
            v84 = *(v78 + 128);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0270, &unk_1CFA05770);
            v85 = swift_allocObject();
            *(v85 + 16) = 0u;
            *(v85 + 32) = 0u;
            *(v85 + 48) = 1;
            *(v85 + 56) = 0u;
            *(v85 + 72) = 0u;
            *(v85 + 88) = 0;
            *(v85 + 96) = v120;
            *(v85 + 112) = 0;
            *(v85 + 120) = v83;
            *(v85 + 128) = v84;
            v86 = v128;
            *(v85 + 136) = 0x80000;
            *(v85 + 144) = v86;
            v87 = *(*v131 + 152);
            v124 = *v131 + 152;
            v125 = v87;
            v88 = v86;
            v89 = v126;
            sub_1CF03C530(v82, v126, 2u);
            (v125)(v85);
            v24 = v86;

            sub_1CF03D7A8(v82, v89, 2u);
            v71 = v129;
            v76 = v127;
          }

          else
          {
            v90 = v156;
            v91 = v157;
            LOBYTE(v133) = 0;
            v92 = *(v122 + 128);
            v124 = *(v122 + 120);
            v125 = v92;
            v126 = (v77 + 1);
            v139 = v156;
            v140 = v157;
            v141 = 1280;
            v142 = v124;
            v143 = v92;
            v144 = 2572;
            v93 = v131;
            v94 = *(*v131 + 136);
            v94(&v139);
            v139 = v90;
            v140 = v91;
            v141 = 1280;
            v142 = v124;
            v143 = v125;
            v144 = 2572;
            sub_1CEFCCC44(&v139, &qword_1EC4BE6D0, &qword_1CF9FE560);
            *&v145 = v121;
            WORD4(v145) = 256;
            LOBYTE(v146) = 0;
            v149[18] = 10;
            v135 = v147;
            v136 = v148;
            v137[0] = *v149;
            *(v137 + 15) = *&v149[15];
            v133 = v145;
            v134 = v146;
            v138 = 9;
            v24 = v128;
            v95 = v128;
            v94(&v133);
            sub_1CEFCCC44(&v145, &unk_1EC4BFCF0, &unk_1CFA05410);
            v43 = *(v81 + 112);
            if (v43 == 2)
            {
              goto LABEL_76;
            }

            v96 = *(v81 + 96);
            v97 = *(v81 + 104);
            *(v81 + 96) = 0;
            *(v81 + 104) = 0;
            *(v81 + 112) = 4;
            sub_1CF03D7A8(v96, v97, v43);
            v98 = *(*v93 + 152);

            v98(v81);

            v99 = v122;
            v43 = *(v122 + 112);
            if (v43 == 2)
            {
              goto LABEL_76;
            }

            v100 = *(v122 + 96);
            v101 = *(v122 + 104);
            *(v122 + 96) = 0;
            *(v99 + 104) = 0;
            *(v99 + 112) = 4;
            sub_1CF03D7A8(v100, v101, v43);
            (*(*v93 + 144))(v99);

            v71 = v129;
            v79 = v126;
            v76 = v127;
          }
        }

        else
        {
        }

        ++v77;
        if (v79 == v76)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    v76 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_41;
    }
  }

LABEL_72:

  sub_1CEFCCC44(v151, &unk_1EC4BFC20, &unk_1CFA0A290);
}

void (*sub_1CF7FEF8C(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5))(void **, void)
{
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v66 = a2;
  v62 = &v65;
  v16 = sub_1CF7D55FC(sub_1CF902CB0, v61, a4, a5);
  if (v5)
  {
    return a3;
  }

  v56 = v11;
  v57 = v12;
  v58 = a3;
  v59 = 0;
  v18 = v16;
  [v18 next];
  v19 = [v18 longAtIndex_];

  if (v19 < 1)
  {
    a3 = 0;
    goto LABEL_13;
  }

  v53 = v19;
  v54 = a4;
  v55 = a5;
  v20 = fpfs_current_or_default_log();
  v21 = v15;
  sub_1CF9E6128();
  v22 = v65;
  v23 = v66;
  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E7288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v67 = v27;
    *v26 = 136446466;
    v63 = v22;
    v64 = v23;
    v29 = VFSItemID.description.getter(v27, v28);
    v31 = sub_1CEFD0DF0(v29, v30, &v67);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    v32 = v58;
    v33 = sub_1CF7F5068(v58);
    v35 = sub_1CEFD0DF0(v33, v34, &v67);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_1CEFC7000, v24, v25, "⏰  unscheduling background download <i:%{public}s reason:%{public}s>", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v27, -1, -1);
    MEMORY[0x1D386CDC0](v26, -1, -1);

    v36 = (v57)[1](v21, v56);
  }

  else
  {

    v36 = (v57)[1](v15, v56);
    v32 = v58;
  }

  v37 = v59;
  a3 = v60;
  v38 = v55;
  v39 = v54;
  if ((v32 & 0xFFFFFFFFFFFFFE3FLL) != 0)
  {
    v57 = v18;
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v36);
  *(&v53 - 2) = &v65;
  v40 = sub_1CF7D55FC(sub_1CF8F9180, (&v53 - 4), v39, v38);
  if (v37)
  {
LABEL_13:

    return a3;
  }

  v50 = v40;

  v51 = [v50 next];
  if ((v51 & 1) != 0 && ((v36 = [v50 longAtIndex_], v36 == 128) || v36 == 64) && (v36 = objc_msgSend(v50, sel_next), (v36 & 1) == 0))
  {
    sub_1CF7FDBB8(v65, v66, v39, v38);
    v57 = v50;
    a3 = v60;
  }

  else
  {
    v57 = v50;
  }

LABEL_10:
  MEMORY[0x1EEE9AC00](v36);
  *(&v53 - 2) = v32;
  *(&v53 - 1) = &v65;
  sub_1CF7D5920(sub_1CF8F914C, (&v53 - 4), v39);
  if (v37)
  {

    return a3;
  }

  v41 = [v39 changes];
  if (v41 <= 0)
  {
    goto LABEL_17;
  }

  v60 = &v53;
  MEMORY[0x1EEE9AC00](v41);
  v42 = type metadata accessor for VFSItem(0);
  *(&v53 - 4) = v42;
  v43 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  *(&v53 - 3) = v43;
  v44 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  *(&v53 - 2) = v44;
  v45 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);
  *(&v53 - 1) = v45;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v53 - 4) = v42;
  *(&v53 - 3) = v43;
  *(&v53 - 2) = v44;
  *(&v53 - 1) = v45;
  swift_getKeyPath();
  result = sub_1CF9E6288();
  if (!__OFADD__(*v47, 1))
  {
    ++*v47;
    result(&v63, 0);

    v38 = v55;
    v39 = v54;
    v32 = v58;
LABEL_17:
    if (v32 == 16)
    {
      v41 = sub_1CF7FFA9C(v65, v66, v39, v38);
    }

    v48 = v57;
    MEMORY[0x1EEE9AC00](v41);
    *(&v53 - 2) = &v65;
    v49 = sub_1CF7D55FC(sub_1CF8F915C, (&v53 - 4), v39, v38);
    v59 = 0;
    v52 = v49;

    [v52 next];
    [v52 longAtIndex_];

    v18 = v52;
    a3 = v53;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7FF688(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40340);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t sub_1CF7FF7DC(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v16[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42730);
  v16[3] = MEMORY[0x1E69E6530];
  v16[0] = a2;
  v8 = sub_1CEFF8EA0(v16);
  v10 = v9;
  sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    if (a4)
    {
      if (a4 != 1)
      {
        a3 = (a3 != 0) << 63;
        goto LABEL_8;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v11 = [a1 bindLongParameter_];
        v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v14 = v13;

        MEMORY[0x1D3868CC0](v12, v14);

        return v17;
      }

      __break(1u);
    }

    a3 = -a3;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF7FF9AC(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA426F0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);

  return v11;
}

uint64_t sub_1CF7FFA9C(uint64_t result, char a2, uint64_t a3, char a4)
{
  v18 = result;
  v19 = a2;
  v16 = a3;
  v17 = a4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4;
    v8 = *(v4 + 24);

    v10 = v6(v9);
    result = sub_1CEFF7124(v6);
    if (v10)
    {
      v11 = *(**(v10 + 16) + 160);

      v11(&v15, &v18, &v16, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

      if (!v5)
      {
        v13 = v15;
        if (v15)
        {
          if (*(v7 + qword_1EDEBBAD0))
          {
            MEMORY[0x1EEE9AC00](v12);

            sub_1CF052DA4(v14, sub_1CF8F91D8);
          }
        }
      }
    }
  }

  return result;
}

void sub_1CF7FFC20(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  if (v15)
  {
    v65 = a1;
    v16 = *(v2 + 24);

    v18 = v15(v17);
    sub_1CEFF7124(v15);
    if (v18)
    {
      v19 = *(v18 + 64);
      *v14 = v19;
      (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
      v20 = v19;
      LOBYTE(v19) = sub_1CF9E64D8();
      (*(v11 + 8))(v14, v10);
      if (v19)
      {
        v21 = *(v18 + 120);
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v24 = v23 - v22;
        if (__OFSUB__(v23, v22))
        {
          goto LABEL_46;
        }

        if (v24 < 1)
        {

          return;
        }

        v63 = *(v18 + 120);
        v64 = v9;
        v62 = v18;
        v67 = 0x2054494D494CLL;
        v68 = 0xE600000000000000;
        v66 = v23 - v22;

        v25 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v25);

        v26 = v67;
        v27 = v68;
        v28 = swift_allocObject();
        v28[2] = 0xD000000000000010;
        v28[3] = 0x80000001CFA42280;
        v28[4] = v26;
        v28[5] = v27;

        v29 = sub_1CF7D55FC(sub_1CF356050, v28, v65, a2);
        v59 = v5;
        v60 = 0x80000001CFA42280;
        v61 = a2;
        v58 = v6;
        if ([v29 next])
        {
          v30 = 0;
          v31 = 0;
          v32 = v22 - v23;
          while (v32 != v30)
          {
            v33 = [v29 longLongAtIndex_];
            v34 = __OFADD__(v31, v33);
            v31 += v33;
            if (v34)
            {
              goto LABEL_44;
            }

            --v30;
            if (([v29 next] & 1) == 0)
            {
              v35 = -v30;
              goto LABEL_16;
            }
          }

          goto LABEL_37;
        }

        v31 = 0;
        v35 = 0;
LABEL_16:

        if (v24 <= v35)
        {
          goto LABEL_37;
        }

        v67 = 0x2054494D494CLL;
        v68 = 0xE600000000000000;
        v66 = v24 - v35;
        v36 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v36);

        v37 = v67;
        v38 = v68;
        v39 = swift_allocObject();
        v39[2] = 0xD000000000000010;
        v39[3] = v60;
        v39[4] = v37;
        v39[5] = v38;

        v40 = sub_1CF7D55FC(sub_1CF356004, v39, v65, v61);
        v64 = v24 - v35;
        v57 = v35;
        if ([v40 next])
        {
          v41 = 0;
          v42 = 0;
          v43 = v64 & ~(v64 >> 63);
          while (v43 != v41)
          {
            v44 = [v40 longLongAtIndex_];
            v34 = __OFADD__(v42, v44);
            v42 += v44;
            if (v34)
            {
              goto LABEL_47;
            }

            ++v41;
            if (([v40 next] & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          v41 = v43;
        }

        else
        {
          v42 = 0;
          v41 = 0;
        }

LABEL_28:

        v45 = v57 + v41;
        if (__OFADD__(v57, v41))
        {
          goto LABEL_49;
        }

        v34 = __OFADD__(v31, v42);
        v46 = v31 + v42;
        if (v34)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

        v34 = __OFSUB__(v64, v41);
        v47 = v64 - v41;
        if ((v47 < 0) ^ v34 | (v47 == 0))
        {
LABEL_37:

          return;
        }

        v67 = 0x2054494D494CLL;
        v68 = 0xE600000000000000;
        v66 = v47;
        v48 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v48);

        v49 = v67;
        v50 = v68;
        v51 = swift_allocObject();
        v51[2] = 0xD000000000000010;
        v51[3] = v60;
        v51[4] = v49;
        v51[5] = v50;
        v52 = sub_1CF7D55FC(sub_1CF355FF8, v51, v65, v61);
        if ([v52 next])
        {
          v53 = 0;
          v54 = 0;
          while ((v47 & ~(v47 >> 63)) != v53)
          {
            v55 = [v52 longLongAtIndex_];
            v34 = __OFADD__(v54, v55);
            v54 += v55;
            if (v34)
            {
              goto LABEL_48;
            }

            ++v53;
            if (([v52 next] & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v53 = v47 & ~(v47 >> 63);
        }

        else
        {
          v54 = 0;
          v53 = 0;
        }

LABEL_40:

        if (__OFADD__(v45, v53))
        {
          goto LABEL_51;
        }

        if (!__OFADD__(v46, v54))
        {
          return;
        }

        __break(1u);
LABEL_44:
        __break(1u);
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }
}

void sub_1CF800340(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (fpfs_supports_bgst_improvements())
  {
    v11 = qword_1EDEBBAE0;
    if (*(v3 + qword_1EDEBBAE0) <= 1uLL)
    {
      sub_1CF7FFC20(a1, a2);
      *(v3 + qword_1EDEAC808) = v12;
      if (v13 >= 1)
      {
        v14 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v15 = sub_1CF9E6108();
        v16 = sub_1CF9E7288();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1CEFC7000, v15, v16, "⏰ background download prepared to download", v17, 2u);
          MEMORY[0x1D386CDC0](v17, -1, -1);
        }

        (*(v7 + 8))(v10, v6);
        *(v3 + v11) = 1;
        if (*(v3 + qword_1EDEBBAE8) == 1)
        {
          if (qword_1EDEAD4D8 != -1)
          {
            swift_once();
          }

          sub_1CF06779C(sub_1CF9032F0, v3);
        }

        else
        {
          *(v3 + qword_1EDEBBAE8) = 1;
          if (qword_1EDEAD4D8 != -1)
          {
            swift_once();
          }

          [qword_1EDEBBC10 addWatcher_];
        }
      }
    }
  }
}

uint64_t sub_1CF8005A0(uint64_t *a1, int a2)
{
  v4 = v2;
  v48 = a2;
  v47 = a1;
  v49 = sub_1CF9E6118();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v49);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - v13;
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  result = (*(v16 + 8))(v19, v15);
  v23 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v23;
  v25 = &v4[*(*v4 + 136)];
  result = swift_beginAccess();
  if (v25[40])
  {
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E7298();
    if (!os_log_type_enabled(v27, v28))
    {
      v12 = v14;
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1CEFC7000, v27, v28, "🔮 setting maximum downloads allowed", v29, 2u);
    v12 = v14;
    goto LABEL_11;
  }

  v30 = *(v25 + 4);
  v31 = *&v4[qword_1EDEBB790];
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v33 >= v24)
  {
    goto LABEL_14;
  }

  v34 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v27 = sub_1CF9E6108();
  v35 = sub_1CF9E7298();
  if (os_log_type_enabled(v27, v35))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1CEFC7000, v27, v35, "🔮 resetting maximum downloads allowed", v29, 2u);
LABEL_11:
    MEMORY[0x1D386CDC0](v29, -1, -1);
  }

LABEL_13:

  (*(v5 + 8))(v12, v49);
  *(v25 + 3) = 0;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v4[72] = 1;
LABEL_14:
  v36 = *(v25 + 3);
  v37 = *&v4[qword_1EDEBB7A0];
  if (v36 < v37)
  {
    result = v37 - v36;
    if (!__OFSUB__(v37, v36))
    {
      return result;
    }

    goto LABEL_31;
  }

  v38 = *&v25[*(type metadata accessor for BackgroundDownloaderPacerState() + 52)];
  if (v38)
  {
    v39 = v38;
    sub_1CF7BEE14(0x20uLL);
  }

  v40 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E7298();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1CEFC7000, v41, v42, "🔮 reached maximum downloads allowed", v43, 2u);
    MEMORY[0x1D386CDC0](v43, -1, -1);
  }

  (*(v5 + 8))(v9, v49);
  if (v25[40])
  {
    return 0;
  }

  v44 = *(v25 + 4);
  v45 = *&v4[qword_1EDEBB790];
  result = v44 + v45;
  if (__OFADD__(v44, v45))
  {
    goto LABEL_32;
  }

  result = sub_1CF801B54(result, v47, v48);
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF800A84(uint64_t a1, void *a2, int a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = a1;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, "🔮  refreshing evictedWithOldVersion set", v14, 2u);
    a1 = v19;
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = *(v20 + qword_1EDEBB780);
  return sub_1CF7EA5EC(*(v20 + qword_1EDEBB7A8), a1, a2, a3);
}

uint64_t sub_1CF800C44(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1CF9E5CF8();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v69 - v15;
  v16 = sub_1CF9E64A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = *&v4[qword_1EDEBB780];
  v21 = *(v77 + 64);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  result = (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_45;
  }

  v24 = &v4[*(*v4 + 136)];
  swift_beginAccess();
  v25 = type metadata accessor for BackgroundDownloaderPacerState();
  v26 = *&v24[*(v25 + 52)];
  if (v26)
  {
    v27 = v26;
    sub_1CF7BEE14(1uLL);
  }

  v28 = a2;
  result = sub_1CF8005A0(a1, a2);
  if (v3 || result < 1)
  {
    return result;
  }

  v29 = v77;
  v30 = *(v77 + 80);
  if ((v30 & 0x20000) != 0)
  {
    v31 = a1;
    v70 = sub_1CF800A84(result, a1, v28);
    result = sub_1CF8005A0(a1, v28);
    v30 = *(v29 + 80);
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v70 = 0;
    v31 = a1;
    if ((v30 & 0x1000) == 0)
    {
LABEL_9:
      v69 = 0;
LABEL_10:
      v33 = v75;
      v32 = v76;
      v34 = v74;
      goto LABEL_11;
    }
  }

  if ((v30 & 0x40000) == 0)
  {
    v41 = sub_1CF8E812C(result, v31, v28);
    v42 = __OFADD__(v70, v41);
    v69 = 0;
    v70 += v41;
    if (v42)
    {
      __break(1u);
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if ((v24[57] & 1) == 0)
  {
    if (v24[56])
    {
      v52 = *(v24 + 6);
      if (v52 - 3 < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v52 >= 3)
        {
          v69 = 0;
          v53 = *&v24[*(v25 + 52)];
          if (v53)
          {
            v54 = v53;
            sub_1CF7BEE14(0x40uLL);
          }

          goto LABEL_10;
        }

        goto LABEL_27;
      }
    }

    v55 = result;
    v56 = *(v29 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v57 = swift_dynamicCastClassUnconditional();
    v58 = *(v57 + 16);
    MEMORY[0x1EEE9AC00](v57);
    *(&v69 - 2) = v59;
    *(&v69 - 8) = 85;

    v60 = sub_1CF7D55FC(sub_1CF8F90FC, (&v69 - 4), v31, v28);
    v69 = 0;
    v61 = v60;
    v62 = [v60 next];

    if (v62)
    {
      v63 = fpfs_current_or_default_log();
      v64 = v71;
      sub_1CF9E6128();
      v65 = sub_1CF9E6108();
      v66 = sub_1CF9E7298();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1CEFC7000, v65, v66, "🔮 updateIndexableItems still running, pacing", v67, 2u);
        MEMORY[0x1D386CDC0](v67, -1, -1);
      }

      (*(v72 + 8))(v64, v73);
      goto LABEL_10;
    }

    v68 = v69;
    result = sub_1CF8E812C(v55, v31, v28);
    if (v68)
    {
      return result;
    }

    v42 = __OFADD__(v70, result);
    v69 = 0;
    v70 += result;
    if (!v42)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_27:
  v69 = 0;
  v43 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v44 = sub_1CF9E6108();
  v45 = sub_1CF9E7298();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1CEFC7000, v44, v45, "🔮 unknown indexing barrier, pacing", v46, 2u);
    v47 = v46;
    v29 = v77;
    MEMORY[0x1D386CDC0](v47, -1, -1);
  }

  (*(v72 + 8))(v14, v73);
  v48 = v29 + qword_1EDEBBC78;
  v49 = *(v29 + qword_1EDEBBC78);
  v34 = v74;
  if (v49)
  {
    v50 = *(v48 + 8);

    v49(v51);
    sub_1CEFF7124(v49);
  }

  v33 = v75;
  v32 = v76;
LABEL_11:
  sub_1CF7FC438();
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v36 = v35;
  result = (*(v33 + 8))(v34, v32);
  v37 = v36 * 1000000000.0;
  if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v38 = v69;
  if (v37 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v24 + 1) = v37;
  v24[16] = 0;
  if (v70 < 1)
  {
LABEL_24:
    *v24 = 0;
    v4[72] = 1;
    return sub_1CF802820(v31, v28);
  }

  *v24 = 1;
  v4[72] = 1;
  if (v24[40])
  {
    return sub_1CF802820(v31, v28);
  }

  v39 = *(v24 + 4);
  v40 = *&v4[qword_1EDEBB790];
  result = v39 + v40;
  if (__OFADD__(v39, v40))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  result = sub_1CF801B54(result, v31, v28);
  if (!v38)
  {
    return sub_1CF802820(v31, v28);
  }

  return result;
}

uint64_t sub_1CF80139C()
{
  v1 = qword_1EDEBB788;
  if (*(v0 + qword_1EDEBB788))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      v2 = *(v0 + v1);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v3 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_1EDEBB7C8);
  *(v0 + qword_1EDEBB7C8) = 0;
  result = swift_unknownObjectRelease();
  v6 = v0 + qword_1EDEBB7D8;
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1CF801470()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E7298();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "🔮  disabling scheduler", v10, 2u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = qword_1EDEBB7C0;
  if (*(v1 + qword_1EDEBB7C0) == 1)
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    [qword_1EDEBBC10 removeWatcher_];
    *(v1 + v11) = 0;
  }

  return sub_1CF80139C();
}

uint64_t sub_1CF801628(uint64_t *a1, unsigned int a2)
{
  v3 = v2;
  v36 = a2;
  v35 = a1;
  v37 = sub_1CF9E6118();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v3[qword_1EDEBB780];
  v17 = v16[8];
  *v15 = v17;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v18 = v17;
  LOBYTE(v17) = sub_1CF9E64D8();
  (*(v12 + 8))(v15, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1CF80139C();
  v19 = objc_sync_enter(v16);
  if (v19)
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v35 - 2) = v16;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v35 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v20 = *(v16 + qword_1EDEADAA8);
  v21 = objc_sync_exit(v16);
  if (v21)
  {
    MEMORY[0x1EEE9AC00](v21);
    *(&v35 - 2) = v16;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v35 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v20)
  {
    v22 = &v3[*(*v3 + 136)];
    swift_beginAccess();
    v23 = *&v22[*(type metadata accessor for BackgroundDownloaderPacerState() + 52)];
    if (v23)
    {
      v24 = v23;
      sub_1CF7BEE14(2uLL);
    }

    *v22 = 0;
    v3[72] = 1;
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7298();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "🔮  waiting for disk import to complete", v28, 2u);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    return (*(v4 + 8))(v10, v37);
  }

  v30 = qword_1EDEBB7C0;
  if (v3[qword_1EDEBB7C0])
  {
    if (qword_1EDEAD4D8 == -1)
    {
LABEL_12:
      result = sub_1CEFCB1A0(sub_1CF089FF4, 0);
      if (result != 2 && (result & 1) != 0)
      {
        return sub_1CF800C44(v35, v36);
      }

      return result;
    }

LABEL_22:
    swift_once();
    goto LABEL_12;
  }

  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E7298();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "🔮  waiting for background scheduler", v34, 2u);
    MEMORY[0x1D386CDC0](v34, -1, -1);
  }

  (*(v4 + 8))(v8, v37);
  v3[v30] = 1;
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  return [qword_1EDEBBC10 addWatcher_];
}

uint64_t sub_1CF801B54(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = v3;
  LODWORD(v76) = a3;
  v75 = a2;
  v6 = sub_1CF9E6448();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E73D8();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1CF9E6118();
  v12 = *(v77 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v77);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - v20;
  v22 = sub_1CF9E5CF8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v28 = v27;
  result = (*(v23 + 8))(v26, v22);
  v30 = v28 * 1000000000.0;
  if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = a1 - v30;
  if (__OFSUB__(a1, v30))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v32 = v4 + qword_1EDEBB7D8;
  if ((*(v4 + qword_1EDEBB7D8 + 8) & 1) != 0 || *v32 > a1)
  {
    v33 = *(v4 + qword_1EDEBB7E0);
    v34 = fpfs_current_or_default_log();
    if (v33 < 1)
    {
      v76 = v31;
      sub_1CF9E6128();
      v38 = sub_1CF9E6108();
      v39 = sub_1CF9E7298();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v68 = v40;
        v75 = swift_slowAlloc();
        v78 = a1;
        v79 = v75;
        *v40 = 136446210;
        sub_1CF064F48();
        v41 = sub_1CF9E7F98();
        v43 = sub_1CEFD0DF0(v41, v42, &v79);

        v44 = v68;
        *(v68 + 1) = v43;
        _os_log_impl(&dword_1CEFC7000, v38, v39, "🔮  pacing scheduler until %{public}s", v44, 0xCu);
        v45 = v75;
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1D386CDC0](v45, -1, -1);
        MEMORY[0x1D386CDC0](v44, -1, -1);
      }

      (*(v12 + 8))(v16, v77);
      sub_1CF80139C();
      *v32 = a1;
      *(v32 + 8) = 0;
      v46 = *(v4 + qword_1EDEBB7E8);
      v47 = *(v4 + qword_1EDEBB7E8 + 8);
      sub_1CF9E6978();
      v48 = os_transaction_create();

      v49 = *(v4 + qword_1EDEBB7C8);
      *(v4 + qword_1EDEBB7C8) = v48;
      swift_unknownObjectRelease();
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v50 = *(*(v4 + qword_1EDEBB780) + 64);
      v79 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
      sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
      v52 = v69;
      v53 = v71;
      sub_1CF9E77B8();
      v54 = sub_1CF9E73E8();

      (*(v70 + 8))(v52, v53);
      v55 = qword_1EDEBB788;
      v56 = *(v4 + qword_1EDEBB788);
      *(v4 + qword_1EDEBB788) = v54;
      swift_unknownObjectRelease();
      swift_getObjectType();
      v57 = swift_allocObject();
      swift_weakInit();
      swift_unknownObjectRetain();

      v58 = v72;
      sub_1CF042F9C();
      sub_1CEFD5828(0, v58, sub_1CF8F92FC, v57);
      swift_unknownObjectRelease();

      (*(v73 + 8))(v58, v74);

      if (*(v4 + v55))
      {
        v59 = *(v4 + v55);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v60 = dispatch_time(0x8000000000000000, 0);
        v61 = dispatch_time(v60, v76);
        sub_1CF4FBB4C(v61);
        result = swift_unknownObjectRelease();
        if (*(v4 + v55))
        {
          v62 = *(v4 + v55);
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7428();
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1CF9E6128();
      v35 = sub_1CF9E6108();
      v36 = sub_1CF9E7298();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1CEFC7000, v35, v36, "🔮  pacing scheduler timer bypassed", v37, 2u);
        MEMORY[0x1D386CDC0](v37, -1, -1);
      }

      (*(v12 + 8))(v19, v77);
      return sub_1CF801628(v75, v76);
    }
  }

  else
  {
    v63 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v64 = sub_1CF9E6108();
    v65 = sub_1CF9E7298();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1CEFC7000, v64, v65, "🔮  pacer already registered", v66, 2u);
      MEMORY[0x1D386CDC0](v66, -1, -1);
    }

    return (*(v12 + 8))(v21, v77);
  }

  return result;
}

uint64_t sub_1CF8023A0()
{
  v0 = sub_1CF9E6118();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1CF80139C();
    v4 = *(v3 + qword_1EDEBB780);

    sub_1CF7FC814("timerRefresh(nextRefreshDate:with:)", 0x23uLL, 2, sub_1CF8F9304, v3);
  }

  return result;
}

uint64_t sub_1CF80262C(uint64_t *a1, unsigned int a2)
{
  v3 = v2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v12 = v11;
  result = (*(v7 + 8))(v10, v6);
  v14 = v12 * 1000000000.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v3 + *(*v3 + 136);
  result = swift_beginAccess();
  if (*(v15 + 16))
  {
    return sub_1CF801628(a1, a2);
  }

  v16 = v14;
  v17 = *(v15 + 8);
  if (v17 >= v14)
  {
    return sub_1CF801628(a1, a2);
  }

  v18 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    goto LABEL_15;
  }

  v19 = *(v3 + qword_1EDEBB7B8);
  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (!v20)
  {
    if (v21 >= 1)
    {
      result = v17 + v19;
      if (!__OFADD__(v17, v19))
      {
        return sub_1CF801B54(result, a1, a2);
      }

      goto LABEL_17;
    }

    return sub_1CF801628(a1, a2);
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1CF802820(uint64_t *a1, unsigned int a2)
{
  v3 = v2;
  v60 = a2;
  v59 = a1;
  v63 = sub_1CF9E6118();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v63);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*(v3 + qword_1EDEBB780) + 64);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  v22 = sub_1CF9E64D8();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v23 = [objc_allocWithZone(FPLoggerScope) init];
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = v23;
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    v30 = [v25 enter];
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&dword_1CEFC7000, v26, v27, "%{public}@ 🔮  reevaluating speculative scheduler state", v28, 0xCu);
    sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);
  }

  v31 = *(v4 + 8);
  v32 = v63;
  v61 = v4 + 8;
  v31(v14, v63);
  v33 = *(*v3 + 136);
  swift_beginAccess();
  if (*(v3 + v33) != 1)
  {
    sub_1CF801470();
    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v45 = v25;
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E7298();

    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_16;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = [v45 leave];
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "%{public}@", v48, 0xCu);
    goto LABEL_14;
  }

  v34 = v62;
  sub_1CF80262C(v59, v60);
  if (!v34)
  {
    v51 = fpfs_current_or_default_log();
    v52 = v57;
    sub_1CF9E6128();
    v53 = v25;
    v46 = sub_1CF9E6108();
    v54 = sub_1CF9E7298();

    if (!os_log_type_enabled(v46, v54))
    {
      v12 = v52;
      goto LABEL_16;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v55 = [v53 leave];
    *(v48 + 4) = v55;
    *v49 = v55;
    _os_log_impl(&dword_1CEFC7000, v46, v54, "%{public}@", v48, 0xCu);
    v12 = v57;
LABEL_14:
    sub_1CEFCCC44(v49, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v49, -1, -1);
    MEMORY[0x1D386CDC0](v48, -1, -1);
LABEL_16:

    v31(v12, v32);
    return;
  }

  v35 = fpfs_current_or_default_log();
  v36 = v58;
  sub_1CF9E6128();
  v37 = v25;
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7298();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    v42 = [v37 leave];
    *(v40 + 4) = v42;
    *v41 = v42;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "%{public}@", v40, 0xCu);
    sub_1CEFCCC44(v41, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    v43 = v40;
    v32 = v63;
    MEMORY[0x1D386CDC0](v43, -1, -1);
  }

  v31(v36, v32);
}

uint64_t sub_1CF802EB8()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for BackgroundDownloaderPacerState() + 52));
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_sync_enter(v3);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v17 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v16, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v5 = [v3 hourlyValues];
  if (v5)
  {
    v19 = v2;
    v20 = v3;
    v18 = v5;
    v28 = sub_1CF9E7208();
    sub_1CF9E7228();
    sub_1CEFCCCA4(&qword_1EDEA3710, MEMORY[0x1E6969E78]);
    sub_1CF9E7618();
    if (*(&v25 + 1))
    {
      v6 = 0;
      v7 = &qword_1EDEAED20;
      v8 = 0x1E696AD98;
      v9 = MEMORY[0x1E69E7CA0];
      do
      {
        v23[0] = v24[2];
        v23[1] = v25;
        v24[0] = v26;
        v24[1] = v27;
        sub_1CEFD1104(v24, v22);
        sub_1CEFD57E0(0, v7, v8);
        if (swift_dynamicCast())
        {
          v10 = v9;
          v11 = v8;
          v12 = v7;
          v13 = [v21 integerValue];

          v6 |= v13;
          v7 = v12;
          v8 = v11;
          v9 = v10;
        }

        sub_1CEFCCC44(v23, &qword_1EC4C5058, &unk_1CFA181F0);
        sub_1CF9E7618();
      }

      while (*(&v25 + 1));
    }

    else
    {
      v6 = 0;
    }

    v3 = v20;
  }

  else
  {
    v6 = 0;
  }

  v14 = objc_sync_exit(v3);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v17 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v16, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

void sub_1CF8031D4(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t *a7)
{
  v11 = *(a3 + 16);
  sub_1CF7EB934(a1, a2, a4, a5, __src);
  if (!v7)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v17, __src, sizeof(v17));
LABEL_7:
      sub_1CEFCCC44(v17, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CF6E9500(v17, a1, a2);
      return;
    }

    memcpy(v17, __src, sizeof(v17));
    if (!v17[31])
    {
      goto LABEL_7;
    }

    if (LOBYTE(v17[43]) == 2)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BFC20, &unk_1CFA0A290);
    }

    else
    {
      v12 = *a7;
      v13 = v17[31];

      v14 = sub_1CF7DC6AC(v13, v12);

      if (v14)
      {
        v15 = sub_1CF8DD5B4();
        sub_1CEFCCC44(v17, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        sub_1CF6E9500(v16, a1, a2);
        sub_1CEFCCC44(v17, &unk_1EC4BFC20, &unk_1CFA0A290);
      }
    }
  }
}

uint64_t sub_1CF803380(uint64_t a1, uint64_t a2, char a3)
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1CF9E7948();
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA44450);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA44470);
  v15 = 40;
  v16 = 0xE100000000000000;
  v11 = &unk_1F4BED2B0;
  v12 = sub_1CF067ADC;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v5 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA44490);
  v6 = qword_1CFA18460[a3];
  v14 = MEMORY[0x1E69E6530];
  v11 = v6;
  v7 = sub_1CEFF8EA0(&v11);
  v9 = v8;
  sub_1CEFCCC44(&v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v9)
  {
    MEMORY[0x1D3868CC0](v7, v9);

    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return v17;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8035F0()
{
  v1 = sub_1CF9E64A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 64);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1CF9E64D8();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v11 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
    if (v11)
    {
      v12 = v11 + *(*v11 + 136);
      swift_beginAccess();
      result = *(v12 + 48);
      v13 = *(v12 + 56);
      v14 = *(v12 + 57);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF80378C(uint64_t a1, unsigned int a2)
{
  v5 = sub_1CF9E64A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 64);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1CF9E64D8();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v14 = *(v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    result = swift_dynamicCastClassUnconditional();
    v15 = *(*(result + 32) + qword_1EDEBBB18);
    if (v15)
    {
      v16 = &v15[*(*v15 + 136)];
      result = swift_beginAccess();
      v17 = *(v16 + 6);
      v18 = v16[56];
      v19 = v16[57];
      *(v16 + 6) = a1;
      v16[56] = a2;
      v16[57] = BYTE1(a2) & 1;
      v15[72] = 1;
      if ((((a2 >> 8) & 1) != 0 || (a2 & 1) == 0 || (a1 - 3) >= 0xFFFFFFFFFFFFFFFELL) && ((v19 & 1) != 0 || (v18 & 1) != 0 && (v17 - 3) < 0xFFFFFFFFFFFFFFFELL))
      {
        v20 = *(v2 + qword_1EDEBBDB0);

        sub_1CF801628(v20, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF803A54(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t (*a8)@<X0>(_BYTE *a1@<X8>))
{
  v82 = a7;
  v83 = a8;
  v97 = a6;
  v86 = a3;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = (&v69 - v21);
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + qword_1EDEBBC38);
  v26 = fpfs_adopt_log();
  v80 = a2;
  v70 = v26;
  if (a2)
  {
    if (a2 == 1 && *(a1 + qword_1EC4EBCD0))
    {
      v27 = *(a1 + qword_1EC4EBCD0 + 8);
      v74 = "DB queue ro slow wait";
      v73 = 21;
      v76 = 16;
      v28 = "DB queue ro slow";
      goto LABEL_8;
    }
  }

  else if (*(a1 + qword_1EC4EBCD8))
  {
    v27 = *(a1 + qword_1EC4EBCD8 + 8);
    v74 = "DB queue ro fast wait";
    v73 = 21;
    v76 = 16;
    v28 = "DB queue ro fast";
    goto LABEL_8;
  }

  v27 = *(a1 + 64);
  v74 = "DB queue wait";
  v73 = 13;
  v76 = 8;
  v28 = "DB queue";
LABEL_8:
  v75 = v28;
  v87 = v27;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDEBBE40;
  v30 = v85;
  (*(v13 + 56))(v85, 1, 1, v12);
  aBlock = 0x61657220636E7973;
  v89 = 0xEA00000000002064;
  v79 = a4;
  v81 = a5;
  v31 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v31);

  v72 = aBlock;
  v71 = v89;
  sub_1CEFCCBDC(v30, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v32 = *(v13 + 48);
  v33 = v32(v19, 1, v12);
  v78 = a1;
  if (v33 == 1)
  {
    v34 = v29;
    v35 = v77;
    sub_1CF9E6048();
    v36 = v35;
    if (v32(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v36 = v77;
    (*(v13 + 32))(v77, v19, v12);
  }

  v37 = v84;
  (*(v13 + 16))(v84, v36, v12);
  *(v37 + *(v22 + 20)) = v29;
  v38 = v37 + *(v22 + 24);
  v39 = v73;
  *v38 = v74;
  *(v38 + 8) = v39;
  v77 = v12;
  *(v38 + 16) = 2;
  v40 = v29;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CEFD51C4();
  v42 = v71;
  *(v41 + 32) = v72;
  *(v41 + 40) = v42;
  v67 = v41;
  LOBYTE(v66) = 2;
  v65 = 2;
  sub_1CF9E6028();

  (*(v13 + 8))(v36, v77);
  v43 = sub_1CEFCCC44(v85, &unk_1EC4BED20, &unk_1CFA00700);
  v85 = &v69;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v75;
  v44 = v76;
  *(&v69 - 12) = v37;
  *(&v69 - 11) = v45;
  *(&v69 - 10) = v44;
  *(&v69 - 72) = 2;
  v46 = v79;
  *(&v69 - 8) = v86;
  *(&v69 - 7) = v46;
  *(&v69 - 48) = v81;
  *(&v69 - 5) = v78;
  LOBYTE(v65) = v80;
  v66 = v82;
  v67 = v83;
  v47 = fpfs_current_log();
  v48 = fpfs_adopt_log();
  v49 = v48;
  v95 = 0;
  v96 = 1;
  v50 = "syncRead(quiet:function:mode:block:)";
  if ((v97 & 1) == 0)
  {
    aBlock = sub_1CF9E73C8();
    v89 = v51;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v52 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v52);

    sub_1CF9E6978();

    v53 = __fp_log_fork();

    v95 = v53;
    v96 = 0;
  }

  MEMORY[0x1EEE9AC00](v48);
  *(&v69 - 8) = v47;
  *(&v69 - 7) = &v95;
  v54 = v87;
  *(&v69 - 6) = v87;
  *(&v69 - 5) = "syncRead(quiet:function:mode:block:)";
  v65 = 36;
  LOBYTE(v66) = 2;
  v67 = sub_1CF8F9A6C;
  v68 = &v69 - 14;
  v98 = 2;
  v94 = 0;
  v55 = swift_allocObject();
  v55[2] = &v98;
  v55[3] = sub_1CF903370;
  v55[4] = &v69 - 10;
  v55[5] = &v94;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1CF903480;
  *(v56 + 24) = v55;
  v92 = sub_1CF1C0B54;
  v93 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1CEFFD02C;
  v91 = &block_descriptor_2173;
  v57 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v54, v57);
  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  else
  {
    if (v94)
    {
      swift_willThrow();

      v59 = fpfs_adopt_log();

      sub_1CEFD5338(v84, type metadata accessor for Signpost);
      v60 = v70;
      v61 = fpfs_adopt_log();

      return v50 & 1;
    }

    LOBYTE(v50) = v98;
    if (v98 != 2)
    {

      v62 = fpfs_adopt_log();

      sub_1CEFD5338(v84, type metadata accessor for Signpost);
      v63 = v70;
      v64 = fpfs_adopt_log();

      return v50 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF804374(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t (*a8)@<X0>(uint64_t a1@<X8>))
{
  v78 = a7;
  v79 = a8;
  v93 = a6;
  v82 = a3;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v66[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v66[-v21];
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v66[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(a1 + qword_1EDEBBC38);
  v26 = fpfs_adopt_log();
  v76 = a2;
  v67 = v26;
  if (a2)
  {
    if (a2 == 1 && *(a1 + qword_1EC4EBCD0))
    {
      v27 = *(a1 + qword_1EC4EBCD0 + 8);
      v70 = "DB queue ro slow wait";
      v28 = 21;
      v72 = 16;
      v29 = "DB queue ro slow";
      goto LABEL_8;
    }
  }

  else if (*(a1 + qword_1EC4EBCD8))
  {
    v27 = *(a1 + qword_1EC4EBCD8 + 8);
    v70 = "DB queue ro fast wait";
    v28 = 21;
    v72 = 16;
    v29 = "DB queue ro fast";
    goto LABEL_8;
  }

  v27 = *(a1 + 64);
  v70 = "DB queue wait";
  v28 = 13;
  v72 = 8;
  v29 = "DB queue";
LABEL_8:
  v71 = v29;
  v74 = a1;
  v83 = v27;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBBE40;
  v31 = v81;
  (*(v13 + 56))(v81, 1, 1, v12);
  aBlock = 0x61657220636E7973;
  v85 = 0xEA00000000002064;
  v75 = a4;
  v77 = a5;
  v32 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v32);

  v69 = aBlock;
  v68 = v85;
  sub_1CEFCCBDC(v31, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v33 = *(v13 + 48);
  if (v33(v19, 1, v12) == 1)
  {
    v34 = v30;
    v35 = v73;
    sub_1CF9E6048();
    v36 = v35;
    if (v33(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v36 = v73;
    (*(v13 + 32))(v73, v19, v12);
  }

  v37 = v80;
  (*(v13 + 16))(v80, v36, v12);
  *&v37[*(v22 + 20)] = v30;
  v38 = &v37[*(v22 + 24)];
  *v38 = v70;
  *(v38 + 1) = v28;
  v38[16] = 2;
  v39 = v30;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA450;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1CEFD51C4();
  v41 = v68;
  *(v40 + 32) = v69;
  *(v40 + 40) = v41;
  v64 = v40;
  LOBYTE(v63) = 2;
  v62 = 2;
  sub_1CF9E6028();

  (*(v13 + 8))(v36, v12);
  v42 = sub_1CEFCCC44(v81, &unk_1EC4BED20, &unk_1CFA00700);
  v81 = v66;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v71;
  v43 = v72;
  *&v66[-96] = v37;
  *&v66[-88] = v44;
  *&v66[-80] = v43;
  v66[-72] = 2;
  v45 = v75;
  *&v66[-64] = v82;
  *&v66[-56] = v45;
  v66[-48] = v77;
  *&v66[-40] = v74;
  LOBYTE(v62) = v76;
  v63 = v78;
  v64 = v79;
  v46 = fpfs_current_log();
  v47 = fpfs_adopt_log();
  v48 = v47;
  v91 = 0;
  v92 = 1;
  if ((v93 & 1) == 0)
  {
    aBlock = sub_1CF9E73C8();
    v85 = v49;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v50 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v50);

    sub_1CF9E6978();

    v51 = __fp_log_fork();

    v91 = v51;
    v92 = 0;
  }

  MEMORY[0x1EEE9AC00](v47);
  *&v66[-64] = v46;
  *&v66[-56] = &v91;
  v52 = v83;
  *&v66[-48] = v83;
  *&v66[-40] = "syncRead(quiet:function:mode:block:)";
  v62 = 36;
  LOBYTE(v63) = 2;
  v64 = sub_1CF8F9A24;
  v65 = &v66[-112];
  v94 = 1;
  v90 = 0;
  v53 = swift_allocObject();
  v53[2] = &v94;
  v53[3] = sub_1CF2BA13C;
  v53[4] = &v66[-80];
  v53[5] = &v90;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1CF2BA170;
  *(v54 + 24) = v53;
  v88 = sub_1CF1C0B54;
  v89 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1CEFFD02C;
  v87 = &block_descriptor_2161;
  v55 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v52, v55);
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v90)
    {
      swift_willThrow();

      v56 = fpfs_adopt_log();

      sub_1CEFD5338(v80, type metadata accessor for Signpost);
      v57 = v67;
      v58 = fpfs_adopt_log();

      return;
    }

    if ((v94 & 1) == 0)
    {

      v59 = fpfs_adopt_log();

      sub_1CEFD5338(v80, type metadata accessor for Signpost);
      v60 = v67;
      v61 = fpfs_adopt_log();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1CF804C70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t (*a8)@<X0>(uint64_t *a1@<X8>))
{
  v79 = a7;
  v80 = a8;
  v81 = a6;
  v84 = a3;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v67[-v21];
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v67[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(a1 + qword_1EDEBBC38);
  v26 = fpfs_adopt_log();
  v77 = a2;
  v68 = v26;
  if (a2)
  {
    if (a2 == 1 && *(a1 + qword_1EC4EBCD0))
    {
      v27 = *(a1 + qword_1EC4EBCD0 + 8);
      v71 = "DB queue ro slow wait";
      v28 = 21;
      v73 = 16;
      v29 = "DB queue ro slow";
      goto LABEL_8;
    }
  }

  else if (*(a1 + qword_1EC4EBCD8))
  {
    v27 = *(a1 + qword_1EC4EBCD8 + 8);
    v71 = "DB queue ro fast wait";
    v28 = 21;
    v73 = 16;
    v29 = "DB queue ro fast";
    goto LABEL_8;
  }

  v27 = *(a1 + 64);
  v71 = "DB queue wait";
  v28 = 13;
  v73 = 8;
  v29 = "DB queue";
LABEL_8:
  v72 = v29;
  v75 = a1;
  v85 = v27;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBBE40;
  v31 = v83;
  (*(v13 + 56))(v83, 1, 1, v12);
  aBlock = 0x61657220636E7973;
  v87 = 0xEA00000000002064;
  v76 = a4;
  v78 = a5;
  v32 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v32);

  v70 = aBlock;
  v69 = v87;
  sub_1CEFCCBDC(v31, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v33 = *(v13 + 48);
  if (v33(v19, 1, v12) == 1)
  {
    v34 = v30;
    v35 = v74;
    sub_1CF9E6048();
    v36 = v35;
    if (v33(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v36 = v74;
    (*(v13 + 32))(v74, v19, v12);
  }

  v37 = v82;
  (*(v13 + 16))(v82, v36, v12);
  *&v37[*(v22 + 20)] = v30;
  v38 = &v37[*(v22 + 24)];
  *v38 = v71;
  *(v38 + 1) = v28;
  v38[16] = 2;
  v39 = v30;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA450;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1CEFD51C4();
  v41 = v69;
  *(v40 + 32) = v70;
  *(v40 + 40) = v41;
  v65 = v40;
  LOBYTE(v64) = 2;
  v63 = 2;
  sub_1CF9E6028();

  (*(v13 + 8))(v36, v12);
  v42 = sub_1CEFCCC44(v83, &unk_1EC4BED20, &unk_1CFA00700);
  v83 = v67;
  MEMORY[0x1EEE9AC00](v42);
  v43 = v72;
  *&v67[-96] = v37;
  *&v67[-88] = v43;
  *&v67[-80] = v73;
  v67[-72] = 2;
  v44 = v76;
  *&v67[-64] = v84;
  *&v67[-56] = v44;
  v67[-48] = v78;
  *&v67[-40] = v75;
  LOBYTE(v63) = v77;
  v64 = v79;
  v65 = v80;
  v45 = fpfs_current_log();
  v46 = fpfs_adopt_log();
  v47 = v46;
  v94 = 0;
  v95 = 1;
  if ((v81 & 1) == 0)
  {
    aBlock = sub_1CF9E73C8();
    v87 = v48;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v49 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v49);

    sub_1CF9E6978();

    v50 = __fp_log_fork();

    v94 = v50;
    v95 = 0;
  }

  MEMORY[0x1EEE9AC00](v46);
  *&v67[-64] = v45;
  *&v67[-56] = &v94;
  v51 = v85;
  *&v67[-48] = v85;
  *&v67[-40] = "syncRead(quiet:function:mode:block:)";
  v63 = 36;
  LOBYTE(v64) = 2;
  v65 = sub_1CF8FF198;
  v66 = &v67[-112];
  v92 = 0;
  v93 = 1;
  v96 = 0;
  v52 = swift_allocObject();
  v52[2] = &v92;
  v52[3] = sub_1CF8FF208;
  v52[4] = &v67[-80];
  v52[5] = &v96;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1CF8FF248;
  *(v53 + 24) = v52;
  v90 = sub_1CF1C0B54;
  v91 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_1CEFFD02C;
  v89 = &block_descriptor_4860;
  v54 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v51, v54);
  _Block_release(v54);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v96)
    {
      swift_willThrow();

      v57 = fpfs_adopt_log();

      sub_1CEFD5338(v82, type metadata accessor for Signpost);
      v58 = v68;
      v59 = fpfs_adopt_log();

      return isEscapingClosureAtFileLocation;
    }

    if ((v93 & 1) == 0)
    {
      isEscapingClosureAtFileLocation = v92;

      v60 = fpfs_adopt_log();

      sub_1CEFD5338(v82, type metadata accessor for Signpost);
      v61 = v68;
      v62 = fpfs_adopt_log();

      return isEscapingClosureAtFileLocation;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF805594(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t (*a8)@<X0>(uint64_t *a1@<X8>))
{
  v84 = a7;
  v85 = a8;
  v86 = a6;
  v89 = a3;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v72[-v21];
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = a1;
  v26 = *(a1 + qword_1EDEBBC38);
  v27 = fpfs_adopt_log();
  v82 = a2;
  v73 = v27;
  if (a2)
  {
    if (a2 == 1 && *(v90 + qword_1EC4EBCD0))
    {
      v28 = *(v90 + qword_1EC4EBCD0 + 8);
      v77 = "DB queue ro slow wait";
      v76 = 21;
      v79 = 16;
      v29 = "DB queue ro slow";
      goto LABEL_8;
    }
  }

  else if (*(v90 + qword_1EC4EBCD8))
  {
    v28 = *(v90 + qword_1EC4EBCD8 + 8);
    v77 = "DB queue ro fast wait";
    v76 = 21;
    v79 = 16;
    v29 = "DB queue ro fast";
    goto LABEL_8;
  }

  v28 = *(v90 + 64);
  v77 = "DB queue wait";
  v76 = 13;
  v79 = 8;
  v29 = "DB queue";
LABEL_8:
  v78 = v29;
  v30 = a5;
  v87 = v25;
  v91 = v28;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDEBBE40;
  v32 = v88;
  (*(v13 + 56))(v88, 1, 1, v12);
  aBlock = 0x61657220636E7973;
  v93 = 0xEA00000000002064;
  v81 = a4;
  v83 = v30;
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v75 = aBlock;
  v74 = v93;
  sub_1CEFCCBDC(v32, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(v13 + 48);
  if (v34(v19, 1, v12) == 1)
  {
    v35 = v13;
    v36 = v31;
    v37 = v80;
    sub_1CF9E6048();
    v38 = v37;
    v39 = v12;
    if (v34(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v35 = v13;
    v38 = v80;
    (*(v13 + 32))(v80, v19, v12);
    v39 = v12;
  }

  v40 = v35;
  v41 = v87;
  (*(v35 + 16))(v87, v38, v39);
  *(v41 + *(v22 + 20)) = v31;
  v42 = v41 + *(v22 + 24);
  v43 = v76;
  *v42 = v77;
  *(v42 + 8) = v43;
  *(v42 + 16) = 2;
  v44 = v31;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA450;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1CEFD51C4();
  v46 = v74;
  *(v45 + 32) = v75;
  *(v45 + 40) = v46;
  v70 = v45;
  LOBYTE(v69) = 2;
  v68 = 2;
  sub_1CF9E6028();

  (*(v40 + 8))(v38, v39);
  v47 = sub_1CEFCCC44(v88, &unk_1EC4BED20, &unk_1CFA00700);
  v88 = v72;
  MEMORY[0x1EEE9AC00](v47);
  v48 = v78;
  *&v72[-96] = v41;
  *&v72[-88] = v48;
  *&v72[-80] = v79;
  v72[-72] = 2;
  v49 = v81;
  *&v72[-64] = v89;
  *&v72[-56] = v49;
  v72[-48] = v83;
  *&v72[-40] = v90;
  LOBYTE(v68) = v82;
  v69 = v84;
  v70 = v85;
  v50 = fpfs_current_log();
  v51 = fpfs_adopt_log();
  v52 = v51;
  v99 = 0;
  v100 = 1;
  if ((v86 & 1) == 0)
  {
    aBlock = sub_1CF9E73C8();
    v93 = v53;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v54 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v54);

    sub_1CF9E6978();

    v55 = __fp_log_fork();

    v99 = v55;
    v100 = 0;
  }

  MEMORY[0x1EEE9AC00](v51);
  *&v72[-64] = v50;
  *&v72[-56] = &v99;
  v56 = v91;
  *&v72[-48] = v91;
  *&v72[-40] = "syncRead(quiet:function:mode:block:)";
  v68 = 36;
  LOBYTE(v69) = 2;
  v70 = sub_1CF8FF0CC;
  v71 = &v72[-112];
  v101 = 1;
  v98 = 0;
  v57 = swift_allocObject();
  v57[2] = &v101;
  v57[3] = sub_1CF8F0E84;
  v57[4] = &v72[-80];
  v57[5] = &v98;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1CF8FF184;
  *(v58 + 24) = v57;
  v96 = sub_1CF1C0B54;
  v97 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = sub_1CEFFD02C;
  v95 = &block_descriptor_4844;
  v59 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v56, v59);
  _Block_release(v59);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v98)
    {
      swift_willThrow();
      sub_1CF7447EC(v101);

      v62 = fpfs_adopt_log();

      sub_1CEFD5338(v87, type metadata accessor for Signpost);
      v63 = v73;
      v64 = fpfs_adopt_log();

      return isEscapingClosureAtFileLocation;
    }

    isEscapingClosureAtFileLocation = v101;
    if (v101 != 1)
    {

      v65 = fpfs_adopt_log();

      sub_1CEFD5338(v87, type metadata accessor for Signpost);
      v66 = v73;
      v67 = fpfs_adopt_log();

      return isEscapingClosureAtFileLocation;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF805EF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, void (*a10)(char *__return_ptr, id *), uint64_t a11)
{
  v50 = a8;
  LODWORD(v46) = a7;
  v45 = a6;
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v48 = a10;
  v49 = a11;
  v47 = a9;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for Signpost(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v27 = *(v23 + 24);
  v28 = *(a1 + *(v23 + 20));
  v29 = *(a1 + v27);
  v30 = *(a1 + v27 + 8);
  v31 = *(a1 + v27 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDEBBE40;
  (*(v13 + 56))(v22, 1, 1, v12);
  v54 = 0x61657220636E7973;
  v55 = 0xEA00000000002064;
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v44 = v55;
  v45 = v54;
  v46 = v22;
  sub_1CEFCCBDC(v22, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(v13 + 48);
  if (v34(v19, 1, v12) == 1)
  {
    v35 = v32;
    sub_1CF9E6048();
    if (v34(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v56, v19, v12);
  }

  (*(v13 + 16))(v26, v56, v12);
  *&v26[*(v23 + 20)] = v32;
  v36 = &v26[*(v23 + 24)];
  v37 = v52;
  *v36 = v51;
  *(v36 + 1) = v37;
  v36[16] = v53;
  v38 = v32;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CF9FA450;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1CEFD51C4();
  v40 = v44;
  *(v39 + 32) = v45;
  *(v39 + 40) = v40;
  sub_1CF9E6028();

  (*(v13 + 8))(v56, v12);
  sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v41 = sub_1CF3C7D54(v47, v50, v48, v49);
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5338(v26, type metadata accessor for Signpost);
  return v41 & 1;
}

uint64_t sub_1CF806398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, void (*a10)(id *), uint64_t a11)
{
  v49 = a7;
  LODWORD(v44) = a6;
  v43 = a5;
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v46 = a8;
  v47 = a10;
  v48 = a11;
  v45 = a9;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = type metadata accessor for Signpost(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v27 = *(v23 + 24);
  v28 = *(a1 + *(v23 + 20));
  v29 = *(a1 + v27);
  v30 = *(a1 + v27 + 8);
  v31 = *(a1 + v27 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDEBBE40;
  (*(v13 + 56))(v22, 1, 1, v12);
  v53 = 0x61657220636E7973;
  v54 = 0xEA00000000002064;
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v42 = v54;
  v43 = v53;
  v44 = v22;
  sub_1CEFCCBDC(v22, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(v13 + 48);
  if (v34(v19, 1, v12) == 1)
  {
    v35 = v32;
    sub_1CF9E6048();
    if (v34(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v55, v19, v12);
  }

  (*(v13 + 16))(v26, v55, v12);
  *&v26[*(v23 + 20)] = v32;
  v36 = &v26[*(v23 + 24)];
  v37 = v51;
  *v36 = v50;
  *(v36 + 1) = v37;
  v36[16] = v52;
  v38 = v32;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CF9FA450;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1CEFD51C4();
  v40 = v42;
  *(v39 + 32) = v43;
  *(v39 + 40) = v40;
  sub_1CF9E6028();

  (*(v13 + 8))(v55, v12);
  sub_1CEFCCC44(v44, &unk_1EC4BED20, &unk_1CFA00700);
  sub_1CF3C78FC(v45, v49, v47);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5338(v26, type metadata accessor for Signpost);
}

uint64_t sub_1CF806838(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, uint64_t, uint64_t, uint64_t))
{
  v51 = a8;
  LODWORD(v46) = a7;
  v45 = a6;
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v49 = a11;
  v50 = a12;
  v48 = a10;
  v47 = a9;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v28 = *(v24 + 24);
  v29 = *(a1 + *(v24 + 20));
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  v32 = *(a1 + v28 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDEBBE40;
  (*(v14 + 56))(v23, 1, 1, v13);
  v55 = 0x61657220636E7973;
  v56 = 0xEA00000000002064;
  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  v44 = v56;
  v45 = v55;
  v46 = v23;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v14 + 48);
  if (v35(v20, 1, v13) == 1)
  {
    v36 = v33;
    sub_1CF9E6048();
    if (v35(v20, 1, v13) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v14 + 32))(v57, v20, v13);
  }

  (*(v14 + 16))(v27, v57, v13);
  *&v27[*(v24 + 20)] = v33;
  v37 = &v27[*(v24 + 24)];
  v38 = v53;
  *v37 = v52;
  *(v37 + 1) = v38;
  v37[16] = v54;
  v39 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA450;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1CEFD51C4();
  v41 = v44;
  *(v40 + 32) = v45;
  *(v40 + 40) = v41;
  sub_1CF9E6028();

  (*(v14 + 8))(v57, v13);
  sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v42 = v50(v47, v51, v48, v49);
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5338(v27, type metadata accessor for Signpost);
  return v42;
}

void sub_1CF806CE8(void *a1, void *a2, void *a3)
{
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = *(v3 + qword_1EC4EBCD0);
  if (v11)
  {
    v12 = *(v3 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v3 + qword_1EC4EBCD0), v12);
    v22[0] = v11;
    sub_1CF1FD6F8(v11, v12);
    if ((*(v3 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v13);
      v22[-4] = v3;
      v22[-3] = a1;
      v22[-2] = a2;
      v22[-1] = a3;
      v20 = objc_autoreleasePoolPush();
      sub_1CF804374(v3, 1, "copyDatabase(to:completionHandler:)", 35, 2, 0, sub_1CF90216C, &v22[-6]);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v14 = sub_1CF9E5928();
      v15 = [v22[0] backupToURL:v14 progress:0];

      if (v15)
      {
        (a2)(0);
      }

      else
      {
        v21 = [v22[0] lastError];
        (a2)();
      }
    }
  }

  else
  {
    v16 = *(v3 + 64);
    (*(v8 + 16))(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
    v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    (*(v8 + 32))(v18 + v17, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v19 = (v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v19 = a2;
    v19[1] = a3;

    sub_1CF01001C(0, "copyDatabase(to:completionHandler:)", 35, 2, sub_1CF90218C, v18);
  }
}

void sub_1CF806FE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v11 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v12 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388);
  sub_1CF48559C(a3, v8, a4, a5, v9, v10, v6, v11, v12, v7);
}

void sub_1CF8070F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + qword_1EDEBBDB0);
  v5 = sub_1CF9E5928();
  v6 = [v4 backupToURL:v5 progress:0];

  if (v6)
  {
    (a3)(0);
    v7 = v4;
  }

  else
  {
    v7 = [v4 lastError];
    a3();
  }
}

uint64_t sub_1CF8071DC()
{
  if ((*(v0 + 82) & 4) == 0)
  {
    return 0;
  }

  v1 = *(*(v0 + 40) + 16);
  v2 = *(v1 + 144);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 144);

  v4 = sub_1CF385DE4();
  if ((v5 & 1) != 0 || *(v2 + qword_1EDEBB6E0) < v4)
  {

    return 0;
  }

  v7 = *(v0 + qword_1EDEBBD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9E0, &unk_1CFA03F70);
  sub_1CF9E7398();

  v8 = v11;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == 2)
  {
    v9 = 0;
  }

  if ((v11 - 1) <= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v12)
  {
    v8 = v10;
  }

  if (v13)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void *sub_1CF807310()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = *&v0[qword_1EDEADB30];
  v3 = v2;
  v4 = objc_sync_exit(v0);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF807404()
{
  v1 = v0;
  v2 = objc_sync_enter(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v12 = v0;
    goto LABEL_16;
  }

  v3 = qword_1EDEADAA8;
  v4 = v0[qword_1EDEADAA8];
  result = objc_sync_exit(v1);
  if (result)
  {
    goto LABEL_17;
  }

  if ((v4 & 1) == 0)
  {
    return result;
  }

  v6 = qword_1EDEBBCB8;
  if (*&v1[qword_1EDEBBCB8])
  {
    v7 = *&v1[qword_1EDEBBCB8];

    sub_1CF4703B8();
    sub_1CF7F4240();

    v8 = *&v1[v6];
  }

  *&v1[v6] = 0;

  v9 = objc_sync_enter(v1);
  if (v9)
  {
    goto LABEL_15;
  }

  v10 = *&v1[qword_1EDEADB40];
  result = objc_sync_exit(v1);
  if (result)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](result);
    v12 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  [v10 removeWatcher_];

  v9 = objc_sync_enter(v1);
  if (v9)
  {
LABEL_15:
    MEMORY[0x1EEE9AC00](v9);
    v12 = v1;
LABEL_16:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v1[v3] = 0;
  result = objc_sync_exit(v1);
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1CF8076A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  if ((*(v1 + 152) & 1) == 0 && (fp_task_tracker_is_cancelled(*(*(v1 + 168) + 16)) & 1) == 0 && *(v1 + 152) != 1)
  {
    if ((*(v1 + 82) & 0x40) != 0)
    {
      v7 = qword_1EC4BCD48;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_1EC4C1710;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
      v9 = swift_allocObject();
      swift_weakInit();
      v9[7] = MEMORY[0x1E69E7CD0];
      v9[8] = 0;
      swift_weakAssign();
      v10 = *(v1 + 64);

      objc_opt_self();
      v9[3] = swift_dynamicCastObjCClassUnconditional();
      v9[4] = 100;
      v9[5] = a1;
      v9[6] = v8;
      v11 = *(v1 + qword_1EDEBBC88);
      *(v1 + qword_1EDEBBC88) = v9;
    }

    v12 = *(v1 + qword_1EDEBBC98);
    *(v1 + qword_1EDEBBC98) = a1;

    v13 = *(v1 + qword_1EDEBBC88);
    if (v13)
    {
      v14 = sub_1CF9E6F08();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v13;

      sub_1CF6FCFEC(0, 0, v6, &unk_1CFA17ED0, v15);
    }
  }
}

uint64_t sub_1CF807968(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4EED0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4EF50);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA4EF80);
  return 0;
}

uint64_t sub_1CF807A6C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4EED0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA4EF00);
  return 0;
}

char *sub_1CF807B1C(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5268();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF7D5474(sub_1CF8FF190, v4, a1, a2);
  if (!v3)
  {
    v17 = v16;
    if ([v16 next])
    {
      v18 = [v17 unsignedIntegerAtIndex_];
      v19 = [v17 unsignedIntegerAtIndex_];
      v20 = [v17 unsignedIntegerAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0800, &qword_1CFA06190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FC3C0;
      v22 = *MEMORY[0x1E6966DC8];
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v23;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v24 = *MEMORY[0x1E6966DC0];
      *(inited + 56) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 64) = v25;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v26 = *MEMORY[0x1E69670D0];
      *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 88) = v27;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v10 = sub_1CF4E30A0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5090, &qword_1CFA06198);
      swift_arrayDestroy();
    }

    else
    {
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v10 = sub_1CF9E50D8();
      (*(v12 + 8))(v15, v11);
      swift_willThrow();
    }
  }

  return v10;
}

uint64_t sub_1CF807E54(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA4EDD0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA4EE30);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4EE90);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  return 0;
}

uint64_t sub_1CF807F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v6[4] = *(a2 + 64);
  v6[5] = v2;
  v6[6] = *(a2 + 96);
  v7 = *(a2 + 112);
  v3 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v3;
  v4 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v4;
  return (*(*a1 + 136))(v6);
}

uint64_t sub_1CF808014(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v4;
  v37 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v38 = a3;
  v40 = a3;
  v42 = a4;
  v41 = a4;
  v17 = *(a1 + 16);
  v36 = v17;
  v33 = v14;
  v34 = a1;
  if (v17)
  {
    v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v18, v16, &qword_1EC4BE740, &qword_1CFA05940);
      v20 = objc_autoreleasePoolPush();
      sub_1CF8D7C30(v16, v6, v38, v42);
      if (v5)
      {
        break;
      }

      objc_autoreleasePoolPop(v20);
      sub_1CEFCCC44(v16, &qword_1EC4BE740, &qword_1CFA05940);
      v18 += v19;
      if (!--v17)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v20);
    return sub_1CEFCCC44(v16, &qword_1EC4BE740, &qword_1CFA05940);
  }

  else
  {
LABEL_5:
    v21 = v6;
    v22 = *(v6 + 16);
    v39[0] = v37;
    v39[1] = sub_1CF8F91B0;
    v39[2] = v6;
    v23 = *(*v22 + 544);

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DF0, &qword_1CFA17FF8);
    v25 = sub_1CEFCCCEC(&unk_1EDEA33A8, &unk_1EC4C4DF0, &qword_1CFA17FF8);
    v23(v39, &v40, v24, &type metadata for SQLDatabaseReadWriteAccessor, v25, &off_1F4C17938);

    if (!v5)
    {
      v27 = v36;
      if (v36)
      {
        v28 = v35;
        v29 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v30 = *(v33 + 72);
        do
        {
          sub_1CEFCCBDC(v29, v28, &qword_1EC4BE740, &qword_1CFA05940);
          v31 = objc_autoreleasePoolPush();
          sub_1CF8D8FD4(v28, v21, v38, v42);
          objc_autoreleasePoolPop(v31);
          result = sub_1CEFCCC44(v28, &qword_1EC4BE740, &qword_1CFA05940);
          v29 += v30;
          --v27;
        }

        while (v27);
      }
    }
  }

  return result;
}

uint64_t sub_1CF808364(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v4;
  v25 = a3;
  v27 = a4;
  v26 = a4;
  v8 = *(a1 + 16);

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930) - 8);
      v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9;
      v12 = objc_autoreleasePoolPush();
      sub_1CF8D80FC(v11, v4, a3, v27);
      if (v5)
      {
        break;
      }

      ++v9;
      objc_autoreleasePoolPop(v12);
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
LABEL_5:

    v13 = *(v4 + 16);
    v24[0] = a2;
    v24[1] = sub_1CF8F9618;
    v24[2] = v6;
    v21 = *(*v13 + 544);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA8, &qword_1CFA18058);
    v15 = sub_1CEFCCCEC(&unk_1EC4C4EB0, &qword_1EC4C4EA8, &qword_1CFA18058);
    v21(v24, &v25, v14, &type metadata for SQLDatabaseReadWriteAccessor, v15, &off_1F4C17938);

    if (v5)
    {
      return result;
    }

    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930) - 8);
        v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * i;
        v20 = objc_autoreleasePoolPush();
        sub_1CF8D94B4(v19, v6, a3, v27);
        objc_autoreleasePoolPop(v20);
      }
    }
  }
}

uint64_t sub_1CF808658(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v16, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFDA0C4(v16, v20, type metadata accessor for VFSItem);
    sub_1CEFCCBDC(a2, v12, qword_1EC4C1588, &unk_1CFA0A260);
    v23 = type metadata accessor for TelemetrySignpost(0);
    if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
    {
      sub_1CEFD5338(v20, type metadata accessor for VFSItem);
      v22 = v12;
      goto LABEL_6;
    }

    v25 = &v20[*(v17 + 28)];
    v26 = *v25;
    if (v26 == 1)
    {
      if (v25[8])
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v25 + 1);
      }
    }

    else
    {
      v27 = *&v25[*(type metadata accessor for ItemMetadata() + 104)];
    }

    if (v26 == 1)
    {
      v28 = 65;
    }

    else
    {
      v28 = 64;
    }

    sub_1CF51A508(v27, v28);
    sub_1CEFD5338(v20, type metadata accessor for VFSItem);
    v24 = v12;
LABEL_17:
    sub_1CEFD5338(v24, type metadata accessor for TelemetrySignpost);
    return v31(a1);
  }

  sub_1CEFCCC44(v16, &unk_1EC4BF300, &unk_1CFA006B0);
  sub_1CEFCCBDC(a2, v9, qword_1EC4C1588, &unk_1CFA0A260);
  v21 = type metadata accessor for TelemetrySignpost(0);
  if ((*(*(v21 - 8) + 48))(v9, 1, v21) != 1)
  {
    sub_1CF51A508(0, 128);
    v24 = v9;
    goto LABEL_17;
  }

  v22 = v9;
LABEL_6:
  sub_1CEFCCC44(v22, qword_1EC4C1588, &unk_1CFA0A260);
  return v31(a1);
}

uint64_t sub_1CF8089EC(void *a1, id a2, uint64_t a3, void (*a4)(uint64_t), void *a5, int a6, void *a7, uint64_t a8, unsigned __int8 a9, void *a10, void *a11, void *a12, uint64_t a13, unsigned __int8 a14)
{
  v356 = a8;
  v360 = a7;
  LODWORD(v359) = a6;
  v362 = a5;
  v363 = a4;
  v361 = a3;
  v367 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v341 = &v315 - v18;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v19 = *(*(v318 - 8) + 64);
  MEMORY[0x1EEE9AC00](v318);
  v319 = &v315 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v335 = &v315 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v352 = &v315 - v25;
  v333 = sub_1CF9E6068();
  v26 = *(v333 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v331 = &v315 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v326 = &v315 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v344 = &v315 - v33;
  v327 = type metadata accessor for Signpost(0);
  v328 = *(v327 - 8);
  v34 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v334 = &v315 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v330 = &v315 - v37;
  v329 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v345 = &v315 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v323 = &v315 - v43;
  v343 = sub_1CF9E63D8();
  v342 = *(v343 - 8);
  v44 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v343);
  v317 = &v315 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v336 = &v315 - v47;
  v355 = sub_1CF9E6448();
  v351 = *(v355 - 8);
  v48 = *(v351 + 64);
  MEMORY[0x1EEE9AC00](v355);
  v325 = &v315 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = v49;
  MEMORY[0x1EEE9AC00](v50);
  v350 = &v315 - v51;
  v358 = type metadata accessor for VFSItem(0);
  v320 = *(v358 - 8);
  v52 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v358);
  v322 = &v315 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v315 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v338 = *(v57 - 8);
  v58 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v348 = &v315 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v340 = &v315 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v337 = &v315 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v349 = &v315 - v65;
  v339 = v66;
  MEMORY[0x1EEE9AC00](v67);
  v357 = &v315 - v68;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v69 = *(*(v368 - 8) + 64);
  MEMORY[0x1EEE9AC00](v368);
  v365 = &v315 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v315 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v315 - v75;
  v77 = sub_1CF9E6118();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v347 = &v315 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v346 = &v315 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v315 - v84;
  v86 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v366 = a1;
  v87 = v367;
  sub_1CEFCCBDC(a1, v76, &unk_1EC4BF300, &unk_1CFA006B0);
  sub_1CEFD09A0(v87);
  sub_1CEFD09A0(v87);
  v88 = sub_1CF9E6108();
  v89 = sub_1CF9E7298();
  v90 = os_log_type_enabled(v88, v89);
  v332 = v26;
  v364 = v73;
  if (v90)
  {
    v91 = swift_slowAlloc();
    v353 = v78;
    v92 = v91;
    v316 = swift_slowAlloc();
    *&aBlock = v316;
    *v92 = 136315394;
    sub_1CEFCCBDC(v76, v73, &unk_1EC4BF300, &unk_1CFA006B0);
    v93 = sub_1CF9E6948();
    v354 = v77;
    v94 = v93;
    v96 = v95;
    sub_1CEFCCC44(v76, &unk_1EC4BF300, &unk_1CFA006B0);
    v97 = sub_1CEFD0DF0(v94, v96, &aBlock);
    v98 = v87;

    *(v92 + 4) = v97;
    *(v92 + 12) = 2080;
    v99 = sub_1CEFD11AC(v87);
    v101 = v100;
    sub_1CEFD0A98(v87);
    sub_1CEFD0A98(v87);
    v102 = sub_1CEFD0DF0(v99, v101, &aBlock);
    v77 = v354;

    *(v92 + 14) = v102;
    _os_log_impl(&dword_1CEFC7000, v88, v89, "create fault completed with result %s request %s", v92, 0x16u);
    v103 = v316;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v103, -1, -1);
    v104 = v92;
    v78 = v353;
    MEMORY[0x1D386CDC0](v104, -1, -1);

    v105 = v78;
  }

  else
  {
    sub_1CEFD0A98(v87);

    sub_1CEFD0A98(v87);
    sub_1CEFCCC44(v76, &unk_1EC4BF300, &unk_1CFA006B0);
    v105 = v78;
    v98 = v87;
  }

  v106 = *(v105 + 8);
  v106(v85, v77);
  v107 = v365;
  sub_1CEFCCBDC(v366, v365, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFDA0C4(v107, v56, type metadata accessor for VFSItem);
    v111 = &v56[*(v358 + 28)];
    v112 = type metadata accessor for ItemMetadata();
    v113 = v111[*(v112 + 80)];
    if ((v113 & 1) == 0 && (v359 & 1) == 0)
    {
      v114 = v112;
      v115 = v348;
      sub_1CEFCCBDC(v361, v348, qword_1EC4C1588, &unk_1CFA0A260);
      v116 = type metadata accessor for TelemetrySignpost(0);
      if ((*(*(v116 - 8) + 48))(v115, 1, v116) == 1)
      {
        sub_1CEFCCC44(v115, qword_1EC4C1588, &unk_1CFA0A260);
      }

      else
      {
        v155 = *v111;
        if (v155 == 1)
        {
          if (v111[8])
          {
            v156 = 0;
          }

          else
          {
            v156 = *(v111 + 1);
          }
        }

        else
        {
          v156 = *&v111[*(v114 + 104)];
        }

        sub_1CF51A508(v156, v155 == 1);
        sub_1CEFD5338(v115, type metadata accessor for TelemetrySignpost);
      }

      v157 = v364;
      sub_1CEFDA34C(v56, v364, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v363(v157);
      goto LABEL_32;
    }

    v366 = a10;
    if (v113 && (v359 & 1) == 0)
    {
      LODWORD(v365) = a9;
      v362 = a12;
      v368 = a13;
      v364 = a11;
      v117 = fpfs_current_or_default_log();
      v118 = v346;
      sub_1CF9E6128();
      sub_1CEFD09A0(v98);
      sub_1CEFD09A0(v98);
      v119 = v356;

      v120 = sub_1CF9E6108();
      v121 = sub_1CF9E7298();
      v122 = os_log_type_enabled(v120, v121);
      v361 = v106;
      v354 = v77;
      v353 = v78;
      if (v122)
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v369 = v124;
        *v123 = 136315394;
        v125 = swift_beginAccess();
        v127 = *(v119 + 32);
        v128 = *(v119 + 40);
        if (*(v119 + 41))
        {
          v129 = v127;
          v130 = NSFileProviderItemIdentifier.description.getter();
          v132 = v131;
          sub_1CEFD0994(v127, v128, 1);
        }

        else
        {
          *&aBlock = *(v119 + 32);
          BYTE8(aBlock) = v128;
          v130 = VFSItemID.description.getter(v125, v126);
          v132 = v229;
        }

        v230 = sub_1CEFD0DF0(v130, v132, &v369);

        *(v123 + 4) = v230;
        *(v123 + 12) = 2080;
        v98 = v367;
        v231 = sub_1CEFD11AC(v367);
        v233 = v232;
        sub_1CEFD0A98(v98);
        sub_1CEFD0A98(v98);
        v234 = sub_1CEFD0DF0(v231, v233, &v369);

        *(v123 + 14) = v234;
        _os_log_impl(&dword_1CEFC7000, v120, v121, "Request to materialize content of itemID %s reason %s", v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v124, -1, -1);
        MEMORY[0x1D386CDC0](v123, -1, -1);

        (v361)(v346, v354);
      }

      else
      {
        sub_1CEFD0A98(v98);
        sub_1CEFD0A98(v98);

        v106(v118, v77);
      }

      LODWORD(v358) = (v98 >> 58) & 0x3C | (v98 >> 1) & 3;
      v235 = v349;
      if (v358 == 2)
      {
        v236 = swift_projectBox();
        v237 = v319;
        sub_1CEFCCBDC(v236, v319, &unk_1EC4C4F40, qword_1CFA0F4C0);
        v238 = *(v237 + 8);

        v239 = v318;
        v240 = *(v318 + 48);

        v242 = *(v237 + *(v239 + 80));
        v241 = sub_1CF9E5A58();
        (*(*(v241 - 8) + 8))(v237 + v240, v241);
      }

      else
      {
        v242 = 0;
      }

      v243 = v341;
      sub_1CEFCCBDC(v360 + qword_1EDEBBC18, v341, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v244 = type metadata accessor for TelemetrySignposter(0);
      v245 = (*(*(v244 - 8) + 48))(v243, 1, v244);
      v315 = v56;
      if (v245 == 1)
      {
        sub_1CEFCCC44(v243, &qword_1EC4BFB10, &unk_1CFA12AD0);
        v246 = 1;
      }

      else
      {
        sub_1CF519DE8(v242, v235);
        sub_1CEFD5338(v243, type metadata accessor for TelemetrySignposter);
        v246 = 0;
      }

      v247 = type metadata accessor for TelemetrySignpost(0);
      (*(*(v247 - 8) + 56))(v235, v246, 1, v247);
      v248 = v337;
      sub_1CEFCCBDC(v235, v337, qword_1EC4C1588, &unk_1CFA0A260);
      v249 = *(v338 + 80);
      v250 = (v249 + 16) & ~v249;
      v251 = v339;
      v252 = (v339 + v250 + 7) & 0xFFFFFFFFFFFFFFF8;
      v253 = swift_allocObject();
      v363 = v253;
      sub_1CEFE55D0(v248, v253 + v250, qword_1EC4C1588, &unk_1CFA0A260);
      v254 = (v253 + v252);
      v255 = v368;
      *v254 = v362;
      v254[1] = v255;
      v256 = v340;
      sub_1CEFCCBDC(v235, v340, qword_1EC4C1588, &unk_1CFA0A260);
      v257 = (v249 + 24) & ~v249;
      v258 = (v257 + v251 + 31) & 0xFFFFFFFFFFFFFFF8;
      v359 = (v258 + 15) & 0xFFFFFFFFFFFFFFF8;
      v259 = (v258 + 31) & 0xFFFFFFFFFFFFFFF8;
      v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
      v261 = swift_allocObject();
      v262 = v367;
      *(v261 + 16) = v367;
      sub_1CEFE55D0(v256, v261 + v257, qword_1EC4C1588, &unk_1CFA0A260);
      v263 = v261 + ((v257 + v251 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v263 = v362;
      *(v263 + 8) = v255;
      *(v263 + 16) = 1;
      *(v261 + v258) = v360;
      v264 = v261 + v359;
      v265 = v356;
      *v264 = v356;
      *(v264 + 8) = v365 & 1;
      *(v261 + v259) = v366;
      v266 = v265;
      v267 = v364;
      *(v261 + v260) = v364;
      v268 = v261 + ((v260 + 15) & 0xFFFFFFFFFFFFFFF8);
      v269 = v363;
      *v268 = sub_1CF903314;
      *(v268 + 8) = v269;
      *(v268 + 16) = 1;
      v270 = objc_allocWithZone(MEMORY[0x1E696AE38]);

      sub_1CEFD09A0(v262);

      v271 = v267;

      v272 = [v270 init];
      v273 = swift_allocObject();
      v273[2] = sub_1CF903318;
      v273[3] = v261;
      v273[4] = v262;
      sub_1CEFD09A0(v262);

      sub_1CEFD09A0(v262);
      v368 = v261;

      v274 = fpfs_current_or_default_log();
      v275 = v347;
      sub_1CF9E6128();
      sub_1CEFD09A0(v262);
      sub_1CEFD09A0(v262);

      v276 = sub_1CF9E6108();
      v277 = sub_1CF9E7298();
      if (os_log_type_enabled(v276, v277))
      {
        v365 = v272;
        v366 = v273;
        v278 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        v370 = v279;
        *v278 = 136315906;
        v280 = swift_beginAccess();
        v282 = *(v266 + 32);
        v283 = *(v266 + 40);
        v284 = v315;
        if (*(v266 + 41))
        {
          v285 = v282;
          v286 = NSFileProviderItemIdentifier.description.getter();
          v288 = v287;
          sub_1CEFD0994(v282, v283, 1);
        }

        else
        {
          *&aBlock = *(v266 + 32);
          BYTE8(aBlock) = v283;
          v286 = VFSItemID.description.getter(v280, v281);
          v288 = v289;
        }

        v290 = sub_1CEFD0DF0(v286, v288, &v370);

        *(v278 + 4) = v290;
        *(v278 + 12) = 2080;
        *(v278 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v370);
        *(v278 + 22) = 2080;
        v262 = v367;
        v291 = sub_1CEFD11AC(v367);
        v293 = v292;
        sub_1CEFD0A98(v262);
        sub_1CEFD0A98(v262);
        v294 = sub_1CEFD0DF0(v291, v293, &v370);

        *(v278 + 24) = v294;
        *(v278 + 32) = 2048;
        *(v278 + 34) = 0;
        _os_log_impl(&dword_1CEFC7000, v276, v277, "Lookup itemID %s with behavior %s request %s iteration %ld", v278, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v279, -1, -1);
        MEMORY[0x1D386CDC0](v278, -1, -1);

        (v361)(v347, v354);
        v266 = v356;
        v272 = v365;
        v273 = v366;
      }

      else
      {
        sub_1CEFD0A98(v262);
        sub_1CEFD0A98(v262);

        (v361)(v275, v354);
        v284 = v315;
      }

      swift_beginAccess();
      v295 = *(v266 + 32);
      v296 = *(v266 + 40);
      if (*(v266 + 41))
      {
        v297 = qword_1EDEA34B0;
        v298 = v295;
        if (v297 != -1)
        {
          swift_once();
        }

        v299 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v301 = v300;
        if (v299 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v301 == v302)
        {

          sub_1CEFD0994(v295, v296, 1);
LABEL_66:
          sub_1CF90CAC8(v262, sub_1CF796A0C, v273);
LABEL_72:

          sub_1CEFD0A98(v262);

          sub_1CEFCCC44(v349, qword_1EC4C1588, &unk_1CFA0A260);
          v158 = v284;
          return sub_1CEFD5338(v158, type metadata accessor for VFSItem);
        }

        v303 = sub_1CF9E8048();

        sub_1CEFD0994(v295, v296, 1);
        if (v303)
        {
          goto LABEL_66;
        }
      }

      else if (!v295 && v296 == 2)
      {
        goto LABEL_66;
      }

      v304 = v266;
      if (v358 == 30)
      {
        v305 = *((v262 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v306 = v305;
      }

      else
      {
        v307 = swift_allocObject();
        *(v307 + 16) = v262;
        v306 = v307 | 0x7000000000000004;
        v305 = v262;
      }

      v365 = v306;
      sub_1CEFD09A0(v305);
      v308 = swift_allocObject();
      *(v308 + 16) = sub_1CF796A0C;
      *(v308 + 24) = v273;
      v309 = v360;
      *(v308 + 32) = v360;
      *(v308 + 40) = 2;
      *(v308 + 48) = v262;
      *(v308 + 56) = v304;
      *(v308 + 64) = 0;
      *(v308 + 72) = v272;
      *(v308 + 80) = 0;
      v310 = swift_allocObject();
      *(v310 + 16) = v304;
      *(v310 + 24) = v309;
      *(v310 + 32) = 0;
      *(v310 + 40) = sub_1CF796A90;
      *(v310 + 48) = v308;
      *(v310 + 56) = v306;
      v311 = swift_allocObject();
      *(v311 + 16) = sub_1CF796A90;
      *(v311 + 24) = v308;
      v366 = (*v309 + 472);
      v312 = *v366;

      sub_1CEFD09A0(v262);

      v313 = v272;
      v314 = v365;
      sub_1CEFD09A0(v365);
      v312("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v311, sub_1CF796A9C, v310);

      sub_1CEFD0A98(v314);
      v284 = v315;
      goto LABEL_72;
    }

    if ((a9 & 1) != 0 && *v111 != 1)
    {
      v157 = v364;
      sub_1CEFDA34C(v56, v364, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      (a12)(v157);
LABEL_32:
      sub_1CEFCCC44(v157, &unk_1EC4BF300, &unk_1CFA006B0);
      v158 = v56;
      return sub_1CEFD5338(v158, type metadata accessor for VFSItem);
    }

    LODWORD(v365) = a9;
    v368 = a13;
    v136 = [a11 totalUnitCount];
    if (__OFADD__(v136, 1))
    {
      __break(1u);
    }

    else
    {
      LODWORD(v361) = a14;
      [a11 setTotalUnitCount_];
      v363 = *v56;
      LODWORD(v362) = v56[8];
      v315 = v56;
      v137 = v322;
      sub_1CEFDA34C(v56, v322, type metadata accessor for VFSItem);
      v138 = *(v320 + 80);
      v364 = a11;
      v139 = (v138 + 16) & ~v138;
      v140 = (v321 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v140 + 23) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v141 + 31) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v142 + 17) & 0xFFFFFFFFFFFFFFF8;
      v144 = swift_allocObject();
      sub_1CEFDA0C4(v137, v144 + v139, type metadata accessor for VFSItem);
      v145 = (v144 + v140);
      v146 = v368;
      *v145 = a12;
      v145[1] = v146;
      *(v144 + v141) = v360;
      v147 = v144 + ((v141 + 15) & 0xFFFFFFFFFFFFFFF8);
      v148 = v367;
      *v147 = v367;
      *(v147 + 8) = v361 & 1;
      v149 = v144 + v142;
      *v149 = v356;
      *(v149 + 8) = v359 & 1;
      *(v149 + 9) = v365 & 1;
      *(v144 + v143) = v366;
      v365 = v144;
      v150 = v364;
      *(v144 + ((v143 + 15) & 0xFFFFFFFFFFFFFFF8)) = v364;
      sub_1CEFD09A0(v148);

      v364 = v150;
      qos_class_self();
      v151 = v323;
      sub_1CF9E63B8();
      v152 = v342;
      v153 = *(v342 + 48);
      v154 = v343;
      if (v153(v151, 1, v343) == 1)
      {
        (*(v152 + 104))(v336, *MEMORY[0x1E69E7FA0], v154);
        if (v153(v151, 1, v154) != 1)
        {
          sub_1CEFCCC44(v151, &unk_1EC4BE380, &qword_1CFA01BA0);
        }
      }

      else
      {
        (*(v152 + 32))(v336, v151, v154);
      }

      sub_1CF9E6428();
      v159 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
      [v159 setCancellable_];
      v160 = swift_allocObject();
      v161 = v360;
      swift_weakInit();
      v162 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v163 = swift_allocObject();
      *(v163 + 16) = v160;
      *(v163 + 24) = v162;
      v164 = v363;
      *(v163 + 32) = v363;
      v165 = v362;
      *(v163 + 40) = v362;
      v374 = sub_1CF481424;
      v375 = v163;
      *&aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      *(&aBlock + 1) = 1107296256;
      v372 = sub_1CEFCA444;
      v373 = &block_descriptor_2901;
      v166 = _Block_copy(&aBlock);

      sub_1CF03C63C(sub_1CF481424);

      [v159 setCancellationHandler_];
      _Block_release(v166);

      v167 = v351;
      v168 = v325;
      v169 = v355;
      (*(v351 + 16))(v325, v350, v355);
      v170 = (*(v167 + 80) + 80) & ~*(v167 + 80);
      v171 = swift_allocObject();
      v173 = v365;
      v172 = v366;
      v171[2] = sub_1CF8FBC7C;
      v171[3] = v173;
      v171[4] = v161;
      v171[5] = v164;
      *(v171 + 48) = v165;
      v174 = v367;
      v171[7] = v367;
      v171[8] = v172;
      v171[9] = v159;
      v175 = *(v167 + 32);
      v366 = v171;
      v175(v171 + v170, v168, v169);
      v176 = swift_allocObject();
      *(v176 + 16) = sub_1CF8FBC7C;
      *(v176 + 24) = v173;
      v368 = v176;
      v177 = *(v161 + qword_1EDEBBC38);

      sub_1CEFD09A0(v174);

      v367 = v159;
      v363 = fpfs_adopt_log();
      if (qword_1EDEAE980 == -1)
      {
        goto LABEL_35;
      }
    }

    swift_once();
LABEL_35:
    v178 = qword_1EDEBBE40;
    v179 = v332;
    v180 = v344;
    v181 = v333;
    (*(v332 + 56))(v344, 1, 1, v333);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v182 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v182);

    v183 = aBlock;
    v184 = v180;
    v185 = v326;
    sub_1CEFCCBDC(v184, v326, &unk_1EC4BED20, &unk_1CFA00700);
    v186 = *(v179 + 48);
    v187 = v186(v185, 1, v181);
    v188 = v331;
    if (v187 == 1)
    {
      v189 = v178;
      sub_1CF9E6048();
      if (v186(v185, 1, v181) != 1)
      {
        sub_1CEFCCC44(v185, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v179 + 32))(v331, v185, v181);
    }

    v190 = v345;
    (*(v179 + 16))(v345, v188, v181);
    v191 = v327;
    *(v190 + *(v327 + 20)) = v178;
    v192 = v190 + *(v191 + 24);
    *v192 = "DB queue wait";
    *(v192 + 8) = 13;
    *(v192 + 16) = 2;
    v193 = v178;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_1CF9FA450;
    *(v194 + 56) = MEMORY[0x1E69E6158];
    *(v194 + 64) = sub_1CEFD51C4();
    *(v194 + 32) = v183;
    sub_1CF9E6028();

    (*(v179 + 8))(v188, v181);
    sub_1CEFCCC44(v344, &unk_1EC4BED20, &unk_1CFA00700);
    v359 = v360[21];
    v362 = v360[8];
    (*(v351 + 56))(v352, 1, 1, v355);
    v195 = v330;
    sub_1CEFDA34C(v190, v330, type metadata accessor for Signpost);
    v196 = (*(v328 + 80) + 16) & ~*(v328 + 80);
    v197 = (v329 + v196 + 7) & 0xFFFFFFFFFFFFFFF8;
    v198 = swift_allocObject();
    sub_1CEFDA0C4(v195, v198 + v196, type metadata accessor for Signpost);
    v199 = (v198 + v197);
    v361 = sub_1CF5543A4;
    v200 = v368;
    *v199 = sub_1CF5543A4;
    v199[1] = v200;
    v201 = v334;
    sub_1CEFDA34C(v190, v334, type metadata accessor for Signpost);
    v202 = (v197 + 23) & 0xFFFFFFFFFFFFFFF8;
    v203 = (v202 + 15) & 0xFFFFFFFFFFFFFFF8;
    v204 = (v203 + 25) & 0xFFFFFFFFFFFFFFF8;
    v205 = (v204 + 23) & 0xFFFFFFFFFFFFFFF8;
    v206 = swift_allocObject();
    sub_1CEFDA0C4(v201, v206 + v196, type metadata accessor for Signpost);
    v207 = (v206 + v197);
    *v207 = sub_1CF045408;
    v207[1] = 0;
    *(v206 + v202) = v360;
    v208 = v206 + v203;
    *v208 = "materialize(_:request:options:qos:completion:)";
    *(v208 + 8) = 46;
    *(v208 + 16) = 2;
    v209 = (v206 + v204);
    v210 = v351;
    v211 = v355;
    v212 = v368;
    *v209 = v361;
    v209[1] = v212;
    v213 = (v206 + v205);
    v214 = v366;
    *v213 = sub_1CF481430;
    v213[1] = v214;
    v215 = swift_allocObject();
    v215[2] = sub_1CF903308;
    v215[3] = v198;
    v216 = v359;
    v215[4] = v359;
    swift_retain_n();

    v361 = v198;

    v217 = fpfs_current_log();
    v218 = *(v216 + 16);
    v219 = v335;
    sub_1CEFCCBDC(v352, v335, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v210 + 48))(v219, 1, v211) == 1)
    {
      sub_1CEFCCC44(v219, &unk_1EC4BE370, qword_1CFA01B30);
      v220 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v221 = v317;
      sub_1CF9E6438();
      (*(v210 + 8))(v219, v211);
      v220 = sub_1CF9E63C8();
      (*(v342 + 8))(v221, v343);
    }

    v222 = swift_allocObject();
    v222[2] = v217;
    v222[3] = sub_1CF4858EC;
    v222[4] = v206;
    v374 = sub_1CF2BA17C;
    v375 = v222;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = v14;
    v372 = sub_1CEFCA444;
    v373 = &block_descriptor_2895;
    v223 = _Block_copy(&aBlock);
    v224 = v217;

    v374 = sub_1CF2BA180;
    v375 = v215;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = v14;
    v372 = sub_1CEFCA444;
    v373 = &block_descriptor_2898;
    v225 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v218, v362, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v220, v223, v225);
    _Block_release(v225);
    _Block_release(v223);

    sub_1CEFCCC44(v352, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v345, type metadata accessor for Signpost);
    v226 = v363;
    v227 = fpfs_adopt_log();

    (*(v210 + 8))(v350, v355);
    v228 = v367;
    [v364 addChild:v367 withPendingUnitCount:1];

    v158 = v315;
    return sub_1CEFD5338(v158, type metadata accessor for VFSItem);
  }

  v108 = *v107;
  v109 = v357;
  sub_1CEFCCBDC(v361, v357, qword_1EC4C1588, &unk_1CFA0A260);
  v110 = type metadata accessor for TelemetrySignpost(0);
  if ((*(*(v110 - 8) + 48))(v109, 1, v110) == 1)
  {
    sub_1CEFCCC44(v109, qword_1EC4C1588, &unk_1CFA0A260);
  }

  else
  {
    sub_1CF51A508(0, 128);
    sub_1CEFD5338(v109, type metadata accessor for TelemetrySignpost);
  }

  v133 = v364;
  *v364 = v108;
  swift_storeEnumTagMultiPayload();
  v134 = v108;
  v363(v133);

  return sub_1CEFCCC44(v133, &unk_1EC4BF300, &unk_1CFA006B0);
}

uint64_t sub_1CF80B204(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, char *a5, unint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, char *a12)
{
  v93 = a8;
  v91 = a7;
  v92 = a6;
  v95 = a5;
  v99 = a3;
  v96 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v14 = *(*(v94 - 1) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v16 = (&v86 - v15);
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v98 = sub_1CF9E6118();
  v97 = *(v98 - 1);
  v26 = v97[8];
  MEMORY[0x1EEE9AC00](v98);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  v100 = a4;
  if (a1)
  {
    v32 = a1;
    v33 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v96, v25, type metadata accessor for VFSItem);
    v34 = a1;
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v101[0] = v39;
      *v37 = 136315394;
      v40 = v25[8];
      *&v102 = *v25;
      BYTE8(v102) = v40;
      v41 = sub_1CEFD5338(v25, type metadata accessor for VFSItem);
      v43 = VFSItemID.description.getter(v41, v42);
      v45 = sub_1CEFD0DF0(v43, v44, v101);

      *(v37 + 4) = v45;
      *(v37 + 12) = 2112;
      v46 = sub_1CF9E57E8();
      v47 = [v46 fp_prettyDescription];

      *(v37 + 14) = v47;
      *v38 = v47;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "requestMaterialization(%s) failed for vfsItemID: %@", v37, 0x16u);
      sub_1CEFCCC44(v38, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    else
    {
      sub_1CEFD5338(v25, type metadata accessor for VFSItem);
    }

    (v97[1])(v31, v98);
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v60 = a1;
    v99(v16);

    v61 = &unk_1EC4BF300;
    v62 = &unk_1CFA006B0;
    v63 = v16;
  }

  else
  {
    v90 = v18;
    v94 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v49 = v96;
    sub_1CEFDA34C(v96, v22, type metadata accessor for VFSItem);
    v50 = sub_1CF9E6108();
    v51 = sub_1CF9E7298();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v101[0] = v53;
      *v52 = 136315138;
      v54 = v22[8];
      *&v102 = *v22;
      BYTE8(v102) = v54;
      v55 = sub_1CEFD5338(v22, type metadata accessor for VFSItem);
      v57 = VFSItemID.description.getter(v55, v56);
      v59 = sub_1CEFD0DF0(v57, v58, v101);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1CEFC7000, v50, v51, "requestMaterialization completed for vfsItemID %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D386CDC0](v53, -1, -1);
      MEMORY[0x1D386CDC0](v52, -1, -1);
    }

    else
    {
      sub_1CEFD5338(v22, type metadata accessor for VFSItem);
    }

    (v97[1])(v28, v98);
    v64 = v94;
    v65 = v95;
    v66 = *(*(v95 + 4) + 16);
    v67 = *(v49 + 8);
    v108 = *v49;
    v109 = v67;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;

    v68 = objc_sync_enter(v65);
    v69 = v90;
    if (v68)
    {
      MEMORY[0x1EEE9AC00](v68);
      *(&v86 - 2) = v65;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v97 = *&v65[qword_1EDEADB30];
    v98 = v97;
    v70 = objc_sync_exit(v65);
    if (v70)
    {
      MEMORY[0x1EEE9AC00](v70);
      *(&v86 - 2) = v95;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v94 = a12;
    v89 = a11;
    v88 = a10;
    v87 = a9;
    sub_1CEFDA34C(v49, v64, type metadata accessor for VFSItem);
    v71 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v72 = (v19 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 31) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 17) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    sub_1CEFDA0C4(v64, v76 + v71, type metadata accessor for VFSItem);
    v77 = (v76 + v72);
    v78 = v100;
    *v77 = v99;
    v77[1] = v78;
    v79 = v92;
    *(v76 + v73) = v92;
    v80 = v76 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v80 = v95;
    *(v80 + 8) = v91 & 1;
    v81 = v76 + v74;
    *v81 = v93;
    *(v81 + 8) = v87 & 1;
    *(v81 + 9) = v88 & 1;
    *(v76 + v75) = v89;
    v82 = v94;
    *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;
    v83 = *(*v66 + 136);

    sub_1CEFD09A0(v79);

    v84 = v82;
    v83(&v108, &v102, v97, 0, sub_1CF8FBDD0, v76);

    v101[2] = v104;
    v101[3] = v105;
    v101[4] = v106;
    v101[5] = v107;
    v101[0] = v102;
    v101[1] = v103;
    v61 = &unk_1EC4BECD0;
    v62 = &unk_1CF9FEF80;
    v63 = v101;
  }

  return sub_1CEFCCC44(v63, v61, v62);
}

void sub_1CF80BB68(uint64_t a1, uint64_t a2, void (*a3)(void *), void *a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, void *a12)
{
  v217 = a8;
  v216 = a7;
  v234 = a6;
  v232 = a5;
  v240 = a3;
  v241 = a4;
  v242 = a1;
  v243 = a2;
  v212 = sub_1CF9E63D8();
  v211 = *(v212 - 8);
  v12 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v210 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v227 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v235 = &v209 - v18;
  v225 = sub_1CF9E6068();
  v224 = *(v225 - 8);
  v19 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v220 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v218 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v230 = &v209 - v25;
  v219 = type metadata accessor for Signpost(0);
  v221 = *(v219 - 8);
  v26 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v226 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v223 = &v209 - v29;
  v222 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v231 = &v209 - v32;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v33 = *(*(v239 - 8) + 64);
  MEMORY[0x1EEE9AC00](v239);
  v233 = (&v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v238 = (&v209 - v36);
  v37 = type metadata accessor for VFSItem(0);
  v237 = *(v37 - 8);
  v38 = *(v237 + 8);
  MEMORY[0x1EEE9AC00](v37);
  v228 = &v209 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v215 = &v209 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v213 = &v209 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v236 = &v209 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v209 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v209 - v49;
  v51 = sub_1CF9E6118();
  v52 = *(v51 - 8);
  v244 = v51;
  v245 = v52;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v229 = &v209 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v214 = &v209 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v209 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v209 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v66 = (&v209 - v65);
  sub_1CEFCCBDC(v242, &v209 - v65, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = *v66;
    v68 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v243, v50, type metadata accessor for VFSItem);
    v69 = v67;
    v70 = sub_1CF9E6108();
    v71 = sub_1CF9E7298();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v247 = v74;
      *v72 = 136315394;
      v75 = v50[8];
      *&aBlock = *v50;
      BYTE8(aBlock) = v75;
      v76 = sub_1CEFD5338(v50, type metadata accessor for VFSItem);
      v78 = VFSItemID.description.getter(v76, v77);
      v80 = sub_1CEFD0DF0(v78, v79, &v247);

      *(v72 + 4) = v80;
      *(v72 + 12) = 2112;
      swift_getErrorValue();
      v81 = Error.prettyDescription.getter(v246);
      *(v72 + 14) = v81;
      *v73 = v81;
      _os_log_impl(&dword_1CEFC7000, v70, v71, "requestMaterialization(%s) post-materialization lookup returned an error %@", v72, 0x16u);
      sub_1CEFCCC44(v73, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v73, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1D386CDC0](v74, -1, -1);
      MEMORY[0x1D386CDC0](v72, -1, -1);
    }

    else
    {
      sub_1CEFD5338(v50, type metadata accessor for VFSItem);
    }

    (*(v245 + 8))(v62, v244);
    v95 = v238;
    *v238 = v67;
    swift_storeEnumTagMultiPayload();
    v96 = v67;
    v240(v95);

    v97 = v95;
    goto LABEL_32;
  }

  v82 = v243;
  v83 = v237;
  if ((*(v237 + 6))(v66, 1, v37) != 1)
  {
    v98 = v236;
    sub_1CEFDA0C4(v66, v236, type metadata accessor for VFSItem);
    v99 = v98 + *(v37 + 28);
    v100 = type metadata accessor for ItemMetadata();
    if (((*(v99 + v100[28]) & 1) != 0 || (v101 = sub_1CF90C94C(v232)) == 0 || (v102 = v101, v103 = [v101 requestedExtent], v105 = v104, v102, v105 == -1) || v103 <= 0 && v105 >= *(v99 + v100[26])) && *(v99 + v100[20]) == 1)
    {
      v243 = a11;
      LODWORD(v242) = a10;
      LODWORD(v239) = a9;
      v106 = fpfs_current_or_default_log();
      v107 = v214;
      sub_1CF9E6128();
      v108 = v213;
      sub_1CEFDA34C(v98, v213, type metadata accessor for VFSItem);
      v109 = sub_1CF9E6108();
      v110 = sub_1CF9E7298();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v247 = v112;
        *v111 = 136315138;
        v113 = *(v108 + 8);
        *&aBlock = *v108;
        BYTE8(aBlock) = v113;
        v114 = sub_1CEFD5338(v108, type metadata accessor for VFSItem);
        v116 = VFSItemID.description.getter(v114, v115);
        v118 = sub_1CEFD0DF0(v116, v117, &v247);

        *(v111 + 4) = v118;
        _os_log_impl(&dword_1CEFC7000, v109, v110, "requestMaterialization(%s) post-materialization lookup returned a dataless item - force ingestion", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        v119 = v112;
        v98 = v236;
        MEMORY[0x1D386CDC0](v119, -1, -1);
        MEMORY[0x1D386CDC0](v111, -1, -1);
      }

      else
      {
        sub_1CEFD5338(v108, type metadata accessor for VFSItem);
      }

      (*(v245 + 8))(v107, v244);
      v143 = *v98;
      v144 = *(v98 + 8);
      v145 = v215;
      sub_1CEFDA34C(v98, v215, type metadata accessor for VFSItem);
      v146 = (*(v83 + 80) + 88) & ~*(v83 + 80);
      v147 = swift_allocObject();
      v148 = v241;
      *(v147 + 16) = v240;
      *(v147 + 24) = v148;
      *(v147 + 32) = v216 & 1;
      v149 = v234;
      v150 = v217;
      *(v147 + 40) = v234;
      *(v147 + 48) = v150;
      *(v147 + 56) = v239 & 1;
      *(v147 + 57) = v242 & 1;
      v151 = v232;
      v152 = v243;
      *(v147 + 64) = v232;
      *(v147 + 72) = v152;
      *(v147 + 80) = a12;
      sub_1CEFDA0C4(v145, v147 + v146, type metadata accessor for VFSItem);
      v153 = swift_allocObject();
      *(v153 + 16) = v143;
      *(v153 + 24) = v144;
      *(v153 + 32) = v151;
      *(v153 + 40) = v149;
      *(v153 + 48) = sub_1CF8FBEC8;
      *(v153 + 56) = v147;
      v244 = v153;
      v154 = swift_allocObject();
      *(v154 + 16) = sub_1CF8FBEC8;
      *(v154 + 24) = v147;
      v245 = v154;
      v155 = *(v149 + qword_1EDEBBC38);

      sub_1CEFD09A0(v151);

      sub_1CEFD09A0(v151);

      v243 = v147;

      v156 = a12;
      v242 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v157 = qword_1EDEBBE40;
      v158 = v224;
      v159 = v230;
      v160 = v225;
      (*(v224 + 56))(v230, 1, 1, v225);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v161 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v161);

      v162 = aBlock;
      v163 = v159;
      v164 = v218;
      sub_1CEFCCBDC(v163, v218, &unk_1EC4BED20, &unk_1CFA00700);
      v165 = *(v158 + 48);
      v166 = v165(v164, 1, v160);
      v167 = v220;
      if (v166 == 1)
      {
        v168 = v157;
        sub_1CF9E6048();
        if (v165(v164, 1, v160) != 1)
        {
          sub_1CEFCCC44(v164, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v158 + 32))(v220, v164, v160);
      }

      v169 = v231;
      (*(v158 + 16))(v231, v167, v160);
      v170 = v219;
      *(v169 + *(v219 + 20)) = v157;
      v171 = v169 + *(v170 + 24);
      *v171 = "DB queue wait";
      *(v171 + 8) = 13;
      *(v171 + 16) = 2;
      v172 = v157;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_1CF9FA450;
      *(v173 + 56) = MEMORY[0x1E69E6158];
      *(v173 + 64) = sub_1CEFD51C4();
      *(v173 + 32) = v162;
      sub_1CF9E6028();

      (*(v158 + 8))(v167, v160);
      sub_1CEFCCC44(v230, &unk_1EC4BED20, &unk_1CFA00700);
      v174 = *(v234 + 64);
      v240 = *(v234 + 168);
      v241 = v174;
      v238 = sub_1CF9E6448();
      v239 = *(v238 - 1);
      (*(v239 + 56))(v235, 1, 1, v238);
      v175 = v223;
      sub_1CEFDA34C(v169, v223, type metadata accessor for Signpost);
      v176 = (*(v221 + 80) + 16) & ~*(v221 + 80);
      v177 = (v222 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
      v178 = swift_allocObject();
      sub_1CEFDA0C4(v175, v178 + v176, type metadata accessor for Signpost);
      v179 = (v178 + v177);
      v237 = sub_1CF552D94;
      v180 = v245;
      *v179 = sub_1CF552D94;
      v179[1] = v180;
      v181 = v226;
      sub_1CEFDA34C(v169, v226, type metadata accessor for Signpost);
      v182 = (v177 + 23) & 0xFFFFFFFFFFFFFFF8;
      v183 = (v182 + 15) & 0xFFFFFFFFFFFFFFF8;
      v184 = (v183 + 25) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v184 + 23) & 0xFFFFFFFFFFFFFFF8;
      v186 = swift_allocObject();
      v187 = v186 + v176;
      v188 = v238;
      sub_1CEFDA0C4(v181, v187, type metadata accessor for Signpost);
      v189 = (v186 + v177);
      *v189 = sub_1CF045408;
      v189[1] = 0;
      *(v186 + v182) = v234;
      v190 = v186 + v183;
      *v190 = "propagateToFP(itemID:request:completion:)";
      *(v190 + 8) = 41;
      *(v190 + 16) = 2;
      v191 = (v186 + v184);
      v192 = v239;
      v193 = v245;
      *v191 = v237;
      v191[1] = v193;
      v194 = (v186 + v185);
      v195 = v244;
      *v194 = sub_1CF8FBF6C;
      v194[1] = v195;
      v196 = swift_allocObject();
      v196[2] = sub_1CF903308;
      v196[3] = v178;
      v197 = v240;
      v196[4] = v240;
      swift_retain_n();

      v198 = v197;

      v199 = fpfs_current_log();
      v240 = *(v198 + 2);
      v200 = v227;
      sub_1CEFCCBDC(v235, v227, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v192 + 48))(v200, 1, v188) == 1)
      {
        sub_1CEFCCC44(v200, &unk_1EC4BE370, qword_1CFA01B30);
        v201 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v202 = v210;
        sub_1CF9E6438();
        (*(v192 + 8))(v200, v188);
        v201 = sub_1CF9E63C8();
        (*(v211 + 8))(v202, v212);
      }

      v203 = swift_allocObject();
      v203[2] = v199;
      v203[3] = sub_1CF4858EC;
      v203[4] = v186;
      v252 = sub_1CF2BA17C;
      v253 = v203;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v250 = sub_1CEFCA444;
      v251 = &block_descriptor_2959;
      v204 = _Block_copy(&aBlock);
      v205 = v199;

      v252 = sub_1CF2BA180;
      v253 = v196;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v250 = sub_1CEFCA444;
      v251 = &block_descriptor_2962;
      v206 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v240, v241, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v201, v204, v206);
      _Block_release(v206);
      _Block_release(v204);

      sub_1CEFCCC44(v235, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v231, type metadata accessor for Signpost);
      v207 = v242;
      v208 = fpfs_adopt_log();

      sub_1CEFD5338(v236, type metadata accessor for VFSItem);
    }

    else
    {
      v120 = fpfs_current_or_default_log();
      v121 = v229;
      sub_1CF9E6128();
      v122 = v228;
      sub_1CEFDA34C(v98, v228, type metadata accessor for VFSItem);
      v123 = sub_1CF9E6108();
      v124 = sub_1CF9E7298();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v247 = v126;
        *v125 = 136315138;
        v127 = *(v122 + 8);
        *&aBlock = *v122;
        BYTE8(aBlock) = v127;
        v128 = sub_1CEFD5338(v122, type metadata accessor for VFSItem);
        v130 = VFSItemID.description.getter(v128, v129);
        v132 = sub_1CEFD0DF0(v130, v131, &v247);

        *(v125 + 4) = v132;
        _os_log_impl(&dword_1CEFC7000, v123, v124, "requestMaterialization(%s) post-materialization lookup succeeded", v125, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v126);
        MEMORY[0x1D386CDC0](v126, -1, -1);
        MEMORY[0x1D386CDC0](v125, -1, -1);
      }

      else
      {
        sub_1CEFD5338(v122, type metadata accessor for VFSItem);
      }

      (*(v245 + 8))(v121, v244);
      v139 = v238;
      sub_1CEFDA34C(v82, v238, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v240(v139);
      sub_1CEFCCC44(v139, &unk_1EC4BF300, &unk_1CFA006B0);
      sub_1CEFD5338(v98, type metadata accessor for VFSItem);
    }

    return;
  }

  v84 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFDA34C(v82, v47, type metadata accessor for VFSItem);
  v85 = sub_1CF9E6108();
  v86 = sub_1CF9E7298();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v247 = v88;
    *v87 = 136315138;
    v89 = v47[8];
    *&aBlock = *v47;
    BYTE8(aBlock) = v89;
    v90 = sub_1CEFD5338(v47, type metadata accessor for VFSItem);
    v92 = VFSItemID.description.getter(v90, v91);
    v94 = sub_1CEFD0DF0(v92, v93, &v247);

    *(v87 + 4) = v94;
    _os_log_impl(&dword_1CEFC7000, v85, v86, "requestMaterialization(%s) post-materialization lookup returned no item", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1D386CDC0](v88, -1, -1);
    MEMORY[0x1D386CDC0](v87, -1, -1);
  }

  else
  {
    sub_1CEFD5338(v47, type metadata accessor for VFSItem);
  }

  v133 = (*(v245 + 8))(v59, v244);
  v135 = *v82;
  v136 = *(v82 + 8);
  if (v136 != 2 || v135)
  {
    if (v136 != 2 || v135 != 1)
    {
      *&aBlock = 0x2F73662F70665F5FLL;
      *(&aBlock + 1) = 0xE800000000000000;
      v247 = v135;
      v248 = v136;
      v140 = VFSItemID.description.getter(v133, v134);
      MEMORY[0x1D3868CC0](v140);

      v138 = sub_1CF9E6888();

      goto LABEL_30;
    }

    v137 = MEMORY[0x1E6967280];
  }

  else
  {
    v137 = MEMORY[0x1E6967258];
  }

  v138 = *v137;
LABEL_30:
  v141 = FPItemNotFoundError();

  if (v141)
  {
    v142 = v233;
    *v233 = v141;
    swift_storeEnumTagMultiPayload();
    v240(v142);
    v97 = v142;
LABEL_32:
    sub_1CEFCCC44(v97, &unk_1EC4BF300, &unk_1CFA006B0);
    return;
  }

  __break(1u);
}

uint64_t sub_1CF80D454(uint64_t a1, void (**a2)(const char *, uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t, void (*)(void *a1), uint64_t), void (*a3)(char *), uint64_t a4, int a5, void *a6, uint64_t a7, int a8, unsigned __int8 a9, unint64_t a10, uint64_t a11, char *a12, uint64_t a13)
{
  v201 = a8;
  LODWORD(v202) = a5;
  v203 = a6;
  v204 = a7;
  v207 = a3;
  v208 = a4;
  v206 = a2;
  v13 = sub_1CF9E5248();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v196 = v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1CF9E5268();
  v197 = *(v198 - 1);
  v16 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v195 = v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VFSItem(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v194 = v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v199 = v185 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v200 = *(v24 - 8);
  v25 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v185 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v185 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v185 - v34;
  v36 = sub_1CF9E6118();
  v205 = *(v36 - 8);
  v37 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v185 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v185 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v185 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  if (v206)
  {
    v50 = v206;
    *(v185 - v49) = v206;
    v51 = v185 - v49;
    swift_storeEnumTagMultiPayload();
    v52 = v50;
    v207(v51);
    v53 = &unk_1EC4BF300;
    v54 = &unk_1CFA006B0;
    v55 = v51;
    return sub_1CEFCCC44(v55, v53, v54);
  }

  v185[0] = v185 - v49;
  v185[1] = v48;
  v190 = v45;
  v186 = v32;
  v187 = v35;
  v188 = v28;
  v189 = v25;
  v192 = v185 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v42;
  v206 = v36;
  v193 = v31;
  v56 = fpfs_current_or_default_log();
  if (v202)
  {
    v57 = a10;
    v58 = v190;
    sub_1CF9E6128();
    sub_1CEFD09A0(a10);
    sub_1CEFD09A0(a10);
    v59 = v204;

    v60 = sub_1CF9E6108();
    v61 = sub_1CF9E7298();
    v62 = os_log_type_enabled(v60, v61);
    v202 = a10;
    if (v62)
    {
      LODWORD(v198) = v61;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v209[0] = v64;
      *v63 = 136315394;
      v65 = swift_beginAccess();
      v67 = *(v59 + 32);
      v68 = *(v59 + 40);
      v69 = v199;
      v70 = v187;
      if (*(v59 + 41))
      {
        v71 = v67;
        v72 = NSFileProviderItemIdentifier.description.getter();
        v74 = v73;
        sub_1CEFD0994(v67, v68, 1);
      }

      else
      {
        v211 = *(v59 + 32);
        v212 = v68;
        v72 = VFSItemID.description.getter(v65, v66);
        v74 = v95;
      }

      v96 = sub_1CEFD0DF0(v72, v74, v209);

      *(v63 + 4) = v96;
      *(v63 + 12) = 2080;
      v57 = v202;
      v97 = sub_1CEFD11AC(v202);
      v99 = v98;
      sub_1CEFD0A98(v57);
      sub_1CEFD0A98(v57);
      v100 = sub_1CEFD0DF0(v97, v99, v209);

      *(v63 + 14) = v100;
      _os_log_impl(&dword_1CEFC7000, v60, v198, "Request to materialize content of itemID %s reason %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v64, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);

      v198 = *(v205 + 8);
      (v198)(v190, v206);
      v87 = v193;
      v88 = v189;
    }

    else
    {
      sub_1CEFD0A98(a10);
      sub_1CEFD0A98(a10);

      v198 = *(v205 + 8);
      (v198)(v58, v206);
      v87 = v193;
      v88 = v189;
      v69 = v199;
      v70 = v187;
    }

    LODWORD(v194) = (v57 >> 58) & 0x3C | (v57 >> 1) & 3;
    v101 = v192;
    v102 = v200;
    v103 = v186;
    if (v194 == 2)
    {
      v104 = swift_projectBox();
      sub_1CEFCCBDC(v104, v70, &unk_1EC4C4F40, qword_1CFA0F4C0);
      v105 = *(v70 + 8);

      v106 = v103[12];

      v108 = *(v70 + v103[20]);
      v107 = sub_1CF9E5A58();
      (*(*(v107 - 8) + 8))(v70 + v106, v107);
    }

    else
    {
      v108 = 0;
    }

    v199 = a12;
    v197 = a11;
    LODWORD(v196) = a9;
    sub_1CEFCCBDC(v203 + qword_1EDEBBC18, v69, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v109 = type metadata accessor for TelemetrySignposter(0);
    if ((*(*(v109 - 8) + 48))(v69, 1, v109) == 1)
    {
      sub_1CEFCCC44(v69, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v110 = 1;
    }

    else
    {
      sub_1CF519DE8(v108, v87);
      sub_1CEFD5338(v69, type metadata accessor for TelemetrySignposter);
      v110 = 0;
    }

    v111 = v188;
    v112 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v112 - 8) + 56))(v87, v110, 1, v112);
    sub_1CEFCCBDC(v87, v111, qword_1EC4C1588, &unk_1CFA0A260);
    v113 = *(v102 + 80);
    v114 = (v113 + 16) & ~v113;
    v115 = swift_allocObject();
    sub_1CEFE55D0(v111, v115 + v114, qword_1EC4C1588, &unk_1CFA0A260);
    v116 = (v115 + ((v88 + v114 + 7) & 0xFFFFFFFFFFFFFFF8));
    v117 = v207;
    v118 = v208;
    *v116 = v207;
    v116[1] = v118;
    sub_1CEFCCBDC(v87, v101, qword_1EC4C1588, &unk_1CFA0A260);
    v119 = (v113 + 24) & ~v113;
    v195 = ((v119 + v88 + 7) & 0xFFFFFFFFFFFFFFF8);
    v120 = (v119 + v88 + 31) & 0xFFFFFFFFFFFFFFF8;
    v200 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
    v121 = (v120 + 31) & 0xFFFFFFFFFFFFFFF8;
    v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
    v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
    v124 = swift_allocObject();
    v125 = v202;
    *(v124 + 16) = v202;
    sub_1CEFE55D0(v192, v124 + v119, qword_1EC4C1588, &unk_1CFA0A260);
    v126 = &v195[v124];
    *v126 = v117;
    *(v126 + 1) = v118;
    v127 = (v201 & 1) == 0;
    v126[16] = v201 & 1;
    v128 = v203;
    v129 = v204;
    *(v124 + v120) = v203;
    v130 = v124 + v200;
    *v130 = v129;
    *(v130 + 8) = v196 & 1;
    *(v124 + v121) = v197;
    v131 = v199;
    *(v124 + v122) = v199;
    v132 = v129;
    v133 = v124 + v123;
    v134 = v128;
    *v133 = sub_1CF903314;
    *(v133 + 8) = v115;
    *(v133 + 16) = 0;
    if (v127)
    {
      v135 = 1;
    }

    else
    {
      v135 = 2;
    }

    LODWORD(v197) = v135;
    v136 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v125);

    v137 = v134;

    v138 = v131;
    v208 = v115;

    v139 = [v136 init];
    v140 = swift_allocObject();
    v140[2] = sub_1CF903318;
    v140[3] = v124;
    v200 = v140;
    v140[4] = v125;
    sub_1CEFD09A0(v125);

    sub_1CEFD09A0(v125);
    v207 = v124;

    v141 = fpfs_current_or_default_log();
    v142 = v191;
    sub_1CF9E6128();
    sub_1CEFD09A0(v125);
    sub_1CEFD09A0(v125);

    v143 = sub_1CF9E6108();
    v144 = sub_1CF9E7298();
    if (os_log_type_enabled(v143, v144))
    {
      v199 = v139;
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v210 = v146;
      *v145 = 136315906;
      v147 = swift_beginAccess();
      v149 = *(v132 + 32);
      v150 = *(v132 + 40);
      if (*(v132 + 41))
      {
        v151 = v149;
        v152 = NSFileProviderItemIdentifier.description.getter();
        v154 = v153;
        sub_1CEFD0994(v149, v150, 1);
      }

      else
      {
        v211 = *(v132 + 32);
        v212 = v150;
        v152 = VFSItemID.description.getter(v147, v148);
        v154 = v155;
      }

      v156 = sub_1CEFD0DF0(v152, v154, &v210);

      *(v145 + 4) = v156;
      *(v145 + 12) = 2080;
      if (v201)
      {
        v157 = 0xD000000000000010;
      }

      else
      {
        v157 = 0x74616761706F7270;
      }

      if (v201)
      {
        v158 = 0x80000001CFA2C3C0;
      }

      else
      {
        v158 = 0xED000053466F5465;
      }

      v159 = sub_1CEFD0DF0(v157, v158, &v210);

      *(v145 + 14) = v159;
      *(v145 + 22) = 2080;
      v125 = v202;
      v160 = sub_1CEFD11AC(v202);
      v162 = v161;
      sub_1CEFD0A98(v125);
      sub_1CEFD0A98(v125);
      v163 = sub_1CEFD0DF0(v160, v162, &v210);

      *(v145 + 24) = v163;
      *(v145 + 32) = 2048;
      *(v145 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v143, v144, "Lookup itemID %s with behavior %s request %s iteration %ld", v145, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v146, -1, -1);
      MEMORY[0x1D386CDC0](v145, -1, -1);

      (v198)(v191, v206);
      v132 = v204;
      v139 = v199;
    }

    else
    {
      sub_1CEFD0A98(v125);
      sub_1CEFD0A98(v125);

      (v198)(v142, v206);
    }

    swift_beginAccess();
    v164 = *(v132 + 32);
    v165 = *(v132 + 40);
    if (*(v132 + 41))
    {
      v166 = qword_1EDEA34B0;
      v167 = v164;
      if (v166 != -1)
      {
        swift_once();
      }

      v168 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v170 = v169;
      if (v168 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v170 == v171)
      {

        sub_1CEFD0994(v164, v165, 1);
LABEL_43:
        sub_1CF90CAC8(v125, sub_1CF796A0C, v200);
LABEL_49:

        sub_1CEFD0A98(v125);

        v53 = qword_1EC4C1588;
        v54 = &unk_1CFA0A260;
        v55 = v193;
        return sub_1CEFCCC44(v55, v53, v54);
      }

      v172 = sub_1CF9E8048();

      sub_1CEFD0994(v164, v165, 1);
      if (v172)
      {
        goto LABEL_43;
      }
    }

    else if (!v164 && v165 == 2)
    {
      goto LABEL_43;
    }

    if (v194 == 30)
    {
      v173 = *((v125 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v174 = v173;
    }

    else
    {
      v175 = swift_allocObject();
      *(v175 + 16) = v125;
      v174 = v175 | 0x7000000000000004;
      v173 = v125;
    }

    sub_1CEFD09A0(v173);
    v176 = swift_allocObject();
    v177 = v200;
    *(v176 + 16) = sub_1CF796A0C;
    *(v176 + 24) = v177;
    v178 = v137;
    *(v176 + 32) = v137;
    *(v176 + 40) = v197;
    *(v176 + 48) = v125;
    *(v176 + 56) = v132;
    *(v176 + 64) = 0;
    *(v176 + 72) = v139;
    *(v176 + 80) = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = v132;
    *(v179 + 24) = v137;
    *(v179 + 32) = 0;
    *(v179 + 40) = sub_1CF796A90;
    *(v179 + 48) = v176;
    *(v179 + 56) = v174;
    v180 = v174;
    v181 = swift_allocObject();
    *(v181 + 16) = sub_1CF796A90;
    *(v181 + 24) = v176;
    v206 = (*v178 + 472);
    v182 = *v206;

    sub_1CEFD09A0(v125);

    v183 = v139;
    sub_1CEFD09A0(v180);
    v182("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v181, sub_1CF796A9C, v179);

    sub_1CEFD0A98(v180);
    goto LABEL_49;
  }

  v75 = v39;
  sub_1CF9E6128();
  v76 = v194;
  sub_1CEFDA34C(a13, v194, type metadata accessor for VFSItem);
  v77 = sub_1CF9E6108();
  v78 = sub_1CF9E7298();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v209[0] = v80;
    *v79 = 136315138;
    v81 = *(v76 + 8);
    v211 = *v76;
    v212 = v81;
    v82 = sub_1CEFD5338(v76, type metadata accessor for VFSItem);
    v84 = VFSItemID.description.getter(v82, v83);
    v86 = sub_1CEFD0DF0(v84, v85, v209);

    *(v79 + 4) = v86;
    _os_log_impl(&dword_1CEFC7000, v77, v78, "requestMaterialization(%s) post-materialization retry failed", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x1D386CDC0](v80, -1, -1);
    MEMORY[0x1D386CDC0](v79, -1, -1);
  }

  else
  {
    sub_1CEFD5338(v76, type metadata accessor for VFSItem);
  }

  (*(v205 + 8))(v75, v206);
  v89 = v207;
  v90 = v198;
  v91 = v197;
  v92 = v195;
  sub_1CF9E5198();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  v93 = sub_1CF9E50D8();
  (*(v91 + 8))(v92, v90);
  v94 = v185[0];
  *v185[0] = v93;
  swift_storeEnumTagMultiPayload();
  v89(v94);
  v53 = &unk_1EC4BF300;
  v54 = &unk_1CFA006B0;
  v55 = v94;
  return sub_1CEFCCC44(v55, v53, v54);
}

uint64_t sub_1CF80E7B0(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, void), uint64_t a5, unint64_t a6)
{
  v32 = a4;
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(a2 + 16);
  v14 = *a3;
  v15 = *(a3 + 8);
  v29 = *a3;
  v30 = v15;
  sub_1CF68DDB0(&v29, v12, v11, v10, __dst);
  if (v6)
  {

    sub_1CF095754(__src);
    memcpy(__dst, __src, 0x208uLL);
LABEL_4:
    memcpy(__src, __dst, 0x208uLL);
    v16 = __src;
    goto LABEL_5;
  }

  memcpy(__src, __dst, 0x208uLL);
  if (sub_1CF08B99C(__src) == 1)
  {
    goto LABEL_4;
  }

  memcpy(v27, __dst, sizeof(v27));
  if ((v27[2] & 0x10) != 0)
  {
    v32(1, 0);
    v23 = &unk_1EC4BFC20;
    v24 = &unk_1CFA0A290;
    v25 = v27;
    return sub_1CEFCCC44(v25, v23, v24);
  }

  v16 = v27;
LABEL_5:
  sub_1CEFCCC44(v16, &unk_1EC4BFC20, &unk_1CFA0A290);
  v17 = a3[2];
  v18 = *(a3 + 24);
  if (!*(a3 + 24))
  {
    if (v15 || v17 != v14)
    {
      goto LABEL_22;
    }

    return (v32)(0, 0);
  }

  if (v18 != 1)
  {
    if (v17)
    {
      if (v15 != 2 || v14 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v15 != 2 || v14)
    {
      goto LABEL_22;
    }

    return (v32)(0, 0);
  }

  if (v15 == 1 && v17 == v14)
  {
    return (v32)(0, 0);
  }

LABEL_22:
  v20 = *(*(a2 + 32) + 16);
  v27[0] = a3[2];
  LOBYTE(v27[1]) = v18;
  memset(__src, 0, 96);
  v21 = swift_allocObject();
  v21[2] = v32;
  v21[3] = a5;
  v21[4] = a2;
  v21[5] = a6;
  v22 = *(*v20 + 136);

  sub_1CEFD09A0(a6);
  v22(v27, __src, 0, 2, sub_1CF8FF654, v21);

  __dst[2] = __src[2];
  __dst[3] = __src[3];
  __dst[4] = __src[4];
  __dst[5] = __src[5];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  v23 = &unk_1EC4BECD0;
  v24 = &unk_1CF9FEF80;
  v25 = __dst;
  return sub_1CEFCCC44(v25, v23, v24);
}

void sub_1CF80EA90(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t), uint64_t a4, unint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v34 - v15);
  sub_1CEFCCBDC(a1, &v34 - v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = *v16;
    a2(v17, 1);
  }

  else if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    a2(0, 0);
  }

  else
  {
    v19 = v9;
    v20 = v16;
    v21 = v37;
    sub_1CEFDA0C4(v20, v37, type metadata accessor for VFSItem);
    v22 = v21 + *(v8 + 28);
    v23 = type metadata accessor for ItemMetadata();
    if (*(v22 + *(v23 + 64)) & 1) != 0 || (v24 = *(v22 + *(v23 + 68)), v24 != 2) && (v24)
    {
      a2(1, 0);
    }

    else
    {
      v25 = v34;
      sub_1CEFDA34C(v21, v34, type metadata accessor for VFSItem);
      v26 = (*(v19 + 80) + 24) & ~*(v19 + 80);
      v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      v30 = v36;
      *(v29 + 16) = v36;
      sub_1CEFDA0C4(v25, v29 + v26, type metadata accessor for VFSItem);
      v31 = (v29 + v27);
      *v31 = a2;
      v31[1] = a3;
      v32 = v35;
      *(v29 + v28) = v35;
      v33 = *(*v30 + 472);

      sub_1CEFD09A0(v32);
      v33("checkIsInIgnoredHierarchy(_:request:completion:)", 48, 2, 2, nullsub_1, 0, sub_1CF90340C, v29);
    }

    sub_1CEFD5338(v21, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF80EE3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = &v133[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v138 = *(v13 - 8);
  v14 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v143 = &v133[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v133[-v17];
  v142 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v133[-v20];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v22 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v133[-v23];
  v24 = sub_1CF9E6118();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v146 = &v133[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v133[-v29];
  v141 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v31 = swift_allocObject();
  *(v31 + 2) = a3;
  *(v31 + 3) = a4;
  *(v31 + 4) = a2;
  *(v31 + 5) = v5;
  v150 = v31;

  sub_1CEFD09A0(a2);
  v151 = v5;

  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E7298();
  v35 = os_log_type_enabled(v33, v34);
  v147 = v25;
  v148 = v24;
  v149 = v21;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v152[0] = v139;
    *v36 = 136315394;
    v37 = swift_beginAccess();
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v41 = v39;
      v42 = NSFileProviderItemIdentifier.description.getter();
      v44 = v43;
      sub_1CEFD0994(v39, v40, 1);
    }

    else
    {
      v154 = *(a1 + 32);
      v155 = v40;
      v42 = VFSItemID.description.getter(v37, v38);
      v44 = v45;
    }

    v46 = sub_1CEFD0DF0(v42, v44, v152);

    *(v36 + 4) = v46;
    *(v36 + 12) = 2080;
    v47 = sub_1CEFD11AC(a2);
    v49 = v48;
    sub_1CEFD0A98(a2);
    sub_1CEFD0A98(a2);
    v50 = sub_1CEFD0DF0(v47, v49, v152);

    *(v36 + 14) = v50;
    _os_log_impl(&dword_1CEFC7000, v33, v34, "Request to materialize content of itemID %s reason %s", v36, 0x16u);
    v51 = v139;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    MEMORY[0x1D386CDC0](v36, -1, -1);

    v139 = *(v147 + 8);
    v139(v30, v148);
    v21 = v149;
  }

  else
  {
    sub_1CEFD0A98(a2);
    sub_1CEFD0A98(a2);

    v139 = *(v25 + 8);
    v139(v30, v24);
  }

  v134 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  if (v134 == 2)
  {
    v52 = swift_projectBox();
    v53 = v136;
    sub_1CEFCCBDC(v52, v136, &unk_1EC4C4F40, qword_1CFA0F4C0);
    v54 = *(v53 + 1);

    v55 = v135;
    v56 = *(v135 + 48);

    v57 = *&v53[*(v55 + 80)];
    v58 = sub_1CF9E5A58();
    (*(*(v58 - 8) + 8))(&v53[v56], v58);
  }

  else
  {
    v57 = 0;
  }

  v59 = v137;
  sub_1CEFCCBDC(v151 + qword_1EDEBBC18, v137, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v60 = type metadata accessor for TelemetrySignposter(0);
  v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
  v144 = a1;
  v145 = a2;
  if (v61 == 1)
  {
    sub_1CEFCCC44(v59, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v62 = 1;
  }

  else
  {
    sub_1CF519DE8(v57, v21);
    sub_1CEFD5338(v59, type metadata accessor for TelemetrySignposter);
    v62 = 0;
  }

  v63 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v63 - 8) + 56))(v21, v62, 1, v63);
  v64 = v140;
  sub_1CEFCCBDC(v21, v140, qword_1EC4C1588, &unk_1CFA0A260);
  v65 = *(v138 + 80);
  v66 = (v65 + 16) & ~v65;
  v67 = v142;
  v68 = (v142 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1CEFE55D0(v64, &v69[v66], qword_1EC4C1588, &unk_1CFA0A260);
  v70 = &v69[v68];
  v140 = sub_1CF8FE1FC;
  v71 = v150;
  *v70 = sub_1CF8FE1FC;
  v70[1] = v71;
  v72 = v143;
  sub_1CEFCCBDC(v21, v143, qword_1EC4C1588, &unk_1CFA0A260);
  v73 = (v65 + 24) & ~v65;
  v138 = (v73 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + v67 + 31) & 0xFFFFFFFFFFFFFFF8;
  v142 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 31) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v145;
  *(v77 + 16) = v145;
  sub_1CEFE55D0(v72, v77 + v73, qword_1EC4C1588, &unk_1CFA0A260);
  v79 = v77 + v138;
  *v79 = v140;
  *(v79 + 8) = v71;
  *(v79 + 16) = 0;
  *(v77 + v74) = v151;
  v80 = v77 + v142;
  v81 = v144;
  *v80 = v144;
  *(v80 + 8) = 0;
  *(v77 + v75) = 0;
  v82 = v141;
  *(v77 + v76) = v141;
  v83 = v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v83 = sub_1CF903314;
  *(v83 + 8) = v69;
  *(v83 + 16) = 1;
  v84 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  sub_1CEFD09A0(v78);

  v141 = v82;
  v143 = v69;
  v85 = v78;

  v140 = [v84 init];
  v86 = swift_allocObject();
  v86[2] = sub_1CF903318;
  v86[3] = v77;
  v138 = v86;
  v86[4] = v78;
  sub_1CEFD09A0(v78);

  sub_1CEFD09A0(v78);
  v142 = v77;

  v87 = fpfs_current_or_default_log();
  v88 = v146;
  sub_1CF9E6128();
  sub_1CEFD09A0(v78);
  sub_1CEFD09A0(v78);

  v89 = sub_1CF9E6108();
  v90 = sub_1CF9E7298();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = v78;
    v92 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v153 = v137;
    *v92 = 136315906;
    v93 = swift_beginAccess();
    v95 = *(v81 + 32);
    v96 = *(v81 + 40);
    if (*(v81 + 41))
    {
      v97 = v95;
      v98 = NSFileProviderItemIdentifier.description.getter();
      v100 = v99;
      sub_1CEFD0994(v95, v96, 1);
    }

    else
    {
      v154 = *(v81 + 32);
      v155 = v96;
      v98 = VFSItemID.description.getter(v93, v94);
      v100 = v102;
    }

    v103 = sub_1CEFD0DF0(v98, v100, &v153);

    *(v92 + 4) = v103;
    *(v92 + 12) = 2080;
    *(v92 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v153);
    *(v92 + 22) = 2080;
    v85 = v91;
    v104 = sub_1CEFD11AC(v91);
    v106 = v105;
    sub_1CEFD0A98(v91);
    sub_1CEFD0A98(v91);
    v107 = sub_1CEFD0DF0(v104, v106, &v153);

    *(v92 + 24) = v107;
    *(v92 + 32) = 2048;
    *(v92 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v89, v90, "Lookup itemID %s with behavior %s request %s iteration %ld", v92, 0x2Au);
    v108 = v137;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v108, -1, -1);
    MEMORY[0x1D386CDC0](v92, -1, -1);

    v101 = v146;
  }

  else
  {
    sub_1CEFD0A98(v78);
    sub_1CEFD0A98(v78);

    v101 = v88;
  }

  v139(v101, v148);
  swift_beginAccess();
  v109 = *(v81 + 32);
  v110 = *(v81 + 40);
  v111 = v149;
  if (*(v81 + 41))
  {
    v112 = qword_1EDEA34B0;
    v113 = v109;
    if (v112 != -1)
    {
      swift_once();
    }

    v114 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v116 = v115;
    if (v114 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v116 == v117)
    {

      sub_1CEFD0994(v109, v110, 1);
LABEL_27:
      sub_1CF90CAC8(v85, sub_1CF796A0C, v138);
      v118 = v140;
      goto LABEL_33;
    }

    v119 = sub_1CF9E8048();

    sub_1CEFD0994(v109, v110, 1);
    if (v119)
    {
      goto LABEL_27;
    }
  }

  else if (!v109 && v110 == 2)
  {
    goto LABEL_27;
  }

  if (v134 == 30)
  {
    v120 = *((v85 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v121 = v120;
  }

  else
  {
    v122 = swift_allocObject();
    *(v122 + 16) = v85;
    v121 = v122 | 0x7000000000000004;
    v120 = v85;
  }

  sub_1CEFD09A0(v120);
  v123 = swift_allocObject();
  v124 = v138;
  *(v123 + 16) = sub_1CF796A0C;
  *(v123 + 24) = v124;
  v125 = v151;
  *(v123 + 32) = v151;
  *(v123 + 40) = 1;
  *(v123 + 48) = v85;
  *(v123 + 56) = v81;
  *(v123 + 64) = 0;
  v126 = v140;
  *(v123 + 72) = v140;
  *(v123 + 80) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v81;
  *(v127 + 24) = v125;
  *(v127 + 32) = 0;
  *(v127 + 40) = sub_1CF796A90;
  *(v127 + 48) = v123;
  *(v127 + 56) = v121;
  v128 = swift_allocObject();
  *(v128 + 16) = sub_1CF796A90;
  *(v128 + 24) = v123;
  v148 = (*v125 + 472);
  v118 = v126;
  v129 = v85;
  v130 = *v148;

  sub_1CEFD09A0(v129);

  v131 = v118;
  sub_1CEFD09A0(v121);
  v130("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v128, sub_1CF796A9C, v127);
  v85 = v129;

  sub_1CEFD0A98(v121);
  v111 = v149;
LABEL_33:

  sub_1CEFD0A98(v85);

  return sub_1CEFCCC44(v111, qword_1EC4C1588, &unk_1CFA0A260);
}

uint64_t sub_1CF80FD34(uint64_t a1, void (*a2)(void **), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v84 = a5;
  v85 = a4;
  v88 = a2;
  v7 = sub_1CF9E6118();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v80 - v11;
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v80 - v27);
  v30 = v29;
  sub_1CEFCCBDC(a1, &v80 - v27, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v28;
    *v25 = *v28;
    swift_storeEnumTagMultiPayload();
    v32 = v31;
    v88(v25);

    return sub_1CEFCCC44(v25, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  else
  {
    v81 = a3;
    v34 = v88;
    sub_1CEFDA0C4(v28, v21, type metadata accessor for VFSItem);
    v35 = &v21[*(v12 + 28)];
    LOBYTE(v35) = v35[*(type metadata accessor for ItemMetadata() + 72)];
    v36 = fpfs_current_or_default_log();
    v37 = v21;
    if (v35)
    {
      v38 = v82;
      sub_1CF9E6128();
      sub_1CEFDA34C(v21, v18, type metadata accessor for VFSItem);
      v39 = v85;
      sub_1CEFD09A0(v85);
      sub_1CEFD09A0(v39);
      v40 = sub_1CF9E6108();
      v41 = sub_1CF9E7298();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v84 = v30;
        v43 = v42;
        v44 = swift_slowAlloc();
        v83 = v44;
        *v43 = 136315394;
        v45 = *v18;
        v46 = v18[8];
        v89 = v44;
        v90 = v45;
        v91 = v46;
        v47 = sub_1CEFD5338(v18, type metadata accessor for VFSItem);
        v49 = VFSItemID.description.getter(v47, v48);
        v51 = v38;
        v52 = sub_1CEFD0DF0(v49, v50, &v89);

        *(v43 + 4) = v52;
        *(v43 + 12) = 2080;
        v53 = sub_1CEFD11AC(v39);
        v55 = v54;
        sub_1CEFD0A98(v39);
        sub_1CEFD0A98(v39);
        v56 = sub_1CEFD0DF0(v53, v55, &v89);

        *(v43 + 14) = v56;
        _os_log_impl(&dword_1CEFC7000, v40, v41, "not detaching already detached root %s for %s", v43, 0x16u);
        v57 = v83;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v57, -1, -1);
        MEMORY[0x1D386CDC0](v43, -1, -1);

        (*(v86 + 8))(v51, v87);
      }

      else
      {
        sub_1CEFD0A98(v39);
        sub_1CEFD5338(v18, type metadata accessor for VFSItem);
        sub_1CEFD0A98(v39);

        (*(v86 + 8))(v38, v87);
      }

      sub_1CEFDA34C(v37, v25, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v34(v25);
      sub_1CEFCCC44(v25, &unk_1EC4BF300, &unk_1CFA006B0);
    }

    else
    {
      v58 = v83;
      sub_1CF9E6128();
      sub_1CEFDA34C(v21, v15, type metadata accessor for VFSItem);
      v59 = v85;
      sub_1CEFD09A0(v85);
      sub_1CEFD09A0(v59);
      v60 = sub_1CF9E6108();
      v61 = sub_1CF9E7298();
      v62 = v34;
      if (os_log_type_enabled(v60, v61))
      {
        v63 = swift_slowAlloc();
        v64 = v58;
        v65 = swift_slowAlloc();
        *v63 = 136315394;
        v66 = *v15;
        v67 = v15[8];
        v89 = v65;
        v90 = v66;
        v91 = v67;
        v68 = sub_1CEFD5338(v15, type metadata accessor for VFSItem);
        v70 = VFSItemID.description.getter(v68, v69);
        v72 = sub_1CEFD0DF0(v70, v71, &v89);

        *(v63 + 4) = v72;
        *(v63 + 12) = 2080;
        v73 = sub_1CEFD11AC(v59);
        v75 = v74;
        sub_1CEFD0A98(v59);
        sub_1CEFD0A98(v59);
        v76 = sub_1CEFD0DF0(v73, v75, &v89);

        *(v63 + 14) = v76;
        _os_log_impl(&dword_1CEFC7000, v60, v61, "detaching %s for %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v65, -1, -1);
        MEMORY[0x1D386CDC0](v63, -1, -1);

        (*(v86 + 8))(v64, v87);
      }

      else
      {
        sub_1CEFD0A98(v59);
        sub_1CEFD5338(v15, type metadata accessor for VFSItem);
        sub_1CEFD0A98(v59);

        (*(v86 + 8))(v58, v87);
      }

      v77 = *(*(v84 + 32) + 16);
      v78 = *(v37 + 8);
      v90 = *v37;
      v91 = v78;
      v79 = *(*v77 + 872);

      v79(&v90, v62, v81);
    }

    return sub_1CEFD5338(v37, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF8104CC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v84 = a5;
  v87 = a4;
  v93 = a2;
  v94 = a3;
  v92 = a1;
  v5 = sub_1CF9E6118();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v80 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v10 = *(v91 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v82 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v80 - v16;
  v17 = sub_1CF9E5248();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = sub_1CF9E5268();
  v86 = *(v19 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v80 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v80 - v29);
  sub_1CEFCCBDC(v92, &v80 - v29, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    *v26 = *v30;
    swift_storeEnumTagMultiPayload();
    v32 = v31;
    v93(v26);

LABEL_5:
    v34 = &unk_1EC4BF300;
    v35 = &unk_1CFA006B0;
    v36 = v26;
    return sub_1CEFCCC44(v36, v34, v35);
  }

  if ((*(v10 + 48))(v30, 1, v91) == 1)
  {
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v33 = sub_1CF9E50D8();
    (*(v86 + 8))(v22, v19);
    *v26 = v33;
    swift_storeEnumTagMultiPayload();
    v93(v26);
    goto LABEL_5;
  }

  v37 = v90;
  sub_1CEFE55D0(v30, v90, &qword_1EC4C5220, &qword_1CFA0A270);
  v38 = v37 + *(type metadata accessor for VFSItem(0) + 28);
  LODWORD(v38) = *(v38 + *(type metadata accessor for ItemMetadata() + 72));
  v39 = fpfs_current_or_default_log();
  if (v38 == 1)
  {
    v40 = v83;
    sub_1CF9E6128();
    v41 = v81;
    sub_1CEFCCBDC(v37, v81, &qword_1EC4C5220, &qword_1CFA0A270);
    v42 = v87;
    sub_1CEFD09A0(v87);
    sub_1CEFD09A0(v42);
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E7298();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v97 = v46;
      *v45 = 136315394;
      v47 = *(v41 + 8);
      v95 = *v41;
      v96 = v47;
      v48 = sub_1CEFCCC44(v41, &qword_1EC4C5220, &qword_1CFA0A270);
      v50 = VFSItemID.description.getter(v48, v49);
      v52 = sub_1CEFD0DF0(v50, v51, &v97);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      v53 = sub_1CEFD11AC(v42);
      v55 = v54;
      sub_1CEFD0A98(v42);
      sub_1CEFD0A98(v42);
      v56 = sub_1CEFD0DF0(v53, v55, &v97);

      *(v45 + 14) = v56;
      _os_log_impl(&dword_1CEFC7000, v43, v44, "attaching %s for %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v46, -1, -1);
      MEMORY[0x1D386CDC0](v45, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(v42);
      sub_1CEFCCC44(v41, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(v42);
    }

    (*(v88 + 8))(v40, v89);
    v75 = *(*(v84 + 32) + 16);
    v76 = *(v37 + 8);
    v95 = *v37;
    v96 = v76;
    v77 = *(*v75 + 880);

    v77(&v95, v93, v94);
  }

  else
  {
    v57 = v85;
    sub_1CF9E6128();
    v58 = v82;
    sub_1CEFCCBDC(v37, v82, &qword_1EC4C5220, &qword_1CFA0A270);
    v59 = v87;
    sub_1CEFD09A0(v87);
    sub_1CEFD09A0(v59);
    v60 = sub_1CF9E6108();
    v61 = sub_1CF9E7298();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v58;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v97 = v64;
      *v63 = 136315394;
      v65 = *(v62 + 8);
      v95 = *v62;
      v96 = v65;
      v66 = sub_1CEFCCC44(v62, &qword_1EC4C5220, &qword_1CFA0A270);
      v68 = VFSItemID.description.getter(v66, v67);
      v70 = sub_1CEFD0DF0(v68, v69, &v97);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      v71 = sub_1CEFD11AC(v59);
      v73 = v72;
      sub_1CEFD0A98(v59);
      sub_1CEFD0A98(v59);
      v74 = sub_1CEFD0DF0(v71, v73, &v97);

      *(v63 + 14) = v74;
      _os_log_impl(&dword_1CEFC7000, v60, v61, "not reattaching already attached item %s for %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v64, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);

      (*(v88 + 8))(v85, v89);
    }

    else
    {
      sub_1CEFD0A98(v59);
      sub_1CEFCCC44(v58, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(v59);

      (*(v88 + 8))(v57, v89);
    }

    v78 = v93;
    sub_1CEFDA34C(v37, v26, type metadata accessor for VFSItem);
    swift_storeEnumTagMultiPayload();
    v78(v26);
    sub_1CEFCCC44(v26, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v34 = &qword_1EC4C5220;
  v35 = &qword_1CFA0A270;
  v36 = v37;
  return sub_1CEFCCC44(v36, v34, v35);
}

uint64_t sub_1CF810E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  v4[4] = sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00);
  v7 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF810F3C, v7, v6);
}

uint64_t sub_1CF810F3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1CF9E6F08();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v3;
  swift_retain_n();
  v6 = sub_1CF81241C(0, 0, v1, &unk_1CFA17EE8, v5);
  v7 = *(v3 + 64);
  *(v3 + 64) = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CF811050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1CF9E5CF8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1CF9E7AD8();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v11 = sub_1CF9E7AF8();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v14 = sub_1CF9E6118();
  v4[18] = v14;
  v15 = *(v14 - 8);
  v4[19] = v15;
  v16 = *(v15 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00);
  v18 = sub_1CF9E6EC8();
  v4[25] = v18;
  v4[26] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1CF8112C8, v18, v17);
}

uint64_t sub_1CF8112C8()
{
  if (sub_1CF9E6F28())
  {
    v1 = *(v0 + 192);
    v2 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v3 = sub_1CF9E6108();
    v4 = sub_1CF9E7288();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 152);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1CEFC7000, v3, v4, "💂🏼‍♀️  StuckDeletionMonitor cancelled", v7, 2u);
      MEMORY[0x1D386CDC0](v7, -1, -1);
    }

    v8 = *(v0 + 184);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v21 = *(v0 + 80);
    (*(v6 + 8))(*(v0 + 192), *(v0 + 144));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(*(v0 + 56) + 48);
    v19 = 1000000000000000000 * v18;
    v20 = ((v18 >> 63) & 0xF21F494C589C0000) + ((v18 * 0xDE0B6B3A7640000uLL) >> 64);
    sub_1CF9E7AE8();
    *(v0 + 40) = v19;
    *(v0 + 48) = v20;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1CF8114DC, 0, 0);
  }
}

uint64_t sub_1CF8114DC()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = sub_1CEFCCCA4(&qword_1EDEA3380, MEMORY[0x1E69E8848]);
  sub_1CF9E8118();
  sub_1CEFCCCA4(&qword_1EDEA3388, MEMORY[0x1E69E8838]);
  sub_1CF9E7AB8();
  v8 = *(v5 + 8);
  v0[27] = v8;
  v0[28] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_1CF811660;
  v11 = v0[17];
  v13 = v0[14];
  v12 = v0[15];

  return MEMORY[0x1EEE6DE58](v13, v0 + 2, v12, v7);
}

uint64_t sub_1CF811660()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v12 = *v1;
  *(*v1 + 240) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    (*(v2 + 216))(*(v2 + 112), *(v2 + 88));
    v5 = sub_1CF811B04;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *(v2 + 128);
    v8 = *(v2 + 136);
    v10 = *(v2 + 120);
    (*(v2 + 216))(*(v2 + 112), *(v2 + 88));
    (*(v9 + 8))(v8, v10);
    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v5 = sub_1CF8117C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CF8117C0()
{
  v1 = v0[23];
  v2 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "💂🏼‍♀️  evaluating stuck deletion", v5, 2u);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v6 = v0[23];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[7];

  v10 = *(v8 + 8);
  v0[31] = v10;
  v10(v6, v7);
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v12 = Strong;
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v17 = v16;
    result = (*(v14 + 8))(v13, v15);
    v19 = v17 * 1000000000.0;
    if (COERCE__INT64(fabs(v17 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = swift_task_alloc();
        v0[33] = v20;
        *v20 = v0;
        v20[1] = sub_1CF811D74;
        v21 = v0[7];

        return sub_1CF8E997C(v12);
      }

LABEL_17:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  v22 = v0[20];
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E7288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1CEFC7000, v24, v25, "💂🏼‍♀️  StuckDeletionMonitor db was nil, bailing", v26, 2u);
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  v27 = v0[19] + 8;
  v29 = v0[23];
  v28 = v0[24];
  v31 = v0[21];
  v30 = v0[22];
  v32 = v0[17];
  v34 = v0[13];
  v33 = v0[14];
  v36 = v0[10];
  v10(v0[20], v0[18]);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1CF811B04()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x1EEE6DFA0](sub_1CF811B78, v1, v2);
}

uint64_t sub_1CF811B78()
{
  v1 = v0[30];
  v2 = v0[22];
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = v1;
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E72A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "💂🏼‍♀️ StuckDeletionMonitor loop caught error, exiting: %@", v9, 0xCu);
    sub_1CEFCCC44(v10, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v10, -1, -1);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[20];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[21];
  v17 = v0[17];
  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[10];
  (*(v0[19] + 8))(v0[22], v0[18]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1CF811D74()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_1CF8120CC;
  }

  else
  {
    v7 = sub_1CF811EB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CF811EB0()
{
  v1 = *(v0 + 256);

  if (sub_1CF9E6F28())
  {
    v2 = *(v0 + 192);
    v3 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v4 = sub_1CF9E6108();
    v5 = sub_1CF9E7288();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 152);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1CEFC7000, v4, v5, "💂🏼‍♀️  StuckDeletionMonitor cancelled", v8, 2u);
      MEMORY[0x1D386CDC0](v8, -1, -1);
    }

    v9 = *(v0 + 184);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 136);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v22 = *(v0 + 80);
    (*(v7 + 8))(*(v0 + 192), *(v0 + 144));

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(*(v0 + 56) + 48);
    v20 = 1000000000000000000 * v19;
    v21 = ((v19 >> 63) & 0xF21F494C589C0000) + ((v19 * 0xDE0B6B3A7640000uLL) >> 64);
    sub_1CF9E7AE8();
    *(v0 + 40) = v20;
    *(v0 + 48) = v21;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1CF8114DC, 0, 0);
  }
}

uint64_t sub_1CF8120CC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = v1;
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E72B8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "Error in checkForStuckDeletion: %@", v10, 0xCu);
    sub_1CEFCCC44(v11, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v11, -1, -1);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  else
  {
    v14 = *(v0 + 256);
  }

  v15 = *(v0 + 152) + 8;
  (*(v0 + 248))(*(v0 + 168), *(v0 + 144));
  if (sub_1CF9E6F28())
  {
    v16 = *(v0 + 192);
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7288();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 152);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "💂🏼‍♀️  StuckDeletionMonitor cancelled", v22, 2u);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    v23 = *(v0 + 184);
    v25 = *(v0 + 168);
    v24 = *(v0 + 176);
    v26 = *(v0 + 160);
    v27 = *(v0 + 136);
    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    v36 = *(v0 + 80);
    (*(v21 + 8))(*(v0 + 192), *(v0 + 144));

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v32 = *(v0 + 136);
    v33 = *(*(v0 + 56) + 48);
    v34 = 1000000000000000000 * v33;
    v35 = ((v33 >> 63) & 0xF21F494C589C0000) + ((v33 * 0xDE0B6B3A7640000uLL) >> 64);
    sub_1CF9E7AE8();
    *(v0 + 40) = v34;
    *(v0 + 48) = v35;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1CF8114DC, 0, 0);
  }
}

uint64_t sub_1CF81241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1CEFCCBDC(a3, v24 - v10, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v12 = sub_1CF9E6F08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CEFCCC44(v11, &qword_1EC4BFBA8, &qword_1CFA12B20);
  }

  else
  {
    sub_1CF9E6EF8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1CF9E6EC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1CF9E6978() + 32;

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

      sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);

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

  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1CF8126C8(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    return sub_1CF5A62B4(v7, v5, v6);
  }

  return result;
}

uint64_t sub_1CF81272C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1CF9E63D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7FA0], v4);
    if (v9(v3, 1, v4) != 1)
    {
      sub_1CEFCCC44(v3, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  return sub_1CF9E6428();
}

uint64_t sub_1CF8128EC(void *a1, char *a2, int a3, uint64_t (*a4)(void), uint64_t a5, unint64_t a6, uint64_t a7)
{
  v114 = a6;
  v110 = a7;
  v111 = a5;
  v113 = a4;
  v10 = sub_1CF9E6118();
  v112 = *(v10 - 8);
  v11 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v23 = *(v21 + 8);
  v116 = a2;
  v24 = v115;
  result = sub_1CF5B901C(a3, v22, v20, v23);
  if (v24)
  {
    return result;
  }

  v26 = v13;
  LODWORD(v109) = a3;
  v108 = 0;
  if ((result & 1) == 0)
  {
LABEL_10:
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E72C8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "🚀  waiting for engine stabilization", v49, 2u);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v112 + 8))(v26, v10);
    if (v109)
    {
      v50 = v114;
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      v51 = qword_1EDEBBC10;
      sub_1CEFD11AC(v50);
      v52 = sub_1CF9E6888();

      v53 = [v51 forceRunningWithReason_];

      v115 = swift_allocObject();
      *(v115 + 16) = v53;
      v54 = sub_1CF903058;
    }

    else
    {
      v54 = 0;
      v115 = 0;
      v50 = v114;
    }

    v55 = objc_sync_enter(v116);
    if (v55)
    {
      MEMORY[0x1EEE9AC00](v55);
      v102 = v116;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v103 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v56 = v116;
    v57 = *&v116[qword_1EDEADB40];
    v58 = objc_sync_exit(v56);
    if (v58)
    {
      MEMORY[0x1EEE9AC00](v58);
      v102 = v116;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v103 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    sub_1CEFD11AC(v50);
    v59 = sub_1CF9E6888();

    v60 = [v57 forceRunningWithReason_];

    v112 = swift_allocObject();
    *(v112 + 16) = v60;
    if (qword_1EDEAC3C8 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDEBBA88;
    sub_1CEFD11AC(v50);
    v62 = sub_1CF9E6888();

    v63 = [v61 forceRunningWithReason_];

    v107 = swift_allocObject();
    *(v107 + 16) = v63;
    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v64 = qword_1EDEBBB28;
    sub_1CEFD11AC(v50);
    v65 = sub_1CF9E6888();

    v66 = [v64 forceRunningWithReason_];

    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    v68 = qword_1EDEBB818;
    sub_1CEFD11AC(v50);
    v69 = sub_1CF9E6888();

    v70 = [v68 forceRunningWithReason_];

    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    v72 = swift_dynamicCastClass();
    if (v72)
    {
    }

    v73 = v113;
    if ((v109 & 1) != 0 && (v74 = a1[3], v75 = a1[4], v76 = __swift_project_boxed_opaque_existential_1(a1, v74), v72) && (v77 = v76, v78 = *(v72 + 24), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280), v79 = *(swift_dynamicCastClassUnconditional() + 32), *(v79 + qword_1EDEBBB18)))
    {
      v80 = *(v79 + qword_1EDEBBB18);

      v81 = v108;
      sub_1CF35D6D8(v77, v74, v75);
      v113 = v83;
      v108 = v81;
      if (v81)
      {

        sub_1CEFF7124(v54);

LABEL_38:
      }

      v84 = v82;
      v106 = v72;
    }

    else
    {
      v106 = v72;
      v113 = 0;
      v84 = 0;
    }

    v85 = swift_allocObject();
    v86 = v112;
    v85[2] = v113;
    v85[3] = v84;
    v87 = v107;
    v85[4] = sub_1CF903058;
    v85[5] = v87;
    v85[6] = sub_1CF903058;
    v85[7] = v86;
    v104 = v54;
    v88 = v115;
    v85[8] = v54;
    v85[9] = v88;
    v85[10] = sub_1CF903058;
    v85[11] = v67;
    v85[12] = sub_1CF903058;
    v85[13] = v71;
    v89 = v111;
    v85[14] = v73;
    v85[15] = v89;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_1CF8FC928;
    *(v90 + 24) = v85;
    v109 = v90;
    v91 = qword_1EDEBBC90;
    v92 = v116;
    swift_beginAccess();
    v93 = *&v92[v91];

    sub_1CEFD09A0(v114);
    v105 = v84;
    sub_1CF03C63C(v113);

    v94 = v104;
    sub_1CF03C63C(v104);
    v111 = v67;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v92[v91] = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = sub_1CF1F7FEC(0, v93[2] + 1, 1, v93);
      *&v116[v91] = v93;
    }

    v97 = v93[2];
    v96 = v93[3];
    v98 = v110;
    if (v97 >= v96 >> 1)
    {
      v101 = sub_1CF1F7FEC((v96 > 1), v97 + 1, 1, v93);
      v98 = v110;
      v93 = v101;
    }

    v99 = v109;
    v93[2] = v97 + 1;
    v100 = &v93[4 * v97];
    v100[4] = v114;
    v100[5] = v98;
    v100[6] = sub_1CF2B1738;
    v100[7] = v99;
    *&v116[v91] = v93;
    swift_endAccess();

    sub_1CEFF7124(v113);

    sub_1CEFF7124(v94);
    goto LABEL_38;
  }

  v27 = *(v116 + 10);
  v28 = fpfs_current_or_default_log();
  if ((v27 & 0x200000) != 0)
  {
    v34 = v19;
    sub_1CF9E6128();
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72C8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v112;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "🚀  engine is stable, waiting for db flush", v39, 2u);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v38 + 8))(v34, v10);
    v40 = swift_allocObject();
    v41 = v113;
    v42 = v111;
    *(v40 + 16) = v113;
    *(v40 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v116;
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    v45 = *(*v44 + 456);
    swift_retain_n();
    v45("waitForStabilization(request:mode:_:)", 37, 2, 0, 0, 0, sub_1CF481760, v40, sub_1CF8FC974, v43);

    goto LABEL_10;
  }

  sub_1CF9E6128();
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E72C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v10;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "🚀  engine is stable", v32, 2u);
    v33 = v32;
    v10 = v31;
    MEMORY[0x1D386CDC0](v33, -1, -1);
  }

  (*(v112 + 8))(v16, v10);
  return v113(0);
}

uint64_t sub_1CF81342C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = sub_1CF9E6118();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = *(**(*(a2 + 32) + 16) + 448);

  LOBYTE(v16) = v16(v17);

  v18 = fpfs_current_or_default_log();
  if (v16)
  {
    sub_1CF9E6128();
    sub_1CEFD09A0(a3);
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E7298();
    v21 = os_log_type_enabled(v19, v20);
    v56 = a5;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = a4;
      v24 = v23;
      v58[0] = v23;
      *v22 = 136315138;
      sub_1CEFD09A0(a3);
      v25 = sub_1CEFD11AC(a3);
      v55 = v9;
      v27 = v26;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v28 = sub_1CEFD0DF0(v25, v27, v58);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "waiting for rescan to start for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v29 = v24;
      a4 = v54;
      MEMORY[0x1D386CDC0](v29, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);

      (*(v57 + 8))(v15, v55);
    }

    else
    {
      sub_1CEFD0A98(a3);

      (*(v57 + 8))(v15, v9);
    }

    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v40 = qword_1EDEBBB28;
    sub_1CEFD11AC(a3);
    v41 = sub_1CF9E6888();

    v42 = [v40 forceRunningWithReason_];

    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v44 = swift_allocObject();
    v44[2] = sub_1CF903058;
    v44[3] = v43;
    v44[4] = a3;
    v44[5] = a4;
    v44[6] = v56;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1CF901C38;
    *(v45 + 24) = v44;
    v46 = qword_1EDEBBC90;
    swift_beginAccess();
    v47 = *(a2 + v46);
    sub_1CEFD09A0(a3);
    sub_1CEFD09A0(a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v46) = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_1CF1F7FEC(0, v47[2] + 1, 1, v47);
      *(a2 + v46) = v47;
    }

    v50 = v47[2];
    v49 = v47[3];
    if (v50 >= v49 >> 1)
    {
      v47 = sub_1CF1F7FEC((v49 > 1), v50 + 1, 1, v47);
    }

    v47[2] = v50 + 1;
    v51 = &v47[4 * v50];
    v51[4] = a3;
    v51[5] = 0;
    v51[6] = sub_1CF7969E0;
    v51[7] = v45;
    *(a2 + v46) = v47;
    swift_endAccess();
  }

  else
  {
    sub_1CF9E6128();
    sub_1CEFD09A0(a3);
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58[0] = v33;
      *v32 = 136315138;
      sub_1CEFD09A0(a3);
      v34 = sub_1CEFD11AC(a3);
      v55 = v9;
      v56 = a5;
      v35 = v34;
      v36 = a4;
      v38 = v37;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v39 = sub_1CEFD0DF0(v35, v38, v58);
      a4 = v36;

      *(v32 + 4) = v39;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "no rescan pending for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);

      (*(v57 + 8))(v12, v55);
    }

    else
    {
      sub_1CEFD0A98(a3);

      (*(v57 + 8))(v12, v9);
    }

    return a4(0);
  }
}

uint64_t sub_1CF8139FC(uint64_t a1, void (*a2)(__n128), uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v12);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v10;
    v20 = v19;
    v31 = v19;
    *v18 = 136315138;
    sub_1CEFD09A0(a4);
    v21 = sub_1CEFD11AC(a4);
    v30 = a5;
    v22 = v21;
    v28 = v9;
    v24 = v23;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v25 = sub_1CEFD0DF0(v22, v24, &v31);

    *(v18 + 4) = v25;
    v26 = v30;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "rescan ended for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);

    (*(v29 + 8))(v14, v28);
    return v26(a1);
  }

  else
  {
    sub_1CEFD0A98(a4);

    (*(v10 + 8))(v14, v9);
    return a5(a1);
  }
}

uint64_t sub_1CF813C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v6 = *(v50 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = sub_1CF9E64A8();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v4 + 64);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19, v22);
  v26 = v25;
  v27 = sub_1CF9E64D8();
  (*(v20 + 8))(v24, v19);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    v6 = sub_1CF1F6A6C(0, v6[2] + 1, 1, v6);
    *v27 = v6;
    goto LABEL_7;
  }

  v46 = v6;
  v49 = a1;
  sub_1CF407FF8(0, v18);
  v28 = qword_1EDEBBC60;
  swift_beginAccess();
  if (!*(*(v4 + v28) + 16) || (v29 = *(v4 + v28), , sub_1CF7BF520(v18), v31 = v30, , (v31 & 1) == 0))
  {
    swift_beginAccess();
    v32 = *(v4 + v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = *(v4 + v28);
    *(v4 + v28) = 0x8000000000000000;
    sub_1CF1D43C4(MEMORY[0x1E69E7CC0], v18, isUniquelyReferenced_nonNull_native);
    *(v4 + v28) = v52[0];
    swift_endAccess();
  }

  sub_1CEFCCBDC(v18, v15, &unk_1EC4BF650, &unk_1CF9FCB40);
  v24 = sub_1CF807904();
  v19 = sub_1CF5985C0(v52, v15);
  if (!*v34)
  {
    (v19)(v52, 0);
    sub_1CEFCCC44(v15, &unk_1EC4BF650, &unk_1CF9FCB40);
    (v24)(v53, 0);
    goto LABEL_11;
  }

  v27 = v34;
  v45 = v11;
  v11 = swift_allocObject();
  *(v11 + 2) = v47;
  *(v11 + 3) = v48;
  v6 = *v27;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v6;
  if ((v35 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v37 = v6[2];
  v36 = v6[3];
  if (v37 >= v36 >> 1)
  {
    v6 = sub_1CF1F6A6C((v36 > 1), v37 + 1, 1, v6);
    *v27 = v6;
  }

  v6[2] = v37 + 1;
  v38 = &v6[2 * v37];
  v38[4] = sub_1CF7969E0;
  v38[5] = v11;
  (v19)(v52, 0);
  sub_1CEFCCC44(v15, &unk_1EC4BF650, &unk_1CF9FCB40);
  (v24)(v53, 0);
  v11 = v45;
LABEL_11:
  sub_1CEFCCBDC(v49, v11, &unk_1EC4BF650, &unk_1CF9FCB40);
  swift_storeEnumTagMultiPayload();
  if (*(v4 + qword_1EDEADB48) == 1)
  {
    sub_1CEFCCBDC(v11, v51, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v39 = qword_1EDEBBCD8;
    swift_beginAccess();
    v40 = *(v4 + v39);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v39) = v40;
    if ((v41 & 1) == 0)
    {
      v40 = sub_1CF1F8168(0, v40[2] + 1, 1, v40);
      *(v4 + v39) = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1CF1F8168(v42 > 1, v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    sub_1CEFE55D0(v51, v40 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v46[9] * v43, &qword_1EC4BE710, &qword_1CF9FE5A8);
    *(v4 + v39) = v40;
    swift_endAccess();
  }

  sub_1CEFCCC44(v11, &qword_1EC4BE710, &qword_1CF9FE5A8);
  return sub_1CEFCCC44(v18, &unk_1EC4BF650, &unk_1CF9FCB40);
}

uint64_t sub_1CF814244()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v3 = v0 + v2[13];
  v4 = *(v3 + 13);
  v92 = *(v3 + 12);
  v93 = v4;
  v94 = *(v3 + 14);
  v95 = *(v3 + 30);
  v5 = *(v3 + 9);
  v88 = *(v3 + 8);
  v89 = v5;
  v6 = *(v3 + 11);
  v90 = *(v3 + 10);
  v91 = v6;
  v7 = *(v3 + 5);
  v84 = *(v3 + 4);
  v85 = v7;
  v8 = *(v3 + 7);
  v86 = *(v3 + 6);
  v87 = v8;
  v9 = *(v3 + 1);
  v80 = *v3;
  v81 = v9;
  v10 = *(v3 + 3);
  v82 = *(v3 + 2);
  v83 = v10;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v80) == 1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v70 = v88;
    v71 = v89;
    v72 = v90;
    v73 = v91;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v13 = ItemNonSyncableAttributes.description.getter();
    *&v62 = 0x3A72747461736E20;
    *(&v62 + 1) = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v13);

    v12 = 0xE800000000000000;
    v11 = 0x3A72747461736E20;
  }

  v14 = v0 + v2[14];
  if (v14[32])
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = *(v14 + 2);
    v18 = *(v14 + 3);
    v19 = *v14;
    v20 = *(v14 + 1);
    v21 = sub_1CF686424();
    *&v62 = 0x3A63657220;
    *(&v62 + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v21);

    v16 = 0xE500000000000000;
    v15 = 0x3A63657220;
  }

  v22 = v0 + v2[15];
  if (v22[16])
  {
    v57 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = *v22;
    v25 = *(v22 + 1);
    v26 = sub_1CF6865D8();
    *&v62 = 0x3A63657220;
    *(&v62 + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v26);

    v23 = 0xE500000000000000;
    v57 = 0x3A63657220;
  }

  v27 = *(v0 + v2[16]);
  if (v27)
  {
    strcpy(&v62, " unsupported:");
    HIWORD(v62) = -4864;
    v28 = sub_1CF071470(v27);
    MEMORY[0x1D3868CC0](v28);

    v29 = *(&v62 + 1);
    v55 = v62;
  }

  else
  {
    v55 = 0;
    v29 = 0xE000000000000000;
  }

  v56 = v29;
  v30 = (v0 + v2[17]);
  v31 = *v30;
  v32 = v30[1] >> 62;
  v61 = v11;
  v59 = v15;
  v60 = v16;
  v58 = v23;
  if (!v32)
  {
    v33 = 1852270888;
    goto LABEL_17;
  }

  if (v32 == 1)
  {
    v33 = 1886221352;
LABEL_17:
    *&v62 = v33 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
    *(&v62 + 1) = 0xE500000000000000;
    v34 = fpfs_tempfile_pattern_t.description.getter(v31);
    MEMORY[0x1D3868CC0](v34);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v35 = 0xE500000000000000;
    v36 = v62;
    goto LABEL_19;
  }

  v36 = 0;
  v35 = 0xE000000000000000;
LABEL_19:
  if (*(v0 + v2[12]) == 1)
  {
    v37 = 47;
  }

  else
  {
    v37 = 0;
  }

  if (*(v0 + v2[12]) == 1)
  {
    v38 = 0xE100000000000000;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  v78 = 3830588;
  v79 = 0xE300000000000000;
  v39 = *v0;
  v40 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v40);

  MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v41 = v0[1];
  v42 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v42);

  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v43 = v0[10];
  v44 = v0[11];
  v45 = sub_1CF9E6888();
  v46 = [v45 fp_obfuscatedFilename];

  v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v48;

  MEMORY[0x1D3868CC0](v47, v49);

  MEMORY[0x1D3868CC0](v37, v38);

  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v36, v35);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v50 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v50);

  MEMORY[0x1D3868CC0](v55, v56);

  MEMORY[0x1D3868CC0](3831328, 0xE300000000000000);
  v51 = v1[2];
  v62 = v1[1];
  v63 = v51;
  v52 = v1[4];
  v64 = v1[3];
  v53 = sub_1CF680318();
  MEMORY[0x1D3868CC0](v53);

  MEMORY[0x1D3868CC0](v59, v60);

  MEMORY[0x1D3868CC0](v57, v58);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v61, v12);

  return 3830588;
}