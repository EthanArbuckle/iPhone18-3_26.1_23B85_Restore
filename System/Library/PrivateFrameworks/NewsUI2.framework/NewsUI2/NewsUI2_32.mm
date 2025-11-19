uint64_t sub_218A4CFB0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_96:
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v63 = a1;
  if (v6)
  {
    v67 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v7 = v67;
    v59 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v9, v3);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }

        if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v10 = *(v3 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v70[0] = v10;
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v11 = v65;
      v5 = v66;
      v67 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      a1 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v7 = v67;
      }

      ++v9;
      *(v7 + 16) = a1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v5;
      if (v6 == v9)
      {
        v5 = v59;
        break;
      }
    }
  }

  v15 = sub_218845F78(v7);

  if (v5)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_219BF7214();
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  if (v16)
  {
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x21CECE0F0](v17, v3);
        v26 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v17 >= *(v5 + 16))
        {
          goto LABEL_91;
        }

        a1 = *(v3 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v26 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }
      }

      v67 = a1;
      if (!v63[6])
      {
        break;
      }

      swift_getAtKeyPath();
      swift_unknownObjectRelease();

      a1 = v65;
      v25 = v66;
      ++v17;
      if (v66)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_218840D24(0, *(v18 + 2) + 1, 1, v18);
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v31 = sub_218840D24((v27 > 1), v28 + 1, 1, v18);
          v29 = v28 + 1;
          v18 = v31;
        }

        *(v18 + 2) = v29;
        v30 = &v18[16 * v28];
        *(v30 + 4) = a1;
        *(v30 + 5) = v25;
        v17 = v26;
        if (v16 == v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
LABEL_24:
        if (v16 == v17)
        {
          goto LABEL_19;
        }
      }
    }

    swift_unknownObjectRelease();
    a1 = 0;
    ++v17;
    goto LABEL_24;
  }

