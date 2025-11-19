uint64_t sub_219467DFC(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194680A8(a1, v7);
  sub_21946AC20(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_219468704(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_21946AC88(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

void sub_219468028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2194680A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for SportsOnboardingTagFeedGroupConfigData() - 8;
  MEMORY[0x28223BE20](v30);
  v29 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219468704(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = v26 - v5;
  v6 = sub_219BEF554();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v26[0] = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BED8D4();
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  sub_219465EC4();
  v16 = sub_219BEDCB4();
  v26[1] = v17;
  v26[2] = v16;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsOnboardingTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  v18 = sub_219BEE5D4();
  (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
  sub_219BED854();
  v19 = v29;
  sub_219BEDD14();
  v20 = (v19 + *(v30 + 32));
  v22 = *v20;
  v21 = v20[1];

  sub_21946AC88(v19, type metadata accessor for SportsOnboardingTagFeedGroupConfigData);
  v23 = v31;
  (*(v13 + 32))(v31, v15, v28);
  v24 = (v23 + *(type metadata accessor for SportsOnboardingTagFeedGroup() + 20));
  *v24 = v22;
  v24[1] = v21;
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2194684DC()
{
  v0 = type metadata accessor for SportsOnboardingTagFeedGroupConfigData();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_219BF7314();

  v8 = 0xD000000000000013;
  v9 = 0x8000000219D21F40;
  sub_219465EC4();
  sub_219BEDD14();
  v4 = &v3[*(v1 + 32)];
  v5 = *v4;
  v6 = *(v4 + 1);

  sub_21946AC88(v3, type metadata accessor for SportsOnboardingTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  sub_219BEF194();
}

void sub_219468704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_219468768(uint64_t a1)
{
  v2 = type metadata accessor for SportsOnboardingTagFeedGroupEmitter();
  v3 = v2 - 8;
  v19 = *(v2 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1((a1 + *(v3 + 36)), *(a1 + *(v3 + 36) + 24));
  v20 = sub_2191ABC74(1);
  __swift_project_boxed_opaque_existential_1((a1 + *(v3 + 40)), *(a1 + *(v3 + 40) + 24));
  v5 = off_282A790C0[0];
  type metadata accessor for SportsRecommendationManager();
  v6 = v5();
  sub_219BEF0B4();
  v7 = *(v21 + 64);
  swift_unknownObjectRetain();

  result = [v7 respondsToSelector_];
  if (result)
  {
    v9 = [v7 editorialFallbackSportsTopicTagIds];
    swift_unknownObjectRelease();
    v18 = v6;
    if (v9)
    {
      sub_219BF5924();
    }

    v10 = off_282A4D758;
    type metadata accessor for TagService();
    v10();

    MEMORY[0x28223BE20](v11);
    *(&v18 - 2) = a1;
    sub_219BF29D4();
    sub_219BE3204();
    sub_21946AC20(a1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsOnboardingTagFeedGroupEmitter);
    v12 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v13 = swift_allocObject();
    sub_21946A964(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SportsOnboardingTagFeedGroupEmitter);
    v14 = sub_219BE2E54();
    sub_219468704(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_219BE2F64();

    v15 = sub_219BE2E54();
    sub_218845868();
    sub_219BE2F64();

    v16 = sub_219BE2E54();
    sub_219BE3054();

    v17 = sub_219BE31A4();

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219468B64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a2;
  v53 = a5;
  v54 = 0;
  v10 = sub_219BE4F54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE4EF4();
  v15 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v16 = *(v14 + 16);
  v56 = a4;
  if (v16)
  {
    v50 = a7;
    v51 = a6;
    v19 = *(v11 + 16);
    v17 = v11 + 16;
    v18 = v19;
    v20 = *(v17 + 64);
    v49[1] = v14;
    v21 = v14 + ((v20 + 32) & ~v20);
    v22 = *(v17 + 56);
    v55 = MEMORY[0x277D84F90];
    v19(v13, v21, v10);
    while (1)
    {
      v23 = [sub_219BE4F44() asSports];
      swift_unknownObjectRelease();
      v24 = (*(v17 - 8))(v13, v10);
      if (v23)
      {
        MEMORY[0x21CECC690](v24);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v55 = v58;
      }

      v21 += v22;
      if (!--v16)
      {
        break;
      }

      v18(v13, v21, v10);
    }

    a7 = v50;
    a4 = v56;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v58 = v15;
  v25 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_36:
    v26 = sub_219BF7214();
  }

  else
  {
    v26 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v28 = a4 & 0xC000000000000001;
  v29 = MEMORY[0x277D84F90];
  while (v26 != v27)
  {
    if (v28)
    {
      v30 = MEMORY[0x21CECE0F0](v27, v56);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v27 >= *(v25 + 16))
      {
        goto LABEL_35;
      }

      v30 = v56[v27 + 4];

      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    a4 = [*(v30 + 16) asSports];

    ++v27;
    if (a4)
    {
      MEMORY[0x21CECC690](v32);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v29 = v58;
      v27 = v31;
    }
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C0B8C0;
  v34 = v52;
  v35 = v55;
  if (v52 >> 62)
  {
    v46 = v33;
    v36 = sub_219BF7214();
    v33 = v46;
  }

  else
  {
    v36 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = MEMORY[0x277D83B88];
  v38 = MEMORY[0x277D83C10];
  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = v38;
  *(v33 + 32) = v36;
  if (v35 >> 62)
  {
    v47 = v33;
    v39 = sub_219BF7214();
    v33 = v47;
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 72) = v39;
  if (v29 >> 62)
  {
    v48 = v33;
    v40 = sub_219BF7214();
    v33 = v48;
  }

  else
  {
    v40 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v33 + 136) = v37;
  *(v33 + 144) = v38;
  *(v33 + 112) = v40;
  sub_219BF6214();
  sub_219BE5314();

  v57 = v34;

  sub_2191EE304(v35);
  sub_2191EE304(v29);

  sub_2191EE304(v41);
  v58 = v57;
  sub_218845868();
  sub_21946ABD8(&qword_280E8EC80, sub_218845868);
  v42 = sub_219BF56E4();

  v43 = sub_2194690CC(a7, v42);

  v44 = sub_219469A74(a7, v43);

  return v44;
}

uint64_t sub_2194690CC(uint64_t a1, char *a2)
{
  v66 = sub_219BF1904();
  v3 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219468028(0, &unk_280E924B0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31E28]);
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v60 - v11;
  sub_219BEF0B4();
  v12 = *(v77 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController);

  v13 = [v12 mutedTagIDs];

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v61 = sub_219BF5924();
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

  v15 = sub_219BEF0A4();
  v16 = v76;
  v72 = *(v15 + 16);
  v60 = a2;
  if (v72)
  {
    a2 = 0;
    v71 = v15 + ((v74[80] + 32) & ~v74[80]);
    v69 = (v74 + 8);
    v70 = v74 + 16;
    v64 = (v3 + 8);
    v17 = v75;
    v68 = v15;
    v62 = v5;
    v63 = v7;
    while (1)
    {
      if (a2 >= *(v15 + 16))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      (*(v74 + 2))(v16, v71 + *(v74 + 9) * a2, v17);
      sub_219BEDC54();
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        break;
      }

      sub_21946AC88(v7, type metadata accessor for TagFeedGroup);
      (*v69)(v16, v17);
      v21 = MEMORY[0x277D84F90];
LABEL_25:
      v30 = *(v21 + 16);
      v13 = *(v14 + 2);
      v31 = &v13[v30];
      if (__OFADD__(v13, v30))
      {
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 > *(v14 + 3) >> 1)
      {
        if (v13 <= v31)
        {
          v33 = &v13[v30];
        }

        else
        {
          v33 = v13;
        }

        v14 = sub_218840D24(isUniquelyReferenced_nonNull_native, v33, 1, v14);
      }

      v17 = v75;
      if (*(v21 + 16))
      {
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v30)
        {
          goto LABEL_66;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v34 = *(v14 + 2);
          v35 = __OFADD__(v34, v30);
          v36 = v34 + v30;
          if (v35)
          {
            goto LABEL_67;
          }

          *(v14 + 2) = v36;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_64;
        }
      }

      ++a2;
      v16 = v76;
      v15 = v68;
      if (a2 == v72)
      {

        a2 = v60;
        goto LABEL_39;
      }
    }

    sub_21946A964(v7, v73, type metadata accessor for SportsOnboardingTagFeedGroup);
    v13 = v65;
    sub_219BED874();
    v18 = sub_219BF1864();
    (*v64)(v13, v66);
    if (v18 >> 62)
    {
      v19 = sub_219BF7214();
      if (v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_12:
        v77 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          goto LABEL_68;
        }

        v67 = v14;
        v20 = 0;
        v21 = v77;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x21CECE0F0](v20, v18);
          }

          else
          {
            v22 = *(v18 + 8 * v20 + 32);
            swift_unknownObjectRetain();
          }

          v23 = [v22 identifier];
          v24 = sub_219BF5414();
          v26 = v25;
          swift_unknownObjectRelease();

          v77 = v21;
          v28 = *(v21 + 16);
          v27 = *(v21 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_21870B65C((v27 > 1), v28 + 1, 1);
            v21 = v77;
          }

          ++v20;
          *(v21 + 16) = v28 + 1;
          v29 = v21 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
        }

        while (v19 != v20);

        sub_21946AC88(v73, type metadata accessor for SportsOnboardingTagFeedGroup);
        (*v69)(v76, v75);
        v14 = v67;
        goto LABEL_24;
      }
    }

    sub_21946AC88(v73, type metadata accessor for SportsOnboardingTagFeedGroup);
    (*v69)(v76, v17);
    v21 = MEMORY[0x277D84F90];
LABEL_24:
    v7 = v63;
    goto LABEL_25;
  }

LABEL_39:
  v77 = v61;

  sub_2191ED3E8(v37);
  v13 = sub_218845F78(v77);

  v78 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_69:
    v38 = sub_219BF7214();
    if (v38)
    {
      goto LABEL_41;
    }

LABEL_70:
    v52 = MEMORY[0x277D84F90];
    goto LABEL_71;
  }

  v38 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_70;
  }

LABEL_41:
  v39 = 0;
  v75 = a2 & 0xFFFFFFFFFFFFFF8;
  v76 = (a2 & 0xC000000000000001);
  v74 = a2 + 32;
  v40 = v13 + 56;
  while (v76)
  {
    v41 = MEMORY[0x21CECE0F0](v39, v60);
    v35 = __OFADD__(v39++, 1);
    if (v35)
    {
      goto LABEL_60;
    }

LABEL_47:
    a2 = v14;
    v42 = [v41 identifier];
    v43 = sub_219BF5414();
    v45 = v44;

    if (*(v13 + 2) && (sub_219BF7AA4(), sub_219BF5524(), v46 = sub_219BF7AE4(), v47 = -1 << v13[32], v48 = v46 & ~v47, ((*&v40[(v48 >> 3) & 0xFFFFFFFFFFFFFF8] >> v48) & 1) != 0))
    {
      v49 = ~v47;
      while (1)
      {
        v50 = (*(v13 + 6) + 16 * v48);
        v51 = *v50 == v43 && v50[1] == v45;
        if (v51 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*&v40[(v48 >> 3) & 0xFFFFFFFFFFFFFF8] >> v48) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_42:

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    v14 = a2;
    if (v39 == v38)
    {
      goto LABEL_61;
    }
  }

  if (v39 >= *(v75 + 16))
  {
    goto LABEL_65;
  }

  v41 = *&v74[8 * v39];
  swift_unknownObjectRetain();
  v35 = __OFADD__(v39++, 1);
  if (!v35)
  {
    goto LABEL_47;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  v52 = v78;
LABEL_71:

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_219C0B8C0;
  if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
  {
    v54 = sub_219BF7214();
  }

  else
  {
    v54 = *(v52 + 16);
  }

  v55 = MEMORY[0x277D83B88];
  v56 = MEMORY[0x277D83C10];
  *(v53 + 56) = MEMORY[0x277D83B88];
  *(v53 + 64) = v56;
  *(v53 + 32) = v54;
  v57 = *(v61 + 16);

  *(v53 + 96) = v55;
  *(v53 + 104) = v56;
  *(v53 + 72) = v57;
  v58 = *(v14 + 2);

  *(v53 + 136) = v55;
  *(v53 + 144) = v56;
  *(v53 + 112) = v58;
  sub_219BF6214();
  sub_219BE5314();

  return v52;
}

uint64_t sub_219469A74(uint64_t a1, unint64_t a2)
{
  v44 = a2;
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(type metadata accessor for SportsOnboardingTagFeedGroupEmitter() + 20);
  v9 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  v43 = v8;
  v45 = a1;
  sub_219BEF134();
  sub_219BEF524();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = v47;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v12 = qword_280F61708;
  sub_2186F20D4();
  v42[1] = v13;
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_219C09BA0;
  if (v11)
  {
    v16 = 0x636572506D616574;
  }

  else
  {
    v16 = 0x746C7561666564;
  }

  if (v11)
  {
    v17 = 0xEE0065636E656465;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_2186FC3BC();
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_219BF6214();
  v42[2] = v12;
  sub_219BE5314();

  v18 = sub_218D0E668(v44, v11);
  v19 = *(v43 + *(v9 + 24));
  sub_219BEF134();
  v20 = v19;
  sub_219BEF524();
  v10(v7, v4);
  v22 = v46;
  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    v19 = v18 >> 62;
    if (!(v18 >> 62))
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 >= v46)
      {
        v24 = v46;
      }

      else
      {
        v24 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v46)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v23 >= v25)
      {
        goto LABEL_18;
      }

      goto LABEL_56;
    }
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v21;
  }

  v4 = sub_219BF7214();
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v4 >= v22)
    {
      v41 = v22;
    }

    else
    {
      v41 = v4;
    }

    if (v4 < 0)
    {
      v41 = v22;
    }

    if (v22)
    {
      v25 = v41;
    }

    else
    {
      v25 = 0;
    }

    if (sub_219BF7214() >= v25)
    {
LABEL_18:
      if ((v18 & 0xC000000000000001) != 0 && v25)
      {
        sub_2186D85DC();

        v26 = 0;
        do
        {
          v27 = v26 + 1;
          sub_219BF7334();
          v26 = v27;
        }

        while (v25 != v27);
        if (!v19)
        {
LABEL_23:
          v28 = 0;
          v29 = v18 & 0xFFFFFFFFFFFFFF8;
          v30 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v31 = (2 * v25) | 1;
          if ((v31 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        }
      }

      else
      {

        if (!v19)
        {
          goto LABEL_23;
        }
      }

      v29 = sub_219BF7564();
      v28 = v32;
      v31 = v33;
      if ((v33 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      v35 = v30;
      sub_219BF7934();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x277D84F90];
      }

      v37 = *(v36 + 16);

      if (__OFSUB__(v31 >> 1, v28))
      {
        __break(1u);
      }

      else if (v37 == (v31 >> 1) - v28)
      {
        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_35;
        }

        v4 = MEMORY[0x277D84F90];
LABEL_34:
        swift_unknownObjectRelease();
LABEL_35:
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_219C09EC0;
        if (v19)
        {
          v38 = sub_219BF7214();
        }

        else
        {
          v38 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = MEMORY[0x277D83B88];
        v18 = MEMORY[0x277D83C10];
        *(v20 + 56) = MEMORY[0x277D83B88];
        *(v20 + 64) = v18;
        *(v20 + 32) = v38;
        if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
        {
          v39 = *(v4 + 16);
LABEL_41:
          *(v20 + 96) = v22;
          *(v20 + 104) = v18;
          *(v20 + 72) = v39;
          sub_219BF6214();
          sub_219BE5314();

          return v4;
        }

LABEL_57:
        v39 = sub_219BF7214();
        goto LABEL_41;
      }

      swift_unknownObjectRelease();
      v30 = v35;
LABEL_27:
      sub_218B673FC(v29, v30, v28, v31);
      v4 = v34;
      goto LABEL_34;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_219469F5C()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_21946A08C(uint64_t a1)
{
  v2 = type metadata accessor for SportsOnboardingTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 40)), *(a1 + *(v2 + 40) + 24));
  return sub_219BF4434();
}

uint64_t sub_21946A0E8()
{
  sub_219BF29B4();
  sub_219BF3DD4();

  type metadata accessor for SportsOnboardingTagFeedGroupEmitter();
  v0 = off_282A4D758;
  type metadata accessor for TagService();
  v1 = v0();

  return v1;
}

uint64_t sub_21946A18C(uint64_t *a1)
{
  v1 = *a1;
  v9 = MEMORY[0x277D84F90];
  if (*a1 >> 62)
  {
LABEL_18:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x21CECE0F0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v6 = [*(v4 + 16) asSports];

    ++v3;
    if (v6)
    {
      MEMORY[0x21CECC690](v7);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v3 = v5;
    }
  }

  sub_219468704(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21946A358()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();

  sub_219468704(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21946A4EC(unint64_t a1)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_33:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_31;
      }
    }

    if ((v3 & 1) == 0)
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x21CECC690](v7);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      swift_unknownObjectRelease();
      v4 = v13;
      goto LABEL_7;
    }

    v8 = v4 >> 62;
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    result = sub_219BF7214();
    if (result < 0)
    {
      break;
    }

    result = sub_219BF7214();
    if (result < 0)
    {
      goto LABEL_37;
    }

    v12 = sub_219BF7214();
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_17:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v8)
      {
        if (v10 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if (!v8)
    {
      goto LABEL_5;
    }

    sub_219BF7214();
LABEL_5:
    v4 = sub_219BF7364();
LABEL_6:
    sub_2194B3F84(0, 0, 1, v5);
    swift_unknownObjectRelease();
    v13 = v4;
LABEL_7:
    ++v3;
    if (v6 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_21946A754()
{
  if (!qword_280ED98B8[0])
  {
    sub_219BE4F14();
    sub_219468704(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_218845868();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, qword_280ED98B8);
    }
  }
}

uint64_t sub_21946A818(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for SportsOnboardingTagFeedGroupEmitter() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219468B64(a1, a2, a3, a4, a5, v5 + v12, v13);
}

uint64_t sub_21946A8E4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  v7 = *(a1 + 1);
  sub_21946A754();
  result = v5(v6, v7, &a1[v8[12]], *&a1[v8[16]], *&a1[v8[20]]);
  *a2 = result;
  return result;
}

uint64_t sub_21946A964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_6Tm_1()
{
  v1 = (type metadata accessor for SportsOnboardingTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219465EC4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsOnboardingTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_21946ABD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21946AC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21946AC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21946ACE8()
{
  result = qword_280EE7670;
  if (!qword_280EE7670)
  {
    sub_219468704(255, &qword_280EE7668, type metadata accessor for SportsOnboardingTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7670);
  }

  return result;
}

id PaywallViewData.init(viewSessionID:viewType:viewAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v32 = a1;
  v33 = a2;
  ObjectType = swift_getObjectType();
  sub_21946C3C8(0, &qword_27CC1A6A0, MEMORY[0x277D2D878]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v28 = sub_219BDF074();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21946C3C8(0, &qword_27CC1A6A8, MEMORY[0x277D2F408]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_219BE1544();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BE1524();
  v18 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1534();
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    (*(v15 + 104))(v17, *MEMORY[0x277D2F3F0], v14);
    if (v21(v13, 1, v14) != 1)
    {
      sub_21946B248(v13, &qword_27CC1A6A8, MEMORY[0x277D2F408]);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  sub_219BDF064();
  v22 = *(v9 + 48);
  v23 = v28;
  if (v22(v8, 1, v28) == 1)
  {
    (*(v9 + 104))(v31, *MEMORY[0x277D2D850], v23);
    if (v22(v8, 1, v23) != 1)
    {
      sub_21946B248(v8, &qword_27CC1A6A0, MEMORY[0x277D2D878]);
    }
  }

  else
  {
    (*(v9 + 32))(v31, v8, v23);
  }

  sub_219BE1514();
  v24 = v35;
  (*(v18 + 32))(v35 + OBJC_IVAR___NUPaywallViewData_viewData, v20, v27);
  v36.receiver = v24;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t sub_21946B248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21946C3C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id PaywallViewData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaywallGroupData.__allocating_init(groupType:groupID:groupCount:groupPosition:groupedArticleIDs:groupedIssueIDs:groupedTagIDs:groupedRecipeIDs:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v34 = a3;
  v37 = a6;
  v38 = a7;
  v35 = a4;
  v36 = a5;
  v31 = a1;
  v32 = a2;
  sub_21946C3C8(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  sub_21946C3C8(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_219BE16E4();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF584();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE16D4();
  v22 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);

  v25 = objc_allocWithZone(v8);
  (*(v19 + 104))(v21, *MEMORY[0x277D2DB58], v18);
  v26 = v31;
  FCFeedGroupType.groupType()(v31, v17);
  sub_21946BB38(v26, v14);
  v27 = sub_219BE0674();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  v28 = sub_219BDF474();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  sub_219BE15E4();
  (*(v22 + 32))(v25 + OBJC_IVAR___NUPaywallGroupData_groupData, v24, v30);
  v39.receiver = v25;
  v39.super_class = v8;
  return objc_msgSendSuper2(&v39, sel_init);
}

id PaywallGroupData.init(groupType:groupID:groupCount:groupPosition:groupedArticleIDs:groupedIssueIDs:groupedTagIDs:groupedRecipeIDs:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a6;
  v35 = a8;
  v36 = a3;
  v41 = a7;
  v37 = a4;
  v38 = a5;
  v34 = a2;
  v32[1] = a9;
  ObjectType = swift_getObjectType();
  sub_21946C3C8(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - v11;
  sub_21946C3C8(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v32 - v14;
  v16 = sub_219BE16E4();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDF584();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BE16D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v20 + 104))(v22, *MEMORY[0x277D2DB58], v19);
  FCFeedGroupType.groupType()(a1, v18);
  v27 = ObjectType;
  sub_21946BB38(a1, v15);
  v28 = sub_219BE0674();
  (*(*(v28 - 8) + 56))(v15, 0, 1, v28);
  v29 = sub_219BDF474();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  sub_219BE15E4();
  v30 = v39;
  (*(v24 + 32))(v39 + OBJC_IVAR___NUPaywallGroupData_groupData, v26, v23);
  v42.receiver = v30;
  v42.super_class = v27;
  return objc_msgSendSuper2(&v42, sel_init);
}

uint64_t sub_21946BB38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 0x26)
  {
    v3 = MEMORY[0x277D2E6C0];
  }

  else
  {
    v3 = qword_278242CC8[a1];
  }

  v4 = *v3;
  v5 = sub_219BE0674();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_21946BD50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v5 = *a3;
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

id PaywallEventData.__allocating_init(paywallViewData:headline:channel:feed:paywallGroupData:referral:qToken:)(char *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v57 = a5;
  sub_21946C3C8(0, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v49 - v15;
  v16 = sub_219BE14C4();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21946C3C8(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - v20;
  sub_21946C3C8(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v49 - v23;
  v54 = v9;
  v25 = objc_allocWithZone(v9);
  v26 = OBJC_IVAR___NUPaywallViewData_viewData;
  v27 = OBJC_IVAR___NUPaywallEventData_viewData;
  v28 = sub_219BE1524();
  v29 = *(*(v28 - 8) + 16);
  v56 = a1;
  v29(&v25[v27], &a1[v26], v28);
  v55 = a2;
  if (a2)
  {
    swift_getObjectType();
    sub_219BF67F4();
    v30 = sub_219BDF0E4();
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
  }

  else
  {
    v31 = sub_219BDF0E4();
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  }

  sub_21946C41C(v24, &v25[OBJC_IVAR___NUPaywallEventData_articleData], &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  *&v25[OBJC_IVAR___NUPaywallEventData_channel] = a3;
  v58 = a3;
  if (a4)
  {
    swift_unknownObjectRetain();
    v32 = a4;
    v33 = a4;
    FCFeedType.feedType()([v33 feedType], v18);
    v34 = [v33 identifier];
    sub_219BF5414();

    sub_219BE1484();
    v35 = sub_219BE14A4();
    (*(*(v35 - 8) + 56))(v21, 0, 1, v35);
  }

  else
  {
    v32 = 0;
    v36 = sub_219BE14A4();
    (*(*(v36 - 8) + 56))(v21, 1, 1, v36);
    swift_unknownObjectRetain();
  }

  sub_21946C41C(v21, &v25[OBJC_IVAR___NUPaywallEventData_feedData], &qword_280EE8008, MEMORY[0x277D2F280]);
  v37 = v57;
  if (v57)
  {
    v38 = OBJC_IVAR___NUPaywallGroupData_groupData;
    v39 = sub_219BE16D4();
    v40 = *(v39 - 8);
    v41 = &v37[v38];
    v42 = v50;
    (*(v40 + 16))(v50, v41, v39);
    (*(v40 + 56))(v42, 0, 1, v39);
  }

  else
  {
    v43 = sub_219BE16D4();
    v42 = v50;
    (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
  }

  sub_21946C41C(v42, &v25[OBJC_IVAR___NUPaywallEventData_groupData], &unk_280EE7FA0, MEMORY[0x277D2F590]);
  v44 = v52;
  *&v25[OBJC_IVAR___NUPaywallEventData_referral] = v51;
  v45 = &v25[OBJC_IVAR___NUPaywallEventData_qToken];
  v46 = v53;
  *v45 = v44;
  *(v45 + 1) = v46;
  v59.receiver = v25;
  v59.super_class = v54;
  v47 = objc_msgSendSuper2(&v59, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v47;
}

id PaywallEventData.init(paywallViewData:headline:channel:feed:paywallGroupData:referral:qToken:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_21946C704(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

void sub_21946C3C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21946C41C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21946C3C8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_21946C704(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v48 = a7;
  v49 = a8;
  v47 = a6;
  v44 = a4;
  v45 = a5;
  ObjectType = swift_getObjectType();
  sub_21946C3C8(0, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_219BE14C4();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21946C3C8(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - v20;
  sub_21946C3C8(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  v25 = OBJC_IVAR___NUPaywallViewData_viewData;
  v26 = OBJC_IVAR___NUPaywallEventData_viewData;
  v27 = sub_219BE1524();
  (*(*(v27 - 8) + 16))(&v9[v26], a1 + v25, v27);
  if (a2)
  {
    swift_getObjectType();
    sub_219BF67F4();
    v28 = sub_219BDF0E4();
    (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
  }

  else
  {
    v29 = sub_219BDF0E4();
    (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  }

  sub_21946C41C(v24, &v9[OBJC_IVAR___NUPaywallEventData_articleData], &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  *&v9[OBJC_IVAR___NUPaywallEventData_channel] = a3;
  v30 = v44;
  if (v44)
  {
    swift_unknownObjectRetain();
    v31 = v30;
    FCFeedType.feedType()([v31 feedType], v18);
    v32 = [v31 identifier];
    sub_219BF5414();

    sub_219BE1484();
    v33 = sub_219BE14A4();
    (*(*(v33 - 8) + 56))(v21, 0, 1, v33);
  }

  else
  {
    v34 = sub_219BE14A4();
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    swift_unknownObjectRetain();
  }

  sub_21946C41C(v21, &v9[OBJC_IVAR___NUPaywallEventData_feedData], &qword_280EE8008, MEMORY[0x277D2F280]);
  v35 = v45;
  if (v45)
  {
    v36 = OBJC_IVAR___NUPaywallGroupData_groupData;
    v37 = sub_219BE16D4();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v15, v35 + v36, v37);
    (*(v38 + 56))(v15, 0, 1, v37);
  }

  else
  {
    v39 = sub_219BE16D4();
    (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
  }

  sub_21946C41C(v15, &v9[OBJC_IVAR___NUPaywallEventData_groupData], &unk_280EE7FA0, MEMORY[0x277D2F590]);
  v40 = v48;
  *&v9[OBJC_IVAR___NUPaywallEventData_referral] = v47;
  v41 = &v9[OBJC_IVAR___NUPaywallEventData_qToken];
  v42 = v49;
  *v41 = v40;
  *(v41 + 1) = v42;
  v50.receiver = v9;
  v50.super_class = ObjectType;
  return objc_msgSendSuper2(&v50, sel_init);
}

uint64_t sub_21946CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21946CDEC()
{
  sub_219BE1524();
  if (v0 <= 0x3F)
  {
    sub_21946C3C8(319, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    if (v1 <= 0x3F)
    {
      sub_21946C3C8(319, &qword_280EE8008, MEMORY[0x277D2F280]);
      if (v2 <= 0x3F)
      {
        sub_21946C3C8(319, &unk_280EE7FA0, MEMORY[0x277D2F590]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21946CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 view];

    if (v9)
    {
      v10 = [v6 view];
      if (v10)
      {
        v11 = v10;
        [v10 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        [v9 setFrame_];
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = sub_219BE7454();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2187D41D4(v6, a4);
  }
}

void sub_21946D16C(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (v5)
    {
      v6 = [v2 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame_];
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = sub_219BE7454();

    v2 = v18;
  }
}

uint64_t sub_21946D2D0(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_2186C709C(0, &qword_280EBB128);
  sub_218718690(a2, &v9);
  v3 = swift_allocObject();
  sub_2186CB1F0(&v9, v3 + 16);
  sub_219BE1E14();

  if (v8)
  {
    sub_2186CB1F0(&v6, &v9);
    __swift_project_boxed_opaque_existential_1(&v9, v10);
    v6 = 0uLL;
    v7 = -1;
    v5 = sub_218C83334(&v6);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21946D3F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8DB0);
  return sub_219BE1BA4();
}

uint64_t sub_21946D45C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_2186C709C(0, &qword_280ED1E90);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21946D524(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280ED13C0);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2186CB1F0(&v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = sub_219688E98();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21946D5D0(void *a1, void *a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 + 1 <= 7 && ((1 << (v5 + 1)) & 0xC5) != 0)
  {
    result = [a2 view];
    if (result)
    {
      v8 = result;
      result = [a1 view];
      if (result)
      {
        v9 = result;
        [result bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        [v8 setFrame_];
        result = [a2 view];
        if (result)
        {
          v18 = result;
          [result setNeedsLayout];

          result = [a2 view];
          if (result)
          {
            v19 = result;
            [result layoutIfNeeded];

            goto LABEL_10;
          }

LABEL_17:
          __break(1u);
          return result;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  result = sub_219BED0C4();
  if (result)
  {
    type metadata accessor for FollowingViewController();
    result = sub_219BF6584();
    if (v23)
    {
      v20 = *&v23[OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator];

      v21 = sub_219BF65B4();
      [v21 setSearchController_];

      v22 = sub_219BF65B4();
      [v22 setHidesSearchBarWhenScrolling_];

      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t sub_21946D7F0(void *a1)
{
  v2 = type metadata accessor for TagFeedAsyncConfig();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC68C0);
  result = sub_219BE1E34();
  if (v11)
  {
    sub_2186CB1F0(&v10, v12);
    v6 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    if (qword_280EE5F70 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    v8 = __swift_project_value_buffer(v7, qword_280F625C8);
    (*(*(v7 - 8) + 16))(&v4[*(v2 + 36)], v8, v7);
    *v4 = 1;
    *(v4 + 1) = 3;
    *(v4 + 2) = v6;
    *(v4 + 3) = 0x7374726F7053796DLL;
    *(v4 + 4) = 0xE800000000000000;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    v4[72] = -1;
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v9 = sub_21940500C(v4);
    sub_219405370(v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21946D9D8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280ECD260);
  result = sub_219BE1DD4();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_2189EFDBC(a1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MainModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MainModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21946DB88()
{
  sub_219BF5524();
}

uint64_t sub_21946DC70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21946DE14();
  *a1 = result;
  return result;
}

void sub_21946DCA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xE500000000000000;
  v6 = 0x6F69647561;
  v7 = 0xE900000000000067;
  v8 = 0x6E69776F6C6C6F66;
  if (v2 != 4)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E697A6167616DLL;
  if (v2 != 1)
  {
    v10 = 0x7374726F7073;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21946DDC0()
{
  result = qword_27CC1A6F0;
  if (!qword_27CC1A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A6F0);
  }

  return result;
}

uint64_t sub_21946DE14()
{
  v0 = sub_219BF7614();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21946DE64()
{
  v1 = [*v0 actionIdentifier];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_21946DEC4(void *a1)
{
  sub_218C19FB4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = sub_21946E01C();
  v10[4] = sub_21946E068();
  v10[0] = a1;
  v7 = a1;
  sub_219BE20C4();
  sub_21946E0C0(v10);
  (*(v4 + 104))(v6, *MEMORY[0x277D6E718], v3);
  sub_21870D0F4(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_21946E01C()
{
  result = qword_280E8DF90;
  if (!qword_280E8DF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DF90);
  }

  return result;
}

unint64_t sub_21946E068()
{
  result = qword_27CC1A700;
  if (!qword_27CC1A700)
  {
    sub_21946E01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A700);
  }

  return result;
}

uint64_t sub_21946E0C0(uint64_t a1)
{
  sub_21871D1B4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21946E11C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s11MyHeadlinesCMa();
    sub_219BE3204();

    v0 = sub_219BE2E54();
    type metadata accessor for TodayFeedPoolTracker();
    sub_219BE2F94();
  }
}

uint64_t sub_21946E21C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;

    sub_219BDD264();

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;

    sub_219BE2D04();
  }

  return result;
}

void sub_21946E398()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v0 = sub_219BE2E54();
    type metadata accessor for TodayFeedPoolTracker();
    sub_219BE2F94();
  }
}

uint64_t sub_21946E45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BEFE34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  (*(v6 + 32))(v9 + v8, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_219BDD264();
}

id *sub_21946E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BEFE34();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE07E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE14D4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_219BE0094();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v41 = v4;
    v42 = a3;
    v43 = v9;
    v44 = v7;
    v45 = v6;
    v46 = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData;
    sub_2187F5E00(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v17 = v16;
    v18 = sub_219BDCD44();
    v19 = *(v18 - 8);
    v20 = *(v19 + 80);
    v38 = *(v19 + 72);
    v40 = v17;
    v21 = swift_allocObject();
    v51 = xmmword_219C09BA0;
    *(v21 + 16) = xmmword_219C09BA0;
    v22 = *MEMORY[0x277CEAD18];
    v24 = *(v19 + 104);
    v23 = v19 + 104;
    v36 = (v20 + 32) & ~v20;
    v37 = v22;
    v39 = v18;
    v52 = v24;
    (v24)(v21 + v36);
    sub_219BDF6C4();
    sub_21946FD28(&unk_280EE86D0, MEMORY[0x277D2DCB8]);
    v46 = "dayFeedPoolTracker";
    sub_219BDCCC4();

    result = [v15[3] absoluteTimeInterval];
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v35[2] = v15;
        sub_219BF6754();
        sub_219BE0084();
        v35[0] = v23;
        v35[1] = v20;
        v26 = v36;
        v27 = swift_allocObject();
        *(v27 + 16) = v51;
        v28 = v37;
        v29 = v39;
        v52(v27 + v26, v37, v39);
        sub_21946FD28(&unk_280EE84C0, MEMORY[0x277D2E310]);
        v30 = v48;
        sub_219BDCCC4();

        (*(v47 + 8))(v13, v30);
        v31 = v49;
        (*(v50 + 16))(v49, v42, v41);
        v32 = v43;
        sub_21946EC88(v31, v43);
        v33 = swift_allocObject();
        *(v33 + 16) = v51;
        v52(v33 + v26, v28, v29);
        sub_21946FD28(&unk_280EE82D8, MEMORY[0x277D2E830]);
        v34 = v45;
        sub_219BDCCC4();

        (*(v44 + 8))(v32, v34);
        sub_219BE09C4();
        sub_21946FD28(&qword_280EE8278, MEMORY[0x277D2E9A0]);
        memset(v53, 0, sizeof(v53));
        sub_219BDCCE4();

        return sub_21874588C(v53, sub_21880702C);
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_21946EC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_21946FBF0();
  v93 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v92 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v91 = &v67 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v67 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v90 = &v67 - v12;
  sub_21946FC58();
  v79 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v89 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v67 - v16;
  v77 = sub_219BE0804();
  v17 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v20 = sub_219BEFE24();
  v21 = *(v20 + 16);
  if (v21)
  {
    v95 = MEMORY[0x277D84F90];
    sub_218C37540(0, v21, 0);
    v22 = v95;
    v23 = v20 + 64;
    result = sub_219BF7174();
    v25 = 0;
    v26 = *(v20 + 36);
    v71 = v17 + 32;
    v69 = v20 + 72;
    v75 = v19;
    v76 = v17;
    v74 = v20;
    v70 = v21;
    v73 = v20 + 64;
    v72 = v26;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v20 + 32))
    {
      if ((*(v23 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      if (v26 != *(v20 + 36))
      {
        goto LABEL_27;
      }

      v82 = 1 << result;
      v83 = result >> 6;
      v81 = v25;
      v28 = v79;
      v29 = *(v79 + 48);
      v30 = *(v20 + 56);
      v31 = (*(v20 + 48) + 16 * result);
      v33 = *v31;
      v32 = v31[1];
      v85 = v22;
      v86 = v33;
      v34 = result;
      v35 = sub_219BEFE14();
      v36 = *(v35 - 8);
      v37 = v36[9];
      v84 = v34;
      v38 = v30 + v37 * v34;
      v39 = v36[2];
      v40 = v78;
      v39(&v78[v29], v38, v35);
      v41 = v89;
      *v89 = v33;
      *(v41 + 1) = v32;
      v88 = v32;
      v42 = *(v28 + 48);
      v87 = v36[4];
      v87(&v41[v42], &v40[v29], v35);
      v43 = v90;
      *v90 = v86;
      *(v43 + 1) = v32;
      v44 = v93;
      v39(&v43[*(v93 + 48)], &v41[v42], v35);
      v45 = v80;
      sub_21946FCC4(v43, v80);
      v46 = *(v45 + 1);
      v47 = *(v44 + 48);
      v48 = v94;
      *v94 = *v45;
      *(v48 + 1) = v46;
      v87(&v48[v47], &v45[v47], v35);
      sub_21946FCC4(v48, v91);
      v87 = *(v44 + 48);
      v49 = v92;
      sub_21946FCC4(v48, v92);
      swift_bridgeObjectRetain_n();

      v50 = *(v44 + 48);
      v51 = sub_219BEFE04();
      v52 = v36[1];
      result = v52(v49 + v50, v35);
      if (v51 < 0xFFFFFFFF80000000)
      {
        goto LABEL_28;
      }

      if (v51 > 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      v53 = v92;
      sub_21946FCC4(v94, v92);

      v54 = *(v93 + 48);
      v55 = sub_219BEFDF4();
      result = v52(v53 + v54, v35);
      if (v55 < 0xFFFFFFFF80000000)
      {
        goto LABEL_30;
      }

      if (v55 > 0x7FFFFFFF)
      {
        goto LABEL_31;
      }

      v56 = v75;
      sub_219BE07F4();
      sub_21874588C(v94, sub_21946FBF0);
      v52(v87 + v91, v35);
      sub_21874588C(v90, sub_21946FBF0);
      sub_21874588C(v89, sub_21946FC58);
      v22 = v85;
      v95 = v85;
      v58 = *(v85 + 16);
      v57 = *(v85 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_218C37540(v57 > 1, v58 + 1, 1);
        v22 = v95;
      }

      *(v22 + 16) = v58 + 1;
      (*(v76 + 32))(v22 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v58, v56, v77);
      v20 = v74;
      v27 = 1 << *(v74 + 32);
      result = v84;
      v23 = v73;
      LODWORD(v26) = v72;
      if (v84 >= v27)
      {
        goto LABEL_32;
      }

      v59 = *(v73 + 8 * v83);
      if ((v59 & v82) == 0)
      {
        goto LABEL_33;
      }

      if (v72 != *(v74 + 36))
      {
        goto LABEL_34;
      }

      v60 = v59 & (-2 << (v84 & 0x3F));
      if (v60)
      {
        v27 = __clz(__rbit64(v60)) | v84 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v61 = v83 << 6;
        v62 = v83 + 1;
        v63 = (v69 + 8 * v83);
        while (v62 < (v27 + 63) >> 6)
        {
          v65 = *v63++;
          v64 = v65;
          v61 += 64;
          ++v62;
          if (v65)
          {
            sub_2187BC250(v84, v72, 0);
            v27 = __clz(__rbit64(v64)) + v61;
            goto LABEL_4;
          }
        }

        sub_2187BC250(v84, v72, 0);
      }

LABEL_4:
      v25 = v81 + 1;
      result = v27;
      if (v81 + 1 == v70)
      {
        goto LABEL_24;
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
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_24:

    sub_219BE07D4();
    v66 = sub_219BEFE34();
    return (*(*(v66 - 8) + 8))(v68, v66);
  }

  return result;
}

id sub_21946F400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v51 = a1;
  sub_2187F5E00(0, &qword_280EE8150, MEMORY[0x277D2EDE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v36 - v5;
  v6 = sub_219BE0F24();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE14D4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_219BE0094();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5E00(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v13 = v12;
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 + 32) & ~v16;
  v48 = *(v15 + 72);
  v49 = v13;
  v18 = swift_allocObject();
  v52 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  v19 = *(v15 + 104);
  v47 = *MEMORY[0x277CEAD18];
  v41 = v14;
  v50 = v19;
  v19(v18 + v17);
  sub_219BDF6C4();
  sub_21946FD28(&unk_280EE86D0, MEMORY[0x277D2DCB8]);
  sub_219BDCCC4();

  result = [*(a2 + 24) absoluteTimeInterval];
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_219BF6754();
  sub_219BE0084();
  v46 = "dayFeedPoolTracker";
  v22 = swift_allocObject();
  *(v22 + 16) = v52;
  v23 = v47;
  v38 = v16;
  v24 = v41;
  v50(v22 + v17, v47, v41);
  sub_21946FD28(&unk_280EE84C0, MEMORY[0x277D2E310]);
  v25 = v40;
  sub_219BDCCC4();

  (*(v39 + 8))(v11, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v52;
  v40 = v17;
  v27 = v26 + v17;
  v28 = v50;
  v50(v27, v23, v24);
  sub_219BE0FE4();
  sub_21946FD28(&qword_280EE8138, MEMORY[0x277D2EE38]);
  v29 = v43;
  sub_219BDCCC4();

  v30 = v42;
  sub_218E918B4(v29 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList, v42);
  v32 = v44;
  v31 = v45;
  if ((*(v44 + 48))(v30, 1, v45) == 1)
  {
    sub_218E919AC(v30);
  }

  else
  {
    v33 = v37;
    (*(v32 + 32))(v37, v30, v31);
    v34 = v40;
    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    v28(v35 + v34, v47, v24);
    sub_21946FD28(&unk_280EE8158, MEMORY[0x277D2EDE8]);
    sub_219BDCCC4();

    (*(v32 + 8))(v33, v31);
  }

  sub_219BE09C4();
  sub_21946FD28(&qword_280EE8278, MEMORY[0x277D2E9A0]);
  memset(v53, 0, 32);
  sub_219BDCCE4();
  return sub_21874588C(v53, sub_21880702C);
}

id *sub_21946FB7C(uint64_t a1)
{
  v3 = *(sub_219BEFE34() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21946E5BC(a1, v4, v5);
}

void sub_21946FBF0()
{
  if (!qword_280E8F790)
  {
    sub_219BEFE14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F790);
    }
  }
}

void sub_21946FC58()
{
  if (!qword_280E8F8D0)
  {
    sub_219BEFE14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F8D0);
    }
  }
}

uint64_t sub_21946FCC4(uint64_t a1, uint64_t a2)
{
  sub_21946FBF0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21946FD28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21946FDC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v35 = sub_21947145C;
  sub_2194718C8(0, &qword_27CC1A750, sub_21947145C);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v31[-v11];
  v33 = sub_21947010C(a1);
  v34 = sub_219BEC964();
  LOBYTE(v40[0]) = 0;
  sub_219470394(a1, v37);
  *&v36[7] = v37[0];
  *&v36[23] = v37[1];
  *&v36[39] = v37[2];
  *&v36[55] = v37[3];
  v32 = LOBYTE(v40[0]);
  *v12 = sub_219BED0E4();
  v12[1] = v13;
  sub_219471A44();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  sub_2194718C8(0, &qword_27CC1A768, sub_21947157C);
  sub_2194717AC();

  sub_219BED074();
  LOBYTE(a1) = sub_219BECBA4();
  sub_219BEC5A4();
  v15 = v12 + *(v7 + 44);
  *v15 = a1;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v20 = v10;
  sub_219471AB8(v12, v10);
  v21 = v34;
  *a2 = v33;
  *(a2 + 8) = 256;
  *&v38 = v21;
  *(&v38 + 1) = 0xC010000000000000;
  LOBYTE(v10) = v32;
  v39[0] = v32;
  *&v39[1] = *v36;
  *&v39[49] = *&v36[48];
  *&v39[33] = *&v36[32];
  *&v39[17] = *&v36[16];
  v22 = *&v36[63];
  *&v39[64] = *&v36[63];
  v23 = *v39;
  *(a2 + 16) = v38;
  *(a2 + 32) = v23;
  v24 = *&v39[16];
  v25 = *&v39[32];
  v26 = *&v39[48];
  *(a2 + 96) = v22;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  *(a2 + 48) = v24;
  sub_2194711D0();
  sub_219471AB8(v20, a2 + *(v27 + 64));

  sub_219471B40(&v38, v40);
  v28 = v35;
  v29 = MEMORY[0x277CDF928];
  sub_219471BA4(v12, &qword_27CC1A750, v35, MEMORY[0x277CDF928], sub_2194718C8);
  sub_219471BA4(v20, &qword_27CC1A750, v28, v29, sub_2194718C8);
  v40[0] = v21;
  v40[1] = 0xC010000000000000;
  v41 = v10;
  v43 = *&v36[16];
  v44 = *&v36[32];
  *v45 = *&v36[48];
  *&v45[15] = *&v36[63];
  v42 = *v36;
  sub_219471C04(v40);
}

uint64_t sub_21947010C(uint64_t a1)
{
  swift_getKeyPath();
  v15 = a1;
  sub_219471880(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel);
  sub_219BDC204();

  LODWORD(a1) = *(a1 + 80);
  v2 = objc_opt_self();
  v3 = v2;
  if (a1 == 1)
  {
    v4 = [v2 systemBlackColor];
    v5 = [v3 systemWhiteColor];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D75348]);
    v19 = sub_219472030;
    v20 = v6;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v8 = &block_descriptor_24_6;
  }

  else
  {
    v4 = [v2 systemWhiteColor];
    v5 = [v3 secondarySystemBackgroundColor];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D75348]);
    v19 = sub_219472030;
    v20 = v9;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v8 = &block_descriptor_17_4;
  }

  v17 = sub_218FEA284;
  v18 = v8;
  v10 = _Block_copy(&v15);
  v11 = v4;
  v12 = v5;
  [v7 initWithDynamicProvider_];
  _Block_release(v10);

  v13 = sub_219BECF04();

  return v13;
}

uint64_t sub_219470394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = MEMORY[0x277CE09A8];
  v4 = MEMORY[0x277D83D88];
  sub_219471C68(0, &qword_27CC1A7C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v48 - v6;
  sub_2194707A4(a1, v58);
  v51 = v59;
  v52 = v60;
  v50 = __swift_project_boxed_opaque_existential_1(v58, v59);
  v8 = a1[7];
  v56 = a1[6];
  v57 = v8;
  v53 = sub_2187F3BD4();

  v9 = sub_219BECDA4();
  v11 = v10;
  v13 = v12;
  v14 = sub_219BECC14();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_219BECC54();
  sub_219471BA4(v7, &qword_27CC1A7C8, v3, v4, sub_219471C68);
  sub_219BECC24();
  sub_219BECC74();

  v15 = sub_219BECD74();
  v17 = v16;
  v19 = v18;

  sub_2189A0BC8(v9, v11, v13 & 1);

  v20 = sub_219BECD54();
  v51 = v21;
  v52 = v20;
  v50 = v22;
  v49 = v23;
  sub_2189A0BC8(v15, v17, v19 & 1);

  __swift_destroy_boxed_opaque_existential_1(v58);
  sub_2194707A4(a1, v58);
  v48[2] = v60;
  v48[1] = __swift_project_boxed_opaque_existential_1(v58, v59);
  v24 = a1[9];
  v56 = a1[8];
  v57 = v24;

  v25 = sub_219BECDA4();
  v27 = v26;
  v29 = v28;
  sub_219BECCB4();
  sub_219BECC44();
  sub_219BECC74();

  v30 = sub_219BECD74();
  v32 = v31;
  v34 = v33;

  sub_2189A0BC8(v25, v27, v29 & 1);

  v35 = sub_219BECD54();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_2189A0BC8(v30, v32, v34 & 1);

  __swift_destroy_boxed_opaque_existential_1(v58);
  v42 = v49 & 1;
  v55 = v49 & 1;
  LOBYTE(v58[0]) = v49 & 1;
  v39 &= 1u;
  LOBYTE(v56) = v39;
  v43 = v54;
  v44 = v51;
  v45 = v52;
  v46 = v50;
  *v54 = v52;
  v43[1] = v46;
  *(v43 + 16) = v42;
  v43[3] = v44;
  v43[4] = v35;
  v43[5] = v37;
  *(v43 + 48) = v39;
  v43[7] = v41;
  sub_219332B50(v45, v46, v42);

  sub_219332B50(v35, v37, v39);

  sub_2189A0BC8(v35, v37, v39);

  sub_2189A0BC8(v45, v46, v55);
}

void sub_2194707A4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  v21[0] = a1;
  sub_219471880(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel);
  sub_219BDC204();

  v4 = *(a1 + 80);
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  if (v4 == 1)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 traitCollectionWithUserInterfaceStyle_];
    v10 = [v7 resolvedColorWithTraitCollection_];

    v11 = [v5 labelColor];
    v12 = [v8 traitCollectionWithUserInterfaceStyle_];
    v13 = [v11 resolvedColorWithTraitCollection_];

    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;
    v15 = objc_allocWithZone(MEMORY[0x277D75348]);
    v21[4] = sub_219472030;
    v21[5] = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_218FEA284;
    v21[3] = &block_descriptor_10_3;
    v16 = _Block_copy(v21);
    v17 = v10;
    v18 = v13;
    [v15 initWithDynamicProvider_];
    _Block_release(v16);

    v19 = sub_219BECF04();
  }

  else
  {
    v19 = sub_219BECF04();
  }

  v20 = MEMORY[0x277CE0F60];
  a2[3] = MEMORY[0x277CE0F78];
  a2[4] = v20;
  *a2 = v19;
}

uint64_t sub_219470A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_219470B28(a2);
  sub_219BEC624();
  v6 = sub_219BED0E4();
  v8 = v7;
  result = sub_219BED154();
  *a3 = (a1 & 1) == 0;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  *(a3 + 48) = v5;
  *(a3 + 56) = 256;
  *(a3 + 64) = v6;
  *(a3 + 72) = v8;
  *(a3 + 80) = a1 * 0.392699082;
  *(a3 + 88) = v10;
  *(a3 + 96) = v11;
  return result;
}

uint64_t sub_219470B28(uint64_t a1)
{
  swift_getKeyPath();
  v18[0] = a1;
  sub_219471880(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel);
  sub_219BDC204();

  LODWORD(a1) = *(a1 + 80);
  v2 = objc_opt_self();
  v3 = [v2 tertiaryLabelColor];
  if (a1 != 1)
  {
    return sub_219BECF04();
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 traitCollectionWithUserInterfaceStyle_];
  v7 = [v4 resolvedColorWithTraitCollection_];

  v8 = [v2 tertiaryLabelColor];
  v9 = [v5 traitCollectionWithUserInterfaceStyle_];
  v10 = [v8 resolvedColorWithTraitCollection_];

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v18[4] = sub_219471C60;
  v18[5] = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_218FEA284;
  v18[3] = &block_descriptor_130;
  v13 = _Block_copy(v18);
  v14 = v7;
  v15 = v10;
  [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v16 = sub_219BECF04();

  return v16;
}

double sub_219470DA4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_219BECCE4();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  sub_219BECCC4();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_219BECCD4();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_219470EC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_219BEC574();
  return sub_218C263FC;
}

uint64_t sub_219470F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21947160C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_219470FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21947160C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_219471014(uint64_t a1)
{
  v2 = sub_21947160C();

  return MEMORY[0x282133738](a1, v2);
}

double sub_219471068@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_219BED0E4();
  a1[1] = v5;
  sub_219471138();
  sub_21946FDC0(v3, a1 + *(v6 + 44), v4);
  sub_219BED0E4();
  sub_219BEC684();
  sub_2194718C8(0, &qword_27CC1A7A8, sub_21947192C);
  v8 = (a1 + *(v7 + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

void sub_219471138()
{
  if (!qword_27CC1A708)
  {
    sub_219471C68(255, &qword_27CC1A710, sub_2194711D0, MEMORY[0x277CE14B8]);
    v0 = sub_219BEC6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A708);
    }
  }
}

void sub_2194711D0()
{
  if (!qword_27CC1A718)
  {
    sub_21947127C();
    sub_21947134C();
    sub_2194718C8(255, &qword_27CC1A750, sub_21947145C);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1A718);
    }
  }
}

void sub_21947127C()
{
  if (!qword_27CC1A720)
  {
    sub_2194712F8();
    v0 = sub_219BEC604();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A720);
    }
  }
}

unint64_t sub_2194712F8()
{
  result = qword_27CC1A728;
  if (!qword_27CC1A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A728);
  }

  return result;
}

void sub_21947134C()
{
  if (!qword_27CC1A730)
  {
    sub_219471C68(255, &qword_27CC1A738, sub_219471400, MEMORY[0x277CE14B8]);
    sub_2194719E0(&qword_27CC1A748, &qword_27CC1A738, sub_219471400);
    v0 = sub_219BED034();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A730);
    }
  }
}

void sub_219471400()
{
  if (!qword_27CC1A740)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1A740);
    }
  }
}

void sub_21947145C()
{
  if (!qword_27CC1A758)
  {
    sub_2194714C0();
    sub_219471734();
    v0 = sub_219BED044();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A758);
    }
  }
}

void sub_2194714C0()
{
  if (!qword_27CC1A760)
  {
    sub_218C82728();
    sub_2194718C8(255, &qword_27CC1A768, sub_21947157C);
    sub_219471660();
    v0 = sub_219BED084();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A760);
    }
  }
}

void sub_21947157C()
{
  if (!qword_27CC1A770)
  {
    sub_21947160C();
    v0 = sub_219BEC754();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A770);
    }
  }
}

unint64_t sub_21947160C()
{
  result = qword_27CC1A778;
  if (!qword_27CC1A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A778);
  }

  return result;
}

unint64_t sub_219471660()
{
  result = qword_27CC1A780;
  if (!qword_27CC1A780)
  {
    sub_218C82728();
    sub_2194716E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A780);
  }

  return result;
}

unint64_t sub_2194716E0()
{
  result = qword_27CC1A788;
  if (!qword_27CC1A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A788);
  }

  return result;
}

unint64_t sub_219471734()
{
  result = qword_27CC1A790;
  if (!qword_27CC1A790)
  {
    sub_2194714C0();
    sub_2194717AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A790);
  }

  return result;
}

unint64_t sub_2194717AC()
{
  result = qword_27CC1A798;
  if (!qword_27CC1A798)
  {
    sub_2194718C8(255, &qword_27CC1A768, sub_21947157C);
    sub_219471880(&qword_27CC1A7A0, sub_21947157C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A798);
  }

  return result;
}

uint64_t sub_219471880(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2194718C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BEC724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21947192C()
{
  if (!qword_27CC1A7B0)
  {
    sub_219471C68(255, &qword_27CC1A710, sub_2194711D0, MEMORY[0x277CE14B8]);
    sub_2194719E0(&qword_27CC1A7B8, &qword_27CC1A710, sub_2194711D0);
    v0 = sub_219BED044();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A7B0);
    }
  }
}

uint64_t sub_2194719E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_219471C68(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219471A44()
{
  if (!qword_27CC1A7C0)
  {
    sub_2194714C0();
    v0 = sub_219BEC6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A7C0);
    }
  }
}

uint64_t sub_219471AB8(uint64_t a1, uint64_t a2)
{
  sub_2194718C8(0, &qword_27CC1A750, sub_21947145C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219471B40(uint64_t a1, uint64_t a2)
{
  sub_21947134C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219471BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_219471C04(uint64_t a1)
{
  sub_21947134C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219471C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for RecipeFilterDurationView.Tick(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_219471D7C()
{
  result = qword_27CC1A7D0;
  if (!qword_27CC1A7D0)
  {
    sub_2194718C8(255, &qword_27CC1A7A8, sub_21947192C);
    sub_219471880(&qword_27CC1A7D8, sub_21947192C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A7D0);
  }

  return result;
}

void sub_219471E98()
{
  if (!qword_27CC1A7E8)
  {
    sub_21947160C();
    v0 = sub_219BEC604();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A7E8);
    }
  }
}

unint64_t sub_219471F18()
{
  result = qword_27CC1A7F0;
  if (!qword_27CC1A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A7F0);
  }

  return result;
}

unint64_t sub_219471F70()
{
  result = qword_27CC1A7F8;
  if (!qword_27CC1A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A7F8);
  }

  return result;
}

unint64_t sub_219471FC8()
{
  result = qword_27CC1A800;
  if (!qword_27CC1A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A800);
  }

  return result;
}

uint64_t sub_219472050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000219CE5C60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2194720E4(uint64_t a1)
{
  v2 = sub_2194722A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219472120(uint64_t a1)
{
  v2 = sub_2194722A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementStoredSettingsEntry.encode(to:)(void *a1)
{
  sub_21947247C(0, &qword_27CC1A808, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194722A4();
  sub_219BF7B44();
  sub_219BF7804();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2194722A4()
{
  result = qword_27CC1A810;
  if (!qword_27CC1A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A810);
  }

  return result;
}

uint64_t EngagementStoredSettingsEntry.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_21947247C(0, &qword_27CC1A818, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194722A4();
  sub_219BF7B34();
  if (!v2)
  {
    v10 = sub_219BF7704();
    (*(v7 + 8))(v9, v6);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_21947247C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2194722A4();
    v7 = a3(a1, &type metadata for EngagementStoredSettingsEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2194724F8(void *a1)
{
  sub_21947247C(0, &qword_27CC1A808, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194722A4();
  sub_219BF7B44();
  sub_219BF7804();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_219472664()
{
  result = qword_27CC1A820;
  if (!qword_27CC1A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A820);
  }

  return result;
}

unint64_t sub_2194726BC()
{
  result = qword_27CC1A828;
  if (!qword_27CC1A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A828);
  }

  return result;
}

unint64_t sub_219472714()
{
  result = qword_27CC1A830;
  if (!qword_27CC1A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A830);
  }

  return result;
}

void sub_219472904()
{
  sub_219472990(&qword_27CC14750);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_219472990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyMagazinesSectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2194729D0(void *a1, unint64_t a2)
{
  sub_219474CF4();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1AB4();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v41 - v9;
  sub_219474D88();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219475128(0, &qword_280E8C470, MEMORY[0x277D84538]);
  v16 = v15;
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219474FC8();
  v19 = v18;
  sub_219BF7B44();
  v20 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v20)
    {
      v37 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v54) = 1;
      v55 = 0;
      sub_21947518C();

      v38 = v52;
      sub_219BF7834();
      if (!v38)
      {
        v54 = v37;
        v55 = 1;
        sub_2194751E0();
        sub_219BF7834();
      }

      goto LABEL_6;
    }

    v25 = swift_projectBox();
    sub_219474528(v25, v14);
    LOBYTE(v54) = 0;
    v55 = 0;
    sub_21947518C();
    v21 = v18;
    v26 = v52;
    sub_219BF7834();
    if (!v26)
    {
      LOBYTE(v54) = 1;
      sub_2194744E0(&qword_280EAEAE0, type metadata accessor for SportsScoreSortingMatchFilter);
      sub_219BF7834();
    }

    sub_21947458C(v14);
  }

  else if (v20 == 2)
  {
    v27 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v54) = 2;
    v55 = 0;
    sub_21947518C();

    v21 = v19;
    v28 = v52;
    sub_219BF7834();
    if (v28)
    {
      (*(v53 + 8))(v19, v16);
    }

    v54 = v27;
    sub_219474E60();
    sub_219474F28(&qword_280E8E9F8, sub_219474EF4);
    sub_219474F28(&qword_280E8EA00, sub_219474F94);
    v39 = v43;
    sub_219BF0864();
    LOBYTE(v54) = 1;
    sub_2194744E0(&qword_27CC1A868, sub_219474D88);
    v40 = v45;
    sub_219BF7834();
    (*(v44 + 8))(v39, v40);
  }

  else
  {
    v21 = v18;
    if (v20 == 3)
    {
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v54) = 3;
      v55 = 0;
      sub_21947518C();

      v23 = v52;
      sub_219BF7834();
      if (!v23)
      {
        v54 = v22;
        v55 = 1;
        sub_218C42690();
        sub_219BF7834();
      }

LABEL_6:
      (*(v53 + 8))(v19, v16);
    }

    v29 = swift_projectBox();
    v31 = v49;
    v30 = v50;
    v32 = *(v50 + 16);
    v33 = v51;
    v32(v49, v29, v51);
    LOBYTE(v54) = 4;
    v55 = 0;
    sub_21947518C();
    v34 = v52;
    sub_219BF7834();
    if (!v34)
    {
      v32(v42, v31, v33);
      sub_2194744E0(&qword_280E907B8, MEMORY[0x277D33518]);
      v35 = v46;
      sub_219BF13C4();
      LOBYTE(v54) = 1;
      sub_2194744E0(&qword_27CC1A860, sub_219474CF4);
      v36 = v48;
      sub_219BF7834();
      (*(v47 + 8))(v35, v36);
    }

    (*(v30 + 8))(v31, v33);
  }

  return (*(v53 + 8))(v21, v16);
}

uint64_t sub_2194731FC(unint64_t a1, unint64_t a2)
{
  v4 = sub_219BF1AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  v12 = MEMORY[0x28223BE20](matched - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v17)
    {
      if (a2 >> 61 == 1)
      {
        v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v31 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v20 = sub_2194731FC(v30, v31);
        goto LABEL_15;
      }
    }

    else if (!(a2 >> 61))
    {
      v21 = swift_projectBox();
      v22 = swift_projectBox();
      sub_219474528(v21, v16);
      sub_219474528(v22, v14);
      LOBYTE(v22) = sub_218A84380(v16, v14);
      sub_21947458C(v14);
      sub_21947458C(v16);
      return v22 & 1;
    }
  }

  else if (v17 == 2)
  {
    if (a2 >> 61 == 2)
    {
      v24 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v20 = sub_21947AE48(v24, v25);

      return v20 & 1;
    }
  }

  else if (v17 == 3)
  {
    if (a2 >> 61 == 3)
    {
      v18 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v20 = sub_21965ACC4(v18, v19);
LABEL_15:

      return v20 & 1;
    }
  }

  else if (a2 >> 61 == 4)
  {
    v26 = swift_projectBox();
    v27 = swift_projectBox();
    v28 = *(v5 + 16);
    v28(v10, v26, v4);
    v28(v8, v27, v4);
    LOBYTE(v27) = sub_219BF1A94();
    v29 = *(v5 + 8);
    v29(v8, v4);
    v29(v10, v4);
    return v27 & 1;
  }

  return 0;
}

uint64_t sub_21947351C@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21947357C@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_219473690(uint64_t a1)
{
  v2 = sub_219474FC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194736CC(uint64_t a1)
{
  v2 = sub_219474FC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219473714()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2194737EC()
{
  sub_219BF5524();
}

uint64_t sub_2194738B0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219473984@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219475408();
  *a1 = result;
  return result;
}

void sub_2194739B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x686374616DLL;
  v5 = 0xEA00000000006B65;
  v6 = 0x6557664F73796164;
  v7 = 0xE600000000000000;
  v8 = 0x7265746C6966;
  if (v2 != 3)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7630702;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_219473AF8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_2194746D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219473B4C(unint64_t a1)
{
  v2 = sub_219BF1AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v9)
    {
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = 678719342;
      v24 = 0xE400000000000000;

      v21 = sub_219473B4C(v20);
      MEMORY[0x21CECC330](v21);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      goto LABEL_10;
    }

    v12 = swift_projectBox();
    sub_219474528(v12, v8);
    v23 = 0x28686374616DLL;
    v24 = 0xE600000000000000;
    v13 = sub_218A830C4();
    MEMORY[0x21CECC330](v13);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v14 = v23;
    sub_21947458C(v8);
  }

  else
  {
    if (v9 == 2)
    {
      v23 = 0x6557664F73796164;
      v24 = 0xEB00000000286B65;
      sub_219BEDB04();
      sub_2194744E0(&qword_280E92540, MEMORY[0x277D31D70]);

      v15 = sub_219BF5D54();
      v17 = v16;

      MEMORY[0x21CECC330](v15, v17);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return v23;
    }

    if (v9 == 3)
    {
      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = 0x287265746C6966;
      v24 = 0xE700000000000000;

      v11 = sub_21965BADC(v10);
      MEMORY[0x21CECC330](v11);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
LABEL_10:

      return v23;
    }

    v18 = swift_projectBox();
    (*(v3 + 16))(v5, v18, v2);
    v23 = 0x726F7463656C6573;
    v24 = 0xE900000000000028;
    sub_2194744E0(&qword_27CC1A848, MEMORY[0x277D33518]);
    v19 = sub_219BF7894();
    MEMORY[0x21CECC330](v19);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v14 = v23;
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

uint64_t sub_219473EF8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a2;
  v51 = a3;
  v5 = sub_219BF1AB4();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BEDB04();
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBF74();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDBF94();
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    v24 = v48;
    if (v20)
    {
      v41 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v42 = sub_219473EF8(v41, v49, v51, v24);

      v27 = v42 ^ 1;
      return v27 & 1;
    }

    v25 = swift_projectBox();
    sub_219474528(v25, v19);
    v26 = sub_218A84E44(v19, v49, v51);
    if (v26 >> 62)
    {
      v23 = sub_219BF7214();
    }

    else
    {
      v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_21947458C(v19);
    goto LABEL_11;
  }

  if (v20 == 2)
  {
    v28 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    sub_219BDBF34();
    v29 = v46;
    (*(v46 + 104))(v13, *MEMORY[0x277CC99B8], v11);
    v48 = sub_219BDBF84();
    (*(v29 + 8))(v13, v11);
    (*(v45 + 8))(v16, v14);
    v52 = MEMORY[0x277D84F90];
    v30 = 1 << *(v28 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v28 + 56);
    v33 = (v30 + 63) >> 6;
    v51 = v8 + 16;
    v49 = v8 + 8;

    v34 = 0;
    v35 = v50;
    while (v32)
    {
      v36 = v34;
LABEL_20:
      v37 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      (*(v8 + 16))(v10, *(v28 + 48) + *(v8 + 72) * (v37 | (v36 << 6)), v35);
      v38 = sub_219BEDAF4();
      (*(v8 + 8))(v10, v35);
      sub_2191EDECC(v38);
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {

        v43 = sub_218C3DB14(v52);

        v27 = sub_218C30D64(v48, v43);

        return v27 & 1;
      }

      v32 = *(v28 + 56 + 8 * v36);
      ++v34;
      if (v32)
      {
        v34 = v36;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    v23 = sub_219BF7214();
    goto LABEL_6;
  }

  if (v20 != 3)
  {
    v39 = swift_projectBox();
    v40 = v47;
    (*(v47 + 16))(v7, v39, v5);
    v27 = sub_219BF1AA4();
    (*(v40 + 8))(v7, v5);
    return v27 & 1;
  }

  v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v22 = sub_219659C8C(v49, v51, v21);
  if (v22 >> 62)
  {
    goto LABEL_27;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

LABEL_11:
  v27 = v23 != 0;
  return v27 & 1;
}

uint64_t sub_2194744E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219474528(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_21947458C(uint64_t a1)
{
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t sub_2194745F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219474650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2194746D4(void *a1)
{
  sub_219474CF4();
  v32 = v2;
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219474D88();
  v30 = v4;
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219475128(0, &qword_280E8CC78, MEMORY[0x277D844C8]);
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219474FC8();
  v15 = v34;
  sub_219BF7B34();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v33;
    v34 = a1;
    v36 = 0;
    sub_21947501C();
    sub_219BF7734();
    if (v35 <= 1u)
    {
      if (v35)
      {
        v36 = 1;
        sub_219475070();
        sub_219BF7734();
        (*(v16 + 8))(v13, v11);
        v26 = v35;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v14 = v27 | 0x2000000000000000;
      }

      else
      {
        LOBYTE(v35) = 1;
        sub_2194744E0(&qword_280EAEAD8, type metadata accessor for SportsScoreSortingMatchFilter);
        sub_219BF7734();
        (*(v16 + 8))(v13, v11);
        v14 = swift_allocBox();
        sub_2194750C4(v9, v20);
      }
    }

    else if (v35 == 2)
    {
      LOBYTE(v35) = 1;
      sub_2194744E0(&qword_27CC1A858, sub_219474D88);
      v21 = v30;
      sub_219BF7734();
      v22 = swift_allocObject();
      sub_219BF0874();
      (*(v28 + 8))(v6, v21);
      (*(v16 + 8))(v13, v11);
      v14 = v22 | 0x4000000000000000;
    }

    else if (v35 == 3)
    {
      v36 = 1;
      sub_218C4263C();
      sub_219BF7734();
      (*(v16 + 8))(v13, v11);
      v18 = v35;
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v14 = v19 | 0x6000000000000000;
    }

    else
    {
      LOBYTE(v35) = 1;
      sub_2194744E0(&qword_27CC1A850, sub_219474CF4);
      v23 = v31;
      v24 = v32;
      sub_219BF7734();
      sub_219BF1AB4();
      v25 = swift_allocBox();
      sub_219BF13D4();
      (*(v29 + 8))(v23, v24);
      (*(v16 + 8))(v13, v11);
      v14 = v25 | 0x8000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return v14;
}

void sub_219474CF4()
{
  if (!qword_280E908D8)
  {
    sub_219BF1AB4();
    sub_2194744E0(&qword_280E907B8, MEMORY[0x277D33518]);
    v0 = sub_219BF13E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E908D8);
    }
  }
}

void sub_219474D88()
{
  if (!qword_280E90D18)
  {
    sub_219474E60();
    sub_219474F28(&qword_280E8E9F8, sub_219474EF4);
    sub_219474F28(&qword_280E8EA00, sub_219474F94);
    v0 = sub_219BF0884();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90D18);
    }
  }
}

void sub_219474E60()
{
  if (!qword_280E8EA08)
  {
    sub_219BEDB04();
    sub_2194744E0(&qword_280E92540, MEMORY[0x277D31D70]);
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA08);
    }
  }
}

uint64_t sub_219474F28(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_219474E60();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219474FC8()
{
  result = qword_280EB6860[0];
  if (!qword_280EB6860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB6860);
  }

  return result;
}

unint64_t sub_21947501C()
{
  result = qword_280EB6838;
  if (!qword_280EB6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6838);
  }

  return result;
}

unint64_t sub_219475070()
{
  result = qword_280EB6828;
  if (!qword_280EB6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6828);
  }

  return result;
}

uint64_t sub_2194750C4(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

void sub_219475128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219474FC8();
    v7 = a3(a1, &type metadata for SportsScoreSortingCondition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21947518C()
{
  result = qword_280EB6848;
  if (!qword_280EB6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6848);
  }

  return result;
}

unint64_t sub_2194751E0()
{
  result = qword_280EB6830;
  if (!qword_280EB6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6830);
  }

  return result;
}

unint64_t sub_219475258()
{
  result = qword_27CC1A870;
  if (!qword_27CC1A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A870);
  }

  return result;
}

unint64_t sub_2194752B0()
{
  result = qword_27CC1A878;
  if (!qword_27CC1A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A878);
  }

  return result;
}

unint64_t sub_219475308()
{
  result = qword_280EB6850;
  if (!qword_280EB6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6850);
  }

  return result;
}

unint64_t sub_219475360()
{
  result = qword_280EB6858;
  if (!qword_280EB6858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6858);
  }

  return result;
}

unint64_t sub_2194753B4()
{
  result = qword_280EB6840;
  if (!qword_280EB6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6840);
  }

  return result;
}

uint64_t sub_219475408()
{
  v0 = sub_219BF7614();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_219475454()
{
  result = qword_27CC1A880;
  if (!qword_27CC1A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A880);
  }

  return result;
}

uint64_t sub_2194754C8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_219476624(0, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
  *v3 = v0;
  v3[1] = sub_2194755EC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2873746C75736572, 0xE900000000000029, sub_219475850, v2, v4);
}

uint64_t sub_2194755EC()
{

  return MEMORY[0x2822009F8](sub_21947668C, 0, 0);
}

uint64_t sub_219475704(uint64_t a1, void *a2)
{
  sub_219476494();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_2193EC1BC(0, sub_21947652C, v10);
}

uint64_t sub_219475858(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  sub_219476624(0, &unk_280E90850, MEMORY[0x277D33410], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  v11 = sub_219BF1634();
  v64 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v60 - v14;
  if ((a2 & 0x100) == 0)
  {
    v66 = v11;
    if (!a2)
    {
      v67 = MEMORY[0x277D84F90];
      v31 = v65 & 0xFFFFFFFFFFFFFF8;
      if (v65 >> 62)
      {
        goto LABEL_65;
      }

      v32 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v61 = a3;
      if (v32)
      {
        goto LABEL_22;
      }

LABEL_66:
      v65 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

LABEL_89:
      v48 = sub_219BF7214();
      if (v48)
      {
LABEL_69:
        v49 = 0;
        v50 = v65 & 0xC000000000000001;
        v51 = (v64 + 48);
        v63 = (v64 + 32);
        v52 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v50)
          {
            MEMORY[0x21CECE0F0](v49, v65);
            v53 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v49 >= *(v65 + 16))
            {
              goto LABEL_84;
            }

            v53 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              swift_once();
LABEL_34:
              v36 = sub_219BE5434();
              __swift_project_value_buffer(v36, qword_27CCD8BE8);
              v24 = sub_219BE5414();
              v37 = sub_219BF61F4();
              if (os_log_type_enabled(v24, v37))
              {
                v38 = swift_slowAlloc();
                *v38 = 0;
                _os_log_impl(&dword_2186C1000, v24, v37, "ArticleOptionsProvider could not fetch history. No Batch.", v38, 2u);
                v30 = v38;
LABEL_36:
                MEMORY[0x21CECF960](v30, -1, -1);
              }

              goto LABEL_37;
            }
          }

          swift_unknownObjectRetain();
          sub_219BF1624();

          if ((*v51)(v10, 1, v11) == 1)
          {
            sub_2194765B4(v10, &unk_280E90850, MEMORY[0x277D33410]);
          }

          else
          {
            v54 = v48;
            v55 = *v63;
            (*v63)(v62, v10, v11);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_2191FA570(0, v52[2] + 1, 1, v52);
            }

            v57 = v52[2];
            v56 = v52[3];
            if (v57 >= v56 >> 1)
            {
              v52 = sub_2191FA570(v56 > 1, v57 + 1, 1, v52);
            }

            v52[2] = v57 + 1;
            v58 = v52 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v57;
            v11 = v66;
            v55(v58, v62, v66);
            v48 = v54;
          }

          ++v49;
          if (v53 == v48)
          {
            goto LABEL_91;
          }
        }
      }

