uint64_t sub_21907015C(uint64_t a1)
{
  v2 = sub_219070758(&unk_27CC1AEC0, type metadata accessor for MyMagazinesBuildBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_219070278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesSectionDescriptor;
    v8[1] = type metadata accessor for MyMagazinesModel();
    v8[2] = sub_218B7DFD4();
    v8[3] = sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219070338()
{
  if (!qword_27CC15800)
  {
    sub_218B7E0BC(255);
    sub_219070758(&qword_27CC15808, sub_218B7E0BC);
    sub_219070758(&qword_27CC15810, sub_218B7E0BC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15800);
    }
  }
}

unint64_t sub_219070404()
{
  result = qword_27CC15820;
  if (!qword_27CC15820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15820);
  }

  return result;
}

uint64_t sub_219070458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190704B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219070520()
{
  if (!qword_27CC15830)
  {
    sub_218953F20();
    sub_219070758(&qword_27CC15840, sub_218953F20);
    sub_219070758(&qword_27CC15848, sub_218953F20);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15830);
    }
  }
}

void sub_21907060C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219070670()
{
  result = qword_280E8EF00;
  if (!qword_280E8EF00)
  {
    sub_21907060C(255, &qword_280E8EF08, MEMORY[0x277D32F30], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EF00);
  }

  return result;
}

uint64_t sub_2190706F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_219070758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2190707A0()
{
  v1 = type metadata accessor for SharedWithYouTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 16;
  sub_2189AE994(0);
  v27 = v0;
  v31 = sub_219BEE964();
  sub_2186E497C(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v5 = v4;
  v6 = *(v4 - 8);
  v30 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09EC0;
  v9 = (v8 + v7);
  v28 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  v29 = v8;
  sub_2186E0CD8();
  v26[2] = v10;
  sub_219BEDD14();
  v11 = sub_219BF1784();
  v13 = v12;
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  v26[0] = *(v15 + 8);
  v26[1] = v15 + 8;
  (v26[0])(v3, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  sub_218D90870();
  swift_allocObject();
  *v9 = sub_219BEFB94();
  v17 = *MEMORY[0x277D32308];
  v18 = *(v6 + 104);
  v18(v9, v17, v5);
  sub_219BEDD14();
  v19 = sub_219BF1784();
  v21 = v20;
  (v26[0])(v3, v14);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  swift_allocObject();
  v23 = sub_219BEFB94();
  v24 = v30;
  *(v9 + v30) = v23;
  v18((v9 + v24), v17, v5);
  v32 = v31;
  sub_2191EE478(v29);
  return v32;
}

uint64_t sub_219070B10(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = sub_219BF0BD4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_219BDBD34();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = sub_219BF12B4();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219070D48, 0, 0);
}

uint64_t sub_219070D48()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v0[26] = qword_280F616D8;
  sub_219BF6214();
  sub_219BE5314();

  v1 = swift_task_alloc();
  v0[27] = v1;
  sub_2186E497C(0, &unk_280E8EEF0, MEMORY[0x277D33250], MEMORY[0x277D83940]);
  *v1 = v0;
  v1[1] = sub_219070EB0;
  v3 = v0[7];

  return MEMORY[0x2821D20A8](v0 + 2, &unk_219C572C0, v3, v2);
}

uint64_t sub_219070EB0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_219071F68;
  }

  else
  {

    v2 = sub_219070FCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219070FCC()
{
  v46 = v0;
  v1 = v0[2];
  sub_219BF6214();
  v2 = sub_219BE5314();
  v43 = *(v1 + 16);
  if (v43)
  {
    v3 = 0;
    v4 = v0[21];
    v41 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v42 = v4;
    v40 = (v4 + 8);
    v37 = (v4 + 40);
    v38 = (v4 + 32);
    v5 = MEMORY[0x277D84F98];
    v39 = v1;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v6 = *(v42 + 72);
      v7 = *(v42 + 16);
      v7(v0[25], v41 + v6 * v3, v0[20]);
      v8 = sub_219BF12A4();
      v10 = v9;
      if (v9)
      {
        v11 = v8;
        v7(v0[24], v0[25], v0[20]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v5;
        v2 = sub_21870F700(v11, v10);
        v14 = v5[2];
        v15 = (v13 & 1) == 0;
        v16 = __OFADD__(v14, v15);
        v17 = v14 + v15;
        if (v16)
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v5[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = v2;
            sub_21949402C();
            v2 = v27;
          }
        }

        else
        {
          sub_219483D7C(v17, isUniquelyReferenced_nonNull_native);
          v2 = sub_21870F700(v11, v10);
          if ((v18 & 1) != (v19 & 1))
          {

            return sub_219BF79A4();
          }
        }

        v21 = v0[24];
        v20 = v0[25];
        v22 = v0[20];
        if (v18)
        {
          v23 = v2;

          v5 = v45;
          (*v37)(v45[7] + v23 * v6, v21, v22);
          v2 = (*v40)(v20, v22);
        }

        else
        {
          v5 = v45;
          v45[(v2 >> 6) + 8] |= 1 << v2;
          v24 = (v5[6] + 16 * v2);
          *v24 = v11;
          v24[1] = v10;
          (*v38)(v5[7] + v2 * v6, v21, v22);
          v2 = (*v40)(v20, v22);
          v25 = v5[2];
          v16 = __OFADD__(v25, 1);
          v26 = v25 + 1;
          if (v16)
          {
            goto LABEL_29;
          }

          v5[2] = v26;
        }

        v1 = v39;
      }

      else
      {
        v2 = (*v40)(v0[25], v0[20]);
      }

      if (v43 == ++v3)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_19:
  v0[29] = v5;
  v28 = v0[7];

  sub_2186E497C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v0[30] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09BA0;
  v31 = v5[2];
  v32 = MEMORY[0x277D83C10];
  *(v30 + 56) = MEMORY[0x277D83B88];
  *(v30 + 64) = v32;
  *(v30 + 32) = v31;
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService), *(v28 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService + 24));
  v33 = v5[2];
  if (v33 && (v34 = sub_21947D1C0(v33, 0), v44 = sub_2194B7E3C(&v45, v34 + 4, v33, v5), , v2 = sub_21892DE98(), v44 != v33))
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    v0[31] = sub_219BF2844();

    v35 = swift_task_alloc();
    v0[32] = v35;
    *v35 = v0;
    v35[1] = sub_2190714D4;
    v2 = (v0 + 3);
  }

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_2190714D4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_219072044;
  }

  else
  {
    v2 = sub_219071618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219071618()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_51;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v79 = v1;
  if (v2)
  {
    v3 = 0;
    v74 = *(v0 + 128);
    v75 = *(v0 + 136);
    v84 = v1 & 0xFFFFFFFFFFFFFF8;
    v85 = v1 & 0xC000000000000001;
    v76 = *(v0 + 168);
    v77 = *(v0 + 232);
    v73 = v76 + 32;
    v4 = MEMORY[0x277D84F90];
    v82 = v2;
    while (1)
    {
      if (v85)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v3 >= *(v84 + 16))
        {
          goto LABEL_50;
        }

        v5 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v2 = sub_219BF7214();
          goto LABEL_3;
        }
      }

      v7 = *(v0 + 232);
      v8 = [v5 articleID];
      v9 = sub_219BF5414();
      v11 = v10;

      if (*(v7 + 16))
      {
        v12 = sub_21870F700(v9, v11);
        v14 = v13;

        if (v14)
        {
          v16 = *(v0 + 176);
          v15 = *(v0 + 184);
          v17 = *(v0 + 160);
          v80 = *(v0 + 152);
          v18 = v4;
          v19 = *(v0 + 144);
          (*(v76 + 16))(v16, *(v77 + 56) + *(v76 + 72) * v12, v17);
          v20 = *(v76 + 32);
          v20(v15, v16, v17);
          v20(v19 + *(v74 + 20), v15, v17);
          *v19 = v5;
          v21 = v19;
          v4 = v18;
          sub_2190750EC(v21, v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_2191F9BF8(0, v18[2] + 1, 1, v18);
          }

          v23 = v4[2];
          v22 = v4[3];
          v0 = v78;
          if (v23 >= v22 >> 1)
          {
            v4 = sub_2191F9BF8(v22 > 1, v23 + 1, 1, v4);
          }

          v24 = *(v78 + 152);
          v4[2] = v23 + 1;
          sub_2190750EC(v24, v4 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v23);
          v1 = v79;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
      if (v6 == v82)
      {
        v86 = v4;
        goto LABEL_23;
      }
    }
  }

  v86 = MEMORY[0x277D84F90];
LABEL_23:
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v28 = *(v0 + 56);

  sub_219BEF094();
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  sub_219BDBBF4();
  v83 = *(v27 + 8);
  v83(v25, v26);
  v29 = [*(v28 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_cloudContext) readingHistory];
  v30 = [v29 allReadArticleIDs];

  v31 = sub_219BF5D44();
  if ((NFStoreDemoMode() & 1) != 0 || (sub_219BDC5F4(), sub_21907520C(&qword_280E9EF68, type metadata accessor for SharedWithYouTodayFeedGroupEmitter), sub_219BDC7D4(), , *(v0 + 272) == 1))
  {

    v32 = v86;
  }

  else
  {
    v33 = *(v0 + 120);
    v34 = swift_task_alloc();
    *(v34 + 16) = v33;
    *(v34 + 24) = v31;

    v32 = sub_2195E6978(sub_219075150, v34, v86);
  }

  v36 = *(v0 + 80);
  v35 = *(v0 + 88);
  v37 = *(v0 + 72);
  sub_219BEF134();
  sub_219BEF524();
  v38 = *(v36 + 8);
  v38(v35, v37);
  v39 = *(v0 + 32);
  if (*(v32 + 16) < v39)
  {
    v40 = *(v0 + 120);
    v41 = *(v0 + 96);

    v42 = sub_219BEEDD4();
    sub_21907520C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    v44 = v43;
    v45 = *(v86 + 16);

    *v44 = v39;
    v44[1] = v45;
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D32400], v42);
    swift_willThrow();
    v46 = v40;
    v47 = v41;
LABEL_46:
    v83(v46, v47);

    v72 = *(v0 + 8);

    return v72();
  }

  v81 = *(v32 + 16);
  v48 = *(v0 + 88);
  v49 = *(v0 + 72);

  sub_219BEF134();
  sub_219BEF524();
  v38(v48, v49);
  if (*(v0 + 40) <= v39)
  {
    v50 = v39;
  }

  else
  {
    v50 = *(v0 + 40);
  }

  v54 = sub_219A78120(v50, v32);
  if ((v53 & 1) == 0)
  {
    goto LABEL_33;
  }

  v57 = v53;
  v58 = v52;
  v59 = v51;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v60 = swift_dynamicCastClass();
  if (!v60)
  {
    swift_unknownObjectRelease();
    v60 = MEMORY[0x277D84F90];
  }

  v61 = *(v60 + 16);

  if (__OFSUB__(v57 >> 1, v58))
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v61 != (v57 >> 1) - v58)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v53 = v57;
    v52 = v58;
    v51 = v59;
LABEL_33:
    sub_218B671D4(v54, v51, v52, v53);
    v56 = v55;
    goto LABEL_40;
  }

  v56 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v56)
  {
    goto LABEL_41;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_40:
  swift_unknownObjectRelease();
LABEL_41:
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_219C09EC0;
  v63 = MEMORY[0x277D83B88];
  v64 = MEMORY[0x277D83C10];
  *(v62 + 56) = MEMORY[0x277D83B88];
  *(v62 + 64) = v64;
  *(v62 + 32) = v81;
  v65 = *(v56 + 16);
  *(v62 + 96) = v63;
  *(v62 + 104) = v64;
  *(v62 + 72) = v65;
  sub_219BF6214();
  sub_219BE5314();

  if (!*(v56 + 16))
  {
    v68 = *(v0 + 120);
    v69 = *(v0 + 96);

    v70 = sub_219BEEDD4();
    sub_21907520C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D323A8], v70);
    swift_willThrow();
    v46 = v68;
    v47 = v69;
    goto LABEL_46;
  }

  v83(*(v0 + 120), *(v0 + 96));

  v66 = *(v0 + 8);

  return v66(v56);
}

uint64_t sub_219071F68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219072044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219072118(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E497C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186E497C(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186E497C(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_218A89A94(0);
  v3[14] = swift_task_alloc();
  sub_2186FE720();
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for SharedWithYouTodayFeedGroupConfigData();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_219BF1934();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = *(type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0) - 8);
  v3[25] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v10 = sub_219BF3E84();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219072588, 0, 0);
}

uint64_t sub_219072588()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v60 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v58 = *(v4 + 72);
    v56 = *MEMORY[0x277D34128];
    do
    {
      v6 = *(v0 + 224);
      v8 = *(v0 + 200);
      v7 = *(v0 + 208);
      sub_219075170(v5, v8, type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item);
      v9 = *v8;
      swift_unknownObjectRetain();
      sub_219075254(v8, type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item);
      *v6 = v9;
      (*(v3 + 104))(v6, v56, v7);
      v11 = *(v60 + 16);
      v10 = *(v60 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_218C34A88(v10 > 1, v11 + 1, 1);
      }

      v12 = *(v0 + 224);
      v13 = *(v0 + 208);
      *(v60 + 16) = v11 + 1;
      (*(v3 + 32))(v60 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v5 += v58;
      --v2;
    }

    while (v2);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v48 = *(v0 + 248);
  v49 = *(v0 + 240);
  v50 = *(v0 + 232);
  v41 = *(v0 + 176);
  v42 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v46 = *(v0 + 128);
  v59 = *(v0 + 120);
  v47 = *(v0 + 112);
  v52 = *(v0 + 56);
  v53 = *(v0 + 48);
  v17 = *(v0 + 32);
  v54 = *(v0 + 40);
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  v51 = v17;
  v55 = *(v17 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService + 32);
  v57 = *(v17 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService), v57);
  sub_2186E0CD8();
  sub_219BEDD14();
  sub_219BF7314();

  sub_219BEDD14();
  v18 = sub_219BF1704();
  v20 = v19;
  v21 = *(v41 + 8);
  *(v0 + 256) = v21;
  *(v0 + 264) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v15, v42);
  MEMORY[0x21CECC330](v18, v20);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  sub_219BDBD54();
  v22 = sub_219BDBD44();
  v24 = v23;
  (*(v44 + 8))(v16, v46);
  MEMORY[0x21CECC330](v22, v24);

  v25 = sub_219BEC004();
  v45 = *(*(v25 - 8) + 56);
  v45(v59, 1, 1, v25);
  sub_218A42400(0);
  (*(*(v26 - 8) + 56))(v47, 1, 1, v26);
  sub_219BF1764();

  sub_219075254(v47, sub_218A89A94);
  sub_219075254(v59, sub_2186FE720);
  v21(v43, v42);
  sub_2186E497C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v27 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C0B8C0;
  (*(v49 + 16))(v28 + v27, v48, v50);
  sub_219074720();
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  sub_219074BB8();
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  v45(v59, 1, 1, v25);
  sub_219A95188(v14);
  sub_219A95188(v14);
  sub_219A951A0(v14);
  sub_219A951B8(v14);
  sub_219A952CC(v14);
  sub_219A952E4(v14);
  sub_219A953F8(v14);
  sub_219BF2024();
  v29 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v31 = v30;
  v32 = *(v30 - 8);
  (*(v32 + 16))(v52, v51 + v29, v30);
  (*(v32 + 56))(v52, 0, 1, v31);
  v33 = sub_219BF35D4();
  (*(*(v33 - 8) + 56))(v53, 1, 1, v33);
  *(v0 + 296) = 16;
  sub_218D451AC();
  swift_allocObject();

  sub_219BF38D4();
  v34 = sub_219BF2774();
  (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
  v35 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v35 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v36 = swift_task_alloc();
  *(v0 + 272) = v36;
  *v36 = v0;
  v36[1] = sub_219072EB0;
  v37 = *(v0 + 184);
  v38 = *(v0 + 104);
  v39 = *(v0 + 80);

  return MEMORY[0x2821921B8](v37, v38, v39, v57, v55);
}

uint64_t sub_219072EB0(uint64_t a1)
{
  v3 = *v2;
  v3[35] = v1;

  v15 = v3[32];
  v4 = v3[23];
  v5 = v3[21];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_21907326C;
  }

  else
  {
    v3[36] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219073130;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_219073130()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_21907326C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2190733A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[3] = a1;
  v23 = a2;
  sub_2186E497C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BED8D4();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v20 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  sub_2186E0CD8();
  v12 = v11;

  v13 = sub_219BEDCB4();
  v19[1] = v14;
  v19[2] = v13;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  sub_2189AE9B4(0);
  sub_219BEEC84();
  v15 = v20;
  sub_219BED834();
  v16 = v23;
  (*(*(v12 - 8) + 16))(v23, v3 + v10, v12);
  v17 = type metadata accessor for SharedWithYouTodayFeedGroup();
  (*(v21 + 32))(v16 + *(v17 + 20), v15, v22);
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2190736F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_219073710, 0, 0);
}

uint64_t sub_219073710()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_sharedItemManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2190737D0;

  return MEMORY[0x282192920](v2, v3);
}

uint64_t sub_2190737D0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2190738D0, 0, 0);
}

uint64_t sub_2190738F4(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0);
  sub_219BF1284();
  sub_21907520C(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v9 = sub_219BF5334();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    return 0;
  }

  v10 = *a1;
  v11 = [*a1 articleID];
  v12 = sub_219BF5414();
  v14 = v13;

  v15 = sub_2188537B8(v12, v14, a3);

  if (v15)
  {
    return 0;
  }

  else
  {
    return [v10 isFromBlockedStorefront] ^ 1;
  }
}

uint64_t sub_219073AA8()
{
  v1 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  sub_2186E0CD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219075254(v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_sharedItemManager);

  return swift_deallocClassInstance();
}

void sub_219073BE4()
{
  sub_2186E0CD8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219073CD4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_219073D74;

  return sub_219070B10(a2);
}

uint64_t sub_219073D74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 56) = v8;
    *v8 = v5;
    v8[1] = sub_219073EF4;
    v9 = *(v4 + 24);

    return sub_219072118(v9, a1);
  }
}