LABEL_19:
  v56 = sub_218845F78(v18);

  v19 = v63;
  v20 = v63[4];
  v70[0] = MEMORY[0x277D84F90];
  if (v20 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  v62 = v3;
  v55 = v20;
  if (!v3)
  {
    a1 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v22 = 0;
  v60 = v20 & 0xC000000000000001;
  v23 = v20 & 0xFFFFFFFFFFFFFF8;
  v24 = v20 + 32;
  v5 = v15 + 56;
  while (v60)
  {
    v32 = MEMORY[0x21CECE0F0](v22, v55);
    v33 = __OFADD__(v22++, 1);
    if (v33)
    {
      goto LABEL_57;
    }

LABEL_44:
    v69 = v32;
    swift_getAtKeyPath();
    if (*(v15 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v34 = sub_219BF7AE4(), v35 = -1 << *(v15 + 32), a1 = v34 & ~v35, ((*(v5 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0))
    {
      v36 = ~v35;
      while (1)
      {
        v37 = (*(v15 + 48) + 16 * a1);
        v38 = *v37 == v67 && v37[1] == v68;
        if (v38 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        a1 = (a1 + 1) & v36;
        if (((*(v5 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      sub_219BF73D4();
      a1 = *(v70[0] + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    else
    {
LABEL_39:
      swift_unknownObjectRelease();
    }

    v3 = v62;
    if (v22 == v62)
    {
      goto LABEL_58;
    }
  }

  if (v22 >= *(v23 + 16))
  {
    goto LABEL_92;
  }

  v32 = *(v24 + 8 * v22);
  swift_unknownObjectRetain();
  v33 = __OFADD__(v22++, 1);
  if (!v33)
  {
    goto LABEL_44;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  a1 = v70[0];
  v19 = v63;
  v20 = v55;
  v21 = MEMORY[0x277D84F90];
LABEL_60:
  v65 = v19[1];

  sub_2191ED6C8(a1);
  v39 = v65;
  v70[0] = v21;
  if (!v3)
  {
    v21 = v19[5];
    v49 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v40 = 0;
  v58 = v20 & 0xFFFFFFFFFFFFFF8;
  v61 = v20 & 0xC000000000000001;
  v41 = v20 + 32;
  v5 = v15 + 56;
  while (2)
  {
    if (v61)
    {
      v42 = MEMORY[0x21CECE0F0](v40, v55);
      v33 = __OFADD__(v40++, 1);
      if (v33)
      {
        break;
      }

      goto LABEL_67;
    }

    if (v40 >= *(v58 + 16))
    {
      goto LABEL_93;
    }

    v42 = *(v41 + 8 * v40);
    swift_unknownObjectRetain();
    v33 = __OFADD__(v40++, 1);
    if (!v33)
    {
LABEL_67:
      v69 = v42;
      v21 = v19[5];
      swift_getAtKeyPath();
      v3 = v68;
      if (*(v15 + 16) && (a1 = v67, sub_219BF7AA4(), sub_219BF5524(), v43 = sub_219BF7AE4(), v44 = -1 << *(v15 + 32), v45 = v43 & ~v44, ((*(v5 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v15 + 48) + 16 * v45);
          v48 = *v47 == v67 && v47[1] == v68;
          if (v48 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v5 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_62:

        sub_219BF73D4();
        a1 = *(v70[0] + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      v19 = v63;
      if (v40 == v62)
      {
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_81:
  v49 = v70[0];
  v39 = v65;
LABEL_83:
  v65 = *v19;
  v67 = v19[6];
  v50 = v19[2];
  v70[0] = v50;
  if (*(v15 + 16) <= *(v50 + 16) >> 3)
  {
    v69 = v50;
    sub_218A4E998(&v65, v64, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);

    sub_218A4EEDC(&v67, v64, sub_218A4E8C4);
    sub_218A4EEDC(v70, v64, sub_2186E2394);
    sub_218EB3B08(v15);

    v51 = v69;
  }

  else
  {
    sub_218A4E998(&v65, &v69, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);

    sub_218A4EEDC(&v67, &v69, sub_218A4E8C4);
    sub_218A4EEDC(v70, &v69, sub_2186E2394);
    v51 = sub_218EB4048(v15, v50);
  }

  v52 = v19[3];
  if (*(v56 + 16) <= *(v52 + 16) >> 3)
  {
    v69 = v19[3];

    sub_218EB3B08(v56);

    v53 = v69;
  }

  else
  {

    v53 = sub_218EB4048(v56, v52);
  }

  v54 = v67;
  *a3 = v65;
  a3[1] = v39;
  a3[2] = v51;
  a3[3] = v53;
  a3[4] = v49;
  a3[5] = v21;
  a3[6] = v54;
  return result;
}

uint64_t sub_218A4D828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(swift_allocObject() + 16) = a5;

  v6 = sub_219BE2E54();
  sub_219BE2F64();

LABEL_6:
  sub_218A4E948(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218A4D970(uint64_t a1, unint64_t a2)
{
  sub_219A459A8(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
    {
      swift_unknownObjectRetain();
      if (!i)
      {
        break;
      }

      v7 = 0;
      v26 = v4 & 0xC000000000000001;
      v25 = v4 + 32;
      v23 = v5;
      v24 = v4;
      while (1)
      {
        if (v26)
        {
          v8 = MEMORY[0x21CECE0F0](v7, v4);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_33;
          }

          v8 = *(v25 + 8 * v7);
        }

        v9 = v8;
        v10 = __OFADD__(v7, 1);
        v11 = v7 + 1;
        if (v10)
        {
          break;
        }

        v27 = v11;
        if (a2 >> 62)
        {
          v5 = sub_219BF7214();
        }

        else
        {
          v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = 0;
        do
        {
          if (v5 == v12)
          {
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            goto LABEL_7;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CECE0F0](v12, a2);
            if (__OFADD__(v12, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v13 = *(a2 + 8 * v12 + 32);
            swift_unknownObjectRetain();
            if (__OFADD__(v12, 1))
            {
LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          v14 = [v13 identifier];
          v15 = sub_219BF5414();
          v17 = v16;

          v18 = [v9 identifier];
          v19 = sub_219BF5414();
          v21 = v20;

          if (v15 == v19 && v17 == v21)
          {

            swift_unknownObjectRelease();

            goto LABEL_7;
          }

          v4 = sub_219BF78F4();
          swift_unknownObjectRelease();

          ++v12;
        }

        while ((v4 & 1) == 0);

LABEL_7:
        v5 = v23;
        v7 = v27;
        v4 = v24;
        if (v27 == i)
        {
          goto LABEL_29;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }
  }

LABEL_29:
  sub_218A4E948(0, &unk_280EE6F20, &_s13MissedStoriesVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A4DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(swift_allocObject() + 16) = a5;

  v6 = sub_219BE2E54();
  sub_219BE2F64();

LABEL_6:
  *(swift_allocObject() + 16) = a5;

  v7 = sub_219BE2E54();
  sub_218A4E818();
  sub_219BE2F74();

  sub_218A4E948(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218A4DE78(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  sub_219A45ECC(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  sub_218A4E948(0, &unk_280EE6F20, &_s13MissedStoriesVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218A4EE6C(v2);
  return sub_219BE3014();
}

uint64_t sub_218A4DF24(void *a1, uint64_t a2, void (*a3)(void, void, void, void, uint64_t))
{
  a3(*a1, a1[1], a1[2], a1[3], a2);
  sub_218A4E948(0, &unk_280EE6F30, &_s11SuggestionsVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218A4DFB8(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_219BE2CF4();
  v4 = v7;
  if (a1 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *(swift_allocObject() + 16) = a1;

    v5 = sub_219BE2E54();
    _s11MyHeadlinesCMa();
    v6 = sub_219BE2F64();

    v4 = v6;
  }

LABEL_4:
  *a2 = v4;
}

uint64_t sub_218A4E09C(void *a1, uint64_t a2, void (*a3)(void))
{
  a3(*a1);
  sub_218A4E350(0);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218A4E0F8(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_219BE2CF4();
  v4 = v7;
  if (a1 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *(swift_allocObject() + 16) = a1;

    v5 = sub_219BE2E54();
    v6 = sub_219BE2F64();

    v4 = v6;
  }

LABEL_4:
  *a2 = v4;
}

void sub_218A4E248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218A4E2AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_218A4E948(255, a3, a4, MEMORY[0x277D6CF30]);
    v5 = sub_219BE2D24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218A4E404()
{
  if (!qword_280ECC538)
  {
    sub_2186D6710(255, &qword_280E8E260);
    v0 = type metadata accessor for TodayFeedPoolContent();
    if (!v1)
    {
      atomic_store(v0, &qword_280ECC538);
    }
  }
}

uint64_t sub_218A4E46C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A4E4FC(void *a1, uint64_t a2, void (*a3)(void, void, void, void, uint64_t))
{
  a3(*a1, a1[1], a1[2], a1[3], a2);
  sub_218A4E948(0, &qword_280EE6F58, &_s4FeedVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

char *sub_218A4E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = swift_allocObject();
  *(v21 + 2) = a1;
  *(v21 + 3) = a2;
  *(v21 + 4) = a3;
  v22 = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData;
  v23 = sub_219BDF6C4();
  (*(*(v23 - 8) + 32))(&v21[v22], a4, v23);
  *&v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems] = a5;
  v24 = &v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 1) = v25;
  *(v24 + 2) = *(a6 + 32);
  *(v24 + 6) = *(a6 + 48);
  v26 = &v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes];
  v27 = *(a8 + 16);
  *v26 = *a8;
  *(v26 + 1) = v27;
  *(v26 + 2) = *(a8 + 32);
  *(v26 + 6) = *(a8 + 48);
  v28 = &v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags];
  *(v28 + 6) = *(a7 + 48);
  v29 = *(a7 + 32);
  *(v28 + 1) = *(a7 + 16);
  *(v28 + 2) = v29;
  *v28 = *a7;
  *&v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou] = a9;
  *&v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines] = a10;
  *&v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories] = a11;
  *&v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions] = a12;
  *&v21[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines] = a13;
  return v21;
}

uint64_t sub_218A4E738(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return sub_218A4D970(v5, v2);
}

void sub_218A4E818()
{
  if (!qword_280E8E668)
  {
    sub_2186D6710(255, &qword_280E8E680);
    sub_218799578(255, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, sub_2186C6148);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E668);
    }
  }
}

void sub_218A4E8C4()
{
  if (!qword_280E8B548)
  {
    sub_218A4EA90(255, &unk_280E8B550, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B548);
    }
  }
}

void sub_218A4E948(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218A4E998(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_218799578(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_218A4EA0C()
{
  if (!qword_280E8B530)
  {
    sub_218A4EA90(255, &unk_280E8B538, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B530);
    }
  }
}

void sub_218A4EA90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_218A4E948(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v6 = sub_219BF7B54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218A4EB28()
{
  result = qword_280E8EB10;
  if (!qword_280E8EB10)
  {
    sub_218799578(255, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EB10);
  }

  return result;
}

uint64_t sub_218A4EBC4@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_218A4EC18()
{
  result = qword_280E8EBF0;
  if (!qword_280E8EBF0)
  {
    sub_218799578(255, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EBF0);
  }

  return result;
}

uint64_t sub_218A4EE6C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_218A4EEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A4EF6C(void *a1)
{
  if ([a1 mostFrequentLocation])
  {
    sub_218A4FB20(0, &qword_27CC0CF90, sub_218A4FB84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_218A4F9C0();
    swift_allocError();
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 2;
    sub_218A4FB20(0, &qword_27CC0CF90, sub_218A4FB84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218A4F088()
{
  sub_218A4FB20(0, &unk_280EE6BC8, MEMORY[0x277D33350], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218A4F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a1;
  v15[7] = a2;
  v18[4] = sub_218A4FB10;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_218C1CBB4;
  v18[3] = &block_descriptor_9;
  v16 = _Block_copy(v18);

  v17 = a7;
  swift_unknownObjectRetain();

  [a6 fetchLocalAreasProvider_];
  _Block_release(v16);
}

void sub_218A4F270(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5, void *a6, void (*a7)(char *), uint64_t a8)
{
  v15 = sub_219BF1404();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = a2;
    (a3)(a2);
    v21 = a2;
LABEL_3:

    return;
  }

  if (!a1)
  {
    sub_218A4F9C0();
    v29 = swift_allocError();
    *v30 = xmmword_219C14CF0;
    *(v30 + 16) = 2;
    a3();
    v21 = v29;
    goto LABEL_3;
  }

  v37 = a8;
  v38 = a7;
  v39 = a3;
  v40 = v17;
  v22 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
  v23 = sub_219BF5D44();

  v24 = [a6 identifier];
  v25 = sub_219BF5414();
  v27 = v26;

  LOBYTE(v25) = sub_2188537B8(v25, v27, v23);

  if (v25)
  {
    v28 = a5;
    sub_219BF13F4();
    v38(v19);
    swift_unknownObjectRelease();
    (*(v16 + 8))(v19, v40);
  }

  else
  {
    v31 = [a6 identifier];
    v32 = sub_219BF5414();
    v34 = v33;

    sub_218A4F9C0();
    v35 = swift_allocError();
    *v36 = v32;
    *(v36 + 8) = v34;
    *(v36 + 16) = 0;
    v39();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_218A4F550(void *a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_218A4FB20(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  sub_218A4FB20(0, &qword_280E908B8, MEMORY[0x277D33350], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_219BF1404();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  swift_getObjectType();
  sub_218F998B0(v5);
  v16 = type metadata accessor for ChannelSupergroupConfig();
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_218A4F950(v5, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    v17 = MEMORY[0x277D33350];
    sub_218A4F950(v8, &qword_280E908B8, MEMORY[0x277D33350]);
    v18 = [a1 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    sub_218A4F9C0();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    sub_218A4FB20(0, &unk_280EE6BC8, v17, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }

  sub_218A4FA14(&v5[*(v16 + 24)], v8);
  sub_218A4FAA8(v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 16))(v13, v15, v9);
  sub_218A4FB20(0, &unk_280EE6BC8, MEMORY[0x277D33350], MEMORY[0x277D6CF30]);
  swift_allocObject();
  v24 = sub_219BE3014();
  (*(v10 + 8))(v15, v9);
  return v24;
}

uint64_t sub_218A4F950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218A4FB20(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218A4F9C0()
{
  result = qword_27CC0CF80;
  if (!qword_27CC0CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CF80);
  }

  return result;
}

uint64_t sub_218A4FA14(uint64_t a1, uint64_t a2)
{
  sub_218A4FB20(0, &qword_280E908B8, MEMORY[0x277D33350], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A4FAA8(uint64_t a1)
{
  v2 = type metadata accessor for ChannelSupergroupConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218A4FB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218A4FB84()
{
  result = qword_27CC0CF98;
  if (!qword_27CC0CF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0CF98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI222ChannelLocationServiceV6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_218A4FC00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218A4FC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_218A4FC8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

char *sub_218A4FCC0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI211WelcomeView_scrollView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for WelcomeView.TitleGroup()) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for WelcomeView.Footer()) initWithEffect_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7NewsUI211WelcomeView_scrollView;
  v15 = *&v13[OBJC_IVAR____TtC7NewsUI211WelcomeView_scrollView];
  v16 = v13;
  [v16 addSubview_];
  [*&v13[v14] addSubview_];
  [v16 addSubview_];

  return v16;
}

char *sub_218A4FE6C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  v11 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v32.receiver = v4;
  v32.super_class = type metadata accessor for WelcomeView.TitleGroup();
  v12 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon];
  v14 = v12;
  [v14 addSubview_];
  v15 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel;
  [v14 addSubview_];
  v16 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel;
  [v14 addSubview_];
  v17 = [v14 accessibilityTraits];
  v18 = v17;
  v19 = *MEMORY[0x277D76558];
  if (v17)
  {
    if ((v19 & ~v17) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v19)
  {
    v18 = 0;
    goto LABEL_7;
  }

  v18 = v19 | v17;
LABEL_7:
  [v14 setAccessibilityTraits_];
  v20 = *&v14[v15];
  v30 = sub_218A514A8;
  v31 = 0;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_219991994;
  v29 = &block_descriptor_11;
  v21 = _Block_copy(&v26);
  [v20 setIsAccessibilityElementBlock_];
  _Block_release(v21);
  v22 = *&v14[v16];
  v30 = sub_218A514A8;
  v31 = 0;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_219991994;
  v29 = &block_descriptor_14;
  v23 = _Block_copy(&v26);
  [v22 setIsAccessibilityElementBlock_];
  _Block_release(v23);
  v30 = sub_218A50BF0;
  v31 = 0;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_219991994;
  v29 = &block_descriptor_17;
  v24 = _Block_copy(&v26);
  [v14 setIsAccessibilityElementBlock_];
  _Block_release(v24);

  return v14;
}

char *sub_218A50240(void *a1)
{
  if (sub_219BED0C4())
  {
    v3 = MEMORY[0x277D75220];
  }

  else
  {
    v3 = type metadata accessor for WelcomeView.ContinueButton();
  }

  v4 = [objc_allocWithZone(v3) initWithFrame_];
  *&v1[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton] = v4;
  v5 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v6 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v8 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  v17.receiver = v1;
  v17.super_class = type metadata accessor for WelcomeView.Footer();
  v9 = objc_msgSendSuper2(&v17, sel_initWithEffect_, a1);
  v10 = [v9 contentView];
  v11 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator;
  [v10 addSubview_];

  [*&v9[v11] startAnimating];
  v12 = [v9 contentView];
  [v12 addSubview_];

  v13 = [v9 contentView];
  [v13 addSubview_];

  v14 = [v9 contentView];
  [v14 addSubview_];

  v15 = [v9 contentView];
  [v15 addSubview_];

  return v9;
}

void sub_218A5064C()
{
  if ([v0 isHighlighted])
  {
    if (qword_280E8DA90 != -1)
    {
      swift_once();
    }

    v1 = &qword_280F61800;
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v1 = &qword_280F617F8;
  }

  v2 = *v1;
  if ([v0 isHighlighted])
  {
    v3 = 0.25;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v9[4] = sub_218A5114C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218793E0C;
  v9[3] = &block_descriptor_10;
  v6 = _Block_copy(v9);
  v7 = v2;
  v8 = v0;

  [v4 animateWithDuration:v6 animations:0.25];
  _Block_release(v6);
}

void sub_218A50938(void *a1, uint64_t a2, double a3)
{
  [a1 setBackgroundColor_];
  v5 = [a1 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setAlpha_];
  }
}

id sub_218A509EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_218A50B10()
{
  v0 = [objc_opt_self() currentRequest];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 technology];

    v3 = sub_219BF5414();
    v5 = v4;
    if (v3 == sub_219BF5414() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_219BF78F4();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_218A50BF0()
{
  v0 = [objc_opt_self() currentRequest];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 technology];

    v3 = sub_219BF5414();
    v5 = v4;
    if (v3 == sub_219BF5414() && v5 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_219BF78F4() ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

id sub_218A50D48()
{
  v1 = *(v0 + OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_219BF5414();

    v5 = [*(v0 + OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel) text];
    if (v5)
    {
      v6 = v5;
      v7 = sub_219BF5414();
      v9 = v8;

      MEMORY[0x21CECC330](8238, 0xE200000000000000);

      MEMORY[0x21CECC330](v7, v9);

      return v4;
    }
  }

  result = [v1 text];
  if (result)
  {
    v11 = result;
    v12 = sub_219BF5414();

    return v12;
  }

  return result;
}

uint64_t sub_218A50F00()
{
  v1 = [objc_opt_self() currentRequest];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 technology];

  v4 = sub_219BF5414();
  v6 = v5;
  if (v4 == sub_219BF5414() && v6 == v7)
  {

    goto LABEL_9;
  }

  v9 = sub_219BF78F4();

  if (v9)
  {
LABEL_9:
    sub_218A510F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C0B8C0;
    v13 = *(v0 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup);
    v14 = *(v13 + OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel);
    *(v10 + 56) = sub_2186C6148(0, &qword_27CC0CFF8);
    *(v10 + 32) = v14;
    v11 = *(v13 + OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel);
    *(v10 + 88) = sub_2186C6148(0, &qword_280E8DA58);
    *(v10 + 64) = v11;
    v12 = *(v0 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer);
    *(v10 + 120) = type metadata accessor for WelcomeView.Footer();
    *(v10 + 96) = v12;
    v15 = v14;
    goto LABEL_10;
  }

LABEL_7:
  sub_218A510F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = *(v0 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup);
  *(v10 + 56) = type metadata accessor for WelcomeView.TitleGroup();
  *(v10 + 32) = v11;
  v12 = *(v0 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer);
  *(v10 + 88) = type metadata accessor for WelcomeView.Footer();
  *(v10 + 64) = v12;
LABEL_10:
  v16 = v11;
  v17 = v12;
  return v10;
}

void sub_218A510F8()
{
  if (!qword_280E8B590)
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B590);
    }
  }
}

void sub_218A51158()
{
  v1 = OBJC_IVAR____TtC7NewsUI211WelcomeView_scrollView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for WelcomeView.TitleGroup()) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for WelcomeView.Footer()) initWithEffect_];
  sub_219BF7514();
  __break(1u);
}

void sub_218A51240()
{
  v1 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  v3 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_218A51338()
{
  if (sub_219BED0C4())
  {
    v1 = MEMORY[0x277D75220];
  }

  else
  {
    v1 = type metadata accessor for WelcomeView.ContinueButton();
  }

  v2 = [objc_allocWithZone(v1) initWithFrame_];
  *(v0 + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) = v2;
  v3 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v4 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v6 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218A514B4(uint64_t a1)
{
  v4 = *(a1 + 152);
  v3 = *(a1 + 160);
  if (!*(a1 + 168))
  {
    __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
    __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);

    sub_2190032D0(v4, v3, v15, v14, v24);
    sub_218A518E8(v4, v3, 0);
    v22[0] = 0;
    v23 = 0;
LABEL_19:
    v11 = sub_219A8B95C(v24, v22);

    __swift_destroy_boxed_opaque_existential_1(v24);
    return v11;
  }

  if (*(a1 + 168) == 1)
  {
    v5 = v1;
    v6 = v4;
    v7 = sub_219BF6364();
    if (qword_280E8D920 != -1)
    {
      v21 = v7;
      swift_once();
      v7 = v21;
    }

    v8 = qword_280F617C8;
    LOBYTE(v24[0]) = v7;
    sub_2187E0FB8();
    swift_allocObject();
    v9 = v8;
    v10 = sub_219BE1E84();
    __swift_project_boxed_opaque_existential_1(v5 + 22, v5[25]);
    v11 = sub_219517A08(v6, v10);

    sub_218A518E8(v4, v3, 1);
    v12 = &unk_280EC9600;
    v13 = type metadata accessor for TagFeedViewController;
    goto LABEL_6;
  }

  if (v4 > 1)
  {
    if (!(v4 ^ 2 | v3))
    {
      v19 = v1[10];
      v20 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v19);
      return (*(v20 + 8))(v19, v20);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
    __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    if (v4 ^ 3 | v3)
    {
      sub_2190040AC(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v24);
    }

    else
    {
      sub_219003CF4(v24);
    }

    goto LABEL_18;
  }

  if (v4 | v3)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
    __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    sub_2190039C4(*a1, *(a1 + 8), v24);
LABEL_18:
    v22[0] = 0;
    v23 = 0;
    goto LABEL_19;
  }

  v16 = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v17 = *v16;
  __swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40));
  type metadata accessor for MagazineCatalogViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v17;
  v11 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v11)
  {
    v12 = &unk_27CC0D000;
    v13 = type metadata accessor for MagazineCatalogViewController;
LABEL_6:
    sub_218A51910(v12, v13);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_218A5186C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);

  return swift_deallocClassInstance();
}

void sub_218A518E8(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_218A51910(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_218A51958(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v136 = a4;
  v141 = a3;
  v129 = a1;
  sub_218748324(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v133 = v4;
  v132 = *(v4 - 8);
  v130 = *(v132 + 64);
  MEMORY[0x28223BE20](v4);
  v131 = &v122 - v5;
  sub_218A52E48(0);
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDC104();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v134 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BE9834();
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v135 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FollowingSectionLayoutDescriptor();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v122 - v14);
  v16 = type metadata accessor for TitleViewLayoutAttributes(0);
  v126 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v122 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v128 = &v122 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v122 - v26;
  v127 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v122 - v29;
  v31 = sub_219BED0C4();
  sub_2189509E0();
  if (v31)
  {
    v123 = v30;
    v124 = v27;
    sub_219BE8184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = *v15;
    v34 = v15[1];
    v35 = v15[2];
    v36 = v15[3];
    v37 = v15[4];
    v38 = v15[5];
    v39 = v15[6];
    v125 = v15[7];
    v40 = v15[8];
    sub_218749C1C();
    v42 = v15 + *(v41 + 48);
    if (((1 << EnumCaseMultiPayload) & 0x17FC) != 0)
    {
      v43 = v124;
      sub_218A52EFC(v42, v124);
      *&v152 = v33;
      *(&v152 + 1) = v34;
      *&v153 = v35;
      *(&v153 + 1) = v36;
      *&v154 = v37;
      *(&v154 + 1) = v38;
      *&v155 = v39;
      *(&v155 + 1) = v125;
      v156 = v40;
      sub_218A52F60();
      v44 = v138;
      v45 = v135;
      v46 = v140;
      (*(v138 + 104))(v135, *MEMORY[0x277D6E758], v140);
      v47 = v134;
      sub_219BE9614();
      v48 = sub_219BF6424();
      (*(v137 + 8))(v47, v139);
      (*(v44 + 8))(v45, v46);
      __swift_project_boxed_opaque_existential_1((v143 + 16), *(v143 + 40));
      v49 = v142;
      v50 = v129;
      sub_219BEA3A4();
      sub_218A52E68();
      (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
      *&v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v141 = v48;
      v52 = v43;
      sub_21913770C(&v152, v48, v43, v49);
      sub_218A531DC(&v147, sub_218A530EC);
      sub_218A531DC(v49, sub_218A52E48);
      sub_218A528EC(v48);
      v53 = sub_219BE9494();
      v142 = *&v53[OBJC_IVAR____TtC7NewsUI29TitleView_action];

      v54 = swift_allocObject();
      swift_weakInit();
      v55 = v132;
      v56 = v131;
      v57 = v133;
      (*(v132 + 16))(v131, v50, v133);
      v58 = v128;
      sub_218A52EFC(v52, v128);
      v59 = (*(v55 + 80) + 24) & ~*(v55 + 80);
      v60 = (v130 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
      v62 = (*(v126 + 80) + v61 + 72) & ~*(v126 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v54;
      (*(v55 + 32))(v63 + v59, v56, v57);
      v64 = v141;
      *(v63 + v60) = v141;
      v65 = v63 + v61;
      *(v65 + 64) = v156;
      v66 = v155;
      *(v65 + 32) = v154;
      *(v65 + 48) = v66;
      v67 = v153;
      *v65 = v152;
      *(v65 + 16) = v67;
      sub_218A52EFC(v58, v63 + v62);
      v68 = v64;
LABEL_6:
      v104 = v142;

      return v68;
    }

    v106 = v123;
    sub_218A52EFC(v42, v123);
    *&v147 = v33;
    *(&v147 + 1) = v34;
    *&v148 = v35;
    *(&v148 + 1) = v36;
    *&v149 = v37;
    *(&v149 + 1) = v38;
    *&v150 = v39;
    *(&v150 + 1) = v125;
    v151 = v40;
    v156 = v40;
    v154 = v149;
    v155 = v150;
    v152 = v147;
    v153 = v148;
    sub_218A52F60();
    v107 = v138;
    v108 = v135;
    v109 = v140;
    (*(v138 + 104))(v135, *MEMORY[0x277D6E758], v140);
    v110 = v134;
    sub_219BE9614();
    v111 = sub_219BF6424();
    (*(v137 + 8))(v110, v139);
    (*(v107 + 8))(v108, v109);
    __swift_project_boxed_opaque_existential_1((v143 + 16), *(v143 + 40));
    sub_218A52E68();
    v113 = v142;
    (*(*(v112 - 8) + 56))(v142, 1, 1, v112);
    v146 = 0;
    v145 = 0u;
    v144 = 0u;
    sub_21913770C(&v152, v111, v106, v113);
    sub_218967CDC(&v147);
    sub_218A531DC(&v144, sub_218A530EC);
    sub_218A531DC(v113, sub_218A52E48);
    v114 = v106;
  }

  else
  {
    v123 = v22;
    v125 = v19;
    sub_219BE8184();
    v69 = swift_getEnumCaseMultiPayload();
    v70 = *v13;
    v71 = v13[1];
    v72 = v13[2];
    v73 = v13[3];
    v74 = v13[4];
    v75 = v13[5];
    v76 = v13[6];
    v124 = v13[7];
    v77 = v13[8];
    sub_218749C1C();
    v79 = v13 + *(v78 + 48);
    if (((1 << v69) & 0x17FC) != 0)
    {
      sub_218A52EFC(v79, v125);
      *&v152 = v70;
      *(&v152 + 1) = v71;
      *&v153 = v72;
      *(&v153 + 1) = v73;
      *&v154 = v74;
      *(&v154 + 1) = v75;
      *&v155 = v76;
      *(&v155 + 1) = v124;
      v156 = v77;
      sub_218A52F60();
      v80 = v138;
      v81 = v135;
      v82 = v140;
      (*(v138 + 104))(v135, *MEMORY[0x277D6E758], v140);
      v83 = v134;
      sub_219BE9614();
      v84 = sub_219BF6424();
      (*(v137 + 8))(v83, v139);
      (*(v80 + 8))(v81, v82);
      __swift_project_boxed_opaque_existential_1((v143 + 16), *(v143 + 40));
      v85 = v142;
      v86 = v129;
      sub_219BEA3A4();
      sub_218A52E68();
      (*(*(v87 - 8) + 56))(v85, 0, 1, v87);
      *&v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v141 = v84;
      v88 = v125;
      sub_21913770C(&v152, v84, v125, v85);
      sub_218A531DC(&v147, sub_218A530EC);
      sub_218A531DC(v85, sub_218A52E48);
      sub_218A528EC(v84);
      v89 = sub_219BE9494();
      v142 = *&v89[OBJC_IVAR____TtC7NewsUI29TitleView_action];

      v90 = swift_allocObject();
      swift_weakInit();
      v91 = v132;
      v92 = v131;
      v93 = v133;
      (*(v132 + 16))(v131, v86, v133);
      v94 = v128;
      sub_218A52EFC(v88, v128);
      v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
      v96 = (v130 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
      v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
      v98 = (*(v126 + 80) + v97 + 72) & ~*(v126 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      (*(v91 + 32))(v99 + v95, v92, v93);
      v100 = v141;
      *(v99 + v96) = v141;
      v101 = v99 + v97;
      *(v101 + 64) = v156;
      v102 = v155;
      *(v101 + 32) = v154;
      *(v101 + 48) = v102;
      v103 = v153;
      *v101 = v152;
      *(v101 + 16) = v103;
      sub_218A52EFC(v94, v99 + v98);
      v68 = v100;
      goto LABEL_6;
    }

    sub_218A52EFC(v79, v123);
    *&v147 = v70;
    *(&v147 + 1) = v71;
    *&v148 = v72;
    *(&v148 + 1) = v73;
    *&v149 = v74;
    *(&v149 + 1) = v75;
    *&v150 = v76;
    *(&v150 + 1) = v124;
    v151 = v77;
    v156 = v77;
    v154 = v149;
    v155 = v150;
    v152 = v147;
    v153 = v148;
    sub_218A52F60();
    v115 = v138;
    v116 = v135;
    v117 = v140;
    (*(v138 + 104))(v135, *MEMORY[0x277D6E758], v140);
    v118 = v134;
    sub_219BE9614();
    v111 = sub_219BF6424();
    (*(v137 + 8))(v118, v139);
    (*(v115 + 8))(v116, v117);
    __swift_project_boxed_opaque_existential_1((v143 + 16), *(v143 + 40));
    sub_218A52E68();
    v120 = v142;
    (*(*(v119 - 8) + 56))(v142, 1, 1, v119);
    v146 = 0;
    v145 = 0u;
    v144 = 0u;
    v121 = v123;
    sub_21913770C(&v152, v111, v123, v120);
    sub_218967CDC(&v147);
    sub_218A531DC(&v144, sub_218A530EC);
    sub_218A531DC(v120, sub_218A52E48);
    v114 = v121;
  }

  sub_218A531DC(v114, type metadata accessor for TitleViewLayoutAttributes);
  return v111;
}

void sub_218A528EC(void *a1)
{
  sub_218A52E68();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEA3A4();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D6EA68])
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v18 = sub_218A5353C;
    v19 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v10 = &block_descriptor_17_0;
LABEL_5:
    v16 = sub_218793E0C;
    v17 = v10;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v8 animateWithDuration:v12 animations:{0.1, aBlock, v15}];
    _Block_release(v12);
    return;
  }

  if (v7 == *MEMORY[0x277D6EA60])
  {
    v8 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v18 = sub_218A53534;
    v19 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v10 = &block_descriptor_11;
    goto LABEL_5;
  }

  sub_219BF7514();
  __break(1u);
}

uint64_t sub_218A52B84(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  sub_218A52E48(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;

    sub_219BEA3B4();

    sub_218A528EC(a3);
    __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));

    sub_219BEA3A4();

    sub_218A52E68();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_21913770C(a4, a3, a5, v10);
    sub_218A531DC(v14, sub_218A530EC);
    sub_218A531DC(v10, sub_218A52E48);
  }

  return result;
}

void sub_218A52E68()
{
  if (!qword_280EE3C70)
  {
    sub_2187486B4(255);
    sub_218748CB0(&unk_280EE5550, sub_2187486B4);
    v0 = sub_219BEA384();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3C70);
    }
  }
}

uint64_t sub_218A52EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleViewLayoutAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218A52F60()
{
  if (!qword_280EE44B0)
  {
    type metadata accessor for TitleView();
    sub_218748CB0(&qword_280E92810, type metadata accessor for TitleView);
    v0 = sub_219BE94A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE44B0);
    }
  }
}

void sub_218A52FF4()
{
  v0 = sub_219BE9494();
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI29TitleView_chevron];

  v2[0] = 0x3FF0000000000000;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0x3FF0000000000000;
  v2[4] = 0;
  v2[5] = 0;
  [v1 setTransform_];
}

void sub_218A53068()
{
  v0 = sub_219BE9494();
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI29TitleView_chevron];

  CGAffineTransformMakeRotation(&v2, 1.57079633);
  [v1 setTransform_];
}

void sub_218A5310C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_218A53160()
{
  result = qword_280ECFCF0;
  if (!qword_280ECFCF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ECFCF0);
  }

  return result;
}

uint64_t sub_218A531DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_3Tm_1()
{
  sub_218748324(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*(type metadata accessor for TitleViewLayoutAttributes(0) - 8) + 80);
  v8 = (v6 + v7 + 72) & ~v7;

  (*(v3 + 8))(v0 + v4, v2);

  v9 = sub_219BE9834();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_218A53408(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t))
{
  sub_218748324(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TitleViewLayoutAttributes(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v4);
  v9 = v1 + ((v5 + *(v6 + 80) + 72) & ~*(v6 + 80));

  return a1(v7, v1 + v3, v8, v1 + v5, v9);
}

uint64_t sub_218A53544()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_218A52F60();
  v4 = *MEMORY[0x277D6E758];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BF6444();
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_218A536BC();
  v5(v3, v4, v0);
  sub_219BF6444();
  return (v6)(v3, v0);
}

void sub_218A536BC()
{
  if (!qword_280EE44A8)
  {
    sub_219BE6DE4();
    v0 = sub_219BE94A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE44A8);
    }
  }
}

uint64_t sub_218A53728(uint64_t a1)
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v72 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v65 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v65 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v65 - v8;
  v73 = v9;
  MEMORY[0x28223BE20](v7);
  v74 = &v65 - v10;
  v11 = sub_219BE22B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v17 = sub_219BE22F4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v69 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v24 = *(v18 + 8);
  v66 = v17;
  v24(v23, v17);
  v25 = sub_219BE22C4();
  v27 = v26;
  v28 = *(v12 + 8);
  v28(v16, v11);
  if (v27 || (v29 = v68, sub_219BE2594(), v30 = v67, sub_219BE22D4(), v24(v21, v66), v25 = sub_219BE22C4(), v27 = v31, v28(v30, v11), v27))
  {
    v32 = *(v71 + 24);
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    *(v33 + 24) = v27;
    v34 = v33 | 0x9000000000000006;
    v35 = sub_219BDFA44();
    v36 = v74;
    (*(*(v35 - 8) + 56))(v74, 1, 1, v35);
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = v32;
    sub_2187B15C0(&v82, &v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v77 + 1))
    {
      sub_21875F93C(&v76, &v78);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v38 = qword_280ED32D8;
      v37 = qword_280ED32E0;
      v39 = qword_280ED32E8;

      sub_2188202A8(v37);
      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {
      sub_2187449F0(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v38 = qword_280ED32D8;
      v37 = qword_280ED32E0;
      v39 = qword_280ED32E8;

      sub_2188202A8(v37);
    }

    v75 = v34;
    v77 = 0u;
    v76 = 0u;
    v40 = v70;
    sub_2187B15C0(v36, v70, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187B15C0(&v85, &v78, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v41 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v42 = (v73 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    sub_2189B4EAC(v40, v44 + v41);
    v45 = v44 + v42;
    v46 = v79;
    *v45 = v78;
    *(v45 + 16) = v46;
    *(v45 + 32) = v80;
    v47 = (v44 + v43);
    v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v47 = 0;
    v47[1] = 0;
    *v48 = v38;
    v48[1] = v37;
    v48[2] = v39;

    sub_2188202A8(v37);
    sub_2186CF94C();
    sub_218A547E4(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v37);
    sub_2187449F0(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187449F0(&v85, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2187449F0(v74, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187449F0(&v76, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v50 = *(v71 + 24);
    v51 = sub_219BDFA44();
    v52 = v29;
    (*(*(v51 - 8) + 56))(v29, 1, 1, v51);
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = v50;
    sub_2187B15C0(&v82, &v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v77 + 1))
    {
      sub_21875F93C(&v76, &v78);
      v53 = v65;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v55 = qword_280ED32D8;
      v54 = qword_280ED32E0;
      v56 = qword_280ED32E8;

      sub_2188202A8(v54);
      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {
      sub_2187449F0(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v53 = v65;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v55 = qword_280ED32D8;
      v54 = qword_280ED32E0;
      v56 = qword_280ED32E8;

      sub_2188202A8(v54);
    }

    v75 = 0xF000000000000050;
    v77 = 0u;
    v76 = 0u;
    sub_2187B15C0(v29, v53, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187B15C0(&v85, &v78, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v57 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v58 = (v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    sub_2189B4EAC(v53, v60 + v57);
    v61 = v60 + v58;
    v62 = v79;
    *v61 = v78;
    *(v61 + 16) = v62;
    *(v61 + 32) = v80;
    v63 = (v60 + v59);
    v64 = (v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v63 = 0;
    v63[1] = 0;
    *v64 = v55;
    v64[1] = v54;
    v64[2] = v56;

    sub_2188202A8(v54);
    sub_2186CF94C();
    sub_218A547E4(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v54);
    sub_2187449F0(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187449F0(&v85, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2187449F0(v52, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187449F0(&v76, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  return 1;
}

uint64_t sub_218A54704()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218A547E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218A5482C(void *a1)
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218A54944@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_219BE92E4();
  v28 = v1;
  v33 = *(v1 - 8);
  v2 = v33;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v26 - v7;
  MEMORY[0x28223BE20](v6);
  v26[1] = v26 - v9;
  *v8 = 0x6565466F69647541;
  *(v8 + 1) = 0xE900000000000064;
  v10 = *MEMORY[0x277D6E4A8];
  v11 = sub_219BE9294();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  v12 = *(v2 + 104);
  v12(v8, *MEMORY[0x277D6E4A0], v1);
  v26[0] = v12;
  sub_218A55778();
  v32 = v13;
  v14 = *(v13 + 48);
  v30 = *MEMORY[0x277D6E4D0];
  v15 = v30;
  v16 = sub_219BE92A4();
  v17 = *(v16 - 8);
  v29 = *(v17 + 104);
  v31 = v17 + 104;
  v29(v5, v15, v16);
  v18 = *MEMORY[0x277D6E500];
  v19 = sub_219BE92B4();
  v27 = *(*(v19 - 8) + 104);
  v27(&v5[v14], v18, v19);
  v20 = *MEMORY[0x277D6E4F0];
  v21 = v28;
  v12(v5, v20, v28);
  sub_219BE78D4();
  v22 = *(v33 + 8);
  v22(v5, v21);
  v23 = v21;
  v22(v8, v21);
  v24 = *(v32 + 48);
  v29(v8, v30, v16);
  v27(&v8[v24], *MEMORY[0x277D6E508], v19);
  (v26[0])(v8, v20, v23);
  return sub_219BE9EB4();
}

uint64_t sub_218A54CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a2;
  v48 = a3;
  v5 = sub_219BE92E4();
  v50 = *(v5 - 8);
  v6 = v50;
  MEMORY[0x28223BE20](v5);
  v47 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-v12];
  MEMORY[0x28223BE20](v14);
  v49 = &v32[-v15];
  *v13 = a1;
  *(v13 + 1) = a2;
  v43 = *MEMORY[0x277D6E4A8];
  v16 = v43;
  v42 = sub_219BE9294();
  v17 = *(v42 - 8);
  v41 = *(v17 + 104);
  v44 = v17 + 104;
  v41(v13, v16, v42);
  v40 = *MEMORY[0x277D6E4A0];
  v18 = *(v6 + 104);
  v18(v13);
  sub_218A55778();
  v39 = v19;
  v20 = *(v19 + 48);
  v37 = *MEMORY[0x277D6E4E0];
  v21 = v37;
  v22 = sub_219BE92A4();
  v23 = *(v22 - 8);
  v36 = *(v23 + 104);
  v38 = v23 + 104;
  v36(v10, v21, v22);
  v24 = *MEMORY[0x277D6E500];
  v25 = sub_219BE92B4();
  v26 = *(v25 - 8);
  v34 = *(v26 + 104);
  v35 = v26 + 104;
  v34(&v10[v20], v24, v25);
  v33 = *MEMORY[0x277D6E4F0];
  v18(v10);
  sub_219BE78D4();
  v27 = *(v50 + 8);
  v50 += 8;
  v27(v10, v5);
  v27(v13, v5);
  v28 = v46;
  *v10 = v45;
  *(v10 + 1) = v28;
  v41(v10, v43, v42);
  (v18)(v10, v40, v5);
  v29 = *(v39 + 48);
  v30 = v47;
  v36(v47, v37, v22);
  v34(&v30[v29], *MEMORY[0x277D6E508], v25);
  (v18)(v30, v33, v5);
  sub_219BE78D4();
  v27(v30, v5);
  v27(v10, v5);
  return sub_219BE9EB4();
}

uint64_t sub_218A55078@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_219BE92E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v45 = &v38 - v11;
  if (a1)
  {
    sub_218A55778();
    v43 = v12;
    v39 = *(v12 + 48);
    LODWORD(v41) = *MEMORY[0x277D6E4C0];
    v13 = v41;
    v14 = sub_219BE92A4();
    v15 = *(v14 - 8);
    v40 = *(v15 + 104);
    v42 = v15 + 104;
    v16 = v45;
    v40(v45, v13, v14);
    v17 = *MEMORY[0x277D6E500];
    v18 = sub_219BE92B4();
    v19 = *(*(v18 - 8) + 104);
    v19(v39 + v16, v17, v18);
    v20 = *MEMORY[0x277D6E4F0];
    v21 = *(v4 + 104);
    v21(v16, v20, v3);
    v22 = v3;
    v23 = *(v43 + 48);
    v40(v9, v41, v14);
    v19(&v9[v23], *MEMORY[0x277D6E508], v18);
    v21(v9, v20, v22);
  }

  else
  {
    *v9 = 0x7374726F7053796DLL;
    *(v9 + 1) = 0xE800000000000000;
    v24 = *MEMORY[0x277D6E4A8];
    v25 = sub_219BE9294();
    (*(*(v25 - 8) + 104))(v9, v24, v25);
    v26 = *MEMORY[0x277D6E4A0];
    v43 = *(v4 + 104);
    (v43)(v9, v26, v3);
    sub_218A55778();
    v42 = v27;
    v28 = *(v27 + 48);
    LODWORD(v40) = *MEMORY[0x277D6E4C0];
    v29 = v40;
    v30 = sub_219BE92A4();
    v31 = *(v30 - 8);
    v39 = *(v31 + 104);
    v41 = v31 + 104;
    v39(v6, v29, v30);
    v32 = *MEMORY[0x277D6E500];
    v33 = sub_219BE92B4();
    v38 = *(*(v33 - 8) + 104);
    v38(&v6[v28], v32, v33);
    v34 = *MEMORY[0x277D6E4F0];
    (v43)(v6, v34, v3);
    sub_219BE78D4();
    v35 = *(v4 + 8);
    v35(v6, v3);
    v35(v9, v3);
    v36 = *(v42 + 48);
    v39(v9, v40, v30);
    v38(&v9[v36], *MEMORY[0x277D6E508], v33);
    (v43)(v9, v34, v3);
  }

  return sub_219BE9EB4();
}

uint64_t sub_218A554EC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_219BE92E4();
  v20 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  sub_218A55778();
  v24 = *(v8 + 48);
  v25 = v8;
  *v7 = 0x44656C6369747261;
  *(v7 + 1) = 0xEF6B6E696C706565;
  v22 = *MEMORY[0x277D6E4B8];
  v9 = v22;
  v10 = sub_219BE92A4();
  v11 = *(v10 - 8);
  v21 = *(v11 + 104);
  v23 = v11 + 104;
  v21(v7, v9, v10);
  v12 = *MEMORY[0x277D6E500];
  v13 = sub_219BE92B4();
  v14 = *(*(v13 - 8) + 104);
  v14(&v7[v24], v12, v13);
  v15 = *MEMORY[0x277D6E4F0];
  v16 = *(v2 + 104);
  v16(v7, v15, v1);
  v17 = *(v25 + 48);
  *v4 = 0x44656C6369747261;
  *(v4 + 1) = 0xEF6B6E696C706565;
  v21(v4, v22, v10);
  v14(&v4[v17], *MEMORY[0x277D6E508], v13);
  v16(v4, v15, v20);
  return sub_219BE9EB4();
}

void sub_218A55778()
{
  if (!qword_280EE4520)
  {
    sub_219BE92A4();
    sub_219BE92B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE4520);
    }
  }
}

uint64_t sub_218A557E8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_219BE92E4();
  v26 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v25 - v6);
  v8 = objc_opt_self();
  v9 = [v8 _searchElement];
  v10 = [v9 _identifier];

  v11 = sub_219BF5414();
  v13 = v12;

  *v7 = v11;
  v7[1] = v13;
  v27 = *MEMORY[0x277D6E4A8];
  v14 = v27;
  v15 = sub_219BE9294();
  v16 = *(*(v15 - 8) + 104);
  v16(v7, v14, v15);
  v17 = *MEMORY[0x277D6E4A0];
  v18 = *(v2 + 104);
  v25 = v2 + 104;
  v18(v7, v17, v1);
  v19 = [v8 _searchElement];
  v20 = [v19 _identifier];

  v21 = sub_219BF5414();
  v23 = v22;

  *v4 = v21;
  v4[1] = v23;
  v16(v4, v27, v15);
  v18(v4, v17, v26);
  return sub_219BE9EB4();
}

uint64_t sub_218A55A34@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_219BE92E4();
  v42 = *(v1 - 8);
  v2 = v42;
  v3 = MEMORY[0x28223BE20](v1);
  v39 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27[-v9];
  MEMORY[0x28223BE20](v8);
  v41 = &v27[-v11];
  *v10 = 0x6E69776F6C6C6F46;
  *(v10 + 1) = 0xE900000000000067;
  v37 = *MEMORY[0x277D6E4A8];
  v12 = v37;
  v36 = sub_219BE9294();
  v13 = *(v36 - 8);
  v35 = *(v13 + 104);
  v38 = v13 + 104;
  v35(v10, v12, v36);
  v34 = *MEMORY[0x277D6E4A0];
  v14 = *(v2 + 104);
  v14(v10);
  sub_218A55778();
  v33 = v15;
  v16 = *(v15 + 48);
  v17 = *MEMORY[0x277D6E4D0];
  v18 = sub_219BE92A4();
  v19 = *(v18 - 8);
  v31 = *(v19 + 104);
  v32 = v19 + 104;
  v31(v7, v17, v18);
  v20 = *MEMORY[0x277D6E500];
  v21 = sub_219BE92B4();
  v22 = *(v21 - 8);
  v29 = *(v22 + 104);
  v30 = v22 + 104;
  v29(&v7[v16], v20, v21);
  v28 = *MEMORY[0x277D6E4F0];
  v14(v7);
  sub_219BE78D4();
  v23 = *(v42 + 8);
  v42 += 8;
  v23(v7, v1);
  v23(v10, v1);
  *v7 = 0x6E69776F6C6C6F46;
  *(v7 + 1) = 0xE900000000000067;
  v35(v7, v37, v36);
  (v14)(v7, v34, v1);
  v24 = *(v33 + 48);
  v25 = v39;
  v31(v39, *MEMORY[0x277D6E4D8], v18);
  v29(&v25[v24], *MEMORY[0x277D6E508], v21);
  (v14)(v25, v28, v1);
  sub_219BE78D4();
  v23(v25, v1);
  v23(v7, v1);
  return sub_219BE9EB4();
}

uint64_t sub_218A55E28@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_219BE92E4();
  v31 = *(v1 - 8);
  v2 = v31;
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  MEMORY[0x28223BE20](v8);
  v33 = &v24 - v9;
  *v7 = 0xD000000000000010;
  *(v7 + 1) = 0x8000000219CDD430;
  v10 = *MEMORY[0x277D6E4A8];
  v11 = sub_219BE9294();
  (*(*(v11 - 8) + 104))(v7, v10, v11);
  v12 = *(v2 + 104);
  v12(v7, *MEMORY[0x277D6E4A0], v1);
  v25 = v12;
  sub_218A55778();
  v30 = v13;
  v14 = *(v13 + 48);
  v28 = *MEMORY[0x277D6E4D0];
  v15 = v28;
  v16 = sub_219BE92A4();
  v17 = *(v16 - 8);
  v27 = *(v17 + 104);
  v29 = v17 + 104;
  v27(v4, v15, v16);
  v18 = *MEMORY[0x277D6E500];
  v19 = sub_219BE92B4();
  v26 = *(*(v19 - 8) + 104);
  v26(&v4[v14], v18, v19);
  v20 = *MEMORY[0x277D6E4F0];
  v12(v4, v20, v1);
  sub_219BE78D4();
  v21 = *(v31 + 8);
  v21(v4, v1);
  v21(v7, v1);
  v22 = *(v30 + 48);
  v27(v7, v28, v16);
  v26(&v7[v22], *MEMORY[0x277D6E508], v19);
  v25(v7, v20, v1);
  return sub_219BE9EB4();
}

uint64_t sub_218A56154@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_219BE92E4();
  v31 = *(v1 - 8);
  v2 = v31;
  v3 = MEMORY[0x28223BE20](v1);
  v43 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27[-v9];
  MEMORY[0x28223BE20](v8);
  v45 = &v27[-v11];
  v42 = 0x8000000219CDD430;
  *v10 = 0xD000000000000010;
  *(v10 + 1) = 0x8000000219CDD430;
  v40 = *MEMORY[0x277D6E4A8];
  v12 = v40;
  v39 = sub_219BE9294();
  v13 = *(v39 - 8);
  v38 = *(v13 + 104);
  v41 = v13 + 104;
  v38(v10, v12, v39);
  v37 = *MEMORY[0x277D6E4A0];
  v14 = *(v2 + 104);
  v14(v10);
  sub_218A55778();
  v36 = v15;
  v16 = *(v15 + 48);
  v34 = *MEMORY[0x277D6E4E0];
  v17 = v34;
  v33 = sub_219BE92A4();
  v18 = *(v33 - 8);
  v32 = *(v18 + 104);
  v35 = v18 + 104;
  v32(v7, v17, v33);
  v19 = *MEMORY[0x277D6E500];
  v20 = sub_219BE92B4();
  v21 = *(v20 - 8);
  v29 = *(v21 + 104);
  v30 = v21 + 104;
  v29(&v7[v16], v19, v20);
  v28 = *MEMORY[0x277D6E4F0];
  v14(v7);
  sub_219BE78D4();
  v22 = *(v31 + 8);
  v22(v7, v1);
  v22(v10, v1);
  *v7 = 0xD000000000000010;
  *(v7 + 1) = v42;
  v38(v7, v40, v39);
  (v14)(v7, v37, v1);
  v23 = v14;
  v24 = *(v36 + 48);
  v25 = v43;
  v32(v43, v34, v33);
  v29(&v25[v24], *MEMORY[0x277D6E508], v20);
  (v23)(v25, v28, v1);
  sub_219BE78D4();
  v22(v25, v1);
  v22(v7, v1);
  return sub_219BE9EB4();
}

uint64_t sub_218A56538@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_219BE92E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - v6);
  *v7 = 0x6E69776F6C6C6F46;
  v7[1] = 0xE900000000000067;
  v8 = *MEMORY[0x277D6E4A8];
  v9 = sub_219BE9294();
  v10 = *(*(v9 - 8) + 104);
  v10(v7, v8, v9);
  v11 = *MEMORY[0x277D6E4A0];
  v12 = *(v2 + 104);
  v12(v7, v11, v1);
  *v4 = 0x6E69776F6C6C6F46;
  v4[1] = 0xE900000000000067;
  v10(v4, v8, v9);
  v12(v4, v11, v1);
  return sub_219BE9EB4();
}

uint64_t sub_218A56714@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_219BE92E4();
  v35 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v29 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  sub_218A55778();
  v32 = v14;
  v15 = *(v14 + 48);
  v16 = *a1;
  v17 = sub_219BE92A4();
  v18 = *(v17 - 8);
  v30 = *(v18 + 104);
  v31 = v18 + 104;
  v30(v13, v16, v17);
  v19 = *MEMORY[0x277D6E500];
  v20 = sub_219BE92B4();
  v21 = *(v20 - 8);
  v29[0] = *(v21 + 104);
  v29[1] = v21 + 104;
  (v29[0])(&v13[v15], v19, v20);
  v22 = *MEMORY[0x277D6E4F0];
  v23 = *(v35 + 104);
  v23(v13, v22, v3);
  *v9 = 0x6E69776F6C6C6F46;
  *(v9 + 1) = 0xE900000000000067;
  v24 = *MEMORY[0x277D6E4A8];
  v25 = sub_219BE9294();
  (*(*(v25 - 8) + 104))(v9, v24, v25);
  v23(v9, *MEMORY[0x277D6E4A0], v3);
  v26 = *(v32 + 48);
  v30(v6, *MEMORY[0x277D6E4D8], v17);
  (v29[0])(&v6[v26], *MEMORY[0x277D6E508], v20);
  v23(v6, v22, v3);
  sub_219BE78D4();
  v27 = *(v35 + 8);
  v27(v6, v3);
  v27(v9, v3);
  return sub_219BE9EB4();
}

uint64_t sub_218A56A50@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_219BE92E4();
  v22 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_218A55778();
  v27 = v10;
  v23 = *(v10 + 48);
  v25 = *a1;
  v11 = v25;
  v12 = sub_219BE92A4();
  v13 = *(v12 - 8);
  v24 = *(v13 + 104);
  v26 = v13 + 104;
  v24(v9, v11, v12);
  v14 = *MEMORY[0x277D6E500];
  v15 = sub_219BE92B4();
  v16 = *(*(v15 - 8) + 104);
  v16(&v9[v23], v14, v15);
  v17 = *MEMORY[0x277D6E4F0];
  v18 = *(v4 + 104);
  v18(v9, v17, v3);
  v19 = *(v27 + 48);
  v24(v6, v25, v12);
  v16(&v6[v19], *MEMORY[0x277D6E508], v15);
  v18(v6, v17, v22);
  return sub_219BE9EB4();
}

uint64_t sub_218A56D00(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_218A57ED4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidAppear_, a1 & 1);
  v8 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler], *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler + 24]);
  v9 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 16];
  v21 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content];
  v22 = v9;
  v10 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 48];
  v23 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 32];
  v24 = v10;
  v28 = v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 112];
  v11 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 96];
  v26 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 80];
  v27 = v11;
  v25 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 64];
  v12 = *__swift_project_boxed_opaque_existential_1((*v8 + 16), *(*v8 + 40));
  v18[5] = v26;
  v18[6] = v27;
  v18[0] = v21;
  v18[1] = v22;
  v18[2] = v23;
  v19 = v28;
  v18[3] = v24;
  v18[4] = v25;
  sub_2189EB2A8(&v21, &v17);
  sub_218EBA39C(v18, v7);
  v13 = type metadata accessor for ContinueReadingPromptExposureData();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData;
  swift_beginAccess();
  sub_218A57F2C(v7, v12 + v14);
  return swift_endAccess();
}

void sub_218A56FDC(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content];
  v6 = *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content] == a1 && *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 8] == a2;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {
    if (v5[24] >= 2u)
    {
      [v2 dismissViewControllerAnimated:0 completion:0];
    }

    v7 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler], *&v2[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler + 24]);
    v8 = *(v5 + 5);
    v19 = *(v5 + 4);
    v20 = v8;
    v21 = *(v5 + 6);
    v22 = v5[112];
    v9 = *(v5 + 1);
    v15 = *v5;
    v16 = v9;
    v10 = *(v5 + 3);
    v17 = *(v5 + 2);
    v18 = v10;
    v11 = *v7;
    __swift_project_boxed_opaque_existential_1((*v7 + 16), *(*v7 + 40));
    v13[4] = v19;
    v13[5] = v20;
    v13[6] = v21;
    v14 = v22;
    v13[0] = v15;
    v13[1] = v16;
    v13[2] = v17;
    v13[3] = v18;
    sub_219A737F4(v13, 0);
    __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
    sub_219A73E3C(&v15);
  }

  else
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_218A57380(uint64_t a1, void *a2)
{
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_219BF78C4();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2186FC3BC();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v6 = [a2 description];
  v7 = sub_219BF5414();
  v9 = v8;

  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v7;
  *(v3 + 80) = v9;
  sub_219BF6214();
  sub_219BE5314();

  v10 = [a2 selectedActionIdentifier];
  v11 = sub_219BF5414();
  v13 = v12;

  if (v11 == sub_219BF5414() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_219BF78F4();

    if ((v15 & 1) == 0)
    {
      sub_218A56FDC(v11, v13);
    }
  }
}

unint64_t sub_218A5779C(uint64_t a1)
{
  v2 = v1;
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  swift_getObjectType();
  v13 = a1;
  swift_getWitnessTable();
  sub_219BF78C4();
  v5 = v11[0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  sub_219BF6214();
  sub_219BE5314();

  v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler), *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler + 24));
  v7 = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 80);
  v11[4] = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 64);
  v11[5] = v7;
  v11[6] = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 96);
  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 112);
  v8 = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 16);
  v11[0] = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content);
  v11[1] = v8;
  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 48);
  v11[2] = *(v2 + OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content + 32);
  v11[3] = v9;
  __swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40));
  return sub_219A737F4(v11, 1);
}