LABEL_90:
      v52 = MEMORY[0x277D84F90];
LABEL_91:

      v67 = v52;
LABEL_92:
      sub_219476494();
      return sub_219BF5B64();
    }

    if (a2 != 1)
    {
      goto LABEL_33;
    }

    v60 = v8;
    v67 = MEMORY[0x277D84F90];
    v15 = v65 & 0xFFFFFFFFFFFFFF8;
    if (v65 >> 62)
    {
      v16 = sub_219BF7214();
      v61 = a3;
      if (v16)
      {
LABEL_6:
        v17 = 0;
        v18 = v65 & 0xC000000000000001;
        do
        {
          if (v18)
          {
            a2 = MEMORY[0x21CECE0F0](v17, v65);
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_16:
              __break(1u);
              goto LABEL_17;
            }
          }

          else
          {
            if (v17 >= *(v15 + 16))
            {
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            a2 = *(v65 + 8 * v17 + 32);

            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_16;
            }
          }

          if (*(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState))
          {
          }

          else
          {
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
          }

          ++v17;
          v19 = v20 == v16;
          v11 = v66;
        }

        while (!v19);
        v39 = v67;
LABEL_46:
        v65 = v39;
        v40 = v60;
        if ((v39 & 0x8000000000000000) != 0 || (v65 & 0x4000000000000000) != 0)
        {
          v41 = sub_219BF7214();
          if (v41)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v41 = *(v65 + 16);
          if (v41)
          {
LABEL_49:
            v10 = 0;
            v31 = v65 & 0xC000000000000001;
            v42 = (v64 + 48);
            v62 = (v64 + 32);
            v43 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v31)
              {
                MEMORY[0x21CECE0F0](v10, v65);
                a2 = (v10 + 1);
                if (__OFADD__(v10, 1))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v10 >= *(v65 + 16))
                {
                  goto LABEL_64;
                }

                a2 = (v10 + 1);
                if (__OFADD__(v10, 1))
                {
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  v32 = sub_219BF7214();
                  v61 = a3;
                  if (!v32)
                  {
                    goto LABEL_66;
                  }

LABEL_22:
                  v33 = 0;
                  v34 = v65 & 0xC000000000000001;
                  do
                  {
                    if (v34)
                    {
                      a2 = MEMORY[0x21CECE0F0](v33, v65);
                      v35 = v33 + 1;
                      if (__OFADD__(v33, 1))
                      {
                        goto LABEL_32;
                      }
                    }

                    else
                    {
                      if (v33 >= *(v31 + 16))
                      {
                        goto LABEL_42;
                      }

                      a2 = *(v65 + 8 * v33 + 32);

                      v35 = v33 + 1;
                      if (__OFADD__(v33, 1))
                      {
LABEL_32:
                        __break(1u);
LABEL_33:
                        if (qword_27CC08648 != -1)
                        {
                          goto LABEL_85;
                        }

                        goto LABEL_34;
                      }
                    }

                    if (*(a2 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState))
                    {
                    }

                    else
                    {
                      sub_219BF73D4();
                      sub_219BF7414();
                      sub_219BF7424();
                      sub_219BF73E4();
                    }

                    ++v33;
                    v19 = v35 == v32;
                    v11 = v66;
                  }

                  while (!v19);
                  v65 = v67;
                  if ((v67 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_89;
                  }

LABEL_67:
                  if ((v65 & 0x4000000000000000) != 0)
                  {
                    goto LABEL_89;
                  }

                  v48 = *(v65 + 16);
                  if (v48)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_90;
                }
              }

              swift_unknownObjectRetain();
              sub_219BF1624();

              if ((*v42)(v40, 1, v11) == 1)
              {
                sub_2194765B4(v40, &unk_280E90850, MEMORY[0x277D33410]);
              }

              else
              {
                a3 = v41;
                v44 = *v62;
                (*v62)(v63, v40, v11);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = sub_2191FA570(0, v43[2] + 1, 1, v43);
                }

                v46 = v43[2];
                v45 = v43[3];
                if (v46 >= v45 >> 1)
                {
                  v43 = sub_2191FA570(v45 > 1, v46 + 1, 1, v43);
                }

                v43[2] = v46 + 1;
                v47 = v43 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v46;
                v11 = v66;
                v44(v47, v63, v66);
                v41 = a3;
              }

              ++v10;
              if (a2 == v41)
              {
                goto LABEL_88;
              }
            }
          }
        }

        v43 = MEMORY[0x277D84F90];