uint64_t sub_219073EF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_2190740C0;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_219074024;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219074024()
{
  sub_2190733A4(v0[9], v0[2]);

  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[1];

  return v1();
}

uint64_t sub_2190740C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219074124()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219074164@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  sub_2186E0CD8();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2190741F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  a1[4] = sub_21907520C(&qword_280EA4BA8, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  a1[5] = sub_21907520C(&qword_280EA4BB0, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219075170(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
}

uint64_t sub_2190742C4()
{
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs();

  return sub_219BEF884();
}

uint64_t sub_21907438C@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E497C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0CD8();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219075254(inited + 32, sub_2188317B0);
  sub_2190751D8(0);
  a1[3] = v5;
  a1[4] = sub_21907520C(&unk_280EE76C0, sub_2190751D8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21907452C()
{
  sub_21907520C(&qword_280E9EF58, type metadata accessor for SharedWithYouTodayFeedGroupEmitter);

  return sub_219BE2324();
}

size_t sub_219074720()
{
  v25 = sub_219BF14C4();
  v0 = *(v25 - 8);
  v1 = MEMORY[0x28223BE20](v25);
  v23 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v22 = &v20 - v3;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2124();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2186E497C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v11 = *(v0 + 72);
  v24 = v0;
  v20 = ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_219BF2394();
  v13 = sub_219BF2364();
  MEMORY[0x21CEC9120]();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BDB914();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219075254(v6, sub_21873F65C);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
  }

  else
  {
    v14 = v21;
    (*(v8 + 32))(v21, v6, v7);
    sub_219BF20E4();
    v15 = v22;
    sub_219BF14A4();
    v17 = v23;
    v16 = v24;
    v18 = v25;
    (*(v24 + 16))(v23, v15, v25);
    v12 = sub_2191F7664(1uLL, 2, 1, v12);
    (*(v16 + 8))(v15, v18);
    (*(v8 + 8))(v14, v7);
    *(v12 + 16) = 2;
    (*(v16 + 32))(v12 + v20, v17, v18);
  }

  return v12;
}

size_t sub_219074BB8()
{
  v25 = sub_219BF14C4();
  v0 = *(v25 - 8);
  v1 = MEMORY[0x28223BE20](v25);
  v23 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v22 = &v20 - v3;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2124();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2186E497C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v11 = *(v0 + 72);
  v24 = v0;
  v20 = ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_219BF2394();
  v13 = sub_219BF2364();
  MEMORY[0x21CEC9120]();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BDB914();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219075254(v6, sub_21873F65C);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
  }

  else
  {
    v14 = v21;
    (*(v8 + 32))(v21, v6, v7);
    sub_219BF20E4();
    v15 = v22;
    sub_219BF14A4();
    v17 = v23;
    v16 = v24;
    v18 = v25;
    (*(v24 + 16))(v23, v15, v25);
    v12 = sub_2191F7664(1uLL, 2, 1, v12);
    (*(v16 + 8))(v15, v18);
    (*(v8 + 8))(v14, v7);
    *(v12 + 16) = 2;
    (*(v16 + 32))(v12 + v20, v17, v18);
  }

  return v12;
}

uint64_t sub_219075050(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2190736F0(a1, v1);
}

uint64_t sub_2190750EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219075170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21907520C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219075254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190752DC()
{
  result = sub_218731D50();
  if (v1 <= 0x3F)
  {
    result = sub_219BF12B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219075360(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2186D8B7C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[16] = swift_task_alloc();
  sub_219BEF554();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190754B8, 0, 0);
}

uint64_t sub_2190754B8()
{
  sub_219075B98(*(v0 + 112));
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_219075558;
  v2 = *(v0 + 112);

  return sub_219075E5C(v0 + 16, v2);
}

uint64_t sub_219075558()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 40);
    *(v2 + 96) = *(v2 + 56);
    *(v2 + 64) = v6;
    *(v2 + 80) = v7;
    v8 = swift_task_alloc();
    *(v2 + 184) = v8;
    *v8 = v3;
    v8[1] = sub_21907570C;
    v9 = *(v2 + 112);

    return sub_21908253C(v9, (v2 + 64));
  }
}

uint64_t sub_21907570C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_219075AFC;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_219075834;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219075834()
{
  v1 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v2 = v0[13];
  sub_2186E0010();
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for ForYouTodayFeedGroupKnobs();
  sub_219083DD4(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  sub_2190839A0((v0 + 8));
  (*(v1 + 32))(v2, v5, v6);
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_219083DD4(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_219075AFC()
{

  sub_2190839A0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219075B98(uint64_t a1)
{
  sub_2186D8B7C(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  sub_219BEF124();
  sub_219793808(v18);

  if (v18[0] != 1)
  {
    v7 = v18[3];
    v8 = v19;
    sub_219083CA8(v18, &qword_27CC15888, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs);
    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = (v6 + *(type metadata accessor for ForYouTodayFeedGroupKnobs() + 36));
  if ((v9[1] & 1) == 0)
  {
    v7 = *v9;
LABEL_5:
    v10 = sub_219BF5BF4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v11[5] = a1;

    sub_2195E70E0(0, 0, v5, &unk_219C574E8, v11);
  }

  sub_219BEF124();
  sub_219793808(v20);

  if (v20[0] == 1 || (v12 = v20[5], v13 = v21, sub_219083CA8(v20, &qword_27CC15888, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs), (v13 & 1) != 0))
  {
    result = type metadata accessor for ForYouTodayFeedGroupKnobs();
    v15 = (v6 + *(result + 40));
    if (v15[1])
    {
      return result;
    }

    v12 = *v15;
  }

  v16 = sub_219BF5BF4();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v12;

  sub_2195E70E0(0, 0, v5, &unk_219C574D8, v17);
}

uint64_t sub_219075E5C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_219BEDC04();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219075F20, 0, 0);
}

uint64_t sub_219075F20()
{
  sub_219BEF164();
  v0[15] = v0[2];
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_219076010;

  return sub_2190779E4();
}

uint64_t sub_219076010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[17] = a1;
  v6[18] = a2;
  v6[19] = a3;
  v6[20] = a4;
  v6[21] = v4;

  if (v4)
  {
    v7 = sub_219077550;
  }

  else
  {
    v7 = sub_21907612C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

size_t sub_21907612C()
{
  v1 = *(v0 + 88);
  v2 = sub_218BACCDC(*(v0 + 136), *(v0 + 144));
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability), *(v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability + 24));
  if (sub_219BE4ED4())
  {
    v53 = v2;
    v52 = *(v0 + 120) + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v3 = *(v52 + 16);

    sub_219BEF0B4();
    v4 = *(*(v0 + 24) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

    v5 = *(v4 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

    v6 = -1;
    v7 = -1 << *(v5 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v5 + 64);
    v9 = (63 - v7) >> 6;

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10;
      if (!v8)
      {
        break;
      }

LABEL_9:
      v8 &= v8 - 1;
      v13 = [swift_unknownObjectRetain_n() clusterID];
      if (v13)
      {
        v50 = v13;
        v54 = sub_219BF5414();
        v51 = v14;

        swift_unknownObjectRelease_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v19 = sub_218840D24((v15 > 1), v16 + 1, 1, v11);
          v17 = v16 + 1;
          v11 = v19;
        }

        *(v11 + 2) = v17;
        v18 = &v11[16 * v16];
        *(v18 + 4) = v54;
        *(v18 + 5) = v51;
      }

      else
      {
        swift_unknownObjectRelease_n();
      }
    }

    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v10);
      ++v12;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    v22 = *(v0 + 152);
    v23 = *(v0 + 88);

    v24 = sub_218845F78(v11);

    v25 = *(v23 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_cloudContext);
    sub_219BEF0B4();
    sub_219077F00(v2, v3, v24, v22, v25, *(v0 + 32), 0x6574692064656566, 0xEA0000000000736DLL);
    v27 = v26;

    if (v27 >> 62)
    {
      if (sub_219BF7214())
      {
        v28 = sub_219BF7214();
        if (!v28)
        {

          v32 = MEMORY[0x277D84F90];
LABEL_29:
          *(v0 + 176) = v32;
          v41 = *(v0 + 144);
          sub_219BEF864();
          sub_21907EAB8(v53, v41, v32);

          *(v0 + 184) = sub_219BEF824();
          v42 = *(v52 + 16);
          *(v0 + 192) = v42;

          v43 = swift_task_alloc();
          *(v0 + 200) = v43;
          *v43 = v0;
          v43[1] = sub_219076844;
          v44 = *(v0 + 144);
          v45 = *(v0 + 152);
          v46 = *(v0 + 80);

          return sub_21907ED0C(v32, v46, v44, v45, v42);
        }

LABEL_20:
        v55 = MEMORY[0x277D84F90];
        result = sub_218C34908(0, v28 & ~(v28 >> 63), 0);
        if (v28 < 0)
        {
          __break(1u);
          return result;
        }

        v30 = 0;
        v31 = *(v0 + 104);
        v32 = v55;
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x21CECE0F0](v30, v27);
          }

          else
          {
            v33 = *(v27 + 8 * v30 + 32);
          }

          v34 = *(v0 + 144);
          v35 = v33;
          v36 = [v34 objectForKey_];
          sub_219BEDBD4();

          v38 = *(v55 + 16);
          v37 = *(v55 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_218C34908(v37 > 1, v38 + 1, 1);
          }

          v39 = *(v0 + 112);
          v40 = *(v0 + 96);
          ++v30;
          *(v55 + 16) = v38 + 1;
          (*(v31 + 32))(v55 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v38, v39, v40);
        }

        while (v28 != v30);

        goto LABEL_29;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_20;
      }
    }

    v20 = *(v0 + 144);

    v21 = MEMORY[0x277D323A8];
  }

  else
  {

    if (qword_280E8D7A0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v20 = *(v0 + 144);
    sub_219BF61F4();
    sub_219BE5314();
    v21 = MEMORY[0x277D32408];
  }

  v47 = sub_219BEEDD4();
  sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v47 - 8) + 104))(v48, *v21, v47);
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_219076844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[26] = a1;
  v6[27] = a2;
  v6[28] = a3;
  v6[29] = a4;
  v6[30] = v4;

  if (v4)
  {
    v7 = sub_219076DA4;
  }

  else
  {

    v7 = sub_219076968;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_219076968()
{
  v0[5] = v0[26];
  sub_2186D8B7C(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
  sub_218E5B3A8();
  v1 = sub_219BF5784();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v0[31] = qword_280F616D8;
  sub_2186F20D4();
  v0[32] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = *(v2 + 16);

  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v7;
  *(v4 + 32) = v5;
  if (v1 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 96) = v6;
  *(v4 + 104) = v7;
  *(v4 + 72) = v8;
  sub_219BF6214();
  sub_219BE5314();

  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v9 = v0[26];
    __swift_project_boxed_opaque_existential_1((v0[11] + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService), *(v0[11] + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService + 24));
    v0[7] = v9;
    v10 = sub_219BF5764();

    sub_219BEF0B4();
    swift_unknownObjectRetain();

    v0[33] = sub_219BF27A4();

    swift_unknownObjectRelease();
    v11 = swift_task_alloc();
    v0[34] = v11;
    *v11 = v0;
    v11[1] = sub_219076E6C;

    return MEMORY[0x2821D23D8](v0 + 6);
  }

  v12 = v0[28];
  v13 = v0[27];
  v14 = v0[18];

  v15 = sub_219BEEDD4();
  sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D323A8], v15);
  swift_willThrow();
  sub_219083AE0(v13, v12);

  v17 = v0[1];

  return v17();
}

uint64_t sub_219076DA4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219076E6C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2190775BC;
  }

  else
  {

    v2 = sub_219076F88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219076F88()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[11];
  v4 = v3 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  v5 = type metadata accessor for ForYouTodayFeedGroupKnobs();
  v6 = *(v4 + *(v5 + 24));
  if (v2 >= v6)
  {
    v12 = v5;
    v13 = sub_2190789E4(v3);
    if (!v13)
    {
      v27 = v0[28];
      v28 = v0[27];
      v52 = v0[18];

      v29 = sub_219BEEDD4();
      sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D323A8], v29);
      swift_willThrow();
      v10 = v28;
      v11 = v27;
      goto LABEL_15;
    }

    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C0D560;
    v16 = MEMORY[0x277D83B88];
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v17;
    *(v15 + 32) = v2;
    if (v14 >> 62)
    {
      v18 = sub_219BF7214();
    }

    else
    {
      v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = v18;
    v19 = *(v4 + *(v12 + 28));
    v20 = MEMORY[0x277D839F0];
    *(v15 + 136) = MEMORY[0x277D839B0];
    *(v15 + 144) = v20;
    *(v15 + 112) = v19;
    if (v1 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v1 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x21CECE0F0](0, v1);
        }

        else
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v22 = *(v1 + 32);
          swift_unknownObjectRetain();
        }

        v23 = [v22 identifier];
        swift_unknownObjectRelease();
        v24 = sub_219BF5414();
        v26 = v25;

LABEL_18:
        v32 = MEMORY[0x277D837D0];
        *(v15 + 176) = MEMORY[0x277D837D0];
        v33 = sub_2186FC3BC();
        *(v15 + 184) = v33;
        if (v26)
        {
          v34 = v24;
        }

        else
        {
          v34 = 0;
        }

        v35 = 0xE000000000000000;
        if (v26)
        {
          v35 = v26;
        }

        *(v15 + 152) = v34;
        *(v15 + 160) = v35;
        if (v14 >> 62)
        {
          result = sub_219BF7214();
          v53 = v14;
          if (result)
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v53 = v14;
          if (result)
          {
LABEL_25:
            if ((v14 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x21CECE0F0](0, v14);
LABEL_28:
              v37 = [v36 identifier];
              swift_unknownObjectRelease();
              v38 = sub_219BF5414();
              v40 = v39;

              v41 = (v15 + 192);
              *(v15 + 216) = v32;
              *(v15 + 224) = v33;
              if (v40)
              {
                *v41 = v38;
LABEL_33:
                v42 = v0[28];
                v43 = v0[18];
                *(v15 + 200) = v40;
                sub_219BF6214();
                sub_219BE5314();

                if (v42)
                {
                  v44 = v0[28];
                  v45 = v0[27];

                  swift_unknownObjectRetain();
                  sub_219083AE0(v45, v44);
                  v46 = v0[29];
                  v47 = v0[27];
                }

                else
                {
                  v47 = 0;
                  v46 = 0;
                }

                v48 = v0[28];
                v49 = v0[23];
                v50 = v0[9];

                *v50 = v49;
                *(v50 + 8) = v53;
                *(v50 + 16) = v47;
                *(v50 + 24) = v48;
                *(v50 + 32) = v46;
                *(v50 + 40) = v42 != 0;
                v31 = v0[1];
                goto LABEL_37;
              }

LABEL_32:
              *v41 = 0;
              v40 = 0xE000000000000000;
              goto LABEL_33;
            }

            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v36 = *(v14 + 32);
              swift_unknownObjectRetain();
              goto LABEL_28;
            }

LABEL_45:
            __break(1u);
            return result;
          }
        }

        v41 = (v15 + 192);
        *(v15 + 216) = v32;
        *(v15 + 224) = v33;
        goto LABEL_32;
      }
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_18;
  }

  v51 = v0[28];
  v7 = v0[27];
  v52 = v0[18];

  v8 = sub_219BEEDD4();
  sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  *v9 = v6;
  v9[1] = v2;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D32400], v8);
  swift_willThrow();
  v10 = v7;
  v11 = v51;
LABEL_15:
  sub_219083AE0(v10, v11);

  v31 = v0[1];
LABEL_37:

  return v31();
}

uint64_t sub_219077550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2190775BC()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[18];

  sub_219083AE0(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21907769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8B7C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190777BC, 0, 0);
}

