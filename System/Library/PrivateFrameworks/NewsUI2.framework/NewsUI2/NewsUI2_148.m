uint64_t sub_21974C380()
{
  v1 = sub_219BEE6E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v5 = sub_219BF0034();
  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v12[1] = v5;
    v13 = v8;
    v9 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = *(v7 + 56);
    do
    {
      v13(v4, v9, v1);
      sub_219BEE6D4();
      (*(v7 - 8))(v4, v1);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v9 += v10;
      --v6;
    }

    while (v6);

    return v14;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_21974C548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);
  v12 = objc_allocWithZone(MEMORY[0x277D30F20]);

  v13 = [v12 initWithContext_];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_218846958;
  v14[5] = v10;
  v17[4] = sub_21974D7D4;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21974C768;
  v17[3] = &block_descriptor_17_6;
  v15 = _Block_copy(v17);

  [v13 setFetchCompletionHandler_];
  _Block_release(v15);
  sub_219BE1F84();
  sub_219BE1F54();
  sub_219BE1F64();
}

void sub_21974C6C8(uint64_t a1, int a2, id a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void))
{
  if (a3)
  {
    v7 = a3;
    v8 = a3;
    v9 = v7;
  }

  else
  {
    if (a1)
    {
      a6();
      return;
    }

    sub_21974D7E0();
    v9 = swift_allocError();
    v7 = v9;
  }

  a4(v9);
}

uint64_t sub_21974C768(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_2186D6710(0, &qword_280E8E260);
    v6 = sub_219BF5924();
  }

  if (a3)
  {
    sub_2186D6710(0, &qword_280E8E260);
    a3 = sub_219BF5924();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_21974C848(id *a1, uint64_t a2, uint64_t a3, double a4)
{
  v68 = a3;
  sub_2186E832C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = v64 - v8;
  v9 = sub_219BDBD34();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v65 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = v64 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v64 - v14;
  v16 = *a1;
  v17 = [*a1 articleID];
  v18 = sub_219BF5414();
  v20 = v19;

  if (*(a2 + 16))
  {
    v21 = sub_21870F700(v18, v20);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(a2 + 56) + 8 * v21);
      sub_2186C66AC();
      swift_unknownObjectRetain_n();
      v25 = sub_219BF6F74();
      v64[3] = sub_219BF61E4();
      sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_219C09EC0;
      v27 = [v16 identifier];
      v28 = sub_219BF5414();
      v30 = v29;

      *(v26 + 56) = MEMORY[0x277D837D0];
      v31 = sub_2186FC3BC();
      *(v26 + 64) = v31;
      *(v26 + 32) = v28;
      *(v26 + 40) = v30;
      v32 = [v24 description];
      v33 = sub_219BF5414();
      v35 = v34;

      *(v26 + 96) = MEMORY[0x277D837D0];
      *(v26 + 104) = v31;
      *(v26 + 72) = v33;
      *(v26 + 80) = v35;
      sub_219BE5314();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
  }

  sub_2186C66AC();
  v25 = sub_219BF6F74();
  sub_219BF61E4();
  sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09BA0;
  v37 = [v16 identifier];
  v38 = sub_219BF5414();
  v40 = v39;

  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = sub_2186FC3BC();
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  sub_219BE5314();
  v24 = 0;
LABEL_6:

  v41 = [v16 publishDate];
  if (v41)
  {
    v42 = v67;
    v43 = v41;
    sub_219BDBCA4();

    v45 = v69;
    v44 = v70;
    (*(v69 + 32))(v15, v42, v70);
    sub_219BDBC64();
    v47 = v46;
    (*(v45 + 8))(v15, v44);
    if (v47 < -a4)
    {
      goto LABEL_11;
    }
  }

  v48 = v68;
  v49 = *(v68 + 64);
  v50 = [v16 identifier];
  if (!v50)
  {
    sub_219BF5414();
    v50 = sub_219BF53D4();
  }

  v51 = [v49 containsArticleID_];

  if (v51)
  {
    goto LABEL_11;
  }

  if (v24)
  {
    v53 = [swift_unknownObjectRetain() lastListenedAt];
    swift_unknownObjectRelease();
    if (v53)
    {
      v54 = v65;
      sub_219BDBCA4();

      swift_unknownObjectRelease();
      v55 = v69;
      v56 = v66;
      v57 = v54;
      v58 = v70;
      (*(v69 + 32))(v66, v57, v70);
      (*(v55 + 56))(v56, 0, 1, v58);
      sub_2189DD39C(v56);
      return 0;
    }

    v59 = v66;
    (*(v69 + 56))(v66, 1, 1, v70);
    sub_2189DD39C(v59);
    if ([v24 hasArticleCompletedReading] || objc_msgSend(v24, sel_hasArticleBeenRemovedFromAudio) || objc_msgSend(v24, sel_articleLikingStatus) == 2)
    {
      goto LABEL_11;
    }
  }

  v60 = [v16 sourceChannelID];
  if (v60)
  {
    v61 = v60;
    v62 = [*(v48 + 80) hasMutedSubscriptionForTagID_];

    if (v62)
    {
LABEL_11:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  v63 = [v16 isBlockedExplicitContent];
  swift_unknownObjectRelease();
  return v63 ^ 1;
}

void sub_21974CEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 64);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2187A913C;
  *(v10 + 24) = v8;
  v12[4] = sub_21974D7CC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_165;
  v11 = _Block_copy(v12);

  [v9 ensureSyncedWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_21974CFDC(uint64_t (*a1)(void), uint64_t a2)
{
  if (![objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_219BE1F84();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BE1F74();
}

char *sub_21974D0A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = type metadata accessor for AudioSuggestionsStore();
  v61 = &off_282A86128;
  v59[0] = a2;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_38:
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v56 = a1;
  if (v6)
  {
    v57 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v54 = v5;
    v9 = v57;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v10, v56);
        v11 = [swift_unknownObjectRetain() articleID];
        v12 = sub_219BF5414();
        v14 = v13;
        swift_unknownObjectRelease_n();

        v16 = *(v57 + 16);
        v15 = *(v57 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21870B65C((v15 > 1), v16 + 1, 1);
        }

        ++v10;
        *(v57 + 16) = v16 + 1;
        v17 = v57 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v6 != v10);
    }

    else
    {
      v18 = a1 + 32;
      do
      {
        v19 = [swift_unknownObjectRetain_n() articleID];
        v20 = sub_219BF5414();
        v22 = v21;
        swift_unknownObjectRelease_n();

        v24 = *(v57 + 16);
        v23 = *(v57 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21870B65C((v23 > 1), v24 + 1, 1);
        }

        *(v57 + 16) = v24 + 1;
        v25 = v57 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v18 += 8;
        --v6;
      }

      while (v6);
    }

    v5 = v54;
    a1 = v56;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v26 = sub_219771820(v9);

  sub_2186C66AC();
  v27 = sub_219BF6F74();
  sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1((a3 + 24), *(a3 + 48));
  v29 = sub_219BF3CE4();
  [v29 audioSuggestionsMaxIgnoreCount];

  v30 = sub_219BF7894();
  v32 = v31;
  v33 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  v34 = sub_2186FC3BC();
  *(v28 + 64) = v34;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v35 = sub_219BF5224();
  *(v28 + 96) = v33;
  *(v28 + 104) = v34;
  *(v28 + 72) = v35;
  *(v28 + 80) = v36;
  sub_219BF6214();
  sub_219BE5314();

  v58 = v7;
  if (v5)
  {
    v37 = sub_219BF7214();
    if (v37)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_19:
      v38 = 0;
      v55 = a1 & 0xC000000000000001;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v55)
        {
          v39 = MEMORY[0x21CECE0F0](v38, a1);
          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            v52 = v58;
            goto LABEL_36;
          }
        }

        else
        {
          if (v38 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v39 = *(a1 + 8 * v38 + 32);
          swift_unknownObjectRetain();
          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_32;
          }
        }

        v41 = [v39 identifier];
        v42 = sub_219BF5414();
        v44 = v43;

        if (*(v26 + 16))
        {
          v45 = sub_21870F700(v42, v44);
          v47 = v46;

          if (v47)
          {
            v48 = *(*(v26 + 56) + 8 * v45);
            __swift_project_boxed_opaque_existential_1((a3 + 24), *(a3 + 48));
            v49 = sub_219BF3CE4();
            v50 = [v49 audioSuggestionsMaxIgnoreCount];

            v51 = v48 < v50;
            a1 = v56;
            if (!v51)
            {
              swift_unknownObjectRelease();
              goto LABEL_22;
            }
          }
        }

        else
        {
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
LABEL_22:
        ++v38;
        if (v40 == v37)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v52 = MEMORY[0x277D84F90];
LABEL_36:

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v52;
}

char *sub_21974D5DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v5, a1);
        v6 = [swift_unknownObjectRetain() articleID];
        v7 = sub_219BF5414();
        v9 = v8;
        swift_unknownObjectRelease_n();

        v11 = *(v21 + 16);
        v10 = *(v21 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21870B65C((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v21 + 16) = v11 + 1;
        v12 = v21 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v13 = a1 + 32;
      do
      {
        v14 = [swift_unknownObjectRetain_n() articleID];
        v15 = sub_219BF5414();
        v17 = v16;
        swift_unknownObjectRelease_n();

        v19 = *(v21 + 16);
        v18 = *(v21 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21870B65C((v18 > 1), v19 + 1, 1);
        }

        *(v21 + 16) = v19 + 1;
        v20 = v21 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v13 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_21974D7E0()
{
  result = qword_27CC1EAE0;
  if (!qword_27CC1EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EAE0);
  }

  return result;
}

unint64_t sub_21974D848()
{
  result = qword_27CC1EAE8;
  if (!qword_27CC1EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EAE8);
  }

  return result;
}

uint64_t sub_21974D8BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter()
{
  result = qword_280E974E8;
  if (!qword_280E974E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21974D964()
{
  sub_2186E3594();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21974DA08()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  v20 = 2;
  sub_2186E3B14();
  v18 = sub_219BEE964();
  sub_2186E4D64(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v17 = v8;
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_2186E3594();
  sub_219BEDD14();
  (*(v1 + 16))(v3, &v7[*(v5 + 28)], v0);
  sub_218817794(v7, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
  v12 = sub_219BF1784();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  sub_2186F9254(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v11 + v10) = sub_219BEFB94();
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32308], v17);
  v19 = v18;
  sub_2191EE154(v11);
  return v19;
}

uint64_t sub_21974DD44(uint64_t a1)
{
  v3 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21975040C(v1, v6, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2197501C4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_21975040C(v18[0], v6, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_2197501C4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218C5FB88();
  sub_219BE2F74();

  sub_21975040C(v11, v6, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_2197501C4(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_21974DFF4(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v106 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4D64(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v71 - v5;
  sub_2186E4D64(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v71 - v7;
  sub_2186E4D64(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v71 - v9;
  v10 = sub_219BF2AB4();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x28223BE20](v10);
  v100 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2034();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x28223BE20](v12);
  v107 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BEF9C4();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_219BEF564();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4D64(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v71 - v17;
  v82 = sub_219BEFBD4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v19 - 8);
  v75 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4D64(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v21 - 8);
  v76 = &v71 - v22;
  v91 = sub_219BF2774();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v109 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v24 - 8);
  v95 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData() - 8;
  v80 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v84 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v71 - v32;
  v34 = sub_219BF1934();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v105 = &v71 - v39;
  sub_2186E3594();
  v77 = v40;
  sub_219BEDD14();
  (*(v35 + 16))(v38, &v33[*(v29 + 28)], v34);
  v78 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
  sub_218817794(v33, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
  v41 = v2;
  sub_219BEDCA4();
  v42 = sub_219BEC004();
  (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
  sub_218A42400(0);
  v44 = v95;
  (*(*(v43 - 8) + 56))(v95, 1, 1, v43);
  sub_219BF1764();

  sub_218817794(v44, sub_218A89A94);
  sub_218817794(v28, sub_2186FE720);
  v45 = *(v35 + 8);
  v94 = v35 + 8;
  v95 = v34;
  v85 = v45;
  v45(v38, v34);
  v46 = v106;
  sub_219BEF134();
  v73 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  v72 = v41 + *(v73 + 20);
  v47 = v72;
  v74 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  v108[3] = v74;
  v108[4] = sub_21974D8BC(&qword_280E99B50, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v108);
  sub_21975040C(v47, boxed_opaque_existential_1, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  v49 = v76;
  sub_219BF2AC4();
  v50 = sub_219BF2AD4();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  sub_21974F944(v46);
  v51 = *(v96 + 8);
  (*(v81 + 104))(v79, *MEMORY[0x277D32930], v82);
  v52 = sub_219BF02F4();
  (*(*(v52 - 8) + 56))(v83, 1, 1, v52);
  (*(v87 + 104))(v86, *MEMORY[0x277D32670], v88);
  (*(v90 + 104))(v89, *MEMORY[0x277D32840], v92);
  swift_bridgeObjectRetain_n();
  v92 = v51;
  sub_219BF2764();
  sub_219B6CEDC(v105, v107);
  v53 = (v41 + *(v73 + 24));
  v54 = v53[3];
  v90 = v53[4];
  v96 = v54;
  v89 = __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_2186E3B14();
  v56 = v55;
  v57 = *(v55 - 8);
  v58 = v97;
  (*(v57 + 16))(v97, v72, v55);
  (*(v57 + 56))(v58, 0, 1, v56);
  v59 = sub_219BF35D4();
  (*(*(v59 - 8) + 56))(v98, 1, 1, v59);
  LOBYTE(v108[0]) = 2;
  sub_2186F9254(0, &qword_280E90058, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v60 = v91;
  v61 = v84;
  sub_219BEDD14();
  v62 = v99;
  sub_218817794(v61, v78);
  v63 = v93;
  (*(v93 + 16))(v62, v109, v60);
  v64 = v63;
  (*(v63 + 56))(v62, 0, 1, v60);
  v65 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v65 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v66 = v100;
  sub_219BF2A84();
  v67 = v105;
  v68 = v107;
  v69 = sub_219BF2184();
  (*(v103 + 8))(v66, v104);
  (*(v101 + 8))(v68, v102);
  (*(v64 + 8))(v109, v60);
  v85(v67, v95);
  return v69;
}

uint64_t sub_21974EE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_21974EEEC(a2, *a1, a3);
  sub_218C5FB88();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21974EEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v72 = a3;
  sub_2186E4D64(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v56 - v5;
  v61 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v61);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEF554();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v10;
  v11 = sub_219BED8D4();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1904();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v56 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v56 - v35;
  sub_219BF2734();
  v37 = sub_219BDBD34();
  (*(*(v37 - 8) + 56))(v26, 1, 1, v37);
  v63 = a2;
  sub_219BF2734();
  v38 = sub_219BF18D4();
  v56 = *(v28 + 8);
  v57 = v27;
  v56(v31, v27);
  if (v38 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v40 = sub_219BF1AD4();
      (*(*(v40 - 8) + 56))(v23, 1, 1, v40);
      v41 = sub_219BEFC64();
      (*(*(v41 - 8) + 56))(v20, 1, 1, v41);
      v42 = sub_219BF4334();
      (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
      v43 = sub_219BEC004();
      v44 = v58;
      (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
      sub_219BF1854();
      swift_unknownObjectRelease();
      sub_218817794(v44, sub_2186FE720);
      sub_218817794(v17, sub_218D7A90C);
      sub_218817794(v20, sub_218D7A940);
      sub_218817794(v23, sub_218D7A974);
      sub_218817794(v26, sub_2186DCF58);
      v45 = v34;
      v47 = v56;
      v46 = v57;
      v56(v45, v57);
      v63 = sub_219BF2744();
      v47(v36, v46);
      sub_2186E3594();
      v49 = v48;
      v50 = v71;
      v58 = sub_219BEDCB4();
      sub_219BEDCC4();
      v51 = v62;
      sub_219BEDD14();
      (*(v59 + 16))(v66, v51 + *(v61 + 28), v60);
      sub_218817794(v51, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
      type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
      sub_2186E3B14();
      sub_219BEE9B4();
      sub_219BEE984();
      sub_219BEE9D4();
      type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
      sub_2186F9254(0, &qword_280E91830, MEMORY[0x277D32318]);
      sub_219BEEC84();
      v55 = MEMORY[0x277D84F90];
      v52 = v65;
      sub_219BED834();
      v53 = v72;
      (*(*(v49 - 8) + 16))(v72, v50, v49);
      v54 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
      (*(v67 + 32))(v53 + *(v54 + 20), v52, v68);
      type metadata accessor for MagazineFeedGroup();
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v38);
    goto LABEL_7;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21974F850()
{
  type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_21974D8BC(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_21974F944(uint64_t a1)
{
  v24 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v6;
  v23 = sub_219BF0BD4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4D64(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33F90];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FB0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v23);
  if (v25 == 1)
  {
    v16 = v21;
    v14(v21, *MEMORY[0x277D33F98], v1);
    v17 = v20;
    sub_2194995E4(v20, v16);
    (*(v22 + 8))(v17, v1);
  }

  return v26;
}

uint64_t sub_21974FC80()
{
  sub_2186E4D64(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21974FD00@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E3594();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000000;
  return result;
}

uint64_t sub_21974FD78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  a2[4] = sub_21974D8BC(&qword_280E99B40, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  a2[5] = sub_21974D8BC(&qword_280E99B48, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21975040C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
}

uint64_t sub_21974FE40()
{
  sub_2186E3594();

  return sub_219BEDCA4();
}

uint64_t sub_21974FE6C@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4D64(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E3594();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218817794(inited + 32, sub_2188317B0);
  sub_219750474(0);
  a1[3] = v5;
  a1[4] = sub_21974D8BC(&qword_280EE7618, sub_219750474);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21974FFF0()
{
  sub_21974D8BC(&qword_280E97500, type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2197501C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219750228(_OWORD *a1)
{
  v3 = *(type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21974DFF4(v4, v8);
}

uint64_t sub_21975040C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219750754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_21875FD34(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_218AB5BE8(a1, v18 - v8);
  v10 = sub_219BF5BF4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2187605DC(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_219BF5B44();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_219BF5BE4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_219750948(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_2197509E4(a1);
}

uint64_t sub_2197509E4(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_219BE1814();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_219BE1924();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_219BE1804();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219750B68, 0, 0);
}

uint64_t sub_219750B68()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[17] = __swift_project_value_buffer(v1, qword_280F62730);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) fetching user consent state", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BE18B4();
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_219750CD0;
  v6 = v0[16];

  return MEMORY[0x2821D0EC8](v6);
}

uint64_t sub_219750CD0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_219750FD8;
  }

  else
  {
    v3 = sub_219750E38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219750E38()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_219BE17F4();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D6C400])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277D6C410])
  {
    v5 = 3;
  }

  else
  {
    if (v4 != *MEMORY[0x277D6C408])
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
LABEL_2:
      v5 = 1;
      goto LABEL_7;
    }

    v5 = 2;
  }

LABEL_7:
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[6];
  *v10 = v5;
  type metadata accessor for SportsSyncSetting();
  sub_219BE17E4();
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  *(v10 + 8) = 0;

  v12 = v0[1];

  return v12();
}

uint64_t sub_219750FD8()
{
  v13 = v0;
  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) failed to fetch user consent state, error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_219751174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE1804();
  v3[2] = v5;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_219751280;

  return sub_219751474(v6, a3);
}

uint64_t sub_219751280()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_219751410;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v3 = sub_2197513AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2197513AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219751410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219751474(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_219BE17D4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_219BE1924();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for SportsSyncSetting();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197515D4, 0, 0);
}

uint64_t sub_2197515D4()
{
  v22 = v0;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[7];
  v3 = sub_219BE5434();
  v0[17] = __swift_project_value_buffer(v3, qword_280F62730);
  sub_21975588C(v2, v1, type metadata accessor for SportsSyncSetting);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v10 = FCSportsSyncState.description.getter(*v7);
    v12 = v11;
    sub_2197558F4(v7, type metadata accessor for SportsSyncSetting);
    v13 = sub_2186D1058(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2186C1000, v4, v5, "Service(V2) set sports favorites user consent state to '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {

    sub_2197558F4(v7, type metadata accessor for SportsSyncSetting);
  }

  v14 = v0[15];
  v15 = v0[10];
  v16 = v0[7];
  sub_219BE18B4();
  sub_21975588C(v16, v14, type metadata accessor for SportsSyncSetting);
  sub_219754CFC(v14, v15);
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_2197519DC;
  v18 = v0[10];
  v19 = v0[6];

  return MEMORY[0x2821D0ED8](v19, v18);
}

uint64_t sub_2197519DC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  (*(v2[9] + 8))(v2[10], v2[8]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_219751D7C;
  }

  else
  {
    v6 = sub_219751BA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219751BA0()
{
  v14 = v0;
  sub_21975588C(v0[7], v0[14], type metadata accessor for SportsSyncSetting);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = FCSportsSyncState.description.getter(*v4);
    v9 = v8;
    sub_2197558F4(v4, type metadata accessor for SportsSyncSetting);
    v10 = sub_2186D1058(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2186C1000, v1, v2, "Service(V2) successfully set sports favorites user consent state to '%{public}s'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {

    sub_2197558F4(v4, type metadata accessor for SportsSyncSetting);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_219751D7C()
{
  v13 = v0;
  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) failed to set sports favorites user consent state, error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_219751F1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219751FB8(a1);
}

uint64_t sub_219751FB8(uint64_t a1)
{
  v1[7] = a1;
  type metadata accessor for SportsSyncFavoritesFetchResult();
  v1[8] = swift_task_alloc();
  v2 = sub_219BE1894();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_219BE1924();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_219BE1914();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219752168, 0, 0);
}

uint64_t sub_219752168()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280F62730);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) syncing favorites", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  *(v0 + 160) = CACurrentMediaTime();
  sub_219BE18B4();
  *(v0 + 40) = MEMORY[0x277D84F90];
  sub_2197557AC();
  sub_21875FD34(0, &qword_27CC1EB00, MEMORY[0x277D6C438], MEMORY[0x277D83940]);
  sub_219755804();
  sub_219BF7164();
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_219752364;
  v6 = *(v0 + 144);
  v7 = *(v0 + 88);

  return MEMORY[0x2821D0EF8](v6, v7);
}

uint64_t sub_219752364()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  (*(v2[10] + 8))(v2[11], v2[9]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2197527AC;
  }

  else
  {
    v6 = sub_219752528;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219752528()
{
  v24 = v0;
  v1 = v0[17];
  v3 = v0[7];
  v2 = v0[8];
  (*(v0[16] + 16))(v1, v0[18], v0[15]);
  sub_219754A50(v1, v3);
  sub_21975588C(v3, v2, type metadata accessor for SportsSyncFavoritesFetchResult);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v22 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 134349314;
    sub_219BF5CD4();
    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = MEMORY[0x21CECC6D0](*v8, MEMORY[0x277D837D0]);
    v14 = v13;
    sub_2197558F4(v8, type metadata accessor for SportsSyncFavoritesFetchResult);
    v15 = sub_2186D1058(v12, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_2186C1000, v4, v5, "Service(V2) syncing favorites successful, visible duration=%{public}f, umcIDs=%{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v16 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[8];

    sub_2197558F4(v19, type metadata accessor for SportsSyncFavoritesFetchResult);
    (*(v18 + 8))(v16, v17);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_2197527AC()
{
  v14 = v0;
  v1 = *(v0 + 176);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) syncing favorites failed, error=%{public}s, visible duration=%{public}f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

char *sub_219752974(void *a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v3 = (*a1 + 40);
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

      if (*(sub_219BF46F4() + 16))
      {
        sub_21870F700(v7, v6);
        v9 = v8;

        if (v9)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_218840D24(0, *(v5 + 2) + 1, 1, v5);
          }

          v11 = *(v5 + 2);
          v10 = *(v5 + 3);
          if (v11 >= v10 >> 1)
          {
            v5 = sub_218840D24((v10 > 1), v11 + 1, 1, v5);
          }

          *(v5 + 2) = v11 + 1;
          v12 = &v5[16 * v11];
LABEL_20:
          *(v12 + 4) = v7;
          *(v12 + 5) = v6;
          goto LABEL_4;
        }
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      if (*(sub_219BF4704() + 16))
      {
        sub_21870F700(v7, v6);
        if (v13)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
          }

          v15 = *(v4 + 2);
          v14 = *(v4 + 3);
          if (v15 >= v14 >> 1)
          {
            v4 = sub_218840D24((v14 > 1), v15 + 1, 1, v4);
          }

          *(v4 + 2) = v15 + 1;
          v12 = &v4[16 * v15];
          goto LABEL_20;
        }
      }

LABEL_4:
      v3 += 2;
      if (!--v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_219752B78(void *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v4 - 1);
      v7 = *v4;
      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

      if (*(sub_219BF46F4() + 16))
      {
        sub_21870F700(v8, v7);
        v10 = v9;

        if (v10)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_218840D24(0, *(v6 + 2) + 1, 1, v6);
          }

          v12 = *(v6 + 2);
          v11 = *(v6 + 3);
          if (v12 >= v11 >> 1)
          {
            v6 = sub_218840D24((v11 > 1), v12 + 1, 1, v6);
          }

          *(v6 + 2) = v12 + 1;
          v13 = &v6[16 * v12];
LABEL_20:
          *(v13 + 4) = v8;
          *(v13 + 5) = v7;
          goto LABEL_4;
        }
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      if (*(sub_219BF4704() + 16))
      {
        sub_21870F700(v8, v7);
        if (v14)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_218840D24(0, *(v5 + 2) + 1, 1, v5);
          }

          v16 = *(v5 + 2);
          v15 = *(v5 + 3);
          if (v16 >= v15 >> 1)
          {
            v5 = sub_218840D24((v15 > 1), v16 + 1, 1, v5);
          }

          *(v5 + 2) = v16 + 1;
          v13 = &v5[16 * v16];
          goto LABEL_20;
        }
      }

LABEL_4:
      v4 += 2;
      if (!--v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_219752D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_219752DA4, 0, 0);
}

uint64_t sub_219752DA4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_219752E9C;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v5, v6, v7, 0, 0, &unk_219CA1530, v2, v8);
}

uint64_t sub_219752E9C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219752FD8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219752FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21975303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  sub_21875FD34(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219753104, 0, 0);
}

uint64_t sub_219753104()
{
  v1 = v0[3];
  v2 = v0[4];
  if (*(v1 + 16) || *(v2 + 16))
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = sub_219BF5BF4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v2;

    sub_219750754(v3, &unk_219CA1540, v6);
    sub_2187605DC(v3);
  }

  v7 = v0[6];
  v8 = v0[7];
  if (*(v7 + 16) || *(v8 + 16))
  {
    v9 = v0[8];
    v10 = v0[5];
    v11 = sub_219BF5BF4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v7;
    v12[6] = v8;

    sub_219750754(v9, &unk_219CA1550, v12);
    sub_2187605DC(v9);
  }

  v13 = swift_task_alloc();
  v0[9] = v13;
  sub_2197556A4();
  *v13 = v0;
  v13[1] = sub_21975334C;

  return MEMORY[0x2822004D0](v0 + 11, 0, 0, v14);
}

uint64_t sub_21975334C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_219752FD8;
  }

  else
  {
    v2 = sub_219753460;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219753460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2197534C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_219BE1914();
  v6[2] = v9;
  v6[3] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_2197535D8;

  return sub_219753704(v10, a5, a6);
}

uint64_t sub_2197535D8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_219755B3C;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v3 = sub_219755B38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219753704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_219BE1924();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197537C8, 0, 0);
}

uint64_t sub_2197537C8()
{
  v28 = v0;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_280F62730);

  v2 = sub_219BE5414();
  v3 = sub_219BF6214();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446466;
    v8 = MEMORY[0x277D837D0];
    v9 = MEMORY[0x21CECC6D0](v5, MEMORY[0x277D837D0]);
    v11 = sub_2186D1058(v9, v10, &v27);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = MEMORY[0x21CECC6D0](v4, v8);
    v14 = sub_2186D1058(v12, v13, &v27);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) syncing added favorites, team ids=%{public}s, league ids=%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  *(v0 + 104) = CACurrentMediaTime();
  sub_219BE18B4();
  sub_21875FD34(0, &qword_27CC1EAF0, MEMORY[0x277D6C468], MEMORY[0x277D84560]);
  v17 = sub_219BE18E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v0 + 112) = v21;
  *(v21 + 16) = xmmword_219C09EC0;
  v22 = (v21 + v20);
  *v22 = v15;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277D6C458], v17);
  *(v22 + v19) = v16;
  v23((v22 + v19), *MEMORY[0x277D6C460], v17);

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_219753B44;
  v25 = *(v0 + 48);

  return MEMORY[0x2821D0EF0](v25, v21);
}