LABEL_88:

        v67 = v43;
        goto LABEL_92;
      }
    }

    else
    {
      v16 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v61 = a3;
      if (v16)
      {
        goto LABEL_6;
      }
    }

    v39 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

LABEL_17:
  if (qword_27CC08648 != -1)
  {
LABEL_43:
    swift_once();
  }

  v21 = sub_219BE5434();
  __swift_project_value_buffer(v21, qword_27CCD8BE8);
  v22 = v65;
  v23 = v65;
  v24 = sub_219BE5414();
  v25 = sub_219BF61F4();
  sub_218BB6FA0(v22, a2, 1);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v65;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_2186C1000, v24, v25, "ArticleOptionsProvider could not fetch history. Error: %@", v26, 0xCu);
    sub_2194765B4(v27, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v27, -1, -1);
    v30 = v26;
    goto LABEL_36;
  }

LABEL_37:

  v67 = MEMORY[0x277D84F90];
  sub_219476494();
  return sub_219BF5B64();
}

uint64_t sub_21947622C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_219476624(0, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
  *v3 = v0;
  v3[1] = sub_219476350;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2873746C75736572, 0xE900000000000029, sub_219476688, v2, v4);
}

uint64_t sub_219476350()
{

  return MEMORY[0x2822009F8](sub_219476468, 0, 0);
}