uint64_t sub_2190777BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_219083DD4(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_219083A70(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_219083E54(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_21907C540(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_219077A04()
{
  sub_219BE2CF4();
  v0[12] = v0[10];
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_219077AC0;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_219077AC0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_219077E24;
  }

  else
  {

    v2 = sub_219077BDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219077BDC()
{
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 40);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_219077C90;

  return MEMORY[0x2821D23D8](v0 + 48);
}

uint64_t sub_219077C90()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_219077E88;
  }

  else
  {
    v2 = sub_219077DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219077DA4()
{

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t sub_219077E24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219077E88()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_219077F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    sub_2186C6148(0, &qword_280E8E760);
    v14 = sub_219BF5204();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a5 subscriptionController];
  if (!v15)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = v15;
  v17 = [v15 autoFavoriteTagIDs];

  v90 = a7;
  v91 = a8;
  if (v17)
  {
    v18 = sub_219BF5924();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = objc_opt_self();
  sub_218845F78(v18);

  v20 = sub_219BF5D34();

  v21 = [v19 transformationWithFeedContextByFeedID:v14 autoFavoriteTagIDs:v20];

  v22 = sub_2191F7014(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_2191F7014((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[40 * v24];
  *(v25 + 4) = 0xD000000000000017;
  *(v25 + 5) = 0x8000000219CDF4A0;
  *(v25 + 6) = v21;
  *(v25 + 7) = 0;
  v25[64] = 0;
  v26 = [a5 subscriptionController];
  if (!v26)
  {
    goto LABEL_52;
  }

  v27 = v26;
  v28 = [v26 newlySubscribedTagIDsInDateRange_];

  if (v28)
  {
    v29 = sub_219BF5924();
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  sub_218845F78(v29);

  v30 = sub_219BF5D34();

  if (a4)
  {
    sub_2186C6148(0, &qword_280E8E760);
    v31 = sub_219BF5204();
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_self() transformationWithTagIDs:v30 feedContextByFeedID:v31];

  if (!v32)
  {
    goto LABEL_53;
  }

  v34 = *(v22 + 2);
  v33 = *(v22 + 3);
  if (v34 >= v33 >> 1)
  {
    v22 = sub_2191F7014((v33 > 1), v34 + 1, 1, v22);
  }

  *(v22 + 2) = v34 + 1;
  v35 = &v22[40 * v34];
  *(v35 + 2) = xmmword_219C12320;
  *(v35 + 6) = v32;
  *(v35 + 7) = 0;
  v35[64] = 0;
  v36 = [objc_opt_self() transformationWithPersonalizer_];
  if (!v36)
  {
    goto LABEL_54;
  }

  v38 = *(v22 + 2);
  v37 = *(v22 + 3);
  if (v38 >= v37 >> 1)
  {
    v86 = v36;
    v22 = sub_2191F7014((v37 > 1), v38 + 1, 1, v22);
    v36 = v86;
  }

  *(v22 + 2) = v38 + 1;
  v39 = &v22[40 * v38];
  *(v39 + 2) = xmmword_219C12330;
  *(v39 + 6) = v36;
  *(v39 + 7) = 0;
  v39[64] = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = a3;
  *(v40 + 24) = a2;
  v41 = *(v22 + 2);
  v42 = *(v22 + 3);

  if (v41 >= v42 >> 1)
  {
    v22 = sub_2191F7014((v42 > 1), v41 + 1, 1, v22);
  }

  *(v22 + 2) = v41 + 1;
  v43 = &v22[40 * v41];
  *(v43 + 2) = xmmword_219C572D0;
  *(v43 + 6) = sub_219083EBC;
  *(v43 + 7) = v40;
  v43[64] = 3;
  v44 = NewsCoreUserDefaults();
  v45 = [v44 BOOLForKey_];

  if (v45)
  {
    v46 = 0x16C022513ELL;
  }

  else
  {
    v46 = 0x16C022113ELL;
  }

  v47 = [a5 subscriptionList];
  v48 = [v47 subscribedTagIDs];

  if (v48)
  {
    sub_219BF5D44();

    v49 = sub_219BF5D34();
  }

  else
  {
    v49 = 0;
  }

  v50 = [a5 subscriptionList];
  v51 = [v50 mutedTagIDs];

  if (v51)
  {
    sub_219BF5D44();

    v94 = sub_219BF5D34();
  }

  else
  {
    v94 = 0;
  }

  v52 = [a5 readingHistory];
  v53 = [v52 readingHistoryItemsByArticleID];

  sub_2186D6710(0, &qword_280E8E1B0);
  sub_219BF5214();

  v89 = sub_219BF5204();

  v54 = [a5 audioPlaylist];
  v55 = [v54 articleIDs];

  if (!v55)
  {
    sub_219BF5924();
    v55 = sub_219BF5904();
  }

  v56 = [a5 offlineArticleManager];
  if (!v56)
  {
    goto LABEL_55;
  }

  v57 = [v56 readableArticleIDs];
  swift_unknownObjectRelease();
  sub_219BF5D44();

  v58 = sub_219BF5D34();

  v59 = [*(a6 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) briefingsTagID];
  v60 = [a5 paidAccessChecker];
  v61 = [a5 bundleSubscriptionManager];
  if (!v61)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v62 = v61;
  v63 = objc_opt_self();
  v64 = [v62 cachedSubscription];
  swift_unknownObjectRelease();
  v65 = [v63 transformationWithFilterOptions:v46 otherArticleIDs:0 otherClusterIDs:0 subscribedTagIDs:v49 mutedTagIDs:v94 readingHistoryItems:v89 playlistArticleIDs:v55 downloadedArticleIDs:v58 briefingsTagID:v59 paidAccessChecker:v60 bundleSubscription:v64 paywalledArticlesMaxCount:0];

  swift_unknownObjectRelease();
  v67 = *(v22 + 2);
  v66 = *(v22 + 3);
  v68 = v66 >> 1;
  v69 = v67 + 1;
  if (v66 >> 1 <= v67)
  {
    v22 = sub_2191F7014((v66 > 1), v67 + 1, 1, v22);
    v66 = *(v22 + 3);
    v68 = v66 >> 1;
  }

  v70 = MEMORY[0x277D837D0];
  *(v22 + 2) = v69;
  v71 = &v22[40 * v67];
  *(v71 + 4) = v65;
  *(v71 + 5) = 0;
  *(v71 + 6) = 0;
  *(v71 + 7) = 0;
  v71[64] = 1;
  v72 = v67 + 2;
  if (v68 < v72)
  {
    v22 = sub_2191F7014((v66 > 1), v72, 1, v22);
  }

  *(v22 + 2) = v72;
  v73 = &v22[40 * v69];
  *(v73 + 4) = 0xD000000000000011;
  *(v73 + 5) = 0x8000000219D093C0;
  *(v73 + 6) = sub_21907AC10;
  *(v73 + 7) = 0;
  v73[64] = 3;
  v74 = sub_218FD1490(a1, v22);
  v76 = v75;

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_219C0EE20;
  if (a1 >> 62)
  {
    v87 = v77;
    v78 = sub_219BF7214();
    v77 = v87;
  }

  else
  {
    v78 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = MEMORY[0x277D83B88];
  v80 = MEMORY[0x277D83C10];
  *(v77 + 56) = MEMORY[0x277D83B88];
  *(v77 + 64) = v80;
  *(v77 + 32) = v78;
  if (v74 >> 62)
  {
    v88 = v77;
    v81 = sub_219BF7214();
    v77 = v88;
  }

  else
  {
    v81 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v77 + 96) = v79;
  *(v77 + 104) = v80;
  *(v77 + 72) = v81;
  *(v77 + 136) = v70;
  v82 = v77;
  v83 = sub_2186FC3BC();
  v82[18] = v83;
  v82[14] = v90;
  v82[15] = v91;

  v84 = sub_218FD25C8(v76);
  v82[22] = v70;
  v82[23] = v83;
  v82[19] = v84;
  v82[20] = v85;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2190789E4(uint64_t a1)
{
  sub_2186D8B7C(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = a1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  v9 = type metadata accessor for ForYouTodayFeedGroupKnobs();
  v10 = *(v9 + 48);
  if (*(v8 + *(v9 + 28)) == 1)
  {
    sub_219083BBC(v8 + v10, v7, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v11 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
    v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
    sub_219083A70(v7, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);

    sub_219319AB8(v13);
    sub_2186D6710(0, &qword_280E8E260);
    v14 = sub_219BF5904();

    if (v12 == 1)
    {
      v15 = FCPromoteAccessibleHeadline();
    }

    else
    {
      v15 = FCPromoteAccessibleHeadlineIgnoringProminence();
    }
  }

  else
  {
    sub_219083BBC(v8 + v10, v5, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v16 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
    v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
    sub_219083A70(v5, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);

    sub_219319AB8(v18);
    sub_2186D6710(0, &qword_280E8E260);
    v14 = sub_219BF5904();

    if (v17 == 1)
    {
      v15 = FCPromoteOneHeadline();
    }

    else
    {
      v15 = FCPromoteOneHeadlineIgnoringProminence();
    }
  }

  v19 = v15;

  if (!v19)
  {
    return 0;
  }

  v20 = sub_219BF5924();

  return v20;
}

uint64_t sub_219078CE0@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v67 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D83D88];
  sub_2186D8B7C(0, &qword_280E90FF0, MEMORY[0x277D32BE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v56 - v4;
  v6 = sub_219BF0204();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides();
  MEMORY[0x28223BE20](v8);
  v62 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8B7C(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v56 - v11;
  v13 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  v18 = type metadata accessor for ForYouTodayFeedGroupKnobs();
  sub_219083BBC(v17 + *(v18 + 48), v12, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_219083E54(v12, v16, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    sub_219BEF0B4();
    v21 = *&v65[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig];
    swift_unknownObjectRetain();

    if ([v21 respondsToSelector_])
    {
      v22 = [v21 todayFeedGroupClusteringKnobOverrides];
      swift_unknownObjectRelease();
      if (v22)
      {
        sub_219BF5214();

        v23 = objc_opt_self();
        v24 = sub_219BF5204();

        v65 = 0;
        v25 = [v23 dataWithJSONObject:v24 options:0 error:&v65];

        v26 = v65;
        if (v25)
        {
          v27 = sub_219BDBA04();
          v29 = v28;

          sub_219BDAFF4();
          swift_allocObject();
          sub_219BDAFE4();
          sub_21907BD68(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
          sub_219BDAFC4();
          v57 = v27;

          v39 = v62;
          sub_219083BBC(v62 + *(v8 + 20), v5, &qword_280E90FF0, MEMORY[0x277D32BE0]);
          v40 = v60;
          v41 = v61;
          v42 = (*(v60 + 48))(v5, 1, v61);
          v58 = v29;
          if (v42 != 1)
          {
            v46 = v59;
            (*(v40 + 32))(v59, v5, v41);
            if (qword_280E8D7A0 != -1)
            {
              swift_once();
            }

            v56[1] = qword_280F616D8;
            sub_2186F20D4();
            v47 = swift_allocObject();
            *(v47 + 16) = xmmword_219C09EC0;
            v65 = 0;
            v66 = 0xE000000000000000;
            sub_219BF7484();
            v49 = v65;
            v48 = v66;
            v50 = MEMORY[0x277D837D0];
            *(v47 + 56) = MEMORY[0x277D837D0];
            v51 = sub_2186FC3BC();
            *(v47 + 64) = v51;
            *(v47 + 32) = v49;
            *(v47 + 40) = v48;
            v65 = 0;
            v66 = 0xE000000000000000;
            sub_219BF7484();
            v52 = v65;
            v53 = v66;
            *(v47 + 96) = v50;
            *(v47 + 104) = v51;
            *(v47 + 72) = v52;
            *(v47 + 80) = v53;
            sub_219BF6214();
            sub_219BE5314();

            v20 = v63;
            sub_219BEF7D4();
            sub_2186C6190(v57, v58);
            (*(v60 + 8))(v46, v61);
            sub_21907C540(v62, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
            v54 = *(v13 + 20);
            v55 = sub_219BEFF54();
            (*(*(v55 - 8) + 16))(v20 + v54, &v16[v54], v55);
            sub_21907C540(v16, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
            goto LABEL_15;
          }

          sub_219083A70(v5, &qword_280E90FF0, MEMORY[0x277D32BE0]);
          if (qword_280E8D7A0 != -1)
          {
            swift_once();
          }

          sub_2186F20D4();
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_219C09BA0;
          v65 = 0;
          v66 = 0xE000000000000000;
          sub_219BF7484();
          v44 = v65;
          v45 = v66;
          *(v43 + 56) = MEMORY[0x277D837D0];
          *(v43 + 64) = sub_2186FC3BC();
          *(v43 + 32) = v44;
          *(v43 + 40) = v45;
          sub_219BF6214();
          sub_219BE5314();
          sub_2186C6190(v57, v58);

          sub_21907C540(v39, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        }

        else
        {
          v33 = v26;
          v34 = sub_219BDB724();

          swift_willThrow();
          if (qword_280E8D7A0 != -1)
          {
            swift_once();
          }

          sub_219BF61F4();
          sub_2186F20D4();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_219C09BA0;
          v65 = 0;
          v66 = 0xE000000000000000;
          v64 = v34;
          sub_2186CFDE4(0, &qword_280E8B580);
          sub_219BF7484();
          v36 = v65;
          v37 = v66;
          *(v35 + 56) = MEMORY[0x277D837D0];
          *(v35 + 64) = sub_2186FC3BC();
          *(v35 + 32) = v36;
          *(v35 + 40) = v37;
          sub_219BE5314();
        }

LABEL_14:
        v20 = v63;
        sub_219083E54(v16, v63, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
LABEL_15:
        v19 = 0;
        return (*(v14 + 56))(v20, v19, 1, v13);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09BA0;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_219BF7484();
    v31 = v65;
    v32 = v66;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_2186FC3BC();
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_14;
  }

  sub_219083A70(v12, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v19 = 1;
  v20 = v63;
  return (*(v14 + 56))(v20, v19, 1, v13);
}

uint64_t sub_21907979C()
{
  sub_219BE2CF4();
  v0[10] = v0[8];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_219079858;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_219079858()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219079BAC;
  }

  else
  {

    v2 = sub_219079974;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219079974()
{
  v1 = v0[3];
  v0[13] = v0[2];
  v0[14] = v1;
  v0[15] = v0[5];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_219079A1C;

  return MEMORY[0x2821D23D8](v0 + 6);
}

uint64_t sub_219079A1C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_219079C10;
  }

  else
  {
    v2 = sub_219079B30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219079B30()
{

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_219079BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219079C10()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_219079C88(uint64_t a1)
{
  v2 = sub_219BF1904();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v85);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v81);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219083DD4(0, &qword_280E924A0, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31E28]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v77 - v12;
  v82 = a1;
  v14 = sub_219BEF0A4();
  v15 = v14;
  v84 = *(v14 + 16);
  if (!v84)
  {
LABEL_13:

    return MEMORY[0x277D84FA0];
  }

  v78 = v5;
  v79 = v3;
  v80 = v2;
  v16 = 0;
  v17 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    (*(v11 + 16))(v13, v17 + *(v11 + 72) * v16, v10);
    sub_219BEDC54();
    (*(v11 + 8))(v13, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    v18 = type metadata accessor for TodayFeedGroup;
    v19 = v7;
LABEL_4:
    sub_21907C540(v19, v18);
    if (v84 == ++v16)
    {
      goto LABEL_13;
    }
  }

  v20 = v83;
  sub_219083E54(v7, v83, type metadata accessor for CuratedTodayFeedGroup);
  v21 = (v20 + *(v81 + 20));
  v22 = *v21 == 0x69726F7453706F74 && v21[1] == 0xEA00000000007365;
  if (!v22 && (sub_219BF78F4() & 1) == 0)
  {
    v18 = type metadata accessor for CuratedTodayFeedGroup;
    v19 = v83;
    goto LABEL_4;
  }

  v24 = v78;
  sub_219BED874();
  v11 = sub_219BF18D4();
  (*(v79 + 8))(v24, v80);
  v86 = MEMORY[0x277D84F90];
  if (!(v11 >> 62))
  {
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_16;
    }

LABEL_34:
    v37 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

LABEL_33:
  v25 = sub_219BF7214();
  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_16:
  v26 = 0;
  v85 = v11 & 0xC000000000000001;
  while (2)
  {
    if (v85)
    {
      v27 = MEMORY[0x21CECE0F0](v26, v11);
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_29;
      }

LABEL_23:
      sub_219BEF0B4();
      v29 = *(v88 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

      v30 = *(v29 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

      v31 = [v27 identifier];
      v32 = sub_219BF5414();
      v34 = v33;

      if (*(v30 + 16))
      {
        sub_21870F700(v32, v34);
        v36 = v35;

        if (v36)
        {
          swift_unknownObjectRelease();

LABEL_19:
          ++v26;
          if (v28 == v25)
          {
            goto LABEL_30;
          }

          continue;
        }
      }

      else
      {
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      goto LABEL_19;
    }

    break;
  }

  if (v26 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v27 = *(v11 + 8 * v26 + 32);
  swift_unknownObjectRetain();
  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v37 = v86;
LABEL_35:

  v38 = v37 < 0 || (v37 & 0x4000000000000000) != 0;
  if (v38)
  {
LABEL_76:
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *(v37 + 16);
  }

  v40 = v37 & 0xC000000000000001;
  v41 = MEMORY[0x277D84F90];
  if (v39)
  {
    v42 = 0;
    do
    {
      v43 = v42;
      while (1)
      {
        if (v40)
        {
          v44 = MEMORY[0x21CECE0F0](v43, v37);
          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v43 >= *(v37 + 16))
          {
            goto LABEL_75;
          }

          v44 = *(v37 + 8 * v43 + 32);
          swift_unknownObjectRetain();
          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }
        }

        v45 = [v44 clusterID];
        if (v45)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v43;
        if (v42 == v39)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v85) = v38;
      v46 = v45;
      v47 = sub_219BF5414();
      v49 = v48;

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_218840D24(0, *(v41 + 2) + 1, 1, v41);
      }

      v51 = *(v41 + 2);
      v50 = *(v41 + 3);
      if (v51 >= v50 >> 1)
      {
        v41 = sub_218840D24((v50 > 1), v51 + 1, 1, v41);
      }

      *(v41 + 2) = v51 + 1;
      v52 = &v41[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v49;
      v38 = v85;
    }

    while (v42 != v39);
  }

LABEL_57:
  v23 = sub_218845F78(v41);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v53 = qword_280F616D8;
  sub_2186F20D4();
  v54 = swift_allocObject();
  v55 = v54;
  *(v54 + 16) = xmmword_219C09EC0;
  v86 = 0;
  v87 = 0xE000000000000000;
  if (v38)
  {
    v56 = sub_219BF7214();
    v84 = v55;
    v85 = v53;
    if (v56)
    {
      goto LABEL_61;
    }

LABEL_71:

    v59 = MEMORY[0x277D84F90];
LABEL_72:
    v67 = MEMORY[0x277D837D0];
    v68 = MEMORY[0x21CECC6D0](v59, MEMORY[0x277D837D0]);
    v70 = v69;

    MEMORY[0x21CECC330](v68, v70);

    v71 = v86;
    v72 = v87;
    v73 = v84;
    v84[7] = v67;
    v74 = sub_2186FC3BC();
    v73[8] = v74;
    v73[4] = v71;
    v73[5] = v72;
    v75 = sub_219BF5D54();
    v73[12] = v67;
    v73[13] = v74;
    v73[9] = v75;
    v73[10] = v76;
    sub_219BF6214();
    sub_219BE5314();

    sub_21907C540(v83, type metadata accessor for CuratedTodayFeedGroup);
    return v23;
  }

  else
  {
    v56 = *(v37 + 16);
    v84 = v54;
    v85 = v53;
    if (!v56)
    {
      goto LABEL_71;
    }

LABEL_61:
    v82 = v23;
    v88 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v56 & ~(v56 >> 63), 0);
    if ((v56 & 0x8000000000000000) == 0)
    {
      v58 = 0;
      v59 = v88;
      do
      {
        if (v40)
        {
          MEMORY[0x21CECE0F0](v58, v37);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v60 = [swift_unknownObjectRetain() identifier];
        v61 = sub_219BF5414();
        v63 = v62;
        swift_unknownObjectRelease_n();

        v88 = v59;
        v65 = *(v59 + 16);
        v64 = *(v59 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_21870B65C((v64 > 1), v65 + 1, 1);
          v59 = v88;
        }

        ++v58;
        *(v59 + 16) = v65 + 1;
        v66 = v59 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
      }

      while (v56 != v58);

      v23 = v82;
      goto LABEL_72;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21907A5BC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_219BDB954();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF2124();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = a1[1];
  v22 = *a1;
  v7 = v22;
  v19 = a1[2];
  v9 = v19;
  v10 = MEMORY[0x277D84560];
  sub_2186D8B7C(0, &unk_280E8B6E0, sub_219083B24, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = v7;
  v23 = inited + 32;
  *(inited + 40) = v8;
  v20 = v8;
  sub_2186D8B7C(0, &qword_280E8B860, MEMORY[0x277D333A8], v10);
  v21 = 2 * *(*(sub_219BF14C4() - 8) + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;

  v13 = [v9 name];
  sub_219BF5414();

  sub_219BF20F4();

  sub_219BF14A4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_21907A9D8(v22, v20, v19);
  sub_219BF20E4();
  (*(v24 + 8))(v5, v25);
  sub_219BF14A4();
  *(inited + 48) = v12;
  v16 = sub_2194B11C0(inited);
  swift_setDeallocating();
  result = sub_21907C540(v23, sub_219083B24);
  *v26 = v16;
  return result;
}

void sub_21907A9D8(int a1, int a2, id a3)
{
  v4 = [a3 asSection];
  if (v4)
  {
    v5 = [v4 parentID];
    if (v5)
    {
      v6 = v5;
      v8 = [objc_opt_self() nss:v5 NewsURLForTagID:?];

      sub_219BDB8B4();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v7 = [a3 identifier];
  if (!v7)
  {
    sub_219BF5414();
    v7 = sub_219BF53D4();
  }

  v8 = [objc_opt_self() nss:v7 NewsURLForTagID:?];

  sub_219BDB8B4();
LABEL_8:
}

uint64_t sub_21907AB18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 clusterID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_219BF5414();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_2188537B8(v8, v10, a2);

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [a1 articleID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_219BF5414();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = sub_2188537B8(v15, v17, a3);

    v12 = v18 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_21907AC2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_219BF7464();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21907ACF0, 0, 0);
}

uint64_t sub_21907ACF0()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21907ADCC;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_21907ADCC()
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = v0;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_21907B0B8, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v2[9] = v7;
    *v7 = v3;
    v7[1] = sub_21907AFA0;

    return sub_21907B11C();
  }
}

uint64_t sub_21907AFA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21907B0B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907B13C()
{
  sub_219BEF164();
  v0[9] = v0[6];
  sub_219BE2CF4();
  v0[10] = v0[7];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_21907B250;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21907B250()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21907B404;
  }

  else
  {

    v2 = sub_21907B36C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21907B36C()
{
  (*(v0 + 32))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907B404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907B470(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = sub_219BF7464();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v5 + 56) = v7;
  *v7 = v5;
  v7[1] = sub_21907B568;

  return MEMORY[0x2821908B8]();
}

uint64_t sub_21907B568()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21907B6B4, 0, 0);
  }
}

uint64_t sub_21907B6B4()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_21907B790;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_21907B790()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    return MEMORY[0x2822009F8](sub_21907BA44, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_21907B92C;

    return sub_21907B11C();
  }
}

uint64_t sub_21907B92C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21907BA44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907BAA8()
{
  v1 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_config;
  sub_2186E0010();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21907C540(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs, type metadata accessor for ForYouTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_personalizationService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability);

  return v0;
}

uint64_t sub_21907BBC0()
{
  sub_21907BAA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ForYouTodayFeedGroupEmitter()
{
  result = qword_280EB8938;
  if (!qword_280EB8938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21907BC6C()
{
  sub_2186E0010();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ForYouTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21907BD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21907BDB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_219075360(a1, a2);
}

uint64_t sub_21907BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_21907769C(a1, a2, a3);
}

uint64_t sub_21907BF0C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_21907BF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_config;
  sub_2186E0010();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21907BFE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ForYouTodayFeedGroupKnobs();
  a1[4] = sub_21907BD68(&qword_280EBE550, type metadata accessor for ForYouTodayFeedGroupKnobs);
  a1[5] = sub_21907BD68(&qword_280EBE558, type metadata accessor for ForYouTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219083D18(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ForYouTodayFeedGroupKnobs);
}

uint64_t sub_21907C0AC()
{
  sub_219BEF124();
  sub_219793808(&v2);

  if (v2 == 1 || (v0 = v3, sub_219083CA8(&v2, &qword_27CC15888, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs), (v0 & 1) != 0))
  {
    type metadata accessor for ForYouTodayFeedGroupKnobs();
  }

  return sub_219BEF884();
}

uint64_t sub_21907C214@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D8B7C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0010();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21907C540(inited + 32, sub_2188317B0);
  sub_2186D8B7C(0, &qword_280EE7980, type metadata accessor for ForYouTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21908404C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21907C3B4()
{
  sub_21907BD68(&qword_280EB8958, type metadata accessor for ForYouTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21907C540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21907C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_219BF7454();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21907C6A0, 0, 0);
}

uint64_t sub_21907C6A0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_219BF7464();
  v5 = sub_21907BD68(&qword_280E8D560, MEMORY[0x277D85928]);
  sub_219BF79B4();
  sub_21907BD68(&qword_280E8D578, MEMORY[0x277D858F8]);
  sub_219BF7474();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21907C830;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21907C830()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21907C9EC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21907C9EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907CA58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  sub_218C3EEF4();
  v62 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_219083D18(v40 + v39, v41, sub_218C3EEF4);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_219083D18(v43, v60, sub_218C3EEF4);
          v50 = sub_219726C30(v48, v49, v63);
          if (v47)
          {
            sub_21907C540(v49, sub_218C3EEF4);
            sub_21907C540(v48, sub_218C3EEF4);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_21907C540(v49, sub_218C3EEF4);
          sub_21907C540(v48, sub_218C3EEF4);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_219083D18(a2, v22, sub_218C3EEF4);
        sub_219083D18(a4, v18, sub_218C3EEF4);
        v32 = sub_219726C30(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_21907C540(v34, sub_218C3EEF4);
        sub_21907C540(v22, sub_218C3EEF4);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_21907C540(v18, sub_218C3EEF4);
      sub_21907C540(v22, sub_218C3EEF4);
    }
  }

LABEL_62:
  sub_2189F19B8(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_21907D09C(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v209 = a1;
  sub_218C3EEF4();
  v9 = v8;
  v217 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v211 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v229 = &v205 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v234 = (&v205 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v233 = (&v205 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v237 = &v205 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v235 = &v205 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v226 = (&v205 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v225 = (&v205 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v220 = (&v205 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v219 = (&v205 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v224 = &v205 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v222 = &v205 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v34);
  v218 = a3;
  v37 = a3[1];
  v231 = a5;
  if (v37 < 1)
  {
    swift_bridgeObjectRetain_n();
    v39 = MEMORY[0x277D84F90];
LABEL_129:
    v37 = *v209;
    if (!*v209)
    {
      goto LABEL_168;
    }

    a4 = v39;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_131;
  }

  v205 = &v205 - v35;
  v206 = v36;
  swift_bridgeObjectRetain_n();
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v208 = a4;
  v236 = v9;
LABEL_4:
  v212 = v39;
  if (v38 + 1 >= v37)
  {
    v86 = v38 + 1;
    goto LABEL_41;
  }

  v221 = v37;
  v40 = *v218;
  v41 = *(v217 + 72);
  v42 = *v218 + v41 * (v38 + 1);
  v43 = v38;
  v44 = v205;
  sub_219083D18(v42, v205, sub_218C3EEF4);
  v45 = v206;
  sub_219083D18(v40 + v41 * v43, v206, sub_218C3EEF4);
  v46 = v223;
  LODWORD(v227) = sub_219726C30(v44, v45, a5);
  v223 = v46;
  if (v46)
  {
    sub_21907C540(v45, sub_218C3EEF4);
    sub_21907C540(v44, sub_218C3EEF4);
    swift_bridgeObjectRelease_n();
  }

  sub_21907C540(v45, sub_218C3EEF4);
  sub_21907C540(v44, sub_218C3EEF4);
  v207 = v43;
  v37 = v43 + 2;
  v47 = v40 + v41 * v37;
  v48 = v41;
  v228 = v41;
  do
  {
    v9 = v236;
    if (v221 == v37)
    {
      v86 = v221;
      goto LABEL_27;
    }

    v50 = v222;
    sub_219083D18(v47, v222, sub_218C3EEF4);
    v232 = v42;
    sub_219083D18(v42, v224, sub_218C3EEF4);
    v51 = v50;
    v52 = v219;
    sub_219083D18(v51, v219, sub_218C3EEF4);
    v53 = *v52;
    v54 = [*v52 identifier];

    v55 = sub_219BF5414();
    v57 = v56;

    if (*(a5 + 16))
    {
      v58 = sub_21870F700(v55, v57);
      v60 = v59;

      if (v60)
      {
        v61 = *(*(a5 + 56) + 8 * v58);
        goto LABEL_15;
      }
    }

    else
    {
    }

    v61 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
    v230 = v61;
    v62 = *(v9 + 48);
    v63 = sub_219BEDC04();
    v64 = *(*(v63 - 8) + 8);
    v64(v219 + v62, v63);
    v65 = v220;
    sub_219083D18(v224, v220, sub_218C3EEF4);
    v66 = *v65;
    v67 = [v66 identifier];

    v68 = sub_219BF5414();
    v70 = v69;

    v71 = v231;
    if (*(v231 + 16))
    {
      v72 = sub_21870F700(v68, v70);
      v74 = v73;

      if (v74)
      {
        v75 = *(*(v71 + 56) + 8 * v72);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v75 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
    v76 = v230;
    v64(v220 + *(v236 + 48), v63);
    if (v76 < v75)
    {
      v49 = 1;
    }

    else if (v75 >= v76)
    {
      v230 = sub_218C3EEF4;
      v77 = v225;
      sub_219083D18(v222, v225, sub_218C3EEF4);

      v78 = v236;
      v79 = *(v236 + 48);
      sub_219BEDBF4();
      v81 = v80;
      v64(v77 + v79, v63);
      v82 = v226;
      sub_219083D18(v224, v226, v230);

      v83 = *(v78 + 48);
      sub_219BEDBF4();
      v85 = v84;
      v64(v82 + v83, v63);
      v49 = v85 < v81;
    }

    else
    {
      v49 = 0;
    }

    sub_21907C540(v224, sub_218C3EEF4);
    sub_21907C540(v222, sub_218C3EEF4);
    ++v37;
    v48 = v228;
    v47 += v228;
    a5 = v231;
    v42 = v232 + v228;
  }

  while (((v227 ^ v49) & 1) == 0);
  v86 = v37 - 1;
  v9 = v236;
LABEL_27:
  a4 = v208;
  v38 = v207;
  if (v227)
  {
    if (v86 >= v207)
    {
      if (v207 < v86)
      {
        v87 = v86;
        v37 = v48 * (v86 - 1);
        v88 = v86 * v48;
        v89 = v207;
        v90 = v207 * v48;
        do
        {
          if (v89 != --v87)
          {
            v91 = *v218;
            if (!*v218)
            {
              goto LABEL_165;
            }

            sub_219083E54(v91 + v90, v211, sub_218C3EEF4);
            if (v90 < v37 || v91 + v90 >= (v91 + v88))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_219083E54(v211, v91 + v37, sub_218C3EEF4);
            v48 = v228;
          }

          ++v89;
          v37 -= v48;
          v88 -= v48;
          v90 += v48;
        }

        while (v89 < v87);
        a5 = v231;
        a4 = v208;
        v9 = v236;
        v38 = v207;
      }

      goto LABEL_41;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    a4 = sub_218C81048(a4);
LABEL_131:
    v238 = a4;
    v193 = *(a4 + 2);
    if (v193 >= 2)
    {
      do
      {
        v194 = *v218;
        if (!*v218)
        {
          goto LABEL_166;
        }

        v195 = *&a4[16 * v193];
        v196 = a4;
        v197 = *&a4[16 * v193 + 24];
        v198 = *(v217 + 72);
        v199 = v194 + v198 * v195;
        a4 = (v194 + v198 * *&a4[16 * v193 + 16]);
        v200 = v194 + v198 * v197;
        v201 = v231;

        v202 = v199;
        v203 = v223;
        sub_21907CA58(v202, a4, v200, v37, v201);
        v223 = v203;
        if (v203)
        {
          break;
        }

        if (v197 < v195)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = sub_218C81048(v196);
        }

        if (v193 - 2 >= *(v196 + 2))
        {
          goto LABEL_156;
        }

        v204 = &v196[16 * v193];
        *v204 = v195;
        *(v204 + 1) = v197;
        v238 = v196;
        sub_218C80FBC(v193 - 1);
        a4 = v238;
        v193 = *(v238 + 2);
      }

      while (v193 > 1);
    }

    return swift_bridgeObjectRelease_n();
  }

LABEL_41:
  v92 = v218[1];
  if (v86 >= v92)
  {
    goto LABEL_50;
  }

  if (__OFSUB__(v86, v38))
  {
    goto LABEL_158;
  }

  if (v86 - v38 >= a4)
  {
    goto LABEL_50;
  }

  if (__OFADD__(v38, a4))
  {
    goto LABEL_159;
  }

  if (&a4[v38] >= v92)
  {
    v93 = v218[1];
  }

  else
  {
    v93 = &a4[v38];
  }

  if (v93 < v38)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  if (v86 == v93)
  {
LABEL_50:
    v94 = v86;
    if (v86 < v38)
    {
      goto LABEL_157;
    }

    goto LABEL_51;
  }

  v147 = *v218;
  v148 = *(v217 + 72);
  v149 = *v218 + v148 * (v86 - 1);
  v227 = -v148;
  v207 = v38;
  v150 = (v38 - v86);
  v228 = v147;
  v210 = v148;
  v151 = v147 + v86 * v148;
  v213 = v93;
  while (2)
  {
    v221 = v86;
    v214 = v151;
    v215 = v150;
    v152 = v150;
    v216 = v149;
    v153 = v149;
LABEL_104:
    v230 = v152;
    v154 = v235;
    sub_219083D18(v151, v235, sub_218C3EEF4);
    sub_219083D18(v153, v237, sub_218C3EEF4);
    v155 = v154;
    v156 = v233;
    sub_219083D18(v155, v233, sub_218C3EEF4);
    v157 = *v156;
    v158 = [*v156 identifier];

    v159 = sub_219BF5414();
    v161 = v160;

    if (*(a5 + 16))
    {
      v162 = sub_21870F700(v159, v161);
      v164 = v163;

      if (v164)
      {
        v165 = *(*(a5 + 56) + 8 * v162);
        goto LABEL_109;
      }
    }

    else
    {
    }

    v165 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_109:
    v232 = v165;
    v166 = *(v9 + 48);
    v167 = sub_219BEDC04();
    v37 = *(v167 - 8) + 8;
    v168 = *v37;
    (*v37)(v233 + v166, v167);
    v169 = v234;
    sub_219083D18(v237, v234, sub_218C3EEF4);
    v170 = *v169;
    v171 = [v170 identifier];

    v172 = sub_219BF5414();
    v174 = v173;

    a5 = v231;
    if (*(v231 + 16))
    {
      v175 = sub_21870F700(v172, v174);
      v176 = a5;
      v178 = v177;

      if (v178)
      {
        v179 = *(*(v176 + 56) + 8 * v175);
      }

      else
      {
        v179 = 0x7FFFFFFFFFFFFFFFLL;
      }

      a5 = v176;
      v9 = v236;
    }

    else
    {

      v179 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v168(v234 + *(v9 + 48), v167);
    if (v232 < v179)
    {
      sub_21907C540(v237, sub_218C3EEF4);
      sub_21907C540(v235, sub_218C3EEF4);
      goto LABEL_119;
    }

    if (v179 < v232)
    {
      a4 = sub_218C3EEF4;
      sub_21907C540(v237, sub_218C3EEF4);
      sub_21907C540(v235, sub_218C3EEF4);
LABEL_102:
      v86 = v221 + 1;
      v149 = v216 + v210;
      v150 = (v215 - 1);
      v151 = v214 + v210;
      v94 = v213;
      if (v221 + 1 != v213)
      {
        continue;
      }

      v38 = v207;
      if (v213 < v207)
      {
        goto LABEL_157;
      }

LABEL_51:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v39 = v212;
      }

      else
      {
        v39 = sub_2191F6B60(0, *(v212 + 2) + 1, 1, v212);
      }

      v37 = *(v39 + 2);
      v95 = *(v39 + 3);
      a4 = (v37 + 1);
      if (v37 >= v95 >> 1)
      {
        v39 = sub_2191F6B60((v95 > 1), v37 + 1, 1, v39);
      }

      *(v39 + 2) = a4;
      v96 = &v39[16 * v37];
      *(v96 + 4) = v38;
      *(v96 + 5) = v94;
      v213 = v94;
      v97 = *v209;
      if (!*v209)
      {
        goto LABEL_167;
      }

      if (v37)
      {
        while (2)
        {
          v98 = (a4 - 1);
          if (a4 >= 4)
          {
            v103 = &v39[16 * a4 + 32];
            v104 = *(v103 - 64);
            v105 = *(v103 - 56);
            v109 = __OFSUB__(v105, v104);
            v106 = v105 - v104;
            if (v109)
            {
              goto LABEL_144;
            }

            v108 = *(v103 - 48);
            v107 = *(v103 - 40);
            v109 = __OFSUB__(v107, v108);
            v101 = v107 - v108;
            v102 = v109;
            if (v109)
            {
              goto LABEL_145;
            }

            v110 = &v39[16 * a4];
            v112 = *v110;
            v111 = *(v110 + 1);
            v109 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v109)
            {
              goto LABEL_147;
            }

            v109 = __OFADD__(v101, v113);
            v114 = v101 + v113;
            if (v109)
            {
              goto LABEL_150;
            }

            if (v114 >= v106)
            {
              v132 = &v39[16 * v98 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v109 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v109)
              {
                goto LABEL_154;
              }

              if (v101 < v135)
              {
                v98 = (a4 - 2);
              }
            }

            else
            {
LABEL_70:
              if (v102)
              {
                goto LABEL_146;
              }

              v115 = &v39[16 * a4];
              v117 = *v115;
              v116 = *(v115 + 1);
              v118 = __OFSUB__(v116, v117);
              v119 = v116 - v117;
              v120 = v118;
              if (v118)
              {
                goto LABEL_149;
              }

              v121 = &v39[16 * v98 + 32];
              v123 = *v121;
              v122 = *(v121 + 1);
              v109 = __OFSUB__(v122, v123);
              v124 = v122 - v123;
              if (v109)
              {
                goto LABEL_152;
              }

              if (__OFADD__(v119, v124))
              {
                goto LABEL_153;
              }

              if (v119 + v124 < v101)
              {
                goto LABEL_84;
              }

              if (v101 < v124)
              {
                v98 = (a4 - 2);
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v99 = *(v39 + 4);
              v100 = *(v39 + 5);
              v109 = __OFSUB__(v100, v99);
              v101 = v100 - v99;
              v102 = v109;
              goto LABEL_70;
            }

            v125 = &v39[16 * a4];
            v127 = *v125;
            v126 = *(v125 + 1);
            v109 = __OFSUB__(v126, v127);
            v119 = v126 - v127;
            v120 = v109;
LABEL_84:
            if (v120)
            {
              goto LABEL_148;
            }

            v128 = &v39[16 * v98];
            v130 = *(v128 + 4);
            v129 = *(v128 + 5);
            v109 = __OFSUB__(v129, v130);
            v131 = v129 - v130;
            if (v109)
            {
              goto LABEL_151;
            }

            if (v131 < v119)
            {
              break;
            }
          }

          v37 = v98 - 1;
          if (v98 - 1 >= a4)
          {
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v136 = *v218;
          if (!*v218)
          {
            goto LABEL_164;
          }

          v137 = v39;
          v138 = *&v39[16 * v37 + 32];
          v139 = *&v39[16 * v98 + 40];
          v140 = *(v217 + 72);
          v141 = v136 + v140 * v138;
          a4 = (v136 + v140 * *&v39[16 * v98 + 32]);
          v142 = v136 + v140 * v139;
          v143 = v231;

          v144 = v141;
          v145 = v223;
          sub_21907CA58(v144, a4, v142, v97, v143);
          v223 = v145;
          if (v145)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v139 < v138)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_218C81048(v137);
          }

          if (v37 >= *(v137 + 2))
          {
            goto LABEL_143;
          }

          v146 = &v137[16 * v37];
          *(v146 + 4) = v138;
          *(v146 + 5) = v139;
          v238 = v137;
          sub_218C80FBC(v98);
          v39 = v238;
          a4 = *(v238 + 2);
          a5 = v231;
          v9 = v236;
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v37 = v218[1];
      v38 = v213;
      a4 = v208;
      if (v213 >= v37)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  v180 = v225;
  sub_219083D18(v235, v225, sub_218C3EEF4);

  v181 = *(v236 + 48);
  sub_219BEDBF4();
  v183 = v182;
  v232 = v151;
  v37 = v168;
  v168(v180 + v181, v167);
  v184 = v237;
  v185 = v226;
  a5 = v231;
  sub_219083D18(v237, v226, sub_218C3EEF4);

  v186 = *(v236 + 48);
  sub_219BEDBF4();
  v188 = v187;
  v189 = v185 + v186;
  v9 = v236;
  (v37)(v189, v167);
  v151 = v232;
  a4 = sub_218C3EEF4;
  sub_21907C540(v184, sub_218C3EEF4);
  sub_21907C540(v235, sub_218C3EEF4);
  if (v188 >= v183)
  {
    goto LABEL_102;
  }

LABEL_119:
  v190 = v230;
  if (v228)
  {
    a4 = sub_218C3EEF4;
    v37 = v229;
    sub_219083E54(v151, v229, sub_218C3EEF4);
    swift_arrayInitWithTakeFrontToBack();
    sub_219083E54(v37, v153, sub_218C3EEF4);
    v153 += v227;
    v151 += v227;
    v191 = __CFADD__(v190, 1);
    v152 = (v190 + 1);
    if (v191)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_164:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_165:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_166:

  __break(1u);
LABEL_167:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_168:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_21907E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  sub_218C3EEF4();
  v90 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v84 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = (&v73 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v80 = (&v73 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = (&v73 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v88 = (&v73 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v92 = &v73 - v22;
  result = MEMORY[0x28223BE20](v21);
  v91 = &v73 - v25;
  v75 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v24 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v82 = -v27;
    v83 = v26;
    v29 = a1 - a3;
    v74 = v27;
    v30 = v26 + v27 * a3;
    v85 = a5;
LABEL_6:
    v78 = v28;
    v79 = a3;
    v76 = v30;
    v77 = v29;
    v31 = v29;
    v32 = v90;
    while (1)
    {
      v33 = v91;
      sub_219083D18(v30, v91, sub_218C3EEF4);
      sub_219083D18(v28, v92, sub_218C3EEF4);
      v34 = v33;
      v35 = v88;
      sub_219083D18(v34, v88, sub_218C3EEF4);
      v36 = *v35;
      v37 = [*v35 identifier];

      v38 = sub_219BF5414();
      v40 = v39;

      v41 = *(a5 + 16);
      v86 = v31;
      if (v41)
      {
        v42 = sub_21870F700(v38, v40);
        v44 = v43;

        if (v44)
        {
          v45 = *(*(a5 + 56) + 8 * v42);
          goto LABEL_12;
        }
      }

      else
      {
      }

      v45 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
      v87 = v45;
      v46 = *(v32 + 48);
      v47 = sub_219BEDC04();
      v48 = (*(v47 - 8) + 8);
      v49 = *v48;
      (*v48)(v88 + v46, v47);
      v50 = v89;
      sub_219083D18(v92, v89, sub_218C3EEF4);
      v51 = *v50;
      v52 = [v51 identifier];

      v53 = sub_219BF5414();
      v55 = v54;

      a5 = v85;
      if (*(v85 + 16))
      {
        v56 = sub_21870F700(v53, v55);
        v58 = v57;

        if (v58)
        {
          v59 = *(*(a5 + 56) + 8 * v56);
          goto LABEL_17;
        }
      }

      else
      {
      }

      v59 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
      v32 = v90;
      v49(v89 + *(v90 + 48), v47);
      if (v87 >= v59)
      {
        if (v59 < v87)
        {
          sub_21907C540(v92, sub_218C3EEF4);
          result = sub_21907C540(v91, sub_218C3EEF4);
LABEL_5:
          a3 = v79 + 1;
          v28 = v78 + v74;
          v29 = v77 - 1;
          v30 = v76 + v74;
          if (v79 + 1 == v75)
          {
            return result;
          }

          goto LABEL_6;
        }

        v61 = v80;
        sub_219083D18(v91, v80, sub_218C3EEF4);

        v62 = *(v90 + 48);
        sub_219BEDBF4();
        v64 = v63;
        v65 = v61 + v62;
        v32 = v90;
        v49(v65, v47);
        v87 = v48;
        v66 = v92;
        v67 = v81;
        sub_219083D18(v92, v81, sub_218C3EEF4);

        v68 = *(v32 + 48);
        sub_219BEDBF4();
        v70 = v69;
        a5 = v85;
        v49(v67 + v68, v47);
        sub_21907C540(v66, sub_218C3EEF4);
        result = sub_21907C540(v91, sub_218C3EEF4);
        v60 = v86;
        if (v70 >= v64)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_21907C540(v92, sub_218C3EEF4);
        result = sub_21907C540(v91, sub_218C3EEF4);
        v60 = v86;
      }

      if (!v83)
      {
        __break(1u);
        return result;
      }

      v71 = v84;
      sub_219083E54(v30, v84, sub_218C3EEF4);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_219083E54(v71, v28, sub_218C3EEF4);
      v28 += v82;
      v30 += v82;
      v72 = __CFADD__(v60, 1);
      v31 = v60 + 1;
      if (v72)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_21907E84C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_219BF7884();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C3EEF4();
        v8 = sub_219BF5A34();
        *(v8 + 16) = v7;
      }

      sub_218C3EEF4();
      v10[0] = v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
      v10[1] = v7;

      sub_21907D09C(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21907E28C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21907E9D0(void **a1, uint64_t a2)
{
  sub_218C3EEF4();
  v5 = *(v4 - 8);
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_218C81288(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9[1] = v7;

  sub_21907E84C(v9, a2);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

size_t sub_21907EAB8(unint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v19 = sub_219BEDC04();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = [v8 BOOLForKey_];

  if (!v9)
  {

    return a3;
  }

  if (a1 >> 62)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a3 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return a3;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_218C34908(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    a3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CECE0F0](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v20 objectForKey_];
      sub_219BEDBD4();

      v21 = a3;
      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_218C34908(v16 > 1, v17 + 1, 1);
        a3 = v21;
      }

      ++v12;
      *(a3 + 16) = v17 + 1;
      (*(v5 + 32))(a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v7, v19);
    }

    while (v10 != v12);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21907ED0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  sub_219083C3C();
  v6[36] = v7;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  sub_218C3EEF4();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_2186D8B7C(0, qword_280E9C040, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result, MEMORY[0x277D83D88]);
  v6[46] = swift_task_alloc();
  v10 = type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result();
  v6[47] = v10;
  v6[48] = *(v10 - 8);
  v6[49] = swift_task_alloc();
  v11 = sub_219BEFF54();
  v6[50] = v11;
  v6[51] = *(v11 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v12 = sub_219BF0BD4();
  v6[54] = v12;
  v6[55] = *(v12 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  sub_2186D8B7C(0, &unk_280E90FA0, MEMORY[0x277D32C48], v9);
  v6[58] = swift_task_alloc();
  v13 = sub_219BF02F4();
  v6[59] = v13;
  v6[60] = *(v13 - 8);
  v6[61] = swift_task_alloc();
  v14 = sub_219BEE6F4();
  v6[62] = v14;
  v6[63] = *(v14 - 8);
  v6[64] = swift_task_alloc();
  v15 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
  v6[65] = v15;
  v6[66] = *(v15 - 8);
  v6[67] = swift_task_alloc();
  sub_2186D8B7C(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v9);
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21907F19C, 0, 0);
}

uint64_t sub_21907F19C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[66];
  v4 = v0[65];
  sub_219078CE0(v1);
  sub_219083BBC(v1, v2, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v48 = *(v3 + 48);
  v5 = v48(v2, 1, v4);
  v6 = v0[70];
  v7 = MEMORY[0x277D837D0];
  if (v5 == 1)
  {
    sub_219083A70(v6, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v8 = qword_280F616D8;
    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    sub_219083E54(v6, v0[67], type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v9 = v0[67];
    v8 = qword_280F616D8;
    sub_2186F20D4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v0[19] = 0;
    v0[20] = 0xE000000000000000;
    sub_219BF7484();
    v11 = v0[19];
    v12 = v0[20];
    *(v10 + 56) = v7;
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_219BF6214();
    sub_219BE5314();

    sub_21907C540(v9, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  }

  v0[72] = v8;
  v13 = v0[71];
  v14 = v0[69];
  v15 = v0[65];
  v17 = v0[63];
  v16 = v0[64];
  v18 = v0[62];
  sub_218718690(v0[35] + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_personalizationService, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v19 = *MEMORY[0x277D32940];
  v20 = sub_219BEFBD4();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  (*(v17 + 104))(v16, *MEMORY[0x277D320E8], v18);
  type metadata accessor for ForYouTodayFeedGroupKnobs();
  sub_219083BBC(v13, v14, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v21 = v48(v14, 1, v15);
  v22 = v0[69];
  v23 = v0[60];
  v25 = v0[58];
  v24 = v0[59];
  if (v21 == 1)
  {
    sub_219083A70(v0[69], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v23 + 56))(v25, 1, 1, v24);
    sub_219BF02E4();
    if ((*(v23 + 48))(v25, 1, v24) != 1)
    {
      sub_219083A70(v0[58], &unk_280E90FA0, MEMORY[0x277D32C48]);
    }
  }

  else
  {
    v26 = v0[57];
    v46 = v0[61];
    v27 = v0[54];
    v28 = v0[55];
    sub_219BEF134();
    sub_2193A6790(v26, v25);
    (*(v28 + 8))(v26, v27);
    sub_21907C540(v22, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v23 + 56))(v25, 0, 1, v24);
    (*(v23 + 32))(v46, v25, v24);
  }

  v29 = sub_219BEFFD4();
  v0[73] = v29;
  v47 = v29;
  v30 = v0[71];
  v31 = v0[68];
  v32 = v0[65];
  v33 = v0[63];
  v34 = v0[64];
  v35 = v0[62];
  (*(v0[60] + 8))(v0[61], v0[59]);
  (*(v33 + 8))(v34, v35);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_219083BBC(v30, v31, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v36 = v48(v31, 1, v32);
  v37 = v0[68];
  if (v36 == 1)
  {
    sub_219083A70(v0[68], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
LABEL_19:
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v42 = v0[71];
    sub_219BF6214();
    sub_219BE5314();
    sub_219083A70(v42, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);

    v43 = v0[1];

    return v43(v47, 0, 0, 0);
  }

  v38 = v0[52];
  v39 = v0[53];
  v41 = v0[50];
  v40 = v0[51];
  (*(v40 + 16))(v38, v37 + *(v0[65] + 20), v41);
  sub_21907C540(v37, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v40 + 32))(v39, v38, v41);
  if ((sub_219BEFF44() & 1) == 0)
  {
    (*(v0[51] + 8))(v0[53], v0[50]);
    goto LABEL_19;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BEF164();
  v0[74] = v0[22];
  v45 = swift_task_alloc();
  v0[75] = v45;
  *v45 = v0;
  v45[1] = sub_21907FE64;

  return sub_21907977C();
}

uint64_t sub_21907FE64(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[76] = a1;
  v4[77] = a2;
  v4[78] = v2;

  if (v2)
  {
    v5 = sub_219081FC4;
  }

  else
  {

    v5 = sub_21907FF88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21907FF88()
{
  v1 = v0[77];
  if (v1 >> 62)
  {
LABEL_21:
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_22:
    v25 = v0[71];
    v26 = v0[53];
    v27 = v0[50];
    v28 = v0[51];

    sub_219BF6214();
    sub_219BE5314();
    swift_unknownObjectRelease();
    sub_219083A70(v25, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v28 + 8))(v26, v27);
    v33 = v0[73];

    v29 = v0[1];

    return v29(v33, 0, 0, 0);
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_3:
  sub_219BEF0B4();
  v2 = *(v0[24] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (!v6)
    {
      break;
    }

LABEL_10:
    v6 &= v6 - 1;
    v11 = [swift_unknownObjectRetain_n() clusterID];
    if (v11)
    {
      v12 = v11;
      v32 = sub_219BF5414();
      v31 = v13;

      swift_unknownObjectRelease_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_218840D24(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_218840D24((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = v32;
      *(v16 + 5) = v31;
    }

    else
    {
      swift_unknownObjectRelease_n();
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  v17 = v0[77];
  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[33];

  v21 = sub_218845F78(v9);

  v22 = *(v18 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_cloudContext);
  v0[79] = v22;
  sub_219BEF0B4();
  sub_219077F00(v17, v19, v21, v20, v22, v0[25], 0xD000000000000010, 0x8000000219D08F90);
  v0[80] = v23;

  __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager), *(v18 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager + 24));
  v0[81] = sub_219BF4434();
  v24 = swift_task_alloc();
  v0[82] = v24;
  *v24 = v0;
  v24[1] = sub_2190804CC;

  return MEMORY[0x2821D23D8](v0 + 26);
}

uint64_t sub_2190804CC()
{
  *(*v1 + 664) = v0;

  if (v0)
  {

    v2 = sub_219082280;
  }

  else
  {
    v2 = sub_21908061C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21908061C()
{
  v229 = v0;
  v202 = sub_219079C88(*(v0 + 248));
  sub_219BEF0B4();
  v1 = *(*(v0 + 216) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (([v1 respondsToSelector_] & 1) == 0)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v2 = [v1 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_219BF5924();
  }

  v3 = *(v0 + 632);
  sub_219BEF134();
  v224 = [v3 paidAccessChecker];
  if (!v224)
  {
    goto LABEL_142;
  }

  v4 = *(v0 + 632);
  v5 = *(v0 + 256);
  v6 = [objc_msgSend(v4 appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v6 respondsToSelector_] & 1) == 0)
  {
LABEL_143:

    __break(1u);
    return;
  }

  v7 = [v6 localInForYouTopicTagAllowList];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_2186F8598(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v201 = sub_219BF5214();
  }

  else
  {
    v201 = sub_2194B11A4(MEMORY[0x277D84F90]);
  }

  v8 = MEMORY[0x277D837D0];
  v9 = *(v0 + 664);
  v10 = *(v0 + 608);
  v11 = sub_219BEFED4();
  v12 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v13 = [v10 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  *(v0 + 136) = v14;
  *(v0 + 144) = v16;
  v17 = swift_task_alloc();
  *(v17 + 16) = v0 + 136;
  LOBYTE(v14) = sub_2186D128C(sub_2186D1338, v17, v11);
  v200 = v9;

  v226 = v0;
  if (v14)
  {
    v18 = *(v0 + 608);
    v19 = *(v0 + 448);
    v20 = *(v0 + 440);
    v21 = *(v0 + 432);
    v22 = *(v0 + 256);

    v23 = [v18 identifier];
    v24 = sub_219BF5414();
    v26 = v25;

    sub_219083D80();
    v27 = swift_allocError();
    *v28 = v24;
    v28[1] = v26;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v20 + 8))(v19, v21);

    v29 = *(v0 + 568);
    v30 = *(v0 + 424);
    v31 = *(v0 + 408);
    v32 = *(v0 + 400);
    sub_219BF61F4();
    sub_2186F20D4();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    *(v0 + 184) = v27;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v34 = *(v0 + 120);
    v35 = v226[16];
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_2186FC3BC();
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    sub_219BE5314();

    sub_219083A70(v29, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v31 + 8))(v30, v32);
    v8 = v226;
LABEL_11:
    v221 = 0;
    v218 = 0;
    v225 = 0;
    v214 = v8[73];
LABEL_12:

    v36 = v8[1];

    v36(v214, v221, v218, v225);
    return;
  }

  if (qword_280E8D850 != -1)
  {
    goto LABEL_135;
  }

LABEL_16:
  v37 = *(v0 + 640);
  v38 = *(v0 + 608);
  sub_2186F20D4();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  v40 = [v38 v12[278]];
  v41 = sub_219BF5414();
  v43 = v42;

  *(v39 + 56) = v8;
  v203 = sub_2186FC3BC();
  *(v39 + 64) = v203;
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  if (v37 >> 62)
  {
    v44 = sub_219BF7214();
  }

  else
  {
    v44 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = *(v0 + 608);
  v46 = *(v0 + 448);
  v47 = *(v0 + 424);
  v48 = MEMORY[0x277D83C10];
  *(v39 + 96) = MEMORY[0x277D83B88];
  *(v39 + 104) = v48;
  *(v39 + 72) = v44;
  sub_219BF6214();
  sub_219BE5314();

  v49 = sub_219726870(v47, v46, v45);
  v50 = v49;
  if (!(v37 >> 62))
  {
    v51 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v199 = v49;
    if (!v51)
    {
      goto LABEL_82;
    }

    goto LABEL_20;
  }

  v51 = sub_219BF7214();
  v199 = v50;
  if (v51)
  {
LABEL_20:
    v52 = 0;
    v215 = v37 & 0xFFFFFFFFFFFFFF8;
    v219 = v37 & 0xC000000000000001;
    v209 = *(v0 + 640) + 32;
    v53 = MEMORY[0x277D84F90];
    v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v205 = *(v0 + 320);
    v211 = v51;
    while (1)
    {
      if (v219)
      {
        v61 = MEMORY[0x21CECE0F0](v52, *(v0 + 640));
      }

      else
      {
        if (v52 >= *(v215 + 16))
        {
          goto LABEL_131;
        }

        v61 = *(v209 + 8 * v52);
      }

      v62 = v61;
      if (__OFADD__(v52++, 1))
      {
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
        swift_once();
        goto LABEL_16;
      }

      v64 = [v61 isPaid];
      if ([v62 respondsToSelector_])
      {
        v65 = [v62 v54[415]];
      }

      else
      {
        v65 = 0;
      }

      v66 = [v62 publisherID];
      if (v66)
      {
        v67 = v66;
        v222 = sub_219BF5414();
        v12 = v68;

        if (!v64)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v222 = 0;
        v12 = 0;
        if (!v64)
        {
LABEL_46:
          if ((v65 & 1) == 0)
          {

LABEL_75:
            v96 = *(v0 + 352);
            v97 = *(v0 + 360);
            v98 = *(v0 + 256);
            *v96 = v62;
            v99 = v62;
            v100 = [v98 objectForKey_];
            sub_219BEDBD4();

            sub_219083E54(v96, v97, sub_218C3EEF4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = sub_2191F9C2C(0, v53[2] + 1, 1, v53);
            }

            v60 = v211;
            v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
            v102 = v53[2];
            v101 = v53[3];
            if (v102 >= v101 >> 1)
            {
              v53 = sub_2191F9C2C(v101 > 1, v102 + 1, 1, v53);
            }

            v103 = *(v0 + 360);
            v53[2] = v102 + 1;
            sub_219083E54(v103, v53 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v102, sub_218C3EEF4);
            goto LABEL_22;
          }

          goto LABEL_47;
        }
      }

      v69 = [v224 purchaseProvider];
      if (v12)
      {
        v207 = v53;
        v70 = [v69 purchasedTagIDs];
        v71 = sub_219BF5D44();

        if (*(v71 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v72 = sub_219BF7AE4();
          v73 = -1 << *(v71 + 32);
          v74 = v72 & ~v73;
          if ((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
          {
            v75 = ~v73;
            while (1)
            {
              v76 = (*(v71 + 48) + 16 * v74);
              v77 = *v76 == v222 && v12 == v76[1];
              if (v77 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v74 = (v74 + 1) & v75;
              if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            swift_unknownObjectRelease();

            v0 = v226;
            v8 = MEMORY[0x277D837D0];
            v53 = v207;
            goto LABEL_75;
          }
        }

LABEL_42:

        v0 = v226;
        v8 = MEMORY[0x277D837D0];
        v53 = v207;
      }

      swift_unknownObjectRelease();
      if (!v65)
      {
LABEL_67:

        goto LABEL_68;
      }

LABEL_47:
      if (!v12)
      {
        goto LABEL_68;
      }

      v78 = [objc_msgSend(v224 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v78, v78 + 1))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v227 = 0u;
        v228 = 0u;
      }

      v79 = v227;
      *(v0 + 72) = v228;
      *(v0 + 56) = v79;
      if (!*(v0 + 80))
      {
        sub_219083CA8(v0 + 56, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_57:
        v80 = 0;
        v82 = 0;
        goto LABEL_58;
      }

      sub_2186C6148(0, &qword_280E8DA20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_57;
      }

      v80 = *(v0 + 232);
      v81 = [v80 integerValue];
      if (v81 == -1)
      {

        goto LABEL_74;
      }

      v82 = v81;
LABEL_58:
      if (objc_getAssociatedObject(v78, ~v82))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v227 = 0u;
        v228 = 0u;
      }

      v83 = v227;
      *(v0 + 104) = v228;
      *(v0 + 88) = v83;
      if (!*(v0 + 112))
      {
        sub_219083CA8(v0 + 88, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_66:

        if ((v82 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_74;
      }

      sub_2186C6148(0, &qword_280E8DA20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_66;
      }

      v84 = *(v0 + 224);
      v85 = v53;
      v86 = [v84 integerValue];

      v87 = v86 ^ v82;
      v53 = v85;
      v8 = MEMORY[0x277D837D0];
      if ((v87 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_74:
      v92 = [objc_msgSend(v224 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v93 = [v92 bundleChannelIDs];

      v94 = sub_219BF53D4();
      v95 = [v93 containsObject_];

      if (v95)
      {
        goto LABEL_75;
      }

LABEL_68:
      if ([v62 hasSourceChannelID])
      {
        v88 = [objc_msgSend(v224 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v89 = [v62 sourceChannelID];
        if (!v89)
        {
          goto LABEL_140;
        }

        v90 = v89;
        v91 = [v88 containsTagID_];

        if (v91)
        {
          goto LABEL_75;
        }
      }

      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_219C09BA0;
      v56 = [v62 identifier];
      v57 = sub_219BF5414();
      v59 = v58;

      *(v55 + 56) = v8;
      *(v55 + 64) = v203;
      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
      sub_219BF6214();
      sub_219BE5314();

      v60 = v211;
      v54 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
LABEL_22:
      if (v52 == v60)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_82:
  v53 = MEMORY[0x277D84F90];
LABEL_83:
  *&v227 = v53;

  sub_21907E9D0(&v227, v199);
  if (!v200)
  {
    v105 = *(v0 + 640);
    v8 = *(v0 + 584);
    v106 = *(v0 + 448);
    v107 = *(v0 + 424);
    swift_bridgeObjectRelease_n();

    v220 = v227;
    v223 = sub_219726F4C(v107, v106, v8, v105);
    v12 = v8[2];
    if (v12)
    {
      v108 = 0;
      v109 = *(v0 + 288);
      v110 = v12 - 1;
      v111 = MEMORY[0x277D84F90];
LABEL_89:
      v112 = v108;
      while (v112 < v8[2])
      {
        v113 = v226[73];
        v114 = v226[38];
        v115 = sub_219BEDC04();
        v116 = *(v115 - 8);
        v108 = (v112 + 1);
        v117 = *(v116 + 16);
        v118 = v113 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v112;
        v0 = *(v109 + 48);
        *v114 = v112;
        v117(v114 + v0, v118, v115);
        if (v223 != v112)
        {
          v216 = v110;
          v119 = v226[38];
          v120 = sub_219BEDBA4();
          v122 = v121;
          sub_21907C540(v119, sub_219083C3C);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_218840D24(0, *(v111 + 2) + 1, 1, v111);
          }

          v0 = *(v111 + 2);
          v123 = *(v111 + 3);
          if (v0 >= v123 >> 1)
          {
            v111 = sub_218840D24((v123 > 1), v0 + 1, 1, v111);
          }

          *(v111 + 2) = v0 + 1;
          v124 = &v111[16 * v0];
          *(v124 + 4) = v120;
          *(v124 + 5) = v122;
          v110 = v216;
          if (v216 != v112)
          {
            goto LABEL_89;
          }

          goto LABEL_101;
        }

        sub_21907C540(v226[38], sub_219083C3C);
        v112 = (v112 + 1);
        if (v12 == v108)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_132;
    }

    v111 = MEMORY[0x277D84F90];
LABEL_101:
    v217 = sub_218845F78(v111);

    if (v12)
    {
      v125 = 0;
      v126 = v226[36];
      v127 = MEMORY[0x277D84F90];
LABEL_103:
      v128 = v125;
      while (v128 < v8[2])
      {
        v129 = v226[73];
        v130 = v226[37];
        v131 = sub_219BEDC04();
        v132 = *(v131 - 8);
        v133 = *(v132 + 16);
        v134 = v129 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v128;
        v0 = *(v126 + 48);
        *v130 = v128;
        v133(&v130[v0], v134, v131);
        if (v223 != v128)
        {
          v135 = sub_219BEDBE4();
          if ([v135 respondsToSelector_])
          {
            v136 = [v135 clusterID];
            swift_unknownObjectRelease();
            if (v136)
            {
              v137 = v226[37];
              v0 = sub_219BF5414();
              v212 = v138;

              sub_21907C540(v137, sub_219083C3C);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v127 = sub_218840D24(0, *(v127 + 2) + 1, 1, v127);
              }

              v140 = *(v127 + 2);
              v139 = *(v127 + 3);
              if (v140 >= v139 >> 1)
              {
                v127 = sub_218840D24((v139 > 1), v140 + 1, 1, v127);
              }

              v125 = (v128 + 1);
              *(v127 + 2) = v140 + 1;
              v141 = &v127[16 * v140];
              *(v141 + 4) = v0;
              *(v141 + 5) = v212;
              if ((v12 - 1) != v128)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v128 = (v128 + 1);
        sub_21907C540(v226[37], sub_219083C3C);
        if (v12 == v128)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_133;
    }

    v127 = MEMORY[0x277D84F90];
LABEL_117:
    v8 = v226;
    v142 = v226[76];
    v143 = v226[53];
    v213 = sub_218845F78(v127);

    sub_219BEFEE4();
    v206 = sub_2197270D0();

    v144 = sub_219727238(v201, v142);
    v210 = v145;
    v146 = sub_2197274BC(v143, v142);
    v208 = v147;
    v148 = v220;
    v149 = *(v220 + 16);
    if (v149)
    {
      v12 = v146;
      v150 = 0;
      v151 = v226[40];
      v204 = v226[39];
      while (v150 < *(v148 + 16))
      {
        v152 = v226[76];
        v153 = v226[56];
        v0 = v226[53];
        v154 = v226[42];
        sub_219083D18(v148 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v150, v154, sub_218C3EEF4);
        if (sub_219727CD0(*v154, v154 + *(v204 + 48), v202, v206, v224, v0, v152, v153, v144, v210, v12, v208, v217, v213))
        {
          v158 = v226[76];
          v160 = v226[47];
          v159 = v226[48];
          v161 = v226[46];
          v163 = v226[42];
          v162 = v226[43];
          v164 = v226[41];

          swift_unknownObjectRelease();

          sub_219083E54(v163, v162, sub_218C3EEF4);
          sub_219083E54(v162, v164, sub_218C3EEF4);

          v165 = *(v204 + 48);
          *v161 = v158;
          *(v161 + 1) = v223;
          v166 = *(v160 + 24);
          v167 = sub_219BEDC04();
          (*(*(v167 - 8) + 32))(&v161[v166], v164 + v165, v167);
          (*(v159 + 56))(v161, 0, 1, v160);
          swift_unknownObjectRetain();
          goto LABEL_124;
        }

        ++v150;
        sub_21907C540(v226[42], sub_218C3EEF4);
        v148 = v220;
        if (v149 == v150)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_134;
    }

LABEL_122:
    v155 = v226[47];
    v156 = v226[48];
    v157 = v226[46];

    sub_219BF6214();
    sub_219BE5314();
    swift_unknownObjectRelease();

    (*(v156 + 56))(v157, 1, 1, v155);
LABEL_124:
    v168 = v226[47];
    v169 = v226[48];
    v170 = v226[46];
    v171 = v226[32];
    (*(v226[55] + 8))(v226[56], v226[54]);

    v172 = (*(v169 + 48))(v170, 1, v168);
    v173 = v226[76];
    if (v172 == 1)
    {
      v174 = v226[71];
      v175 = v226[53];
      v176 = v226[50];
      v177 = v226[51];
      sub_219083A70(v226[46], qword_280E9C040, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
      sub_219BF6214();
      sub_219BE5314();

      swift_unknownObjectRelease();
      sub_219083A70(v174, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
      (*(v177 + 8))(v175, v176);
      goto LABEL_11;
    }

    v178 = v226[49];
    v179 = v226[47];
    sub_219083E54(v226[46], v178, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
    v180 = swift_allocObject();
    *(v180 + 16) = xmmword_219C0B8C0;
    v0 = v226;
    v181 = *(v179 + 24);
    v182 = sub_219BEDBA4();
    v183 = MEMORY[0x277D837D0];
    *(v180 + 56) = MEMORY[0x277D837D0];
    *(v180 + 64) = v203;
    *(v180 + 32) = v182;
    *(v180 + 40) = v184;
    v185 = [v173 identifier];
    v186 = sub_219BF5414();
    v188 = v187;

    *(v180 + 96) = v183;
    *(v180 + 104) = v203;
    *(v180 + 72) = v186;
    *(v180 + 80) = v188;
    v189 = *(v178 + 8);
    *(v180 + 136) = MEMORY[0x277D83B88];
    *(v180 + 144) = MEMORY[0x277D83C10];
    *(v180 + 112) = v189;
    sub_219BF6214();
    sub_219BE5314();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191 = v226[73];
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v189 & 0x8000000000000000) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v191 = sub_2194AB9E8(v226[73]);
      if ((v189 & 0x8000000000000000) == 0)
      {
LABEL_128:
        if (v189 < *(v191 + 16))
        {
          v225 = v226[76];
          v192 = v226[71];
          v193 = v226[53];
          v194 = v226[50];
          v195 = v226[51];
          v196 = v226[49];
          v197 = sub_219BEDC04();
          (*(*(v197 - 8) + 24))(v191 + ((*(*(v197 - 8) + 80) + 32) & ~*(*(v197 - 8) + 80)) + *(*(v197 - 8) + 72) * v189, v178 + v181, v197);
          v8 = v226;
          v221 = sub_219BEDBA4();
          v218 = v198;

          sub_21907C540(v196, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
          sub_219083A70(v192, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
          (*(v195 + 8))(v193, v194);
          v214 = v191;
          goto LABEL_12;
        }

        goto LABEL_139;
      }
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:

    __break(1u);
    goto LABEL_141;
  }

  v104 = *(v0 + 256);
}

uint64_t sub_219081FC4()
{

  v1 = v0[78];
  v2 = v0[71];
  v10 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  v0[15] = 0;
  *(v5 + 16) = xmmword_219C09BA0;
  v0[16] = 0xE000000000000000;
  v0[23] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v6 = v0[15];
  v7 = v0[16];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_219BE5314();

  sub_219083A70(v2, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v4 + 8))(v10, v3);
  v11 = v0[73];

  v8 = v0[1];

  return v8(v11, 0, 0, 0);
}

uint64_t sub_219082280()
{
  swift_unknownObjectRelease();
  v1 = v0[83];
  v2 = v0[71];
  v10 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  v0[15] = 0;
  *(v5 + 16) = xmmword_219C09BA0;
  v0[16] = 0xE000000000000000;
  v0[23] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v6 = v0[15];
  v7 = v0[16];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_219BE5314();

  sub_219083A70(v2, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v4 + 8))(v10, v3);
  v11 = v0[73];

  v8 = v0[1];

  return v8(v11, 0, 0, 0);
}

uint64_t sub_21908253C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;
  v4 = *a2;
  *(v3 + 248) = v2;
  *(v3 + 256) = v4;
  *(v3 + 264) = *(a2 + 1);
  v5 = MEMORY[0x277D83D88];
  sub_2186D8B7C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  *(v3 + 280) = swift_task_alloc();
  sub_2186D8B7C(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  *(v3 + 288) = swift_task_alloc();
  sub_2186D8B7C(0, &unk_280E91A10, sub_2189AE994, v5);
  *(v3 + 296) = swift_task_alloc();
  v6 = sub_219BF2AB4();
  *(v3 + 304) = v6;
  *(v3 + 312) = *(v6 - 8);
  *(v3 + 320) = swift_task_alloc();
  v7 = sub_219BF2034();
  *(v3 + 328) = v7;
  *(v3 + 336) = *(v7 - 8);
  *(v3 + 344) = swift_task_alloc();
  sub_2186D8B7C(0, &unk_280E8FF30, sub_218A42400, v5);
  *(v3 + 352) = swift_task_alloc();
  sub_2186D8B7C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  *(v3 + 360) = swift_task_alloc();
  v8 = sub_219BDBD64();
  *(v3 + 368) = v8;
  *(v3 + 376) = *(v8 - 8);
  *(v3 + 384) = swift_task_alloc();
  type metadata accessor for ForYouTodayFeedGroupConfigData();
  *(v3 + 392) = swift_task_alloc();
  v9 = sub_219BF1934();
  *(v3 + 400) = v9;
  *(v3 + 408) = *(v9 - 8);
  *(v3 + 416) = swift_task_alloc();
  v10 = sub_219BF3C84();
  *(v3 + 424) = v10;
  *(v3 + 432) = *(v10 - 8);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  v11 = sub_219BF3E84();
  *(v3 + 456) = v11;
  *(v3 + 464) = *(v11 - 8);
  *(v3 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190829A4, 0, 0);
}

uint64_t sub_2190829A4()
{
  v77 = v0;
  v1 = *(v0 + 240);
  v2 = *v1;
  if (*(v1 + 32))
  {
    sub_2190839D0(*(v0 + 240), v72 + 72);
    sub_2190839D0(v1, v72 + 112);

    swift_unknownObjectRetain();

    v0 = v72;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2190839D0(*(v0 + 240), v0 + 152);
    sub_2190839D0(v1, v0 + 192);
  }

  if (v2 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v74 = MEMORY[0x277D84F90];
    v4 = sub_218C34A88(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
    }

    v9 = v74;
    v10 = *(v0 + 432);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      v12 = *MEMORY[0x277D34128];
      do
      {
        v13 = *(v0 + 448);
        v14 = *(v0 + 424);
        *v13 = MEMORY[0x21CECE0F0](v11, v2);
        (*(v10 + 104))(v13, v12, v14);
        v74 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_218C34A88(v15 > 1, v16 + 1, 1);
          v9 = v74;
        }

        v17 = *(v0 + 448);
        v18 = *(v0 + 424);
        ++v11;
        *(v9 + 16) = v16 + 1;
        (*(v10 + 32))(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v17, v18);
      }

      while (v3 != v11);
    }

    else
    {
      v69 = *(v10 + 104);
      v19 = 32;
      do
      {
        v20 = v2;
        **(v0 + 440) = *(v2 + v19);
        v69();
        v74 = v9;
        v21 = *(v9 + 16);
        v22 = *(v9 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v22 >> 1)
        {
          sub_218C34A88(v22 > 1, v21 + 1, 1);
          v9 = v74;
        }

        v23 = *(v0 + 440);
        v24 = *(v0 + 424);
        *(v9 + 16) = v21 + 1;
        (*(v10 + 32))(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v23, v24);
        v19 += 8;
        --v3;
        v2 = v20;
      }

      while (v3);
    }
  }

  v25 = *(v0 + 240);
  if ((*(v25 + 32) & 1) == 0)
  {
    sub_2190839A0(v25);
LABEL_24:
    sub_2194B11C0(MEMORY[0x277D84F90]);
    goto LABEL_25;
  }

  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  v28 = *(*(v0 + 240) + 8);

  if (!v27)
  {
    goto LABEL_24;
  }

  v74 = v28;
  v75 = v27;
  v76 = v26;

  swift_unknownObjectRetain();
  sub_21907A5BC(&v74, &v73);
  sub_219083AE0(v28, v27);

  swift_unknownObjectRelease();
  if (!v73)
  {
    goto LABEL_24;
  }

LABEL_25:
  v29 = *(v0 + 240);
  if (*(v29 + 32))
  {
    v30 = *(v29 + 16);
    v31 = *(*(v0 + 240) + 8);

    sub_2186D8B7C(0, &qword_280E8B6C0, sub_219083A08, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = v31;
    *(inited + 40) = v30;

    swift_unknownObjectRetain();
    v33 = sub_2194AD74C(&unk_282A25AA0);
    sub_2189AD3D8(&unk_282A25AC0);
    *(inited + 48) = v33;
    sub_2194B11E0(inited);
    v0 = v72;
    swift_setDeallocating();
    sub_21907C540(inited + 32, sub_219083A08);
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_2190839A0(v29);
    sub_2194B11E0(MEMORY[0x277D84F90]);
  }

  v34 = *(v0 + 464);
  v63 = *(v0 + 472);
  v64 = *(v0 + 456);
  v35 = *(v0 + 408);
  v62 = *(v0 + 400);
  v60 = *(v0 + 392);
  v36 = *(v0 + 384);
  v37 = *(v72 + 376);
  v59 = *(v72 + 368);
  v61 = *(v72 + 360);
  v38 = *(v72 + 352);
  v66 = *(v72 + 296);
  v67 = *(v72 + 288);
  v68 = *(v72 + 280);
  v39 = *(v72 + 248);
  v40 = MEMORY[0x277D84F90];
  sub_218F0BB90(MEMORY[0x277D84F90]);
  sub_219BF3E74();
  v65 = v39;
  v70 = *(v39 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService + 32);
  v71 = *(v39 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService), v71);
  sub_2186E0010();
  sub_219BEDD14();
  v74 = 0x3A3A756F59726F66;
  v75 = 0xE800000000000000;
  sub_219BDBD54();
  v41 = sub_219BDBD44();
  v43 = v42;
  (*(v37 + 8))(v36, v59);
  MEMORY[0x21CECC330](v41, v43);

  v44 = sub_219BEC004();
  v45 = *(*(v44 - 8) + 56);
  v45(v61, 1, 1, v44);
  sub_218A42400(0);
  (*(*(v46 - 8) + 56))(v38, 1, 1, v46);
  sub_219BF1764();

  sub_219083A70(v38, &unk_280E8FF30, sub_218A42400);
  sub_219083A70(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v47 = *(v35 + 8);
  *(v72 + 480) = v47;
  *(v72 + 488) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v60, v62);
  sub_2186D8B7C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v48 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_219C09BA0;
  (*(v34 + 16))(v49 + v48, v63, v64);
  v45(v61, 1, 1, v44);
  sub_219A95188(v40);
  sub_219A95188(v40);
  sub_219A951A0(v40);
  sub_219A951B8(v40);
  sub_219A952CC(v40);
  sub_219A952E4(v40);
  sub_219A953F8(v40);
  sub_219BF2024();
  v50 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v52 = v51;
  v53 = *(v51 - 8);
  (*(v53 + 16))(v66, v65 + v50, v51);
  (*(v53 + 56))(v66, 0, 1, v52);
  v54 = sub_219BF35D4();
  (*(*(v54 - 8) + 56))(v67, 1, 1, v54);
  *(v72 + 105) = 4;
  sub_219083DD4(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v55 = sub_219BF2774();
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  v56 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v56 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v57 = swift_task_alloc();
  *(v72 + 496) = v57;
  *v57 = v72;
  v57[1] = sub_2190834BC;
  v5 = *(v72 + 344);
  v6 = *(v72 + 320);
  v4 = *(v72 + 416);
  v8 = v70;
  v7 = v71;

  return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
}

uint64_t sub_2190834BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 312);
  v3[63] = v1;

  v6 = (v5 + 8);
  v7 = (v4 + 8);
  v17 = v3[60];
  v8 = v3[52];
  v9 = v3[50];
  v10 = v3[43];
  v11 = v3[41];
  v12 = v3[40];
  v13 = v3[38];
  if (v1)
  {
    (*v6)(v12, v13);
    (*v7)(v10, v11);
    v17(v8, v9);
    v14 = sub_219083874;
  }

  else
  {
    v3[64] = a1;
    (*v6)(v12, v13);
    (*v7)(v10, v11);
    v17(v8, v9);
    v14 = sub_219083744;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_219083744()
{
  (*(v0[58] + 8))(v0[59], v0[57]);

  v1 = v0[1];
  v2 = v0[64];

  return v1(v2);
}

uint64_t sub_219083874()
{
  (*(v0[58] + 8))(v0[59], v0[57]);

  v1 = v0[1];

  return v1();
}

void sub_219083A08()
{
  if (!qword_280E8F710)
  {
    sub_2186E2394();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F710);
    }
  }
}

uint64_t sub_219083A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8B7C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219083AE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219083B24()
{
  if (!qword_280E8F740)
  {
    sub_2186D8B7C(255, &unk_280E8EEE0, MEMORY[0x277D333A8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F740);
    }
  }
}

uint64_t sub_219083BBC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186D8B7C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_219083C3C()
{
  if (!qword_280E8E910)
  {
    sub_219BEDC04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E910);
    }
  }
}

uint64_t sub_219083CA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186F8598(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219083D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219083D80()
{
  result = qword_27CC15878;
  if (!qword_27CC15878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15878);
  }

  return result;
}

void sub_219083DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_219083E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219083EC4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_21907B470(v7, a1, v4, v5, v6);
}

uint64_t sub_219083F88(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_21907AC2C(v6, a1, v4, v5, v7);
}

unint64_t sub_21908404C()
{
  result = qword_280EE7988;
  if (!qword_280EE7988)
  {
    sub_2186D8B7C(255, &qword_280EE7980, type metadata accessor for ForYouTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7988);
  }

  return result;
}

uint64_t sub_2190840E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_219084128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21908419C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2190841E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219084240()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v5);
  MEMORY[0x21CECE850](v6);
  sub_219084E38(v1, v2, v3, v4);
  return sub_219BF7AE4();
}

uint64_t sub_2190842CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 5);
  MEMORY[0x21CECE850](*(v0 + 4));
  MEMORY[0x21CECE850](v5);

  return sub_219084E38(v1, v2, v3, v4);
}

uint64_t sub_219084344()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v5);
  MEMORY[0x21CECE850](v6);
  sub_219084E38(v1, v2, v3, v4);
  return sub_219BF7AE4();
}

BOOL sub_2190843CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return v6 && v7;
}

uint64_t sub_219084424(void *a1)
{
  v2 = v1;
  sub_219084D08();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedViewerSportsEvent();
  MEMORY[0x28223BE20](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationBarBackgroundImageProvider.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219084D60(v2 + OBJC_IVAR____TtC7NewsUI236NavigationBarBackgroundImageProvider_model, v12);
  sub_219084DC4(v12, v9);
  [a1 frame];
  Width = CGRectGetWidth(v42);
  [a1 frame];
  MaxY = CGRectGetMaxY(v43);
  v15 = [a1 traitCollection];
  v16 = [v15 userInterfaceLevel];
  v17 = [v15 userInterfaceStyle];

  aBlock = 0;
  v36 = 0;
  v37 = *&Width;
  v38 = MaxY;
  v34 = v16;
  v39 = v16;
  v40 = v17;

  sub_219BE2DD4();

  v18 = v41;
  if (v41 != 1)
  {
    sub_219084EBC(v9, type metadata accessor for TagFeedViewerSportsEvent);
    return v18;
  }

  v33[1] = v2;
  v19 = [objc_allocWithZone(type metadata accessor for TagFeedViewerSportsEventBackgroundView()) initWithFrame_];
  [a1 bounds];
  sub_218A797E8(v6, 0.0, 0.0, Width, MaxY, v20, v21, v22, v23);
  v24 = sub_219BE6424();
  (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  sub_219BEB574();
  [v19 setNeedsLayout];
  [v19 layoutIfNeeded];
  v25 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_219084E28;
  *(v27 + 24) = v26;
  v39 = sub_219084E30;
  v40 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21988D720;
  v38 = COERCE_DOUBLE(&block_descriptor_92);
  v28 = _Block_copy(&aBlock);
  v29 = v19;

  v18 = [v25 imageWithActions_];
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v40 = v17;
    v41 = v18;
    aBlock = 0;
    v36 = 0;
    v37 = *&Width;
    v38 = MaxY;
    v39 = v34;
    v32 = v18;

    sub_219BE2DE4();

    sub_219084EBC(v9, type metadata accessor for TagFeedViewerSportsEvent);

    return v18;
  }

  __break(1u);
  return result;
}

void sub_2190848E8(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

uint64_t sub_219084978()
{
  sub_219084EBC(v0 + OBJC_IVAR____TtC7NewsUI236NavigationBarBackgroundImageProvider_model, type metadata accessor for NavigationBarBackgroundImageProvider.Model);

  return swift_deallocClassInstance();
}

uint64_t sub_219084A28()
{
  result = type metadata accessor for TagFeedViewerSportsEvent();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_219084AC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219084AE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_219084B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedViewerSportsEvent();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188C4460);
}

uint64_t sub_219084B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagFeedViewerSportsEvent();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2188C450C);
}

uint64_t sub_219084C0C(uint64_t a1)
{
  result = type metadata accessor for TagFeedViewerSportsEvent();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_219084CB4()
{
  result = qword_27CC158B0;
  if (!qword_27CC158B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC158B0);
  }

  return result;
}

void sub_219084D08()
{
  if (!qword_27CC158B8)
  {
    sub_219BE6424();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC158B8);
    }
  }
}

uint64_t sub_219084D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationBarBackgroundImageProvider.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219084DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedViewerSportsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219084E38(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x21CECE870](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x21CECE870](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x21CECE870](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x21CECE870](*&v9);
}

uint64_t sub_219084EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_219085008()
{
  v0 = sub_219BF17D4();
  v2 = v1;
  if (v0 == sub_219BF17D4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

char *sub_2190850CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for MagazineFeedGroupMoreActionsButton()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_debugFeedAction] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel;
  v15 = *&v13[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel];
  v16 = v13;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel;
  [v16 addSubview_];
  [v16 addSubview_];
  [*&v13[v14] setNumberOfLines_];
  [*&v16[v17] setNumberOfLines_];

  return v16;
}

void sub_219085320()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_debugFeedAction);
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BEA814();
  }
}

void sub_219085390()
{
  sub_218807410(&qword_280EBB380);

  JUMPOUT(0x21CEC1E40);
}

void sub_2190853E8()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for MagazineFeedGroupMoreActionsButton()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_debugFeedAction) = 0;
  sub_219BF7514();
  __break(1u);
}

void __swiftcall AudioHistoryFeedModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioHistoryFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_2190855B4(void *a1, uint64_t a2)
{
  v21 = sub_219BE14C4();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE15B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  v19 = a1[3];
  v20 = v15;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v19);
  v18[1] = a2;
  v18[2] = v16;
  swift_unownedRetainStrong();
  (*(v12 + 104))(v14, *MEMORY[0x277D2F498], v11);
  sub_219BDD0F4();
  (*(v12 + 8))(v14, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D2F2A8], v21);
  sub_219BE1484();
  sub_219085A2C();
  sub_219BDD1F4();

  (*(v8 + 8))(v10, v7);
  sub_219BDD274();
  sub_219BE1B94();
}

uint64_t AudioHistoryFeedModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t AudioHistoryFeedModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219085910()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for AudioHistoryFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_219085A2C()
{
  result = qword_280EE8010;
  if (!qword_280EE8010)
  {
    sub_219BE14A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8010);
  }

  return result;
}

uint64_t type metadata accessor for SportsNavigationTagFeedGroupConfigData()
{
  result = qword_280E97C28;
  if (!qword_280E97C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219085AFC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21908602C(0, &qword_280E8C758, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219085FD8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 17;
    v13 = type metadata accessor for SportsNavigationTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219085D64(void *a1)
{
  v3 = v1;
  sub_21908602C(0, &qword_27CC158E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219085FD8();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsNavigationTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219085F30(uint64_t a1)
{
  v2 = sub_219085FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219085F6C(uint64_t a1)
{
  v2 = sub_219085FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219085FD8()
{
  result = qword_280E97C60[0];
  if (!qword_280E97C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E97C60);
  }

  return result;
}

void sub_21908602C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219085FD8();
    v7 = a3(a1, &type metadata for SportsNavigationTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190860A4()
{
  result = qword_27CC158E8;
  if (!qword_27CC158E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC158E8);
  }

  return result;
}

unint64_t sub_2190860FC()
{
  result = qword_280E97C50;
  if (!qword_280E97C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97C50);
  }

  return result;
}

unint64_t sub_219086154()
{
  result = qword_280E97C58;
  if (!qword_280E97C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97C58);
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedLayoutModel()
{
  result = qword_27CC158F0;
  if (!qword_27CC158F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2190861F4()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_219086358(uint64_t a1)
{
  v2 = sub_2190868F4(&qword_27CC0C0B8);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21908645C()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  v8 = sub_219BEF8E4();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_2190865E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21908674C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_219086890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190868F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioHistoryFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_219086954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_21908699C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2190869FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219087C14(a1, &v31);
  if (v33)
  {
    v29 = v31;
    v30[0] = *v32;
    *(v30 + 9) = *&v32[9];
    sub_218A26508(&v29, v27);
    if (v28)
    {
      if (v28 == 1)
      {
        sub_2186CB1F0(v27, v24);
        v3 = v25;
        v4 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v5 = (*(v4 + 24))(v3, v4);
        v6 = sub_219ADDA20(v5, 0);
        v8 = v7;
        v9 = v7 & 1;
        v10 = a2;
        v11 = v6;
        v12 = 2;
LABEL_8:
        sub_219086C40(v11, v9, v12, v10);
        sub_219087C70(v6, v8 & 1);
        sub_218A26564(&v29);
        return __swift_destroy_boxed_opaque_existential_1(v24);
      }

LABEL_9:
      result = sub_218A26564(&v29);
      *a2 = *&v27[0];
      *(a2 + 40) = 2;
      return result;
    }

    v18 = *&v27[0];
    v19 = sub_219ADD668(*(*&v27[0] + 24));
  }

  else
  {
    v29 = v31;
    v30[0] = *v32;
    *(v30 + 9) = *&v32[9];
    sub_218A26508(&v29, v27);
    if (v28)
    {
      if (v28 == 1)
      {
        sub_2186CB1F0(v27, v24);
        v13 = v25;
        v14 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v15 = (*(v14 + 24))(v13, v14);
        v6 = sub_219ADDA20(v15, 1);
        v8 = v16;
        v9 = v16 & 1;
        v10 = a2;
        v11 = v6;
        v12 = 1;
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    v18 = *&v27[0];
    v19 = sub_219ADD1F0(*(*&v27[0] + 24));
  }

  v21 = v19;
  v22 = v20;
  sub_218A26564(&v29);
  v23 = *(v18 + 16);

  if ((v22 & 1) == 0)
  {
    type metadata accessor for FollowingTagModel();
    result = swift_allocObject();
    *(result + 16) = v23;
    *(result + 24) = v21;
    *(result + 32) = 1;
    *(a2 + 40) = 0;
    v21 = result;
  }

  *a2 = v21;
  *(a2 + 41) = v22 & 1;
  return result;
}

void *sub_219086C40@<X0>(id a1@<X1>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    *a4 = a1;
    *(a4 + 41) = 1;

    return a1;
  }

  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      sub_219096410(a3, &v40);
      v38 = &type metadata for NotificationsNewIssuesRowModel;
      v39 = &off_282A5B998;
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_20;
      }

      sub_2190962D4(a3, &v40);
      v38 = &type metadata for NotificationsMarketingRowModel;
      v39 = &off_282A5B968;
    }

LABEL_19:
    v23 = swift_allocObject();
    v37[0] = v23;
    v24 = v41;
    v23[1] = v40;
    v23[2] = v24;
    v23[3] = v42[0];
    *(v23 + 58) = *(v42 + 10);
    sub_218718690(v37, a4);
    *(a4 + 40) = 1;
    v25 = v37;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  if (a1 == 4)
  {
    v17 = sub_219A3D21C();
    v19 = v18;
    if (qword_27CC08428 != -1)
    {
      swift_once();
    }

    v20 = qword_27CCD88C8;
    *(&v41 + 1) = &type metadata for NotificationsEndOfAudioTrackRowModel;
    *&v42[0] = &off_282A5B9C8;
    v21 = swift_allocObject();
    *&v40 = v21;
    *(v21 + 16) = 4;
    *(v21 + 24) = v20;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    *(v21 + 48) = 4;
    *(v21 + 56) = v17;
    *(v21 + 64) = v19;
    *(v21 + 72) = a3;
    *(v21 + 73) = 1;
    sub_218718690(&v40, a4);
    *(a4 + 40) = 1;
    v22 = v20;
    goto LABEL_26;
  }

  if (a1 == 5)
  {
    sub_219096198(a3, &v40);
    v38 = &type metadata for NotificationsNewsletterRowModel;
    v39 = &off_282A5BBF0;
    goto LABEL_19;
  }

  if (a1 != 6)
  {
LABEL_20:
    v27 = sub_219A3D21C();
    v29 = v28;
    v30 = sub_219A3D330();
    if (v32 == -1)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      v34 = 0;
      v35 = 1;
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = v32;
    }

    *(&v41 + 1) = &type metadata for NotificationsPuzzlesRowModel;
    *&v42[0] = &off_282A5B9F8;
    v36 = swift_allocObject();
    *&v40 = v36;
    *(v36 + 16) = v27;
    *(v36 + 24) = v29;
    *(v36 + 32) = 1;
    *(v36 + 40) = v33;
    *(v36 + 48) = v34;
    *(v36 + 56) = v35;
    *(v36 + 64) = 1;
    *(v36 + 72) = a3;
    *(v36 + 73) = 1;
    sub_218718690(&v40, a4);
    *(a4 + 40) = 1;
LABEL_26:
    v25 = &v40;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v7 = sub_219A3D21C();
  v9 = v8;
  v10 = sub_219A3D330();
  if (v12 == -1)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
  }

  *(a4 + 24) = &type metadata for NotificationsSportsRowModel;
  *(a4 + 32) = &off_282A5BA28;
  result = swift_allocObject();
  *a4 = result;
  result[2] = v7;
  result[3] = v9;
  *(result + 32) = 6;
  result[5] = v13;
  result[6] = v14;
  *(result + 56) = v15;
  result[8] = 0;
  *(result + 72) = a3;
  *(result + 73) = 1;
  *(a4 + 40) = 1;
  return result;
}

uint64_t sub_219086FD0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v67 = a2;
  v66 = a1;
  sub_219087A28(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v6 = v5;
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v52 - v7;
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25EF0();
  v65 = v11;
  v64 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v61 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v52 - v14;
  sub_218A25F90();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219087A28(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18);
  v59 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v63 = &v52 - v23;
  sub_219087A28(0, &qword_27CC0C928, MEMORY[0x277D6DF88]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = (&v52 - v27);
  sub_2190869FC(v3 + 16, v74);
  sub_219087AAC(v74, &v71);
  if (v73 == 1)
  {
    v29 = v71;
    *v28 = v71;
    (*(v26 + 104))(v28, *MEMORY[0x277D6DF68], v25);
    v30 = v29;
    v67(v28);

    (*(v26 + 8))(v28, v25);
    return sub_219087BB4(v74, sub_219087B10);
  }

  v57 = a3;
  v69 = v71;
  v70[0] = *v72;
  *(v70 + 9) = *&v72[9];
  sub_219A3D0C4();
  sub_219BEB244();

  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_219087BB4(v17, sub_218A25F90);
    sub_219087B60();
    v31 = swift_allocError();
    *v32 = 0;
    *v28 = v31;
    (*(v26 + 104))(v28, *MEMORY[0x277D6DF68], v25);
    v67(v28);
    (*(v26 + 8))(v28, v25);
LABEL_7:
    sub_218A26564(&v69);
    return sub_219087BB4(v74, sub_219087B10);
  }

  v33 = v20;
  v56 = v6;
  v34 = v63;
  (*(v20 + 32))(v63, v17, v19);
  sub_219A3D0C4();
  sub_219BE6A64();

  v35 = v64;
  v36 = v65;
  if ((*(v64 + 48))(v10, 1, v65) == 1)
  {
    sub_219087BB4(v10, sub_218A2625C);
    sub_219087B60();
    v37 = swift_allocError();
    *v38 = 1;
    *v28 = v37;
    (*(v26 + 104))(v28, *MEMORY[0x277D6DF68], v25);
    v67(v28);
    (*(v26 + 8))(v28, v25);
    (*(v33 + 8))(v34, v19);
    goto LABEL_7;
  }

  (*(v35 + 32))(v60, v10, v36);
  sub_218A26508(&v69, v68);
  sub_21878D92C();
  sub_219BE5FB4();
  v54 = v33;
  (*(v33 + 16))(v59, v34, v19);
  v55 = v19;
  sub_219BE69E4();
  v40 = v58;
  v41 = v56;
  v53 = *(v62 + 16);
  v53(v58, v66, v56);
  sub_219BEB234();
  sub_218BBB82C();
  sub_21878D8D8();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  if (sub_219BE6E54())
  {
    v42 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218BBB880();
    v44 = *(v43 + 48);
    v45 = *(v43 + 64);
    v53(v28, v40, v41);
    sub_218718690(v68, v28 + v44);
    v46 = *MEMORY[0x277D6D868];
    v47 = sub_219BE6DF4();
    (*(*(v47 - 8) + 104))(v28 + v45, v46, v47);
    v42 = MEMORY[0x277D6DF78];
  }

  (*(v26 + 104))(v28, *v42, v25);
  v67(v28);
  (*(v26 + 8))(v28, v25);
  (*(v62 + 8))(v40, v41);
  v48 = *(v54 + 8);
  v49 = v55;
  v48(v59, v55);
  v50 = *(v64 + 8);
  v51 = v65;
  v50(v61, v65);
  v50(v60, v51);
  v48(v63, v49);
  sub_218A26564(&v69);
  sub_219087BB4(v74, sub_219087B10);
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_219087994(uint64_t a1)
{
  v2 = sub_219087C7C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2190879D4()
{
  result = qword_27CC15900;
  if (!qword_27CC15900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15900);
  }

  return result;
}

void sub_219087A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219087AAC(uint64_t a1, uint64_t a2)
{
  sub_219087B10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219087B10()
{
  if (!qword_27CC15908)
  {
    v0 = sub_219BE2EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15908);
    }
  }
}

unint64_t sub_219087B60()
{
  result = qword_27CC15910;
  if (!qword_27CC15910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15910);
  }

  return result;
}

uint64_t sub_219087BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219087C70(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_219087C7C()
{
  result = qword_27CC1A650;
  if (!qword_27CC1A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A650);
  }

  return result;
}

unint64_t sub_219087CE4()
{
  result = qword_27CC15918;
  if (!qword_27CC15918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15918);
  }

  return result;
}

id sub_219087D38(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = MEMORY[0x277D83D88];
  sub_2186DD7B4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = v63 - v9;
  sub_2186DD7B4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v63 - v12;
  memcpy(v68, a3, 0x201uLL);
  sub_219088A20();
  v14 = sub_219BF52C4();
  v15 = MEMORY[0x277D837D0];
  if (!v14)
  {
    if (qword_280E8D828 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

  v16 = v14;
  v64 = v10;
  v17 = sub_219BF5414();
  if (!*(v16 + 16))
  {

    goto LABEL_23;
  }

  v63[1] = v8;
  v19 = sub_21870F700(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0 || (sub_2186D1230(*(v16 + 56) + 32 * v19, v68), (swift_dynamicCast() & 1) == 0))
  {
LABEL_23:

    if (qword_280E8D828 == -1)
    {
LABEL_24:
      sub_219BF6214();
      sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_219C09BA0;
      *(v51 + 56) = v15;
      *(v51 + 64) = sub_2186FC3BC();
      *(v51 + 32) = a1;
      *(v51 + 40) = a2;

LABEL_25:
      sub_219BE5314();
LABEL_26:

      return 0;
    }

LABEL_53:
    swift_once();
    goto LABEL_24;
  }

  v22 = v66;
  v23 = v67;
  __swift_project_boxed_opaque_existential_1(v65 + 3, v65[6]);
  v24 = sub_219A3FB34(v22, v23, a3, 0);
  if (!v24)
  {

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_219C09BA0;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = sub_2186FC3BC();
    *(v52 + 32) = a1;
    *(v52 + 40) = a2;

    goto LABEL_25;
  }

  v25 = v24;
  v26 = sub_219BF5414();
  if (!*(v16 + 16))
  {

LABEL_33:
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_219C09BA0;
    *(v53 + 56) = MEMORY[0x277D837D0];
    *(v53 + 64) = sub_2186FC3BC();
    *(v53 + 32) = a1;
    *(v53 + 40) = a2;

    goto LABEL_36;
  }

  v63[0] = a2;
  v28 = sub_21870F700(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0 || (sub_2186D1230(*(v16 + 56) + 32 * v28, v68), (swift_dynamicCast() & 1) == 0))
  {

    a2 = v63[0];
    goto LABEL_33;
  }

  sub_218E9B5CC(v16);
  v31 = objc_allocWithZone(MEMORY[0x277D30DF8]);
  v32 = sub_219BF5204();

  v33 = sub_219BF53D4();
  v34 = [v31 initWithDictionary:v32 identifier:v33];

  if (!v34)
  {

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_219C09BA0;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = sub_2186FC3BC();
    v55 = v63[0];
    *(v54 + 32) = a1;
    *(v54 + 40) = v55;

LABEL_36:
    sub_219BE5314();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D30DE0]) initWithArticleMetadata:v34 sourceChannel:v25 assetManager:v65[2]];
  if (!v35)
  {

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_219C09BA0;
    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = sub_2186FC3BC();
    v57 = v63[0];
    *(v56 + 32) = a1;
    *(v56 + 40) = v57;

    sub_219BE5314();
    swift_unknownObjectRelease();

    goto LABEL_26;
  }

  v65 = v34;
  v36 = v35;
  v37 = v35;
  if ([v37 contentType] == 1)
  {
    v38 = [v37 contentURL];
    if (!v38)
    {

      v62 = sub_219BDB954();
      (*(*(v62 - 8) + 56))(v13, 1, 1, v62);
      sub_21871057C(v13, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (qword_280E8D828 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      swift_unknownObjectRelease();

      return 0;
    }

    v39 = v38;
    sub_219BDB8B4();

    v40 = sub_219BDB954();
    (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
    sub_21871057C(v13, &unk_280EE9D00, MEMORY[0x277CC9260]);
  }

  v41 = v37;
  result = [v37 title];
  if (result)
  {
    v43 = result;

    v44 = sub_219BF5414();
    v46 = v45;

    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      v48 = [v41 publishDate];

      if (v48)
      {
        v49 = v64;
        sub_219BDBCA4();

        v50 = 0;
      }

      else
      {
        v50 = 1;
        v49 = v64;
      }

      v58 = sub_219BDBD34();
      (*(*(v58 - 8) + 56))(v49, v50, 1, v58);
      v59 = sub_219BF6F94();
      sub_21871057C(v49, &qword_280EE9C40, MEMORY[0x277CC9578]);
      if (v59)
      {
        swift_unknownObjectRelease();

        return v36;
      }
    }

    else
    {
    }

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_219C09BA0;
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 64) = sub_2186FC3BC();
    v61 = v63[0];
    *(v60 + 32) = a1;
    *(v60 + 40) = v61;

    sub_219BE5314();
    swift_unknownObjectRelease();

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t sub_219088A20()
{
  result = qword_27CC15920;
  if (!qword_27CC15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15920);
  }

  return result;
}

uint64_t sub_219088A9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219088F3C(0, &qword_280E8C7D8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219088EE8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219088CE4(uint64_t a1)
{
  v2 = sub_219088EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219088D20(uint64_t a1)
{
  v2 = sub_219088EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219088D74(void *a1)
{
  sub_219088F3C(0, &qword_280E8C208, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219088EE8();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_219088EE8()
{
  result = qword_280E98E48;
  if (!qword_280E98E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98E48);
  }

  return result;
}

void sub_219088F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219088EE8();
    v7 = a3(a1, &type metadata for SharedWithYouTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219088FB4()
{
  result = qword_27CC15928;
  if (!qword_27CC15928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15928);
  }

  return result;
}

unint64_t sub_21908900C()
{
  result = qword_280E98E38;
  if (!qword_280E98E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98E38);
  }

  return result;
}

unint64_t sub_219089064()
{
  result = qword_280E98E40;
  if (!qword_280E98E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98E40);
  }

  return result;
}

BOOL sub_219089150(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_2190930F4(a4, a5);
  }

  while ((sub_219BF53A4() & 1) == 0);
  return v9 != v10;
}

BOOL sub_219089258(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_219089288(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2 == 4;
    v5 = a1 == 4 && a2 == 4;
    v6 = a1 == 3 && a2 == 4;
    v7 = a1 == 2 && a2 == 4;
    v8 = a1 == 1 && a2 == 4;
    if (a1)
    {
      v4 = 0;
    }

    v9 = (a3 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      if (v11 <= 1)
      {
        if (*v9)
        {
          if (a2 != 1)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v10 == a1)
          {
            return 1;
          }

          goto LABEL_19;
        }

        if (!a2 && ((v10 ^ a1) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v11 == 2)
        {
          if (a2 != 2)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v11 == 3)
        {
          if (a2 != 3)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v10 <= 1)
        {
          if (v10)
          {
            if (v8)
            {
              return 1;
            }
          }

          else if (v4)
          {
            return 1;
          }
        }

        else if (v10 == 2)
        {
          if (v7)
          {
            return 1;
          }
        }

        else if (v10 == 3)
        {
          if (v6)
          {
            return 1;
          }
        }

        else if (v5)
        {
          return 1;
        }
      }

LABEL_19:
      v9 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_2190893DC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_219975D48(*v4);
    v9 = v8;
    if (v7 == sub_219975D48(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_219BF78F4();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_219089530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73626F6E4B676ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000219CD6960;
    }

    else
    {
      v5 = 0x8000000219CD6980;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x6972657473756C63;
    }

    if (v3)
    {
      v5 = 0x8000000219CD6940;
    }

    else
    {
      v5 = 0xEF73626F6E4B676ELL;
    }
  }

  v6 = 0x8000000219CD6960;
  v7 = 0xD000000000000020;
  if (a2 == 2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x8000000219CD6980;
  }

  if (a2)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0x6972657473756C63;
  }

  if (a2)
  {
    v2 = 0x8000000219CD6940;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908965C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0x74695470756F7267;
    v9 = 0xEA0000000000656CLL;
    if (a1 != 1)
    {
      v8 = 0x62755370756F7267;
      v9 = 0xED0000656C746974;
    }

    if (a1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 1701869940;
    }

    if (v2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v3 = 0xD000000000000011;
      v4 = 0x8000000219CD77A0;
      v5 = 0x8000000219CD7500;
      v6 = 0xD000000000000017;
      v7 = a1 == 5;
    }

    else
    {
      v3 = 0x74695470756F7267;
      v4 = 0xEF726F6C6F43656CLL;
      v5 = 0x8000000219CD83D0;
      v6 = 0xD000000000000013;
      v7 = a1 == 3;
    }

    if (v7)
    {
      v10 = v3;
    }

    else
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA0000000000656CLL;
        if (v10 != 0x74695470756F7267)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v12 = 0xED0000656C746974;
        if (v10 != 0x62755370756F7267)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v13 = 0xD000000000000017;
    }

    if (a2 == 5)
    {
      v12 = 0x8000000219CD77A0;
    }

    else
    {
      v12 = 0x8000000219CD7500;
    }

    if (v10 != v13)
    {
      goto LABEL_43;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEF726F6C6F43656CLL;
    if (v10 != 0x74695470756F7267)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = 0x8000000219CD83D0;
    if (v10 != 0xD000000000000013)
    {
LABEL_43:
      v14 = sub_219BF78F4();
      goto LABEL_44;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_2190898C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "r";
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xD00000000000001DLL;
    v13 = "icClusteringKnobs";
    v14 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v14 = 0xD000000000000017;
      v13 = "generalTopicClusteringKnobs";
    }

    v15 = "hardPaywallBundleArticleLimit";
    if (a1)
    {
      v12 = 0xD000000000000021;
    }

    else
    {
      v15 = "r";
    }

    if (a1 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }

    if (v4 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = "HeadlinesInMoreForYou";
    v6 = "minChannelGroupRatio";
    v7 = 0xD000000000000020;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001ALL;
      v6 = "minTopicGroupRatio";
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v5 = v6;
    }

    v8 = "orphanedClusteringKnobs";
    v9 = 0xD000000000000025;
    if (a1 == 4)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v8 = "clusterOrderingMode";
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "icClusteringKnobs";
        v2 = 0xD00000000000001BLL;
      }

      else
      {
        v3 = "generalTopicClusteringKnobs";
        v2 = 0xD000000000000017;
      }
    }

    else if (a2)
    {
      v3 = "hardPaywallBundleArticleLimit";
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001DLL;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v3 = "orphanedClusteringKnobs";
      v2 = 0xD000000000000013;
    }

    else
    {
      v3 = "clusterOrderingMode";
      v2 = 0xD000000000000025;
    }
  }

  else if (a2 == 6)
  {
    v3 = "HeadlinesInMoreForYou";
  }

  else if (a2 == 7)
  {
    v3 = "minChannelGroupRatio";
    v2 = 0xD000000000000020;
  }

  else
  {
    v3 = "minTopicGroupRatio";
    v2 = 0xD00000000000001ALL;
  }

  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_219BF78F4();
  }

  return v16 & 1;
}