uint64_t sub_219753B44()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  if (v0)
  {
    v3 = sub_219753DC0;
  }

  else
  {
    v3 = sub_219753CC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219753CC8()
{
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    sub_219BF5CD4();
    *(v3 + 4) = v4;
    _os_log_impl(&dword_2186C1000, v1, v2, "Service(V2) sync added favorites updated successfully, visible duration=%{public}f", v3, 0xCu);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_219753DC0()
{
  v14 = v0;
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) sync added favorites resulted in error=%{public}s, visible duration=%{public}f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_219753F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_219BE1914();
  v6[2] = v9;
  v6[3] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_2197535D8;

  return sub_219754070(v10, a5, a6);
}

uint64_t sub_219754070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_219BE1924();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219754134, 0, 0);
}

uint64_t sub_219754134()
{
  v28 = v0;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_280F62730);

  v2 = sub_219BE5414();
  v3 = sub_219BF6214();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446466;
    v8 = MEMORY[0x277D837D0];
    v9 = MEMORY[0x21CECC6D0](v5, MEMORY[0x277D837D0]);
    v11 = sub_2186D1058(v9, v10, &v27);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = MEMORY[0x21CECC6D0](v4, v8);
    v14 = sub_2186D1058(v12, v13, &v27);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2186C1000, v2, v3, "Service(V2) syncing removed favorites, team ids=%{public}s, league ids=%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  *(v0 + 104) = CACurrentMediaTime();
  sub_219BE18B4();
  sub_21875FD34(0, &qword_27CC1EAF0, MEMORY[0x277D6C468], MEMORY[0x277D84560]);
  v17 = sub_219BE18E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v0 + 112) = v21;
  *(v21 + 16) = xmmword_219C09EC0;
  v22 = (v21 + v20);
  *v22 = v15;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277D6C458], v17);
  *(v22 + v19) = v16;
  v23((v22 + v19), *MEMORY[0x277D6C460], v17);

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_2197544B0;
  v25 = *(v0 + 48);

  return MEMORY[0x2821D0F08](v25, v21);
}

uint64_t sub_2197544B0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  if (v0)
  {
    v3 = sub_21975472C;
  }

  else
  {
    v3 = sub_219754634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219754634()
{
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    sub_219BF5CD4();
    *(v3 + 4) = v4;
    _os_log_impl(&dword_2186C1000, v1, v2, "Service(V2) sync removed favorites successfully, visible duration=%f", v3, 0xCu);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21975472C()
{
  v14 = v0;
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    sub_219BF5CD4();
    *(v5 + 14) = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Service(V2) sync removed favorites resulted in error=%{public}s, visible duration=%{public}f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2197548C8(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v11 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v1 = &v11;
        sub_219BF73E4();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  v1[2] = v8;
}

uint64_t sub_219754A50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = sub_219BE18D4();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1904();
  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

    v9 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_4:
      v30 = a2;
      v31 = a1;
      v36 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v12, 0);
      v13 = v36;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = *(v14 + 64);
      v29 = v9;
      v17 = v9 + ((v16 + 32) & ~v16);
      v32 = *(v14 + 56);
      v33 = v15;
      v18 = (v14 - 8);
      do
      {
        v20 = v34;
        v19 = v35;
        v21 = v14;
        v33(v34, v17, v35);
        v22 = sub_219BE18C4();
        v24 = v23;
        (*v18)(v20, v19);
        v36 = v13;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), v26 + 1, 1);
          v13 = v36;
        }

        *(v13 + 16) = v26 + 1;
        v27 = v13 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v17 += v32;
        --v12;
        v14 = v21;
      }

      while (v12);

      a2 = v30;
      a1 = v31;
      goto LABEL_11;
    }

LABEL_10:

    v13 = MEMORY[0x277D84F90];
LABEL_11:
    *a2 = v13;
    type metadata accessor for SportsSyncFavoritesFetchResult();
    sub_219BE18F4();
    v28 = sub_219BE1914();
    return (*(*(v28 - 8) + 8))(a1, v28);
  }

  v9 = sub_21947D66C(*(v6 + 16), 0);
  v10 = sub_2194ACA08(&v36, (v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v8, v7);
  result = sub_21892DE98();
  if (v10 == v8)
  {
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_219754CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_219BE1814();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = sub_219BE17D4();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v26 = a1;
  v28 = &v39 - v27;
  v29 = *v26;
  v30 = *v26 >= 2;
  v31 = *v26 == 2;
  v40 = v32;
  v41 = v25;
  if (v30)
  {
    v33 = v3;
    v34 = v43;
    v35 = v26;
    if (v31)
    {
      (*(v4 + 104))(v12, *MEMORY[0x277D6C408], v33);
      sub_219BE17C4();
      result = sub_2197558F4(v35, type metadata accessor for SportsSyncSetting);
      if (v34)
      {
        return result;
      }

      v21 = v24;
    }

    else if (v29 == 3)
    {
      (*(v4 + 104))(v14, *MEMORY[0x277D6C410], v33);
      sub_219BE17C4();
      result = sub_2197558F4(v35, type metadata accessor for SportsSyncSetting);
      if (v34)
      {
        return result;
      }

      v21 = v28;
    }

    else
    {
      (*(v4 + 104))(v39, *MEMORY[0x277D6C400], v33);
      sub_219BE17C4();
      result = sub_2197558F4(v35, type metadata accessor for SportsSyncSetting);
      if (v34)
      {
        return result;
      }

      v21 = v18;
    }

    return (*(v40 + 32))(v42, v21, v41);
  }

  v36 = v26;
  (*(v4 + 104))(v9, *MEMORY[0x277D6C400], v3);
  v37 = v43;
  sub_219BE17C4();
  result = sub_2197558F4(v36, type metadata accessor for SportsSyncSetting);
  if (!v37)
  {
    return (*(v40 + 32))(v42, v21, v41);
  }

  return result;
}

uint64_t sub_2197550F4(uint64_t a1)
{
  v3 = type metadata accessor for SportsSyncSetting();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_21879D924();
  sub_21975588C(a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsSyncSetting);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  sub_219755954(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  return sub_219BE2F54();
}

uint64_t sub_219755258(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21875FD34(0, a3, a4, MEMORY[0x277D6CF30]);

  return sub_219BE2F54();
}

uint64_t sub_2197552C4(void *a1)
{
  v3 = *v1;
  v4 = sub_219752974(a1);
  v6 = v5;
  v7 = sub_219752B78(a1);
  v9 = v8;
  sub_21879D924();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v6;
  v10[4] = v3;
  v10[5] = v7;
  v10[6] = v9;

  return sub_219BE2F54();
}

uint64_t sub_219755374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219752D7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21975543C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2187609C8;

  return sub_21975303C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_219755514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_2197534C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2197555DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219753F5C(a1, v4, v5, v6, v7, v8);
}

void sub_2197556A4()
{
  if (!qword_280E8EA48)
  {
    sub_218A450F0();
    v0 = sub_219BF5C74();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA48);
    }
  }
}