void sub_219476494()
{
  if (!qword_27CC1A890)
  {
    sub_219476624(255, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A890);
    }
  }
}

uint64_t sub_21947652C(unint64_t a1, __int16 a2)
{
  sub_219476494();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  return sub_219475858(a1, a2 & 0x1FF, v6);
}

uint64_t sub_2194765B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219476624(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219476624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219476690(uint64_t a1)
{
  v3 = type metadata accessor for SearchFilterItem();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v5, 0);
  v6 = v35;
  v7 = a1 + 56;
  result = sub_219BF7174();
  v9 = result;
  v10 = 0;
  v28 = a1 + 64;
  v29 = v5;
  v30 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v33 = v10;
    v34 = v13;
    v14 = v31;
    sub_2194B7980(*(a1 + 48) + *(v32 + 72) * v9, v31, type metadata accessor for SearchFilterItem);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    sub_21892DEAC();
    result = sub_2194B5710(v14, type metadata accessor for SearchFilterItem);
    v35 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_21870B65C((v17 > 1), v18 + 1, 1);
      v6 = v35;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v30;
    v20 = *(v30 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v28 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2187BC250(v9, v34, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v9, v34, 0);
    }

LABEL_4:
    v10 = v33 + 1;
    v9 = v11;
    if (v33 + 1 == v29)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

NewsUI2::RecipeFilterSelection __swiftcall RecipeFilterSelection.init(sections:)(Swift::OpaquePointer sections)
{
  v26 = v1;
  sub_2194AE414(MEMORY[0x277D84F90]);

  v3 = *(sections._rawValue + 2);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_17:

    *v26 = v6;
    return result;
  }

  v4 = 0;
  v5 = (sections._rawValue + 48);
  v6 = MEMORY[0x277D84F98];
  while (v4 < *(sections._rawValue + 2))
  {
    v9 = *(v5 - 2);
    v8 = *(v5 - 1);
    v10 = *v5;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_21870F700(v9, v8);
    v14 = v6[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v6[3] < v17)
    {
      sub_21947DB4C(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_21870F700(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v12;
    sub_219490110();
    v12 = v24;
    if (v18)
    {
LABEL_3:
      v7 = (v6[7] + 24 * v12);
      *v7 = v9;
      v7[1] = v8;
      v7[2] = v10;

      goto LABEL_4;
    }

LABEL_12:
    v6[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v6[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = (v6[7] + 24 * v12);
    *v21 = v9;
    v21[1] = v8;
    v21[2] = v10;

    v22 = v6[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v6[2] = v23;
LABEL_4:
    ++v4;
    v5 += 3;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result.sectionsByID._rawValue = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t RecipeFilterSelection.isEmpty.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(*(*v0 + 56) + 24 * (v10 | (v9 << 6)) + 16) + 16))
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t RecipeFilterSelection.updateSelectionByTogglingFilter(sectionID:searchFilterItem:selectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v10 = type metadata accessor for SearchFilterItem();
  v42 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *a4;
  v17 = *v5;
  if (*(*v5 + 16) && (v18 = sub_21870F700(a1, a2), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 24 * v18);
    v21 = v20[1];
    v23 = v20[2];
    v48 = *v20;
    v22 = v48;
    v49 = v21;
    v50 = v23;

    v24 = v23;
    v25 = v22;
    v26 = v24;
  }

  else
  {
    v48 = a1;
    v49 = a2;
    v26 = MEMORY[0x277D84FA0];
    v50 = MEMORY[0x277D84FA0];
    v21 = a2;
    v25 = a1;
  }

  v43 = a1;

  v44 = v25;
  if (v16)
  {
    v42 = v5;
    v45 = v25;
    v46 = v21;
    v47 = v26;
    v27 = *(a3 + 16);
    v28 = *(a3 + 24);

    sub_21892DEAC();
    v29._countAndFlagsBits = v27;
    v29._object = v28;
    v30 = RecipeFilterSelection.Section.contains(_:)(v29);
    sub_218D89920();

    if (v30)
    {
      MEMORY[0x28223BE20](v31);
      *(&v42 - 2) = a3;
      v32 = sub_2194ADEA4(v26, sub_2194AE52C);
      v50 = v32;
    }

    else
    {
      sub_2194B7980(a3, v13, type metadata accessor for SearchFilterItem);
      sub_219497CB0(v15, v13);
      sub_2194B5710(v15, type metadata accessor for SearchFilterItem);
      v21 = v49;
      v44 = v48;
      v32 = v50;
    }

    v5 = v42;
  }

  else
  {
    v45 = v25;
    v46 = v21;
    v47 = v26;
    v33 = *(a3 + 16);
    v34 = *(a3 + 24);

    sub_21892DEAC();
    v35._countAndFlagsBits = v33;
    v35._object = v34;
    v36 = RecipeFilterSelection.Section.contains(_:)(v35);
    sub_218D89920();

    if (v36)
    {

      v32 = MEMORY[0x277D84FA0];
    }

    else
    {
      sub_2187E72D4(0, &unk_27CC1A8A0, type metadata accessor for SearchFilterItem, MEMORY[0x277D84560]);
      v37 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_219C09BA0;
      sub_2194B7980(a3, v38 + v37, type metadata accessor for SearchFilterItem);
      v32 = sub_2194AD8D4(v38);
      swift_setDeallocating();
      sub_2194B5710(v38 + v37, type metadata accessor for SearchFilterItem);
      swift_deallocClassInstance();
    }

    v50 = v32;
  }

  v39 = v43;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v5;
  *v5 = 0x8000000000000000;
  sub_21948BD38(v44, v21, v32, v39, a2, isUniquelyReferenced_nonNull_native);

  *v5 = v45;
}

uint64_t RecipeFilterSelection.selectedTagIDs(in:)(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 16) && (sub_21870F700(a1, a2), (v3 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_219477100()
{
  sub_219BF5524();
}

uint64_t sub_21947722C()
{
  sub_219BF5524();
}

uint64_t sub_219477378()
{
  sub_219BF5524();
}

uint64_t sub_2194774C4()
{
  sub_219BF5524();
}

uint64_t sub_2194775D4()
{
  sub_219BF5524();
}

uint64_t sub_219477750()
{
  sub_219BF5524();
}

uint64_t sub_2194778B8()
{
  sub_219BF5524();
}

uint64_t sub_2194779EC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219477B24()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219477C40()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219477D88()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219477E9C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219477F90()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21947809C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21947819C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478298()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2194783C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2194784D8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478600()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478728()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478858()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478970()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478A88()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478BA4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478D04()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478E40()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219478F78()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219479084()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219479180()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2194792E0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2194793F8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219479564()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2194796A0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_219497B60(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2194797A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE5A04();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_219498044(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2194799C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_219498B24(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219479AA0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_219497B60(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219479BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFilterItem();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_2194B5710(v11, type metadata accessor for SearchFilterItem))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_2194B7980(*(a1 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v14, type metadata accessor for SearchFilterItem);
    sub_218754608(v14, v8, type metadata accessor for SearchFilterItem);
    sub_219497CB0(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RecipeFilterSelection.selectedItems()()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84FA0];
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        result = sub_219479BA4(v10, v8);
        v8 = result;
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall RecipeFilterSelection.removeAllTags(matching:)(Swift::String matching)
{
  object = matching._object;
  countAndFlagsBits = matching._countAndFlagsBits;
  v124 = type metadata accessor for SearchFilterItem();
  v131 = *(v124 - 8);
  v3 = MEMORY[0x28223BE20](v124);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v123 = &v110 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v127 = &v110 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v126 = &v110 - v11;
  MEMORY[0x28223BE20](v10);
  v129 = &v110 - v12;
  v125 = v1;
  v13 = *v1;
  v14 = *v1 + 64;
  v15 = 1 << *(*v1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*v1 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v128 = 0;
  v20 = v13;
  v122 = v5;
  while (2)
  {
    v132 = v20;
    while (1)
    {
      do
      {
        if (!v17)
        {
          while (1)
          {
            v22 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v22 >= v18)
            {

              return;
            }

            v21 = *(v14 + 8 * v22);
            ++v19;
            if (v21)
            {
              v19 = v22;
              goto LABEL_11;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v21 = v17;
LABEL_11:
        v17 = (v21 - 1) & v21;
      }

      while (!v20[2]);
      v133 = (v21 - 1) & v21;
      v23 = (v13[6] + ((v19 << 10) | (16 * __clz(__rbit64(v21)))));
      v25 = *v23;
      v24 = v23[1];

      v26 = sub_21870F700(v25, v24);
      if (v27)
      {
        break;
      }

      v20 = v132;
      v17 = v133;
    }

    v113 = v25;
    v28 = (v132[7] + 24 * v26);
    v29 = v28[1];
    v111 = *v28;
    v30 = v28[2];
    v31 = *(v30 + 16);
    v121 = countAndFlagsBits;
    v115 = v29;
    v114 = v30;
    if (!v31)
    {

      v39 = MEMORY[0x277D84F90];
      v38 = v128;
      v37 = object;
LABEL_23:
      v40 = sub_2194B20D0(v39, countAndFlagsBits, v37);
      v128 = v38;
      if (v41)
      {
        v42 = v39;
        v43 = *(v39 + 16);
        v44 = v43;
        goto LABEL_49;
      }

      v116 = v40;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_90;
      }

      v45 = v39;
      for (i = v39; ; i = v45)
      {
        v49 = i[2];
        v48 = i + 2;
        v47 = v49;
        if (v43 == v49)
        {
          break;
        }

        if (v43 >= v47)
        {
          goto LABEL_79;
        }

        v117 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v50 = *(v131 + 72);
        v118 = v50 * v43;
        v119 = v45 + v117;
        v51 = v129;
        sub_2194B7980(v45 + v117 + v50 * v43, v129, type metadata accessor for SearchFilterItem);
        if (*(v51 + 16) == v121 && *(v51 + 24) == object)
        {
          sub_2194B5710(v51, type metadata accessor for SearchFilterItem);
        }

        else
        {
          v120 = v45;
          v53 = v13;
          v54 = v51;
          v55 = sub_219BF78F4();
          sub_2194B5710(v54, type metadata accessor for SearchFilterItem);
          if (v55)
          {
            v13 = v53;
            v45 = v120;
          }

          else
          {
            v56 = v116;
            v13 = v53;
            if (v43 == v116)
            {
              v45 = v120;
            }

            else
            {
              v45 = v120;
              if (v116 < 0)
              {
                goto LABEL_83;
              }

              v57 = *v48;
              if (v116 >= v57)
              {
                goto LABEL_84;
              }

              v58 = v50 * v116;
              v59 = v119;
              sub_2194B7980(&v119[v58], v126, type metadata accessor for SearchFilterItem);
              if (v43 >= v57)
              {
                goto LABEL_85;
              }

              v60 = v118;
              sub_2194B7980(&v59[v118], v127, type metadata accessor for SearchFilterItem);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = sub_2194AB970(v45);
              }

              v61 = v45 + v117;
              sub_2194B4CFC(v127, v45 + v117 + v58, type metadata accessor for SearchFilterItem);
              if (v43 >= v45[2])
              {
                goto LABEL_86;
              }

              sub_2194B4CFC(v126, &v61[v60], type metadata accessor for SearchFilterItem);
              v56 = v116;
            }

            v116 = v56 + 1;
          }
        }

        ++v43;
      }

      v44 = v116;
      if (v43 >= v116)
      {
        v42 = v45;
        if ((v116 & 0x8000000000000000) == 0)
        {
LABEL_49:
          v62 = v44;
          v63 = v44 - v43;
          v64 = v43 + v63;
          if (!__OFADD__(v43, v63))
          {
            v65 = v42;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v135[0] = v65;
            v112 = v13;
            if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v64 <= v65[3] >> 1)
            {
              v67 = v65;
              v68 = v123;
            }

            else
            {
              v69 = v65;
              v68 = v123;
              if (v43 <= v64)
              {
                v70 = v64;
              }

              else
              {
                v70 = v43;
              }

              v67 = sub_2191F6CB0(isUniquelyReferenced_nonNull_native, v70, 1, v69);
              v135[0] = v67;
            }

            sub_2194B3E38(v62, v43, 0, type metadata accessor for SearchFilterItem);
            v71 = *(v67 + 16);
            v72 = sub_218751238(&unk_27CC0F930, type metadata accessor for SearchFilterItem);
            v134 = MEMORY[0x21CECCB00](v71, v124, v72);
            v73 = *(v67 + 16);
            if (v73)
            {
              v74 = *(v131 + 80);
              v120 = v67;
              v75 = v67 + ((v74 + 32) & ~v74);
              v76 = *(v131 + 72);
              v77 = v122;
              do
              {
                sub_2194B7980(v75, v68, type metadata accessor for SearchFilterItem);
                sub_219497CB0(v77, v68);
                sub_2194B5710(v77, type metadata accessor for SearchFilterItem);
                v75 += v76;
                --v73;
              }

              while (v73);
            }

            v78 = v134;

            v79 = *(v78 + 16);

            v13 = v112;
            if (!v79)
            {
              v96 = sub_21870F700(v113, v24);
              v98 = v97;

              if (v98)
              {
                v99 = v125;
                v100 = swift_isUniquelyReferenced_nonNull_native();
                v101 = *v99;
                v134 = *v99;
                *v99 = 0x8000000000000000;
                if (!v100)
                {
                  sub_219490110();
                  v101 = v134;
                }

                v102 = v101;

                sub_2194892D0(v96, v102);

                v132 = v102;
                *v99 = v102;
              }

              goto LABEL_76;
            }

            v80 = v125;
            v81 = swift_isUniquelyReferenced_nonNull_native();
            v134 = *v80;
            v82 = v134;
            *v80 = 0x8000000000000000;
            v83 = sub_21870F700(v113, v24);
            v85 = *(v82 + 16);
            v86 = (v84 & 1) == 0;
            v87 = __OFADD__(v85, v86);
            v88 = v85 + v86;
            if (v87)
            {
              goto LABEL_89;
            }

            v89 = v84;
            if (*(v82 + 24) >= v88)
            {
              if ((v81 & 1) == 0)
              {
                v109 = v83;
                sub_219490110();
                v83 = v109;
              }

              v90 = v113;
              if (v89)
              {
LABEL_65:
                v92 = v83;

                v93 = v134;
                v94 = (*(v134 + 56) + 24 * v92);
                v95 = v115;
                *v94 = v111;
                v94[1] = v95;
                v94[2] = v78;

LABEL_75:
                v108 = v125;

                v132 = v93;
                *v108 = v93;
LABEL_76:

                countAndFlagsBits = v121;
                v20 = v132;
                v17 = v133;
                continue;
              }
            }

            else
            {
              sub_21947DB4C(v88, v81);
              v90 = v113;
              v83 = sub_21870F700(v113, v24);
              if ((v89 & 1) != (v91 & 1))
              {
                goto LABEL_93;
              }

              if (v89)
              {
                goto LABEL_65;
              }
            }

            v93 = v134;
            *(v134 + 8 * (v83 >> 6) + 64) |= 1 << v83;
            v103 = (v93[6] + 16 * v83);
            *v103 = v90;
            v103[1] = v24;
            v104 = (v93[7] + 24 * v83);
            v105 = v115;
            *v104 = v111;
            v104[1] = v105;
            v104[2] = v78;
            v106 = v93[2];
            v87 = __OFADD__(v106, 1);
            v107 = v106 + 1;
            if (v87)
            {
              goto LABEL_92;
            }

            v93[2] = v107;
            goto LABEL_75;
          }

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
          goto LABEL_87;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    break;
  }

  sub_2187E72D4(0, &unk_27CC1A8A0, type metadata accessor for SearchFilterItem, MEMORY[0x277D84560]);
  v32 = *(v131 + 72);
  v33 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v34 = swift_allocObject();
  v35 = _swift_stdlib_malloc_size_0(v34);
  if (!v32)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v35 - v33 != 0x8000000000000000 || v32 != -1)
  {
    v34[2] = v31;
    v34[3] = 2 * ((v35 - v33) / v32);
    v120 = sub_2194ABB00(v135, v34 + v33, v31, v114);
    v119 = v135[1];
    v118 = v135[2];
    v117 = v135[3];
    v116 = v135[4];

    swift_bridgeObjectRetain_n();
    sub_21892DE98();
    if (v120 == v31)
    {
      v37 = object;
      countAndFlagsBits = v121;
      v38 = v128;
      v39 = v34;
      goto LABEL_23;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_219BF79A4();
  __break(1u);
}

NewsUI2::RecipeFilterSelection static RecipeFilterSelection.transient(filterItems:)()
{
  sub_21871AEC0(0, &qword_27CC1A8B0, &type metadata for RecipeFilterSelection.Section, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;

  v2 = sub_218C3D608(v1);

  *(inited + 32) = 0x6E6569736E617274;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = v2;
  return RecipeFilterSelection.init(sections:)(inited);
}

uint64_t RecipeFilterSelection.selectedTagIDs()()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84FA0];
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      v11 = sub_219476690(v8);

      v12 = sub_218845F78(v11);

      return v12;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        result = sub_219479BA4(v10, v8);
        v8 = result;
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t RecipeFilterSelection.Section.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeFilterSelection.Section.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RecipeFilterSelection.Section.items.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

Swift::Bool __swiftcall RecipeFilterSelection.Section.contains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for SearchFilterItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    sub_2194B7980(*(v8 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v7, type metadata accessor for SearchFilterItem);
    if (*(v7 + 2) == countAndFlagsBits && *(v7 + 3) == object)
    {
      sub_2194B5710(v7, type metadata accessor for SearchFilterItem);
LABEL_17:

      return 1;
    }

    v11 &= v11 - 1;
    v17 = sub_219BF78F4();
    result = sub_2194B5710(v7, type metadata accessor for SearchFilterItem);
    if (v17)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return 0;
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static RecipeFilterSelection.Section.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  return sub_21947B1F8(v2, v3);
}

uint64_t sub_21947AE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEDB04();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_218751238(&qword_280E92540, MEMORY[0x277D31D70]);
      v26 = sub_219BF52E4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_218751238(&qword_27CC1ADC8, MEMORY[0x277D31D70]);
        v31 = sub_219BF53A4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947B1F8(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for SearchFilterItem();
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v45 = a2 + 56;
  v38 = v18;
  v39 = a1 + 56;
  if (!v17)
  {
    goto LABEL_8;
  }

  do
  {
    v19 = __clz(__rbit64(v17));
    v34 = (v17 - 1) & v17;
LABEL_13:
    v36 = v10;
    v37 = a1;
    v22 = *(v10 + 72);
    sub_2194B7980(*(a1 + 48) + v22 * (v19 | (v13 << 6)), v12, type metadata accessor for SearchFilterItem);
    v35 = v12;
    v23 = v43;
    sub_218754608(v12, v43, type metadata accessor for SearchFilterItem);
    sub_219BF7AA4();
    v25 = *v23;
    v24 = *(v23 + 8);
    sub_219BF5524();
    v26 = *(v23 + 16);
    v44 = *(v23 + 24);
    v27 = *(v23 + 32);
    MEMORY[0x21CECE850](v27);
    sub_219BF5524();
    v28 = *(v42 + 24);
    v40 = sub_219BDBD34();
    sub_218751238(&qword_27CC1AD70, MEMORY[0x277CC9578]);
    v41 = v28;
    sub_219BF52F4();
    v29 = sub_219BF7AE4();
    v30 = -1 << *(a2 + 32);
    v31 = v29 & ~v30;
    if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
LABEL_33:
      sub_2194B5710(v43, type metadata accessor for SearchFilterItem);
      return 0;
    }

    v32 = ~v30;
    while (1)
    {
      sub_2194B7980(*(a2 + 48) + v31 * v22, v6, type metadata accessor for SearchFilterItem);
      v33 = *v6 == v25 && *(v6 + 1) == v24;
      if (!v33 && (sub_219BF78F4() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ((v6[32] & 1) == 0)
      {
        break;
      }

      if (v27)
      {
        goto LABEL_26;
      }

LABEL_16:
      sub_2194B5710(v6, type metadata accessor for SearchFilterItem);
      v31 = (v31 + 1) & v32;
      if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v27)
    {
      goto LABEL_16;
    }

LABEL_26:
    if ((*(v6 + 2) != v26 || *(v6 + 3) != v44) && (sub_219BF78F4() & 1) == 0 || (sub_219BDBC94() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2194B5710(v6, type metadata accessor for SearchFilterItem);
    result = sub_2194B5710(v43, type metadata accessor for SearchFilterItem);
    v10 = v36;
    a1 = v37;
    v17 = v34;
    v12 = v35;
    v18 = v38;
    v14 = v39;
  }

  while (v34);
LABEL_8:
  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return 1;
    }

    v21 = *(v14 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v34 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947B630(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_219BF7AA4();
    sub_219BF5524();

    v16 = sub_219BF7AE4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v21 = 0xE700000000000000;
      v20 = 0x4554454C485441;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x454E5F4C41434F4CLL;
      }

      else
      {
        v22 = 0x4E574F4E4B4E55;
      }

      if (v15 == 1)
      {
        v23 = 0xEA00000000005357;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      if (v20 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_219BF78F4();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0x454E5F4C41434F4CLL;
      v21 = 0xEA00000000005357;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v21 = 0xE700000000000000;
    v20 = 0x4E574F4E4B4E55;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE700000000000000;
    if (v20 != 0x4554454C485441)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947B910(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x21CECE820](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947BA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE5A04();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_218751238(&qword_280EE5E20, MEMORY[0x277D31AD0]);
      v26 = sub_219BF52E4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_218751238(&unk_280EE5E10, MEMORY[0x277D31AD0]);
        v31 = sub_219BF53A4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947BE18(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    sub_219BF7AA4();
    sub_219BF5524();
    result = sub_219BF7AE4();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947BF48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_219BF7A94();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947C09C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v16 = sub_219BF7AE4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947C254(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1FE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0]);
      v26 = sub_219BF52E4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_218751238(&qword_27CC1AC40, MEMORY[0x277D336F0]);
        v31 = sub_219BF53A4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947C604(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_219BF7AA4();
    MEMORY[0x21CECE850](v13);
    result = sub_219BF7AE4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947C774(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDC104();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8]);
      v26 = sub_219BF52E4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_218751238(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
        v31 = sub_219BF53A4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21947CB24(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  return sub_21947B1F8(v2, v3);
}

uint64_t RecipeFilterSelection.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  strcpy((inited + 32), "sectionsByID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_2194B24E0();
  *(inited + 72) = v5;
  *(inited + 48) = v3;

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2194B7880(inited + 32, &qword_280E8F6E0, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, sub_218831BDC);
  sub_21871AEC0(0, &qword_27CC1A8C0, &type metadata for RecipeFilterSelection, MEMORY[0x277D6CC20]);
  a1[3] = v6;
  a1[4] = sub_2194B2540(&qword_27CC1A8C8, &qword_27CC1A8C0, &type metadata for RecipeFilterSelection);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21947CD00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  strcpy((inited + 32), "sectionsByID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_2194B24E0();
  *(inited + 72) = v5;
  *(inited + 48) = v3;

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2194B7880(inited + 32, &qword_280E8F6E0, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, sub_218831BDC);
  sub_21871AEC0(0, &qword_27CC1A8C0, &type metadata for RecipeFilterSelection, MEMORY[0x277D6CC20]);
  a1[3] = v6;
  a1[4] = sub_2194B2540(&qword_27CC1A8C8, &qword_27CC1A8C0, &type metadata for RecipeFilterSelection);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21947CE5C()
{
  sub_2194B7558();

  return sub_219BE2324();
}

uint64_t RecipeFilterSelection.Section.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 32) = 25705;
  *(inited + 16) = xmmword_219C09EC0;
  v7 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 72) = v7;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  sub_2194B25A4();
  *(inited + 120) = v8;
  *(inited + 96) = v5;

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218831BDC(0, &qword_280E8F6E0);
  swift_arrayDestroy();
  sub_21871AEC0(0, &qword_27CC1A8D8, &type metadata for RecipeFilterSelection.Section, MEMORY[0x277D6CC20]);
  a1[3] = v9;
  a1[4] = sub_2194B2540(&qword_27CC1A8E0, &qword_27CC1A8D8, &type metadata for RecipeFilterSelection.Section);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21947D00C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 32) = 25705;
  *(inited + 16) = xmmword_219C09EC0;
  v7 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 72) = v7;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  sub_2194B25A4();
  *(inited + 120) = v8;
  *(inited + 96) = v5;

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218831BDC(0, &qword_280E8F6E0);
  swift_arrayDestroy();
  sub_21871AEC0(0, &qword_27CC1A8D8, &type metadata for RecipeFilterSelection.Section, MEMORY[0x277D6CC20]);
  a1[3] = v9;
  a1[4] = sub_2194B2540(&qword_27CC1A8E0, &qword_27CC1A8D8, &type metadata for RecipeFilterSelection.Section);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21947D184()
{
  sub_2194B7504();

  return sub_219BE2324();
}

void *sub_21947D1C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21871AEC0(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21947D290(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21871AEC0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_21947D368(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2187E72D4(0, a3, a4, MEMORY[0x277D84560]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21947D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size_0(v8);
  result = v8;
  v12 = v9 - 32;
  v11 = v9 < 32;
  v13 = v9 - 25;
  if (!v11)
  {
    v13 = v12;
  }

  v8[2] = a1;
  v8[3] = 2 * (v13 >> 3);
  return result;
}

void *sub_21947D6A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2194B6F48();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21947D72C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21871AEC0(0, a3, a4, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

uint64_t sub_21947D7B0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2194B7D34(0, &qword_280E8D228, type metadata accessor for CuratedMagazineFeedGroupKnobs, MEMORY[0x277D84460]);
  v40 = a2;
  result = sub_219BF7594();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_218754608(v28, v41, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      }

      else
      {
        sub_2194B7980(v28, v41, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_218754608(v41, *(v9 + 56) + v27 * v17, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_21947DB4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2194B7A7C();
  v37 = a2;
  result = sub_219BF7594();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21947DE70(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ShortcutCategory();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2194B7D34(0, &qword_27CC1ADA8, type metadata accessor for ShortcutCategory, MEMORY[0x277D84460]);
  v40 = a2;
  result = sub_219BF7594();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_218754608(v28, v41, type metadata accessor for ShortcutCategory);
      }

      else
      {
        sub_2194B7980(v28, v41, type metadata accessor for ShortcutCategory);
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_218754608(v41, *(v9 + 56) + v27 * v17, type metadata accessor for ShortcutCategory);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_21947E240(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s9DataStoreC10CaptureKeyVMa();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_2194B7254();
  v39 = a2;
  result = sub_219BF7594();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_218754608(v25, v7, _s9DataStoreC10CaptureKeyVMa);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_2194B7980(v25, v7, _s9DataStoreC10CaptureKeyVMa);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_219BF7AA4();
      sub_219BF5524();
      sub_219BE4D74();
      sub_218751238(&qword_27CC1ACE0, MEMORY[0x277D34A70]);
      sub_219BF52F4();
      result = sub_219BF7AE4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_218754608(v7, *(v11 + 48) + v24 * v19, _s9DataStoreC10CaptureKeyVMa);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21947E64C(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  sub_2194B7D34(0, a4, a5, MEMORY[0x277D84460]);
  v47 = a2;
  result = sub_219BF7594();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v5;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_21947E9EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_21945DEC0();
  result = sub_219BF7594();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_219BF6DC4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21947EC7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TagFeedModelPlaceholder();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2194B7D34(0, &unk_280E8D268, type metadata accessor for TagFeedModelPlaceholder, MEMORY[0x277D84460]);
  v40 = a2;
  result = sub_219BF7594();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_218754608(v28, v41, type metadata accessor for TagFeedModelPlaceholder);
      }

      else
      {
        sub_2194B7980(v28, v41, type metadata accessor for TagFeedModelPlaceholder);
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_218754608(v41, *(v9 + 56) + v27 * v17, type metadata accessor for TagFeedModelPlaceholder);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}