uint64_t sub_218A579C8(uint64_t a1, void *a2)
{
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_219BF78C4();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2186FC3BC();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v6 = [a2 description];
  v7 = sub_219BF5414();
  v9 = v8;

  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v7;
  *(v3 + 80) = v9;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218A57B64()
{
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_219BF78C4();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_2186FC3BC();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  type metadata accessor for CGSize(0);
  sub_219BF7484();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218A57D14(uint64_t a1, void *a2)
{
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_219BF78C4();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2186FC3BC();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v6 = a2;
  sub_2186E7BB0(0, &unk_280E8B570, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
  v7 = sub_219BF5484();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  sub_219BE5314();
}

void sub_218A57ED4()
{
  if (!qword_280EA39A8[0])
  {
    type metadata accessor for ContinueReadingPromptExposureData();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280EA39A8);
    }
  }
}

uint64_t sub_218A57F2C(uint64_t a1, uint64_t a2)
{
  sub_218A57ED4();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_218A57F90(void *a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    swift_unknownObjectRelease();
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_218A57FB4(unint64_t result, char a2)
{
  if (a2)
  {
    sub_218932F9C(result);
  }

  else
  {
  }
}

uint64_t type metadata accessor for DateRangeTagFeedGroupConfigData()
{
  result = qword_280EA9730;
  if (!qword_280EA9730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A58034@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A58564(0, &qword_27CC0D0A0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A58510();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 31;
    v13 = type metadata accessor for DateRangeTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218A5829C(void *a1)
{
  v3 = v1;
  sub_218A58564(0, &qword_27CC0D0B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A58510();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for DateRangeTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218A58468(uint64_t a1)
{
  v2 = sub_218A58510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A584A4(uint64_t a1)
{
  v2 = sub_218A58510();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218A58510()
{
  result = qword_27CC0D0A8;
  if (!qword_27CC0D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D0A8);
  }

  return result;
}

void sub_218A58564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218A58510();
    v7 = a3(a1, &type metadata for DateRangeTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218A585DC()
{
  result = qword_27CC0D0B8;
  if (!qword_27CC0D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D0B8);
  }

  return result;
}

unint64_t sub_218A58634()
{
  result = qword_27CC0D0C0;
  if (!qword_27CC0D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D0C0);
  }

  return result;
}

unint64_t sub_218A5868C()
{
  result = qword_27CC0D0C8;
  if (!qword_27CC0D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D0C8);
  }

  return result;
}

uint64_t sub_218A586E0()
{
  v1 = type metadata accessor for IssueListTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A59D98(v0 + OBJC_IVAR____TtC7NewsUI228IssueListTagFeedGroupEmitter_knobs, v3, type metadata accessor for IssueListTagFeedGroupKnobs);
  v14 = 0;
  sub_218A59E20(0, &qword_280E91A80, MEMORY[0x277D321A0]);
  v5 = v4;
  v6 = sub_219BEE964();
  (*(*(v5 - 8) + 8))(v3, v5);
  sub_218A59D34(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  v11 = v10 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  (*(v8 + 104))();
  v13 = v6;
  sub_2191EDA0C(v10);
  return v13;
}

uint64_t sub_218A588F4(uint64_t a1)
{
  sub_218A593E4();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v8 = sub_219BE2E54();
  sub_218A59ADC();
  sub_219BE2F64();

  (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC7NewsUI228IssueListTagFeedGroupEmitter_config, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218A59BC8;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  v13 = sub_219BE2E54();
  v14 = sub_219BE3064();

  return v14;
}

uint64_t sub_218A58B5C(id *a1)
{
  [*a1 backingTag];
  sub_218A59D34(0, &qword_280EE69B8, sub_2186D8870, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  v1 = sub_219BE2E54();
  v2 = sub_219BE2E34();

  return v2;
}

uint64_t sub_218A58C30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = sub_219BDBD64();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A59C84();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = &unk_282B7DDA8;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    if (a1 >> 62)
    {
      v35 = v15;
      v36 = sub_219BF7214();
      v16 = v35;
      if (v36)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v39 = v16;
      v40 = v12;
      swift_unknownObjectRetain();
      sub_219BEF0B4();
      objc_opt_self();
      swift_dynamicCastObjCClass();

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass_];
      v19 = a1;
      v22 = sub_219BDB5E4();
      v37 = v23;
      v38 = v22;

      sub_219BDBD54();
      v24 = sub_219BDBD44();
      v26 = v25;
      (*(v5 + 8))(v7, v41);
      sub_218A593E4();

      v27 = sub_219BEDCB4();
      v29 = v28;
      sub_219BEDCC4();
      *v10 = v24;
      v10[1] = v26;
      v10[2] = v19;
      v10[3] = v27;
      v10[4] = v29;
      v30 = v38;
      *(v10 + *(v8 + 32)) = v39;
      v31 = (v10 + *(v8 + 36));
      v32 = v37;
      *v31 = v30;
      v31[1] = v32;
      sub_218A59D98(v10, v14, type metadata accessor for IssueListTagFeedGroup);
      type metadata accessor for TagFeedGroup();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_218A59D34(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v33 = sub_219BE3014();
      sub_218A59EF0(v10, type metadata accessor for IssueListTagFeedGroup);
      return v33;
    }

    v20 = 0x8000000219CE18D0;
    v21 = 0xD00000000000001ALL;
  }

  else
  {
    v20 = 0x8000000219CE1840;
    v21 = 0xD000000000000025;
  }

  *v14 = v21;
  v14[1] = v20;
  swift_storeEnumTagMultiPayload();
  sub_218A59D34(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A59104()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877C630(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_218A591E8()
{
  v1 = OBJC_IVAR____TtC7NewsUI228IssueListTagFeedGroupEmitter_config;
  sub_218A593E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218A59EF0(v0 + OBJC_IVAR____TtC7NewsUI228IssueListTagFeedGroupEmitter_knobs, type metadata accessor for IssueListTagFeedGroupKnobs);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IssueListTagFeedGroupEmitter()
{
  result = qword_27CC0D0E8;
  if (!qword_27CC0D0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A592FC()
{
  sub_218A593E4();
  if (v0 <= 0x3F)
  {
    sub_218A59E20(319, &qword_280E91A80, MEMORY[0x277D321A0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_218A593E4()
{
  if (!qword_280E923F0)
  {
    sub_218A5944C();
    sub_218A594A0();
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E923F0);
    }
  }
}

unint64_t sub_218A5944C()
{
  result = qword_280EA90E0;
  if (!qword_280EA90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA90E0);
  }

  return result;
}

unint64_t sub_218A594A0()
{
  result = qword_280EA90F0;
  if (!qword_280EA90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA90F0);
  }

  return result;
}

uint64_t sub_218A594F4()
{
  sub_218A59D34(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A595B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_218A593E4();
  v5 = v4;
  v6 = swift_allocBox();
  result = (*(*(v5 - 8) + 16))(v7, v3 + OBJC_IVAR____TtC7NewsUI228IssueListTagFeedGroupEmitter_config, v5);
  *a1 = v6 | 4;
  return result;
}

uint64_t sub_218A59634@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228IssueListTagFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for IssueListTagFeedGroupKnobs();
  a1[4] = sub_21877C630(&unk_280EBB690, type metadata accessor for IssueListTagFeedGroupKnobs);
  a1[5] = sub_21877C630(&qword_27CC0D128, type metadata accessor for IssueListTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218A59D98(v3 + v4, boxed_opaque_existential_1, type metadata accessor for IssueListTagFeedGroupKnobs);
}

uint64_t sub_218A5975C@<X0>(uint64_t *a1@<X8>)
{
  sub_218A59D34(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218A593E4();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A59EF0(inited + 32, sub_2188317B0);
  sub_218A59EBC(0);
  a1[3] = v5;
  a1[4] = sub_21877C630(&qword_27CC0D138, sub_218A59EBC);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218A598E0()
{
  sub_21877C630(&qword_27CC0D110, type metadata accessor for IssueListTagFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_218A59ADC()
{
  if (!qword_27CC0D120)
  {
    sub_218A59D34(255, &qword_280E8EB40, sub_218A59B7C, MEMORY[0x277D83940]);
    sub_2186D8870();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D120);
    }
  }
}

unint64_t sub_218A59B7C()
{
  result = qword_280E8DAB0;
  if (!qword_280E8DAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DAB0);
  }

  return result;
}

uint64_t sub_218A59BC8(unint64_t a1, uint64_t a2)
{
  sub_218A593E4();
  v6 = *(v2 + 16);
  v7 = v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));

  return sub_218A58C30(a1, a2, v6, v7);
}

void sub_218A59C84()
{
  if (!qword_280E91720)
  {
    type metadata accessor for TagFeedGroup();
    sub_21877C630(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
    v0 = sub_219BEF1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91720);
    }
  }
}

void sub_218A59D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A59D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218A59E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_21877C630(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218A59EF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ChannelPickerLayoutModel()
{
  result = qword_27CC0D140;
  if (!qword_27CC0D140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A59FC0()
{
  sub_218A5A0F0(319, &qword_27CC0D150);
  if (v0 <= 0x3F)
  {
    sub_218A5A0F0(319, &qword_27CC0D158);
    if (v1 <= 0x3F)
    {
      sub_218A5A0F0(319, &qword_27CC0D160);
      if (v2 <= 0x3F)
      {
        sub_218A5A0F0(319, &qword_27CC0D168);
        if (v3 <= 0x3F)
        {
          sub_218A5A148();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_218A5A0F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_218A5A148()
{
  if (!qword_27CC0D170)
  {
    type metadata accessor for ChannelPickerEngagementModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D170);
    }
  }
}

double sub_218A5A1B4()
{
  v1 = type metadata accessor for ChannelPickerLayoutModel();
  MEMORY[0x28223BE20](v1);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A5A384(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v6 = v3[8];
    v16 = v3[7];
    v17 = v6;
    sub_218980BE4(v3);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = v3[7];
    v18[6] = v3[6];
    v18[7] = v7;
    v19[0] = v3[8];
    *(v19 + 9) = *(v3 + 137);
    v8 = v3[3];
    v18[2] = v3[2];
    v18[3] = v8;
    v9 = v3[5];
    v18[4] = v3[4];
    v18[5] = v9;
    v10 = v3[1];
    v18[0] = *v3;
    v18[1] = v10;
    v11 = v3[11];
    v16 = v3[10];
    v17 = v11;
    sub_218980B90(v18);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = v3[12];
    v16 = v3[11];
    v17 = v5;
    sub_218980B3C(v3);
  }

  else
  {
    sub_218A5A148();
    v13 = (v3 + *(v12 + 48));
    v14 = v13[1];
    v16 = *v13;
    v17 = v14;
    sub_218A5A3E8(v3);
  }

  return *&v16;
}

uint64_t sub_218A5A2F8(uint64_t a1)
{
  v2 = sub_218A5A444(&qword_27CC0D178);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218A5A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A5A3E8(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerEngagementModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A5A444(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelPickerLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsUI2::FeedViewReferrer_optional __swiftcall FeedViewReferrer.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_218A5A4A8()
{
  result = qword_27CC0D180;
  if (!qword_27CC0D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D180);
  }

  return result;
}

uint64_t sub_218A5A514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v3 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer(0);
  v40 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v6;
  v7 = sub_219BF00D4();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Header(0);
  v43 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_219BE9834();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5AF18();
  sub_219BE8184();
  v19 = v55;
  if (v55 < 3)
  {
    goto LABEL_17;
  }

  v20 = v56;
  v45 = v57;
  sub_219BE95F4();
  v21 = (*(v16 + 88))(v18, v15);
  if (v21 == *MEMORY[0x277D6E758])
  {
    v22 = sub_219BE9604();
    if ((v22 & 0x8000000000000000) == 0)
    {
      if (v22 < *(v19 + 16))
      {
        sub_218A5B020(v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v22, v14, type metadata accessor for SavedFeedLayoutSectionDescriptor.Header);
        sub_218A5B020(v14, v12, type metadata accessor for SavedFeedLayoutSectionDescriptor.Header);
        v43 = v20;
        v24 = v48;
        v23 = v49;
        v25 = v44;
        (*(v48 + 32))(v44, v12, v49);
        __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
        v26 = sub_219BF0234();

        (*(v24 + 8))(v25, v23);
        v27 = v14;
        v28 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Header;
LABEL_11:
        sub_218A5B088(v27, v28);
        return v26;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D6E750])
  {
    v29 = sub_219BE9604();
    v30 = *(v19 + 16);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (!v31)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        if (v32 < *(v20 + 16))
        {
          v33 = v42;
          sub_218A5B020(v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v42, type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer);
          v34 = v41;
          sub_218A5B020(v33, v41, type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer);
          v36 = v48;
          v35 = v49;
          v37 = v44;
          (*(v48 + 32))(v44, v34, v49);
          __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
          v26 = sub_219BF0234();

          (*(v36 + 8))(v37, v35);
          v27 = v33;
          v28 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer;
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_219BF7314();
      v53 = v55;
      v54 = v56;
      sub_219BE8184();
      v39 = v55;
      v50 = v55;
      v51 = v56;
      v52 = v57;
      sub_219BF7484();
      sub_218A5AFD0(v39);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

unint64_t sub_218A5ABD0()
{
  result = qword_280EA4DD0[0];
  if (!qword_280EA4DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA4DD0);
  }

  return result;
}

uint64_t sub_218A5ACDC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedFeedLayoutModel();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  sub_218A5AE84();
  sub_219BE75E4();
  (*(v2 + 32))(v4, v7, v1);
  __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v9 = sub_219BF0224();
  (*(v2 + 8))(v4, v1);
  return v9;
}

void sub_218A5AE84()
{
  if (!qword_280EE5050)
  {
    type metadata accessor for SavedFeedLayoutModel();
    sub_2186E8954(&qword_280ECD678, type metadata accessor for SavedFeedLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5050);
    }
  }
}

void sub_218A5AF18()
{
  if (!qword_280EE4D90)
  {
    type metadata accessor for SavedFeedLayoutModel();
    sub_218A5ABD0();
    sub_2186E8954(&qword_280ECD678, type metadata accessor for SavedFeedLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4D90);
    }
  }
}

unint64_t sub_218A5AFD0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_218A5B020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A5B088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ArticlesSearchMoreFeedGroup()
{
  result = qword_27CC0D188;
  if (!qword_27CC0D188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A5B15C()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_2187E7248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218A5B218(uint64_t a1)
{
  v2 = sub_218A5B600(&unk_27CC0D1B0);

  return MEMORY[0x282191938](a1, v2);
}

char *sub_218A5B328(void *a1, void *a2)
{
  v2 = a2;
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  v6 = *(a1 + *(v5 + 24));
  if (v6 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_18;
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v32 = v2;
    v10 = 0;
    v8 = v33;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CECE0F0](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 identifier];
      v13 = sub_219BF5414();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v33 + 16);
      v16 = *(v33 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21870B65C((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v33 + 16) = v17 + 1;
      v18 = v33 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v7 != v10);
    v2 = v32;
LABEL_18:
    v19 = *(v2 + *(v5 + 24));
    if (v19 >> 62)
    {
      v20 = sub_219BF7214();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x277D84F90];
    if (!v20)
    {
LABEL_29:
      v31 = sub_219417FCC(v8, v21);

      return (v31 & 1);
    }

    v34 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v21 = v34;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x21CECE0F0](v22, v19);
        }

        else
        {
          v23 = *(v19 + 8 * v22 + 32);
          swift_unknownObjectRetain();
        }

        v24 = [v23 identifier];
        v25 = sub_219BF5414();
        v27 = v26;
        swift_unknownObjectRelease();

        v29 = *(v34 + 16);
        v28 = *(v34 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_21870B65C((v28 > 1), v29 + 1, 1);
        }

        ++v22;
        *(v34 + 16) = v29 + 1;
        v30 = v34 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v20 != v22);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_218A5B600(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticlesSearchMoreFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A5B644(uint64_t a1)
{
  v34 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v39);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 16);
  if (!v38)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v3 + 80);
  v8 = MEMORY[0x277D84F90];
  v36 = *(v3 + 72);
  v37 = a1 + ((v7 + 32) & ~v7);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_218965054(v37 + v36 * v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = type metadata accessor for RecipesSearchMoreFeedGroup;
      }

      else
      {
        v11 = type metadata accessor for TagsSearchMoreFeedGroup;
      }

      sub_218A5C6AC(v5, v11);
      v13 = MEMORY[0x277D84F90];
    }

    else
    {
      v12 = v33;
      sub_218A5D05C(v5, v33, type metadata accessor for ArticlesSearchMoreFeedGroup);
      v13 = *(v12 + *(v34 + 24));

      sub_218A5C6AC(v12, type metadata accessor for ArticlesSearchMoreFeedGroup);
    }

    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = sub_219BF7214();
      v18 = v31 + v15;
      if (__OFADD__(v31, v15))
      {
LABEL_38:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_38;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v15;
    if (result)
    {
      if (!v16)
      {
        v19 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      sub_219BF7214();
      goto LABEL_21;
    }

    if (v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    result = sub_219BF7364();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (((v21 >> 1) - v20) < v43)
    {
      goto LABEL_42;
    }

    v40 = v6;
    v41 = v8;
    v23 = v19 + 8 * v20 + 32;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_44;
      }

      sub_218A4247C(0, &qword_280E8EC00, &qword_280E8E260);
      sub_218A5CFA4(&qword_280E8EBE0, &qword_280E8EC00, &qword_280E8E260);
      for (i = 0; i != v22; ++i)
      {
        v25 = sub_218A352D0(v42, i, v13);
        v27 = *v26;
        swift_unknownObjectRetain();
        (v25)(v42, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_2186D6710(0, &qword_280E8E260);
      swift_arrayInitWithCopy();
    }

    v5 = v35;
    v6 = v40;
    v8 = v41;
    if (v43 >= 1)
    {
      v28 = *(v19 + 16);
      v29 = __OFADD__(v28, v43);
      v30 = v28 + v43;
      if (v29)
      {
        goto LABEL_43;
      }

      *(v19 + 16) = v30;
    }

LABEL_4:
    if (++v6 == v38)
    {
      return v8;
    }
  }

  result = sub_219BF7214();
  v22 = result;
  if (result)
  {
    goto LABEL_26;
  }

LABEL_3:

  if (v43 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_218A5BAAC(uint64_t a1)
{
  v35 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v41);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 16);
  if (!v40)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v3 + 80);
  v38 = *(v3 + 72);
  v39 = a1 + ((v7 + 32) & ~v7);
  v8 = MEMORY[0x277D84F90];
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_218965054(v39 + v38 * v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v34;
        sub_218A5D05C(v5, v34, type metadata accessor for RecipesSearchMoreFeedGroup);
        v12 = *(v11 + *(v35 + 24));

        sub_218A5C6AC(v11, type metadata accessor for RecipesSearchMoreFeedGroup);
        goto LABEL_11;
      }

      v13 = type metadata accessor for TagsSearchMoreFeedGroup;
    }

    else
    {
      v13 = type metadata accessor for ArticlesSearchMoreFeedGroup;
    }

    sub_218A5C6AC(v5, v13);
    v12 = MEMORY[0x277D84F90];
LABEL_11:
    v14 = v12 >> 62;
    if (v12 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v32 = sub_219BF7214();
      v18 = v32 + v15;
      if (__OFADD__(v32, v15))
      {
LABEL_38:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_38;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v16)
      {
        v19 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      sub_219BF7214();
      goto LABEL_21;
    }

    if (v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    result = sub_219BF7364();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (((v21 >> 1) - v20) < v15)
    {
      goto LABEL_42;
    }

    v42 = v15;
    v43 = v8;
    v45 = v6;
    v24 = v19 + 8 * v20 + 32;
    v37 = v19;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_44;
      }

      sub_218799754(0);
      sub_218A5CF5C(&qword_27CC0CBF0, sub_218799754);
      for (i = 0; i != v22; ++i)
      {
        v26 = sub_218A353D0(v44, i, v12);
        v28 = *v27;
        (v26)(v44, 0);
        *(v24 + 8 * i) = v28;
      }
    }

    else
    {
      sub_218799788();
      swift_arrayInitWithCopy();
    }

    v8 = v43;
    v5 = v36;
    v6 = v45;
    if (v42 >= 1)
    {
      v29 = *(v37 + 16);
      v30 = __OFADD__(v29, v42);
      v31 = v29 + v42;
      if (v30)
      {
        goto LABEL_43;
      }

      *(v37 + 16) = v31;
    }

LABEL_4:
    if (++v6 == v40)
    {
      return v8;
    }
  }

  v23 = v19;
  result = sub_219BF7214();
  v19 = v23;
  v22 = result;
  if (result)
  {
    goto LABEL_26;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_218A5BF04(uint64_t a1)
{
  v34 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v39);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 16);
  if (!v38)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v3 + 80);
  v8 = MEMORY[0x277D84F90];
  v36 = *(v3 + 72);
  v37 = a1 + ((v7 + 32) & ~v7);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_218965054(v37 + v36 * v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v11 = type metadata accessor for ArticlesSearchMoreFeedGroup;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = type metadata accessor for RecipesSearchMoreFeedGroup;
LABEL_9:
      sub_218A5C6AC(v5, v11);
      v12 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    v13 = v33;
    sub_218A5D05C(v5, v33, type metadata accessor for TagsSearchMoreFeedGroup);
    v12 = *(v13 + *(v34 + 24));

    sub_218A5C6AC(v13, type metadata accessor for TagsSearchMoreFeedGroup);
LABEL_11:
    v14 = v12 >> 62;
    if (v12 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = sub_219BF7214();
      v18 = v31 + v15;
      if (__OFADD__(v31, v15))
      {
LABEL_38:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_38;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v15;
    if (result)
    {
      if (!v16)
      {
        v19 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      sub_219BF7214();
      goto LABEL_21;
    }

    if (v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    result = sub_219BF7364();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (((v21 >> 1) - v20) < v43)
    {
      goto LABEL_42;
    }

    v40 = v6;
    v41 = v8;
    v23 = v19 + 8 * v20 + 32;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_44;
      }

      sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
      sub_218A5CFA4(&qword_280E8ECE8, &qword_280E8ED00, &qword_280E8E680);
      for (i = 0; i != v22; ++i)
      {
        v25 = sub_218A35450(v42, i, v12);
        v27 = *v26;
        swift_unknownObjectRetain();
        (v25)(v42, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_2186D6710(0, &qword_280E8E680);
      swift_arrayInitWithCopy();
    }

    v5 = v35;
    v6 = v40;
    v8 = v41;
    if (v43 >= 1)
    {
      v28 = *(v19 + 16);
      v29 = __OFADD__(v28, v43);
      v30 = v28 + v43;
      if (v29)
      {
        goto LABEL_43;
      }

      *(v19 + 16) = v30;
    }

LABEL_4:
    if (++v6 == v38)
    {
      return v8;
    }
  }

  result = sub_219BF7214();
  v22 = result;
  if (result)
  {
    goto LABEL_26;
  }

LABEL_3:

  if (v43 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_218A5C36C(unint64_t a1)
{
  v2 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SearchMoreFeedGroup();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_218A5C5A8();
    v14 = swift_projectBox();
    sub_218965054(v14, v10);
    sub_218965054(v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    if (!EnumCaseMultiPayload)
    {
      sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
      sub_218A5D05C(v8, v4, type metadata accessor for ArticlesSearchMoreFeedGroup);
      v13 = *&v4[*(v2 + 24)];

      sub_218A5C6AC(v4, type metadata accessor for ArticlesSearchMoreFeedGroup);
      return v13;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    }

    sub_218A5C6AC(v8, v16);
    sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
    return MEMORY[0x277D84F90];
  }

  if (v11 == 2)
  {
    goto LABEL_7;
  }

  if (v11 != 3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:

  v13 = sub_218A5B644(v12);

  return v13;
}

void sub_218A5C5A8()
{
  if (!qword_27CC0D1C0)
  {
    type metadata accessor for SearchMoreFeedGroup();
    sub_218A5C618();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D1C0);
    }
  }
}

void sub_218A5C618()
{
  if (!qword_27CC0D1C8)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_218A5CF5C(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v0 = sub_219BEE864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0D1C8);
    }
  }
}

uint64_t sub_218A5C6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A5C70C(unint64_t a1)
{
  v2 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SearchMoreFeedGroup();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) > 1)
  {
    if (v11 != 2)
    {
      if (v11 != 3)
      {
        return MEMORY[0x277D84F90];
      }

      goto LABEL_6;
    }

LABEL_7:
    sub_218A5C5A8();
    v14 = swift_projectBox();
    sub_218965054(v14, v10);
    sub_218965054(v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
        sub_218A5D05C(v8, v4, type metadata accessor for RecipesSearchMoreFeedGroup);
        v13 = *&v4[*(v2 + 24)];

        sub_218A5C6AC(v4, type metadata accessor for RecipesSearchMoreFeedGroup);
        return v13;
      }

      v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    }

    sub_218A5C6AC(v8, v16);
    sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
    return MEMORY[0x277D84F90];
  }

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_6:

  v13 = sub_218A5BAAC(v12);

  return v13;
}

uint64_t sub_218A5C948(unint64_t a1)
{
  v2 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SearchMoreFeedGroup();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_218A5C5A8();
    v14 = swift_projectBox();
    sub_218965054(v14, v10);
    sub_218965054(v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
        sub_218A5D05C(v8, v4, type metadata accessor for TagsSearchMoreFeedGroup);
        v13 = *&v4[*(v2 + 24)];

        sub_218A5C6AC(v4, type metadata accessor for TagsSearchMoreFeedGroup);
        return v13;
      }

      v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    sub_218A5C6AC(v8, v16);
    sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
    return MEMORY[0x277D84F90];
  }

  if (v11 == 2)
  {
    goto LABEL_7;
  }

  if (v11 != 3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:

  v13 = sub_218A5BF04(v12);

  return v13;
}

uint64_t sub_218A5CB84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchMoreFeedGroup();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v39 - v16;
  v18 = a1 >> 61;
  if ((a1 >> 61) > 1)
  {
    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

LABEL_11:
    sub_218A5C5A8();
    v24 = swift_projectBox();
    sub_218965054(v24, v17);
    sub_218A5D05C(v17, v13, type metadata accessor for SearchMoreFeedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218A5CFF4(0, &qword_27CC0D1D8, type metadata accessor for RecipesSearchMoreFeedGroup);
        v27 = &v13[*(v26 + 48)];
        v28 = *v27;
        LOBYTE(v27) = v27[8];
        *a2 = v28;
        *(a2 + 8) = v27;
        v29 = type metadata accessor for RecipesSearchMoreFeedGroup;
      }

      else
      {
        sub_218A5CFF4(0, &qword_27CC0D1D0, type metadata accessor for TagsSearchMoreFeedGroup);
        v34 = &v13[*(v33 + 48)];
        v35 = *v34;
        LOBYTE(v34) = v34[8];
        *a2 = v35;
        *(a2 + 8) = v34;
        v29 = type metadata accessor for TagsSearchMoreFeedGroup;
      }
    }

    else
    {
      sub_218A5CFF4(0, &qword_27CC0D1E0, type metadata accessor for ArticlesSearchMoreFeedGroup);
      v31 = &v13[*(v30 + 48)];
      v32 = *v31;
      LOBYTE(v31) = v31[8];
      *a2 = v32;
      *(a2 + 8) = v31;
      v29 = type metadata accessor for ArticlesSearchMoreFeedGroup;
    }

    return sub_218A5C6AC(v13, v29);
  }

  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_6:
  v19 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_10:
    *a2 = 1;
    *(a2 + 8) = 1;
    return result;
  }

  sub_218965054(v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * (v20 - 1), v10);
  sub_218965054(v10, v7);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21)
  {
    if (v21 == 1)
    {
      sub_218A5CFF4(0, &qword_27CC0D1D8, type metadata accessor for RecipesSearchMoreFeedGroup);
      v23 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_218A5CFF4(0, &qword_27CC0D1D0, type metadata accessor for TagsSearchMoreFeedGroup);
      v23 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_218A5CFF4(0, &qword_27CC0D1E0, type metadata accessor for ArticlesSearchMoreFeedGroup);
    v23 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  v36 = &v7[*(v22 + 48)];
  v37 = *v36;
  v38 = v36[8];
  sub_218A5C6AC(v7, v23);
  result = sub_218A5C6AC(v10, type metadata accessor for SearchMoreFeedGroup);
  *a2 = v37;
  *(a2 + 8) = v38;
  return result;
}

uint64_t sub_218A5CF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218A5CFA4(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_218A4247C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218A5CFF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218A5D05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for RecipeBoxFeedGroup()
{
  result = qword_27CC0D238;
  if (!qword_27CC0D238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218A5D17C()
{
  result = qword_27CC0D200;
  if (!qword_27CC0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D200);
  }

  return result;
}

unint64_t sub_218A5D1D8()
{
  result = qword_27CC0D208;
  if (!qword_27CC0D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D208);
  }

  return result;
}

unint64_t sub_218A5D230()
{
  result = qword_27CC0D210;
  if (!qword_27CC0D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D210);
  }

  return result;
}

uint64_t sub_218A5D2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5D7D4(v3, v10);
  v11 = sub_218A5D838(v10, v8);
  v12 = a3(v11);
  sub_2189E4E08(v8);
  return v12;
}

uint64_t sub_218A5D3E4(uint64_t a1)
{
  v2 = sub_218A5D89C(&qword_27CC0C460);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218A5D44C()
{
  sub_218A5D89C(&qword_27CC0D1F0);

  return sub_219BF1174();
}

uint64_t sub_218A5D4BC()
{
  v1 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5D7D4(v0, v6);
  sub_218A5D838(v6, v4);
  v7 = *v4;

  sub_2189E4E08(v4);
  return v7;
}

uint64_t sub_218A5D59C(uint64_t a1)
{
  v2 = sub_218A5D89C(&qword_27CC0D1F0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218A5D5F4()
{
  v1 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5D7D4(v0, v6);
  sub_218A5D838(v6, v4);
  v7 = sub_219BED774();
  sub_2189E4E08(v4);
  return v7;
}

uint64_t sub_218A5D6E0()
{
  sub_218A5D89C(&qword_27CC0D1F8);

  return sub_219BE2324();
}

uint64_t sub_218A5D7D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A5D838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A5D89C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeBoxFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A5D8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_218887ADC);
}

uint64_t sub_218A5D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecipeListRecipeBoxFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_218887B88);
}

uint64_t sub_218A5D9A0(uint64_t a1)
{
  result = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_218A5DA44(void **a1)
{
  v1 = *a1;
  v2 = sub_219BF53D4();
  [v1 setArticleID_];
}

unint64_t sub_218A5DAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  sub_2186DCF58();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  result = sub_218A5DCD4(3uLL);
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    v13 = byte_282A21FF0[result + 32];
    sub_219BE2EB4();
    v14 = sub_219BDBD34();
    v15 = *(*(v14 - 8) + 56);
    v16 = 1;
    v15(v11, 0, 1, v14);
    v21 = 0;
    MEMORY[0x21CECF980](&v21, 8);
    if ((v21 & 0x20000) == 0)
    {
      sub_219BE2EB4();
      v16 = 0;
    }

    v17 = 1;
    v15(v9, v16, 1, v14);
    v21 = 0;
    MEMORY[0x21CECF980](&v21, 8);
    if ((v21 & 0x20000) == 0)
    {
      sub_219BE2EB4();
      v17 = 0;
    }

    v15(v6, v17, 1, v14);
    *a2 = v20;
    *(a2 + 8) = v13;
    v18 = type metadata accessor for MyMagazinesIssue(0);
    sub_218A5DD60(v11, a2 + v18[6]);
    sub_218A5DD60(v9, a2 + v18[7]);
    sub_218A5DD60(v6, a2 + v18[8]);
    v19 = v20;

    return v19;
  }

  return result;
}

unint64_t sub_218A5DCD4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CECF980](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CECF980](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218A5DD60(uint64_t a1, uint64_t a2)
{
  sub_2186DCF58();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A5DDC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_218A5DE0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_218A5DE58(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_219BE89F4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = a1[1];
  if (!v16)
  {
    return;
  }

  v28 = v13;
  v17 = *a1;
  v27 = *a2;

  v18 = sub_218E962AC();
  if (!v18)
  {
    goto LABEL_5;
  }

  if ([v18[2] isSports])
  {

LABEL_5:

    sub_2186C66AC();
    v28 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();
    v19 = v28;

    return;
  }

  if (a3)
  {
    sub_219BE8304();
    v25 = *(v28 + 32);
    v26 = v28 + 32;
    v25(v15, v12, v6);
    if (sub_219BE82D4())
    {
      if (v27 == 2)
      {
        (*(v28 + 8))(v15, v6);
      }

      else
      {
        v20 = v28;
        (*(v28 + 16))(v9, v15, v6);
        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v24 = v21 + v7;
        v22 = swift_allocObject();
        *(v22 + 16) = v17;
        *(v22 + 24) = v16;
        v25((v22 + v21), v9, v6);
        *(v22 + v24) = v27 & 1;
        sub_219BDD154();

        (*(v20 + 8))(v15, v6);
      }
    }

    else
    {
      (*(v28 + 8))(v15, v6);
    }
  }

  else
  {
  }
}

uint64_t sub_218A5E1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = a5;
  v39 = a4;
  sub_218A5E818(0, &unk_27CC15A90, MEMORY[0x277D6E130], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v31 - v6;
  v7 = sub_219BDF274();
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDEEB4();
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  MEMORY[0x28223BE20](v9);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1444();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE1424();
  sub_218A5E818(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v35 = v16;
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v34 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v33 = xmmword_219C09BA0;
  *(v20 + 16) = xmmword_219C09BA0;
  v32 = *MEMORY[0x277CEAD18];
  v31 = *(v18 + 104);
  v31(v20 + v19);
  sub_218A5E87C(&unk_280EE8030, MEMORY[0x277D2F260]);
  sub_219BDCCC4();

  (*(v13 + 8))(v15, v12);
  v21 = sub_219BE89F4();
  v22 = *(v21 - 8);
  v23 = v38;
  (*(v22 + 16))(v38, v39, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  sub_219BDF284();
  v24 = v36;
  sub_219BDEEA4();
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  (v31)(v25 + v19, v32, v17);
  sub_218A5E87C(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v26 = v24;
  v27 = v40;
  sub_219BDCCC4();

  (*(v41 + 8))(v26, v27);
  if (v42)
  {
    sub_219BE0324();
    v28 = &unk_27CC0D248;
    v29 = MEMORY[0x277D2E480];
  }

  else
  {
    sub_219BDFCB4();
    v28 = &unk_27CC0D250;
    v29 = MEMORY[0x277D2E038];
  }

  sub_218A5E87C(v28, v29);
  memset(v43, 0, sizeof(v43));
  sub_219BDCCE4();
  return sub_218806FD0(v43);
}

uint64_t sub_218A5E784(uint64_t a1)
{
  v3 = *(sub_219BE89F4() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_218A5E1F0(a1, v6, v7, v4, v5);
}

void sub_218A5E818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A5E87C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218A5E8C4()
{
  if (*(v0 + OBJC_IVAR____TtC7NewsUI210CoinButton_isBouncingEnabled) == 1 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = objc_opt_self();
    [v1 begin];
    [v1 setDisableActions_];
    v2 = sub_219BF53D4();
    v3 = [objc_opt_self() animationWithKeyPath_];

    [v3 setMass_];
    [v3 setStiffness_];
    [v3 setDamping_];
    [v3 setInitialVelocity_];
    v4 = v3;
    [v4 setDuration_];
    v14 = v4;
    v5 = sub_219BDD2F4();
    [v14 setFromValue_];

    v6 = sub_219BDD2F4();
    [v14 setToValue_];

    v7 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
    LODWORD(v8) = 1045220557;
    LODWORD(v9) = 1041865114;
    LODWORD(v10) = 1.0;
    v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
    [v14 setTimingFunction_];

    [v14 setFillMode_];
    [v14 setRemovedOnCompletion_];

    v12 = [v0 layer];
    v13 = sub_219BF53D4();
    [v12 addAnimation:v14 forKey:v13];

    [v1 commit];
  }
}

void sub_218A5EB9C()
{
  if (*(v0 + OBJC_IVAR____TtC7NewsUI210CoinButton_isBouncingEnabled) == 1 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = objc_opt_self();
    [v1 begin];
    [v1 setDisableActions_];
    v2 = sub_219BF53D4();
    v3 = [objc_opt_self() animationWithKeyPath_];

    [v3 setMass_];
    [v3 setStiffness_];
    [v3 setDamping_];
    [v3 setInitialVelocity_];
    v4 = v3;
    [v4 settlingDuration];
    [v4 setDuration_];
    v16 = v4;
    v5 = sub_219BDD2F4();
    [v16 setFromValue_];

    v6 = sub_219BDD2F4();
    [v16 setToValue_];

    v7 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
    LODWORD(v8) = 1045220557;
    LODWORD(v9) = 1.0;
    LODWORD(v10) = 1045220557;
    v11 = [v7 initWithControlPoints__:v8 :{0.0, v10, v9}];
    [v16 setTimingFunction_];

    [v16 setFillMode_];
    [v16 setRemovedOnCompletion_];

    v12 = [v0 layer];
    v13 = sub_219BF53D4();
    [v12 removeAnimationForKey_];

    v14 = [v0 layer];
    v15 = sub_219BF53D4();
    [v14 addAnimation:v16 forKey:v15];

    [v1 commit];
  }
}

void sub_218A5EED4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, void (*a6)(void))
{
  ObjectType = swift_getObjectType();
  sub_218A60258();
  sub_218A602A4(&unk_27CC0D280, sub_218A60258);
  sub_219BF5D44();
  v11 = a4;
  v12 = a1;
  v13 = sub_219BF5D34();

  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, v13, v11);

  a6();
}

char *sub_218A5F000(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7NewsUI210CoinButton_linkedToggle + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  v11 = *MEMORY[0x277D6D338];
  v12 = sub_219BE5C64();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v4[OBJC_IVAR____TtC7NewsUI210CoinButton_isBouncingEnabled] = 1;
  v13 = OBJC_IVAR____TtC7NewsUI210CoinButton_onTap;
  sub_218803FE0();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC7NewsUI210CoinButton_onTap];
  v17 = v15;
  v18 = v16;
  sub_219BEA854();

  return v17;
}

void sub_218A5F270()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for CoinButton();
  sub_218A602A4(&qword_27CC0D270, type metadata accessor for CoinButton);
  sub_219BEB6A4();
}

uint64_t sub_218A5F31C()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  sub_219BE5C54();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_219BDB5E4();

  return v12;
}

uint64_t sub_218A5F590()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  sub_219BE5C54();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_219BDB5E4();

  return v12;
}

id sub_218A5F7F4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_218A5F874()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  sub_219BE5C54();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_219BDB5E4();

  return v12;
}

uint64_t type metadata accessor for CoinButton()
{
  result = qword_27CC0D260;
  if (!qword_27CC0D260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A5FBA0()
{
  result = sub_219BE5C64();
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

uint64_t sub_218A5FC54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  swift_beginAccess();
  v4 = sub_219BE5C64();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_218A5FCDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  swift_beginAccess();
  v4 = sub_219BE5C64();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_218A5FE20(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI210CoinButton_linkedToggle;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_218A5FE8C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7NewsUI210CoinButton_linkedToggle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_218A5FF2C;
}

void sub_218A5FF2C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_218A5FFB8(uint64_t a1)
{
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D6D338])
  {
    [v1 setSelected_];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
LABEL_5:
    sub_219BDB5E4();
  }

  if (v7 == *MEMORY[0x277D6D340])
  {
    [v1 setSelected_];
    type metadata accessor for Localized();
    v10 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    goto LABEL_5;
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_218A60258()
{
  result = qword_27CC0D278;
  if (!qword_27CC0D278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0D278);
  }

  return result;
}

uint64_t sub_218A602A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218A602EC()
{
  sub_2186CD650();
  swift_allocObject();
  return sub_219BE1E94();
}

uint64_t sub_218A60334()
{
  v0 = sub_219BE9EF4();
  MEMORY[0x28223BE20](v0 - 8);
  sub_219BE9F14();
  type metadata accessor for BootstrapAssembly.TimingSettingsClass();
  sub_21870D158(&qword_27CC0D2A0, type metadata accessor for BootstrapAssembly.TimingSettingsClass);
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 blackColor];
  v4 = [v1 ts:v2 dynamicColor:v3 withDarkStyleVariant:?];

  sub_219BE9EE4();
  return sub_219BE9F04();
}

id sub_218A60490()
{
  result = [objc_allocWithZone(MEMORY[0x277D753D0]) initWithAnimationCurve_];
  qword_27CC0D290 = result;
  return result;
}

uint64_t sub_218A604EC()
{
  if (qword_27CC07D28 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier()
{
  result = qword_27CC0D2A8;
  if (!qword_27CC0D2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A605C8()
{
  result = type metadata accessor for AudioPlaylistFeedRefreshResult();
  if (v1 <= 0x3F)
  {
    result = sub_2186CFDE4(319, &qword_27CC0D2B8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218A6065C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  sub_218A6C9C4(0, &qword_27CC0D2C8, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = (v53 - v7);
  sub_218A6C8B8();
  MEMORY[0x28223BE20](v9 - 8);
  v57 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6C9A4(0);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v60 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v53 - v15;
  MEMORY[0x28223BE20](v14);
  v58 = v53 - v16;
  sub_218A6CDF0(0, &qword_27CC22600, sub_218A6C984);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v53 - v18;
  v20 = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  MEMORY[0x28223BE20](v20);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8747C(v19);
  sub_218A6C984(0);
  v24 = v23;
  v25 = *(v23 - 8);
  if ((*(v25 + 48))(v19, 1, v23) == 1)
  {
    sub_218A6DCA8(v19, &qword_27CC22600, sub_218A6C984);
    sub_218A6CAB8();
    *v8 = swift_allocError();
    (*(v6 + 104))(v8, *MEMORY[0x277D6DF68], v5);
    v63(v8);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v55 = v6;
    sub_219BE6934();
    (*(v25 + 8))(v19, v24);
    v27 = sub_218A6DE10(v22, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    MEMORY[0x28223BE20](v27);
    v52 = v56;
    v28 = sub_218F8C158(sub_218A6CB0C, &v53[-4]);
    v29 = sub_218A6C828(&qword_27CC0D2D8, sub_218A6C984);
    v30 = sub_218A6C828(&qword_27CC0D2E0, sub_218A6C984);
    MEMORY[0x21CEB9170](v28, v24, v29, v30);
    v31 = type metadata accessor for AudioPlaylistFeedModel();
    v32 = sub_218A6C828(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v33 = sub_218A6C828(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v34 = v58;
    v57 = v20;
    v56 = v31;
    v53[2] = v32;
    v53[1] = v33;
    sub_219BEB2D4();
    v35 = a1;
    v36 = sub_2197266D4();
    sub_219BEEFF4();
    sub_219BEEFE4();
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218A6C828(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    v37 = sub_219BEEFC4();

    v54 = v5;
    v38 = 0;
    if (v37)
    {
      v38 = sub_219BEDC74();
    }

    else
    {
      *(&v67 + 1) = 0;
      *&v68 = 0;
    }

    v40 = v61;
    v39 = v62;
    *&v67 = v37;
    *(&v68 + 1) = v38;
    sub_219BEB2C4();
    sub_21885AB78(v36);
    v41 = *(v40 + 16);
    v42 = v59;
    v41(v59, v35, v39);
    v43 = v60;
    v41(v60, v34, v39);
    sub_218A612DC(v42, v43, &v67);
    v44 = v55;
    sub_218A6CB28(0);
    v46 = *(v45 + 64);
    v61 = *(v45 + 80);
    v41(v8, v34, v39);
    sub_218A6C828(&qword_27CC0D2F8, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    sub_219BE78F4();
    v47 = *MEMORY[0x277D6D868];
    v48 = sub_219BE6DF4();
    (*(*(v48 - 8) + 104))(v8 + v46, v47, v48);
    type metadata accessor for AudioPlaylistFeedAnimator();
    sub_218A6C828(&qword_27CC0D300, type metadata accessor for AudioPlaylistFeedAnimator);
    v66 = &_s7ContextON;
    v49 = swift_allocObject();
    v65 = v49;
    v50 = v68;
    *(v49 + 16) = v67;
    *(v49 + 32) = v50;
    *(v49 + 48) = v69;
    *(v49 + 64) = v70;
    sub_219BE7284();
    v51 = v54;
    (*(v44 + 104))(v8, *MEMORY[0x277D6DF60], v54);
    v63(v8);
    (*(v44 + 8))(v8, v51);
    return (*(v40 + 8))(v34, v39);
  }
}

uint64_t sub_218A6101C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for AudioPlaylistFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6C984(0);
  v29 = v15;
  sub_219BE6934();
  sub_218A6DD44(v14, v11);
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshResult();
  v17 = *(a1 + *(refreshed + 24));
  v18 = *v11;
  v19 = *(v11 + 1);
  v20 = *(v6 + 28);
  v21 = sub_219BED8D4();
  (*(*(v21 - 8) + 16))(&v9[v20], &v11[v20], v21);
  *v9 = v18;
  *(v9 + 1) = v19;
  *&v9[*(v6 + 32)] = v17;
  v22 = type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier();
  v23 = a1;
  __swift_project_boxed_opaque_existential_1((a1 + *(v22 + 20)), *(a1 + *(v22 + 20) + 24));
  v24 = v30;
  sub_218A6DDA8(v9, v30, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  v25 = *(refreshed + 20);

  v26 = v31;
  sub_218EA2628(v24, v23 + v25, v31);
  sub_218A6DE10(v24, type metadata accessor for AudioPlaylistFeedGroup);
  sub_218A6DE10(v9, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  sub_218A6DE10(v11, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  return (*(*(v29 - 8) + 56))(v26, 0, 1);
}

uint64_t sub_218A612DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v1168 = a1;
  v1144 = a3;
  sub_218A6CC5C();
  v1109 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v1110 = &v1066 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v1114 = &v1066 - v7;
  sub_218A6CDF0(0, &qword_27CC22600, sub_218A6C984);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v1135 = &v1066 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v1158 = &v1066 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v1118 = &v1066 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v1124 = &v1066 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v1131 = &v1066 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v1147 = &v1066 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v1084 = &v1066 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v1107 = &v1066 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v1074 = &v1066 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v1093 = &v1066 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v1104 = &v1066 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v1082 = &v1066 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v1101 = &v1066 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v1098 = &v1066 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v1080 = &v1066 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v1088 = &v1066 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v1078 = &v1066 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v1086 = &v1066 - v44;
  MEMORY[0x28223BE20](v43);
  v1096 = &v1066 - v45;
  sub_218A6CD5C();
  v1152 = v46;
  v1153 = *(v46 - 8);
  v47 = MEMORY[0x28223BE20](v46);
  v1134 = &v1066 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v1142 = &v1066 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v1117 = &v1066 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v1123 = &v1066 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v1130 = &v1066 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v1146 = &v1066 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v1083 = &v1066 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v1106 = &v1066 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v1073 = &v1066 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v1092 = &v1066 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v1103 = &v1066 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v1081 = &v1066 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v1100 = &v1066 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v1097 = &v1066 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v1079 = &v1066 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v1087 = &v1066 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v1077 = &v1066 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v1085 = &v1066 - v82;
  MEMORY[0x28223BE20](v81);
  v1095 = &v1066 - v83;
  sub_218A6C984(0);
  v1160 = v84;
  v1157 = *(v84 - 1);
  v85 = MEMORY[0x28223BE20](v84);
  v1128 = &v1066 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x28223BE20](v85);
  v1145 = &v1066 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v1111 = &v1066 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v1126 = &v1066 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v1125 = &v1066 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v1138 = &v1066 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v1076 = &v1066 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v1108 = &v1066 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v1075 = &v1066 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v1094 = &v1066 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v1105 = &v1066 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v1072 = &v1066 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v1102 = &v1066 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v1090 = &v1066 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v1071 = &v1066 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v1089 = &v1066 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v1070 = &v1066 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v1091 = &v1066 - v120;
  MEMORY[0x28223BE20](v119);
  v1099 = &v1066 - v121;
  sub_218A6CDF0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  v123 = MEMORY[0x28223BE20](v122 - 8);
  v1121 = &v1066 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x28223BE20](v123);
  v1120 = &v1066 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v1119 = &v1066 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v1112 = &v1066 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v1129 = &v1066 - v132;
  MEMORY[0x28223BE20](v131);
  v1150 = &v1066 - v133;
  v1166 = sub_219BDC014();
  v1167 = *(v1166 - 1);
  v134 = MEMORY[0x28223BE20](v1166);
  v1156 = &v1066 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v134);
  v1140 = &v1066 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1139 = &v1066 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v1137 = &v1066 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v1122 = &v1066 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v1136 = &v1066 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v1172 = &v1066 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v1174 = &v1066 - v149;
  MEMORY[0x28223BE20](v148);
  v1164 = &v1066 - v150;
  sub_218A6CCC8();
  v1178 = v151;
  v1176 = *(v151 - 8);
  v152 = MEMORY[0x28223BE20](v151);
  v1162 = &v1066 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v152);
  v1177 = &v1066 - v154;
  v155 = sub_219BDC104();
  v156 = *(v155 - 8);
  v1179 = v155;
  v1180 = v156;
  v157 = MEMORY[0x28223BE20](v155);
  v1133 = &v1066 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = MEMORY[0x28223BE20](v157);
  v1141 = &v1066 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v1163 = &v1066 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v1175 = &v1066 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v1116 = &v1066 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v1115 = &v1066 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v1113 = &v1066 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v1148 = &v1066 - v172;
  v173 = MEMORY[0x28223BE20](v171);
  v1143 = &v1066 - v174;
  v175 = MEMORY[0x28223BE20](v173);
  v1159 = &v1066 - v176;
  v177 = MEMORY[0x28223BE20](v175);
  v1169 = (&v1066 - v178);
  v179 = MEMORY[0x28223BE20](v177);
  v1173 = &v1066 - v180;
  v181 = MEMORY[0x28223BE20](v179);
  v1151 = &v1066 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v1171 = &v1066 - v184;
  v185 = MEMORY[0x28223BE20](v183);
  v1155 = &v1066 - v186;
  v187 = MEMORY[0x28223BE20](v185);
  v1149 = &v1066 - v188;
  v189 = MEMORY[0x28223BE20](v187);
  v1154 = &v1066 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v1132 = &v1066 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v1127 = &v1066 - v194;
  v195 = MEMORY[0x28223BE20](v193);
  v197 = &v1066 - v196;
  v198 = MEMORY[0x28223BE20](v195);
  v1170 = &v1066 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v202 = &v1066 - v201;
  v203 = MEMORY[0x28223BE20](v200);
  v205 = &v1066 - v204;
  v206 = MEMORY[0x28223BE20](v203);
  v208 = &v1066 - v207;
  MEMORY[0x28223BE20](v206);
  v210 = &v1066 - v209;
  type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  type metadata accessor for AudioPlaylistFeedModel();
  sub_218A6C828(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218A6C828(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
  v1165 = a2;
  sub_219BE78E4();
  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
  v211 = *(sub_219BE6E24() + 16);

  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
  if (!v211)
  {
    v1069 = v205;
    v1177 = v197;
    v1067 = v208;
    v1178 = v210;
    v1068 = v202;
    v228 = sub_219BE6E44();
    v229 = v1180;
    if (*(v228 + 16))
    {
      v230 = v1180;
      v231 = *(v1180 + 16);
      v232 = (*(v1180 + 80) + 32) & ~*(v1180 + 80);
      v234 = v1178;
      v233 = v1179;
      v231(v1178, v228 + v232, v1179);

      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
      v235 = sub_219BE6E34();
      if (*(v235 + 16))
      {
        v236 = v235 + v232;
        v237 = v1067;
        v231(v1067, v236, v233);

        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
        v238 = *(sub_219BE6E44() + 16);

        if (v238 == 1)
        {
          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
          v239 = *(sub_219BE6E34() + 16);

          v229 = v1180;
          v240 = v1166;
          v241 = v1167;
          v242 = v1164;
          if (v239 == 1)
          {
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            sub_219BE6E14();
            v243 = sub_219BDC004();
            v244 = *(v241 + 8);
            v244(v242, v240);
            v245 = v1069;
            if (v243)
            {
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BE6E04();
              v246 = sub_219BDC004();
              v244(v242, v240);
              if (v246)
              {
                v247 = v1178;
                v248 = sub_219BDC0F4();
                v249 = v1067;
                v250 = v248 == sub_219BDC0F4();
                v251 = v1168;
                if (!v250)
                {
                  sub_218A6C9A4(0);
                  v628 = v627;
                  sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                  v629 = v1123;
                  v1177 = v628;
                  v630 = v1165;
                  sub_219BF5E04();
                  v1181 = sub_219BDC0F4();
                  v631 = v1124;
                  v632 = v1152;
                  sub_219BE2084();
                  v634 = v1153 + 8;
                  v633 = *(v1153 + 8);
                  v633(v629, v632);
                  v635 = v1157;
                  v636 = *(v1157 + 48);
                  v637 = v636(v631, 1, v1160);
                  if (v637 == 1)
                  {
                    sub_218A6DCA8(v631, &qword_27CC22600, sub_218A6C984);
                    _s7ContextO6ErrorsOMa();
                    sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                    swift_allocError();
                    v639 = v638;
                    v1181 = 0;
                    v1182 = 0xE000000000000000;
                    sub_219BF7314();
                    MEMORY[0x21CECC330](0xD00000000000006BLL, 0x8000000219CE2130);
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    sub_219BF78C4();
                    MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                    sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                    v640 = v1168;
                    v641 = v1177;
                    v642 = sub_219BF7894();
                    MEMORY[0x21CECC330](v642);

                    MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                    v643 = sub_219BF7894();
                    MEMORY[0x21CECC330](v643);

                    v644 = v1182;
                    *v639 = v1181;
                    v639[1] = v644;
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                    v645 = *(*(v641 - 1) + 8);
                    v645(v630, v641);
                    v645(v640, v641);
                  }

                  else
                  {
                    v1153 = v634;
                    v1176 = *(v635 + 32);
                    (v1176)(v1126, v631, v1160);
                    v663 = v1117;
                    sub_219BF5E04();
                    v1181 = sub_219BDC0F4();
                    v664 = v1118;
                    sub_219BE2084();
                    v633(v663, v632);
                    if (v636(v664, 1, v1160) != 1)
                    {
                      v709 = v1111;
                      v710 = v1160;
                      v711 = v1177;
                      (v1176)(v1111, v664, v1160);
                      v712 = v1178;
                      v713 = sub_219BDC0D4();
                      v714 = v1165;
                      v715 = v1126;
                      if (!v713)
                      {
                        goto LABEL_207;
                      }

                      v716 = sub_219BDC0D4();
                      sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                      sub_219BF5DF4();
                      sub_219BF5E84();
                      result = sub_219BF5E74();
                      if (__OFSUB__(result, 1))
                      {
                        __break(1u);
                        return result;
                      }

                      if (v716 == result - 1)
                      {
LABEL_207:
                        sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                        sub_219BF5DF4();
                        sub_219BF5E84();
                        v1171 = sub_219BF5E74();
                        v717 = v1067;
                        v1176 = sub_219BDC0F4();
                        v1170 = sub_219BDC0D4();
                        sub_219BF5DF4();
                        sub_219BF5E84();
                        v718 = v712;
                        v564 = sub_219BF5E74();
                        v565 = sub_219BDC0F4();
                        v1175 = sub_219BDC0D4();
                        v719 = *(*(v711 - 1) + 8);
                        v719(v1165, v711);
                        v719(v1168, v711);
                        v720 = *(v1157 + 8);
                        v721 = v709;
                        v445 = v1170;
                        v720(v721, v710);
                        v720(v1126, v710);
                        v722 = v1179;
                        v723 = *(v1180 + 8);
                        v724 = v717;
                        v444 = v1171;
                        v723(v724, v1179);
                        v723(v718, v722);
                        v305 = v1176;
                        v566 = v1175 == 0;
                        v567 = 64;
                        goto LABEL_170;
                      }

                      _s7ContextO6ErrorsOMa();
                      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                      swift_allocError();
                      *v857 = 0xD0000000000000B1;
                      v857[1] = 0x8000000219CE3400;
                      swift_storeEnumTagMultiPayload();
                      swift_willThrow();
                      v858 = *(*(v711 - 1) + 8);
                      v858(v714, v711);
                      v858(v1168, v711);
                      v859 = *(v1157 + 8);
                      v859(v709, v710);
                      v859(v715, v710);
                      v674 = v1179;
                      v675 = *(v1180 + 8);
                      v675(v1067, v1179);
                      v676 = v712;
LABEL_263:
                      v675(v676, v674);
                      return __swift_destroy_boxed_opaque_existential_1(&v1183);
                    }

                    sub_218A6DCA8(v664, &qword_27CC22600, sub_218A6C984);
                    _s7ContextO6ErrorsOMa();
                    sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                    swift_allocError();
                    v666 = v665;
                    v1181 = 0;
                    v1182 = 0xE000000000000000;
                    sub_219BF7314();
                    MEMORY[0x21CECC330](0xD00000000000006BLL, 0x8000000219CE2130);
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    sub_219BF78C4();
                    MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                    sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                    v667 = v1168;
                    v668 = v1177;
                    v669 = sub_219BF7894();
                    MEMORY[0x21CECC330](v669);

                    MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                    v670 = v1165;
                    v671 = sub_219BF7894();
                    MEMORY[0x21CECC330](v671);

                    v672 = v1182;
                    *v666 = v1181;
                    v666[1] = v672;
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                    v673 = *(*(v668 - 1) + 8);
                    v673(v670, v668);
                    v673(v667, v668);
                    (*(v1157 + 8))(v1126, v1160);
                  }

                  v674 = v1179;
                  v675 = *(v1180 + 8);
                  v675(v1067, v1179);
                  v676 = v1178;
                  goto LABEL_263;
                }

                _s7ContextO6ErrorsOMa();
                sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                swift_allocError();
                *v252 = 0xD00000000000008BLL;
                v252[1] = 0x8000000219CE34C0;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                sub_218A6C9A4(0);
                v254 = v253;
                v255 = *(*(v253 - 8) + 8);
                v255(v1165, v253);
                v255(v251, v254);
                v256 = *(v1180 + 8);
                v256(v249, v233);
                v257 = v247;
LABEL_203:
                v256(v257, v233);
                return __swift_destroy_boxed_opaque_existential_1(&v1183);
              }
            }

            v229 = v1180;
            v390 = *(v1180 + 8);
            v390(v1067, v233);
            v390(v1178, v233);
            v241 = v1167;
          }

          else
          {
            v375 = *(v1180 + 8);
            v375(v1067, v233);
            v375(v1178, v233);
            v245 = v1069;
          }

          v258 = v1168;
LABEL_31:
          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
          v292 = sub_219BE6E44();
          if (*(v292 + 16))
          {
            (*(v229 + 16))(v245, v292 + ((*(v229 + 80) + 32) & ~*(v229 + 80)), v233);

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v293 = *(sub_219BE6E44() + 16);

            if (v293 == 1)
            {
              v294 = v229;
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v295 = v1156;
              sub_219BE6E04();
              v1176 = sub_219BDBFE4();
              v297 = v296;
              v298 = *(v241 + 8);
              v299 = v295;
              v300 = v1166;
              v298(v299, v1166);
              if ((v297 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(&v1183, v1185[0]), sub_219BE6E04(), v301 = sub_219BDBFD4(), v298(v242, v300), v301 != 1))
              {
                v229 = v294;
                v233 = v1179;
                (*(v294 + 8))(v245, v1179);
                v241 = v1167;
              }

              else
              {
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v302 = *(sub_219BE6E34() + 16);

                v241 = v1167;
                if (!v302)
                {
                  sub_218A6C9A4(0);
                  v538 = v537;
                  sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                  v539 = v1130;
                  v540 = v1165;
                  sub_219BF5E04();
                  v1181 = sub_219BDC0F4();
                  v541 = v1131;
                  v542 = v1152;
                  sub_219BE2084();
                  (*(v1153 + 8))(v539, v542);
                  v543 = v1157;
                  v544 = v1160;
                  if ((*(v1157 + 48))(v541, 1, v1160) == 1)
                  {
                    sub_218A6DCA8(v541, &qword_27CC22600, sub_218A6C984);
                    _s7ContextO6ErrorsOMa();
                    sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                    v1161 = swift_allocError();
                    v546 = v545;
                    v1181 = 0;
                    v1182 = 0xE000000000000000;
                    sub_219BF7314();
                    MEMORY[0x21CECC330](0xD00000000000009FLL, 0x8000000219CE32E0);
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    sub_219BF78C4();
                    MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                    sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                    v547 = v1168;
                    v548 = sub_219BF7894();
                    MEMORY[0x21CECC330](v548);

                    MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                    v549 = sub_219BF7894();
                    MEMORY[0x21CECC330](v549);

                    v550 = v1182;
                    *v546 = v1181;
                    v546[1] = v550;
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                    v551 = *(*(v538 - 8) + 8);
                    v551(v540, v538);
                    v551(v547, v538);
                    (*(v1180 + 8))(v245, v1179);
                    return __swift_destroy_boxed_opaque_existential_1(&v1183);
                  }

                  v616 = v1125;
                  (*(v543 + 32))(v1125, v541, v544);
                  sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                  v617 = v543;
                  sub_219BF5DF4();
                  sub_219BF5E84();
                  v564 = sub_219BF5E74();
                  v565 = sub_219BDC0F4();
                  v618 = sub_219BDC0D4();
                  v619 = *(*(v538 - 8) + 8);
                  v619(v1165, v538);
                  v619(v1168, v538);
                  (*(v617 + 8))(v616, v544);
                  (*(v1180 + 8))(v1069, v1179);
                  v444 = 0;
                  v445 = 0;
                  v566 = v618 == 0;
                  v567 = 64;
                  goto LABEL_169;
                }

                v229 = v294;
                v233 = v1179;
                (*(v294 + 8))(v245, v1179);
              }

              v258 = v1168;
            }

            else
            {
              (*(v229 + 8))(v245, v233);
            }
          }

          else
          {
          }

          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
          sub_219BE6E14();
          v303 = sub_219BDBFD4();
          v1178 = *(v241 + 8);
          v1167 = v241 + 8;
          (v1178)(v242, v1166);
          v304 = v1174;
          if (v303 == 1)
          {
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            sub_219BE6E04();
            v305 = sub_219BDBFE4();
            v307 = v306;
            (v1178)(v304, v1166);
            if ((v307 & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BE6E04();
              v308 = sub_219BDBFD4();
              (v1178)(v242, v1166);
              if (v308 == 1)
              {
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v309 = *(sub_219BE6E44() + 16);

                if (!v309)
                {
                  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                  v310 = *(sub_219BE6E34() + 16);

                  if (!v310)
                  {
                    sub_218A6C9A4(0);
                    v590 = v589;
                    v591 = *(*(v589 - 8) + 8);
                    v591(v1165, v589);
                    v591(v258, v590);
                    v444 = 0;
                    v445 = 0;
                    v567 = 64;
                    v564 = 1;
                    v565 = v305;
                    v566 = 1;
                    goto LABEL_170;
                  }
                }
              }
            }
          }

          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
          v311 = sub_219BE6E34();
          if (*(v311 + 16))
          {
            v312 = v1068;
            (*(v229 + 16))(v1068, v311 + ((*(v229 + 80) + 32) & ~*(v229 + 80)), v233);

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v313 = *(sub_219BE6E34() + 16);

            if (v313 == 1)
            {
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v314 = *(sub_219BE6E44() + 16);

              if (!v314)
              {
                sub_218A6C9A4(0);
                v361 = v360;
                sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                v362 = v1146;
                v363 = v1165;
                sub_219BF5E04();
                v1181 = sub_219BDC0F4();
                v364 = v1147;
                v365 = v1152;
                sub_219BE2084();
                (*(v1153 + 8))(v362, v365);
                v366 = v1157;
                v367 = v1160;
                if ((*(v1157 + 48))(v364, 1, v1160) == 1)
                {
                  sub_218A6DCA8(v364, &qword_27CC22600, sub_218A6C984);
                  _s7ContextO6ErrorsOMa();
                  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                  v1161 = swift_allocError();
                  v369 = v368;
                  v1181 = 0;
                  v1182 = 0xE000000000000000;
                  sub_219BF7314();
                  MEMORY[0x21CECC330](0xD00000000000009FLL, 0x8000000219CE32E0);
                  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                  sub_219BF78C4();
                  MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                  sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                  v370 = sub_219BF7894();
                  v371 = v1180;
                  MEMORY[0x21CECC330](v370);

                  MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                  v372 = sub_219BF7894();
                  MEMORY[0x21CECC330](v372);

                  v373 = v1182;
                  *v369 = v1181;
                  v369[1] = v373;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  v374 = *(*(v361 - 8) + 8);
                  v374(v363, v361);
                  v374(v258, v361);
                }

                else
                {
                  v480 = v1138;
                  (*(v366 + 32))(v1138, v364, v367);
                  sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                  sub_219BF5DF4();
                  sub_219BF5E84();
                  if (v1181 != v1186)
                  {
                    sub_219BF5DF4();
                    sub_219BF5E84();
                    v560 = v367;
                    v1171 = sub_219BF5E74();
                    v561 = v1068;
                    v305 = sub_219BDC0F4();
                    v445 = sub_219BDC0D4();
                    v562 = *(*(v361 - 8) + 8);
                    v562(v1165, v361);
                    v562(v1168, v361);
                    (*(v1157 + 8))(v480, v560);
                    v563 = v561;
                    v444 = v1171;
                    (*(v1180 + 8))(v563, v233);
                    goto LABEL_152;
                  }

                  _s7ContextO6ErrorsOMa();
                  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                  v1161 = swift_allocError();
                  v482 = v481;
                  v1181 = 0;
                  v1182 = 0xE000000000000000;
                  sub_219BF7314();
                  MEMORY[0x21CECC330](0xD000000000000073, 0x8000000219CE3380);
                  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                  sub_219BF78C4();
                  MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                  sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                  v483 = v1168;
                  v484 = sub_219BF7894();
                  v371 = v1180;
                  v485 = v361;
                  MEMORY[0x21CECC330](v484);

                  MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                  v486 = v480;
                  v487 = v1165;
                  v488 = sub_219BF7894();
                  MEMORY[0x21CECC330](v488);

                  v489 = v1182;
                  *v482 = v1181;
                  v482[1] = v489;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  v490 = *(*(v485 - 8) + 8);
                  v490(v487, v485);
                  v490(v483, v485);
                  (*(v1157 + 8))(v486, v1160);
                }

                (*(v371 + 8))(v1068, v1179);
                return __swift_destroy_boxed_opaque_existential_1(&v1183);
              }
            }

            v315 = v258;
            (*(v229 + 8))(v312, v233);
          }

          else
          {
            v315 = v258;
          }

          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
          v316 = v1172;
          sub_219BE6E04();
          v305 = sub_219BDBFE4();
          v318 = v317;
          v319 = v316;
          v320 = v1166;
          (v1178)(v319, v1166);
          if ((v318 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(&v1183, v1185[0]), v321 = *(sub_219BE6E44() + 16), , v321) || (__swift_project_boxed_opaque_existential_1(&v1183, v1185[0]), v322 = *(sub_219BE6E34() + 16), , v322))
          {
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v323 = *(sub_219BE6E44() + 16);

            v223 = v315;
            if (v323 == 2)
            {
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v324 = *(sub_219BE6E34() + 16);

              if (v324 == 2)
              {
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v325 = sub_219BE6E44();
                MEMORY[0x28223BE20](v325);
                *(&v1066 - 2) = &v1183;
                v326 = v1150;
                v327 = v1161;
                sub_218D64A9C(sub_218A6DC68, v325, v1150);

                v328 = *(v229 + 48);
                if (v328(v326, 1, v233) == 1)
                {
                  sub_218A6DCA8(v326, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
                  _s7ContextO6ErrorsOMa();
                  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                  swift_allocError();
                  *v329 = 0xD00000000000008ALL;
                  v329[1] = 0x8000000219CE2EA0;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  sub_218A6C9A4(0);
                  v331 = v330;
                  v332 = *(*(v330 - 8) + 8);
                  v332(v1165, v330);
                  v332(v223, v331);
                  return __swift_destroy_boxed_opaque_existential_1(&v1183);
                }

                v1175 = v327;
                v376 = v1170;
                v377 = v326;
                v378 = *(v229 + 32);
                v378(v1170, v377, v233);
                if (sub_219BDC0D4())
                {
                  _s7ContextO6ErrorsOMa();
                  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                  swift_allocError();
                  *v379 = 0xD000000000000077;
                  v379[1] = 0x8000000219CE2F30;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  sub_218A6C9A4(0);
                  v381 = v380;
                  v382 = *(*(v380 - 8) + 8);
                  v382(v1165, v380);
                  v382(v223, v381);
                  (*(v229 + 8))(v376, v233);
                  return __swift_destroy_boxed_opaque_existential_1(&v1183);
                }

                v1171 = v378;
                v1172 = (v229 + 32);
                v1173 = v328;
                v1174 = (v229 + 48);
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v1178 = sub_219BE6E44();
                v1176 = *(v1178 + 16);
                if (v1176)
                {
                  v521 = 0;
                  v522 = v1178 + ((*(v1180 + 80) + 32) & ~*(v1180 + 80));
                  v523 = (v1180 + 8);
                  while (v521 < *(v1178 + 16))
                  {
                    v524 = v223;
                    v525 = v1179;
                    v526 = v1177;
                    (*(v1180 + 16))(v1177, v522 + *(v1180 + 72) * v521, v1179);
                    if (sub_219BDC0A4())
                    {
                      (*v523)(v526, v525);
                    }

                    else
                    {
                      v527 = sub_219BDC0D4();
                      v528 = *v523;
                      (*v523)(v526, v525);
                      if (v527)
                      {

                        _s7ContextO6ErrorsOMa();
                        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                        swift_allocError();
                        *v529 = 0xD000000000000097;
                        v529[1] = 0x8000000219CE2FB0;
                        swift_storeEnumTagMultiPayload();
                        swift_willThrow();
                        sub_218A6C9A4(0);
                        v531 = v530;
                        v532 = *(*(v530 - 8) + 8);
                        v532(v1165, v530);
                        v532(v524, v531);
                        v528(v1170, v1179);
                        return __swift_destroy_boxed_opaque_existential_1(&v1183);
                      }
                    }

                    ++v521;
                    v223 = v524;
                    if (v1176 == v521)
                    {
                      goto LABEL_149;
                    }
                  }

                  __break(1u);
                  goto LABEL_251;
                }

LABEL_149:

                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v552 = sub_219BE6E34();
                MEMORY[0x28223BE20](v552);
                v472 = v1170;
                *(&v1066 - 2) = v1170;
                v553 = v1129;
                v554 = v1175;
                sub_218D64A9C(sub_218A6DC48, v552, v1129);
                v218 = v554;

                v208 = v1179;
                v555 = (v1173)(v553, 1, v1179);
                v222 = v1132;
                if (v555 == 1)
                {
                  sub_218A6DCA8(v553, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
                  _s7ContextO6ErrorsOMa();
                  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                  swift_allocError();
                  *v556 = 0xD000000000000079;
                  v556[1] = 0x8000000219CE3050;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  sub_218A6C9A4(0);
                  v558 = v557;
                  v559 = *(*(v557 - 8) + 8);
                  v559(v1165, v557);
                  v559(v223, v558);
                  (*(v1180 + 8))(v472, v208);
                  return __swift_destroy_boxed_opaque_existential_1(&v1183);
                }

                v216 = v1127;
                (v1171)(v1127, v553, v208);
                v621 = sub_219BDC0D4();
                v622 = v1165;
                if (!v621)
                {
                  goto LABEL_190;
                }

                _s7ContextO6ErrorsOMa();
                sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                swift_allocError();
                *v623 = 0xD00000000000009ALL;
                v623[1] = 0x8000000219CE30D0;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                sub_218A6C9A4(0);
                v625 = v624;
                v626 = *(*(v624 - 8) + 8);
                v626(v622, v624);
LABEL_192:
                v690 = v223;
LABEL_193:
                v626(v690, v625);
                v478 = *(v1180 + 8);
                goto LABEL_194;
              }
            }

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v333 = *(sub_219BE6E34() + 16);

            v334 = v1173;
            v335 = v1171;
            if (v333 == 2)
            {
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v336 = sub_219BE6E44();
              if (*(v336 + 16))
              {
                v337 = v223;
                v338 = v1149;
                (*(v229 + 16))(v1149, v336 + ((*(v229 + 80) + 32) & ~*(v229 + 80)), v233);

                v339 = v229;
                v340 = *(v229 + 32);
                v341 = v1154;
                v340(v1154, v338, v233);
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v342 = *(sub_219BE6E44() + 16);

                if (v342 == 1)
                {
                  v1177 = v340;
                  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                  v343 = v1164;
                  sub_219BE6E14();
                  v344 = sub_219BDC004();
                  v345 = v1166;
                  v346 = v1178;
                  (v1178)(v343, v1166);
                  if (v344)
                  {
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    sub_219BE6E04();
                    v347 = sub_219BDC004();
                    v346(v343, v345);
                    if (v347)
                    {
                      v348 = v1154;
                      v349 = sub_219BDC0D4();
                      v350 = v1168;
                      if (v349)
                      {
                        _s7ContextO6ErrorsOMa();
                        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                        swift_allocError();
                        *v351 = 0xD0000000000000B0;
                        v351[1] = 0x8000000219CE2CB0;
                        swift_storeEnumTagMultiPayload();
                        swift_willThrow();
                        sub_218A6C9A4(0);
                        v353 = v352;
                        v354 = *(*(v352 - 8) + 8);
                        v354(v1165, v352);
                        v355 = v350;
LABEL_183:
                        v354(v355, v353);
                        (*(v1180 + 8))(v348, v233);
                        return __swift_destroy_boxed_opaque_existential_1(&v1183);
                      }

                      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                      v653 = sub_219BE6E34();
                      MEMORY[0x28223BE20](v653);
                      *(&v1066 - 2) = v348;
                      v654 = v1121;
                      v655 = v1161;
                      sub_218D64A9C(sub_218A6DC48, v653, v1121);

                      v610 = v1180;
                      if ((*(v1180 + 48))(v654, 1, v233) == 1)
                      {
                        sub_218A6DCA8(v654, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
                        _s7ContextO6ErrorsOMa();
                        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                        swift_allocError();
                        *v656 = 0xD000000000000091;
                        v656[1] = 0x8000000219CE2A50;
                        swift_storeEnumTagMultiPayload();
                        swift_willThrow();
                        sub_218A6C9A4(0);
                        v613 = v657;
                        v614 = *(*(v657 - 8) + 8);
                        v614(v1165, v657);
                        v615 = v350;
                        goto LABEL_178;
                      }

                      v691 = v1116;
                      (v1177)(v1116, v654, v233);
                      if (!sub_219BDC0D4())
                      {
                        sub_218A6C9A4(0);
                        v762 = v761;
                        sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                        v763 = v1106;
                        sub_219BF5E04();
                        v1181 = sub_219BDC0F4();
                        v764 = v1107;
                        v765 = v1152;
                        sub_219BE2084();
                        v766 = *(v1153 + 8);
                        v767 = v765;
                        v768 = v764;
                        v1153 += 8;
                        v766(v763, v767);
                        v769 = v1157;
                        v770 = *(v1157 + 48);
                        v771 = v764;
                        v772 = v1160;
                        if (v770(v771, 1, v1160) == 1)
                        {
                          sub_218A6DCA8(v768, &qword_27CC22600, sub_218A6C984);
                          _s7ContextO6ErrorsOMa();
                          sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                          swift_allocError();
                          v774 = v773;
                          v1181 = 0;
                          v1182 = 0xE000000000000000;
                          sub_219BF7314();
                          MEMORY[0x21CECC330](0xD000000000000086, 0x8000000219CE2BC0);
                          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                          sub_219BF78C4();
                          MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                          sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                          v775 = v1168;
                          v776 = sub_219BF7894();
                          MEMORY[0x21CECC330](v776);

                          MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                          v777 = v1165;
                          v778 = sub_219BF7894();
                          MEMORY[0x21CECC330](v778);

                          v779 = v1182;
                          *v774 = v1181;
                          v774[1] = v779;
                          swift_storeEnumTagMultiPayload();
                          swift_willThrow();
                          v780 = *(*(v762 - 8) + 8);
                          v780(v777, v762);
                          v780(v775, v762);
                        }

                        else
                        {
                          v1178 = v762;
                          v1161 = v655;
                          v1176 = *(v769 + 32);
                          (v1176)(v1108, v768, v772);
                          v860 = sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                          sub_219BF5DF4();
                          v1177 = v860;
                          sub_219BF5E84();
                          if (v1181 == v1186)
                          {
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            swift_allocError();
                            v862 = v861;
                            v1181 = 0;
                            v1182 = 0xE000000000000000;
                            sub_219BF7314();
                            MEMORY[0x21CECC330](0xD000000000000066, 0x8000000219CE2E30);
                            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                            sub_219BF78C4();
                            MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                            sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                            v863 = v1168;
                            v864 = v1157;
                            v865 = v1178;
                            v866 = sub_219BF7894();
                            MEMORY[0x21CECC330](v866);

                            MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                            v867 = v1165;
                            v868 = sub_219BF7894();
                            MEMORY[0x21CECC330](v868);

                            v869 = v1182;
                            *v862 = v1181;
                            v862[1] = v869;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            v870 = *(*(v865 - 8) + 8);
                            v870(v867, v865);
                            v870(v863, v865);
                            (*(v864 + 8))(v1108, v1160);
                          }

                          else
                          {
                            v917 = v1083;
                            sub_219BF5E04();
                            v1181 = sub_219BDC0F4();
                            v521 = v1084;
                            v918 = v1152;
                            sub_219BE2084();
                            v766(v917, v918);
                            if (v770(v521, 1, v1160) != 1)
                            {
LABEL_251:
                              v972 = v1076;
                              (v1176)(v1076, v521, v1160);
                              sub_219BF5DF4();
                              sub_219BF5E84();
                              if (v1181 != v1186)
                              {
                                v1030 = v1108;
                                v1031 = v1160;
                                sub_219BF5DF4();
                                sub_219BF5E84();
                                v1171 = sub_219BF5E74();
                                v1176 = sub_219BDC0F4();
                                sub_219BF5DF4();
                                sub_219BF5E84();
                                v445 = sub_219BF5E74();
                                v1032 = v1154;
                                v564 = sub_219BDC0F4();
                                v1033 = v1178;
                                v1034 = *(*(v1178 - 8) + 8);
                                v1034(v1165, v1178);
                                v1034(v1168, v1033);
                                v1035 = *(v1157 + 8);
                                v1035(v972, v1031);
                                v1036 = v1031;
                                v444 = v1171;
                                v1035(v1030, v1036);
                                v1037 = v1179;
                                v1038 = *(v1180 + 8);
                                v1038(v1116, v1179);
                                v1039 = v1032;
                                v305 = v1176;
                                v1038(v1039, v1037);
                                v565 = 0;
                                v566 = 0;
                                v567 = -127;
                                goto LABEL_170;
                              }

                              _s7ContextO6ErrorsOMa();
                              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                              swift_allocError();
                              v974 = v973;
                              v1181 = 0;
                              v1182 = 0xE000000000000000;
                              sub_219BF7314();
                              MEMORY[0x21CECC330](0xD00000000000005ALL, 0x8000000219CE28A0);
                              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                              sub_219BF78C4();
                              MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                              sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                              v975 = v1168;
                              v976 = v1178;
                              v977 = sub_219BF7894();
                              MEMORY[0x21CECC330](v977);

                              MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                              v978 = v1165;
                              v979 = sub_219BF7894();
                              MEMORY[0x21CECC330](v979);

                              v980 = v1182;
                              *v974 = v1181;
                              v974[1] = v980;
                              swift_storeEnumTagMultiPayload();
                              swift_willThrow();
                              v981 = *(*(v976 - 8) + 8);
                              v981(v978, v976);
                              v981(v975, v976);
                              v982 = *(v1157 + 8);
                              v983 = v1160;
                              v982(v972, v1160);
                              v982(v1108, v983);
                              goto LABEL_253;
                            }

                            sub_218A6DCA8(v521, &qword_27CC22600, sub_218A6C984);
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            swift_allocError();
                            v920 = v919;
                            v1181 = 0;
                            v1182 = 0xE000000000000000;
                            sub_219BF7314();
                            MEMORY[0x21CECC330](0xD00000000000007ELL, 0x8000000219CE2460);
                            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                            sub_219BF78C4();
                            MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                            sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                            v921 = v1168;
                            v922 = v1178;
                            v923 = sub_219BF7894();
                            MEMORY[0x21CECC330](v923);

                            MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                            v924 = v1165;
                            v925 = sub_219BF7894();
                            MEMORY[0x21CECC330](v925);

                            v926 = v1182;
                            *v920 = v1181;
                            v920[1] = v926;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            v927 = *(*(v922 - 8) + 8);
                            v927(v924, v922);
                            v927(v921, v922);
                            (*(v1157 + 8))(v1108, v1160);
                          }
                        }

LABEL_253:
                        v674 = v1179;
                        v675 = *(v1180 + 8);
                        v675(v1116, v1179);
                        v957 = &v1184;
                        goto LABEL_262;
                      }

                      _s7ContextO6ErrorsOMa();
                      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                      swift_allocError();
                      *v692 = 0xD0000000000000B5;
                      v692[1] = 0x8000000219CE2D70;
                      swift_storeEnumTagMultiPayload();
                      swift_willThrow();
                      sub_218A6C9A4(0);
                      v694 = v693;
                      v695 = *(*(v693 - 8) + 8);
                      v695(v1165, v693);
                      v695(v350, v694);
                      v256 = *(v1180 + 8);
                      v256(v691, v233);
                      v696 = &v1184;
LABEL_202:
                      v257 = *(v696 - 32);
                      goto LABEL_203;
                    }
                  }

                  v229 = v1180;
                  (*(v1180 + 8))(v1154, v233);
                  v223 = v1168;
                }

                else
                {
                  (*(v339 + 8))(v341, v233);
                  v229 = v339;
                  v223 = v337;
                }

                v334 = v1173;
                v335 = v1171;
              }

              else
              {
              }
            }

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v391 = *(sub_219BE6E34() + 16);

            if (v391 != 2)
            {
LABEL_89:
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v403 = *(sub_219BE6E44() + 16);

              if (v403 == 2)
              {
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v404 = sub_219BE6E34();
                if (*(v404 + 16))
                {
                  (*(v229 + 16))(v334, v404 + ((*(v229 + 80) + 32) & ~*(v229 + 80)), v233);

                  v405 = *(v229 + 32);
                  v406 = v1151;
                  v405(v1151, v334, v233);
                  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                  v407 = *(sub_219BE6E34() + 16);

                  if (v407 == 1)
                  {
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    v408 = v1139;
                    sub_219BE6E04();
                    v1176 = sub_219BDBFE4();
                    v410 = v409;
                    (v1178)(v408, v1166);
                    if ((v410 & 1) == 0)
                    {
                      v348 = v1151;
                      if (sub_219BDC0D4())
                      {
                        _s7ContextO6ErrorsOMa();
                        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                        swift_allocError();
                        v519 = 0x8000000219CE2580;
                        v520 = 0xD0000000000000A7;
                      }

                      else
                      {
                        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                        v605 = sub_219BE6E44();
                        v606 = sub_2190890C0(v348, v605);

                        if (v606)
                        {
                          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                          v607 = sub_219BE6E44();
                          MEMORY[0x28223BE20](v607);
                          *(&v1066 - 2) = v348;
                          v608 = v1119;
                          v609 = v1161;
                          sub_218D64A9C(sub_218A6DC48, v607, v1119);

                          v610 = v1180;
                          if ((*(v1180 + 48))(v608, 1, v233) == 1)
                          {
                            sub_218A6DCA8(v608, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            swift_allocError();
                            *v611 = 0xD000000000000090;
                            v611[1] = 0x8000000219CE26D0;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            sub_218A6C9A4(0);
                            v613 = v612;
                            v614 = *(*(v612 - 8) + 8);
                            v614(v1165, v612);
                            v615 = v1168;
LABEL_178:
                            v614(v615, v613);
                            (*(v610 + 8))(v348, v233);
                            return __swift_destroy_boxed_opaque_existential_1(&v1183);
                          }

                          v704 = v1113;
                          v405(v1113, v608, v233);
                          if (sub_219BDC0D4())
                          {
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            swift_allocError();
                            *v705 = 0xD0000000000000BBLL;
                            v705[1] = 0x8000000219CE2770;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            sub_218A6C9A4(0);
                            v707 = v706;
                            v708 = *(*(v706 - 8) + 8);
                            v708(v1165, v706);
                            v708(v1168, v707);
                            v256 = *(v1180 + 8);
                            v256(v704, v233);
                            v696 = &v1182;
                            goto LABEL_202;
                          }

                          sub_218A6C9A4(0);
                          v800 = v799;
                          sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                          v801 = v1100;
                          sub_219BF5E04();
                          v1181 = sub_219BDC0F4();
                          v802 = v1101;
                          v803 = v1152;
                          sub_219BE2084();
                          v804 = *(v1153 + 8);
                          v805 = v803;
                          v806 = v802;
                          v1153 += 8;
                          v804(v801, v805);
                          v807 = v1157;
                          v808 = *(v1157 + 48);
                          v809 = v802;
                          v810 = v1160;
                          if (v808(v809, 1, v1160) == 1)
                          {
                            sub_218A6DCA8(v806, &qword_27CC22600, sub_218A6C984);
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            swift_allocError();
                            v812 = v811;
                            v1181 = 0;
                            v1182 = 0xE000000000000000;
                            sub_219BF7314();
                            MEMORY[0x21CECC330](0xD00000000000007ELL, 0x8000000219CE2460);
                            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                            sub_219BF78C4();
                            MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                            sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                            v813 = v1168;
                            v814 = sub_219BF7894();
                            MEMORY[0x21CECC330](v814);

                            MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                            v815 = v1165;
                            v816 = sub_219BF7894();
                            MEMORY[0x21CECC330](v816);

                            v817 = v1182;
                            *v812 = v1181;
                            v812[1] = v817;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            v818 = *(*(v800 - 8) + 8);
                            v818(v815, v800);
                            v818(v813, v800);
                          }

                          else
                          {
                            v1178 = v800;
                            v1161 = v609;
                            v1175 = *(v807 + 32);
                            (v1175)(v1102, v806, v810);
                            v885 = sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                            sub_219BF5DF4();
                            v1177 = v885;
                            sub_219BF5E84();
                            if (v1181 == v1186)
                            {
                              _s7ContextO6ErrorsOMa();
                              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                              swift_allocError();
                              v887 = v886;
                              v1181 = 0;
                              v1182 = 0xE000000000000000;
                              sub_219BF7314();
                              MEMORY[0x21CECC330](0xD00000000000005ALL, 0x8000000219CE28A0);
                              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                              sub_219BF78C4();
                              MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                              sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                              v888 = v1168;
                              v889 = v1157;
                              v890 = v1178;
                              v891 = sub_219BF7894();
                              MEMORY[0x21CECC330](v891);

                              MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                              v892 = v1165;
                              v893 = sub_219BF7894();
                              MEMORY[0x21CECC330](v893);

                              v894 = v1182;
                              *v887 = v1181;
                              v887[1] = v894;
                              swift_storeEnumTagMultiPayload();
                              swift_willThrow();
                              v895 = *(*(v890 - 8) + 8);
                              v895(v892, v890);
                              v895(v888, v890);
                              (*(v889 + 8))(v1102, v1160);
                            }

                            else
                            {
                              v932 = v1081;
                              sub_219BF5E04();
                              v1181 = sub_219BDC0F4();
                              v933 = v1082;
                              v934 = v1152;
                              sub_219BE2084();
                              v804(v932, v934);
                              if (v808(v933, 1, v1160) == 1)
                              {
                                sub_218A6DCA8(v933, &qword_27CC22600, sub_218A6C984);
                                _s7ContextO6ErrorsOMa();
                                sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                                swift_allocError();
                                v936 = v935;
                                v1181 = 0;
                                v1182 = 0xE000000000000000;
                                sub_219BF7314();
                                MEMORY[0x21CECC330](0xD000000000000092, 0x8000000219CE24E0);
                                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                                sub_219BF78C4();
                                MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                                sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                                v937 = v1168;
                                v938 = v1178;
                                v939 = sub_219BF7894();
                                MEMORY[0x21CECC330](v939);

                                MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                                v940 = v1165;
                                v941 = sub_219BF7894();
                                MEMORY[0x21CECC330](v941);

                                v942 = v1182;
                                *v936 = v1181;
                                v936[1] = v942;
                                swift_storeEnumTagMultiPayload();
                                swift_willThrow();
                                v943 = *(*(v938 - 8) + 8);
                                v943(v940, v938);
                                v943(v937, v938);
                                (*(v1157 + 8))(v1102, v1160);
                              }

                              else
                              {
                                v998 = v1072;
                                (v1175)(v1072, v933, v1160);
                                sub_219BF5DF4();
                                v999 = v998;
                                sub_219BF5E84();
                                if (v1181 != v1186)
                                {
                                  v1049 = v1102;
                                  v1050 = v1160;
                                  sub_219BF5DF4();
                                  sub_219BF5E84();
                                  v1170 = sub_219BF5E74();
                                  v564 = sub_219BDC0F4();
                                  sub_219BF5DF4();
                                  sub_219BF5E84();
                                  v565 = sub_219BF5E74();
                                  v1051 = v1113;
                                  v1177 = sub_219BDC0F4();
                                  v1052 = v1178;
                                  v1053 = *(*(v1178 - 8) + 8);
                                  v1053(v1165, v1178);
                                  v1053(v1168, v1052);
                                  v1054 = *(v1157 + 8);
                                  v1054(v999, v1050);
                                  v1054(v1049, v1050);
                                  v1055 = v1179;
                                  v1056 = *(v1180 + 8);
                                  v1056(v1051, v1179);
                                  v445 = v1170;
                                  v566 = v1177;
                                  v1056(v1151, v1055);
                                  v444 = 0;
                                  v567 = 0x80;
                                  goto LABEL_169;
                                }

                                _s7ContextO6ErrorsOMa();
                                sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                                swift_allocError();
                                v1001 = v1000;
                                v1181 = 0;
                                v1182 = 0xE000000000000000;
                                sub_219BF7314();
                                MEMORY[0x21CECC330](0xD000000000000061, 0x8000000219CE2830);
                                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                                sub_219BF78C4();
                                MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                                sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                                v1002 = v1168;
                                v1003 = v1178;
                                v1004 = sub_219BF7894();
                                MEMORY[0x21CECC330](v1004);

                                MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                                v1005 = v1165;
                                v1006 = sub_219BF7894();
                                MEMORY[0x21CECC330](v1006);

                                v1007 = v1182;
                                *v1001 = v1181;
                                v1001[1] = v1007;
                                swift_storeEnumTagMultiPayload();
                                swift_willThrow();
                                v1008 = *(*(v1003 - 8) + 8);
                                v1008(v1005, v1003);
                                v1008(v1002, v1003);
                                v1009 = *(v1157 + 8);
                                v1010 = v1160;
                                v1009(v999, v1160);
                                v1009(v1102, v1010);
                              }
                            }
                          }

                          v674 = v1179;
                          v675 = *(v1180 + 8);
                          v675(v1113, v1179);
                          v957 = &v1182;
                          goto LABEL_262;
                        }

                        _s7ContextO6ErrorsOMa();
                        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                        swift_allocError();
                        v519 = 0x8000000219CE2630;
                        v520 = 0xD00000000000009DLL;
                      }

                      *v518 = v520;
                      v518[1] = v519;
                      swift_storeEnumTagMultiPayload();
                      swift_willThrow();
                      sub_218A6C9A4(0);
                      v353 = v662;
                      v354 = *(*(v662 - 8) + 8);
                      v354(v1165, v662);
                      v355 = v1168;
                      goto LABEL_183;
                    }

                    v229 = v1180;
                    (*(v1180 + 8))(v1151, v233);
                  }

                  else
                  {
                    (*(v229 + 8))(v406, v233);
                  }
                }

                else
                {
                }
              }

              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v411 = sub_219BE6E44();
              if (*(v411 + 16))
              {
                v412 = v229;
                v413 = *(v229 + 16);
                v414 = (*(v229 + 80) + 32) & ~*(v229 + 80);
                v415 = v1169;
                v416 = v1179;
                v413(v1169, v411 + v414, v1179);

                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v417 = *(sub_219BE6E44() + 16);

                if (v417 != 1)
                {
                  (*(v412 + 8))(v415, v416);
                  v229 = v412;
                  goto LABEL_110;
                }

                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                v418 = sub_219BE6E34();
                if (*(v418 + 16))
                {
                  v419 = v418 + v414;
                  v420 = v1148;
                  v421 = v1179;
                  v413(v1148, v419, v1179);

                  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                  v422 = *(sub_219BE6E34() + 16);

                  v423 = v1166;
                  v424 = v1164;
                  if (v422 == 1)
                  {
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    v425 = v1137;
                    sub_219BE6E04();
                    v1176 = sub_219BDBFE4();
                    v427 = v426;
                    v428 = v1178;
                    (v1178)(v425, v423);
                    v229 = v1180;
                    v429 = v1165;
                    if ((v427 & 1) == 0)
                    {
                      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                      sub_219BE6E04();
                      v430 = sub_219BDBFD4();
                      v428(v424, v423);
                      if (v430 == 1)
                      {
                        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                        sub_219BE6E14();
                        v431 = sub_219BDC004();
                        v428(v424, v423);
                        if (v431)
                        {
                          v432 = v1169;
                          v433 = sub_219BDC0D4();
                          v434 = v1168;
                          v435 = v1148;
                          if (v433)
                          {
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            v437 = v229;
                            swift_allocError();
                            v438 = 0x8000000219CE22E0;
                            v439 = 0xD0000000000000A4;
LABEL_221:
                            *v436 = v439;
                            v436[1] = v438;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            sub_218A6C9A4(0);
                            v820 = v819;
                            v821 = *(*(v819 - 8) + 8);
                            v821(v1165, v819);
                            v821(v434, v820);
                            v822 = *(v437 + 8);
                            v823 = v1179;
                            v822(v435, v1179);
                            v822(v432, v823);
                            return __swift_destroy_boxed_opaque_existential_1(&v1183);
                          }

                          if ((sub_219BDC0A4() & 1) == 0)
                          {
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            v437 = v229;
                            swift_allocError();
                            v438 = 0x8000000219CE2390;
                            v439 = 0xD0000000000000C1;
                            goto LABEL_221;
                          }

                          sub_218A6C9A4(0);
                          v732 = v731;
                          sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                          v733 = v1097;
                          sub_219BF5E04();
                          v1181 = sub_219BDC0F4();
                          v734 = v1098;
                          v735 = v1152;
                          sub_219BE2084();
                          (*(v1153 + 8))(v733, v735);
                          v736 = v1157;
                          v737 = v1160;
                          if ((*(v1157 + 48))(v734, 1, v1160) == 1)
                          {
                            sub_218A6DCA8(v734, &qword_27CC22600, sub_218A6C984);
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            v1161 = swift_allocError();
                            v739 = v738;
                            v1181 = 0;
                            v1182 = 0xE000000000000000;
                            sub_219BF7314();
                            MEMORY[0x21CECC330](0xD00000000000007ELL, 0x8000000219CE2460);
                            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                            sub_219BF78C4();
                            MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                            sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                            v740 = sub_219BF7894();
                            v741 = v432;
                            MEMORY[0x21CECC330](v740);

                            MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                            v742 = v1165;
                            v743 = sub_219BF7894();
                            MEMORY[0x21CECC330](v743);

                            v744 = v1182;
                            *v739 = v1181;
                            v739[1] = v744;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            v745 = *(*(v732 - 8) + 8);
                            v745(v742, v732);
                            v745(v434, v732);
                            v746 = v1179;
                            v747 = *(v1180 + 8);
                            v747(v435, v1179);
                            v747(v741, v746);
                            return __swift_destroy_boxed_opaque_existential_1(&v1183);
                          }

                          v896 = v732;
                          v897 = v1090;
                          (*(v736 + 32))(v1090, v734, v737);
                          sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                          v898 = v736;
                          sub_219BF5DF4();
                          sub_219BF5E84();
                          v1170 = sub_219BF5E74();
                          v564 = sub_219BDC0F4();
                          v899 = *(*(v896 - 8) + 8);
                          v899(v1165, v896);
                          v899(v434, v896);
                          v900 = v737;
                          v445 = v1170;
                          (*(v898 + 8))(v897, v900);
                          v901 = v1179;
                          v902 = *(v1180 + 8);
                          v902(v435, v1179);
                          v902(v1169, v901);
                          v444 = 0;
                          v565 = 0;
                          v566 = 0;
                          v567 = -127;
LABEL_169:
                          v305 = v1176;
                          goto LABEL_170;
                        }
                      }
                    }

                    v516 = *(v229 + 8);
                    v517 = v1179;
                    v516(v1148, v1179);
                    v516(v1169, v517);
LABEL_111:
                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    v446 = sub_219BE6E44();
                    if (!*(v446 + 16))
                    {

                      v458 = v1168;
                      goto LABEL_157;
                    }

                    v447 = v229;
                    v448 = *(v229 + 16);
                    v449 = (*(v229 + 80) + 32) & ~*(v229 + 80);
                    v450 = v1159;
                    v451 = v1179;
                    v448(v1159, v446 + v449, v1179);

                    __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                    v452 = *(sub_219BE6E44() + 16);

                    if (v452 == 1)
                    {
                      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                      v453 = sub_219BE6E34();
                      if (*(v453 + 16))
                      {
                        v454 = v453 + v449;
                        v455 = v1143;
                        v456 = v1179;
                        v448(v1143, v454, v1179);

                        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                        v457 = *(sub_219BE6E34() + 16);

                        v458 = v1168;
                        v429 = v1165;
                        if (v457 == 1)
                        {
                          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                          v459 = v1136;
                          sub_219BE6E04();
                          v1176 = sub_219BDBFE4();
                          v461 = v460;
                          v462 = v459;
                          v463 = v1166;
                          (v1178)(v462, v1166);
                          v464 = v1180;
                          if ((v461 & 1) == 0)
                          {
                            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                            v465 = v1164;
                            sub_219BE6E04();
                            v466 = sub_219BDBFD4();
                            (v1178)(v465, v463);
                            if (v466 == 1)
                            {
                              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                              v467 = v1122;
                              sub_219BE6E14();
                              v1177 = sub_219BDBFE4();
                              v469 = v468;
                              (v1178)(v467, v463);
                              if ((v469 & 1) == 0)
                              {
                                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                                v470 = v1164;
                                sub_219BE6E14();
                                v471 = sub_219BDBFD4();
                                (v1178)(v470, v463);
                                if (v471 == 1)
                                {
                                  v472 = v1159;
                                  v473 = sub_219BDC0D4();
                                  v208 = v1179;
                                  if (v473)
                                  {
                                    _s7ContextO6ErrorsOMa();
                                    sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                                    swift_allocError();
                                    *v474 = 0xD0000000000000A4;
                                    v474[1] = 0x8000000219CE22E0;
                                    swift_storeEnumTagMultiPayload();
                                    swift_willThrow();
                                    sub_218A6C9A4(0);
                                    v476 = v475;
                                    v477 = *(*(v475 - 8) + 8);
                                    v477(v429, v475);
                                    v477(v458, v476);
                                    v478 = *(v1180 + 8);
                                    v478(v455, v208);
                                    v479 = v472;
                                    goto LABEL_195;
                                  }

                                  if (sub_219BDC0A4())
                                  {
                                    sub_218A6C9A4(0);
                                    v825 = v824;
                                    v826 = sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
                                    v827 = v1087;
                                    v1178 = v825;
                                    v1175 = v826;
                                    sub_219BF5E04();
                                    v1181 = sub_219BDC0F4();
                                    v828 = v1088;
                                    v829 = v1152;
                                    sub_219BE2084();
                                    v1174 = *(v1153 + 8);
                                    (v1174)(v827, v829);
                                    v830 = v1157;
                                    v831 = *(v1157 + 48);
                                    if (v831(v828, 1, v1160) == 1)
                                    {
                                      sub_218A6DCA8(v828, &qword_27CC22600, sub_218A6C984);
                                      _s7ContextO6ErrorsOMa();
                                      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                                      swift_allocError();
                                      v833 = v832;
                                      v1181 = 0;
                                      v1182 = 0xE000000000000000;
                                      sub_219BF7314();
                                      MEMORY[0x21CECC330](0xD00000000000007ELL, 0x8000000219CE2460);
                                      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                                      sub_219BF78C4();
                                      MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                                      sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                                      v834 = v1178;
                                      v835 = sub_219BF7894();
                                      MEMORY[0x21CECC330](v835);

                                      MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                                      v836 = sub_219BF7894();
                                      MEMORY[0x21CECC330](v836);

                                      v837 = v1182;
                                      *v833 = v1181;
                                      v833[1] = v837;
                                      swift_storeEnumTagMultiPayload();
                                      swift_willThrow();
                                      v838 = *(*(v834 - 8) + 8);
                                      v838(v429, v834);
                                      v838(v458, v834);
                                    }

                                    else
                                    {
                                      v944 = v828;
                                      v945 = v1160;
                                      v1173 = *(v830 + 32);
                                      (v1173)(v1089, v944, v1160);
                                      v946 = v1079;
                                      sub_219BF5E04();
                                      v1181 = v1177;
                                      v947 = v1080;
                                      sub_219BE2084();
                                      (v1174)(v946, v829);
                                      if (v831(v947, 1, v945) != 1)
                                      {
                                        v1011 = v1071;
                                        v1012 = v947;
                                        v1013 = v1160;
                                        (v1173)(v1071, v1012, v1160);
                                        sub_218A6C828(&qword_27CC14300, sub_218A6C984);
                                        v1014 = v1089;
                                        sub_219BF5DF4();
                                        sub_219BF5E84();
                                        v1170 = sub_219BF5E74();
                                        v1015 = v1159;
                                        v564 = sub_219BDC0F4();
                                        sub_219BF5DF4();
                                        sub_219BF5E84();
                                        v565 = sub_219BF5E74();
                                        v1016 = v1178;
                                        v1017 = *(*(v1178 - 8) + 8);
                                        v1017(v1165, v1178);
                                        v1017(v1168, v1016);
                                        v1018 = *(v1157 + 8);
                                        v1018(v1011, v1013);
                                        v1018(v1014, v1013);
                                        v1019 = v1179;
                                        v1020 = *(v1180 + 8);
                                        v1020(v1143, v1179);
                                        v1021 = v1015;
                                        v445 = v1170;
                                        v1020(v1021, v1019);
                                        v444 = 0;
                                        v567 = 0x80;
                                        v305 = v1176;
                                        v566 = v1177;
                                        goto LABEL_170;
                                      }

                                      sub_218A6DCA8(v947, &qword_27CC22600, sub_218A6C984);
                                      _s7ContextO6ErrorsOMa();
                                      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                                      swift_allocError();
                                      v949 = v948;
                                      v1181 = 0;
                                      v1182 = 0xE000000000000000;
                                      sub_219BF7314();
                                      MEMORY[0x21CECC330](0xD000000000000092, 0x8000000219CE24E0);
                                      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                                      sub_219BF78C4();
                                      MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                                      sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                                      v950 = v1168;
                                      v951 = v1178;
                                      v952 = sub_219BF7894();
                                      MEMORY[0x21CECC330](v952);

                                      MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                                      v953 = v1165;
                                      v954 = sub_219BF7894();
                                      MEMORY[0x21CECC330](v954);

                                      v955 = v1182;
                                      *v949 = v1181;
                                      v949[1] = v955;
                                      swift_storeEnumTagMultiPayload();
                                      swift_willThrow();
                                      v956 = *(*(v951 - 8) + 8);
                                      v956(v953, v951);
                                      v956(v950, v951);
                                      (*(v1157 + 8))(v1089, v1160);
                                    }

                                    v674 = v1179;
                                    v675 = *(v1180 + 8);
                                    v675(v1143, v1179);
                                    v957 = &v1186;
LABEL_262:
                                    v676 = *(v957 - 32);
                                    goto LABEL_263;
                                  }

                                  v216 = v455;
                                  _s7ContextO6ErrorsOMa();
                                  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                                  swift_allocError();
                                  *v903 = 0xD0000000000000C1;
                                  v903[1] = 0x8000000219CE2390;
                                  swift_storeEnumTagMultiPayload();
                                  swift_willThrow();
                                  sub_218A6C9A4(0);
                                  v625 = v904;
                                  v626 = *(*(v904 - 8) + 8);
                                  v626(v429, v904);
                                  v690 = v458;
                                  goto LABEL_193;
                                }
                              }
                            }

                            v580 = v1179;
                            v581 = *(v1180 + 8);
                            v581(v455, v1179);
                            v581(v1159, v580);
LABEL_157:
                            _s7ContextO6ErrorsOMa();
                            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                            swift_allocError();
                            v583 = v582;
                            v1181 = 0;
                            v1182 = 0xE000000000000000;
                            sub_219BF7314();
                            MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE22B0);
                            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                            sub_219BF78C4();
                            v584 = v1182;
                            *v583 = v1181;
                            v583[1] = v584;
                            swift_storeEnumTagMultiPayload();
                            swift_willThrow();
                            sub_218A6C9A4(0);
                            v586 = v585;
                            v587 = *(*(v585 - 8) + 8);
                            v587(v429, v585);
                            v587(v458, v586);
                            return __swift_destroy_boxed_opaque_existential_1(&v1183);
                          }
                        }

                        else
                        {
                          v464 = v1180;
                        }

                        v492 = *(v464 + 8);
                        v492(v455, v456);
                        v492(v1159, v456);
                        goto LABEL_157;
                      }

                      (*(v1180 + 8))(v1159, v1179);
                    }

                    else
                    {
                      (*(v447 + 8))(v450, v451);
                    }

                    v458 = v1168;
                    v429 = v1165;
                    goto LABEL_157;
                  }

                  v229 = v1180;
                  v491 = *(v1180 + 8);
                  v491(v420, v421);
                  v491(v1169, v421);
LABEL_110:
                  v429 = v1165;
                  goto LABEL_111;
                }

                v229 = v1180;
                (*(v1180 + 8))(v1169, v1179);
              }

              goto LABEL_110;
            }

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v392 = sub_219BE6E44();
            if (!*(v392 + 16))
            {

              goto LABEL_89;
            }

            (*(v229 + 16))(v335, v392 + ((*(v229 + 80) + 32) & ~*(v229 + 80)), v233);

            v393 = v229;
            v394 = v233;
            v395 = *(v229 + 32);
            v396 = v1155;
            v395(v1155, v335, v394);
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v397 = *(sub_219BE6E44() + 16);

            if (v397 != 1)
            {
              (*(v393 + 8))(v396, v394);
              v233 = v394;
              v229 = v393;
              goto LABEL_88;
            }

            v398 = v395;
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v399 = v1140;
            sub_219BE6E14();
            v400 = sub_219BDBFE4();
            v402 = v401;
            (v1178)(v399, v1166);
            if (v402)
            {
              v233 = v1179;
              v229 = v1180;
              (*(v1180 + 8))(v1155, v1179);
LABEL_88:
              v334 = v1173;
              goto LABEL_89;
            }

            v511 = v1155;
            if (sub_219BDC0D4())
            {
              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              *v512 = 0xD0000000000000A9;
              v512[1] = 0x8000000219CE2900;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_218A6C9A4(0);
              v514 = v513;
              v515 = *(*(v513 - 8) + 8);
              v515(v1165, v513);
              v515(v223, v514);
              (*(v1180 + 8))(v511, v1179);
              return __swift_destroy_boxed_opaque_existential_1(&v1183);
            }

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v592 = v1155;
            v593 = sub_219BE6E34();
            v594 = sub_2190890C0(v592, v593);

            if (!v594)
            {
              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              *v658 = 0xD00000000000009FLL;
              v658[1] = 0x8000000219CE29B0;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_218A6C9A4(0);
              v660 = v659;
              v661 = *(*(v659 - 8) + 8);
              v661(v1165, v659);
              v661(v223, v660);
              (*(v1180 + 8))(v592, v1179);
              return __swift_destroy_boxed_opaque_existential_1(&v1183);
            }

            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            v595 = sub_219BE6E34();
            MEMORY[0x28223BE20](v595);
            *(&v1066 - 2) = v592;
            v596 = v1120;
            v597 = v1161;
            sub_218D64A9C(sub_218A6DC48, v595, v1120);

            v598 = v1179;
            v599 = v1180;
            if ((*(v1180 + 48))(v596, 1, v1179) == 1)
            {
              sub_218A6DCA8(v596, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
              _s7ContextO6ErrorsOMa();
              v600 = v598;
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              *v601 = 0xD000000000000091;
              v601[1] = 0x8000000219CE2A50;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_218A6C9A4(0);
              v603 = v602;
              v604 = *(*(v602 - 8) + 8);
              v604(v1165, v602);
              v604(v223, v603);
              (*(v599 + 8))(v1155, v600);
              return __swift_destroy_boxed_opaque_existential_1(&v1183);
            }

            v697 = v1115;
            v398(v1115, v596, v598);
            if (sub_219BDC0D4())
            {
              _s7ContextO6ErrorsOMa();
              v208 = v598;
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              v699 = v698;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              MEMORY[0x21CECC330](0xD0000000000000C3, 0x8000000219CE2AF0);
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BF78C4();
              v700 = v1182;
              *v699 = v1181;
              v699[1] = v700;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_218A6C9A4(0);
              v702 = v701;
              v703 = *(*(v701 - 8) + 8);
              v703(v1165, v701);
              v703(v223, v702);
              v478 = *(v1180 + 8);
              v478(v697, v208);
              v479 = v1155;
              goto LABEL_195;
            }

            v1177 = v400;
            v1161 = v597;
            sub_218A6C9A4(0);
            v782 = v781;
            v783 = sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
            v784 = v1103;
            v1178 = v782;
            sub_219BF5E04();
            v1181 = sub_219BDC0F4();
            v785 = v1104;
            v786 = v1152;
            sub_219BE2084();
            v787 = v1153 + 8;
            v1176 = *(v1153 + 8);
            (v1176)(v784, v786);
            v788 = v1157;
            v789 = *(v1157 + 48);
            v790 = v1160;
            if (v789(v785, 1, v1160) == 1)
            {
              sub_218A6DCA8(v785, &qword_27CC22600, sub_218A6C984);
              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              v792 = v791;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              MEMORY[0x21CECC330](0xD000000000000086, 0x8000000219CE2BC0);
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BF78C4();
              MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
              sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
              v793 = v1178;
              v794 = sub_219BF7894();
              MEMORY[0x21CECC330](v794);

              MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
              v795 = v1165;
              v796 = sub_219BF7894();
              MEMORY[0x21CECC330](v796);

              v797 = v1182;
              *v792 = v1181;
              v792[1] = v797;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v798 = *(*(v793 - 8) + 8);
              v798(v795, v793);
              v798(v223, v793);
LABEL_258:
              v674 = v1179;
              v675 = *(v1180 + 8);
              v675(v1115, v1179);
              v957 = v1185;
              goto LABEL_262;
            }

            v1175 = *(v788 + 32);
            (v1175)(v1105, v785, v790);
            v871 = v1092;
            v1174 = v783;
            sub_219BF5E04();
            v1181 = sub_219BDC0F4();
            v872 = v1093;
            sub_219BE2084();
            v873 = v871;
            v874 = v1160;
            v1153 = v787;
            v875 = v1176;
            (v1176)(v873, v786);
            v1173 = v789;
            if (v789(v872, 1, v874) == 1)
            {
              sub_218A6DCA8(v872, &qword_27CC22600, sub_218A6C984);
              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              v877 = v876;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              MEMORY[0x21CECC330](0xD00000000000007ELL, 0x8000000219CE2460);
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BF78C4();
              MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
              sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
              v878 = v1168;
              v879 = v1178;
              v880 = sub_219BF7894();
              MEMORY[0x21CECC330](v880);

              MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
              v881 = v1165;
              v882 = sub_219BF7894();
              MEMORY[0x21CECC330](v882);

              v883 = v1182;
              *v877 = v1181;
              v877[1] = v883;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v884 = *(*(v879 - 8) + 8);
              v884(v881, v879);
              v884(v878, v879);
              (*(v1157 + 8))(v1105, v874);
              goto LABEL_258;
            }

            (v1175)(v1094, v872, v874);
            sub_218A6C828(&qword_27CC14300, sub_218A6C984);
            sub_219BF5DF4();
            sub_219BF5E84();
            if (v1181 == v1186)
            {
              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              v929 = v928;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              v930 = "he replacement. Diff: ";
              v931 = 0xD00000000000005ALL;
            }

            else
            {
              v984 = v1073;
              sub_219BF5E04();
              v1181 = v1177;
              v985 = v1074;
              v986 = v1152;
              sub_219BE2084();
              v875(v984, v986);
              if ((v1173)(v985, 1, v1160) != 1)
              {
                (v1175)(v1075, v985, v1160);
                sub_219BF5DF4();
                sub_219BF5E84();
                if (v1181 != v1186)
                {
                  v1057 = v1160;
                  sub_219BF5DF4();
                  sub_219BF5E84();
                  v1171 = sub_219BF5E74();
                  v1176 = sub_219BDC0F4();
                  v1058 = v1094;
                  sub_219BF5DF4();
                  sub_219BF5E84();
                  v445 = sub_219BF5E74();
                  v564 = sub_219BDC0F4();
                  v1059 = v1075;
                  sub_219BF5DF4();
                  sub_219BF5E84();
                  v565 = sub_219BF5E74();
                  v1060 = v1178;
                  v1061 = *(*(v1178 - 8) + 8);
                  v1061(v1165, v1178);
                  v1061(v1168, v1060);
                  v1062 = *(v1157 + 8);
                  v1062(v1059, v1057);
                  v1062(v1058, v1057);
                  v1063 = v1057;
                  v444 = v1171;
                  v1062(v1105, v1063);
                  v1064 = v1179;
                  v1065 = *(v1180 + 8);
                  v1065(v1115, v1179);
                  v1065(v1155, v1064);
                  v305 = v1176;
                  v566 = v1177;
                  v567 = 0x80;
                  goto LABEL_170;
                }

                _s7ContextO6ErrorsOMa();
                sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
                swift_allocError();
                v1041 = v1040;
                v1181 = 0;
                v1182 = 0xE000000000000000;
                sub_219BF7314();
                MEMORY[0x21CECC330](0xD000000000000061, 0x8000000219CE2830);
                __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
                sub_219BF78C4();
                MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
                sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
                v1042 = v1168;
                v1043 = v1178;
                v1044 = sub_219BF7894();
                MEMORY[0x21CECC330](v1044);

                MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
                v1045 = v1165;
                v1046 = sub_219BF7894();
                MEMORY[0x21CECC330](v1046);

                v1047 = v1182;
                *v1041 = v1181;
                v1041[1] = v1047;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                v1048 = *(*(v1043 - 8) + 8);
                v1048(v1045, v1043);
                v1048(v1042, v1043);
                v995 = *(v1157 + 8);
                v997 = v1160;
                v995(v1075, v1160);
                v996 = v1094;
                goto LABEL_257;
              }

              sub_218A6DCA8(v985, &qword_27CC22600, sub_218A6C984);
              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              v929 = v987;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              v930 = "ction getting replaced. Diff: ";
              v931 = 0xD000000000000092;
            }

            MEMORY[0x21CECC330](v931, v930 | 0x8000000000000000);
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            sub_219BF78C4();
            MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
            sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
            v988 = v1168;
            v989 = v1178;
            v990 = sub_219BF7894();
            MEMORY[0x21CECC330](v990);

            MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
            v991 = v1165;
            v992 = sub_219BF7894();
            MEMORY[0x21CECC330](v992);

            v993 = v1182;
            *v929 = v1181;
            v929[1] = v993;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v994 = *(*(v989 - 8) + 8);
            v994(v991, v989);
            v994(v988, v989);
            v995 = *(v1157 + 8);
            v996 = v1094;
            v997 = v1160;
LABEL_257:
            v995(v996, v997);
            v995(v1105, v997);
            goto LABEL_258;
          }

          __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
          sub_219BE6E04();
          v440 = sub_219BDBFD4();
          (v1178)(v242, v320);
          if (v440 != 1)
          {
            _s7ContextO6ErrorsOMa();
            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
            swift_allocError();
            *v533 = 0xD000000000000042;
            v533[1] = 0x8000000219CE3290;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_218A6C9A4(0);
            v535 = v534;
            v536 = *(*(v534 - 8) + 8);
            v536(v1165, v534);
            v536(v315, v535);
            return __swift_destroy_boxed_opaque_existential_1(&v1183);
          }

          sub_218A6C9A4(0);
          v442 = v441;
          v443 = *(*(v441 - 8) + 8);
          v443(v1165, v441);
          v443(v315, v442);
          v444 = 0;
          v445 = 0;
LABEL_152:
          v564 = 0;
          v565 = 0;
          v566 = 0;
          v567 = 0;
          goto LABEL_170;
        }

        v229 = v1180;
        v291 = *(v1180 + 8);
        v291(v237, v233);
        v291(v1178, v233);
      }

      else
      {
        (*(v230 + 8))(v234, v233);

        v229 = v230;
      }

      v241 = v1167;
      v242 = v1164;
      v258 = v1168;
    }

    else
    {

      v233 = v1179;
      v258 = v1168;
      v241 = v1167;
      v242 = v1164;
    }

    v245 = v1069;
    goto LABEL_31;
  }

  v212 = v1180;
  v213 = sub_219BE6E24();
  if (!*(v213 + 16))
  {
LABEL_9:

LABEL_26:
    v286 = v1168;
    _s7ContextO6ErrorsOMa();
    sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
    swift_allocError();
    *v287 = 0xD00000000000002BLL;
    v287[1] = 0x8000000219CE2080;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_218A6C9A4(0);
    v289 = v288;
    v290 = *(*(v288 - 8) + 8);
    v290(v1165, v288);
    v290(v286, v289);
    return __swift_destroy_boxed_opaque_existential_1(&v1183);
  }

  v214 = (v1176 + 16);
  v215 = (*(v1176 + 80) + 32) & ~*(v1176 + 80);
  v1170 = *(v1176 + 16);
  (v1170)(v1177, v213 + v215, v1178);

  v216 = v1185[1];
  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
  v217 = sub_219BE6E24();
  v218 = 0;
  v219 = *(v217 + 16);
  v1171 = v214;
  v1172 = v219;
  v1169 = (v217 + v215);
  v220 = (v212 + 8);
  v1173 = v214 - 8;
  v1174 = v217;
  v221 = v1162;
  v222 = v1163;
  v223 = v1179;
  while (1)
  {
    if (v1172 == v218)
    {
      v1180 = v220;

      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
      v259 = v1164;
      sub_219BE6E14();
      v260 = sub_219BDC004();
      v261 = *(v1167 + 8);
      v262 = v1166;
      v261(v259, v1166);
      v263 = v1158;
      if (v260)
      {
        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
        sub_219BE6E04();
        v264 = sub_219BDC004();
        v261(v259, v262);
        if (v264)
        {
          sub_218A6C9A4(0);
          v266 = v265;
          v267 = sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
          v268 = v1142;
          v1174 = v266;
          v1176 = v267;
          sub_219BF5E04();
          v269 = v1141;
          sub_219BEA5E4();
          v270 = sub_219BDC0F4();
          v1172 = *v1180;
          (v1172)(v269, v1179);
          v1181 = v270;
          v271 = v1152;
          sub_219BE2084();
          v1171 = *(v1153 + 8);
          (v1171)(v268, v271);
          v272 = v1157;
          v273 = *(v1157 + 48);
          if (v273(v263, 1, v1160) == 1)
          {
            sub_218A6DCA8(v263, &qword_27CC22600, sub_218A6C984);
            _s7ContextO6ErrorsOMa();
            sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
            swift_allocError();
            v275 = v274;
            v1181 = 0;
            v1182 = 0xE000000000000000;
            sub_219BF7314();
            MEMORY[0x21CECC330](0xD00000000000006BLL, 0x8000000219CE2130);
            __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
            sub_219BF78C4();
            MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
            sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
            v276 = v1168;
            v277 = v1174;
            v278 = sub_219BF7894();
            MEMORY[0x21CECC330](v278);

            MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
            v279 = v1165;
            v280 = sub_219BF7894();
            MEMORY[0x21CECC330](v280);

            v281 = v1182;
            *v275 = v1181;
            v275[1] = v281;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v282 = *(*(v277 - 1) + 8);
            v282(v279, v277);
            v283 = v276;
            v284 = v277;
          }

          else
          {
            v1169 = *(v272 + 32);
            v1170 = (v272 + 32);
            (v1169)(v1145, v263, v1160);
            v493 = v1134;
            sub_219BF5E04();
            v494 = v1133;
            v495 = v1177;
            sub_219BEA5D4();
            v496 = sub_219BDC0F4();
            (v1172)(v494, v1179);
            v1181 = v496;
            v497 = v1135;
            sub_219BE2084();
            (v1171)(v493, v271);
            v498 = v273(v497, 1, v1160);
            v499 = v1174;
            if (v498 == 1)
            {
              v500 = v495;
              sub_218A6DCA8(v497, &qword_27CC22600, sub_218A6C984);
              _s7ContextO6ErrorsOMa();
              v501 = v1157;
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              v1161 = swift_allocError();
              v502 = v499;
              v504 = v503;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              MEMORY[0x21CECC330](0xD00000000000006BLL, 0x8000000219CE2130);
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BF78C4();
              MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
              sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
              v505 = v1168;
              v506 = sub_219BF7894();
              MEMORY[0x21CECC330](v506);

              MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
              v507 = v1165;
              v508 = sub_219BF7894();
              MEMORY[0x21CECC330](v508);

              v509 = v1182;
              *v504 = v1181;
              v504[1] = v509;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v510 = *(*(v502 - 1) + 8);
              v510(v507, v502);
              v510(v505, v502);
              (*(v501 + 8))(v1145, v1160);
              (*v1173)(v500, v1178);
              return __swift_destroy_boxed_opaque_existential_1(&v1183);
            }

            v568 = v1128;
            (v1169)(v1128, v497, v1160);
            sub_218A6C828(&qword_27CC14300, sub_218A6C984);
            v569 = v1145;
            sub_219BF5DF4();
            sub_219BF5E84();
            v570 = sub_219BF5E74();
            sub_219BF5DF4();
            sub_219BF5E84();
            if (v570 == sub_219BF5E74())
            {
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              v571 = *(sub_219BE6E24() + 16);

              sub_219BF5DF4();
              sub_219BF5E84();
              v572 = sub_219BF5E74();
              v573 = v1168;
              if (v572 >= v571)
              {
                v677 = v569;
                v678 = v1114;
                v679 = v1161;
                v680 = sub_218A6CE44(v1114, &v1183, v568);
                v681 = v1178;
                if (v679)
                {
                  v682 = v1174;
                  v683 = *(*(v1174 - 1) + 8);
                  v683(v1165, v1174);
                  v683(v573, v682);
                  v684 = *(v1157 + 8);
                  v685 = v1160;
                  v684(v568, v1160);
                  v684(v677, v685);
                  (*v1173)(v1177, v681);
                  return __swift_destroy_boxed_opaque_existential_1(&v1183);
                }

                v1161 = 0;
                v678[*(v1109 + 48)] = v680 & 1;
                v1167 = v680;
                sub_219BF5DF4();
                sub_219BF5E84();
                v1171 = sub_219BF5E74();
                v1169 = sub_218A6CC5C;
                v748 = v1110;
                sub_218A6DDA8(v678, v1110, sub_218A6CC5C);
                v749 = v1175;
                sub_219BEA5E4();
                v750 = *v1173;
                (*v1173)(v748, v681);
                v1176 = sub_219BDC0F4();
                v751 = v681;
                v752 = v1172;
                (v1172)(v749, v1179);
                sub_218A6DDA8(v678, v748, v1169);
                sub_219BEA5E4();
                v750(v748, v751);
                v1166 = v750;
                v1170 = sub_219BDC0D4();
                (v752)(v749, v1179);
                sub_219BF5DF4();
                sub_219BF5E84();
                v564 = sub_219BF5E74();
                sub_218A6DDA8(v678, v748, v1169);
                v753 = v1178;
                sub_219BEA5D4();
                v750(v748, v753);
                v565 = sub_219BDC0F4();
                v754 = v1174;
                v755 = v678;
                v756 = *(*(v1174 - 1) + 8);
                v756(v1165, v1174);
                v305 = v1176;
                v757 = v754;
                v445 = v1170;
                v756(v1168, v757);
                (v1172)(v749, v1179);
                v758 = v755;
                v444 = v1171;
                sub_218A6DE10(v758, sub_218A6CC5C);
                v759 = *(v1157 + 8);
                v760 = v1160;
                v759(v1128, v1160);
                v759(v1145, v760);
                (v1166)(v1177, v753);
                v566 = v1167 & 1;
                v567 = 64;
                goto LABEL_170;
              }

              _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              swift_allocError();
              v575 = v574;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              MEMORY[0x21CECC330](0xD00000000000009ALL, 0x8000000219CE2210);
              __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
              sub_219BF78C4();
              v576 = v1182;
              *v575 = v1181;
              v575[1] = v576;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v577 = v1174;
              v578 = *(*(v1174 - 1) + 8);
              v578(v1165, v1174);
              v578(v573, v577);
              v282 = *(v1157 + 8);
              v579 = v1160;
              v282(v568, v1160);
              v283 = v569;
              v284 = v579;
            }

            else
            {
              v1180 = _s7ContextO6ErrorsOMa();
              sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
              v1161 = swift_allocError();
              v647 = v646;
              v1181 = 0;
              v1182 = 0xE000000000000000;
              sub_219BF7314();
              MEMORY[0x21CECC330](0xD00000000000006ELL, 0x8000000219CE21A0);
              v648 = v1160;
              sub_219BF5DF4();
              sub_219BF5E84();
              v1186 = sub_219BF5E74();
              v649 = sub_219BF7894();
              MEMORY[0x21CECC330](v649);

              MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
              sub_219BF5DF4();
              sub_219BF5E84();
              v1186 = sub_219BF5E74();
              v650 = sub_219BF7894();
              MEMORY[0x21CECC330](v650);

              v651 = v1182;
              *v647 = v1181;
              v647[1] = v651;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v652 = *(*(v499 - 1) + 8);
              v652(v1165, v499);
              v652(v1168, v499);
              v282 = *(v1157 + 8);
              v282(v568, v648);
              v283 = v1145;
              v284 = v648;
            }
          }

          v282(v283, v284);
LABEL_75:
          (*v1173)(v1177, v1178);
          return __swift_destroy_boxed_opaque_existential_1(&v1183);
        }

        v1180 = _s7ContextO6ErrorsOMa();
        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
        swift_allocError();
        v384 = v383;
        v1181 = 0;
        v1182 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219CE2100);
        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
        sub_219BE6E04();
        sub_218A6C828(&qword_27CC0D320, MEMORY[0x277CC9A28]);
        v385 = sub_219BF7894();
        MEMORY[0x21CECC330](v385);

        v261(v259, v262);
        MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219CE20E0);
        v386 = v1182;
        *v384 = v1181;
        v384[1] = v386;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v1180 = _s7ContextO6ErrorsOMa();
        sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
        swift_allocError();
        v357 = v356;
        v1181 = 0;
        v1182 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000029, 0x8000000219CE20B0);
        __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
        sub_219BE6E14();
        sub_218A6C828(&qword_27CC0D320, MEMORY[0x277CC9A28]);
        v358 = sub_219BF7894();
        MEMORY[0x21CECC330](v358);

        v261(v259, v262);
        MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219CE20E0);
        v359 = v1182;
        *v357 = v1181;
        v357[1] = v359;
        swift_storeEnumTagMultiPayload();
      }

      swift_willThrow();
      sub_218A6C9A4(0);
      v388 = v387;
      v389 = *(*(v387 - 8) + 8);
      v389(v1165, v387);
      v389(v1168, v388);
      goto LABEL_75;
    }

    if (v218 >= *(v1174 + 2))
    {
      break;
    }

    v208 = v1178;
    (v1170)(v221, v1169 + *(v1176 + 72) * v218, v1178);
    v216 = v1175;
    sub_219BEA5E4();
    v1180 = sub_219BDC0F4();
    v224 = *v220;
    (*v220)(v216, v223);
    sub_219BEA5D4();
    v225 = sub_219BDC0F4();
    v224(v222, v223);
    if (v1180 != v225)
    {

      v285 = *v1173;
      (*v1173)(v221, v208);
      v285(v1177, v208);
      goto LABEL_26;
    }

    ++v218;
    sub_219BEA5E4();
    v1180 = sub_219BDC0F4();
    v224(v216, v223);
    sub_219BEA5E4();
    v226 = sub_219BDC0F4();
    v224(v222, v223);
    v227 = *v1173;
    (*v1173)(v221, v208);
    if (v1180 != v226)
    {
      v227(v1177, v1178);
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_190:
  __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
  v472 = v1170;
  v686 = sub_219BE6E44();
  MEMORY[0x28223BE20](v686);
  *(&v1066 - 2) = v472;
  v687 = v1112;
  sub_218D64A9C(sub_218A6DC48, v686, v1112);

  if ((v1173)(v687, 1, v208) == 1)
  {
    sub_218A6DCA8(v687, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    _s7ContextO6ErrorsOMa();
    sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
    swift_allocError();
    *v688 = 0xD00000000000007ALL;
    v688[1] = 0x8000000219CE3170;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_218A6C9A4(0);
    v625 = v689;
    v626 = *(*(v689 - 8) + 8);
    v626(v1165, v689);
    goto LABEL_192;
  }

  (v1171)(v222, v687, v208);
  v725 = sub_219BDC0D4();
  v726 = v1165;
  if (!v725)
  {
    v1161 = v218;
    sub_218A6C9A4(0);
    v840 = v839;
    v841 = sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
    v842 = v1095;
    v1177 = v841;
    v1178 = v840;
    sub_219BF5E04();
    v1181 = sub_219BDC0F4();
    v843 = v1096;
    v844 = v1152;
    sub_219BE2084();
    v845 = v843;
    v846 = *(v1153 + 8);
    v846(v842, v844);
    v847 = v1157;
    v848 = *(v1157 + 48);
    if (v848(v845, 1, v1160) == 1)
    {
      sub_218A6DCA8(v845, &qword_27CC22600, sub_218A6C984);
      _s7ContextO6ErrorsOMa();
      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
      swift_allocError();
      v850 = v849;
      v1181 = 0;
      v1182 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000086, 0x8000000219CE2BC0);
      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
      sub_219BF78C4();
      MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
      sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
      v851 = v1168;
      v852 = v1178;
      v853 = sub_219BF7894();
      MEMORY[0x21CECC330](v853);

      MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
      v854 = sub_219BF7894();
      MEMORY[0x21CECC330](v854);

      v855 = v1182;
      *v850 = v1181;
      v850[1] = v855;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v856 = *(*(v852 - 8) + 8);
      v856(v726, v852);
      v856(v851, v852);
LABEL_249:
      v674 = v1179;
      v675 = *(v1180 + 8);
      v675(v1132, v1179);
      v675(v1127, v674);
      v676 = v1170;
      goto LABEL_263;
    }

    v905 = v1160;
    v1175 = *(v847 + 32);
    v1176 = v847 + 32;
    (v1175)(v1099, v845, v1160);
    v906 = v1085;
    sub_219BF5E04();
    v1181 = sub_219BDC0F4();
    v907 = v1086;
    sub_219BE2084();
    v846(v906, v844);
    if (v848(v907, 1, v905) == 1)
    {
      sub_218A6DCA8(v907, &qword_27CC22600, sub_218A6C984);
      _s7ContextO6ErrorsOMa();
      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
      swift_allocError();
      v909 = v908;
      v1181 = 0;
      v1182 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD00000000000007ELL, 0x8000000219CE2460);
      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
      sub_219BF78C4();
      MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
      sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
      v910 = v1168;
      v911 = v1178;
      v912 = sub_219BF7894();
      MEMORY[0x21CECC330](v912);

      MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
      v913 = v1165;
      v914 = sub_219BF7894();
      MEMORY[0x21CECC330](v914);

      v915 = v1182;
      *v909 = v1181;
      v909[1] = v915;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v916 = *(*(v911 - 8) + 8);
      v916(v913, v911);
      v916(v910, v911);
      (*(v1157 + 8))(v1099, v1160);
      goto LABEL_249;
    }

    v958 = v1160;
    (v1175)(v1091, v907, v1160);
    v959 = v1077;
    sub_219BF5E04();
    v1181 = sub_219BDC0F4();
    v960 = v1078;
    sub_219BE2084();
    v846(v959, v844);
    if (v848(v960, 1, v958) == 1)
    {
      sub_218A6DCA8(v960, &qword_27CC22600, sub_218A6C984);
      _s7ContextO6ErrorsOMa();
      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
      swift_allocError();
      v962 = v961;
      v1181 = 0;
      v1182 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000092, 0x8000000219CE24E0);
      __swift_project_boxed_opaque_existential_1(&v1183, v1185[0]);
      sub_219BF78C4();
      MEMORY[0x21CECC330](0x3A65726F66654220, 0xE900000000000020);
      sub_218A6C828(&qword_27CC0D328, sub_218A6C9A4);
      v963 = v1168;
      v964 = v1178;
      v965 = sub_219BF7894();
      MEMORY[0x21CECC330](v965);

      MEMORY[0x21CECC330](0x203A726574664120, 0xE800000000000000);
      v966 = v1165;
      v967 = sub_219BF7894();
      MEMORY[0x21CECC330](v967);

      v968 = v1182;
      *v962 = v1181;
      v962[1] = v968;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v969 = *(*(v964 - 8) + 8);
      v969(v966, v964);
      v969(v963, v964);
      v970 = *(v1157 + 8);
      v971 = v1160;
      v970(v1091, v1160);
      v970(v1099, v971);
      goto LABEL_249;
    }

    v1022 = v1070;
    v1023 = v1160;
    (v1175)(v1070, v960, v1160);
    sub_218A6C828(&qword_27CC14300, sub_218A6C984);
    sub_219BF5DF4();
    sub_219BF5E84();
    v1171 = sub_219BF5E74();
    v1176 = sub_219BDC0F4();
    sub_219BF5DF4();
    sub_219BF5E84();
    v445 = sub_219BF5E74();
    v564 = sub_219BDC0F4();
    sub_219BF5DF4();
    sub_219BF5E84();
    v565 = sub_219BF5E74();
    v566 = sub_219BDC0F4();
    v1024 = v1178;
    v1025 = *(*(v1178 - 8) + 8);
    v1025(v1165, v1178);
    v1025(v1168, v1024);
    v1026 = *(v1157 + 8);
    v1027 = v1022;
    v444 = v1171;
    v1026(v1027, v1023);
    v1026(v1091, v1023);
    v1026(v1099, v1023);
    v1028 = v1179;
    v1029 = *(v1180 + 8);
    v1029(v1132, v1179);
    v1029(v1127, v1028);
    v1029(v1170, v1028);
    v305 = v1176;
    v567 = 0x80;
LABEL_170:
    result = __swift_destroy_boxed_opaque_existential_1(&v1183);
    v620 = v1144;
    *v1144 = v444;
    v620[1] = v305;
    v620[2] = v445;
    v620[3] = v564;
    v620[4] = v565;
    v620[5] = v566;
    *(v620 + 48) = v567;
    return result;
  }

  _s7ContextO6ErrorsOMa();
  sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
  swift_allocError();
  *v727 = 0xD000000000000093;
  v727[1] = 0x8000000219CE31F0;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_218A6C9A4(0);
  v729 = v728;
  v730 = *(*(v728 - 8) + 8);
  v730(v726, v728);
  v730(v223, v729);
  v478 = *(v1180 + 8);
  v478(v1132, v208);
LABEL_194:
  v478(v216, v208);
  v479 = v472;
LABEL_195:
  v478(v479, v208);
  return __swift_destroy_boxed_opaque_existential_1(&v1183);
}