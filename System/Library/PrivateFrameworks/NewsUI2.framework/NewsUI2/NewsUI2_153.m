void sub_2197D8F38(void *a1)
{
  v1 = a1;
  sub_219BE2024();
}

uint64_t sub_2197D8F94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2197D9114()
{
  if (!qword_280E8EBB0)
  {
    sub_21873652C(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280E8EBB0);
    }
  }
}

uint64_t objectdestroy_24Tm_1()
{
  v1 = type metadata accessor for AudioFeedContentConfig();
  v23 = *(*(v1 - 8) + 80);

  v2 = v0 + ((v23 + 24) & ~v23);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v21 = *(v4 + 48);
  if (!v21(v2, 1, v3))
  {
    (*(v4 + 8))(v2, v3);
  }

  v18 = v4;
  v22 = v3;
  v5 = type metadata accessor for AudioFeedConfig();

  v6 = *(v5 + 28);
  v7 = sub_219BEE5B4();
  v8 = *(v7 - 8);
  v19 = *(v8 + 48);
  if (!v19(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v20 = v7;
  v9 = v2 + *(v1 + 20);
  sub_2186E7180(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 8);
  v12(v9, v10);
  type metadata accessor for UpNextAudioFeedGroupKnobs();

  v13 = type metadata accessor for AudioFeedGroupKnobs();
  v12(v9 + *(v13 + 20), v11);
  type metadata accessor for ForYouAudioFeedGroupKnobs();

  v14 = v2 + *(v1 + 24);
  v15 = type metadata accessor for LegacyAudioFeedConfiguration();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    if (!v21(v14, 1, v22))
    {
      (*(v18 + 8))(v14, v22);
    }

    v16 = *(v15 + 28);
    if (!v19(v14 + v16, 1, v20))
    {
      (*(v8 + 8))(v14 + v16, v20);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2197D95DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2197D9660()
{
  if (!qword_280EC8E88)
  {
    type metadata accessor for AudioFeedContentConfig();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EC8E88);
    }
  }
}

uint64_t sub_2197D9710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DA03C(0, &qword_27CC1F620, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D9F84();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2197DA0A0(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2197D9FD8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197D99BC(uint64_t a1)
{
  v2 = sub_2197D9F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197D99F8(uint64_t a1)
{
  v2 = sub_2197D9F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197D9A74(void *a1)
{
  sub_2197DA03C(0, &qword_27CC1F630, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D9F84();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2197DA0A0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2197D9CD4(uint64_t a1)
{
  result = sub_2197DA0A0(&qword_27CC0B9A0, type metadata accessor for SubscriptionTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2197D9D2C(uint64_t a1)
{
  v2 = sub_2197DA0A0(&qword_27CC1F618, type metadata accessor for SubscriptionTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

void *sub_2197D9DB8()
{
  v0 = sub_219BF1904();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v4 = sub_219BF1844();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v5 = [v4 name];
    swift_unknownObjectRelease();
    v4 = sub_219BF5414();
  }

  return v4;
}

uint64_t sub_2197D9ED8(void *a1)
{
  a1[1] = sub_2197DA0A0(&qword_27CC1F618, type metadata accessor for SubscriptionTodayFeedGroup);
  a1[2] = sub_2197DA0A0(&qword_27CC0B9E8, type metadata accessor for SubscriptionTodayFeedGroup);
  result = sub_2197DA0A0(&qword_27CC0BA20, type metadata accessor for SubscriptionTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_2197D9F84()
{
  result = qword_27CC1F628;
  if (!qword_27CC1F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F628);
  }

  return result;
}

uint64_t sub_2197D9FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197DA03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197D9F84();
    v7 = a3(a1, &type metadata for SubscriptionTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197DA0A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2197DA0FC()
{
  result = qword_27CC1F638;
  if (!qword_27CC1F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F638);
  }

  return result;
}

unint64_t sub_2197DA154()
{
  result = qword_27CC1F640;
  if (!qword_27CC1F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F640);
  }

  return result;
}

unint64_t sub_2197DA1AC()
{
  result = qword_27CC1F648;
  if (!qword_27CC1F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F648);
  }

  return result;
}

uint64_t sub_2197DA248()
{
  v0 = sub_219BEF554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  sub_219BEDCC4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D32630])
  {
    sub_2197DCC14(0, &unk_280E8B8D0, sub_2191FD1C0, MEMORY[0x277D84560]);
    sub_2191FD1C0(0);
    v6 = v5;
    v7 = *(v5 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_219C09BA0;
    v11 = MEMORY[0x277D322E8];
LABEL_5:
    (*(v7 + 104))(v9 + v8, *v11, v6);
    return v10;
  }

  if (v4 == *MEMORY[0x277D32638])
  {
    sub_2197DCC14(0, &unk_280E8B8D0, sub_2191FD1C0, MEMORY[0x277D84560]);
    sub_2191FD1C0(0);
    v6 = v12;
    v7 = *(v12 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_219C09BA0;
    v11 = MEMORY[0x277D322F8];
    goto LABEL_5;
  }

  if (v4 != *MEMORY[0x277D32628] && v4 != *MEMORY[0x277D32640])
  {
    (*(v1 + 8))(v3, v0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197DA540(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_219BE3204();
  v4 = sub_219BE2E54();
  sub_2197DCB10();
  sub_219BE2F64();

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2197DCBA4;
  *(v6 + 24) = v5;

  v7 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = a1;
  v8[4] = v3;

  v9 = sub_219BE2E54();
  sub_218C68E08(0);
  sub_219BE2F64();

  v10 = sub_219BE2E54();
  v11 = sub_219BE3054();

  return v11;
}

uint64_t sub_2197DA780()
{
  v0 = sub_219BE2E54();
  v1 = sub_219BE2E34();

  return v1;
}

uint64_t sub_2197DA7D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v14 = sub_2197DAC90(a1, a2);
  v44 = a3;
  v15 = a3 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs;
  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
  v50 = v15;
  sub_219BEF134();
  sub_219BEF524();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v16 = v18;
  v18(v13, v10);
  v19 = v49;
  if (v49 < 0)
  {
    __break(1u);
  }

  else
  {
    v46 = v16;
    v47 = a4;
    a4 = v14 >> 62;
    if (!(v14 >> 62))
    {
      v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20 >= v49)
      {
        v21 = v49;
      }

      else
      {
        v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v49)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20 >= v22)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  v37 = sub_219BF7214();
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v37 >= v19)
    {
      v39 = v19;
    }

    else
    {
      v39 = v37;
    }

    if (v37 < 0)
    {
      v39 = v19;
    }

    if (v19)
    {
      v22 = v39;
    }

    else
    {
      v22 = 0;
    }

    if (sub_219BF7214() >= v22)
    {
LABEL_10:
      if ((v14 & 0xC000000000000001) != 0 && v22)
      {
        sub_218731D50();

        v23 = 0;
        do
        {
          v24 = v23 + 1;
          sub_219BF7334();
          v23 = v24;
        }

        while (v22 != v24);
      }

      else
      {
      }

      if (a4)
      {
        v25 = sub_219BF7564();
        v26 = v28;
        a4 = v29;
        v27 = v30;

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = v14 & 0xFFFFFFFFFFFFFF8;
        v26 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
        v27 = (2 * v22) | 1;
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v42 = v5;
      v14 = sub_219BF7934();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = MEMORY[0x277D84F90];
      }

      v33 = *(v32 + 16);

      if (__OFSUB__(v27 >> 1, a4))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v33 == (v27 >> 1) - a4)
      {
        v14 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        a4 = v47;
        if (v14)
        {
LABEL_28:
          sub_219BEF134();
          sub_219BEF524();
          v46(v13, v10);
          v17 = v49;
          if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
          {
            v34 = *(v14 + 16);
            if (v34 < v49)
            {
LABEL_31:

              v35 = sub_219BEEDD4();
              sub_2197DC4C4(&qword_280E917E0, MEMORY[0x277D32430]);
              swift_allocError();
              *v36 = v17;
              v36[1] = v34;
              (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D32400], v35);
              swift_willThrow();
              return v34;
            }

LABEL_45:
            if (!(v45 >> 62))
            {
              v40 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
              v41 = v43;
              swift_beginAccess();
              *(v41 + 16) = v40;
              v34 = sub_2197DAEB0(a4, v14);

              return v34;
            }

LABEL_50:
            v40 = sub_219BF7214();
            goto LABEL_47;
          }

LABEL_44:
          v34 = sub_219BF7214();
          if (v34 < v17)
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }

        v14 = MEMORY[0x277D84F90];
LABEL_27:
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      swift_unknownObjectRelease_n();
LABEL_20:
      sub_218B667DC(v25, v26, a4, v27);
      v14 = v31;
      a4 = v47;
      goto LABEL_27;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_2197DAC90(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v6 = sub_219BF7214();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v5;
  }

  v7 = v5 != 0;
  if (v6 < v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((a2 & 0xC000000000000001) != 0 && v5)
  {
    sub_218731D50();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_219BF7334();
      v8 = v9;
    }

    while (v7 != v9);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!v4)
    {
LABEL_13:
      v7 = 0;
      a2 &= 0xFFFFFFFFFFFFFF8uLL;
      v10 = a2 + 32;
      if (v5)
      {
        v5 = 3;
      }

      else
      {
        v5 = 1;
      }

      goto LABEL_19;
    }
  }

  a2 = sub_219BF7564();
  v7 = v11;
  v5 = v12;
  if ((v12 & 1) == 0)
  {
LABEL_18:
    sub_218B667DC(a2, v10, v7, v5);
    v14 = v13;
    swift_unknownObjectRelease();
    return v14;
  }

LABEL_19:
  v4 = v10;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v5 >> 1, v7))
  {
    goto LABEL_32;
  }

  if (v16 != (v5 >> 1) - v7)
  {
LABEL_33:
    swift_unknownObjectRelease();
    v10 = v4;
    goto LABEL_18;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v17;
  if (!v17)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

size_t sub_2197DAEB0(uint64_t a1, unint64_t a2)
{
  v79 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2197DCC14(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v70 - v5;
  sub_2197DCC14(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v70 - v8;
  sub_2197DCC14(0, &qword_280E91A50, sub_2186E7180, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v70 - v10;
  v11 = sub_219BF2AB4();
  v84 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2034();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v15 - 8);
  v76 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroupConfigData = type metadata accessor for UpNextAudioFeedGroupConfigData();
  v20 = MEMORY[0x28223BE20](AudioFeedGroupConfigData - 8);
  v74 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v70 - v22;
  v92 = sub_219BF1934();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF3C84();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v30 = (&v70 - v29);
  v31 = sub_219BF3E84();
  v88 = *(v31 - 8);
  v89 = v31;
  MEMORY[0x28223BE20](v31);
  v93 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v33 = sub_219BF7214();
  }

  else
  {
    v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v6;
  v85 = v11;
  if (v33)
  {
    v98 = a2;
    v100 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    v35 = v100;
    if ((v98 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      LODWORD(v97) = *MEMORY[0x277D34128];
      v96 = (v25 + 32);
      do
      {
        *v30 = MEMORY[0x21CECE0F0](v36, v98);
        (*(v25 + 104))(v30, v97, v24);
        v100 = v35;
        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_218C34A88(v37 > 1, v38 + 1, 1);
          v35 = v100;
        }

        ++v36;
        *(v35 + 16) = v38 + 1;
        (*(v25 + 32))(v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v38, v30, v24);
      }

      while (v33 != v36);
    }

    else
    {
      v40 = (v98 + 32);
      LODWORD(v98) = *MEMORY[0x277D34128];
      v96 = *(v25 + 104);
      v97 = v25 + 104;
      v95 = (v25 + 32);
      do
      {
        *v28 = *v40;
        (v96)(v28, v98, v24);
        v100 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        swift_unknownObjectRetain();
        if (v42 >= v41 >> 1)
        {
          sub_218C34A88(v41 > 1, v42 + 1, 1);
          v35 = v100;
        }

        *(v35 + 16) = v42 + 1;
        (*(v25 + 32))(v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v42, v28, v24);
        ++v40;
        --v33;
      }

      while (v33);
    }

    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v39);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);
  sub_219BF3E74();
  v43 = *(v91 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService + 24);
  v97 = *(v91 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService + 32);
  v98 = v43;
  v96 = __swift_project_boxed_opaque_existential_1((v91 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService), v43);
  sub_2186ED868();
  v44 = v75;
  sub_219BEDD14();
  v72 = sub_219BEC004();
  v45 = *(v72 - 8);
  v71 = *(v45 + 56);
  v73 = v45 + 56;
  v71(v87, 1, 1, v72);
  sub_218A42400(0);
  v47 = v76;
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v48 = v74;
  sub_219BEDD14();
  v49 = sub_219BF1914();
  v51 = v94 + 8;
  v50 = *(v94 + 8);
  v52 = v92;
  v50(v48, v92);
  sub_2194B1FF0(&unk_282A299B8, v49);
  swift_arrayDestroy();
  v53 = v87;
  sub_219BF1764();

  sub_2197DCC78(v47, sub_218A89A94);
  v54 = v53;
  sub_2197DCC78(v53, sub_2186FE720);
  v94 = v51;
  v95 = v50;
  v50(v44, v52);
  sub_2197DCC14(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v55 = v88;
  v56 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_219C09BA0;
  (*(v55 + 16))(v57 + v56, v93, v89);
  v71(v54, 1, 1, v72);
  sub_219A95188(v39);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  v58 = v80;
  sub_219BF2024();
  v59 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs;
  sub_2186E7180(0);
  v61 = v60;
  v62 = *(v60 - 8);
  v63 = v77;
  (*(v62 + 16))(v77, v91 + v59, v60);
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = sub_219BF35D4();
  (*(*(v64 - 8) + 56))(v78, 1, 1, v64);
  v99 = 1;
  sub_2197DCCD8();
  swift_allocObject();

  sub_219BF38D4();
  v65 = sub_219BF2774();
  (*(*(v65 - 8) + 56))(v86, 1, 1, v65);
  v66 = qword_280E8D7D8;
  *MEMORY[0x277D30B50];
  if (v66 != -1)
  {
    swift_once();
  }

  qword_280F616F8;
  v67 = v81;
  sub_219BF2A84();
  v68 = v90;
  v69 = sub_219BF2194();
  (*(v84 + 8))(v67, v85);
  (*(v82 + 8))(v58, v83);
  v95(v68, v92);
  (*(v88 + 8))(v93, v89);
  return v69;
}

uint64_t sub_2197DBC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v36 = a1;
  sub_218C68E08(0);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DCC14(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = v30 - v8;
  v9 = sub_219BEF554();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30[1] = v30 - v12;
  v13 = sub_219BF1904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BED8D4();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v34 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v37);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v35 = *(a4 + 16);
  sub_2186ED868();
  v21 = sub_219BEDCA4();
  v31 = v22;
  v32 = v21;
  (*(v14 + 16))(v16, v36, v13);
  v36 = sub_219BEDCB4();
  v30[2] = v23;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2186E7180(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v24 = sub_219BEE5D4();
  (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  v25 = v34;
  sub_219BED854();
  v26 = v31;
  *v20 = v32;
  *(v20 + 1) = v26;
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  (*(v38 + 32))(&v20[*(AudioFeedGroup + 20)], v25, v39);
  *&v20[*(AudioFeedGroup + 24)] = v35;
  swift_storeEnumTagMultiPayload();
  sub_2197DCD6C(v20, v42, type metadata accessor for AudioFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2197DCC14(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v28 = sub_219BE3014();
  sub_2197DCC78(v20, type metadata accessor for AudioFeedGroup);
  return v28;
}

uint64_t sub_2197DC174(uint64_t a1)
{
  sub_218C68E08(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219D36FD0);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_2197DCC14(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197DC2CC()
{
  v1 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_config;
  sub_2186ED868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2197DCC78(v0 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs, type metadata accessor for UpNextAudioFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpNextAudioFeedGroupEmitter()
{
  result = qword_280EB5E30;
  if (!qword_280EB5E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197DC3F0()
{
  sub_2186ED868();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextAudioFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2197DC4C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197DC50C()
{
  sub_2197DCC14(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197DC5AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_config;
  sub_2186ED868();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for AudioFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2197DC640@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for UpNextAudioFeedGroupKnobs();
  a1[4] = sub_2197DC4C4(&qword_280EBC9B0, type metadata accessor for UpNextAudioFeedGroupKnobs);
  a1[5] = sub_2197DC4C4(&qword_27CC1F668, type metadata accessor for UpNextAudioFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2197DCD6C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for UpNextAudioFeedGroupKnobs);
}

uint64_t sub_2197DC70C()
{
  sub_2186E7180(0);
  v0 = sub_219BEE964();
  v1 = sub_2197DA248();
  sub_2191EE19C(v1);
  return v0;
}

uint64_t sub_2197DC7C0@<X0>(uint64_t *a1@<X8>)
{
  sub_2197DCC14(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186ED868();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197DCC78(inited + 32, sub_2188317B0);
  sub_2197DCDD4(0);
  a1[3] = v5;
  a1[4] = sub_2197DC4C4(&qword_280EE7978, sub_2197DCDD4);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2197DC93C()
{
  sub_2197DC4C4(&qword_280EB5E50, type metadata accessor for UpNextAudioFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_2197DCB10()
{
  if (!qword_27CC1F658)
  {
    sub_2197DCC14(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F658);
    }
  }
}

void sub_2197DCC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2197DCC78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2197DCCD8()
{
  if (!qword_280E90080)
  {
    type metadata accessor for AudioFeedServiceConfig();
    sub_2197DC4C4(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v0 = sub_219BF38F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90080);
    }
  }
}

uint64_t sub_2197DCD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197DCE08(uint64_t a1, uint64_t a2)
{
  sub_2186E5C1C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v2 + 32) appConfiguration];
  if (qword_27CC080E0 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_21983DA08();
LABEL_10:
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = v12;

    swift_unknownObjectRetain();
    v18 = sub_219BE2E54();
    type metadata accessor for SharedWithYouFeedServiceConfig();
    v15 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v15;
  }

  if (qword_27CC080D8 != -1)
  {
    swift_once();
  }

  sub_2186EA57C(&qword_27CC1F670, v13, type metadata accessor for SharedWithYouFeedServiceConfigFetcher);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v16 = off_282A8B688;
    type metadata accessor for SharedWithYouFeedConfigManager();
    v16(v11);
    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  sub_218838478(v7);
  sub_2197DD538();
  swift_allocError();
  *v14 = 0;
  sub_2186E5C1C(0, &qword_27CC1F680, type metadata accessor for SharedWithYouFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v15 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v15;
}

double sub_2197DD244@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedWithYouFeedContentConfig();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DD58C(a1, v16);
  v17 = *(a1 + *(type metadata accessor for SharedWithYouFeedConfigFetchResult() + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for SharedWithYouFeedServiceConfig();
  sub_2197DD58C(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[8]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_218ED1FDC(v16);
  result = v20;
  *&a5[v18[9]] = v20;
  return result;
}

uint64_t sub_2197DD44C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_2197DD538()
{
  result = qword_27CC1F678;
  if (!qword_27CC1F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F678);
  }

  return result;
}

uint64_t sub_2197DD58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedContentConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197DD604()
{
  result = qword_27CC1F688;
  if (!qword_27CC1F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F688);
  }

  return result;
}

uint64_t sub_2197DD680()
{
  v5 = type metadata accessor for TopResultSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v0 = sub_219BEF874();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2187089D4(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = sub_219BEF554();
  MEMORY[0x28223BE20](v3 - 8);
  sub_218736B5C();
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_2197DDEFC(&qword_280E9E3D0, type metadata accessor for TopResultSearchFeedGroupConfigData);
  sub_2197DDEFC(&qword_280E9E3D8, type metadata accessor for TopResultSearchFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t sub_2197DD944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DDE98(0, &qword_280E8C8F0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DDE44();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_2197DDEFC(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for TopResultSearchFeedGroupConfigData() + 20)) = 6;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197DDBBC(void *a1)
{
  v3 = v1;
  sub_2197DDE98(0, &qword_27CC1F690, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DDE44();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_2197DDEFC(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for TopResultSearchFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2197DDD9C(uint64_t a1)
{
  v2 = sub_2197DDE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197DDDD8(uint64_t a1)
{
  v2 = sub_2197DDE44();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2197DDE44()
{
  result = qword_280E9E3F0;
  if (!qword_280E9E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E3F0);
  }

  return result;
}

void sub_2197DDE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197DDE44();
    v7 = a3(a1, &type metadata for TopResultSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197DDEFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2197DDF58()
{
  result = qword_27CC1F698;
  if (!qword_27CC1F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F698);
  }

  return result;
}

unint64_t sub_2197DDFB0()
{
  result = qword_280E9E3E0;
  if (!qword_280E9E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E3E0);
  }

  return result;
}

unint64_t sub_2197DE008()
{
  result = qword_280E9E3E8;
  if (!qword_280E9E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E3E8);
  }

  return result;
}

uint64_t sub_2197DE05C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_2197DEC14(0, qword_280E9C1B8, type metadata accessor for TagFeedGroupClusteringKnobOverrides);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_219BEF0B4();
  v10 = *(v16[1] + 64);
  swift_unknownObjectRetain();

  if ([v10 respondsToSelector_])
  {
    v11 = [v10 tagFeedGroupClusteringKnobOverrides];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_219BF5214();

      if (((1 << a1) & 0x3FFFDBFFFFFFLL) != 0)
      {
      }

      else if (a1 == 26)
      {
        sub_2197DEC68(v9);

        v14 = type metadata accessor for TagFeedGroupClusteringKnobOverrides();
        if ((*(*(v14 - 8) + 48))(v9, 1, v14) != 1)
        {
          sub_218AE6D9C(v9, a2);
          return sub_2197DF04C(v9);
        }

        sub_2197DEFD4(v9);
      }

      else
      {
        sub_2197DEC68(v7);

        v15 = type metadata accessor for TagFeedGroupClusteringKnobOverrides();
        if ((*(*(v15 - 8) + 48))(v7, 1, v15) != 1)
        {
          sub_218AE6D9C(&v7[*(v15 + 20)], a2);
          return sub_2197DF04C(v7);
        }

        sub_2197DEFD4(v7);
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v12 = sub_219BF0204();
  return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
}

uint64_t sub_2197DE320(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7453746E65636572;
  }

  else
  {
    v3 = 0x756F59726F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED0000736569726FLL;
  }

  if (*a2)
  {
    v5 = 0x7453746E65636572;
  }

  else
  {
    v5 = 0x756F59726F66;
  }

  if (*a2)
  {
    v6 = 0xED0000736569726FLL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_2197DE3D0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2197DE45C()
{
  sub_219BF5524();
}

uint64_t sub_2197DE4D4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2197DE55C@<X0>(char *a1@<X8>)
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

void sub_2197DE5BC(uint64_t *a1@<X8>)
{
  v2 = 0x756F59726F66;
  if (*v1)
  {
    v2 = 0x7453746E65636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED0000736569726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2197DE604()
{
  if (*v0)
  {
    return 0x7453746E65636572;
  }

  else
  {
    return 0x756F59726F66;
  }
}

uint64_t sub_2197DE648@<X0>(char *a1@<X8>)
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

uint64_t sub_2197DE6AC(uint64_t a1)
{
  v2 = sub_2197DE9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197DE6E8(uint64_t a1)
{
  v2 = sub_2197DE9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagFeedGroupClusteringKnobOverrides.init(forYou:recentStories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219000CD0(a1, a3);
  v5 = a3 + *(type metadata accessor for TagFeedGroupClusteringKnobOverrides() + 20);

  return sub_219000CD0(a2, v5);
}

uint64_t type metadata accessor for TagFeedGroupClusteringKnobOverrides()
{
  result = qword_280E9C1E8;
  if (!qword_280E9C1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TagFeedGroupClusteringKnobOverrides.init(from:)(void *a1)
{
  sub_2197DE984();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DE9E0();
  sub_219BF7B34();
  if (!v1)
  {
    sub_219BF0204();
    v11 = 0;
    sub_2197DF0A8(&qword_280E90FF8, MEMORY[0x277D32BE0]);
    sub_219BF7674();
    v10 = 1;
    type metadata accessor for TagFeedGroupClusteringKnobOverrides();
    sub_219BF7674();
    (*(v5 + 8))(v7, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2197DE984()
{
  if (!qword_27CC1F6A0)
  {
    sub_2197DE9E0();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F6A0);
    }
  }
}

unint64_t sub_2197DE9E0()
{
  result = qword_27CC1F6A8;
  if (!qword_27CC1F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6A8);
  }

  return result;
}

void sub_2197DEA74()
{
  sub_2197DEC14(319, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2197DEB10()
{
  result = qword_27CC1F6B0;
  if (!qword_27CC1F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6B0);
  }

  return result;
}

unint64_t sub_2197DEB68()
{
  result = qword_27CC1F6B8;
  if (!qword_27CC1F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6B8);
  }

  return result;
}

unint64_t sub_2197DEBC0()
{
  result = qword_27CC1F6C0;
  if (!qword_27CC1F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6C0);
  }

  return result;
}

void sub_2197DEC14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2197DEC68@<X0>(uint64_t a1@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for TagFeedGroupClusteringKnobOverrides();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_219BF5204();
  v21 = 0;
  v8 = [v6 dataWithJSONObject:v7 options:0 error:&v21];

  v9 = v21;
  if (v8)
  {
    v10 = sub_219BDBA04();
    v12 = v11;

    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    sub_2197DF0A8(&qword_27CC1F6C8, type metadata accessor for TagFeedGroupClusteringKnobOverrides);
    sub_219BDAFC4();
    sub_2186C6190(v10, v12);

    sub_2197DF0F0(v5, a1);
    v18 = 0;
  }

  else
  {
    v13 = v9;
    v14 = sub_219BDB724();

    swift_willThrow();
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    v21 = 0;
    v22 = 0xE000000000000000;
    v20[1] = v14;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v16 = v21;
    v17 = v22;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_219BE5314();

    v18 = 1;
  }

  return (*(v3 + 56))(a1, v18, 1, v2);
}

uint64_t sub_2197DEFD4(uint64_t a1)
{
  sub_2197DEC14(0, qword_280E9C1B8, type metadata accessor for TagFeedGroupClusteringKnobOverrides);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2197DF04C(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedGroupClusteringKnobOverrides();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2197DF0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197DF0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedGroupClusteringKnobOverrides();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197DF17C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DF61C(0, &qword_280E8C988, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DF5C8();
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

uint64_t sub_2197DF3C4(uint64_t a1)
{
  v2 = sub_2197DF5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197DF400(uint64_t a1)
{
  v2 = sub_2197DF5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197DF454(void *a1)
{
  sub_2197DF61C(0, &qword_280E8C2E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DF5C8();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2197DF5C8()
{
  result = qword_280EA1EF0;
  if (!qword_280EA1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1EF0);
  }

  return result;
}

void sub_2197DF61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197DF5C8();
    v7 = a3(a1, &type metadata for ShortcutsTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197DF694()
{
  result = qword_27CC1F6D0;
  if (!qword_27CC1F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6D0);
  }

  return result;
}

unint64_t sub_2197DF6EC()
{
  result = qword_280EA1EE0;
  if (!qword_280EA1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1EE0);
  }

  return result;
}

unint64_t sub_2197DF744()
{
  result = qword_280EA1EE8;
  if (!qword_280EA1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1EE8);
  }

  return result;
}

uint64_t sub_2197DF798(uint64_t a1)
{
  v20 = a1;
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DFD70();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedWithYouFeedRouteModel();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v18 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v12 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D2FF08], v2);
  (*(v12 + 64))(v20, v5, ObjectType, v12);
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2197DFE2C(v8, sub_2197DFD70);
    return 0;
  }

  else
  {
    v15 = v18;
    sub_2197DFDC8(v8, v18);
    __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
    v16 = sub_21900E0A4(v15);
    sub_2197DFE2C(v15, type metadata accessor for SharedWithYouFeedRouteModel);
    return v16;
  }
}

uint64_t sub_2197DFA2C()
{
  v1 = sub_219BDF074();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1544();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1524();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v12 = *v11;
  v14 = *(*v11 + 16);
  sub_219BE9924();
  (*(v4 + 104))(v6, *MEMORY[0x277D2F3B8], v15);
  sub_2191FDA70(v12, v3);
  sub_219BE1514();
  sub_218EC0E6C();
  sub_219BDD1F4();
  (*(v8 + 8))(v10, v7);
  return sub_219BDD134();
}

uint64_t sub_2197DFC9C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_2197DFD70()
{
  if (!qword_27CC12F58)
  {
    type metadata accessor for SharedWithYouFeedRouteModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12F58);
    }
  }
}

uint64_t sub_2197DFDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197DFE2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197DFE8C()
{
  v1 = type metadata accessor for TodayLocalNewsArticle(0) - 8;
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);
  v6 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
    v9 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_218B7B6F8(v9, v4);
      if (*(v8 + 16) && (sub_21870F700(*v4, v4[1]), (v11 & 1) != 0))
      {
        swift_unknownObjectRetain();
        v12 = sub_218B7B75C(v4);
        MEMORY[0x21CECC690](v12);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v6 = v15;
      }

      else
      {
        sub_218B7B75C(v4);
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void *sub_2197E0020()
{
  v1 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v34 = type metadata accessor for TodayLocalNewsArticle(0);
  MEMORY[0x28223BE20](v34);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
    v12 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
    v13 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = MEMORY[0x277D84F90];
    v33 = v12;
    while (1)
    {
      sub_218B7B6F8(v13, v8);
      if (*(v11 + 16))
      {
        v16 = sub_21870F700(*v8, v8[1]);
        if (v17)
        {
          if (*(v12 + 16))
          {
            v39 = v15;
            v18 = *(*(v11 + 56) + 8 * v16);
            v20 = v8[2];
            v19 = v8[3];
            swift_unknownObjectRetain();
            v21 = sub_21870F700(v20, v19);
            if (v22)
            {
              v23 = *(*(v12 + 56) + 8 * v21);
              v38 = *(v34 + 24);
              v24 = v5;
              v25 = *(v37 + 24);
              v26 = sub_219BF3034();
              v27 = v35;
              v28 = &v35[v25];
              v5 = v24;
              (*(*(v26 - 8) + 16))(v28, v8 + v38, v26);
              *v27 = v18;
              v27[1] = v23;
              swift_unknownObjectRetain();
              sub_218B7B75C(v8);
              sub_2197E21F8(v27, v24);
              v15 = v39;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_2191FAAC0(0, v15[2] + 1, 1, v15);
              }

              v30 = v15[2];
              v29 = v15[3];
              v12 = v33;
              if (v30 >= v29 >> 1)
              {
                v15 = sub_2191FAAC0(v29 > 1, v30 + 1, 1, v15);
              }

              v15[2] = v30 + 1;
              sub_2197E21F8(v5, v15 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30);
              goto LABEL_5;
            }

            swift_unknownObjectRelease();
            v15 = v39;
          }
        }
      }

      sub_218B7B75C(v8);
LABEL_5:
      v13 += v14;
      if (!--v10)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197E0360(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656764457377656ELL;
  }

  else
  {
    v2 = 0x74694B64756F6C63;
  }

  if (*a2)
  {
    v3 = 0x656764457377656ELL;
  }

  else
  {
    v3 = 0x74694B64756F6C63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2197E03E8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2197E0460()
{
  sub_219BF5524();
}

uint64_t sub_2197E04BC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2197E0530@<X0>(char *a1@<X8>)
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

void sub_2197E0590(uint64_t *a1@<X8>)
{
  v2 = 0x74694B64756F6C63;
  if (*v1)
  {
    v2 = 0x656764457377656ELL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_2197E0678()
{
  v0 = sub_219BDBD34();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  sub_219BDB154();
  v5 = MEMORY[0x277D84F90];
  v6 = sub_2194AE584(MEMORY[0x277D84F90]);
  v7 = sub_2194AE5A0(v5);
  type metadata accessor for TodayConfigData();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = 0;
  result = (*(v2 + 32))(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v4, v1);
  *(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) = v6;
  *(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) = v7;
  *(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles) = v5;
  qword_27CCD8EF0 = v8;
  return result;
}

void *sub_2197E0818(void *a1)
{
  v4 = *v1;
  v107 = v2;
  v108 = v4;
  sub_2197E225C(0, &qword_280EE67A0, &qword_280E8E680);
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x28223BE20](v5);
  v99 = &v88 - v6;
  sub_2197E225C(0, &qword_280EE6748, &qword_280E8E260);
  v102 = v7;
  v105 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v104 = &v88 - v8;
  v9 = sub_219BDBD34();
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197E22B4(0, &unk_280EE9DC8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v88 - v12;
  v14 = sub_219BDB184();
  v103 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197E267C(0, &qword_280E8CF80, MEMORY[0x277D844C8]);
  v18 = v17;
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v88 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E2318();
  v21 = v107;
  sub_219BF7B34();
  if (v21)
  {
    goto LABEL_3;
  }

  v96 = v16;
  v97 = v13;
  v107 = v14;
  LOBYTE(v111) = 0;
  v22 = sub_219BF76F4();
  v23 = v18;
  v24 = v109;
  *(v109 + 16) = v22;
  *(v24 + 24) = v25;
  LOBYTE(v110) = 1;
  sub_2197E236C();
  sub_219BF76E4();
  *(v109 + 32) = v111 & 1;
  LOBYTE(v111) = 2;
  sub_2197E2A4C(&unk_280EE9DD8, MEMORY[0x277CC88A8]);
  v26 = v97;
  v27 = v107;
  sub_219BF76E4();
  v94 = v20;
  v95 = v23;
  v30 = v103;
  v31 = *(v103 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    sub_219BDBD24();
    v32 = v96;
    v33 = v97;
    sub_219BDB154();
    if (v31(v33, 1, v27) != 1)
    {
      sub_218BACB50(v33);
    }
  }

  else
  {
    v32 = v96;
    (*(v30 + 32))(v96, v26, v27);
  }

  (*(v30 + 32))(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v32, v27);
  sub_2197E2734(0, &qword_280E8FBD0, MEMORY[0x277D834F8]);
  LOBYTE(v110) = 3;
  sub_2197E23C0();
  sub_219BF7734();
  v89 = 0;
  v88 = a1;
  v34 = v111;
  sub_2197E2478(0, &qword_280E8D0C8, &qword_280E8E260);
  result = sub_219BF7584();
  v35 = 0;
  v37 = v34 + 64;
  v36 = *(v34 + 8);
  v96 = v34;
  v38 = 1 << v34[32];
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v36;
  v41 = (v38 + 63) >> 6;
  v43 = v104;
  v42 = v105;
  v92 = (v105 + 8);
  v93 = (v105 + 16);
  v90 = result;
  v91 = result + 8;
  if (v40)
  {
    while (1)
    {
      v44 = __clz(__rbit64(v40));
      v97 = (v40 - 1) & v40;
LABEL_18:
      v47 = v44 | (v35 << 6);
      v48 = *(v96 + 7);
      v49 = (*(v96 + 6) + 16 * v47);
      v50 = v49[1];
      v98 = *v49;
      v51 = v102;
      (*(v42 + 16))(v43, v48 + *(v42 + 72) * v47, v102);

      sub_219BE3384();
      v42 = v105;
      (*(v105 + 8))(v43, v51);
      result = v90;
      *(v91 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v52 = (result[6] + 16 * v47);
      *v52 = v98;
      v52[1] = v50;
      *(result[7] + 8 * v47) = v110;
      v53 = result[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        break;
      }

      result[2] = v55;
      v27 = v107;
      v43 = v104;
      v40 = v97;
      if (!v97)
      {
        goto LABEL_13;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

LABEL_13:
  v45 = v35;
  while (1)
  {
    v35 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v35 >= v41)
    {
      break;
    }

    v46 = *&v37[8 * v35];
    ++v45;
    if (v46)
    {
      v44 = __clz(__rbit64(v46));
      v97 = (v46 - 1) & v46;
      goto LABEL_18;
    }
  }

  v56 = result;

  *(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) = v56;
  sub_2197E24E0(0, &qword_280E8FBF0, MEMORY[0x277D834F8]);
  LOBYTE(v110) = 4;
  sub_2197E2568();
  v57 = v95;
  v58 = v94;
  v59 = v89;
  v60 = v89;
  sub_219BF7734();
  if (!v60)
  {
    v62 = v111;
    sub_2197E2478(0, &unk_280E8D110, &qword_280E8E680);
    result = sub_219BF7584();
    v63 = result;
    v64 = 0;
    v65 = v62 + 64;
    v66 = 1 << v62[32];
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v62 + 8);
    v69 = (v66 + 63) >> 6;
    v71 = v99;
    v70 = v100;
    v97 = v100 + 16;
    v98 = v62;
    v96 = (v100 + 8);
    v92 = result;
    v93 = result + 8;
    v72 = v101;
    if (v68)
    {
      do
      {
        v73 = __clz(__rbit64(v68));
        v102 = (v68 - 1) & v68;
LABEL_32:
        v76 = v73 | (v64 << 6);
        v104 = (16 * v76);
        v77 = *(v98 + 7);
        v78 = (*(v98 + 6) + 16 * v76);
        v79 = v78[1];
        v105 = *v78;
        v80 = v70;
        (*(v70 + 16))(v71, v77 + *(v70 + 72) * v76, v72);

        sub_219BE3384();
        v72 = v101;
        result = (*(v80 + 8))(v71, v101);
        v63 = v92;
        *(v93 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
        v81 = &v104[v63[6]];
        *v81 = v105;
        *(v81 + 1) = v79;
        *(v63[7] + 8 * v76) = v110;
        v82 = v63[2];
        v54 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v54)
        {
          goto LABEL_45;
        }

        v63[2] = v83;
        v68 = v102;
        v71 = v99;
        v70 = v100;
      }

      while (v102);
    }

    v74 = v64;
    while (1)
    {
      v64 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v64 >= v69)
      {

        *(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) = v63;
        sub_2197E22B4(0, &unk_280E8F470, type metadata accessor for TodayLocalNewsArticle, MEMORY[0x277D83940]);
        LOBYTE(v110) = 5;
        sub_2197E2988(&qword_280E8F458, &qword_280EE2E00);
        v85 = v94;
        v84 = v95;
        sub_219BF76E4();
        if (v111)
        {
          v87 = v111;
        }

        else
        {
          v87 = MEMORY[0x277D84F90];
        }

        (*(v106 + 8))(v85, v84);
        *(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles) = v87;
        v28 = v88;
        goto LABEL_4;
      }

      v75 = *&v65[8 * v64];
      ++v74;
      if (v75)
      {
        v73 = __clz(__rbit64(v75));
        v102 = (v75 - 1) & v75;
        goto LABEL_32;
      }
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  (*(v106 + 8))(v58, v57);
  a1 = v88;
  v61 = v103;
  v86 = v109;

  (*(v61 + 8))(v86 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v27);
  if (!v59)
  {
  }

LABEL_3:
  swift_deallocPartialClassInstance();
  v28 = a1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v109;
}

uint64_t sub_2197E1460(void *a1)
{
  v2 = v1;
  sub_2197E225C(0, &qword_280EE67A0, &qword_280E8E680);
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x28223BE20](v4);
  v75 = &v66 - v6;
  sub_2197E225C(0, &qword_280EE6748, &qword_280E8E260);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - v9;
  sub_2197E267C(0, &qword_280E8C658, MEMORY[0x277D84538]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E2318();
  sub_219BF7B44();
  LOBYTE(v81) = 0;
  v16 = v80;
  sub_219BF77F4();
  if (v16)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v80 = v10;
  LOBYTE(v81) = *(v2 + 32);
  v82 = 1;
  sub_2197E26E0();
  sub_219BF7834();
  LOBYTE(v81) = 2;
  sub_219BDB184();
  sub_2197E2A4C(&qword_280EE9DE8, MEMORY[0x277CC88A8]);
  sub_219BF7834();
  v66 = v15;
  v67 = v12;
  v68 = 0;
  v69 = v2;
  v70 = v13;
  v18 = *(v2 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
  sub_2197E2734(0, &qword_280E8D310, MEMORY[0x277D84460]);
  result = sub_219BF7584();
  v19 = result;
  v20 = 0;
  v22 = v18 + 64;
  v21 = *(v18 + 64);
  v72 = v18;
  v73 = result;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v27 = result + 64;
  v71 = v79 + 32;
  if ((v24 & v21) != 0)
  {
    do
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_13:
      v31 = v28 | (v20 << 6);
      v32 = (*(v72 + 48) + 16 * v31);
      v33 = v32[1];
      v74 = *v32;
      sub_2186D6710(0, &qword_280E8E260);

      swift_unknownObjectRetain();
      v34 = v80;
      sub_219BE3414();
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v35 = (*(v73 + 48) + 16 * v31);
      v19 = v73;
      *v35 = v74;
      v35[1] = v33;
      result = (*(v79 + 32))(*(v19 + 56) + *(v79 + 72) * v31, v34, v78);
      v36 = *(v19 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      *(v19 + 16) = v38;
    }

    while (v25);
  }

  v29 = v20;
  while (1)
  {
    v20 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= v26)
    {
      break;
    }

    v30 = *(v22 + 8 * v20);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v25 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  v81 = v19;
  v82 = 3;
  sub_2197E2734(0, &qword_280E8FBD0, MEMORY[0x277D834F8]);
  sub_2197E27BC();
  v39 = v67;
  v40 = v68;
  v41 = v66;
  sub_219BF7834();
  if (v40)
  {

    return (*(v70 + 8))(v41, v39);
  }

  v68 = 0;

  v42 = v69;
  v43 = *(v69 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
  sub_2197E24E0(0, &qword_280E8D318, MEMORY[0x277D84460]);
  result = sub_219BF7584();
  v44 = result;
  v45 = 0;
  v47 = v43 + 64;
  v46 = *(v43 + 64);
  v79 = v43;
  v48 = 1 << *(v43 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46;
  v51 = (v48 + 63) >> 6;
  v78 = result + 64;
  v74 = v77 + 32;
  v52 = v70;
  if ((v49 & v46) == 0)
  {
LABEL_22:
    v54 = v45;
    while (1)
    {
      v45 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_34;
      }

      if (v45 >= v51)
      {
        v81 = v44;
        v82 = 4;
        sub_2197E24E0(0, &qword_280E8FBF0, MEMORY[0x277D834F8]);
        sub_2197E28D0();
        v63 = v67;
        v64 = v68;
        v65 = v66;
        sub_219BF7834();

        if (!v64)
        {
          v81 = *(v42 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);
          v82 = 5;
          sub_2197E22B4(0, &unk_280E8F470, type metadata accessor for TodayLocalNewsArticle, MEMORY[0x277D83940]);
          sub_2197E2988(&unk_280E8F460, qword_280EE2E08);
          sub_219BF7834();
        }

        return (*(v52 + 8))(v65, v63);
      }

      v55 = *(v47 + 8 * v45);
      ++v54;
      if (v55)
      {
        v53 = __clz(__rbit64(v55));
        v50 = (v55 - 1) & v55;
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v53 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
LABEL_27:
    v56 = v53 | (v45 << 6);
    v57 = (*(v79 + 48) + 16 * v56);
    v58 = v57[1];
    v80 = *v57;
    sub_2186D6710(0, &qword_280E8E680);

    swift_unknownObjectRetain();
    v59 = v75;
    sub_219BE3404();
    *(v78 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v60 = (v44[6] + 16 * v56);
    *v60 = v80;
    v60[1] = v58;
    result = (*(v77 + 32))(v44[7] + *(v77 + 72) * v56, v59, v76);
    v61 = v44[2];
    v37 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v37)
    {
      break;
    }

    v44[2] = v62;
    v42 = v69;
    v52 = v70;
    if (!v50)
    {
      goto LABEL_22;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2197E1CDC()
{
  sub_219BF5524();
}

uint64_t sub_2197E1DDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2197E2C00();
  *a1 = result;
  return result;
}

void sub_2197E1E0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x444964726F636572;
  v5 = 0xE900000000000073;
  v6 = 0x656E696C64616568;
  v7 = 0xE400000000000000;
  v8 = 1936154996;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000219CD8C40;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656372756F73;
  if (v2 != 1)
  {
    v10 = 0x746E496863746566;
    v9 = 0xED00006C61767265;
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

uint64_t sub_2197E1ED4()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x656E696C64616568;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656372756F73;
  if (v1 != 1)
  {
    v5 = 0x746E496863746566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2197E1F98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2197E2C00();
  *a1 = result;
  return result;
}

uint64_t sub_2197E1FC0(uint64_t a1)
{
  v2 = sub_2197E2318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197E1FFC(uint64_t a1)
{
  v2 = sub_2197E2318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197E2038()
{

  v1 = OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval;
  v2 = sub_219BDB184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2197E2128()
{
  result = qword_27CC1F6E0;
  if (!qword_27CC1F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6E0);
  }

  return result;
}

void *sub_2197E217C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2197E0818(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2197E21F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197E225C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186D6710(255, a3);
    v4 = sub_219BE3474();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2197E22B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2197E2318()
{
  result = qword_280ED93D8[0];
  if (!qword_280ED93D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED93D8);
  }

  return result;
}

unint64_t sub_2197E236C()
{
  result = qword_280ED9390;
  if (!qword_280ED9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9390);
  }

  return result;
}

unint64_t sub_2197E23C0()
{
  result = qword_280E8FBB8;
  if (!qword_280E8FBB8)
  {
    sub_2197E2734(255, &qword_280E8FBD0, MEMORY[0x277D834F8]);
    sub_2197E2874(&unk_280EE6750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBB8);
  }

  return result;
}

void sub_2197E2478(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186D6710(255, a3);
    v4 = sub_219BF75C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2197E24E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_2197E225C(255, &qword_280EE67A0, &qword_280E8E680);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197E2568()
{
  result = qword_280E8FBD8;
  if (!qword_280E8FBD8)
  {
    sub_2197E24E0(255, &qword_280E8FBF0, MEMORY[0x277D834F8]);
    sub_2197E2620(&unk_280EE67B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBD8);
  }

  return result;
}

uint64_t sub_2197E2620(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2197E225C(255, &qword_280EE67A0, &qword_280E8E680);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2197E267C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197E2318();
    v7 = a3(a1, &type metadata for TodayConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197E26E0()
{
  result = qword_280ED93B0;
  if (!qword_280ED93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93B0);
  }

  return result;
}

void sub_2197E2734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_2197E225C(255, &qword_280EE6748, &qword_280E8E260);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197E27BC()
{
  result = qword_280E8FBC8;
  if (!qword_280E8FBC8)
  {
    sub_2197E2734(255, &qword_280E8FBD0, MEMORY[0x277D834F8]);
    sub_2197E2874(&unk_280EE6760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBC8);
  }

  return result;
}

uint64_t sub_2197E2874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2197E225C(255, &qword_280EE6748, &qword_280E8E260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2197E28D0()
{
  result = qword_280E8FBE0;
  if (!qword_280E8FBE0)
  {
    sub_2197E24E0(255, &qword_280E8FBF0, MEMORY[0x277D834F8]);
    sub_2197E2620(&qword_280EE67C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBE0);
  }

  return result;
}

uint64_t sub_2197E2988(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2197E22B4(255, &unk_280E8F470, type metadata accessor for TodayLocalNewsArticle, MEMORY[0x277D83940]);
    sub_2197E2A4C(a2, type metadata accessor for TodayLocalNewsArticle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2197E2A4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2197E2A94()
{
  result = qword_280ED93A0;
  if (!qword_280ED93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93A0);
  }

  return result;
}

unint64_t sub_2197E2AFC()
{
  result = qword_27CC1F6E8;
  if (!qword_27CC1F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6E8);
  }

  return result;
}

unint64_t sub_2197E2B54()
{
  result = qword_280ED93C0;
  if (!qword_280ED93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93C0);
  }

  return result;
}

unint64_t sub_2197E2BAC()
{
  result = qword_280ED93C8;
  if (!qword_280ED93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93C8);
  }

  return result;
}

uint64_t sub_2197E2C00()
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

uint64_t sub_2197E2C4C(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CuratedShortcut(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v21 = MEMORY[0x277D84F90];
    sub_218C34DE0(0, v13, 0);
    v14 = v21;
    v15 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_2197E319C(v15, v8);
      sub_2197E3200(v8, v6, type metadata accessor for ShortcutType);
      sub_2197E3200(v6, v12, type metadata accessor for CuratedShortcut);
      v21 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_218C34DE0(v17 > 1, v18 + 1, 1);
        v14 = v21;
      }

      *(v14 + 16) = v18 + 1;
      sub_2197E3200(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, type metadata accessor for CuratedShortcut);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_2197E2EA0(void *a1, uint64_t a2)
{
  sub_2197E3754(0, &qword_27CC1F728, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E362C();
  sub_219BF7B44();
  v10[1] = a2;
  sub_2197E37B8(0, &qword_27CC1F730, type metadata accessor for ShortcutType, MEMORY[0x277D83940]);
  sub_2197E381C();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2197E304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756374726F6873 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2197E30DC(uint64_t a1)
{
  v2 = sub_2197E362C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197E3118(uint64_t a1)
{
  v2 = sub_2197E362C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197E3154@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2197E3278(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2197E319C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197E3200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197E3278(void *a1)
{
  sub_2197E37B8(0, &qword_27CC1F6F0, sub_2197E3560, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  sub_2197E3754(0, &qword_27CC1F710, MEMORY[0x277D6CE98]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E362C();
  v12 = v11;
  sub_219BF7B04();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2197E3560();
    v14 = v13;
    sub_2197E3680(&qword_27CC1F720, sub_2197E3560);
    sub_219BE2C94();
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v5, 1, v14) == 1)
    {
      sub_2197E36C8(v5);
      v12 = MEMORY[0x277D84F90];
    }

    else
    {
      v12 = sub_219BE1E44();
      (*(v16 + 8))(v5, v14);
    }

    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

void sub_2197E3560()
{
  if (!qword_27CC1F6F8)
  {
    type metadata accessor for ShortcutType();
    sub_2197E3680(&qword_27CC1F700, type metadata accessor for ShortcutType);
    sub_2197E3680(&qword_27CC1F708, type metadata accessor for ShortcutType);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F6F8);
    }
  }
}

unint64_t sub_2197E362C()
{
  result = qword_27CC1F718;
  if (!qword_27CC1F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F718);
  }

  return result;
}

uint64_t sub_2197E3680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197E36C8(uint64_t a1)
{
  sub_2197E37B8(0, &qword_27CC1F6F0, sub_2197E3560, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197E3754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197E362C();
    v7 = a3(a1, &type metadata for ShortcutsCurationResource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2197E37B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2197E381C()
{
  result = qword_27CC1F738;
  if (!qword_27CC1F738)
  {
    sub_2197E37B8(255, &qword_27CC1F730, type metadata accessor for ShortcutType, MEMORY[0x277D83940]);
    sub_2197E3680(&qword_27CC1F708, type metadata accessor for ShortcutType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F738);
  }

  return result;
}

unint64_t sub_2197E3908()
{
  result = qword_27CC1F740;
  if (!qword_27CC1F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F740);
  }

  return result;
}

unint64_t sub_2197E3960()
{
  result = qword_27CC1F748;
  if (!qword_27CC1F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F748);
  }

  return result;
}

unint64_t sub_2197E39B8()
{
  result = qword_27CC1F750;
  if (!qword_27CC1F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F750);
  }

  return result;
}

uint64_t sub_2197E3A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 530))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 529);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2197E3A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 520) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 528) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 530) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 530) = 0;
    }

    if (a2)
    {
      *(result + 529) = -a2;
    }
  }

  return result;
}

uint64_t sub_2197E3B50(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84538];
  sub_2197E4E00(0, &qword_27CC10120, sub_218C659C4, &type metadata for AutocompleteSearchResultItem.CodingKeys, MEMORY[0x277D84538]);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v6;
  sub_2197E4E00(0, &unk_27CC157A0, sub_21906E754, &type metadata for IssueSearchResultItem.CodingKeys, v4);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  sub_2197E4E00(0, &qword_27CC1F770, sub_2197E4D14, &type metadata for SearchResultItem.CodingKeys, v4);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E4D14();
  v44 = v12;
  sub_219BF7B44();
  memcpy(v39, v2, 0x212uLL);
  v13 = sub_218CD47C0(v39);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      nullsub_1(v39);
      v14 = v38;
      v22 = v36;
      sub_219BF77F4();
      if (!v22)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_21906E754();
        sub_219BF7B44();
        v23 = v32;
        sub_219BF77F4();
        (*(v31 + 8))(v9, v23);
        v14 = v38;
      }

      v15 = v44;
    }

    else
    {
      v14 = v38;
      if (v13 == 4)
      {
        v18 = nullsub_1(v39);
        memcpy(v43, v18, sizeof(v43));
        v15 = v44;
        v19 = v36;
        sub_219BF77F4();
        if (!v19)
        {
          sub_218CB360C(a1);
        }
      }

      else
      {
        nullsub_1(v39);
        v15 = v44;
        v26 = v36;
        sub_219BF77F4();
        if (!v26)
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_218C659C4();
          v27 = v33;
          sub_219BF7B44();
          v28 = v35;
          sub_219BF77F4();
          (*(v34 + 8))(v27, v28);
          v14 = v38;
        }
      }
    }
  }

  else if (v13)
  {
    v14 = v38;
    v15 = v44;
    if (v13 == 1)
    {
      v16 = nullsub_1(v39);
      memcpy(v41, v16, sizeof(v41));
      v17 = v36;
      sub_219BF77F4();
      if (!v17)
      {
        sub_2191E8794(a1);
      }
    }

    else
    {
      v24 = nullsub_1(v39);
      memcpy(v42, v24, sizeof(v42));
      v25 = v36;
      sub_219BF77F4();
      if (!v25)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v20 = nullsub_1(v39);
    memcpy(v40, v20, sizeof(v40));
    v14 = v38;
    v15 = v44;
    v21 = v36;
    sub_219BF77F4();
    if (!v21)
    {
LABEL_18:
      sub_2199ED084(a1);
    }
  }

  return (*(v37 + 8))(v15, v14);
}

uint64_t sub_2197E40FC()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197E4170()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197E41C4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2197E4254@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2197E42AC(uint64_t a1)
{
  v2 = sub_2197E4D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197E42E8(uint64_t a1)
{
  v2 = sub_2197E4D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197E4338()
{
  sub_219BF5524();
}

uint64_t sub_2197E442C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2197E503C();
  *a1 = result;
  return result;
}

void sub_2197E445C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C656E6E616843;
  v5 = 0xE500000000000000;
  v6 = 0x6575737349;
  v7 = 0xE600000000000000;
  v8 = 0x657069636552;
  if (v2 != 4)
  {
    v8 = 0x706D6F636F747541;
    v7 = 0xEC0000006574656CLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656C6369747241;
  if (v2 != 1)
  {
    v10 = 0x6369706F54;
    v9 = 0xE500000000000000;
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

void *sub_2197E4578@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2197E45DC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x212uLL);
  }

  return result;
}

void *sub_2197E45DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2197E4E00(0, &qword_27CC10118, sub_218C659C4, &type metadata for AutocompleteSearchResultItem.CodingKeys, MEMORY[0x277D844C8]);
  v36 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - v5;
  sub_2197E4E00(0, &qword_27CC15798, sub_21906E754, &type metadata for IssueSearchResultItem.CodingKeys, v3);
  v34 = v6;
  v31 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  sub_2197E4E00(0, &qword_27CC1F758, sub_2197E4D14, &type metadata for SearchResultItem.CodingKeys, v3);
  v10 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2197E4D14();
  v14 = v38;
  sub_219BF7B34();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v16 = v34;
  v15 = v35;
  v17 = v36;
  sub_2197E4D68();
  sub_219BF7734();
  if (v48 <= 2u)
  {
    if (v48)
    {
      v19 = v33;
      v20 = v37;
      v21 = v39;
      if (v48 == 1)
      {
        sub_218718690(v39, v41);
        sub_2191E8B08(v41, v45);
        memcpy(v40, v45, 0x211uLL);
        (*(v20 + 8))(v12, v10);
        memcpy(v42, v40, 0x211uLL);
        sub_2197E4DEC(v42);
      }

      else
      {
        sub_218718690(v39, v41);
        sub_2199EDA28(v41, v46);
        memcpy(v40, v46, 0x158uLL);
        (*(v20 + 8))(v12, v10);
        memcpy(v42, v40, 0x158uLL);
        sub_2197E4DE0(v42);
      }
    }

    else
    {
      v21 = v39;
      sub_218718690(v39, v41);
      sub_2199EDA28(v41, v44);
      v19 = v33;
      memcpy(v40, v44, 0x158uLL);
      (*(v37 + 8))(v12, v10);
      memcpy(v42, v40, 0x158uLL);
      sub_2197E4DF8(v42);
    }

    memcpy(v43, v42, sizeof(v43));
    v23 = v21;
    goto LABEL_18;
  }

  if (v48 == 3)
  {
    v38 = v10;
    sub_218718690(v39, v40);
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_21906E754();
    sub_219BF7B34();
    v24 = sub_219BF76F4();
    v26 = v25;
    (*(v31 + 8))(v8, v16);
    (*(v37 + 8))(v12, v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v42[0] = v24;
    v42[1] = v26;
    sub_2197E4DD4(v42);
LABEL_16:
    memcpy(v43, v42, sizeof(v43));
    v23 = v39;
    goto LABEL_17;
  }

  if (v48 != 4)
  {
    v34 = v12;
    v38 = v10;
    sub_218718690(v39, v40);
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_218C659C4();
    sub_219BF7B34();
    v27 = sub_219BF76F4();
    v29 = v28;
    (*(v32 + 8))(v15, v17);
    (*(v37 + 8))(v34, v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v42[0] = v27;
    v42[1] = v29;
    sub_2197E4DBC(v42);
    goto LABEL_16;
  }

  v22 = v39;
  sub_218718690(v39, v41);
  sub_218CB3BD0(v41, v47);
  memcpy(v40, v47, 0x160uLL);
  (*(v37 + 8))(v12, v10);
  memcpy(v42, v40, 0x160uLL);
  sub_2197E4DC8(v42);
  memcpy(v43, v42, sizeof(v43));
  v23 = v22;
LABEL_17:
  v19 = v33;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v23);
  return memcpy(v19, v43, 0x212uLL);
}

unint64_t sub_2197E4D14()
{
  result = qword_27CC1F760;
  if (!qword_27CC1F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F760);
  }

  return result;
}

unint64_t sub_2197E4D68()
{
  result = qword_27CC1F768;
  if (!qword_27CC1F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F768);
  }

  return result;
}

void sub_2197E4E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2197E4E8C()
{
  result = qword_27CC1F778;
  if (!qword_27CC1F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F778);
  }

  return result;
}

unint64_t sub_2197E4EE4()
{
  result = qword_27CC1F780;
  if (!qword_27CC1F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F780);
  }

  return result;
}

unint64_t sub_2197E4F3C()
{
  result = qword_27CC1F788;
  if (!qword_27CC1F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F788);
  }

  return result;
}

unint64_t sub_2197E4F94()
{
  result = qword_27CC1F790;
  if (!qword_27CC1F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F790);
  }

  return result;
}

unint64_t sub_2197E4FE8()
{
  result = qword_27CC1F798;
  if (!qword_27CC1F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F798);
  }

  return result;
}

uint64_t sub_2197E503C()
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

uint64_t sub_2197E508C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v1 = off_282AA1F18[0];
        type metadata accessor for AudioPlaylistFeedViewController();
        v1();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2197E5164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for AudioPlaylistFeedModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for AudioPlaylistFeedModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E5214(void *a1)
{
  v2 = sub_219BDBD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187144E0();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    sub_219BDBD54();
    v8 = sub_219BDBD44();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v11 = qword_280E8D8A0;
    v12 = *MEMORY[0x277D30B60];
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61768;
    v15[2] = v10;
    v15[3] = v7;
    v15[1] = v8;
    sub_2197EBAE0();
    swift_allocObject();
    v14 = v13;
    return sub_219BEF444();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E53B0()
{
  type metadata accessor for AudioPlaylistFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1F7A0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7A8);
  sub_219BE2914();
  type metadata accessor for AudioPlaylistFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1F7B0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7B8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7C0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7C8);
  sub_219BE2914();

  sub_218987004();
  sub_219BE2904();

  type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC0D2B8);
  sub_219BE2914();

  sub_2197EA478();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197EAD60();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2197EA564();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE4510);
  sub_219BE2914();
  sub_219BE19D4();

  type metadata accessor for AudioPlaylistFeedAnimator();
  sub_219BE2904();

  sub_2197EAE9C();
  sub_219BE2904();

  sub_2197EA9EC();
  sub_219BE2904();

  type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2197EAF54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2197EA6A0();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AC24(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_2197EA81C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197EAAA4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197EAC24();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2197EB090();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2197EB124();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_2197E5E24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7A0);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7B0);
  result = sub_219BE1E34();
  v3 = v20;
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAF54();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v18 = type metadata accessor for AudioPlaylistFeedStyler();
    v19 = &off_282A72F48;
    v17[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for AudioPlaylistFeedViewController());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_2197EB6B0(*v14, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2197E60E4@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_218795E10(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for AudioPlaylistFeedStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A72F48;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E6344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC12D0(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0);
  result = sub_219BE1E34();
  if (v10)
  {
    v7 = type metadata accessor for AudioPlaylistFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v13, v8 + 24);
    *(v8 + 64) = v5;
    sub_2186CB1F0(&v11, v8 + 72);
    *(v8 + 112) = v6;
    result = sub_2186CB1F0(&v9, v8 + 120);
    a2[3] = v7;
    a2[4] = &off_282A544D0;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2197E653C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2197E65BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7B8);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7A8);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7C0);
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
    v15 = sub_2197EB8CC(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A6B318;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2197E686C(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7C8);
  sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA478();
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC12D0(0, &unk_280E90700, sub_2186F17B0, &type metadata for AudioFeedOfflineModel, MEMORY[0x277D33538]);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2197EA344(v11, v12, v5, v7, v8);
    swift_unknownObjectRelease();

    *a2 = v10;
    a2[1] = &off_282A46D70;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2197E6A24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB9190);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v24 = v6;
  v25 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v28)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x28223BE20](v9);
    v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for AudioSuggestionsStore();
    v26[3] = v14;
    v26[4] = &off_282A86138;
    v26[0] = v13;
    v15 = type metadata accessor for AudioPlaylistFeedTracker();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v26, v14);
    MEMORY[0x28223BE20](v17);
    v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[12] = v14;
    v16[13] = &off_282A86138;
    v16[9] = v21;
    v16[2] = v5;
    sub_2186CB1F0(&v31, (v16 + 3));
    v16[8] = v24;
    v16[14] = v7;
    v16[15] = v8;
    sub_2186CB1F0(&v27, (v16 + 16));
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    v22 = v25;
    v25[3] = v15;
    v22[4] = &off_282A97220;
    *v22 = v16;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2197E6E30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187144E0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F750();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v32 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  v11 = v40;
  if (!v40)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v31 = a2;
  v30 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC89E0);
  result = sub_219BE1E34();
  if (v39)
  {
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v29[1] = v29;
    MEMORY[0x28223BE20](v13);
    v15 = (v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v18 = type metadata accessor for AudioPlaylistStore();
    v37[3] = v18;
    v37[4] = &off_282A40D18;
    v37[0] = v17;
    type metadata accessor for AudioPlaylistFeedDataManager();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v37, v18);
    v29[0] = v29;
    MEMORY[0x28223BE20](v20);
    v22 = (v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v35 = v18;
    v36 = &off_282A40D18;
    v34[0] = v24;
    v19[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186C6148(0, &qword_280E8E3B0);
    v25 = v32;
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v32);
    v26 = sub_219BF66E4();
    (*(v5 + 8))(v7, v25);
    v19[14] = v26;
    v19[4] = v9;
    v19[5] = v10;
    v27 = v30;
    v19[6] = v11;
    v19[7] = v27;
    v19[8] = v12;
    sub_218718690(v34, (v19 + 9));
    __swift_project_boxed_opaque_existential_1(v34, v35);
    swift_allocObject();
    swift_weakInit();

    swift_unknownObjectRetain();

    sub_219BE20F4();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v37);
    result = __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = v31;
    *v31 = v19;
    v28[1] = &off_282A82840;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2197E73BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0D2B8);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for AudioPlaylistFeedSectionFactory();
    v14[3] = v7;
    v14[4] = &off_282A4E268;
    v14[0] = v6;
    type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A4E268;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E75CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for HeadlineModelFactory();
    v17[3] = v9;
    v17[4] = &off_282A8B8E8;
    v17[0] = v8;
    v10 = type metadata accessor for AudioPlaylistFeedSectionFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A8B8E8;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A4E268;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E77F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197EA564();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2197EA478();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E78D8(uint64_t a1, void *a2)
{
  sub_2197EB680(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_2197EB530(0, &qword_27CC1F8F8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218795E10(&qword_27CC1F900, sub_2197EB680);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EAD60();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218795E10(&qword_27CC1F908, sub_2197EAD60);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E7A70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA9EC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAE9C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_2197EAD60();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2197E7C78(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2197E7CBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4510);
  result = sub_219BE1DF4();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    sub_2197EA564();
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2197E7E24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE8904();
  swift_allocObject();
  result = sub_219BE88F4();
  v4 = MEMORY[0x277D6E048];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2197E7E7C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedAnimator();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218795E10(&qword_27CC0D300, type metadata accessor for AudioPlaylistFeedAnimator);
    sub_219BE9344();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E7F68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197EA6A0();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for AudioPlaylistFeedAnimator();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
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

uint64_t sub_2197E8074(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AC24(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
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

uint64_t sub_2197E8160(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EB090();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218795E10(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2197EAF54();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2197E8460(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218795E10(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70);
  result = sub_219BE1E34();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2197EA9EC();
    result = sub_219BE1E24();
    if (result)
    {
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_219BF35C4();
      swift_allocObject();
      sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E8690()
{
  sub_2197EB4BC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EB530(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_219BE86A4();

    v16 = v15[1];
    sub_218987004();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_219BE7B94();

    v10 = sub_2197266D4();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0xF000000000000007;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_219BE86A4();

    v15[0] = v16;
    sub_218987004();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_219BE7B94();

    (*(v5 + 56))(v2, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v2, 1, 1, v4);
  }

  sub_219BE6684();
  type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  type metadata accessor for AudioPlaylistFeedModel();
  sub_218795E10(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218795E10(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
  sub_219BF44D4();
  sub_2197EB624(v2);
  type metadata accessor for AudioPlaylistFeedServiceConfig();
  sub_218795E10(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
  v13 = sub_219BE6624();

  sub_21885AB78(v10);
  return v13;
}

uint64_t sub_2197E8A68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AC24(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE73A0);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(sub_219BE8E74());
      return sub_219BE8E64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E8BA0(void *a1)
{
  v2 = sub_219BE7AA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE8E74();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA81C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAAA4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAC24();
  result = sub_219BE1E24();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6DC38], v2);
    sub_2197EA6A0();
    swift_allocObject();
    return sub_219BE7BA4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2197E8DAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E8E64()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_2197E8F34(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AC24(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E8FFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA9EC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2197EA81C();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2197E9198(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8E74();
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2197E9298(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E936C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA9EC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EB090();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218795E10(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2197EAAA4();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2197E95BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EB124();
  if (sub_219BE1E24())
  {
    sub_218795E10(&qword_27CC1F8E0, sub_2197EB124);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8984();
  sub_219BE1DE4();
  sub_219BE9734();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EAF54();
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_2197E9734(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197EA9EC();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2197EAC24();
      v4 = objc_allocWithZone(v3);
      return sub_219BEA1A4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E97F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedViewController();
  result = sub_219BE1E24();
  if (result)
  {
    return MEMORY[0x21CEC0F50]();
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E9858(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2197E9904(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282AA1EE8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2197E9998(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E9A38(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2197EB418();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2197EB090();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E9C90(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EA9EC();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218795E10(&qword_27CC1F8B0, sub_2197EA9EC);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0);
    sub_219BE1E34();
    sub_2197EB210();
    swift_allocObject();
    sub_219BEFCE4();
    sub_218795E10(&qword_27CC1F8C0, sub_2197EB210);
    sub_219BE8EA4();

    sub_2197EB2E8();
    swift_allocObject();
    sub_219BF0074();
    sub_218795E10(&qword_27CC1F8D0, sub_2197EB2E8);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E9EDC(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EB124();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218795E10(&qword_27CC1F8A8, sub_2197EB124);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197EA018(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218987004();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2197EB124();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197EA12C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197EA1E8(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EAF54();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_218795E10(a3, sub_2197EAF54);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_2197EA29C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAF54();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218795E10(&qword_27CC1F890, sub_2197EAF54);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2197EA344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21879AC24(0, &qword_27CC1F910, type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory, &off_282A9A698, type metadata accessor for AudioPlaylistFeedInteractor);
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[6] = a1;
  v10[7] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[8] = a5;
  *(a1 + 24) = &off_282A46D60;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v11 = a5;

  return v10;
}

void sub_2197EA478()
{
  if (!qword_27CC1F7D0)
  {
    sub_218987004();
    sub_2197EA564();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_27CC1F848, sub_2197EA564);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F7D0);
    }
  }
}

void sub_2197EA564()
{
  if (!qword_27CC1F7D8)
  {
    type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    type metadata accessor for AudioPlaylistFeedModel();
    sub_2197EA6A0();
    sub_218795E10(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    sub_218795E10(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    sub_218795E10(&qword_27CC1F840, sub_2197EA6A0);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F7D8);
    }
  }
}

void sub_2197EA6A0()
{
  if (!qword_27CC1F7E0)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2197EA81C();
    sub_2197EAAA4();
    sub_2197EAC24();
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC1F828, sub_2197EA81C);
    sub_218795E10(&qword_27CC1F830, sub_2197EAAA4);
    sub_218795E10(&qword_27CC1F838, sub_2197EAC24);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F7E0);
    }
  }
}

void sub_2197EA81C()
{
  if (!qword_27CC1F7E8)
  {
    sub_218987004();
    sub_2197EA9EC();
    type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
    type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC);
    sub_218795E10(&qword_27CC1F800, type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider);
    sub_218795E10(&qword_27CC1F808, type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider);
    sub_218795E10(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F7E8);
    }
  }
}

void sub_2197EA9EC()
{
  if (!qword_27CC1F7F0)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel();
    sub_21897F0C8();
    sub_218795E10(&qword_27CC0F6A0, type metadata accessor for AudioPlaylistFeedLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F7F0);
    }
  }
}

void sub_2197EAAA4()
{
  if (!qword_27CC1F810)
  {
    sub_218987004();
    sub_2197EA9EC();
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC);
    sub_218795E10(&qword_27CC1F818, type metadata accessor for AudioPlaylistFeedViewController);
    sub_218795E10(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F810);
    }
  }
}

void sub_2197EAC24()
{
  if (!qword_27CC1F820)
  {
    sub_218987004();
    sub_2197EA9EC();
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC);
    sub_218795E10(&qword_27CC1F818, type metadata accessor for AudioPlaylistFeedViewController);
    v0 = sub_219BEA1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F820);
    }
  }
}

void sub_2197EAD60()
{
  if (!qword_27CC1F850)
  {
    sub_2197EA9EC();
    type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
    sub_2197EAE9C();
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC);
    sub_218795E10(&qword_27CC1F860, type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder);
    sub_218795E10(&qword_27CC1F868, sub_2197EAE9C);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F850);
    }
  }
}

void sub_2197EAE9C()
{
  if (!qword_27CC1F858)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel();
    sub_21897F120();
    sub_218795E10(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F858);
    }
  }
}

void sub_2197EAF54()
{
  if (!qword_27CC1F870)
  {
    sub_218987004();
    sub_2197EA6A0();
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_27CC1F840, sub_2197EA6A0);
    sub_218795E10(&qword_27CC1F818, type metadata accessor for AudioPlaylistFeedViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F870);
    }
  }
}

void sub_2197EB090()
{
  if (!qword_27CC1F878)
  {
    sub_218987004();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F878);
    }
  }
}

void sub_2197EB124()
{
  if (!qword_27CC1F880)
  {
    sub_2197EA6A0();
    sub_218987004();
    sub_218795E10(&qword_27CC1F840, sub_2197EA6A0);
    sub_218795E10(&qword_27CC1F888, sub_218987004);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F880);
    }
  }
}

void sub_2197EB210()
{
  if (!qword_27CC1F8B8)
  {
    sub_218987004();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_27CC1D718, type metadata accessor for AudioPlaylistFeedModel);
    v0 = sub_219BEFCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F8B8);
    }
  }
}

void sub_2197EB2E8()
{
  if (!qword_27CC1F8C8)
  {
    sub_218987004();
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    sub_218795E10(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    sub_218795E10(&qword_27CC1D718, type metadata accessor for AudioPlaylistFeedModel);
    v0 = sub_219BF0084();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F8C8);
    }
  }
}

void sub_2197EB418()
{
  if (!qword_27CC1F8D8)
  {
    sub_218987004();
    sub_218795E10(&qword_27CC11BF0, sub_218987004);
    v0 = sub_219BE8EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F8D8);
    }
  }
}

void sub_2197EB4BC()
{
  if (!qword_27CC1F8E8)
  {
    sub_2197EB530(255, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F8E8);
    }
  }
}

void sub_2197EB530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218795E10(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218795E10(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2197EB624(uint64_t a1)
{
  sub_2197EB4BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2197EB6B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = type metadata accessor for AudioPlaylistFeedStyler();
  v19[4] = &off_282A72F48;
  v19[0] = a1;
  sub_218718690(v19, &a5[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_eventHandler] + 24) = &off_282AA1EF8;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

void *sub_2197EB7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for AudioPlaylistFeedRouter();
  v15[4] = &off_282A544D0;
  v15[0] = a3;
  v14[3] = type metadata accessor for AudioPlaylistFeedTracker();
  v14[4] = &off_282A97220;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A6B2F0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_2197EB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for AudioPlaylistFeedRouter();
  v25 = &off_282A544D0;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A97220;
  v20[0] = a4;
  type metadata accessor for AudioPlaylistFeedEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2197EB7D4(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

void sub_2197EBAE0()
{
  if (!qword_280E91558)
  {
    sub_2187144E0();
    sub_218795E10(&qword_280E926E8, sub_2187144E0);
    v0 = sub_219BEF494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91558);
    }
  }
}

id sub_2197EBBA8@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x6169726F74696465;
  a1[1] = 0xE90000000000006CLL;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

double sub_2197EBCE8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000219D37410;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EBDDC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000219D37590;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EBECC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000219D37490;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EBFB8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD00000000000001ELL;
  *(a1 + 8) = 0x8000000219D37520;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EC0B0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0x6E69776F6C6C6F66;
  *(a1 + 8) = 0xE900000000000067;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

id sub_2197EC19C@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x657469726F766166;
  a1[1] = 0xE900000000000073;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC2D0@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x7374726F7073;
  a1[1] = 0xE600000000000000;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC3FC@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x73656C7A7A7570;
  a1[1] = 0xE700000000000000;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC528@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x77654E6C61636F6CLL;
  a1[1] = 0xE900000000000073;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC65C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  strcpy(a1, "subscription");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v7;

  return v7;
}

id sub_2197EC7A0@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x73676E6974746573;
  a1[1] = 0xE800000000000000;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

double sub_2197EC8C8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0x64656B696C736964;
  *(a1 + 8) = 0xEF6C656E6E616843;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EC9B8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  strcpy(a1, "dislikedTopic");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

id sub_2197ECAA4@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x6974736567677573;
  a1[1] = 0xEA00000000006E6FLL;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197ECBE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x6974736567677573;
  a1[1] = 0xEA00000000006E6FLL;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

uint64_t sub_2197ECD18()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2197ECDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2197ECE94;

  return sub_2192398CC();
}

uint64_t sub_2197ECE94(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2197ECF94, 0, 0);
}

uint64_t sub_2197ECF94()
{
  sub_219BF5BD4();
  *(v0 + 40) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2197ED028, v2, v1);
}

uint64_t sub_2197ED028()
{
  v1 = *(v0 + 32);

  sub_2197ED09C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2197ED09C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_219BE61B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = (*(*(v3 + 88) + 40))(a1, *(v3 + 80));
  sub_218D35F98();
  sub_2197ED644();
  sub_219BE6EF4();
  v8 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    if (Strong)
    {
      (*(v5 + 104))(v7, *MEMORY[0x277D6D518], v4);
      sub_21937D854(v7);
      swift_unknownObjectRelease();
      (*(v5 + 8))(v7, v4);
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *__swift_project_boxed_opaque_existential_1((v10 + 88), *(v10 + 112));
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = a1;

      sub_219BDD154();

      swift_unknownObjectRelease();
    }
  }

  else if (Strong)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D6D510], v4);
    sub_21937D854(v7);
    swift_unknownObjectRelease();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2197ED3AC()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 120));
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 32);
  v7 = (*(v2 + 32) + **(v2 + 32));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_218B0699C;

  return v7(v4, ObjectType, v2);
}

uint64_t sub_2197ED510()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187608D4;

  return sub_2197ECDCC();
}

uint64_t sub_2197ED59C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187609C8;

  return sub_2197ED38C();
}

unint64_t sub_2197ED644()
{
  result = qword_280EE5640;
  if (!qword_280EE5640)
  {
    sub_218D35F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5640);
  }

  return result;
}

uint64_t sub_2197ED6A4(uint64_t a1, uint64_t a2)
{
  v26 = *v2;
  v5 = sub_219BE61B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C72544();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 56);
  v13 = *(v6 + 16);
  v13(v11, a1, v5);
  v13(&v11[v12], a2, v5);
  v14 = *(v6 + 88);
  v15 = v14(&v11[v12], v5);
  v16 = v15;
  v17 = *MEMORY[0x277D6D518];
  if (v15 == *MEMORY[0x277D6D518])
  {
    v18 = v14(v11, v5);
    v19 = *MEMORY[0x277D6D510];
    if (v18 == *MEMORY[0x277D6D510])
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = v27;
        (*(v6 + 104))(v27, v16, v5);
        sub_21937D854(v20);
        swift_unknownObjectRelease();
        v21 = *(v6 + 8);
        v21(v20, v5);
      }

      else
      {
        v21 = *(v6 + 8);
      }

      return (v21)(&v11[v12], v5);
    }

    goto LABEL_8;
  }

  v19 = *MEMORY[0x277D6D510];
  if (v15 != *MEMORY[0x277D6D510])
  {
LABEL_8:
    v24 = v14(v11, v5);
    if (v24 == *MEMORY[0x277D6D520] || v24 == v17 || v24 == v19)
    {
      return (*(v6 + 8))(&v11[v12], v5);
    }

    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v27;
    (*(v6 + 104))(v27, v16, v5);
    sub_21937D854(v22);
    swift_unknownObjectRelease();
    v23 = *(v6 + 8);
    v23(v22, v5);
  }

  else
  {
    v23 = *(v6 + 8);
  }

  v23(&v11[v12], v5);
  return (v23)(v11, v5);
}

uint64_t sub_2197EDA68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_2197EDAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2197EDB64(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v62 = a3;
  sub_218FB8548(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v51 - v6;
  sub_218950928();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v63 = &v51 - v14;
  sub_218A2D984(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v51 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  sub_218FB8548(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v28 = v27;
  MEMORY[0x28223BE20](v27);
  v30 = &v51 - v29;
  v56 = v31;
  v53 = *(v31 + 16);
  v54 = v31 + 16;
  v53(&v51 - v29, a1, v28);
  v57 = v28;
  v58 = a1;
  sub_219BEB354();
  sub_2198D068C(v24);
  v32 = *(v9 + 48);
  if (v32(v24, 1, v8) == 1)
  {
    sub_218B062D0(v24);
    sub_218F83E20(v26, v18);
    v33 = v26;
    if (v32(v18, 1, v8) == 1)
    {
      sub_218B062D0(v18);
      v34 = v57;
    }

    else
    {
      v36 = v52;
      (*(v9 + 32))(v52, v18, v8);
      sub_219BE6944();
      v34 = v57;
      sub_219BEB214();

      (*(v9 + 8))(v36, v8);
    }
  }

  else
  {
    v55 = a2;
    v35 = *(v9 + 32);
    v35(v63, v24, v8);
    sub_218F83E20(v26, v21);
    v33 = v26;
    if (v32(v21, 1, v8) == 1)
    {
      sub_218B062D0(v21);
      sub_2186D57BC(&qword_280EE5760, sub_218950928);
      sub_219BF5DF4();
      sub_219BF5E84();
      v34 = v57;
      if (v65[0] != v64)
      {
        sub_218B0632C();
        sub_219BEB324();
      }

      (*(v9 + 8))(v63, v8);
    }

    else
    {
      v37 = v51;
      v35(v51, v21, v8);
      v38 = v63;
      v34 = v57;
      sub_219BEB234();
      v39 = *(v9 + 8);
      v39(v37, v8);
      v39(v38, v8);
    }

    a2 = v55;
  }

  type metadata accessor for FollowingModel();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D57BC(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v40 = sub_219BE6E54();
  v41 = v59;
  if (v40)
  {
    v42 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A7BB4C();
    v44 = *(v43 + 48);
    v45 = *(v43 + 64);
    v53(v41, v30, v34);
    sub_218718690(v65, &v41[v44]);
    v46 = *MEMORY[0x277D6D868];
    v47 = sub_219BE6DF4();
    (*(*(v47 - 8) + 104))(&v41[v45], v46, v47);
    v42 = MEMORY[0x277D6DF78];
  }

  v49 = v60;
  v48 = v61;
  (*(v60 + 104))(v41, *v42, v61);
  a2(v41);
  (*(v49 + 8))(v41, v48);
  sub_218B062D0(v33);
  (*(v56 + 8))(v30, v34);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_2197EE2C4(uint64_t a1)
{
  v2 = sub_218B12C40();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2197EE304()
{
  result = qword_27CC1F918;
  if (!qword_27CC1F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F918);
  }

  return result;
}

uint64_t sub_2197EE358()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000038;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v5, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C();
  sub_2197EE97C(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v10);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_2197EE97C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2197EE9C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NameLogoMastheadModel();
  return sub_219BE1BA4();
}

uint64_t sub_2197EEAC8()
{
  v5 = type metadata accessor for ChannelsSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v0 = sub_219BEF874();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2187089D4(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = sub_219BEF554();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2186FEEB8();
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_2197EF344(&qword_280EA3A90, type metadata accessor for ChannelsSearchFeedGroupConfigData);
  sub_2197EF344(&qword_280EA3A98, type metadata accessor for ChannelsSearchFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t sub_2197EED8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EF2E0(0, &qword_280E8C9C0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EF28C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_2197EF344(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for ChannelsSearchFeedGroupConfigData() + 20)) = 1;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197EF004(void *a1)
{
  v3 = v1;
  sub_2197EF2E0(0, &qword_27CC1F920, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EF28C();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_2197EF344(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ChannelsSearchFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2197EF1E4(uint64_t a1)
{
  v2 = sub_2197EF28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197EF220(uint64_t a1)
{
  v2 = sub_2197EF28C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2197EF28C()
{
  result = qword_280EA3AB0;
  if (!qword_280EA3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3AB0);
  }

  return result;
}

void sub_2197EF2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197EF28C();
    v7 = a3(a1, &type metadata for ChannelsSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197EF344(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2197EF3A0()
{
  result = qword_27CC1F928;
  if (!qword_27CC1F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F928);
  }

  return result;
}

unint64_t sub_2197EF3F8()
{
  result = qword_280EA3AA0;
  if (!qword_280EA3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3AA0);
  }

  return result;
}

unint64_t sub_2197EF450()
{
  result = qword_280EA3AA8;
  if (!qword_280EA3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3AA8);
  }

  return result;
}

uint64_t type metadata accessor for SportsManagementDetailModel()
{
  result = qword_27CC1F930;
  if (!qword_27CC1F930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197EF4F0()
{
  result = type metadata accessor for SportsModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TagModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2197EF568()
{
  v1 = v0;
  v2 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsManagementDetailModel();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EFBDC(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = [*(*v7 + 16) identifier];
    v9 = sub_219BF5414();
  }

  else
  {
    sub_218A3A4F8(v7, v4);
    v10 = [*(*&v4[*(v2 + 24)] + 16) identifier];
    v9 = sub_219BF5414();

    sub_2197EFC40(v4, type metadata accessor for SportsModel);
  }

  return v9;
}

uint64_t sub_2197EF6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2197EFB98(&qword_27CC1F958);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2197EF7FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsManagementDetailModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EFBDC(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2197EFC40(v9, type metadata accessor for SportsManagementDetailModel);
    v10 = *MEMORY[0x277D6D5D8];
    v11 = sub_219BE63D4();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }

  else
  {
    sub_218A3A4F8(v9, v6);
    v13 = *(*&v6[*(v4 + 20)] + 16);
    sub_2197EFC40(v6, type metadata accessor for SportsModel);
    v14 = sub_219BE63D4();
    if (v13)
    {
      v15 = MEMORY[0x277D6D5E0];
    }

    else
    {
      v15 = MEMORY[0x277D6D5D8];
    }

    return (*(*(v14 - 8) + 104))(a1, *v15, v14);
  }
}

uint64_t sub_2197EF9D4@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EFBDC(v3, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2197EFC40(v5, type metadata accessor for SportsManagementDetailModel);
    v6 = *MEMORY[0x277D6D580];
    v7 = sub_219BE6244();
    return (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    v9 = *MEMORY[0x277D6D588];
    v10 = sub_219BE6244();
    (*(*(v10 - 8) + 104))(a1, v9, v10);
    return sub_2197EFC40(v5, type metadata accessor for SportsManagementDetailModel);
  }
}

uint64_t sub_2197EFB98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsManagementDetailModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2197EFBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementDetailModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197EFC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197EFCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  sub_2197EFFDC();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 56);
  sub_2197EFBDC(a1, v13);
  sub_2197EFBDC(a2, v13 + v14);
  type metadata accessor for SportsManagementDetailModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v13 + v14);
      v17 = [*(v15 + 16) identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      v21 = [*(v16 + 16) identifier];
      v22 = sub_219BF5414();
      v24 = v23;

      if (v18 == v22 && v20 == v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_219BF78F4();
      }

      return v26 & 1;
    }

LABEL_11:
    sub_2197EFC40(v13 + v14, type metadata accessor for SportsManagementDetailModel);
    v26 = 0;
    return v26 & 1;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2197EFC40(v13, type metadata accessor for SportsModel);
    goto LABEL_11;
  }

  sub_218A3A4F8(v13, v9);
  sub_218A3A4F8(v13 + v14, v7);
  v27 = [*(*&v9[*(v4 + 24)] + 16) identifier];
  v28 = sub_219BF5414();
  v30 = v29;

  v31 = [*(*&v7[*(v4 + 24)] + 16) identifier];
  v32 = sub_219BF5414();
  v34 = v33;

  if (v28 == v32 && v30 == v34)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_219BF78F4();
  }

  sub_2197EFC40(v7, type metadata accessor for SportsModel);
  sub_2197EFC40(v9, type metadata accessor for SportsModel);
  return v26 & 1;
}

void sub_2197EFFDC()
{
  if (!qword_27CC1F968)
  {
    type metadata accessor for SportsManagementDetailModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F968);
    }
  }
}

id sub_2197F0040()
{
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D743F8];
  v4 = v1;
  v5 = [v2 systemFontOfSize:15.0 weight:v3];
  *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v5;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v8 = sub_219BF5204();

  v9 = [v6 initWithString:v7 attributes:v8];

  return v9;
}

id sub_2197F01C0(void *a1)
{
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:20.0];
  v3 = [a1 imageByApplyingSymbolConfiguration_];
  if (!v3)
  {
    v3 = a1;
  }

  v4 = [objc_opt_self() labelColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:2];

  return v5;
}

id sub_2197F029C()
{
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D74418];
  v4 = v1;
  v5 = [v2 systemFontOfSize:13.0 weight:v3];
  v6 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 secondaryLabelColor];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v10;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v13 = sub_219BF5204();

  v14 = [v11 initWithString:v12 attributes:v13];

  return v14;
}

uint64_t sub_2197F0488@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_21872BDF0(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  sub_21872BDF0(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  sub_2197F1734(0, &qword_280E8CF38, MEMORY[0x277D844C8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F1598();
  v14 = v62;
  sub_219BF7B34();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = 0;
  v50 = v11;
  v52 = a1;
  v53 = v8;
  v51 = v5;
  result = sub_219BF7754();
  v16 = result;
  v59 = *(result + 16);
  if (!v59)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v57 = v10;
  v58 = result + 32;
  v55 = result;
  v56 = v13;
  do
  {
    v60 = v18;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = v58 + 32 * v17;
      v21 = *v19;
      v20 = *(v19 + 8);
      v62 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = qword_280ED1F78;

      if (v23 != -1)
      {
        swift_once();
      }

      v61 = v17 + 1;
      v24 = off_280ED1F80;
      if (!*(off_280ED1F80 + 2))
      {
        break;
      }

      sub_219BF7AA4();
      sub_219BF5524();
      sub_219BF7AC4();
      if (!v22)
      {
        MEMORY[0x21CECE850](v62);
      }

      v25 = sub_219BF7AE4();
      v26 = v24 + 56;
      v27 = -1 << v24[32];
      v28 = v25 & ~v27;
      if (((*&v24[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      v30 = *(v24 + 6);
      while (1)
      {
        v31 = v30 + 32 * v28;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *v31 == v21 && *(v31 + 8) == v20;
        if (!v34 && (sub_219BF78F4() & 1) == 0)
        {
          goto LABEL_15;
        }

        if ((v33 & 1) == 0)
        {
          break;
        }

        if (v22)
        {
          goto LABEL_26;
        }

LABEL_15:
        v28 = (v28 + 1) & v29;
        if (((*&v26[(v28 >> 3) & 0xFFFFFFFFFFFFFF8] >> v28) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (v32 == v62)
      {
        v35 = v22;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_15;
      }

LABEL_26:

      v18 = v60;
      v17 = v61;
      v13 = v56;
      v10 = v57;
      v16 = v55;
      if (v61 == v59)
      {
        goto LABEL_35;
      }
    }

LABEL_28:
    v18 = v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    v67 = v18;
    if ((result & 1) == 0)
    {
      result = sub_218C38080(0, *(v18 + 16) + 1, 1);
      v18 = v67;
    }

    v13 = v56;
    v10 = v57;
    v16 = v55;
    v37 = *(v18 + 16);
    v36 = *(v18 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_218C38080((v36 > 1), v37 + 1, 1);
      v18 = v67;
    }

    *(v18 + 16) = v37 + 1;
    v38 = v18 + 32 * v37;
    *(v38 + 32) = v21;
    *(v38 + 40) = v20;
    v17 = v61;
    *(v38 + 48) = v62;
    *(v38 + 56) = v22;
  }

  while (v17 != v59);
LABEL_35:

  MEMORY[0x28223BE20](v39);
  *(&v49 - 2) = v13;
  v40 = v49;
  v41 = sub_218D2A748(MEMORY[0x277D84F98], sub_2197F15EC, (&v49 - 4), v18);

  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
  v63 = 0x7478654E7075;
  v64 = 0xE600000000000000;
  v65 = 0;
  v66 = 1;
  sub_2186F6C50(&qword_280EBC9B0, type metadata accessor for UpNextAudioFeedGroupKnobs);
  v43 = v53;
  sub_219BF76E4();
  v44 = v40;
  if (v40)
  {

    (*(*(AudioFeedGroupKnobs - 8) + 56))(v43, 1, 1, AudioFeedGroupKnobs);
    v44 = 0;
  }

  v46 = v51;
  v45 = v52;
  v47 = type metadata accessor for ForYouAudioFeedGroupKnobs();
  v63 = 0x756F59726F66;
  v64 = 0xE600000000000000;
  v65 = 0;
  v66 = 1;
  sub_2186F6C50(&qword_280EBE7B0, type metadata accessor for ForYouAudioFeedGroupKnobs);
  sub_219BF76E4();
  if (v44)
  {

    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  }

  v48 = v50;
  sub_21872B268(v53, v46, v41, v54);
  (*(v48 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_2197F0B30(uint64_t a1, uint64_t a2)
{
  v20[1] = a1;
  sub_21872BDF0(0, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = type metadata accessor for CuratedAudioFeedGroupKnobs();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_2197F1734(0, &qword_280E8CF38, MEMORY[0x277D844C8]);
  sub_2186F6C50(&qword_280EBBC40, type metadata accessor for CuratedAudioFeedGroupKnobs);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_21872BF04(v8, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_2187355C8(v8, v12, type metadata accessor for CuratedAudioFeedGroupKnobs);
    sub_2197F1608(v12, v6);
    v19(v6, 0, 1, v9);

    sub_2199D6880(v6, v13, v14);
    return sub_2197F166C(v12);
  }
}

uint64_t sub_2197F0DFC(void *a1)
{
  v2 = v1;
  v61 = type metadata accessor for CuratedAudioFeedGroupKnobs();
  v57 = *(v61 - 8);
  v4 = MEMORY[0x28223BE20](v61);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - v6;
  sub_21872BDF0(0, &qword_27CC1F970, sub_2197F16C8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  sub_2197F1734(0, &qword_27CC1F980, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F1598();
  sub_219BF7B44();
  v63 = 0x7478654E7075;
  v64 = 0xE600000000000000;
  v65 = 0;
  v66 = 1;
  type metadata accessor for UpNextAudioFeedGroupKnobs();
  sub_2186F6C50(&qword_27CC1F668, type metadata accessor for UpNextAudioFeedGroupKnobs);
  v18 = v67;
  sub_219BF7834();
  if (v18)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v55 = v10;
  v56 = v12;
  v58 = v15;
  v20 = type metadata accessor for AudioFeedGroupKnobs();
  v63 = 0x756F59726F66;
  v64 = 0xE600000000000000;
  v65 = 0;
  v66 = 1;
  type metadata accessor for ForYouAudioFeedGroupKnobs();
  v59 = v17;
  sub_2186F6C50(&qword_27CC1F988, type metadata accessor for ForYouAudioFeedGroupKnobs);
  sub_219BF7834();
  v67 = 0;
  v21 = *(v2 + *(v20 + 24));
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v53 = v21;

  v27 = 0;
  v54 = v14;
  v28 = v62;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_14:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v32 | (v29 << 6);
      v34 = (*(v53 + 48) + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      sub_2197F1608(*(v53 + 56) + *(v57 + 72) * v33, v28);
      sub_2197F16C8();
      v38 = v37;
      v39 = *(v37 + 48);
      v40 = v55;
      *v55 = v36;
      v40[1] = v35;
      v41 = v28;
      v42 = v40;
      sub_2187355C8(v41, v40 + v39, type metadata accessor for CuratedAudioFeedGroupKnobs);
      (*(*(v38 - 8) + 56))(v42, 0, 1, v38);

      v31 = v29;
LABEL_15:
      v43 = v56;
      sub_2197F1798(v42, v56);
      sub_2197F16C8();
      v44 = (*(*(v38 - 8) + 48))(v43, 1, v38);
      v45 = v58;
      if (v44 == 1)
      {

        return (*(v45 + 8))(v59, v54);
      }

      v27 = v31;
      v46 = v43;
      v47 = *v43;
      v48 = v46[1];
      v49 = v60;
      sub_2187355C8(v46 + *(v38 + 48), v60, type metadata accessor for CuratedAudioFeedGroupKnobs);
      v63 = v47;
      v64 = v48;
      v65 = 0;
      v66 = 1;
      sub_2186F6C50(&qword_27CC10128, type metadata accessor for CuratedAudioFeedGroupKnobs);
      v50 = v54;
      v51 = v67;
      sub_219BF7834();
      v67 = v51;
      if (v51)
      {
        break;
      }

      sub_2197F166C(v49);

      v28 = v62;
      if (!v25)
      {
        goto LABEL_7;
      }
    }

    sub_2197F166C(v49);

    (*(v45 + 8))(v59, v50);
  }

  else
  {
LABEL_7:
    if (v26 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        sub_2197F16C8();
        v38 = v52;
        v42 = v55;
        (*(*(v52 - 8) + 56))(v55, 1, 1, v52);
        v25 = 0;
        goto LABEL_15;
      }

      v25 = *(v22 + 8 * v29);
      ++v27;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2197F14A4()
{
  v0 = sub_2194B4C08(&unk_282A29C68);
  result = swift_arrayDestroy();
  off_280ED1F80 = v0;
  return result;
}

uint64_t sub_2197F14F0(uint64_t a1)
{
  v2 = sub_2197F1598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197F152C(uint64_t a1)
{
  v2 = sub_2197F1598();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2197F1598()
{
  result = qword_280ED1F60;
  if (!qword_280ED1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F60);
  }

  return result;
}

uint64_t sub_2197F1608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197F166C(uint64_t a1)
{
  v2 = type metadata accessor for CuratedAudioFeedGroupKnobs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197F16C8()
{
  if (!qword_27CC1F978)
  {
    type metadata accessor for CuratedAudioFeedGroupKnobs();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F978);
    }
  }
}

void sub_2197F1734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197F1598();
    v7 = a3(a1, &type metadata for AudioFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197F1798(uint64_t a1, uint64_t a2)
{
  sub_21872BDF0(0, &qword_27CC1F970, sub_2197F16C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197F182C()
{
  result = qword_280ED1F68;
  if (!qword_280ED1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F68);
  }

  return result;
}

unint64_t sub_2197F1884()
{
  result = qword_280ED1F50;
  if (!qword_280ED1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F50);
  }

  return result;
}

unint64_t sub_2197F18DC()
{
  result = qword_280ED1F58;
  if (!qword_280ED1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F58);
  }

  return result;
}

uint64_t sub_2197F1934(void *a1)
{
  sub_218C19FB4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UserNotification.IssueData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 notification];
  v17 = [v16 request];

  sub_218C1A090();
  (*(*(v18 - 8) + 56))(v15, 2, 2, v18);
  v19 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v20 = sub_2196575B8(v17, v15);

  sub_218A7A6E8(v20 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v12);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2197F20E8(v12, v9);
    v21 = *v9;
    v22 = *(*v9 + 16);
    if (v22)
    {
      if (v22 == 1)
      {
        v24 = v21[4];
        v23 = v21[5];
        v25 = v21[7];
        v26 = v21[9];
        v27 = qword_280E8D870;

        v39[1] = v25;

        v39[0] = v26;

        if (v27 != -1)
        {
          swift_once();
        }

        sub_219BF61D4();
        sub_2186DDFEC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_219C09BA0;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_2186FC3BC();
        *(v28 + 32) = v24;
        *(v28 + 40) = v23;

        sub_219BE5314();

        v29 = swift_allocObject();
        v30 = MEMORY[0x277D84F90];
        *(v29 + 16) = v24;
        *(v29 + 24) = v23;
        *(v29 + 32) = v30;
        *(v29 + 56) = 0x4000000000000000;
        *v6 = v29 | 0x5000000000000000;
        (*(v4 + 104))(v6, *MEMORY[0x277D6E710], v3);
        sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v31 = sub_219BE3014();

        goto LABEL_17;
      }

      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      sub_219BF61D4();
      sub_219BE5314();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_219C1E930;
      *(v37 + 32) = 2;
      *v6 = v37 | 0x6000000000000006;
      (*(v4 + 104))(v6, *MEMORY[0x277D6E710], v3);
      sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v36 = sub_219BE3014();
    }

    else
    {
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      sub_2197F214C();
      swift_allocError();
      sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v36 = sub_219BE2FF4();
    }

    v31 = v36;

LABEL_17:
    v34 = type metadata accessor for UserNotification.IssueData;
    v35 = v9;
    goto LABEL_18;
  }

  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_219BE5314();
  v32 = sub_219BE8DC4();
  sub_21953BAF0();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D6E2B0], v32);
  sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v31 = sub_219BE2FF4();

  v34 = type metadata accessor for UserNotification.Kind;
  v35 = v12;
LABEL_18:
  sub_2197F21A0(v35, v34);
  return v31;
}

uint64_t sub_2197F20E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotification.IssueData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197F214C()
{
  result = qword_27CC1F990;
  if (!qword_27CC1F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F990);
  }

  return result;
}

uint64_t sub_2197F21A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2197F2214()
{
  result = qword_27CC1F998;
  if (!qword_27CC1F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F998);
  }

  return result;
}

uint64_t sub_2197F2268(void *a1)
{
  sub_2197F2BAC(0, &qword_27CC1F9C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F2A98();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for DateRangeTagFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_2197F2C10(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2197F2430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_219BED8D4();
  v17 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197F2BAC(0, &qword_27CC1F9B8, MEMORY[0x277D844C8]);
  v21 = v6;
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F2A98();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v9;
  v13 = v19;
  v12 = v20;
  v23 = 0;
  *v11 = sub_219BF76F4();
  v11[1] = v14;
  v22 = 1;
  sub_2197F2C10(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v13 + 8))(v8, v21);
  (*(v17 + 32))(v11 + *(v16 + 20), v5, v12);
  sub_2197F2AEC(v11, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2197F2B50(v11);
}

uint64_t sub_2197F2764(uint64_t a1)
{
  v2 = sub_2197F2A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197F27A0(uint64_t a1)
{
  v2 = sub_2197F2A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197F290C(uint64_t a1)
{
  result = sub_2197F2C10(&qword_27CC1A520, type metadata accessor for DateRangeTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2197F2964(void *a1)
{
  a1[1] = sub_2197F2C10(&qword_27CC1F9B0, type metadata accessor for DateRangeTagFeedGroup);
  a1[2] = sub_2197F2C10(&unk_27CC1C710, type metadata accessor for DateRangeTagFeedGroup);
  result = sub_2197F2C10(&unk_27CC1C820, type metadata accessor for DateRangeTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_2197F2A10(uint64_t a1)
{
  v2 = sub_2197F2C10(&qword_27CC1F9B0, type metadata accessor for DateRangeTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2197F2A98()
{
  result = qword_27CC1F9C0;
  if (!qword_27CC1F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9C0);
  }

  return result;
}

uint64_t sub_2197F2AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197F2B50(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197F2BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197F2A98();
    v7 = a3(a1, &type metadata for DateRangeTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197F2C10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2197F2C6C()
{
  result = qword_27CC1F9D0;
  if (!qword_27CC1F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9D0);
  }

  return result;
}

unint64_t sub_2197F2CC4()
{
  result = qword_27CC1F9D8;
  if (!qword_27CC1F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9D8);
  }

  return result;
}

unint64_t sub_2197F2D1C()
{
  result = qword_27CC1F9E0;
  if (!qword_27CC1F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9E0);
  }

  return result;
}

uint64_t sub_2197F2D70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186EDE00(0, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs);
  sub_218A27A84();
  v10 = sub_219BEDCA4();
  if (*(v9 + 16))
  {
    v12 = sub_21870F700(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(v9 + 56);
      v16 = type metadata accessor for CuratedTagFeedGroupKnobs();
      v17 = *(v16 - 8);
      sub_219802CE8(v15 + *(v17 + 72) * v12, v8, type metadata accessor for CuratedTagFeedGroupKnobs);
      v18 = *(v17 + 56);
      v18(v8, 0, 1, v16);
      sub_219802C80(v8, a1, type metadata accessor for CuratedTagFeedGroupKnobs);
      return (v18)(a1, 0, 1, v16);
    }
  }

  else
  {
  }

  v30 = a1;
  v20 = type metadata accessor for CuratedTagFeedGroupKnobs();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v22(v8, 1, 1, v20);
  sub_219BEDD14();
  v23 = *v5;
  v24 = v5[1];

  sub_219802EE4(v5, type metadata accessor for CuratedTagFeedGroupConfigData);
  if (*(v9 + 16))
  {
    v25 = sub_21870F700(v23, v24);
    v27 = v26;

    if (v27)
    {
      sub_219802CE8(*(v9 + 56) + *(v21 + 72) * v25, v30, type metadata accessor for CuratedTagFeedGroupKnobs);
      v28 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = 1;
LABEL_10:
  v22(v30, v28, 1, v20);
  result = (*(v21 + 48))(v8, 1, v20);
  if (result != 1)
  {
    return sub_219802C24(v8, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  }

  return result;
}

uint64_t sub_2197F30F4(uint64_t a1, uint64_t a2)
{
  v20[1] = a1;
  sub_2186EDE00(0, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = type metadata accessor for CuratedTagFeedGroupKnobs();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_219802E10(0, &qword_280E8CF60, MEMORY[0x277D844C8]);
  sub_21877CD38(&qword_280EC2408, type metadata accessor for CuratedTagFeedGroupKnobs);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_219802C24(v8, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_219802C80(v8, v12, type metadata accessor for CuratedTagFeedGroupKnobs);
    sub_219802CE8(v12, v6, type metadata accessor for CuratedTagFeedGroupKnobs);
    v19(v6, 0, 1, v9);

    sub_2199D6A70(v6, v13, v14);
    return sub_219802EE4(v12, type metadata accessor for CuratedTagFeedGroupKnobs);
  }
}

uint64_t sub_2197F33E8(uint64_t a1, uint64_t a2)
{
  v20[1] = a1;
  sub_2186EDE00(0, qword_280EA1A30, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_219802E10(0, &qword_280E8CF60, MEMORY[0x277D844C8]);
  sub_21877CD38(&qword_280EA1A78, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_219802C24(v8, qword_280EA1A30, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_219802C80(v8, v12, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
    sub_219802CE8(v12, v6, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
    v19(v6, 0, 1, v9);

    sub_2199D6C60(v6, v13, v14);
    return sub_219802EE4(v12, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  }
}

uint64_t sub_2197F36DC(void *a1)
{
  v2 = v1;
  v92 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  v88 = *(v92 - 8);
  v4 = MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v93 = &v75 - v6;
  sub_219802D50(0, &qword_27CC1F9E8, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v90 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v89 = (&v75 - v10);
  v11 = type metadata accessor for CuratedTagFeedGroupKnobs();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v85 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v75 - v14;
  sub_219802D50(0, &qword_27CC1F9F0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v75 - v19;
  sub_219802E10(0, &qword_27CC1FA00, MEMORY[0x277D84538]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v75 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219802B2C();
  sub_219BF7B44();
  v94[0] = 0xD000000000000013;
  v94[1] = 0x8000000219CD8970;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PromotedArticleListTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1FA08, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  v26 = v97;
  sub_219BF7834();
  if (v26)
  {
    return (*(v23 + 8))(v25, v22);
  }

  v82 = v20;
  v83 = v18;
  v28 = v93;
  v97 = v23;
  strcpy(v94, "paywall");
  v94[1] = 0xE700000000000000;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PaywallTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC20E50, type metadata accessor for PaywallTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "issueList");
  WORD1(v94[1]) = 0;
  HIDWORD(v94[1]) = -385875968;
  v95 = 0;
  v96 = 1;
  type metadata accessor for IssueListTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC0D128, type metadata accessor for IssueListTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "articleList");
  HIDWORD(v94[1]) = -352321536;
  v95 = 0;
  v96 = 1;
  type metadata accessor for ArticleListTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1A1A0, type metadata accessor for ArticleListTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "channelSection");
  HIBYTE(v94[1]) = -18;
  v95 = 0;
  v96 = 1;
  type metadata accessor for ChannelSectionTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC11C70, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000017;
  v94[1] = 0x8000000219CD89A0;
  v95 = 0;
  v96 = 1;
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC18178, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "sportsScores");
  BYTE5(v94[1]) = 0;
  HIWORD(v94[1]) = -5120;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsScoresTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC13BD8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000015;
  v94[1] = 0x8000000219CD8A20;
  v95 = 0;
  v96 = 1;
  sub_219BF7834();
  strcpy(v94, "sportsLinks");
  HIDWORD(v94[1]) = -352321536;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsLinksTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1B5A8, type metadata accessor for SportsLinksTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0x74537374726F7073;
  v94[1] = 0xEF73676E69646E61;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsStandingsTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1E680, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "sportsBracket");
  HIWORD(v94[1]) = -4864;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsBracketTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC17700, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  v80 = v2;
  v81 = v22;
  v29 = v25;
  sub_219BF7834();
  v94[0] = 0x6F427374726F7073;
  v94[1] = 0xEF7365726F635378;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1DC48, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0x76457374726F7073;
  v94[1] = 0xEF6F666E49746E65;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1FA10, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000013;
  v94[1] = 0x8000000219CD8AA0;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC10A08, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000010;
  v94[1] = 0x8000000219CD8AE0;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1A2C8, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000013;
  v94[1] = 0x8000000219CD8B00;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC0D600, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "mySportsTopic");
  HIWORD(v94[1]) = -4864;
  v95 = 0;
  v96 = 1;
  type metadata accessor for MySportsTopicTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1FA18, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "sportsRecord");
  BYTE5(v94[1]) = 0;
  HIWORD(v94[1]) = -5120;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsRecordTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1FA20, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000010;
  v94[1] = 0x8000000219CD89D0;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsNavigationTagFeedGroupKnobs();
  sub_21877CD38(&unk_27CC16140, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "sportsSchedule");
  HIBYTE(v94[1]) = -18;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC0DA68, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000010;
  v94[1] = 0x8000000219CD89F0;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1B6A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0x61467374726F7073;
  v94[1] = 0xEF73657469726F76;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsFavoritesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1AF50, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "weather");
  v94[1] = 0xE700000000000000;
  v95 = 0;
  v96 = 1;
  type metadata accessor for WeatherTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC0D6E8, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "highlights");
  BYTE3(v94[1]) = 0;
  HIDWORD(v94[1]) = -369098752;
  v95 = 0;
  v96 = 1;
  type metadata accessor for HighlightsTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC23380, type metadata accessor for HighlightsTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0x756F59726F66;
  v94[1] = 0xE600000000000000;
  v95 = 0;
  v96 = 1;
  type metadata accessor for ForYouTagFeedGroupKnobs();
  sub_21877CD38(&unk_27CC0CDC0, type metadata accessor for ForYouTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "recentStories");
  HIWORD(v94[1]) = -4864;
  v95 = 0;
  v96 = 1;
  type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC18CB0, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "dateRange");
  WORD1(v94[1]) = 0;
  HIDWORD(v94[1]) = -385875968;
  v95 = 0;
  v96 = 1;
  type metadata accessor for DateRangeTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1C2A8, type metadata accessor for DateRangeTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000013;
  v94[1] = 0x8000000219CD8C90;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC171F8, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000010;
  v94[1] = 0x8000000219CD8B30;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC155C0, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "puzzleList");
  BYTE3(v94[1]) = 0;
  HIDWORD(v94[1]) = -369098752;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PuzzleListTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC14688, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "puzzleArchive");
  HIWORD(v94[1]) = -4864;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1AF18, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000015;
  v94[1] = 0x8000000219CD8B60;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1FA28, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "puzzleFeatured");
  HIBYTE(v94[1]) = -18;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1CC18, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000011;
  v94[1] = 0x8000000219CD8B90;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1FA30, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000010;
  v94[1] = 0x8000000219CD8BB0;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC112B8, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "affinity");
  BYTE1(v94[1]) = 0;
  WORD1(v94[1]) = 0;
  HIDWORD(v94[1]) = -402653184;
  v95 = 0;
  v96 = 1;
  type metadata accessor for AffinityTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC0DFD0, type metadata accessor for AffinityTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0x65726F736E6F7073;
  v94[1] = 0xEF72656E6E614264;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SponsoredBannerTagFeedGroupKnobs();
  sub_21877CD38(&unk_27CC13098, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "channelRecipes");
  HIBYTE(v94[1]) = -18;
  v95 = 0;
  v96 = 1;
  type metadata accessor for ChannelRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1BDC0, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "forYouRecipes");
  HIWORD(v94[1]) = -4864;
  v95 = 0;
  v96 = 1;
  type metadata accessor for ForYouRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1B960, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "latestRecipes");
  HIWORD(v94[1]) = -4864;
  v95 = 0;
  v96 = 1;
  type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC1A378, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0xD000000000000015;
  v94[1] = 0x8000000219CD8A60;
  v95 = 0;
  v96 = 1;
  type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC12C48, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "savedRecipes");
  BYTE5(v94[1]) = 0;
  HIWORD(v94[1]) = -5120;
  v95 = 0;
  v96 = 1;
  type metadata accessor for SavedRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC14CB0, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  v94[0] = 0x676E69646E657274;
  v94[1] = 0xEF73657069636552;
  v95 = 0;
  v96 = 1;
  type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC10240, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v94, "topicRecipes");
  BYTE5(v94[1]) = 0;
  HIWORD(v94[1]) = -5120;
  v95 = 0;
  v96 = 1;
  type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  sub_21877CD38(&qword_27CC19430, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  sub_219BF7834();
  v79 = 0;
  v30 = *(v80 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs);
  v31 = *(v30 + 64);
  v75 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v77 = (v32 + 63) >> 6;
  v78 = v30;

  v35 = 0;
  if (v34)
  {
    while (1)
    {
      v36 = v35;
LABEL_14:
      v38 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v39 = v38 | (v36 << 6);
      v40 = (*(v78 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      v43 = v84;
      sub_219802CE8(*(v78 + 56) + *(v86 + 72) * v39, v84, type metadata accessor for CuratedTagFeedGroupKnobs);
      sub_219802DA8(0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
      v45 = v44;
      v46 = *(v44 + 48);
      v47 = v83;
      *v83 = v42;
      v47[1] = v41;
      sub_219802C80(v43, v47 + v46, type metadata accessor for CuratedTagFeedGroupKnobs);
      (*(*(v45 - 8) + 56))(v47, 0, 1, v45);

      v76 = v36;
LABEL_16:
      v49 = v82;
      sub_219802E74(v83, v82, &qword_27CC1F9F0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
      sub_219802DA8(0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
      if ((*(*(v45 - 8) + 48))(v49, 1, v45) == 1)
      {
        break;
      }

      v51 = *v82;
      v50 = v82[1];
      sub_219802C80(v82 + *(v45 + 48), v85, type metadata accessor for CuratedTagFeedGroupKnobs);
      v94[0] = v51;
      v94[1] = v50;
      v95 = 0;
      v96 = 1;
      sub_21877CD38(&qword_27CC11D20, type metadata accessor for CuratedTagFeedGroupKnobs);
      v52 = v79;
      sub_219BF7834();
      v79 = v52;
      if (v52)
      {
        sub_219802EE4(v85, type metadata accessor for CuratedTagFeedGroupKnobs);

        (*(v97 + 8))(v29, v81);
      }

      sub_219802EE4(v85, type metadata accessor for CuratedTagFeedGroupKnobs);

      v35 = v76;
      if (!v34)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v77 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v77;
    }

    v76 = v37 - 1;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v77)
      {
        sub_219802DA8(0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
        v45 = v48;
        (*(*(v48 - 8) + 56))(v83, 1, 1, v48);
        v34 = 0;
        goto LABEL_16;
      }

      ++v35;
      v34 = *(v75 + 8 * v36);
      if (v34)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  v53 = *(v80 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs);
  v54 = *(v53 + 64);
  v84 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v54;
  v86 = (v55 + 63) >> 6;
  v87 = v53;

  v58 = 0;
  if (v57)
  {
    while (1)
    {
      v59 = v58;
LABEL_32:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = v61 | (v59 << 6);
      v63 = (*(v87 + 48) + 16 * v62);
      v64 = *v63;
      v65 = v63[1];
      sub_219802CE8(*(v87 + 56) + *(v88 + 72) * v62, v28, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      sub_219802DA8(0, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      v67 = v66;
      v68 = *(v66 + 48);
      v69 = v90;
      *v90 = v64;
      v69[1] = v65;
      sub_219802C80(v28, v69 + v68, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      (*(*(v67 - 8) + 56))(v69, 0, 1, v67);

      v85 = v59;
LABEL_34:
      v71 = v89;
      sub_219802E74(v90, v89, &qword_27CC1F9E8, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      sub_219802DA8(0, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      if ((*(*(v67 - 8) + 48))(v71, 1, v67) == 1)
      {
        break;
      }

      v72 = *v89;
      v73 = v89[1];
      sub_219802C80(v89 + *(v67 + 48), v91, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      v94[0] = v72;
      v94[1] = v73;
      v95 = 0;
      v96 = 1;
      sub_21877CD38(&unk_27CC1A690, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      v74 = v79;
      sub_219BF7834();
      v79 = v74;
      if (v74)
      {
        sub_219802EE4(v91, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);

        (*(v97 + 8))(v29, v81);
      }

      sub_219802EE4(v91, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);

      v58 = v85;
      if (!v57)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    if (v86 <= v58 + 1)
    {
      v60 = v58 + 1;
    }

    else
    {
      v60 = v86;
    }

    v85 = v60 - 1;
    while (1)
    {
      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v59 >= v86)
      {
        sub_219802DA8(0, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        v67 = v70;
        (*(*(v70 - 8) + 56))(v90, 1, 1, v70);
        v57 = 0;
        goto LABEL_34;
      }

      ++v58;
      v57 = *(v84 + 8 * v59);
      if (v57)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  return (*(v97 + 8))(v29, v81);
}

uint64_t sub_2197F5C30()
{
  v0 = sub_2194B4C30(&unk_282A29CC8);
  result = swift_arrayDestroy();
  qword_280ED4D88 = v0;
  return result;
}

uint64_t sub_2197F5C7C(uint64_t a1)
{
  v2 = sub_219802B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197F5CB8(uint64_t a1)
{
  v2 = sub_219802B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197F5CF4()
{
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_promotedArticleListKnobs, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_paywallKnobs, type metadata accessor for PaywallTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_issueListKnobs, type metadata accessor for IssueListTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_articleListKnobs, type metadata accessor for ArticleListTagFeedGroupKnobs);

  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionGroupKnobs, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionDirectoryGroupKnobs, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_mySportsTopicKnobs, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresCondensedKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsStandingsKnobs, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBracketKnobs, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBoxScoresKnobs, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventInfoKnobs, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsInjuryReportsKnobs, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsKeyPlayersKnobs, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventArticlesKnobs, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsRecordKnobs, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsNavigationKnobs, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScheduleKnobs, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsLinksKnobs, type metadata accessor for SportsLinksTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsTopStoriesKnobs, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsFavoritesKnobs, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_weatherKnobs, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_highlightsKnobs, type metadata accessor for HighlightsTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs, type metadata accessor for ForYouTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentStoriesKnobs, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_dateRangeKnobs, type metadata accessor for DateRangeTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsMastheadKnobs, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventTopicKnobs, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);

  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleListKnobs, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleArchiveKnobs, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleContinuePlayingKnobs, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFeaturedKnobs, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFullArchiveKnobs, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleScoreboardKnobs, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_affinityKnobs, type metadata accessor for AffinityTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sponsoredSuperfeedKnobs, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelRecipesKnobs, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouRecipesKnobs, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_latestRecipesKnobs, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentlyViewedRecipesKnobs, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_savedRecipesKnobs, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_trendingRecipesKnobs, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  sub_219802EE4(v0 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_topicRecipesKnobs, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  return v0;
}