uint64_t sub_219755710(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219751F1C(a1);
}

unint64_t sub_2197557AC()
{
  result = qword_27CC1EAF8;
  if (!qword_27CC1EAF8)
  {
    sub_219BE1894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EAF8);
  }

  return result;
}

unint64_t sub_219755804()
{
  result = qword_27CC1EB08;
  if (!qword_27CC1EB08)
  {
    sub_21875FD34(255, &qword_27CC1EB00, MEMORY[0x277D6C438], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB08);
  }

  return result;
}

uint64_t sub_21975588C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197558F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219755954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSyncSetting();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197559B8(uint64_t a1)
{
  v4 = *(type metadata accessor for SportsSyncSetting() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_219751174(a1, v6, v1 + v5);
}

uint64_t sub_219755A9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_219750948(a1);
}

uint64_t sub_219755B40(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 32) appConfiguration];
  sub_2186E5BB8(0, &qword_27CC19D10, type metadata accessor for RecipeBoxFeedConfigFetchResult, MEMORY[0x277D6CF30]);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_219BE2F54();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;

  swift_unknownObjectRetain();
  v8 = sub_219BE2E54();
  type metadata accessor for RecipeBoxFeedServiceConfig();
  v9 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_219755CA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_219755D60(a1);
}

uint64_t sub_219755D60(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  sub_2186E5BB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v2[7] = swift_task_alloc();
  v3 = sub_219BDB954();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219755EA4, 0, 0);
}

uint64_t sub_219755EA4()
{
  if (qword_27CC080D0 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    if (qword_27CC080C8 != -1)
    {
      swift_once();
    }

    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    sub_2187147DC(&qword_27CC1EB18, v1, type metadata accessor for RecipeBoxFeedServiceConfigFetcher);
    sub_219BDC7D4();
    sub_219BDB914();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_218838478(v0[7]);
      sub_2197567D4();
      swift_allocError();
      swift_willThrow();

      v5 = v0[1];

      return v5();
    }

    else
    {
      v9 = v0[5];
      (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
      __swift_project_boxed_opaque_existential_1((v9 + 40), *(v9 + 64));
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = sub_219756194;
      v11 = v0[10];
      v12 = v0[4];

      return sub_219012AA4(v12, v11);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64));
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_2197563B8;
    v8 = v0[4];

    return sub_219012084(v8);
  }
}

uint64_t sub_219756194()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219756330;
  }

  else
  {
    v2 = sub_2197562A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197562A8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219756330()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2197563B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_2197564EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecipeBoxFeedContentConfig();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219756770(a1, v16);
  v17 = *(a1 + *(type metadata accessor for RecipeBoxFeedConfigFetchResult() + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_219756770(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[8]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_21913B308(v16);
  result = v20;
  *&a5[v18[9]] = v20;
  return result;
}

uint64_t sub_219756770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedContentConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197567D4()
{
  result = qword_27CC1EB20;
  if (!qword_27CC1EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB20);
  }

  return result;
}

unint64_t sub_21975683C()
{
  result = qword_27CC1EB30;
  if (!qword_27CC1EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB30);
  }

  return result;
}

uint64_t sub_219756890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D31490])
  {
    v9 = MEMORY[0x277D2D8D8];
LABEL_36:
    v16 = *v9;
    v17 = sub_219BDF134();
    v18 = *(*(v17 - 8) + 104);
    v19 = a1;
    v20 = v16;
    return v18(v19, v20, v17);
  }

  if (v8 == *MEMORY[0x277D314B8] || v8 == *MEMORY[0x277D314E0] || v8 == *MEMORY[0x277D31480] || v8 == *MEMORY[0x277D314C0] || v8 == *MEMORY[0x277D31498] || v8 == *MEMORY[0x277D314A0] || v8 == *MEMORY[0x277D314A8])
  {
    v9 = MEMORY[0x277D2D8F0];
    goto LABEL_36;
  }

  if (v8 == *MEMORY[0x277D314B0] || v8 == *MEMORY[0x277D314F0] || v8 == *MEMORY[0x277D31468] || v8 == *MEMORY[0x277D31470] || v8 == *MEMORY[0x277D31478] || v8 == *MEMORY[0x277D314E8] || v8 == *MEMORY[0x277D314C8] || v8 == *MEMORY[0x277D314D0] || v8 == *MEMORY[0x277D314D8])
  {
    v9 = MEMORY[0x277D2D8E8];
    goto LABEL_36;
  }

  if (v8 == *MEMORY[0x277D314F8])
  {
    v9 = MEMORY[0x277D2D8E0];
    goto LABEL_36;
  }

  v22 = *MEMORY[0x277D31460];
  v23 = v8;
  v17 = sub_219BDF134();
  v18 = *(*(v17 - 8) + 104);
  if (v23 != v22 && v23 != *MEMORY[0x277D31450] && v23 != *MEMORY[0x277D31458] && v23 != *MEMORY[0x277D31508] && v23 != *MEMORY[0x277D31538] && v23 != *MEMORY[0x277D31500] && v23 != *MEMORY[0x277D31520] && v23 != *MEMORY[0x277D31530] && v23 != *MEMORY[0x277D31518] && v23 != *MEMORY[0x277D31548] && v23 != *MEMORY[0x277D31510] && v23 != *MEMORY[0x277D31528] && v23 != *MEMORY[0x277D31540])
  {
    v18(a1, *MEMORY[0x277D2D8E8], v17);
    return (*(v5 + 8))(v7, v4);
  }

  v20 = *MEMORY[0x277D2D8F0];
  v19 = a1;
  return v18(v19, v20, v17);
}

id sub_219756CB8(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BDCAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 > 5)
  {
    v10 = *(v1 + 16);
    v11 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
    v12 = [v10 scaledFontForFont:v11 maximumPointSize:48.0];

    return v12;
  }

  else
  {
    sub_219BF0CD4();
    v7 = [*(v1 + 16) scaledFontForFont:*(v1 + 40) maximumPointSize:48.0];
    (*(v4 + 104))(v6, *MEMORY[0x277D6D198], v3);
    v8 = sub_219BF0CB4();

    (*(v4 + 8))(v6, v3);
    return v8;
  }
}

id sub_219756E68(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BDCAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 > 5)
  {
    v12 = *(v1 + 24);
    v13 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x277D74418]];
    v14 = [v12 scaledFontForFont_];

    return v14;
  }

  else
  {
    sub_219BF0CD4();
    v7 = *(v1 + 24);
    v8 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
    v9 = [v7 scaledFontForFont_];

    (*(v4 + 104))(v6, *MEMORY[0x277D6D198], v3);
    v10 = sub_219BF0CB4();

    (*(v4 + 8))(v6, v3);
    return v10;
  }
}

uint64_t sub_21975704C()
{

  return swift_deallocClassInstance();
}

void sub_2197570C0(unsigned __int8 a1, void *a2)
{
  if (a1 > 5u)
  {
    v4 = objc_opt_self();
    v5 = &selRef_clearColor;
  }

  else
  {
    v3 = sub_219BED0C4();
    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
    if (v3)
    {
      v5 = &selRef_clearColor;
    }
  }

  v6 = [v4 *v5];
  [a2 setBackgroundColor_];
}

uint64_t sub_219757174(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_219758298(v6);
  return sub_219BF73E4();
}

uint64_t SportsNavigationTitleStringBuilder.sportsNavigationTitle(for:)(uint64_t a1, uint64_t a2)
{
  sub_219BF29D4();
  sub_219BE3204();
  sub_21975777C(v2, &v13);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v14;
  *(v5 + 32) = v13;
  *(v5 + 48) = v6;
  *(v5 + 64) = v15;
  *(v5 + 80) = v16;

  v7 = sub_219BE2E54();
  sub_2197593C0(0, &qword_280E8EC90, sub_2186D85DC, MEMORY[0x277D83940]);
  sub_219BE2F64();

  sub_21975777C(v2, &v13);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = v14;
  *(v8 + 32) = v13;
  *(v8 + 48) = v9;
  *(v8 + 64) = v15;
  *(v8 + 80) = v16;

  v10 = sub_219BE2E54();
  v11 = sub_219BE2F74();

  return v11;
}

uint64_t sub_2197573C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_219BF34F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197593C0(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = *a1;
  sub_219BF29A4();
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_21927C08C(v15);
    sub_21975936C();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v34[3] = a4;
    v18 = sub_219BF34A4();
    v19 = *(v10 + 8);
    v38 = v10 + 8;
    v37 = v19;
    v19(v15, v9);
    v20 = *(v18 + 16);
    if (v20)
    {
      v34[1] = v18;
      v34[2] = v4;
      v22 = *(v10 + 16);
      v21 = v10 + 16;
      v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v35 = *(v21 + 56);
      v36 = v22;
      v24 = MEMORY[0x277D84F90];
      v34[4] = v21;
      v22(v12, v23, v9);
      while (1)
      {
        v26 = sub_219BF34D4();
        v28 = v27;
        v37(v12, v9);
        if (v28)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_218840D24(0, *(v24 + 2) + 1, 1, v24);
          }

          v30 = *(v24 + 2);
          v29 = *(v24 + 3);
          if (v30 >= v29 >> 1)
          {
            v24 = sub_218840D24((v29 > 1), v30 + 1, 1, v24);
          }

          *(v24 + 2) = v30 + 1;
          v25 = &v24[16 * v30];
          *(v25 + 4) = v26;
          *(v25 + 5) = v28;
        }

        v23 += v35;
        if (!--v20)
        {
          break;
        }

        v36(v12, v23, v9);
      }
    }

    v31 = off_282A4D758;
    type metadata accessor for TagService();
    v31();

    v32 = sub_219BE2E54();
    sub_2186D85DC();
    sub_21926C200();
    v16 = sub_219BE30C4();
  }

  return v16;
}

uint64_t sub_2197577D4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Swift::String *a4@<X8>)
{
  v7._rawValue = *a1;
  if (v7._rawValue >> 62)
  {
    rawValue = v7._rawValue;
    v11 = sub_219BF7214();
    v7._rawValue = rawValue;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else if (*((v7._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = SportsNavigationTitleStringBuilder.sportsNavigationTitle(for:)(v7);
    result = v9._countAndFlagsBits;
    *a4 = v9;
    return result;
  }

  sub_21975936C();
  swift_allocError();
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = 1;
  swift_willThrow();
}

Swift::String __swiftcall SportsNavigationTitleStringBuilder.sportsNavigationTitle(for:)(Swift::OpaquePointer a1)
{
  sub_219759240(0, &unk_27CC1EB40, MEMORY[0x277CC8B18]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v46 - v4;
  sub_219759240(0, &qword_27CC1EB60, MEMORY[0x277CC8AF8]);
  v7 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - v8;
  sub_219759220(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v57 = sub_219759134(v14, sub_2194B7E58, sub_218A33EA0);
  sub_219757174(&v57);
  v48 = 0;
  v15 = v57;
  v54 = v11;
  v55 = v10;
  v52 = v7;
  v53 = v5;
  v51 = v13;
  if (v57 < 0 || (v57 & 0x4000000000000000) != 0)
  {
    v16 = sub_219BF7214();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_17:

    v18 = MEMORY[0x277D84F90];
    v29 = v2;
    goto LABEL_18;
  }

  v16 = *(v57 + 16);
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_4:
  v57 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);

    __break(1u);
    goto LABEL_24;
  }

  v46 = v3;
  v47 = v2;
  v17 = 0;
  v18 = v57;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x21CECE0F0](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
      swift_unknownObjectRetain();
    }

    v20 = [v19 sportsTypePluralizedDisplayName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_219BF5414();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      [v19 sportsType];
      v22 = sub_219757ECC();
      v24 = v25;
      swift_unknownObjectRelease();
    }

    v57 = v18;
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_21870B65C((v26 > 1), v27 + 1, 1);
      v18 = v57;
    }

    ++v17;
    *(v18 + 16) = v27 + 1;
    v28 = v18 + 16 * v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = v24;
  }

  while (v16 != v17);

  v3 = v46;
  v29 = v47;
LABEL_18:
  v57 = v18;
  sub_2186D0BA8();
  sub_2197591D8(&qword_280E8EDE0, sub_2186D0BA8);
  v30 = sub_219BF56E4();

  v56 = v30;
  v32 = v49;
  v31 = v50;
  v33 = v52;
  (*(v50 + 104))(v49, *MEMORY[0x277CC8AF0], v52);
  v34 = v53;
  (*(v3 + 104))(v53, *MEMORY[0x277CC8B00], v29);
  v35 = v51;
  sub_219BDAF84();
  (*(v3 + 8))(v34, v29);
  (*(v31 + 8))(v32, v33);
  sub_2197591D8(&qword_27CC1EB70, sub_219759220);
  v36 = v55;
  sub_219BF5684();
  (*(v54 + 8))(v35, v36);

  v37 = v57;
  v38 = v58;
  v39 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v39 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_219BDB5E4();
    v44 = v43;

    v37 = v42;
    v38 = v44;
  }

LABEL_24:
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t sub_219757ECC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219758298(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
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
        sub_2186D85DC();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2197584CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_21975839C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21975839C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v18 = a3;
    v7 = *(v4 + 8 * a3);
    v16 = v6;
    v17 = v5;
    while (1)
    {
      v8 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 sportsType] - 1;
      if (v9 > 0xA)
      {
        v10 = -1;
      }

      else
      {
        v10 = qword_219CA18F8[v9];
      }

      v11 = [v8 sportsType] - 1;
      if (v11 > 0xA)
      {
        v12 = -1;
      }

      else
      {
        v12 = qword_219CA18F8[v11];
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v12 >= v10)
      {
LABEL_4:
        a3 = v18 + 1;
        v5 = v17 + 8;
        v6 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v13;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2197584CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v101 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v8 = *v101;
    if (!*v101)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_140:
      result = sub_218C81048(v4);
    }

    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v92 = *(result + 16 * v4);
        v93 = result;
        v94 = *(result + 16 * (v4 - 1) + 40);
        sub_219758C38((*a3 + 8 * v92), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v94), v8);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (v4 - 2 >= *(v93 + 2))
        {
          goto LABEL_134;
        }

        v95 = &v93[16 * v4];
        *v95 = v92;
        *(v95 + 1) = v94;
        sub_218C80FBC(v4 - 1);
        result = v93;
        v4 = *(v93 + 2);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v96 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v106 = v9;
    if (v8 + 1 >= v7)
    {
      goto LABEL_31;
    }

    v12 = *a3;
    ++v8;
    v13 = *(*a3 + 8 * v11);
    v14 = *(*a3 + 8 * v10);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v13 sportsType];
    if ((v15 - 1) > 0xA)
    {
      v16 = -1;
    }

    else
    {
      v16 = qword_219CA18F8[(v15 - 1)];
    }

    v104 = v16;
    v17 = [v14 sportsType];
    v97 = v6;
    if ((v17 - 1) > 0xA)
    {
      v18 = -1;
    }

    else
    {
      v18 = qword_219CA18F8[(v17 - 1)];
    }

    v103 = v18;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v99 = v10;
    v19 = 8 * v10;
    v20 = (v12 + v19 + 16);
    v21 = v19 + 8;
    v102 = v7;
    do
    {
      v6 = v11;
      v4 = v21;
      if (++v11 >= v7)
      {
        break;
      }

      v23 = *(v20 - 1);
      v24 = *v20;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v25 = [v24 sportsType];
      v26 = (v25 - 1) > 0xA ? -1 : qword_219CA18F8[(v25 - 1)];
      v27 = [v23 sportsType];
      v8 = (v27 - 1) <= 0xA ? qword_219CA18F8[(v27 - 1)] : -1;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v22 = (v103 < v104) ^ (v8 >= v26);
      ++v20;
      v21 = v4 + 8;
      v7 = v102;
    }

    while ((v22 & 1) != 0);
    if (v103 < v104)
    {
      v28 = v99;
      if (v11 < v99)
      {
        goto LABEL_137;
      }

      if (v99 >= v11)
      {
        v6 = v97;
        v10 = v99;
        goto LABEL_31;
      }

      do
      {
        if (v28 != v6)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v29 = *(v31 + v19);
          *(v31 + v19) = *(v31 + v4);
          *(v31 + v4) = v29;
        }

        ++v28;
        v4 -= 8;
        v19 += 8;
      }

      while (v28 < v6--);
    }

    v6 = v97;
    v10 = v99;
LABEL_31:
    v32 = a3[1];
    if (v11 < v32)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_136;
      }

      if (v11 - v10 < v96)
      {
        if (__OFADD__(v10, v96))
        {
          goto LABEL_138;
        }

        if (v10 + v96 >= v32)
        {
          v33 = a3[1];
        }

        else
        {
          v33 = v10 + v96;
        }

        if (v33 < v10)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v11 != v33)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v11 < v10)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v106;
    }

    else
    {
      result = sub_2191F6B60(0, *(v106 + 16) + 1, 1, v106);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v46 = *(v9 + 24);
    v47 = v4 + 1;
    if (v4 >= v46 >> 1)
    {
      result = sub_2191F6B60((v46 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v47;
    v48 = v9 + 16 * v4;
    *(v48 + 32) = v10;
    *(v48 + 40) = v11;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_145;
    }

    v8 = v11;
    if (v4)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 32);
          v52 = *(v9 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = (v9 + 16 * v47);
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = (v9 + 32 + 16 * v50);
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = (v9 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = v9 + 16 * v50;
        v82 = *(v80 + 32);
        v81 = *(v80 + 40);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v50 - 1;
        if (v50 - 1 >= v47)
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
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v88 = v9;
        v89 = *(v9 + 32 + 16 * v4);
        v90 = *(v9 + 32 + 16 * v50 + 8);
        sub_219758C38((*a3 + 8 * v89), (*a3 + 8 * *(v9 + 32 + 16 * v50)), (*a3 + 8 * v90), v49);
        if (v6)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_218C81048(v88);
        }

        if (v4 >= *(v88 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v88[16 * v4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_218C80FBC(v50);
        v9 = v88;
        v47 = *(v88 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = v9 + 32 + 16 * v47;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = (v9 + 16 * v47);
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = (v9 + 32 + 16 * v50);
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v34 = v10;
  v35 = *a3;
  v36 = *a3 + 8 * v11 - 8;
  v98 = v6;
  v100 = v34;
  v4 = v34 - v11;
  v105 = v33;
LABEL_42:
  v108 = v11;
  v37 = *(v35 + 8 * v11);
  v38 = v4;
  v39 = v36;
  while (1)
  {
    v40 = *v39;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v41 = [v37 sportsType];
    if ((v41 - 1) > 0xA)
    {
      v8 = -1;
    }

    else
    {
      v8 = qword_219CA18F8[(v41 - 1)];
    }

    v42 = [v40 sportsType] - 1;
    if (v42 > 0xA)
    {
      v43 = -1;
    }

    else
    {
      v43 = qword_219CA18F8[v42];
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v43 >= v8)
    {
LABEL_41:
      v11 = v108 + 1;
      v36 += 8;
      --v4;
      if (v108 + 1 != v105)
      {
        goto LABEL_42;
      }

      v11 = v105;
      v6 = v98;
      v10 = v100;
      goto LABEL_55;
    }

    if (!v35)
    {
      break;
    }

    v44 = *v39;
    v37 = *(v39 + 8);
    *v39 = v37;
    *(v39 + 8) = v44;
    v39 -= 8;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
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

uint64_t sub_219758C38(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v36 = v4;
LABEL_33:
      v25 = v6 - 1;
      --v5;
      v26 = v14;
      v38 = v6 - 1;
      do
      {
        v27 = *--v26;
        v28 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v29 = [v27 sportsType];
        if ((v29 - 1) > 0xA)
        {
          v30 = -1;
        }

        else
        {
          v30 = qword_219CA18F8[(v29 - 1)];
        }

        v31 = v6;
        v32 = [v28 sportsType] - 1;
        if (v32 > 0xA)
        {
          v33 = -1;
        }

        else
        {
          v33 = qword_219CA18F8[v32];
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v34 = v5 + 1;
        if (v33 < v30)
        {
          if (v34 != v31)
          {
            *v5 = *v38;
          }

          v4 = v36;
          if (v14 <= v36 || (v6 = v38, v38 <= v7))
          {
            v6 = v38;
            goto LABEL_50;
          }

          goto LABEL_33;
        }

        v6 = v31;
        v25 = v38;
        if (v34 != v14)
        {
          *v5 = *v26;
        }

        --v5;
        v14 = v26;
        v4 = v36;
      }

      while (v26 > v36);
      v14 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v15 = &selRef_boldSystemFontOfSize_;
      v37 = &v4[v10];
      while (1)
      {
        v16 = *v6;
        v17 = *v4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 v15[234]] - 1;
        v19 = v18 > 0xA ? -1 : qword_219CA18F8[v18];
        v20 = v15;
        v21 = [v17 v15[234]] - 1;
        v22 = v21 > 0xA ? -1 : qword_219CA18F8[v21];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v22 >= v19)
        {
          break;
        }

        v23 = v6;
        v24 = v7 == v6++;
        v15 = v20;
        if (!v24)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v7;
        v14 = v37;
        if (v4 >= v37 || v6 >= v5)
        {
          goto LABEL_26;
        }
      }

      v23 = v4;
      v24 = v7 == v4++;
      v15 = v20;
      if (v24)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v7 = *v23;
      goto LABEL_24;
    }

LABEL_26:
    v6 = v7;
  }

LABEL_50:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_219759134(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_219BF7214();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2197591D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219759240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_219BDB094();
    sub_2186D0BA8();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_2197591D8(&unk_27CC1EB50, MEMORY[0x277CC8810]);
    v10[3] = sub_2197591D8(&qword_280E8EDE0, sub_2186D0BA8);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_21975936C()
{
  result = qword_27CC1EB78;
  if (!qword_27CC1EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EB78);
  }

  return result;
}

void sub_2197593C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2197594B8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDDC34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D2FC98] || v10 == *MEMORY[0x277D2FCA0] || v10 == *MEMORY[0x277D2FC88])
  {
    v13 = MEMORY[0x277D6CE70];
LABEL_14:
    v14 = *v13;
    v15 = sub_219BE2C74();
    return (*(*(v15 - 8) + 104))(a3, v14, v15);
  }

  if (v10 == *MEMORY[0x277D2FC90])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    a2(0);
    v13 = MEMORY[0x277D6CE68];
    goto LABEL_14;
  }

  v17 = *MEMORY[0x277D6CE70];
  v18 = sub_219BE2C74();
  (*(*(v18 - 8) + 104))(a3, v17, v18);
  return (*(v7 + 8))(v9, v6);
}

char *sub_21975990C(uint64_t a1)
{
  v54 = a1;
  sub_218954350();
  v57 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBF8();
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BC64(0);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BCA0(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  (*(v10 + 16))(&v49 - v20, v1, v9);
  v49 = v21;
  sub_21975AD40(v21, v19);
  (*(v10 + 32))(v12, v19, v9);
  sub_2186CC38C(&qword_280EE36E0, sub_218954408);
  sub_219BF56A4();
  sub_218B5B3A0();
  v23 = *(v22 + 36);
  v24 = sub_2186CC38C(&unk_280EE36D0, sub_218954408);
  sub_219BF5E84();
  if (*&v15[v23] == v59[0])
  {
    v25 = 0;
    v26 = MEMORY[0x277D84F90];
LABEL_20:
    v48 = *(v50 + 36);
    sub_218745C4C(v49, sub_21898BCA0);
    *&v15[v48] = v25;
    sub_218745C4C(v15, sub_21898BC64);
    return v26;
  }

  else
  {
    v27 = 0;
    v52 = (v3 + 32);
    v53 = (v3 + 16);
    v58 = MEMORY[0x277D84F90];
    while (1)
    {
      v29 = sub_219BF5EC4();
      v31 = v56;
      v30 = v57;
      (*v53)(v56);
      v29(v59, 0);
      sub_219BF5E94();
      v32 = *(v55 + 48);
      *v7 = v27;
      result = (*v52)(&v7[v32], v31, v30);
      v51 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v33 = v15;
      v34 = v24;
      v35 = v23;
      v36 = v9;
      v37 = sub_21975A860(v27, &v7[v32], v54);
      v38 = v7;
      sub_218745C4C(v7, sub_21898BBF8);
      v39 = *(v37 + 2);
      result = v58;
      v40 = *(v58 + 2);
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_22;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v58;
      if (!result || v41 > *(v58 + 3) >> 1)
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        result = sub_218840D24(result, v43, 1, v58);
        v42 = result;
      }

      v7 = v38;
      v9 = v36;
      v44 = *(v37 + 2);
      v23 = v35;
      v24 = v34;
      v58 = v42;
      if (v44)
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v39)
        {
          goto LABEL_24;
        }

        v15 = v33;
        swift_arrayInitWithCopy();

        if (v39)
        {
          v45 = *(v58 + 2);
          v46 = __OFADD__(v45, v39);
          v47 = v45 + v39;
          if (v46)
          {
            goto LABEL_25;
          }

          *(v58 + 2) = v47;
        }
      }

      else
      {

        v15 = v33;
        if (v39)
        {
          goto LABEL_23;
        }
      }

      sub_219BF5E84();
      ++v27;
      if (*&v15[v35] == v59[0])
      {
        v26 = v58;
        v25 = v51;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_219759E94()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218954408();
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218745C4C(v2, sub_21880702C);
  }

  type metadata accessor for TagFeedServiceConfig();
  sub_2186CC38C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_219759FB8()
{
  v65 = type metadata accessor for TagFeedModel(0);
  v1 = MEMORY[0x28223BE20](v65);
  v66 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v64 = v52 - v3;
  sub_21898BF70();
  v63 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C();
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5B3A0();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v20 = v19;
  (*(*(v19 - 8) + 16))(v18, v0, v19);
  v21 = *(v16 + 44);
  v22 = sub_2186CC38C(&unk_280EE36D0, sub_218954408);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v18[v21] != v67[0])
  {
    v54 = (v5 + 16);
    v55 = v12;
    v24 = (v5 + 8);
    v25 = (v13 + 16);
    v62 = v24;
    v57 = v7;
    v58 = v18;
    v52[2] = v22;
    v53 = v21;
    v52[1] = v20;
    v56 = (v13 + 8);
    do
    {
      v61 = sub_219BF5EC4();
      v26 = *v25;
      v27 = v59;
      v28 = v55;
      (*v25)(v59);
      v61(v67, 0);
      sub_219BF5E94();
      (v26)(v10, v27, v28);
      v29 = *(v60 + 36);
      sub_2186CC38C(&unk_280EE5850, sub_218954350);
      sub_219BF5DF4();
      v30 = v27;
      v31 = v57;
      (*v56)(v30, v28);
      sub_219BF5E84();
      v32 = v54;
      if (*&v10[v29] != v67[0])
      {
        while (2)
        {
          v36 = sub_219BF5EC4();
          v37 = v63;
          (*v32)(v31);
          v36(v67, 0);
          sub_219BF5E94();
          v38 = v64;
          sub_219BE5FC4();
          (*v62)(v31, v37);
          v39 = v66;
          sub_21975A78C(v38, v66);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
              v43 = v39;
              v45 = *(v44 + 48);
              v46 = sub_219BF1584();
              (*(*(v46 - 8) + 8))(v43 + v45, v46);
              v40 = type metadata accessor for TagFeedGapLocation;
              v41 = v43;
              goto LABEL_12;
            case 2u:
            case 3u:
            case 4u:
            case 5u:
            case 8u:
            case 9u:
            case 0xAu:
            case 0xBu:
            case 0xCu:
            case 0xDu:
            case 0xEu:
              v40 = type metadata accessor for TagFeedModel;
              v41 = v39;
LABEL_12:
              sub_218745C4C(v41, v40);
              goto LABEL_13;
            case 6u:
              v34 = type metadata accessor for TagFeedModel;
              v35 = v39;
              goto LABEL_8;
            case 7u:
              sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
              v47 = v39;
              v49 = *(v48 + 48);
              sub_2186F0E54();
              (*(*(v50 - 8) + 8))(v47 + v49, v50);
              sub_2186EAD48();
              (*(*(v51 - 8) + 8))(v47, v51);
LABEL_13:
              sub_218745C4C(v10, sub_21898C06C);
              v23 = 1;
              v18 = v58;
              goto LABEL_14;
            default:

              sub_21975A7F0(0, &qword_280E8F9F0, type metadata accessor for TagFeedGapLocation);
              v34 = type metadata accessor for TagFeedGapLocation;
              v35 = v39 + *(v33 + 48);
LABEL_8:
              sub_218745C4C(v35, v34);
              sub_219BF5E84();
              if (*&v10[v29] != v67[0])
              {
                continue;
              }

              goto LABEL_5;
          }
        }
      }

LABEL_5:
      sub_218745C4C(v10, sub_21898C06C);
      v18 = v58;
      sub_219BF5E84();
    }

    while (*&v18[v53] != v67[0]);
  }

  v23 = 0;
LABEL_14:
  sub_218745C4C(v18, sub_218B5B3A0);
  return v23;
}

uint64_t sub_21975A78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21975A7F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

char *sub_21975A860(uint64_t a1, char *a2, uint64_t a3)
{
  v40 = a2;
  v41 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v8 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C();
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (!*(a3 + 16))
    {
      return MEMORY[0x277D84F90];
    }

    v20 = sub_219BF7A94();
    v21 = -1 << *(a3 + 32);
    v22 = v20 & ~v21;
    if (((*(a3 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }

    v23 = ~v21;
    result = MEMORY[0x277D84F90];
    while (*(*(a3 + 48) + 8 * v22) != a1)
    {
      v22 = (v22 + 1) & v23;
      if (((*(a3 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        return result;
      }
    }
  }

  (*(v13 + 16))(v15, v40, v12);
  sub_2186CC38C(&unk_280EE5860, sub_218954350);
  sub_219BF56A4();
  v25 = *(v17 + 36);
  sub_2186CC38C(&unk_280EE5850, sub_218954350);
  sub_219BF5E84();
  if (*&v19[v25] == v42[0])
  {
    v40 = MEMORY[0x277D84F90];
  }

  else
  {
    v26 = (v39 + 16);
    v27 = (v39 + 8);
    v40 = MEMORY[0x277D84F90];
    do
    {
      v28 = sub_219BF5EC4();
      (*v26)(v10);
      v28(v42, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v29 = sub_219BE5B24();
        v38 = v30;
        v39 = v29;

        (*v27)(v10, v8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = v40;
        }

        else
        {
          v31 = sub_218840D24(0, *(v40 + 2) + 1, 1, v40);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v34 = (v33 + 1);
        if (v33 >= v32 >> 1)
        {
          v40 = (v33 + 1);
          v37 = sub_218840D24((v32 > 1), v33 + 1, 1, v31);
          v34 = v40;
          v31 = v37;
        }

        *(v31 + 2) = v34;
        v40 = v31;
        v35 = &v31[16 * v33];
        v36 = v38;
        *(v35 + 4) = v39;
        *(v35 + 5) = v36;
      }

      else
      {
        (*v27)(v10, v8);
        sub_218745C4C(v6, type metadata accessor for TagFeedModel);
      }

      sub_219BF5E84();
    }

    while (*&v19[v25] != v42[0]);
  }

  sub_218745C4C(v19, sub_21898C06C);
  return v40;
}

uint64_t sub_21975AD40(uint64_t a1, uint64_t a2)
{
  sub_21898BCA0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21975ADB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter()
{
  result = qword_280E955A0;
  if (!qword_280E955A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21975AE60()
{
  sub_21915A40C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C6148(319, &qword_280E8DE40);
      if (v2 <= 0x3F)
      {
        sub_2186D6710(319, &qword_280E8DC20);
        if (v3 <= 0x3F)
        {
          sub_2186C6148(319, &qword_280E8E370);
          if (v4 <= 0x3F)
          {
            sub_2186CFDE4(319, qword_280ECA990);
            if (v5 <= 0x3F)
            {
              sub_2186D6710(319, &qword_280E8DCA0);
              if (v6 <= 0x3F)
              {
                sub_2186CFDE4(319, &unk_280EE6148);
                if (v7 <= 0x3F)
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
}

uint64_t sub_21975AFDC()
{
  sub_21975EB30(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21975B05C(uint64_t a1)
{
  v3 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21975EAC8(v1, v6, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21975B924(v6, v8 + v7);
  v9 = sub_219BE2E54();
  sub_2186E330C();
  sub_219BE2F74();

  v10 = v19;
  sub_21975EAC8(v19, v6, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
  v11 = swift_allocObject();
  sub_21975B924(v6, v11 + v7);
  *(v11 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v12 = sub_219BE2E54();
  type metadata accessor for MagazineFeedGroup();
  sub_219BE2F74();

  v13 = sub_219BE2E54();
  sub_21975EA48(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21975EAC8(v10, v6, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_21975B924(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_21975B384@<X0>(unint64_t *a1@<X8>)
{
  sub_21915A40C();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000000;
  return result;
}

uint64_t sub_21975B3FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  a2[4] = sub_21975ADB8(&qword_280E96B40, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  a2[5] = sub_21975ADB8(&qword_280E96B48, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21975EAC8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
}

uint64_t sub_21975B4C0(uint64_t a1, uint64_t a2)
{
  sub_21975EB30(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = v7 + v6;
  v9 = *(v2 + *(a2 + 20) + 16);
  *v8 = 8;
  *(v8 + 8) = v9;
  (*(v5 + 104))();
  return v7;
}

uint64_t sub_21975B5E8()
{
  sub_21915A40C();

  return sub_219BEDCA4();
}

uint64_t sub_21975B614@<X0>(uint64_t *a1@<X8>)
{
  sub_21975EB30(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21915A40C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21975EB94(inited + 32, sub_2188317B0);
  sub_21975EB30(0, &qword_280EE75E0, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21975EBF4();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21975B798()
{
  sub_21975ADB8(&qword_280E955C8, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21975B924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21975B988@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = sub_21975BA28(v8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21975BA28(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v112 = a1;
  v5 = sub_219BEEA24();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v110 = &v108 - v9;
  if (qword_280E8D840 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    sub_219BF6214();
    sub_219BE5314();
    v10 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
    __swift_project_boxed_opaque_existential_1((v4 + *(v10 + 44)), *(v4 + *(v10 + 44) + 24));
    v11 = v3;
    v12 = sub_219BE4F74();
    v13 = MEMORY[0x277D837D0];
    v117 = v10;
    v111 = v11;
    if (v11)
    {
      v116 = v8;
      sub_219BF61F4();
      sub_2186F20D4();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09BA0;
      v118 = 0;
      v119 = 0xE000000000000000;
      v120 = v11;
      sub_2186CFDE4(0, &qword_280E8B580);
      sub_219BF7484();
      v15 = v10;
      v16 = v118;
      v17 = v119;
      *(v14 + 56) = v13;
      *(v14 + 64) = sub_2186FC3BC();
      *(v14 + 32) = v16;
      *(v14 + 40) = v17;
      sub_219BE5314();

      v18 = *(v4 + *(v15 + 40));
      v19 = [v18 possiblyUnfetchedAppConfiguration];
      if ([v19 respondsToSelector_])
      {
        v20 = v4;
        v21 = [v19 recommendedIssueAllowList];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = sub_219BF5924();

          v23 = sub_218845F78(v22);
        }

        else
        {
          v23 = MEMORY[0x277D84FA0];
        }

        v45 = v116;
        v46 = [v18 possiblyUnfetchedAppConfiguration];
        v19 = &selRef__setPreferredLayout_;
        if ([v46 respondsToSelector_])
        {
          v47 = [v46 recommendedIssueDenyList];
          swift_unknownObjectRelease();
          if (v47)
          {
            v48 = sub_219BF5924();

            v49 = sub_218845F78(v48);
          }

          else
          {
            v49 = MEMORY[0x277D84FA0];
          }

          v50 = v20 + *(v117 + 20);
          v51 = *v50;
          if (v50[32] > 1u)
          {
            if (v50[32] == 2)
            {
              v52 = MEMORY[0x277D321C8];
            }

            else
            {
              *v45 = 0;
              *(v45 + 8) = 1;
              v52 = MEMORY[0x277D321C0];
            }
          }

          else if (v50[32])
          {
            v52 = MEMORY[0x277D321B8];
          }

          else
          {
            v52 = MEMORY[0x277D321D0];
          }

          v54 = v113;
          v53 = v114;
          (*(v113 + 104))(v45, *v52, v114);
          v55 = sub_219B6D6E4(v51);
          (*(v54 + 8))(v45, v53);
          v118 = v55;
          sub_2186E330C();
          sub_21975ADB8(&qword_280E8EB38, sub_2186E330C);
          v56 = sub_219BF56E4();
          v57 = 0;

          MEMORY[0x28223BE20](v58);
          *(&v108 - 4) = v20;
          *(&v108 - 3) = v23;
          *(&v108 - 2) = v49;
          v59 = sub_2195EB2AC(sub_21975D444, (&v108 - 6), v56);
          v19 = 0;

          v61 = *(v50 + 1);
          if (v61 < 0)
          {
            __break(1u);
          }

          else
          {
            v60 = v59 & 0xFFFFFFFFFFFFFF8;
            v49 = v59 >> 62;
            if (!(v59 >> 62))
            {
              v62 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62 >= v61)
              {
                v63 = *(v50 + 1);
              }

              else
              {
                v63 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v61)
              {
                v64 = v63;
              }

              else
              {
                v64 = 0;
              }

              if (v62 >= v64)
              {
                goto LABEL_43;
              }

              goto LABEL_115;
            }
          }

          if (v59 < 0)
          {
            v57 = v59;
          }

          else
          {
            v57 = v60;
          }

          v105 = sub_219BF7214();
          if ((sub_219BF7214() & 0x8000000000000000) == 0)
          {
            if (v105 >= v61)
            {
              v106 = v61;
            }

            else
            {
              v106 = v105;
            }

            if (v105 < 0)
            {
              v106 = v61;
            }

            if (v61)
            {
              v64 = v106;
            }

            else
            {
              v64 = 0;
            }

            if (sub_219BF7214() >= v64)
            {
LABEL_43:
              if ((v59 & 0xC000000000000001) != 0 && v64)
              {
                sub_2186C6148(0, &qword_280E8DAB0);

                v65 = 0;
                do
                {
                  v66 = v65 + 1;
                  sub_219BF7334();
                  v65 = v66;
                }

                while (v64 != v66);
              }

              else
              {
              }

              if (v49)
              {
                v57 = sub_219BF7564();
                v67 = v69;
                v49 = v70;
                v68 = v71;
              }

              else
              {
                v57 = v59 & 0xFFFFFFFFFFFFFF8;
                v67 = (v59 & 0xFFFFFFFFFFFFFF8) + 32;
                v68 = (2 * v64) | 1;
              }

              v72 = (v68 >> 1) - v49;
              if (!__OFSUB__(v68 >> 1, v49))
              {
                v73 = *(v50 + 3);
                if (v72 < v73)
                {
                  v74 = sub_219BEEDD4();
                  sub_21975ADB8(&qword_280E917E0, MEMORY[0x277D32430]);
                  swift_allocError();
                  *v75 = v73;
                  v75[1] = v72;
                  (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D32400], v74);
                  swift_willThrow();
                  swift_unknownObjectRelease();

                  return v74;
                }

                v76 = v111;
                if (v68)
                {
                  sub_219BF7934();
                  swift_unknownObjectRetain_n();
                  v78 = swift_dynamicCastClass();
                  if (!v78)
                  {
                    swift_unknownObjectRelease();
                    v78 = MEMORY[0x277D84F90];
                  }

                  v79 = *(v78 + 16);

                  if (v79 == v72)
                  {
                    v74 = swift_dynamicCastClass();
                    swift_unknownObjectRelease();
                    if (!v74)
                    {
                      swift_unknownObjectRelease();

                      goto LABEL_94;
                    }

LABEL_61:

                    goto LABEL_95;
                  }

                  swift_unknownObjectRelease_n();
                }

                sub_218B67194(v57, v67, v49, v68);
                v74 = v77;
                goto LABEL_61;
              }

              goto LABEL_116;
            }

LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

LABEL_134:
          __break(1u);
          goto LABEL_135;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_134;
    }

    v24 = v12;
    v109 = v4;
    sub_2186F20D4();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    v26 = MEMORY[0x21CECC6D0](v24, v13);
    v116 = v24;
    v27 = v26;
    v29 = v28;
    *(v25 + 56) = v13;
    *(v25 + 64) = sub_2186FC3BC();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v3 = v116;
    sub_219BF6214();
    sub_219BE5314();

    v115 = *(v3 + 16);
    if (!v115)
    {
      break;
    }

    v30 = 0;
    v4 = (v3 + 40);
    v8 = MEMORY[0x277D84F98];
    while (v30 < *(v3 + 16))
    {
      v3 = *(v4 - 1);
      v31 = *v4;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v8;
      v34 = sub_21870F700(v3, v31);
      v35 = v8[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_98;
      }

      v38 = v33;
      if (v8[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v10 = v117;
          if (v33)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_219492450();
          v10 = v117;
          if (v38)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_2194815A0(v37, isUniquelyReferenced_nonNull_native);
        v19 = v118;
        v39 = sub_21870F700(v3, v31);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_136;
        }

        v34 = v39;
        v10 = v117;
        if (v38)
        {
LABEL_8:

          v8 = v118;
          *(*(v118 + 56) + 8 * v34) = v30;

          goto LABEL_9;
        }
      }

      v8 = v118;
      *(v118 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v41 = (v8[6] + 16 * v34);
      *v41 = v3;
      v41[1] = v31;
      *(v8[7] + 8 * v34) = v30;

      v42 = v8[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_99;
      }

      v8[2] = v44;
LABEL_9:
      ++v30;
      v4 += 2;
      v3 = v116;
      if (v115 == v30)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  v8 = MEMORY[0x277D84F98];
LABEL_63:

  v80 = *(v10 + 20);
  v81 = v109;
  v82 = v110;
  v59 = v109 + v80;
  v84 = v113;
  v83 = v114;
  v85 = *(v109 + v80);
  (*(v113 + 104))(v110, *MEMORY[0x277D321D0], v114);
  v86 = sub_219B6D6E4(v85);
  (*(v84 + 8))(v82, v83);
  v118 = v86;
  sub_2186E330C();
  sub_21975ADB8(&qword_280E8EB38, sub_2186E330C);
  v87 = v111;
  v88 = sub_219BF56E4();
  v57 = v87;

  MEMORY[0x28223BE20](v89);
  *(&v108 - 2) = v81;
  v90 = sub_2195EB2AC(sub_21975D480, (&v108 - 4), v88);
  v19 = v87;

  v118 = sub_219759000(v91);
  sub_21975E99C(&v118, v8);
  if (v87)
  {
    goto LABEL_137;
  }

  swift_bridgeObjectRelease_n();
  v49 = *(v59 + 8);
  if (v49 < 0)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v57 = v118;
  if ((v118 & 0x8000000000000000) != 0)
  {
    v59 = 1;
  }

  else
  {
    v59 = (v118 >> 62) & 1;
  }

  if ((v59 & 1) == 0)
  {
    v92 = *(v118 + 16);
    if (v92 >= v49)
    {
      v93 = v49;
    }

    else
    {
      v93 = *(v118 + 16);
    }

    if (v49)
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    if (v92 >= v94)
    {
      goto LABEL_76;
    }

LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    swift_unknownObjectRelease_n();
LABEL_86:
    sub_218B67194(v57, v59, v90, v94);
    v74 = v101;
LABEL_95:
    swift_unknownObjectRelease();
    return v74;
  }

LABEL_118:
  v90 = sub_219BF7214();
  if ((sub_219BF7214() & 0x8000000000000000) == 0)
  {
    if (v90 >= v49)
    {
      v107 = v49;
    }

    else
    {
      v107 = v90;
    }

    if (v90 < 0)
    {
      v107 = v49;
    }

    if (v49)
    {
      v94 = v107;
    }

    else
    {
      v94 = 0;
    }

    if (sub_219BF7214() < v94)
    {
      goto LABEL_128;
    }

LABEL_76:
    if ((v57 & 0xC000000000000001) != 0 && v94)
    {
      sub_2186C6148(0, &qword_280E8DAB0);

      v95 = 0;
      do
      {
        v96 = v95 + 1;
        sub_219BF7334();
        v95 = v96;
      }

      while (v94 != v96);
    }

    else
    {
    }

    if (v59)
    {
      v97 = sub_219BF7564();
      v59 = v98;
      v90 = v99;
      v94 = v100;

      v57 = v97;
      if ((v94 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v90 = 0;
      v59 = v57 + 32;
      v94 = (2 * v94) | 1;
      if ((v94 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v102 = swift_dynamicCastClass();
    if (!v102)
    {
      swift_unknownObjectRelease();
      v102 = MEMORY[0x277D84F90];
    }

    v103 = *(v102 + 16);

    if (__OFSUB__(v94 >> 1, v90))
    {
      goto LABEL_129;
    }

    if (v103 != (v94 >> 1) - v90)
    {
      goto LABEL_130;
    }

    v74 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v74)
    {
      return v74;
    }

LABEL_94:
    v74 = MEMORY[0x277D84F90];
    goto LABEL_95;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  sub_219BF79A4();
  __break(1u);
LABEL_137:

  __break(1u);
  return result;
}

uint64_t sub_21975C858@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v53 = a1;
  v5 = sub_219BEF554();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v51 - v8;
  v9 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  sub_21915A40C();
  v15 = sub_219BEDCA4();
  v59 = v16;
  v60 = v15;
  sub_219BEDD14();

  sub_21975EB94(v14, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v17 = sub_219BF53D4();

  v18 = objc_opt_self();
  v19 = [v18 colorWithHexString_];

  v58 = [v19 ne_color];
  sub_219BEDD14();

  sub_21975EB94(v14, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v20 = sub_219BF53D4();

  v21 = [v18 colorWithHexString_];

  v56 = [v21 ne_color];
  sub_219BEDD14();
  v22 = *(v14 + 5);
  v54 = *(v14 + 6);
  v55 = v22;

  sub_21975EB94(v14, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v23 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v3 + *(v23 + 36)), *(v3 + *(v23 + 36) + 24));

  v25 = sub_219319C68(v24);
  v53 = sub_21945CCB8(v25);

  v52 = sub_219BEDCB4();
  v27 = v26;
  v28 = v61;
  sub_219BEDCC4();
  v29 = v57;
  sub_219BEDD14();
  v30 = *(v10 + 48);
  v32 = v63;
  v31 = v64;
  v33 = &v29[v30];
  v34 = v29;
  v35 = v62;
  (*(v63 + 16))(v62, v33, v64);
  sub_21975EB94(v34, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
  v36 = *(v3 + *(v23 + 20) + 40);
  v37 = v59;
  *a2 = v60;
  a2[1] = v37;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass_];
  v40 = sub_219BDB5E4();
  v42 = v41;

  a2[2] = v40;
  a2[3] = v42;
  v44 = v55;
  v43 = v56;
  a2[4] = v58;
  a2[5] = v43;
  v46 = v53;
  v45 = v54;
  a2[6] = v44;
  a2[7] = v45;
  v47 = v52;
  a2[8] = v46;
  a2[9] = v47;
  a2[10] = v27;
  v48 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  v49 = *(v32 + 32);
  v49(a2 + v48[11], v28, v31);
  v49(a2 + v48[12], v35, v31);
  *(a2 + v48[13]) = v36;
  type metadata accessor for MagazineFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21975CD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21975EAC8(a1, a2, type metadata accessor for MagazineFeedGroup);
  sub_21975EA48(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21975CDA4()
{
  type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_218D827D0();
  return sub_219BEF194();
}

uint64_t sub_21975CEE4(id a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) || *(a3 + 16))
  {
    result = [a1 publisherID];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = sub_219BF5414();
    v11 = v10;

    if (sub_2188537B8(v9, v11, a3))
    {

      return 0;
    }

    if (*(a2 + 16))
    {
      v12 = sub_2188537B8(v9, v11, a2);

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v13 = *(v3 + *(type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter() + 32));
  v14 = [a1 identifier];
  if (!v14)
  {
    sub_219BF5414();
    v14 = sub_219BF53D4();
  }

  v15 = [v13 sourceForIssueID_];

  if (v15 == 1 || (sub_21975D1C8(a1) & 1) == 0)
  {
    return 0;
  }

  result = [a1 coverImageAssetHandle];
  if (result)
  {

    return 1;
  }

  return result;
}

BOOL sub_21975D05C(id *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [*a1 publisherID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v4 publisherID];
  if (!v10)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v11 = v10;
  v12 = sub_219BF5414();
  v14 = v13;

  if (!v9)
  {
    if (v14)
    {

      return 0;
    }

    return 1;
  }

  if (!v14)
  {
LABEL_12:

    return 1;
  }

  if (!*(a3 + 16))
  {

LABEL_17:
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    if (!*(a3 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v15 = sub_21870F700(v7, v9);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(*(a3 + 56) + 8 * v15);
  if (!*(a3 + 16))
  {
LABEL_10:

LABEL_20:
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    return v18 < v23;
  }

LABEL_18:
  v20 = sub_21870F700(v12, v14);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = *(*(a3 + 56) + 8 * v20);
  return v18 < v23;
}

uint64_t sub_21975D1C8(void *a1)
{
  v3 = type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter();
  if (*(v1 + *(v3 + 20) + 65) != 1)
  {
    return 1;
  }

  v4 = v3;
  v5 = [*(v1 + *(v3 + 28)) cachedSubscription];
  if (objc_getAssociatedObject(v5, v5 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_21975EB94(&v16, sub_21880702C);
    goto LABEL_10;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v6 = v13;
  v7 = [v13 integerValue];
  if (v7 == -1)
  {

    goto LABEL_22;
  }

  v8 = v7;
LABEL_11:
  if (objc_getAssociatedObject(v5, ~v8))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v9 = v13;
      v10 = [v9 integerValue];

      if (((v10 ^ v8) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    sub_21975EB94(&v16, sub_21880702C);
  }

  if ((v8 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v12 = [*(v1 + *(v4 + 24)) hasSubscriptionToTag_];
  swift_unknownObjectRelease();
  return v12 ^ 1;
}

uint64_t sub_21975D4C0(id *__src, id *__dst, id *a3, void **a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __dst - __src;
  v10 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, 8 * v14);
    }

    v82 = &v6[v14];
    if (v12 < 8 || v8 <= __src)
    {
      goto LABEL_88;
    }

LABEL_51:
    v77 = v8;
    v44 = v8 - 1;
    v45 = v7 - 1;
    v46 = v82;
    v73 = v44;
    while (1)
    {
      v47 = *--v46;
      v48 = *v44;
      v49 = v47;
      v50 = v48;
      v75 = v49;
      v51 = [v49 publisherID];
      v81 = v45;
      if (v51)
      {
        v52 = v51;
        v53 = sub_219BF5414();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v56 = v6;
      v57 = v50;
      v58 = [v50 publisherID];
      if (!v58)
      {
        v67 = v75;
        if (v55)
        {
          goto LABEL_78;
        }

LABEL_76:

LABEL_79:
        v6 = v56;
        v7 = v81;
LABEL_80:
        if (v7 + 1 != v77)
        {
          *v7 = *v73;
        }

        if (v82 <= v6 || (v8 = v73, v73 <= __src))
        {
          v8 = v73;
          goto LABEL_88;
        }

        goto LABEL_51;
      }

      v59 = v58;
      v60 = sub_219BF5414();
      v62 = v61;

      if (v55)
      {
        v50 = v57;
        if (!v62)
        {
          v67 = v75;
LABEL_78:

          goto LABEL_79;
        }

        if (*(a5 + 16))
        {
          v63 = sub_21870F700(v53, v55);
          v65 = v64;

          if (v65)
          {
            v66 = *(*(a5 + 56) + 8 * v63);
          }

          else
          {
            v66 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v50 = v57;
          if (!*(a5 + 16))
          {
LABEL_65:

            goto LABEL_72;
          }
        }

        else
        {

          v66 = 0x7FFFFFFFFFFFFFFFLL;
          if (!*(a5 + 16))
          {
            goto LABEL_65;
          }
        }

        v68 = sub_21870F700(v60, v62);
        v70 = v69;

        if ((v70 & 1) == 0)
        {

LABEL_72:
          v6 = v56;
          v7 = v81;
          if (v66 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v71 = *(*(a5 + 56) + 8 * v68);

        v6 = v56;
        v7 = v81;
        if (v66 < v71)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v50 = v57;
        v67 = v75;
        if (!v62)
        {
          goto LABEL_76;
        }

        v6 = v56;
        v7 = v81;
      }

LABEL_73:
      if (v7 + 1 != v82)
      {
        *v7 = *v46;
      }

      v45 = v7 - 1;
      v82 = v46;
      v44 = v73;
      if (v46 <= v6)
      {
        v82 = v46;
        v8 = v77;
        goto LABEL_88;
      }
    }
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 8 * v11);
  }

  v82 = &v6[v11];
  if (v9 < 8)
  {
    v8 = __src;
    goto LABEL_88;
  }

  v15 = __src;
  if (v8 < v7)
  {
    v16 = &selRef_filteredReasons;
    v80 = v7;
    do
    {
      v79 = v15;
      v17 = *v6;
      v18 = *v8;
      v19 = v17;
      v20 = [v18 v16[87]];
      v76 = v8;
      if (v20)
      {
        v21 = v20;
        v22 = sub_219BF5414();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = v6;
      v26 = [v19 v16[87]];
      if (!v26)
      {
        if (v24)
        {
          goto LABEL_27;
        }

LABEL_25:

LABEL_28:
        v6 = v25;
        v8 = v76;
        v35 = v79;
        v36 = v80;
LABEL_29:
        v37 = v8;
        v38 = v35 == v8++;
        if (v38)
        {
          goto LABEL_31;
        }

LABEL_30:
        *v35 = *v37;
        goto LABEL_31;
      }

      v27 = v16;
      v28 = v26;
      v74 = sub_219BF5414();
      v30 = v29;

      if (!v24)
      {
        v16 = v27;
        if (!v30)
        {
          goto LABEL_25;
        }

        v6 = v25;
        v8 = v76;
        v35 = v79;
        v36 = v80;
        goto LABEL_43;
      }

      if (!v30)
      {
        v16 = v27;
LABEL_27:

        goto LABEL_28;
      }

      if (*(a5 + 16))
      {
        v31 = sub_21870F700(v22, v24);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(a5 + 56) + 8 * v31);
          goto LABEL_36;
        }
      }

      else
      {
      }

      v34 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
      v35 = v79;
      v16 = v27;
      if (*(a5 + 16))
      {
        v39 = sub_21870F700(v74, v30);
        v41 = v40;

        if (v41)
        {
          v42 = *(*(a5 + 56) + 8 * v39);

          v43 = v34 < v42;
          v6 = v25;
          v8 = v76;
          v35 = v79;
          v36 = v80;
          if (v43)
          {
            goto LABEL_29;
          }

          goto LABEL_43;
        }

        v6 = v25;
        v35 = v79;
      }

      else
      {

        v6 = v25;
      }

      v8 = v76;
      v36 = v80;
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

LABEL_43:
      v37 = v6;
      v38 = v35 == v6++;
      if (!v38)
      {
        goto LABEL_30;
      }

LABEL_31:
      v15 = v35 + 1;
    }

    while (v6 < v82 && v8 < v36);
  }

  v8 = v15;
LABEL_88:
  if (v8 != v6 || v8 >= (v6 + ((v82 - v6 + (v82 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v6, 8 * (v82 - v6));
  }

  return 1;
}

uint64_t sub_21975DAB4(char **a1, void **a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_218C81048(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_21975D4C0(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_21975DC5C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v156 = MEMORY[0x277D84F90];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_148:
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    sub_21975DAB4(&v156, v132, a3, a5);
    if (!v144)
    {

      swift_bridgeObjectRelease_n();
    }

LABEL_150:

LABEL_151:
    swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &selRef_filteredReasons;
  v142 = a5;
  while (1)
  {
    v10 = v7;
    v138 = v7;
    if (v7 + 1 >= v6)
    {
      v145 = v7 + 1;
      goto LABEL_49;
    }

    v135 = v8;
    v11 = v7;
    v12 = *a3;
    v13 = *(*a3 + 8 * (v7 + 1));
    v154 = *(*a3 + 8 * v10);
    v14 = v154;
    v155 = v13;
    v15 = v13;
    v16 = v14;
    v151 = sub_21975D05C(&v155, &v154, a5);
    if (v144)
    {

      goto LABEL_151;
    }

    v17 = v11 + 2;
    if (v11 + 2 >= v6)
    {
      goto LABEL_40;
    }

    v145 = v11 + 2;
    v148 = v6;
    v18 = (v12 + 8 * v11 + 16);
    while (1)
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      v22 = v20;
      v23 = [v21 v9[87]];
      if (v23)
      {
        v24 = v23;
        v25 = sub_219BF5414();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = [v22 v9[87]];
      if (!v28)
      {
        v9 = &selRef_filteredReasons;
        if (v27)
        {
          goto LABEL_10;
        }

LABEL_24:

        v19 = v148;
        if (!v151)
        {
LABEL_38:
          v8 = v135;
          v10 = v138;
          goto LABEL_49;
        }

        goto LABEL_35;
      }

      v29 = v28;
      v30 = sub_219BF5414();
      v32 = v31;

      v9 = &selRef_filteredReasons;
      if (v27)
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_24;
      }

      v19 = v148;
      if (v151)
      {
        v8 = v135;
        v17 = v145;
        v10 = v138;
        if (v145 >= v138)
        {
          goto LABEL_42;
        }

        goto LABEL_174;
      }

LABEL_35:
      ++v18;
      if (v19 == ++v145)
      {
        v17 = v19;
        goto LABEL_40;
      }
    }

    if (!v32)
    {
LABEL_10:
      v19 = v148;

      if (!v151)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (*(a5 + 16))
    {
      v33 = sub_21870F700(v25, v27);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(a5 + 56) + 8 * v33);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v36 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:
    v19 = v148;
    if (*(a5 + 16))
    {
      v37 = sub_21870F700(v30, v32);
      v39 = v38;

      if (v39)
      {
        v40 = *(*(a5 + 56) + 8 * v37);

        goto LABEL_34;
      }
    }

    else
    {
    }

    v40 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
    v9 = &selRef_filteredReasons;
    if ((v151 ^ (v36 >= v40)))
    {
      goto LABEL_35;
    }

    v17 = v145;
LABEL_40:
    v8 = v135;
    v10 = v138;
    if (!v151)
    {
      v145 = v17;
      goto LABEL_49;
    }

    if (v17 < v138)
    {
      goto LABEL_174;
    }

LABEL_42:
    v145 = v17;
    if (v10 < v17)
    {
      v41 = 8 * v17 - 8;
      v42 = 8 * v10;
      v43 = v10;
      do
      {
        if (v43 != --v17)
        {
          v44 = *a3;
          if (!*a3)
          {
            goto LABEL_177;
          }

          v45 = *(v44 + v42);
          *(v44 + v42) = *(v44 + v41);
          *(v44 + v41) = v45;
        }

        ++v43;
        v41 -= 8;
        v42 += 8;
      }

      while (v43 < v17);
    }

LABEL_49:
    v46 = a3[1];
    if (v145 >= v46)
    {
      v48 = v145;
      if (v145 < v10)
      {
        goto LABEL_170;
      }

      goto LABEL_92;
    }

    if (__OFSUB__(v145, v10))
    {
      goto LABEL_171;
    }

    if (v145 - v10 >= a4)
    {
      v48 = v145;
LABEL_91:
      if (v48 < v10)
      {
        goto LABEL_170;
      }

      goto LABEL_92;
    }

    v47 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_172;
    }

    if (v47 >= v46)
    {
      v47 = a3[1];
    }

    if (v47 < v10)
    {
      break;
    }

    v48 = v145;
    if (v145 == v47)
    {
      goto LABEL_91;
    }

    v136 = v8;
    v152 = *a3;
    v49 = *a3 + 8 * v145 - 8;
    v50 = v145;
    v51 = v10 - v145;
    v139 = v47;
    while (2)
    {
      v146 = v50;
      v52 = v152[v50];
      v140 = v51;
      v141 = v49;
      while (2)
      {
        v53 = *v49;
        v54 = v52;
        v55 = v53;
        v56 = [v54 v9[87]];
        if (v56)
        {
          v57 = v56;
          v58 = sub_219BF5414();
          v60 = v59;
        }

        else
        {
          v58 = 0;
          v60 = 0;
        }

        v61 = v55;
        v62 = [v55 v9[87]];
        if (!v62)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          goto LABEL_74;
        }

        v63 = v62;
        v149 = sub_219BF5414();
        v65 = v64;

        if (v60)
        {
          if (v65)
          {
            if (*(a5 + 16))
            {
              v66 = sub_21870F700(v58, v60);
              v68 = v67;

              if (v68)
              {
                v69 = *(*(a5 + 56) + 8 * v66);
                if (!*(a5 + 16))
                {
                  goto LABEL_70;
                }

LABEL_79:
                v70 = sub_21870F700(v149, v65);
                v72 = v71;

                if (v72)
                {
                  v73 = *(*(a5 + 56) + 8 * v70);

                  v74 = v69 < v73;
                  v9 = &selRef_filteredReasons;
                  if (!v74)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_84;
                }

LABEL_83:
                v9 = &selRef_filteredReasons;
                if (v69 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_59;
                }

LABEL_84:
                if (!v152)
                {
                  goto LABEL_175;
                }

                v75 = *v49;
                v52 = *(v49 + 8);
                *v49 = v52;
                *(v49 + 8) = v75;
                v49 -= 8;
                if (__CFADD__(v51++, 1))
                {
                  goto LABEL_59;
                }

                continue;
              }
            }

            else
            {
            }

            v69 = 0x7FFFFFFFFFFFFFFFLL;
            if (*(a5 + 16))
            {
              goto LABEL_79;
            }

LABEL_70:

            goto LABEL_83;
          }

          v9 = &selRef_filteredReasons;
LABEL_76:

          goto LABEL_84;
        }

        break;
      }

      v9 = &selRef_filteredReasons;
      if (!v65)
      {
LABEL_74:

        goto LABEL_84;
      }

LABEL_59:
      v50 = v146 + 1;
      v49 = v141 + 8;
      v51 = v140 - 1;
      if (v146 + 1 != v139)
      {
        continue;
      }

      break;
    }

    v48 = v139;
    v8 = v136;
    if (v139 < v138)
    {
      goto LABEL_170;
    }

LABEL_92:
    v147 = v48;
    v77 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v77;
    }

    else
    {
      v8 = sub_2191F6B60(0, *(v77 + 2) + 1, 1, v77);
    }

    v79 = *(v8 + 2);
    v78 = *(v8 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v8 = sub_2191F6B60((v78 > 1), v79 + 1, 1, v8);
    }

    *(v8 + 2) = v80;
    v81 = v8 + 32;
    v82 = &v8[16 * v79 + 32];
    *v82 = v138;
    *(v82 + 1) = v147;
    v156 = v8;
    v153 = *a1;
    if (!*a1)
    {
      goto LABEL_178;
    }

    if (v79)
    {
      v150 = v8 + 32;
      while (1)
      {
        v83 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v84 = *(v8 + 4);
          v85 = *(v8 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_112:
          if (v87)
          {
            goto LABEL_161;
          }

          v100 = &v8[16 * v80];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_164;
          }

          v106 = &v81[16 * v83];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_167;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_168;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v80 - 2;
            }

            goto LABEL_133;
          }

          goto LABEL_126;
        }

        v110 = &v8[16 * v80];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_126:
        if (v105)
        {
          goto LABEL_163;
        }

        v113 = &v81[16 * v83];
        v115 = *v113;
        v114 = *(v113 + 1);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_166;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_133:
        if (v83 - 1 >= v80)
        {
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_176;
        }

        v122 = v8;
        v123 = &v81[16 * v83 - 16];
        v124 = *v123;
        v125 = v83;
        v126 = &v81[16 * v83];
        v127 = *(v126 + 1);
        v128 = (v121 + 8 * *v123);
        v129 = (v121 + 8 * *v126);
        v130 = (v121 + 8 * v127);

        sub_21975D4C0(v128, v129, v130, v153, v142);
        if (v144)
        {
          goto LABEL_150;
        }

        if (v127 < v124)
        {
          goto LABEL_156;
        }

        v131 = *(v122 + 2);
        if (v125 > v131)
        {
          goto LABEL_157;
        }

        *v123 = v124;
        *(v123 + 1) = v127;
        if (v125 >= v131)
        {
          goto LABEL_158;
        }

        v80 = v131 - 1;
        memmove(v126, v126 + 16, 16 * (v131 - 1 - v125));
        v8 = v122;
        *(v122 + 2) = v131 - 1;
        v74 = v131 > 2;
        v9 = &selRef_filteredReasons;
        v81 = v150;
        if (!v74)
        {
LABEL_3:
          v156 = v8;
          goto LABEL_4;
        }
      }

      v88 = &v81[16 * v80];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_159;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_160;
      }

      v95 = &v8[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_162;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_165;
      }

      if (v99 >= v91)
      {
        v117 = &v81[16 * v83];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_169;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_133;
      }

      goto LABEL_112;
    }

LABEL_4:
    a5 = v142;
    v6 = a3[1];
    v7 = v147;
    if (v147 >= v6)
    {
      goto LABEL_148;
    }
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_176:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_177:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_178:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_21975E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    v8 = &selRef_filteredReasons;
LABEL_6:
    v34 = v6;
    v35 = a3;
    v9 = *(v37 + 8 * a3);
    v33 = v7;
    while (1)
    {
      v10 = *v6;
      v11 = v9;
      v12 = v10;
      v13 = [v11 v8[87]];
      if (v13)
      {
        v14 = v13;
        v15 = sub_219BF5414();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v12 v8[87]];
      if (!v18)
      {
        if (!v17)
        {
          goto LABEL_20;
        }

LABEL_18:

LABEL_21:
        v8 = &selRef_filteredReasons;
        goto LABEL_22;
      }

      v19 = v18;
      v36 = sub_219BF5414();
      v21 = v20;

      if (!v17)
      {
        if (v21)
        {

          v8 = &selRef_filteredReasons;
LABEL_5:
          a3 = v35 + 1;
          v6 = v34 + 8;
          v7 = v33 - 1;
          if (v35 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (!v21)
      {
        goto LABEL_18;
      }

      if (*(a5 + 16))
      {
        v22 = sub_21870F700(v15, v17);
        v24 = v23;

        if (v24)
        {
          v25 = *(*(a5 + 56) + 8 * v22);
          if (!*(a5 + 16))
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v25 = 0x7FFFFFFFFFFFFFFFLL;
      if (!*(a5 + 16))
      {
LABEL_16:

        goto LABEL_32;
      }

LABEL_28:
      v28 = sub_21870F700(v36, v21);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(a5 + 56) + 8 * v28);

        v8 = &selRef_filteredReasons;
        if (v25 >= v31)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }

LABEL_32:
      v8 = &selRef_filteredReasons;
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }

LABEL_22:
      if (!v37)
      {
        __break(1u);
        return;
      }

      v26 = *v6;
      v9 = *(v6 + 8);
      *v6 = v9;
      *(v6 + 8) = v26;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_21975E830(uint64_t *a1, uint64_t a2)
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
        sub_2186C6148(0, &qword_280E8DAB0);
        v8 = sub_219BF5A34();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_21975DC5C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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

    sub_21975E5F8(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21975E99C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_218C82C04(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_21975E830(v8, a2);

  sub_219BF73E4();
  return swift_bridgeObjectRelease_n();
}

void sub_21975EA48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21975EAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21975EB30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21975EB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21975EBF4()
{
  result = qword_280EE75E8;
  if (!qword_280EE75E8)
  {
    sub_21975EB30(255, &qword_280EE75E0, type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE75E8);
  }

  return result;
}

uint64_t sub_21975EC7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebViewerModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for WebViewerModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975ED2C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WebViewerViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1EBA0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBA8);
  sub_219BE2914();
  type metadata accessor for WebViewerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1EBB0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBB8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBC0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1EBC8);
  sub_219BE2914();

  sub_21975FC8C();
  sub_219BE2904();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF08], v0);
  sub_219BE19F4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21975F080(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBA0);
  result = sub_219BE1E34();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC1EBB0);
    result = sub_219BE1E34();
    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v5);
      v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v17 = type metadata accessor for WebViewerStyler();
      v18 = &off_282A4E398;
      v16[0] = v9;
      v10 = objc_allocWithZone(type metadata accessor for WebViewerViewController());
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = sub_21975FF44(*v13, v3, v4, v10);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21975F300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_218725FE8();
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for WebViewerStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    *(v12 + 40) = v9;
    *(v12 + 48) = v10;
    *(v12 + 16) = v17;
    *(v12 + 56) = 0;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A4E398;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975F534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebViewerRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A647A8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21975F5F0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebViewerViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21975F670@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBB8);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBA8);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBC0);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_21975FCE8(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A86E08;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21975F918@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1EBC8);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21975FC8C();
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      type metadata accessor for WebViewerInteractor();
      v6 = swift_allocObject();
      v6[3] = 0;
      result = swift_unknownObjectWeakInit();
      v6[4] = v7;
      v6[5] = v8;
      v6[6] = v5;
      *a2 = v6;
      a2[1] = &off_282A74838;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21975FA20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebViewerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A71DA0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975FAA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebViewerConfig();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EC2CC8);
    sub_219BE1E34();
    type metadata accessor for WebViewerDataManager();
    v6 = swift_allocObject();
    *(v6 + 32) = 0;
    swift_unknownObjectWeakInit();
    v7 = OBJC_IVAR____TtC7NewsUI220WebViewerDataManager_startDate;
    v8 = sub_219BDBD34();
    (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
    *(v6 + 16) = v5;
    *(v6 + 32) = v9;
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
    *a2 = v6;
    a2[1] = &off_282A4FA18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21975FBFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_21975FC8C();
    v3 = objc_allocWithZone(v2);
    return sub_219BF1B04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21975FC8C()
{
  if (!qword_27CC1EBD0)
  {
    sub_2194DD4B0();
    v0 = sub_219BF1B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1EBD0);
    }
  }
}

void *sub_21975FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WebViewerRouter();
  v32[3] = v9;
  v32[4] = &off_282A647A8;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_282A71DA0;
  v29[0] = a4;
  type metadata accessor for WebViewerEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_282A647A8;
  v25 = &off_282A71DA0;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v26, (v10 + 6));
  sub_2186CB1F0(&v23, (v10 + 11));
  *(a1 + 24) = &off_282A86DF8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

char *sub_21975FF44(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for WebViewerStyler();
  v17[4] = &off_282A4E398;
  v17[0] = a1;
  v9 = OBJC_IVAR____TtC7NewsUI223WebViewerViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *&a4[v9] = sub_219BE6C04();
  *&a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_webView] = 0;
  v10 = OBJC_IVAR____TtC7NewsUI223WebViewerViewController_url;
  v11 = sub_219BDB954();
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  *&a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_config] = 0;
  sub_218718690(v17, &a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_styler]);
  v12 = &a4[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_eventHandler];
  *v12 = a2;
  *(v12 + 1) = a3;
  v16.receiver = a4;
  v16.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC7NewsUI223WebViewerViewController_eventHandler] + 24) = &off_282AA0CB8;
  swift_unknownObjectWeakAssign();
  v14 = v13;

  sub_219BE6BF4();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_2197600E4(uint64_t a1, uint64_t a2)
{
  sub_218729EA8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_21875D3C8();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D30138])
    {
      sub_219BDE7C4();
      sub_2197602DC(v5);

      return sub_219761358(v5, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    }

    else
    {

      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

void sub_2197602DC(uint64_t a1)
{
  v3 = sub_219BDE924();
  v98 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v102);
  v103 = (v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218729EA8(0, &unk_280EE8E70, MEMORY[0x277D2F9F0]);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = v87 - v8;
  sub_218729EA8(0, &qword_280EE6350, MEMORY[0x277D35078]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v99 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = v87 - v12;
  sub_218729EA8(0, &qword_280EE8AE0, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v87 - v14;
  sub_218729EA8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v87 - v17;
  v19 = type metadata accessor for AudioFeedTrack(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v104 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 applicationState];

  if (v23 == 2)
  {
    sub_218EE3208(a1, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_219761358(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_9:
      sub_2186C66AC();
      v26 = sub_219BF6F74();
      sub_219BF6214();
      sub_219BE5314();

      return;
    }

    v25 = v104;
    sub_21872D114(v18, v104, type metadata accessor for AudioFeedTrack);
    if ((*(v25 + 24) & 8) == 0)
    {
      sub_218EB8BCC(v25);
      goto LABEL_9;
    }

    v27 = sub_2186C66AC();
    v97 = v1;
    v28 = sub_219BF6F74();
    v29 = v97;
    v30 = v28;
    sub_219BF6214();
    sub_219BE5314();

    v31 = [*(v29 + 32) configuration];
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector_])
      {
        v33 = [v32 paidBundleConfig];
        swift_unknownObjectRelease();
        v34 = [v33 audioUpsellArticleID];
        if (v34)
        {
          v35 = v34;
          v94 = sub_219BF5414();
          v37 = v36;

          v38 = sub_219761104(v29, v33);
          v39 = [v33 audioUpsellMaxDisplayCount];
          v95 = v38;
          if (v38 >= v39 && [v33 audioUpsellMaxDisplayCount] != -1)
          {

            v40 = sub_219BF6F74();
            sub_219BF6214();
            sub_2186F20D4();
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_219C09EC0;
            v42 = MEMORY[0x277D83C10];
            *(v41 + 56) = MEMORY[0x277D83B88];
            *(v41 + 64) = v42;
            *(v41 + 32) = v95;
            v43 = [v33 audioUpsellMaxDisplayCount];
            v44 = MEMORY[0x277D84A90];
            *(v41 + 96) = MEMORY[0x277D84A28];
            *(v41 + 104) = v44;
            *(v41 + 72) = v43;
            sub_219BE5314();

LABEL_20:
            v50 = v25;
LABEL_33:
            sub_218EB8BCC(v50);
            return;
          }

          v88 = v37;
          v105 = *(v29 + 24);
          v45 = v105;
          v107 = 0xF000000000000000;
          sub_2186CF94C();
          v47 = v46;
          v48 = sub_218707A38(&qword_280EE5A90, sub_2186CF94C);
          v96 = v45;

          v90 = v48;
          v91 = v47;
          sub_219BEB484();
          v92 = v27;
          v93 = v33;
          v89 = 0;
          v105 = v96;
          v51 = v98;
          (*(v98 + 56))(v15, 1, 1, v3);
          v52 = sub_219BE4394();
          v53 = *(v52 - 8);
          v54 = *(v53 + 56);
          v87[1] = v53 + 56;
          v87[0] = v54;
          v54(v100, 1, 1, v52);
          v55 = sub_219BDD4D4();
          (*(*(v55 - 8) + 56))(v101, 1, 1, v55);
          v56 = v103;
          v57 = v103 + *(v102 + 56);
          *(v57 + 1) = 0;
          swift_unknownObjectWeakInit();
          v58 = v88;
          *v56 = v94;
          v56[1] = v58;
          v59 = *(v51 + 48);
          if (v59(v15, 1, v3) == 1)
          {
            v60 = *MEMORY[0x277D301F8];
            v61 = sub_219BDE914();
            (*(*(v61 - 8) + 104))(v5, v60, v61);
            (*(v51 + 104))(v5, *MEMORY[0x277D30200], v3);
            if (v59(v15, 1, v3) != 1)
            {
              sub_219761358(v15, &qword_280EE8AE0, MEMORY[0x277D30210]);
            }
          }

          else
          {
            (*(v51 + 32))(v5, v15, v3);
          }

          v63 = v102;
          v62 = v103;
          (*(v51 + 32))(v103 + *(v102 + 20), v5, v3);
          v64 = &v62[v63[6]];
          *v64 = 0;
          *(v64 + 1) = 0;
          v65 = &v62[v63[7]];
          *v65 = 0;
          *(v65 + 1) = 0;
          *&v62[v63[8]] = MEMORY[0x277D84F90];
          *&v62[v63[9]] = 0;
          v62[v63[11]] = 0;
          *(v57 + 1) = 0;
          swift_unknownObjectWeakAssign();
          v66 = *(v53 + 48);
          v67 = v100;
          if (v66(v100, 1, v52) == 1)
          {
            v68 = *MEMORY[0x277D34D80];
            v69 = sub_219BE3D74();
            v70 = v99;
            (*(*(v69 - 8) + 104))(v99, v68, v69);
            (*(v53 + 104))(v70, *MEMORY[0x277D35068], v52);
            if (v66(v67, 1, v52) != 1)
            {
              sub_219761358(v67, &qword_280EE6350, MEMORY[0x277D35078]);
            }
          }

          else
          {
            v70 = v99;
            (*(v53 + 32))(v99, v67, v52);
          }

          v71 = v102;
          v72 = swift_allocBox();
          v74 = v73;
          (v87[0])(v70, 0, 1, v52);
          v75 = v103;
          sub_2197613B4(v70, v103 + v71[10], &qword_280EE6350, MEMORY[0x277D35078]);
          *(v75 + v71[13]) = 0;
          sub_2197613B4(v101, v75 + v71[12], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
          sub_21872D114(v75, v74, type metadata accessor for CampaignRouteModel);
          v107 = v72 | 0x1000000000000006;
          v76 = v89;
          sub_219BEB484();
          sub_218932F9C(v107);

          if (v76)
          {
            sub_219BF61F4();
            sub_2186F20D4();
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_219C09BA0;
            v105 = 0;
            v106 = 0xE000000000000000;
            v107 = v76;
            sub_2186CFDE4(0, &qword_280E8B580);
            sub_219BF7484();
            v78 = v105;
            v79 = v106;
            *(v77 + 56) = MEMORY[0x277D837D0];
            *(v77 + 64) = sub_2186FC3BC();
            *(v77 + 32) = v78;
            *(v77 + 40) = v79;
            v80 = sub_219BF6F44();
            sub_219BE5314();
          }

          v81 = v104;
          v82 = v93;
          v83 = [objc_opt_self() standardUserDefaults];
          v84 = v95 + 1;
          if (!__OFADD__(v95, 1))
          {
            v85 = v83;
            v86 = sub_219BF53D4();
            [v85 setInteger:v84 forKey:v86];

            v50 = v81;
            goto LABEL_33;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v49 = sub_219BF6F74();
      sub_219BF6214();
      sub_219BE5314();

      goto LABEL_20;
    }

LABEL_35:
    __break(1u);
    return;
  }

  sub_2186C66AC();
  v104 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();
  v24 = v104;
}

id sub_219761104(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_219BF53D4();
  v6 = [v4 integerForKey_];

  v7 = [a2 audioUpsellInstanceID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_219BF5414();
    v11 = v10;
    v12 = [v3 standardUserDefaults];
    v13 = sub_219BF53D4();
    v14 = [v12 stringForKey_];

    if (v14)
    {
      v15 = sub_219BF5414();
      v17 = v16;

      if (v15 == v9 && v17 == v11)
      {

        return v6;
      }

      v18 = sub_219BF78F4();

      if (v18)
      {

        return v6;
      }
    }

    else
    {
    }

    v19 = [v3 standardUserDefaults];
    v20 = sub_219BF53D4();
    [v19 setObject:v8 forKey:v20];

    return 0;
  }

  return v6;
}

uint64_t sub_2197612F8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219761358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218729EA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197613B4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218729EA8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_219761420(uint64_t a1, void *a2)
{
  result = [v2 userInfo];
  if (result)
  {
    v5 = result;
    v6 = sub_219BF5214();

    v7 = [v2 activityType];
    v8 = sub_219BF5414();
    v10 = v9;

    [v2 _executionContext];
    v11 = [v2 interaction];
    sub_218D16ED0(v8, v10, v6, v11, &v16);

    v12 = v16;
    if (((v16 >> 58) & 0x3C | (v16 >> 1) & 3) == 0xC)
    {
      v13 = [objc_opt_self() currentDevice];
      v14 = [v13 userInterfaceIdiom];

      if (v14 > 1 || v14 == -1)
      {
LABEL_10:
        sub_218932F9C(v12);
        return 0;
      }

      if (v14)
      {
        if (v14 == 1)
        {
          v15 = [a2 horizontalSizeClass];
          sub_218932F9C(v12);
          return v15 == 1;
        }

        goto LABEL_10;
      }
    }

    sub_218932F9C(v12);
    return 1;
  }

  return result;
}

uint64_t sub_219761638(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C8129C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_219767FEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2197616A4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  sub_21976A0A4(0, &qword_280EE5ED0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C850]);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C860]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_219769C48(0, &qword_280EE5EB0, &qword_280EE5EB8, v6);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_loadedTable;
  swift_beginAccess();
  sub_219769CBC(v1 + v18, v17);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    sub_219769F70(v17, &qword_280EE5EB0, &qword_280EE5EB8, MEMORY[0x277D6C860]);
    v23 = v1;
    sub_219BE2CF4();
    sub_218FABB04();
    sub_219BE5764();

    if (v2)
    {
      return result;
    }

    sub_219BE54F4();
    v20 = v25;
    sub_219BE54C4();
    (*(v24 + 8))(v5, v20);
    (*(v9 + 16))(v15, v11, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    v21 = v23;
    swift_beginAccess();
    sub_219769D44(v15, v21 + v18);
    swift_endAccess();
    sub_219761AA4(v11);
    v17 = v11;
  }

  return (*(v9 + 32))(v26, v17, v8);
}

uint64_t sub_219761AA4(uint64_t a1)
{
  v228 = a1;
  sub_21976A0A4(0, &qword_280EE5EE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C840]);
  v216 = v1;
  v212 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v215 = &v182 - v2;
  sub_21976987C();
  MEMORY[0x28223BE20](v3 - 8);
  v206 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21976A0A4(0, &qword_280EE5EC8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C850]);
  v217 = v5;
  v199 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v202 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v200 = &v182 - v9;
  MEMORY[0x28223BE20](v8);
  v211 = &v182 - v10;
  v222 = sub_219BE5454();
  v198 = *(v222 - 8);
  v11 = MEMORY[0x28223BE20](v222);
  v205 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v182 - v13;
  sub_21976A0A4(0, &qword_280EE5EC0, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C858]);
  v210 = v14;
  j = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v194 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v208 = &v182 - v17;
  sub_219767930();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v220 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v219 = &v182 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v213 = &v182 - v24;
  MEMORY[0x28223BE20](v23);
  v209 = &v182 - v25;
  v26 = MEMORY[0x277D6C848];
  sub_21976A0A4(0, &qword_280EE5ED8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C848]);
  v28 = *(v27 - 8);
  v225 = v27;
  v226 = v28;
  v29 = MEMORY[0x28223BE20](v27);
  v221 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v223 = &v182 - v31;
  v32 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v227 = v33;
  v224 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v203 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v214 = &v182 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v195 = &v182 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v218 = &v182 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v207 = &v182 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v201 = &v182 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v182 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v182 - v49;
  sub_21976A0A4(0, &qword_280EE5EE0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v26);
  v52 = v51;
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v55 = &v182 - v54;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v32);
  sub_219BE54B4();
  v56 = v244;
  v57 = sub_219BE5484();
  v58 = v56;
  if (v56)
  {
    return (*(v53 + 8))(v55, v52);
  }

  v60 = v57;
  v228 = v50;
  v190 = v48;
  (*(v53 + 8))(v55, v52);
  v61 = *(v60 + 16);
  v62 = MEMORY[0x277D84F90];
  v196 = v60;
  if (v61)
  {
    v244 = 0;
    *&v230 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v61, 0);
    v62 = v230;
    v63 = (v60 + 32);
    do
    {
      v240[0] = *v63;
      v64 = v63[1];
      v65 = v63[2];
      v66 = v63[4];
      v240[3] = v63[3];
      v240[4] = v66;
      v240[1] = v64;
      v240[2] = v65;
      v67 = sub_218AD7F58(v240, &v235);
      v68 = MEMORY[0x21CEBC2B0](v67);
      v70 = v69;
      sub_218FACF88(v240);
      *&v230 = v62;
      v72 = *(v62 + 16);
      v71 = *(v62 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_21870B65C((v71 > 1), v72 + 1, 1);
        v62 = v230;
      }

      *(v62 + 16) = v72 + 1;
      v73 = v62 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      v63 += 5;
      --v61;
    }

    while (v61);
    v58 = v244;
  }

  v74 = v228;
  sub_21976338C(v228);
  v75 = v225;
  v76 = v226;
  v77 = v223;
  v78 = v224;
  if (v58)
  {
  }

  v79 = v74;
  v80 = v227;
  sub_219BE54B4();
  v81 = v78 + 8;
  v82 = *(v78 + 1);
  v83 = v80;
  v84 = v81;
  v82(v79, v83);
  v85 = sub_219BE5484();
  v192 = v82;
  v86 = *(v76 + 8);
  v87 = v85;
  v226 = v76 + 8;
  v184 = v86;
  v86(v77, v75);
  v88 = *(v87 + 2);
  v193 = v84;
  v244 = 0;
  if (v88)
  {
    *&v230 = MEMORY[0x277D84F90];
    v223 = v87;
    sub_21870B65C(0, v88, 0);
    v89 = v223;
    v90 = v230;
    v228 = (v88 - 1);
    for (i = 32; ; i += 80)
    {
      v92 = &v89[i];
      v240[0] = *v92;
      v93 = *(v92 + 1);
      v94 = *(v92 + 2);
      v95 = *(v92 + 4);
      v240[3] = *(v92 + 3);
      v240[4] = v95;
      v240[1] = v93;
      v240[2] = v94;
      v96 = sub_218AD7EA8(v240, &v235);
      v97 = MEMORY[0x21CEBC2B0](v96);
      v99 = v98;
      sub_218FACFB8(v240);
      *&v230 = v90;
      v101 = *(v90 + 16);
      v100 = *(v90 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_21870B65C((v100 > 1), v101 + 1, 1);
        v90 = v230;
      }

      *(v90 + 16) = v101 + 1;
      v102 = v90 + 16 * v101;
      *(v102 + 32) = v97;
      *(v102 + 40) = v99;
      if (!v228)
      {
        break;
      }

      --v228;
      v89 = v223;
    }
  }

  else
  {

    v90 = MEMORY[0x277D84F90];
  }

  v103 = v229;
  v104 = sub_218845F78(v90);

  v105 = sub_218EB58BC(v62, v104);

  v106 = *(v105 + 56);
  v185 = v105 + 56;
  v107 = 1 << *(v105 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v109 = v108 & v106;
  v110 = OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_secondaryLoadedTable;
  v188 = v105;

  v228 = v110;
  swift_beginAccess();
  v111 = 0;
  v112 = (v107 + 63) >> 6;
  v223 = v224 + 48;
  v191 = (v224 + 32);
  v189 = v199 + 1;
  v187 = (v224 + 16);
  v186 = (v224 + 56);
  v113 = v198 + 1;
  v198 = (j + 8);
  v199 = v113;
  v114 = v211;
  v115 = v204;
  for (j = v112; ; v112 = j)
  {
    v116 = v212;
    if (!v109)
    {
      break;
    }

    v117 = v111;
LABEL_27:
    v118 = *(v188 + 48) + ((v117 << 10) | (16 * __clz(__rbit64(v109))));
    v119 = *(v118 + 8);
    v224 = *v118;
    v120 = v209;
    sub_21976990C(&v228[v229], v209, sub_219767930);
    v121 = v227;
    if ((*v223)(v120, 1, v227) == 1)
    {
      v122 = v119;

      sub_219769BE8(v120, sub_219767930);
      sub_219BE2CF4();
      sub_218FAC78C();
      v123 = v201;
      v124 = v244;
      sub_219BE5764();

      if (v124)
      {
      }

      v183 = v122;
      v121 = v227;
      sub_219BE54F4();
      v125 = v217;
      sub_219BE54C4();
      v244 = 0;
      (*v189)(v114, v125);
      v126 = v213;
      (*v187)(v213, v123, v121);
      (*v186)(v126, 0, 1, v121);
      v128 = v228;
      v127 = v229;
      swift_beginAccess();
      sub_219769974(v126, v127 + v128);
      swift_endAccess();
      v129 = v190;
      (*v191)(v190, v123, v121);
      v115 = v204;
      v119 = v183;
    }

    else
    {
      v129 = v190;
      (*v191)(v190, v120, v121);
    }

    v130 = v208;
    sub_219BE5504();
    v192(v129, v121);
    *(&v240[1] + 1) = MEMORY[0x277D837D0];
    *&v240[2] = MEMORY[0x277D6C998];
    *&v240[0] = v224;
    *(&v240[0] + 1) = v119;

    sub_219BE56F4();
    __swift_destroy_boxed_opaque_existential_1(v240);
    v131 = v210;
    v132 = v244;
    sub_219BE54D4();
    v244 = v132;
    if (v132)
    {

      (*v199)(v115, v222);
      (*v198)(v130, v131);
    }

    v109 &= v109 - 1;

    (*v199)(v115, v222);
    (*v198)(v130, v131);
    v111 = v117;
    v103 = v229;
    v114 = v211;
  }

  while (1)
  {
    v117 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v117 >= v112)
    {

      v133 = v196;
      v209 = *(v196 + 16);
      if (!v209)
      {
      }

      result = swift_beginAccess();
      v134 = 0;
      v208 = (v116 + 8);
      v135 = 32;
      v137 = v218;
      v136 = v219;
      v138 = v221;
      v139 = v227;
      while (2)
      {
        if (v134 >= *(v133 + 16))
        {
          __break(1u);
          return result;
        }

        v243[0] = *(v133 + v135);
        v140 = *(v133 + v135 + 16);
        v141 = *(v133 + v135 + 32);
        v142 = *(v133 + v135 + 64);
        v243[3] = *(v133 + v135 + 48);
        v243[4] = v142;
        v243[1] = v140;
        v243[2] = v141;
        sub_218AD7F58(v243, v240);
        sub_218AD7F58(v243, v240);
        sub_218FACC0C(v243, v241);
        sub_21976990C(&v228[v103], v136, sub_219767930);
        v224 = *v223;
        if ((v224)(v136, 1, v139) == 1)
        {
          sub_219769BE8(v136, sub_219767930);
          sub_219BE2CF4();
          sub_218FAC78C();
          v143 = v244;
          sub_219BE5764();
          if (v143)
          {

            v244 = 0;
            v144 = v192;
            v159 = v220;

            break;
          }

          v157 = v200;
          sub_219BE54F4();
          v158 = v217;
          sub_219BE54C4();
          v244 = 0;
          (*v189)(v157, v158);
          v175 = v213;
          (*v187)(v213, v137, v139);
          (*v186)(v175, 0, 1, v139);
          v176 = v228;
          v177 = v229;
          swift_beginAccess();
          sub_219769974(v175, v177 + v176);
          swift_endAccess();
          v145 = v137;
          v138 = v221;
        }

        else
        {
          v145 = v136;
        }

        v146 = v207;
        (*v191)(v207, v145, v139);
        sub_219BE54B4();
        v144 = v192;
        v147 = (v192)(v146, v139);
        v148 = MEMORY[0x21CEBC2B0](v147);
        *(&v236 + 1) = MEMORY[0x277D837D0];
        *&v237 = MEMORY[0x277D6C998];
        *&v235 = v148;
        *(&v235 + 1) = v149;
        v150 = v138;
        v151 = v205;
        sub_219BE56F4();
        __swift_destroy_boxed_opaque_existential_1(&v235);
        sub_21976A0A4(0, &qword_280EE5EF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C838]);
        v153 = v206;
        (*(*(v152 - 8) + 56))(v206, 1, 1, v152);
        v154 = v225;
        v155 = v244;
        sub_219BE5494();
        if (v155)
        {

          sub_219769BE8(v153, sub_21976987C);
          (*v199)(v151, v222);
          v184(v150, v154);
          v244 = 0;
          v139 = v227;
          goto LABEL_42;
        }

        v244 = 0;
        sub_219769BE8(v153, sub_21976987C);
        (*v199)(v151, v222);
        v184(v150, v154);
        v235 = v240[0];
        v236 = v240[1];
        v237 = v240[2];
        v238 = v240[3];
        v239 = v240[4];
        v159 = v220;
        if (*&v240[0])
        {
          *v242 = *&v240[0];
          *&v242[24] = *(&v240[1] + 8);
          *&v242[40] = *(&v240[2] + 8);
          *&v242[56] = *(&v240[3] + 8);
          *&v242[72] = *(&v240[4] + 1);
          *&v242[8] = *(v240 + 8);
          v156 = sub_218FADFFC(v242, v241);
          v139 = v227;
          if (v156)
          {
            sub_219769DCC(&v235, &qword_27CC1EC40, &type metadata for RecipeBoxSearchEntity2);
            sub_218FACFB8(v241);
            result = sub_218FACF88(v243);
            v138 = v221;
            v103 = v229;
LABEL_53:
            ++v134;
            v135 += 80;
            v137 = v218;
            v136 = v219;
            v133 = v196;
            if (v209 == v134)
            {
            }

            continue;
          }

          v178 = v195;
          v179 = v244;
          sub_21976338C(v195);
          if (v179)
          {
            goto LABEL_64;
          }

          v180 = v194;
          sub_219BE5504();
          v192(v178, v139);
          v144 = v192;
          v232 = *&v242[32];
          v233 = *&v242[48];
          v234 = *&v242[64];
          v230 = *v242;
          v231 = *&v242[16];
          v181 = v210;
          sub_219BE54E4();
          v244 = 0;
          (*v198)(v180, v181);
          sub_219769DCC(&v235, &qword_27CC1EC40, &type metadata for RecipeBoxSearchEntity2);
LABEL_42:
          v159 = v220;
        }

        else
        {
          v139 = v227;
        }

        break;
      }

      v103 = v229;
      sub_21976990C(&v228[v229], v159, sub_219767930);
      v160 = (v224)(v159, 1, v139);
      v211 = v135;
      v212 = v134;
      if (v160 == 1)
      {
        sub_219769BE8(v159, sub_219767930);
        sub_219BE2CF4();
        sub_218FAC78C();
        v161 = v203;
        v162 = v244;
        sub_219BE5764();
        v163 = v217;
        if (v162)
        {

          sub_218FACF88(v243);
          return sub_218FACFB8(v241);
        }

        v164 = v202;
        v165 = v227;
        sub_219BE54F4();
        sub_219BE54C4();
        v244 = 0;
        (*v189)(v164, v163);
        v166 = v213;
        (*v187)(v213, v161, v165);
        (*v186)(v166, 0, 1, v165);
        v167 = v228;
        v168 = v229;
        swift_beginAccess();
        sub_219769974(v166, v168 + v167);
        swift_endAccess();
        v169 = v161;
        v103 = v168;
        v139 = v165;
        v170 = v221;
        v144 = v192;
      }

      else
      {
        v169 = v159;
        v170 = v221;
      }

      v171 = v214;
      (*v191)(v214, v169, v139);
      v172 = v215;
      sub_219BE5474();
      v144(v171, v139);
      v240[2] = v241[2];
      v240[3] = v241[3];
      v240[4] = v241[4];
      v240[0] = v241[0];
      v240[1] = v241[1];
      v173 = v216;
      v174 = v244;
      sub_219BE5464();
      v244 = v174;
      if (v174)
      {
        (*v208)(v172, v173);
        sub_218FACF88(v243);

        return sub_218FACFB8(v241);
      }

      (*v208)(v172, v173);
      sub_218FACF88(v243);
      result = sub_218FACFB8(v241);
      v134 = v212;
      v138 = v170;
      v135 = v211;
      goto LABEL_53;
    }

    v109 = *(v185 + 8 * v117);
    ++v111;
    if (v109)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_64:

  sub_218FACF88(v243);
  sub_219769DCC(&v235, &qword_27CC1EC40, &type metadata for RecipeBoxSearchEntity2);
  return sub_218FACFB8(v241);
}

uint64_t sub_21976338C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  sub_21976A0A4(0, &qword_280EE5EC8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C850]);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_219767930();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_secondaryLoadedTable;
  swift_beginAccess();
  sub_21976990C(v1 + v17, v16, sub_219767930);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    sub_219769BE8(v16, sub_219767930);
    v22 = v1;
    sub_219BE2CF4();
    sub_218FAC78C();
    sub_219BE5764();

    if (v2)
    {
      return result;
    }

    sub_219BE54F4();
    v19 = v24;
    sub_219BE54C4();
    (*(v23 + 8))(v5, v19);
    (*(v8 + 16))(v14, v10, v7);
    (*(v8 + 56))(v14, 0, 1, v7);
    v20 = v22;
    swift_beginAccess();
    sub_219769974(v14, v20 + v17);
    swift_endAccess();
  }

  else
  {
    v10 = v16;
  }

  return (*(v8 + 32))(v25, v10, v7);
}

void sub_219763764(__int128 *a1)
{
  v64 = a1;
  sub_219769C48(0, &qword_27CC1EC28, &qword_27CC1EC30, MEMORY[0x277D6C838]);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45 - v4;
  v5 = sub_219BE5454();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21976A0A4(0, &qword_280EE5EE0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C848]);
  v48 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C860]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v50 = v1;
  sub_2197616A4(&v45 - v13);
  if (!v2)
  {
    v16 = v5;
    sub_219BE54B4();
    v17 = (*(v12 + 8))(v14, v11);
    v18 = v64;
    v19 = MEMORY[0x21CEBC2B0](v17);
    *(&v53 + 1) = MEMORY[0x277D837D0];
    *&v54 = MEMORY[0x277D6C998];
    *&v52 = v19;
    *(&v52 + 1) = v20;
    sub_219BE56F4();
    __swift_destroy_boxed_opaque_existential_1(&v52);
    sub_21976A0A4(0, &qword_27CC1EC30, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C838]);
    v22 = v47;
    (*(*(v21 - 8) + 56))(v47, 1, 1, v21);
    sub_219BE5494();
    v23 = (v46 + 8);
    v24 = (v45 + 8);
    sub_219769F70(v22, &qword_27CC1EC28, &qword_27CC1EC30, MEMORY[0x277D6C838]);
    (*v23)(v49, v16);
    (*v24)(v9, v48);
    v52 = v57[0];
    v53 = v57[1];
    v54 = v57[2];
    v55 = v57[3];
    v56 = v57[4];
    if (!*&v57[0])
    {
      v15 = v18;
      goto LABEL_5;
    }

    v60 = *(&v57[1] + 8);
    v61 = *(&v57[2] + 8);
    v62 = *(&v57[3] + 8);
    v58 = *&v57[0];
    v63 = *(&v57[4] + 1);
    v59 = *(v57 + 8);
    if (sub_218FADFFC(&v58, v18))
    {
      if (qword_280EE5F38 != -1)
      {
        swift_once();
      }

      v33 = sub_219BE5434();
      __swift_project_value_buffer(v33, qword_280F62568);
      sub_218AD7F58(v18, v51);
      v26 = sub_219BE5414();
      v34 = sub_219BF61E4();
      sub_218FACF88(v18);
      if (!os_log_type_enabled(v26, v34))
      {
        goto LABEL_16;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51[0] = v36;
      *v35 = 136315138;
      v37 = MEMORY[0x21CEBC2B0]();
      v39 = sub_2186D1058(v37, v38, v51);

      *(v35 + 4) = v39;
      v40 = "RecipeBoxSearchStore will not add a recipe that is already in the store, recipeID=%s";
    }

    else
    {
      sub_2197641B4(&v58);
      sub_21976463C(v18);
      if (qword_280EE5F38 != -1)
      {
        swift_once();
      }

      v41 = sub_219BE5434();
      __swift_project_value_buffer(v41, qword_280F62568);
      sub_218AD7F58(v18, v51);
      v26 = sub_219BE5414();
      v34 = sub_219BF6214();
      sub_218FACF88(v18);
      if (!os_log_type_enabled(v26, v34))
      {
        goto LABEL_16;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51[0] = v36;
      *v35 = 136446210;
      v42 = MEMORY[0x21CEBC2B0]();
      v44 = sub_2186D1058(v42, v43, v51);

      *(v35 + 4) = v44;
      v40 = "RecipeBoxSearchStore successfully updated recipeID=%{public}s";
    }

    _os_log_impl(&dword_2186C1000, v26, v34, v40, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x21CECF960](v36, -1, -1);
    MEMORY[0x21CECF960](v35, -1, -1);
LABEL_16:
    sub_219769DCC(&v52, &qword_27CC1EC80, &type metadata for RecipeBoxSearchEntity);
    goto LABEL_17;
  }

  v15 = v64;
LABEL_5:
  sub_21976463C(v15);
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v25 = sub_219BE5434();
  __swift_project_value_buffer(v25, qword_280F62568);
  sub_218AD7F58(v15, v57);
  v26 = sub_219BE5414();
  v27 = sub_219BF6214();
  sub_218FACF88(v15);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v57[0] = v29;
    *v28 = 136446210;
    v30 = MEMORY[0x21CEBC2B0]();
    v32 = sub_2186D1058(v30, v31, v57);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2186C1000, v26, v27, "RecipeBoxSearchStore successfully added recipeID=%{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CECF960](v29, -1, -1);
    MEMORY[0x21CECF960](v28, -1, -1);
  }

LABEL_17:
}

uint64_t sub_2197641B4(__int128 *a1)
{
  v34 = a1;
  v2 = MEMORY[0x277D6C858];
  sub_21976A0A4(0, &qword_280EE5EC0, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C858]);
  v29 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v4;
  v5 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  sub_21976A0A4(0, &qword_27CC1EC78, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v2);
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v5);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = v41;
  result = sub_2197616A4(&v27 - v17);
  if (!v19)
  {
    v28 = v7;
    v41 = v1;
    sub_219BE5504();
    (*(v16 + 8))(v18, v15);
    v21 = v34;
    v22 = v34[3];
    v38 = v34[2];
    v39 = v22;
    v40 = v34[4];
    v23 = v34[1];
    v36 = *v34;
    v37 = v23;
    sub_219BE54E4();
    (*(v33 + 8))(v13, v11);
    sub_21976338C(v9);
    v24 = v31;
    v25 = v28;
    sub_219BE5504();
    (*(v30 + 8))(v9, v25);
    sub_218AD7F58(v21, &v36);
    sub_218FACC0C(v21, &v36);
    v26 = v29;
    sub_219BE54E4();
    v35[2] = v38;
    v35[3] = v39;
    v35[4] = v40;
    v35[0] = v36;
    v35[1] = v37;
    sub_218FACFB8(v35);
    return (*(v32 + 8))(v24, v26);
  }

  return result;
}

uint64_t sub_21976463C(__int128 *a1)
{
  v34 = a1;
  v2 = MEMORY[0x277D6C840];
  sub_21976A0A4(0, &qword_280EE5EE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C840]);
  v29 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v4;
  v5 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  sub_21976A0A4(0, &qword_27CC1EC88, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v2);
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v5);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = v41;
  result = sub_2197616A4(&v27 - v17);
  if (!v19)
  {
    v28 = v7;
    v41 = v1;
    sub_219BE5474();
    (*(v16 + 8))(v18, v15);
    v21 = v34;
    v22 = v34[3];
    v38 = v34[2];
    v39 = v22;
    v40 = v34[4];
    v23 = v34[1];
    v36 = *v34;
    v37 = v23;
    sub_219BE5464();
    (*(v33 + 8))(v13, v11);
    sub_21976338C(v9);
    v24 = v31;
    v25 = v28;
    sub_219BE5474();
    (*(v30 + 8))(v9, v25);
    sub_218AD7F58(v21, &v36);
    sub_218FACC0C(v21, &v36);
    v26 = v29;
    sub_219BE5464();
    v35[2] = v38;
    v35[3] = v39;
    v35[4] = v40;
    v35[0] = v36;
    v35[1] = v37;
    sub_218FACFB8(v35);
    return (*(v32 + 8))(v24, v26);
  }

  return result;
}