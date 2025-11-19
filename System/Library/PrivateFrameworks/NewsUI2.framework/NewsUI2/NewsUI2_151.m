uint64_t sub_219799B5C(uint64_t a1)
{
  v2 = v1;
  v31[3] = a1;
  v3 = sub_219BDDA74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD434();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = v1[12];
  v31[2] = v1[13];
  v31[1] = __swift_project_boxed_opaque_existential_1(v1 + 9, v12);
  v13 = MEMORY[0x277D2FBB0];
  sub_21979A778(0, &qword_27CC1F160, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  sub_219BDDA64();
  aBlock[0] = v14;
  sub_21979A670(&qword_27CC17BA8, 255, MEMORY[0x277D2FBB0]);
  sub_21979A778(0, &qword_27CC19A30, v13, MEMORY[0x277D83940]);
  sub_2193AB7CC();
  sub_219BF7164();
  sub_219BDD734();
  (*(v4 + 8))(v6, v3);
  v15 = sub_21979A01C(v11, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17 = Strong, sub_219BDEC14(), sub_21979A670(&qword_27CC1F168, 255, MEMORY[0x277D30298]), v18 = sub_219BE6024(), v17, !v18))
  {
    __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
    sub_219BDE7B4();
    goto LABEL_6;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_6:

    v21 = v32;
    v29 = v33;
    return (*(v21 + 8))(v11, v29);
  }

  v20 = v19;
  v21 = v32;
  v22 = v31[0];
  (*(v32 + 16))(v31[0], v11, v33);
  v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  v26 = v25 + v23;
  v27 = v33;
  (*(v21 + 32))(v26, v22, v33);
  *(v25 + v24) = v15;
  aBlock[4] = sub_21979A6B8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_170;
  v28 = _Block_copy(aBlock);

  [v20 dismissViewControllerAnimated:1 completion:v28];
  _Block_release(v28);

  v29 = v27;
  return (*(v21 + 8))(v11, v29);
}

uint64_t sub_21979A01C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_219BE0714();
  v31 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = sub_219BE15B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD434();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D2F978])
  {
LABEL_2:
    (*(v14 + 8))(v16, v13);
LABEL_5:
    v19 = *(v32 + 64);

    return v19;
  }

  if (v17 == *MEMORY[0x277D2F968])
  {
    (*(v14 + 96))(v16, v13);
    v18 = sub_219BDB954();
    (*(*(v18 - 8) + 8))(v16, v18);
    goto LABEL_5;
  }

  if (v17 == *MEMORY[0x277D2F960])
  {
    (*(v14 + 96))(v16, v13);
    sub_218DB635C();
    v22 = 48;
  }

  else
  {
    if (v17 != *MEMORY[0x277D2F970])
    {
      if (v17 != *MEMORY[0x277D2F958])
      {
        if (v17 == *MEMORY[0x277D2F950])
        {
          (*(v14 + 96))(v16, v13);

          sub_218DB60E0();
          sub_218838478(&v16[*(v29 + 48)]);
          goto LABEL_5;
        }

        if (v17 != *MEMORY[0x277D2F948] && v17 != *MEMORY[0x277D2F940])
        {
          v19 = *(v32 + 64);
          v30 = *(v14 + 8);

          v30(v16, v13);
          return v19;
        }
      }

      goto LABEL_2;
    }

    (*(v14 + 96))(v16, v13);

    sub_218DB62B4();
    v22 = 64;
  }

  v23 = *(v21 + v22);
  v24 = sub_219BDE294();
  (*(*(v24 - 8) + 8))(&v16[v23], v24);
  (*(v10 + 104))(v12, *MEMORY[0x277D2F4A8], v9);
  v19 = sub_219BDD0F4();

  (*(v10 + 8))(v12, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = sub_219BDEC04();

    if (v27)
    {
      swift_getObjectType();
      sub_219BF6814();
      swift_unknownObjectRelease();
      v28 = v31;
      (*(v31 + 32))(v8, v6, v3);
      sub_21979A670(&qword_280EE8338, 255, MEMORY[0x277D2E728]);
      sub_219BDD1F4();
      (*(v28 + 8))(v8, v3);
    }
  }

  return v19;
}

uint64_t sub_21979A5A0()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_21979A670(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21979A6B8()
{
  sub_219BDD434();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  return sub_219BDE7B4();
}

void sub_21979A778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21979A7DC(void *a1)
{
  sub_21979B3A4(0, &qword_27CC1F1A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21979B290();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_21979B408(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for ChannelSectionTagFeedGroup();
    v9[14] = 1;
    sub_219BEE6F4();
    sub_21979B408(&qword_27CC1F1A8, MEMORY[0x277D320F8]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21979A9EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_219BEE6F4();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BED8D4();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21979B3A4(0, &qword_27CC1F188, MEMORY[0x277D844C8]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21979B290();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v15 = v24;
  v14 = v25;
  v31 = 0;
  sub_21979B408(&unk_280E92630, MEMORY[0x277D31C50]);
  v16 = v26;
  sub_219BF7734();
  v17 = *(v15 + 32);
  v20 = v13;
  v17(v13, v16, v28);
  v30 = 1;
  sub_21979B408(&qword_27CC1F198, MEMORY[0x277D320F8]);
  sub_219BF7734();
  (*(v27 + 8))(v9, v29);
  v18 = v20;
  (*(v22 + 32))(v20 + *(v21 + 20), v5, v14);
  sub_21979B2E4(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21979B348(v18);
}

uint64_t sub_21979AE1C()
{
  if (*v0)
  {
    return 0x43676E69726F6373;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_21979AE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x43676E69726F6373 && a2 == 0xEE00747865746E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21979AF54(uint64_t a1)
{
  v2 = sub_21979B290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21979AF90(uint64_t a1)
{
  v2 = sub_21979B290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21979B0FC(uint64_t a1)
{
  result = sub_21979B408(&unk_27CC1C6A0, type metadata accessor for ChannelSectionTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21979B154(void *a1)
{
  a1[1] = sub_21979B408(&qword_27CC1F180, type metadata accessor for ChannelSectionTagFeedGroup);
  a1[2] = sub_21979B408(&qword_27CC1C7B0, type metadata accessor for ChannelSectionTagFeedGroup);
  result = sub_21979B408(&qword_27CC1C8B8, type metadata accessor for ChannelSectionTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21979B200(uint64_t a1)
{
  v2 = sub_21979B408(&qword_27CC1F180, type metadata accessor for ChannelSectionTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_21979B290()
{
  result = qword_27CC1F190;
  if (!qword_27CC1F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F190);
  }

  return result;
}

uint64_t sub_21979B2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21979B348(uint64_t a1)
{
  v2 = type metadata accessor for ChannelSectionTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21979B3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21979B290();
    v7 = a3(a1, &type metadata for ChannelSectionTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21979B408(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21979B464()
{
  result = qword_27CC1F1B0;
  if (!qword_27CC1F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F1B0);
  }

  return result;
}

unint64_t sub_21979B4BC()
{
  result = qword_27CC1F1B8;
  if (!qword_27CC1F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F1B8);
  }

  return result;
}

unint64_t sub_21979B514()
{
  result = qword_27CC1F1C0;
  if (!qword_27CC1F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F1C0);
  }

  return result;
}

uint64_t sub_21979B568(uint64_t *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a1[19] >= 2)
        {
          v2 = a1[18];
          goto LABEL_22;
        }
      }

      else if (a1[1] >= 2)
      {
        v2 = *a1;
        goto LABEL_22;
      }
    }

    else if (a1[13] >= 2)
    {
      v2 = a1[12];
      goto LABEL_22;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      if (a1[31] >= 2)
      {
        v2 = a1[30];
        goto LABEL_22;
      }
    }

    else if (a1[37] >= 2)
    {
      v2 = a1[36];
      goto LABEL_22;
    }
  }

  else if (a2 == 3)
  {
    if (a1[7] >= 2)
    {
      v2 = a1[6];
LABEL_22:

      return v2;
    }
  }

  else if (a1[25] >= 2)
  {
    v2 = a1[24];
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_21979B660(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a1[19] != 1 && a1[21])
        {
          v2 = a1[20];
          goto LABEL_28;
        }
      }

      else if (a1[1] != 1 && a1[3])
      {
        v2 = a1[2];
        goto LABEL_28;
      }
    }

    else if (a1[13] != 1 && a1[15])
    {
      v2 = a1[14];
      goto LABEL_28;
    }

LABEL_29:

    return 0;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      if (a1[31] != 1 && a1[33])
      {
        v2 = a1[32];
        goto LABEL_28;
      }
    }

    else if (a1[37] != 1 && a1[39])
    {
      v2 = a1[38];
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (a2 != 3)
  {
    if (a1[25] != 1 && a1[27])
    {
      v2 = a1[26];
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (a1[7] == 1 || !a1[9])
  {
    goto LABEL_29;
  }

  v2 = a1[8];
LABEL_28:

  return v2;
}

uint64_t sub_21979B790(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = a1[23];
        v4 = a1[19];
      }

      else
      {
        v3 = a1[5];
        v4 = a1[1];
      }
    }

    else
    {
      v3 = a1[17];
      v4 = a1[13];
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = a1[35];
      v4 = a1[31];
    }

    else
    {
      v3 = a1[41];
      v4 = a1[37];
    }
  }

  else if (a2 == 3)
  {
    v3 = a1[11];
    v4 = a1[7];
  }

  else
  {
    v3 = a1[29];
    v4 = a1[25];
  }

  if (v4 != 1 && v3 != 0)
  {
  }

  return MEMORY[0x277D84F90];
}

void sub_21979B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_218846958;
  v9[3] = v8;
  v9[4] = a5;
  v11[4] = sub_21979FFEC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_218C1CBB4;
  v11[3] = &block_descriptor_171;
  v10 = _Block_copy(v11);

  swift_unknownObjectRetain();

  [a5 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v10);
}

void sub_21979B96C(uint64_t *a1@<X8>)
{
  sub_219BE3204();
  v2 = sub_219BE2E54();
  v3 = sub_219BE3054();

  *a1 = v3;
}

uint64_t sub_21979BA00()
{
  sub_2197A07F0(0, &unk_280EE6E30, &type metadata for SearchEndpointConfigs, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21979BAF0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext + 8);
  if (v3 == 1 || (a3 & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContextManager), *(a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContextManager + 24));
    v6 = off_282A3FFC8[0];
    type metadata accessor for PegasusQueryContextManager();
    return v6();
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext);
    sub_2197A0774();
    swift_allocObject();
    sub_2188382C8(v4, v3);
    return sub_219BE3014();
  }
}

uint64_t sub_21979BBC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext);
  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext);
  v7 = *(a2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext + 8);
  *v5 = *a1;
  v5[1] = v3;
  sub_2188382C8(v4, v3);
  sub_2188398B4(v6, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21979FEB0(0, &qword_27CC1F260, sub_2197A0684, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE30B4();

  return v8;
}

uint64_t sub_21979BCD4(void *a1, char *a2, char a3)
{
  *&a2[OBJC_IVAR____TtC7NewsUI213SearchFetcher_localAreas] = *a1;

  sub_219BE2CF4();

  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = a2;
  v7 = sub_219BE2E54();
  sub_2197A07F0(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  type metadata accessor for SearchFetcher();
  sub_219BE2F94();

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = a3;
  v9 = v6;
  v10 = sub_219BE2E54();
  sub_219BE2F74();

  v11 = sub_219BE31C4();

  return v11;
}

uint64_t sub_21979BED4(void *__src, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x188uLL);
  v12 = __dst[48];
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  memcpy((v13 + 32), __src, 0x180uLL);
  *(v13 + 416) = a4;
  *(v13 + 424) = a5;
  *(v13 + 432) = a6;
  *(v13 + 440) = v12;
  sub_2197A0230(__dst, v20);

  v14 = a2;

  v15 = sub_219BE2E54();
  sub_21873F65C(0);
  type metadata accessor for SearchFetcher();
  sub_219BE31F4();

  v16 = swift_allocObject();
  *(v16 + 16) = sub_2197A057C;
  *(v16 + 24) = v13;

  v17 = sub_219BE2E54();
  sub_219BDB954();
  v18 = sub_219BE2F94();

  return v18;
}

uint64_t sub_21979C094(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a6;
  v106 = a8;
  v103 = a5;
  v104 = a7;
  v114 = a4;
  v113 = sub_219BDBE14();
  v11 = *(v113 - 8);
  v12 = MEMORY[0x28223BE20](v113);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v91 - v14;
  v112 = sub_219BDBE34();
  v15 = *(v112 - 8);
  v16 = MEMORY[0x28223BE20](v112);
  v99 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v91 - v18;
  sub_2197A0594(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v100 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v109 = &v91 - v22;
  v23 = OBJC_IVAR____TtC7NewsUI213SearchFetcher_logger;
  v24 = a2;
  v107 = a2;
  v102 = v23;
  v25 = sub_219BE5414();
  v26 = sub_219BF6214();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    if (a3 < 7u && ((0x73u >> a3) & 1) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = [*(&v24->isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_featureAvailability) useNewsArticleSearch];
    }

    *(v27 + 4) = v28;

    _os_log_impl(&dword_2186C1000, v25, v26, "Using newsArticleSearch: %{BOOL}d", v27, 8u);
    MEMORY[0x21CECF960](v27, -1, -1);
  }

  else
  {

    v25 = v24;
  }

  v29 = *(&v24->isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_localAreas);
  v108 = a1;
  v110 = v24;
  v111 = a3;
  if (v29)
  {
    v30 = v29 & 0xFFFFFFFFFFFFFF8;
    if (v29 >> 62)
    {
      goto LABEL_71;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
    {
      v115 = v15;
      v116 = v11;

      if (!i)
      {
        break;
      }

      v32 = 0;
      v118 = v29 & 0xC000000000000001;
      v33 = MEMORY[0x277D84F90];
      v117 = i;
      while (1)
      {
        if (v118)
        {
          v34 = MEMORY[0x21CECE0F0](v32, v29);
        }

        else
        {
          if (v32 >= *(v30 + 16))
          {
            goto LABEL_66;
          }

          v34 = *(v29 + 8 * v32 + 32);
        }

        v35 = v34;
        v11 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v15 = v30;
        v36 = [v34 regionIds];
        v37 = sub_219BF5924();

        v38 = *(v37 + 16);
        v39 = *(v33 + 2);
        v30 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_67;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v30 > *(v33 + 3) >> 1)
        {
          if (v39 <= v30)
          {
            v41 = v39 + v38;
          }

          else
          {
            v41 = v39;
          }

          v33 = sub_218840D24(isUniquelyReferenced_nonNull_native, v41, 1, v33);
        }

        v30 = v15;
        v42 = v117;
        if (*(v37 + 16))
        {
          if ((*(v33 + 3) >> 1) - *(v33 + 2) < v38)
          {
            goto LABEL_69;
          }

          swift_arrayInitWithCopy();

          if (v38)
          {
            v43 = *(v33 + 2);
            v44 = __OFADD__(v43, v38);
            v45 = v43 + v38;
            if (v44)
            {
              goto LABEL_70;
            }

            *(v33 + 2) = v45;
          }
        }

        else
        {

          if (v38)
          {
            goto LABEL_68;
          }
        }

        ++v32;
        if (v11 == v42)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      ;
    }

    v33 = MEMORY[0x277D84F90];
LABEL_34:

    v24 = v110;
    LOBYTE(a3) = v111;
    v15 = v115;
    v11 = v116;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v46 = sub_21979B790(v114, a3);
  v47 = [*(&v24->isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_bundleSubscriptionProvider) bundleSubscription];
  if (objc_getAssociatedObject(v47, v47 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
  }

  v142 = v131;
  v143 = v132;
  v118 = v46;
  if (!*(&v132 + 1))
  {
    sub_218806FD0(&v142);
    goto LABEL_43;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    v48 = 0;
    v49 = 0;
    goto LABEL_44;
  }

  v48 = v119;
  v49 = [v119 integerValue];
  if (v49 == -1)
  {

    v50 = -314;
    v117 = -1;
    goto LABEL_52;
  }

LABEL_44:
  v117 = v49;
  if (objc_getAssociatedObject(v47, ~v49))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
  }

  v142 = v131;
  v143 = v132;
  if (*(&v132 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v51 = v119;
      v52 = [v51 integerValue];

      v50 = v52 - 314;
      goto LABEL_52;
    }
  }

  else
  {
    sub_218806FD0(&v142);
  }

  v50 = -314;
LABEL_52:
  v53 = [*(&v24->isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_purchaseProvider) purchasedTagIDs];
  v54 = sub_219BF5D44();

  v55 = *(v54 + 16);
  v56 = v109;
  v96 = v50;
  if (v55)
  {
    v95 = sub_21947D1C0(v55, 0);
    v57 = sub_2194ABD64(&v142, v95 + 4, v55, v54);
    sub_21892DE98();
    if (v57 == v55)
    {
      goto LABEL_56;
    }

    __break(1u);
  }

  v95 = MEMORY[0x277D84F90];
LABEL_56:
  v58 = *(&v24->isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_storefrontID);
  v93 = *(&v24[1].isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_storefrontID);
  v94 = v58;

  v59 = v97;
  sub_219BDBDF4();
  v60 = v98;
  sub_219BDBE24();
  v61 = *(v15 + 8);
  v115 = v15 + 8;
  v62 = v61;
  v61(v59, v112);
  sub_219BDBE04();
  v63 = *(v11 + 8);
  v116 = v11 + 8;
  v92 = v63;
  v63(v60, v113);
  v64 = sub_219BDBDA4();
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  if (v66(v56, 1, v64) == 1)
  {
    sub_2187BC8F0(v56, sub_2197A0594);
    v97 = 0;
    v98 = 0;
  }

  else
  {
    v67 = sub_219BDBD94();
    v97 = v68;
    v98 = v67;
    (*(v65 + 8))(v56, v64);
  }

  v69 = v99;
  sub_219BDBDF4();
  v70 = v101;
  sub_219BDBE24();
  v62(v69, v112);
  v71 = v100;
  sub_219BDBE04();
  v92(v70, v113);
  if (v66(v71, 1, v64) == 1)
  {
    sub_2187BC8F0(v71, sub_2197A0594);
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v74 = v71;
    v72 = sub_219BDBD94();
    v73 = v75;
    (*(v65 + 8))(v74, v64);
  }

  v76 = (v96 ^ v117) & 1;
  v77 = *(&v110->isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext);
  v78 = *(&v110[1].isa + OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext);
  sub_219BDC174();
  sub_2188382C8(v77, v78);
  v79 = sub_219BDC164();
  *&v142 = v103;
  *(&v142 + 1) = v105;
  *&v143 = v104;
  *(&v143 + 1) = v106;
  LOBYTE(v144) = v76;
  *(&v144 + 1) = v154[0];
  DWORD1(v144) = *(v154 + 3);
  *(&v144 + 1) = v95;
  LOBYTE(v145) = 0;
  *(&v145 + 1) = *v153;
  DWORD1(v145) = *&v153[3];
  *(&v145 + 1) = v94;
  *&v146 = v93;
  *(&v146 + 1) = v98;
  *&v147 = v97;
  *(&v147 + 1) = v72;
  *&v148 = v73;
  *(&v148 + 1) = v33;
  v149 = 0uLL;
  *&v150 = v77;
  *(&v150 + 1) = v78;
  *&v151 = v79;
  *(&v151 + 1) = v80;
  v152 = v118;

  sub_2197A05C8(&v142, &v131);
  v81 = sub_219BE5414();
  v82 = sub_219BF6214();
  sub_2197A0624(&v142);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v83 = 136642819;
    v127 = v150;
    v128 = v151;
    v129 = v152;
    v130 = v84;
    v123 = v146;
    v124 = v147;
    v125 = v148;
    v126 = v149;
    v119 = v142;
    v120 = v143;
    v121 = v144;
    v122 = v145;
    sub_2197A05C8(&v142, &v131);
    v85 = sub_218CA7594();
    v87 = v86;
    v139 = v127;
    v140 = v128;
    v141 = v129;
    v135 = v123;
    v136 = v124;
    v137 = v125;
    v138 = v126;
    v131 = v119;
    v132 = v120;
    v133 = v121;
    v134 = v122;
    sub_2197A0624(&v131);
    v88 = sub_2186D1058(v85, v87, &v130);

    *(v83 + 4) = v88;
    _os_log_impl(&dword_2186C1000, v81, v82, "Search params: %{sensitive}s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x21CECF960](v84, -1, -1);
    MEMORY[0x21CECF960](v83, -1, -1);
  }

  v89 = sub_21979B568(v114, v111);
  MEMORY[0x21CEB2060](v89);
  v139 = v150;
  v140 = v151;
  v141 = v152;
  v135 = v146;
  v136 = v147;
  v137 = v148;
  v138 = v149;
  v131 = v142;
  v132 = v143;
  v133 = v144;
  v134 = v145;
  sub_218CA6324();
  sub_2197A0624(&v142);
  return sub_219BDB254();
}

uint64_t sub_21979CC64(uint64_t a1)
{
  v44 = a1;
  v43 = sub_219BED184();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDBD64();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v39 = sub_219BF5414();
  v37[1] = v9;
  sub_2197A0104();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  *(inited + 32) = 0x414E2D5050412D58;
  *(inited + 40) = 0xEA0000000000454DLL;
  sub_2197A07F0(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  v45 = xmmword_219C09BA0;
  *(v11 + 16) = xmmword_219C09BA0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  *(inited + 48) = v11;
  strcpy((inited + 56), "X-DEVICE-NAME");
  *(inited + 70) = -4864;
  v12 = swift_allocObject();
  *(v12 + 16) = v45;
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  v15 = [v14 model];

  v16 = sub_219BF5414();
  v18 = v17;

  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000219D10770;
  v19 = swift_allocObject();
  *(v19 + 16) = v45;
  v20 = [v13 currentDevice];
  v21 = [v20 systemVersion];

  v22 = sub_219BF5414();
  v24 = v23;

  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  *(inited + 96) = v19;
  strcpy((inited + 104), "X-REQUEST-ID");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v25 = swift_allocObject();
  *(v25 + 16) = v45;
  sub_219BDBD54();
  v26 = sub_219BDBD44();
  v28 = v27;
  (*(v38 + 8))(v3, v40);
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  *(inited + 120) = v25;
  sub_2194B11A4(inited);
  swift_setDeallocating();
  sub_2197A016C(0, &qword_280E8F730);
  swift_arrayDestroy();
  swift_getObjectType();
  sub_2186C6148(0, &qword_280E8E3B0);
  v29 = v42;
  v30 = v41;
  v31 = v43;
  (*(v42 + 104))(v41, *MEMORY[0x277D851B8], v43);
  v32 = sub_219BF66E4();
  (*(v29 + 8))(v30, v31);
  sub_219BF69B4();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_219BE2E54();
  sub_219BF3B84();
  sub_219BE2F64();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = sub_219BE2E54();
  v35 = sub_219BE2FD4();

  return v35;
}

uint64_t sub_21979D2DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  sub_2197A016C(0, &qword_27CC1FCB0);
  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a3;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = v3;

  v9 = sub_219BE2E54();
  sub_219BDB954();
  sub_219BE2F84();

  v10 = sub_219BE2E54();
  sub_219BF3B84();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = a3;
  v11 = sub_219BE2E54();
  type metadata accessor for SearchResponse(0);
  v12 = sub_219BE2F94();

  return v12;
}

uint64_t sub_21979D4C4(void *a1, char a2)
{

  sub_219BE2CF4();

  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a1;
  v6 = sub_219BE2E54();
  sub_2197A07F0(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  type metadata accessor for SearchFetcher();
  sub_219BE2F94();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a2;
  v8 = v5;
  v9 = sub_219BE2E54();
  sub_219BE2F74();

  v10 = sub_219BE31C4();

  return v10;
}

uint64_t sub_21979D6A4(void *__src, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, sizeof(__dst));
  v10 = __dst[48];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  memcpy((v11 + 24), __src, 0x180uLL);
  *(v11 + 408) = v10;
  *(v11 + 416) = a5;
  *(v11 + 424) = a6;
  sub_2197A0230(__dst, &v17);

  v12 = sub_219BE2E54();
  sub_21873F65C(0);
  type metadata accessor for SearchFetcher();
  sub_219BE31F4();

  v13 = swift_allocObject();
  *(v13 + 16) = sub_2197A021C;
  *(v13 + 24) = v11;

  v14 = sub_219BE2E54();
  sub_219BDB954();
  v15 = sub_219BE2F94();

  return v15;
}

uint64_t sub_21979D84C(uint64_t a1, unsigned __int8 a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v10 = sub_219BDB0F4();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDB224();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v29 - v17;
  v18 = sub_21979B660(a3, a2);
  v36 = a1;
  MEMORY[0x21CEB2060](v18);
  v19 = *(a4 + 16);
  if (v19)
  {
    v20 = a4 + 40;
    v21 = MEMORY[0x277D84F90];
    do
    {

      sub_219BDB1F4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2191F84A0(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_2191F84A0(v22 > 1, v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      (*(v13 + 32))(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v16, v12);
      v20 += 16;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v24 = v30;
  sub_219BDB0C4();
  sub_219BDB0E4();
  sub_219BDB0E4();
  v37 = v31;
  v38 = v32;
  sub_2187F3BD4();
  sub_219BF7044();
  (*(v33 + 8))(v24, v34);
  v25 = v35;
  sub_219BDB1F4();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_2191F84A0(0, v21[2] + 1, 1, v21);
  }

  v27 = v21[2];
  v26 = v21[3];
  if (v27 >= v26 >> 1)
  {
    v21 = sub_2191F84A0(v26 > 1, v27 + 1, 1, v21);
  }

  v21[2] = v27 + 1;
  (*(v13 + 32))(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v27, v25, v12);
  return sub_219BDB254();
}

uint64_t sub_21979DBF8()
{
  v0 = sub_219BF3B64();
  if (v1 >> 60 == 15)
  {
    sub_2197A00B0();
    swift_allocError();
    *v2 = 2;
    return swift_willThrow();
  }

  else
  {
    v4 = v0;
    v5 = v1;
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    type metadata accessor for SearchResponse(0);
    sub_21872CC00(&qword_27CC1F250, type metadata accessor for SearchResponse);
    sub_219BE1974();

    return sub_218822A58(v4, v5);
  }
}

void sub_21979DD18(void (*a1)(void *), uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC7NewsUI213SearchFetcher_localAreas;
    if (!*(Strong + OBJC_IVAR____TtC7NewsUI213SearchFetcher_localAreas) || (a6 & 1) != 0)
    {
      v17 = *(Strong + OBJC_IVAR____TtC7NewsUI213SearchFetcher_locationRegionManager);
      v18 = swift_allocObject();
      v18[2] = v12;
      v18[3] = sub_218846958;
      v18[4] = v10;
      aBlock[4] = sub_2197A0720;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21979DFA4;
      aBlock[3] = &block_descriptor_63_1;
      v19 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      v20 = v12;

      [v17 fetchLocalAreas_];
      _Block_release(v19);

      swift_unknownObjectRelease();
    }

    else
    {

      aBlock[0] = *&v12[v13];

      a1(aBlock);
    }
  }

  else
  {

    v14 = sub_219BE1D94();
    sub_21872CC00(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D6CAE0], v14);
    a3(v15);
  }
}

uint64_t sub_21979DFA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2186C6148(0, &qword_27CC1E1F8);
  v2 = sub_219BF5924();

  v1(v2);
}

uint64_t sub_21979E028()
{

  sub_219BE2CF4();

  return v1;
}

uint64_t sub_21979E07C@<X0>(void *__src@<X0>, unsigned __int8 a2@<W2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  memcpy(v10, __src, sizeof(v10));
  v7 = [*(a3 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_configManager) appConfiguration];
  v8 = sub_2197A0344(v10, a2);
  result = swift_unknownObjectRelease();
  *a4 = v8;
  return result;
}

char *sub_21979E114(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_userInterfaceIdiom) + 1;
  if (v6 > 6 || ((1 << v6) & 0x1B) != 0 || ((1 << v6) & 0x44) == 0)
  {

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_218840D24(0, *(a1 + 2) + 1, 1, a1);
  }

  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  if (v13 >= v12 >> 1)
  {
    a1 = sub_218840D24((v12 > 1), v13 + 1, 1, a1);
  }

  *(a1 + 2) = v13 + 1;
  v9 = &a1[16 * v13];
  v10 = 0x656772616CLL;
  for (i = 0xE500000000000000; ; i = 0xE700000000000000)
  {
    *(v9 + 4) = v10;
    *(v9 + 5) = i;
    v68 = a1;
    v14 = sub_219BE5414();
    v15 = sub_219BF6214();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v67[0] = v17;
      *v16 = 136315138;

      v19 = MEMORY[0x21CECC6D0](v18, MEMORY[0x277D837D0]);
      v21 = v20;

      v22 = sub_2186D1058(v19, v21, v67);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2186C1000, v14, v15, "Search current configurationProfiles from Appconfig: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CECF960](v17, -1, -1);
      MEMORY[0x21CECF960](v16, -1, -1);
    }

    if (a2 > 6u || ((1 << a2) & 0x73) == 0)
    {
      v51 = [*(v3 + OBJC_IVAR____TtC7NewsUI213SearchFetcher_featureAvailability) useNewsArticleSearch];
      if (v51)
      {
        break;
      }
    }

    swift_beginAccess();
    a2 = 0;
    v23 = sub_2197A0404(&v68, 0xD000000000000011, 0x8000000219D35C00);
    v24 = *(v68 + 2);
    if (v24 >= v23)
    {
      sub_21895067C(v23, v24);
      swift_endAccess();
      v25 = sub_219BE5414();
      v26 = sub_219BF6214();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_21;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v67[0] = v28;
      *v27 = 136315138;

      v30 = MEMORY[0x21CECC6D0](v29, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_2186D1058(v30, v32, v67);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2186C1000, v25, v26, "News article search is disabled, updated configurationProfiles: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CECF960](v28, -1, -1);
      v34 = v27;
      goto LABEL_20;
    }

    __break(1u);
LABEL_40:
    a1 = sub_218840D24(0, *(a1 + 2) + 1, 1, a1);
LABEL_4:
    v8 = *(a1 + 2);
    v7 = *(a1 + 3);
    if (v8 >= v7 >> 1)
    {
      a1 = sub_218840D24((v7 > 1), v8 + 1, 1, a1);
    }

    *(a1 + 2) = v8 + 1;
    v9 = &a1[16 * v8];
    v10 = 0x746C7561666564;
  }

  v67[0] = 0xD000000000000011;
  v67[1] = 0x8000000219D35C00;
  MEMORY[0x28223BE20](v51);
  v65 = v67;

  v52 = sub_2186D128C(sub_218B0537C, v64, a1);

  if ((v52 & 1) == 0)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_218840D24(0, *(a1 + 2) + 1, 1, a1);
    }

    v54 = *(a1 + 2);
    v53 = *(a1 + 3);
    if (v54 >= v53 >> 1)
    {
      a1 = sub_218840D24((v53 > 1), v54 + 1, 1, a1);
    }

    *(a1 + 2) = v54 + 1;
    v55 = &a1[16 * v54];
    *(v55 + 4) = 0xD000000000000011;
    *(v55 + 5) = 0x8000000219D35C00;
    v68 = a1;
    swift_endAccess();
  }

  v25 = sub_219BE5414();
  v56 = sub_219BF6214();
  if (os_log_type_enabled(v25, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v67[0] = v58;
    *v57 = 136315138;

    v60 = MEMORY[0x21CECC6D0](v59, MEMORY[0x277D837D0]);
    v62 = v61;

    v63 = sub_2186D1058(v60, v62, v67);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_2186C1000, v25, v56, "News article search is enabled, current configurationProfiles: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x21CECF960](v58, -1, -1);
    v34 = v57;
LABEL_20:
    MEMORY[0x21CECF960](v34, -1, -1);
  }

LABEL_21:

  v35 = swift_beginAccess();
  v36 = v68;
  strcpy(v66, "returnMetadata");
  HIBYTE(v66[1]) = -18;
  MEMORY[0x28223BE20](v35);
  v65 = v66;

  v37 = sub_2186D128C(sub_2186D1338, v64, v36);

  if ((v37 & 1) == 0)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_218840D24(0, *(v36 + 2) + 1, 1, v36);
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = sub_218840D24((v38 > 1), v39 + 1, 1, v36);
    }

    *(v36 + 2) = v39 + 1;
    v40 = &v36[16 * v39];
    strcpy(v40 + 32, "returnMetadata");
    v40[47] = -18;
    v68 = v36;
    swift_endAccess();
  }

  v41 = sub_219BE5414();
  v42 = sub_219BF6214();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v66[0] = v44;
    *v43 = 136315138;

    v46 = MEMORY[0x21CECC6D0](v45, MEMORY[0x277D837D0]);
    v48 = v47;

    v49 = sub_2186D1058(v46, v48, v66);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_2186C1000, v41, v42, "Current configurationProfiles: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x21CECF960](v44, -1, -1);
    MEMORY[0x21CECF960](v43, -1, -1);
  }

  return v36;
}

uint64_t sub_21979E920(uint64_t a1)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() searchBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_219BDB8B4();

    v6 = sub_219BDB954();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  }

  else
  {
    v7 = sub_219BDB954();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  sub_21979FEB0(0, &qword_280EE7018, sub_21873F65C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21979EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a2;
  v60 = a4;
  v61 = a3;
  v56 = a5;
  sub_2192A3460(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_219BDB354();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21873F65C(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v59 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v49[-v15];
  v17 = sub_219BDB954();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v49[-v21];
  v23 = a1;
  v25 = v24;
  sub_2188383F8(v23, v16);
  v58 = *(v25 + 48);
  if (v58(v16, 1, v17) == 1)
  {
    v26 = sub_21873F65C;
    v27 = v16;
LABEL_5:
    sub_2187BC8F0(v27, v26);
    sub_2197A00B0();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v54 = *(v25 + 32);
  v55 = v25 + 32;
  v54(v22, v16, v17);
  sub_219BDB264();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v25 + 8))(v22, v17);
    v26 = sub_2192A3460;
    v27 = v8;
    goto LABEL_5;
  }

  v30 = v9;
  v51 = v10;
  v31 = v62;
  (*(v10 + 32))(v62, v8, v30);
  v32 = v22;
  v33 = v25;
  v34 = *(v25 + 16);
  v53 = v32;
  v34(v20);
  v35 = sub_219BE5414();
  v36 = sub_219BF6214();
  v37 = os_log_type_enabled(v35, v36);
  v52 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v63 = v57;
    *v38 = 136315138;
    sub_21872CC00(&qword_27CC15940, MEMORY[0x277CC9260]);
    v50 = v36;
    v39 = sub_219BF7894();
    v40 = v30;
    v42 = v41;
    v43 = *(v33 + 8);
    v43(v20, v17);
    v44 = sub_2186D1058(v39, v42, &v63);
    v30 = v40;
    v31 = v62;

    *(v38 + 4) = v44;
    v45 = v38;
    _os_log_impl(&dword_2186C1000, v35, v50, "Search URL: %s", v38, 0xCu);
    v46 = v57;
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x21CECF960](v46, -1, -1);
    MEMORY[0x21CECF960](v45, -1, -1);
  }

  else
  {

    v43 = *(v33 + 8);
    v43(v20, v17);
  }

  v61(v31);
  v47 = v59;
  sub_219BDB274();
  if (v58(v47, 1, v17) == 1)
  {
    sub_2187BC8F0(v47, sub_21873F65C);
    sub_2197A00B0();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    (*(v51 + 8))(v31, v30);
    return (v43)(v53, v17);
  }

  else
  {
    (*(v51 + 8))(v31, v30);
    v43(v53, v17);
    return v54(v56, v47, v17);
  }
}

uint64_t sub_21979F0F4(uint64_t a1)
{
  v22 = sub_219BF3B84();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE5434();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF3B74();
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = a1;
      v21 = v1;
      v13 = Strong;
      (*(v7 + 16))(v9, Strong + OBJC_IVAR____TtC7NewsUI213SearchFetcher_logger, v6);

      v14 = v11;
      v15 = sub_219BE5414();
      v16 = sub_219BF6214();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = [v14 statusCode];

        _os_log_impl(&dword_2186C1000, v15, v16, "Search response status: %ld", v17, 0xCu);
        MEMORY[0x21CECF960](v17, -1, -1);
      }

      else
      {

        v15 = v14;
      }

      a1 = v20;

      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }
  }

  (*(v3 + 16))(v5, a1, v22);
  sub_21979FEB0(0, &qword_27CC1F258, MEMORY[0x277D34060], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21979F3D4(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, result + OBJC_IVAR____TtC7NewsUI213SearchFetcher_logger, v2);

    v8 = a1;
    v9 = sub_219BE5414();
    v10 = sub_219BF61F4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_219BF7A04();
      v15 = sub_2186D1058(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2186C1000, v9, v10, "Search error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t type metadata accessor for SearchFetcher()
{
  result = qword_280EDDBD8;
  if (!qword_280EDDBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21979F7B4()
{
  result = sub_219BE5434();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_21979F8B0()
{
  result = qword_27CC1F238;
  if (!qword_27CC1F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F238);
  }

  return result;
}

uint64_t sub_21979F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

id sub_21979F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, objc_class *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v41 = a7;
  v40 = a6;
  v39 = a5;
  v42 = a10;
  v43 = a11;
  v21 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v21);
  v44 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a14;
  v51 = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a8, a14);
  v45 = a12;
  v24 = objc_allocWithZone(a12);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x28223BE20](v25);
  v27 = (&v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v48[3] = type metadata accessor for PegasusQueryContextManager();
  v48[4] = &off_282A3FFC0;
  v48[0] = v29;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContext] = xmmword_219C14A10;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_localAreas] = 0;
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v30 = qword_280F61720;
  sub_219BE5444();
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_connection] = a1;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_configManager] = a2;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_purchaseProvider] = a3;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_bundleSubscriptionProvider] = a4;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_userInterfaceIdiom] = v39;
  v31 = &v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_storefrontID];
  v32 = v41;
  *v31 = v40;
  *(v31 + 1) = v32;
  sub_218718690(v48, &v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_queryContextManager]);
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_locationRegionManager] = a9;
  v33 = v43;
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_featureAvailability] = v42;
  v34 = sub_218718690(v33, &v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_searchEndpointConfigManager]);
  MEMORY[0x28223BE20](v34);
  *(&v38 - 2) = a2;
  sub_21979FEB0(0, &qword_280EE6960, sub_2186C61E4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_configPromise] = sub_219BE30B4();
  sub_218718690(v33, v47);
  v35 = swift_allocObject();
  sub_21875F93C(v47, v35 + 16);
  *&v47[0] = MEMORY[0x277D84F90];
  sub_21872CC00(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_218A4E214(0);
  sub_21872CC00(&qword_280E8F600, sub_218A4E214);
  sub_219BF7164();
  sub_21979FF14();
  swift_allocObject();
  *&v24[OBJC_IVAR____TtC7NewsUI213SearchFetcher_searchEndpointConfigs] = sub_219BE2D14();
  v46.receiver = v24;
  v46.super_class = v45;
  v36 = objc_msgSendSuper2(&v46, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v36;
}

void sub_21979FEB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21979FF14()
{
  if (!qword_280EE71A8)
  {
    sub_2197A07F0(255, &unk_280EE6E30, &type metadata for SearchEndpointConfigs, MEMORY[0x277D6CF30]);
    v0 = sub_219BE2D24();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE71A8);
    }
  }
}

uint64_t sub_21979FF90()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_21979FFEC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) appConfiguration];
  v1();

  return swift_unknownObjectRelease();
}

unint64_t sub_2197A00B0()
{
  result = qword_27CC1F248;
  if (!qword_27CC1F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F248);
  }

  return result;
}

void sub_2197A0104()
{
  if (!qword_280E8B6D0)
  {
    sub_2197A016C(255, &qword_280E8F730);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B6D0);
    }
  }
}

void sub_2197A016C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2197A07F0(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2197A0230(uint64_t a1, uint64_t a2)
{
  sub_2197A016C(0, &qword_27CC1FCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_2197A02FC@<X0>(char **a1@<X0>, char **a2@<X8>)
{
  result = sub_21979E114(*a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_2197A0344(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = a1[22];
        v4 = a1[19];
      }

      else
      {
        v3 = a1[4];
        v4 = a1[1];
      }
    }

    else
    {
      v3 = a1[16];
      v4 = a1[13];
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = a1[34];
      v4 = a1[31];
    }

    else
    {
      v3 = a1[40];
      v4 = a1[37];
    }
  }

  else if (a2 == 3)
  {
    v3 = a1[10];
    v4 = a1[7];
  }

  else
  {
    v3 = a1[28];
    v4 = a1[25];
  }

  if (v4 != 1 && v3 != 0)
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197A0404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_21979F904(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v14 = *(v6 + v12 + 48);
      v15 = *(v6 + v12 + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_219BF78F4();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v17 = (v6 + 32 + 16 * v9);
            v18 = v17[1];
            v20 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_2194ABAC4(v6);
            }

            v19 = v6 + 16 * v9;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            *(v13 + 48) = v20;
            *(v13 + 56) = v18;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2197A06B8()
{
  if (!qword_27CC1F270)
  {
    sub_2186C6148(255, &qword_27CC1E1F8);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F270);
    }
  }
}

uint64_t sub_2197A0720(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(*(v1 + 16) + OBJC_IVAR____TtC7NewsUI213SearchFetcher_localAreas) = a1;

  return v2(v3);
}

void sub_2197A0774()
{
  if (!qword_27CC10530)
  {
    sub_2197A07F0(255, qword_280ED0A60, &type metadata for PegasusQueryContext, MEMORY[0x277D83D88]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10530);
    }
  }
}

void sub_2197A07F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2197A08D0@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(sub_219BE50B4() + 16);

  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    sub_219BE0844();
    v5 = sub_219BE0854();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 0, 1, v5);
  }

  return result;
}

uint64_t sub_2197A0984()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

id sub_2197A0ACC(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_27CC08390 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CCD8870;
  }

  else
  {
    if (qword_27CC08398 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CCD8878;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_2197A0B74(uint64_t a1)
{
  sub_2197A0E00(0, &unk_27CC0DAC0, MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2197A0E00(0, &qword_27CC1F280, MEMORY[0x277D6D938]);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2197A0E00(0, &qword_27CC1F288, MEMORY[0x277D6D940]);
  MEMORY[0x28223BE20](v4 - 8);
  sub_219BEAEF4();
  sub_218AD78D8();
  swift_unknownObjectRetain();
  sub_219BE71E4();
  sub_219BE71D4();
  sub_219BE77A4();
  v5 = sub_219BE6684();
  swift_allocObject();
  v6 = sub_219BE65F4();
  sub_219BE5A14();
  sub_2197A0E64();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = MEMORY[0x277D6D630];
  *(v7 + 56) = v5;
  *(v7 + 64) = v8;
  *(v7 + 32) = v6;
  sub_219BE59C4();
  return a1;
}

void sub_2197A0E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218AD78D8();
    v7 = a3(a1, MEMORY[0x277D33A88], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2197A0E64()
{
  if (!qword_27CC1F290)
  {
    sub_218973D5C();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F290);
    }
  }
}

uint64_t static Settings.Onboarding.Version.effectiveLatestCompleted.getter()
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9AB8 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  result = v1;
  if (v1 < 0)
  {
    sub_219BDC8B4();
    if (qword_280EE9AD0 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return v1;
  }

  return result;
}

uint64_t sub_2197A0FFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_219BDC944();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  (*(v9 + 104))(v11, *MEMORY[0x277D6D0A8], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  v13[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  *a3 = result;
  return result;
}

uint64_t sub_2197A1208()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9B00 = result;
  return result;
}

uint64_t sub_2197A13F8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F2A8 = result;
  return result;
}

uint64_t sub_2197A15E8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9AF0 = result;
  return result;
}

uint64_t sub_2197A17E8@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  if (qword_27CC087C8 != -1)
  {
    swift_once();
  }

  result = sub_219BDC7A4();
  if (v5 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (qword_27CC087D0 != -1)
    {
      swift_once();
    }

    result = sub_219BDC7A4();
    v3 = v4;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2197A1990()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD8ED8 = result;
  return result;
}

uint64_t sub_2197A1B5C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A8], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD8EE0 = result;
  return result;
}

uint64_t sub_2197A1D60()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD8EE8 = result;
  return result;
}

uint64_t sub_2197A1F2C(uint64_t a1, uint64_t a2)
{
  sub_218DB6AE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2197A1F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218DB6AE4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MagazineCategoriesPickerLayoutModel()
{
  result = qword_27CC1F2B0;
  if (!qword_27CC1F2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197A2060(uint64_t a1)
{
  sub_218DB6AE4();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_219BEF974();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

double sub_2197A2134()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197A2500(v0, v7);
  sub_218DB6AE4();
  (*(v2 + 32))(v5, &v7[*(v8 + 48)], v1);
  sub_219BEF954();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  sub_218C113E0(v7);
  return v10;
}

uint64_t sub_2197A22AC(uint64_t a1)
{
  v2 = sub_2197A24BC(&qword_27CC134C0);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2197A2338()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197A2500(v0, v7);
  sub_218DB6AE4();
  (*(v2 + 32))(v5, &v7[*(v8 + 48)], v1);
  v9 = sub_219BEF8B4();
  (*(v2 + 8))(v5, v1);
  sub_218C113E0(v7);
  return v9;
}

uint64_t sub_2197A24BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2197A2500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCategoriesPickerLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197A2564(uint64_t a1)
{
  v3 = type metadata accessor for AudioFeedServiceContext();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [*(v1 + 32) appConfiguration];
  v8 = *(v1 + 160);
  v18 = v1;
  v19 = a1;
  sub_2197A2F0C();
  sub_219BE3204();
  sub_2197A31D8(a1, v6, type metadata accessor for AudioFeedServiceContext);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_2197A32FC(v6, v11 + v9, type metadata accessor for AudioFeedServiceContext);
  *(v11 + v10) = v8;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2197A2F7C;
  *(v12 + 24) = v11;

  v13 = v8;
  swift_unknownObjectRetain();
  v14 = sub_219BE2E54();
  type metadata accessor for AudioFeedServiceConfig();
  v15 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_2197A2780(void *a1, uint64_t a2)
{
  v4 = sub_219BE1B34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v8 = MEMORY[0x277D6CA28];
  if (!*(a2 + 16))
  {
    v8 = MEMORY[0x277D6CA20];
  }

  (*(v5 + 104))(v7, *v8, v4);
  v9 = off_282A71798;
  type metadata accessor for AudioFeedConfigManager();
  v9();
  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1(a1 + 15, a1[18]);
  sub_219BF3CC4();
  v10 = sub_219BE2E54();
  v11 = sub_219BE2E34();

  return v11;
}

double sub_2197A2938@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a5;
  v47 = a6;
  v45 = a4;
  v43 = a2;
  v44 = sub_219BEEA84();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioFeedServiceContext();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197A3120(0, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for AudioFeedContentConfig();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  sub_2197A30A0(a3 + 80, v48);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    sub_218B16FC8(a1, v17);
    (*(v19 + 56))(v17, 0, 1, v18);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_2197A32FC(v17, v24, type metadata accessor for AudioFeedContentConfig);
      goto LABEL_7;
    }
  }

  else
  {
    sub_2197A3240(v48, &unk_280EAD970, sub_2197A3174);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_2197A31D8(a1, v24, type metadata accessor for AudioFeedContentConfig);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_2197A3240(v17, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
  }

LABEL_7:
  v40 = v24;
  v41 = type metadata accessor for AudioFeedServiceContext;
  sub_2197A31D8(v45, v14, type metadata accessor for AudioFeedServiceContext);
  v25 = v22;
  sub_2197A31D8(v24, v22, type metadata accessor for AudioFeedContentConfig);
  v26 = v42;
  v27 = v44;
  (*(v42 + 104))(v11, *MEMORY[0x277D32220], v44);
  sub_2197A31D8(v14, a7, type metadata accessor for AudioFeedServiceContext);
  v28 = type metadata accessor for AudioFeedServiceConfig();
  sub_2197A31D8(v22, a7 + v28[5], type metadata accessor for AudioFeedContentConfig);
  v29 = v43;
  *(a7 + v28[6]) = v43;
  v30 = v28[8];
  v45 = v14;
  v31 = v11;
  v32 = v29;
  v34 = v46;
  v33 = v47;
  *(a7 + v30) = v46;
  *(a7 + v28[7]) = v33;
  (*(v26 + 16))(a7 + v28[9], v31, v27);
  v35 = v32;
  v36 = v34;
  v37 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v26 + 8))(v31, v27);
  sub_2197A329C(v25, type metadata accessor for AudioFeedContentConfig);
  sub_2197A329C(v45, v41);
  sub_2197A329C(v40, type metadata accessor for AudioFeedContentConfig);
  result = v37;
  *(a7 + v28[10]) = v37;
  return result;
}

uint64_t sub_2197A2E08()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  sub_2197A3240(v0 + 80, &unk_280EAD970, sub_2197A3174);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  return swift_deallocClassInstance();
}

void sub_2197A2F0C()
{
  if (!qword_280EC8E98[0])
  {
    type metadata accessor for AudioFeedContentConfig();
    sub_2193D00AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EC8E98);
    }
  }
}

double sub_2197A2F7C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AudioFeedServiceContext() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2197A2938(a1, a2, v10, v3 + v8, v11, v12, a3);
}

uint64_t sub_2197A3040(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2197A2F0C();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_2197A30A0(uint64_t a1, uint64_t a2)
{
  sub_2197A3120(0, &unk_280EAD970, sub_2197A3174);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2197A3120(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_2197A3174()
{
  result = qword_280EAD980;
  if (!qword_280EAD980)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAD980);
  }

  return result;
}

uint64_t sub_2197A31D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197A3240(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2197A3120(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197A329C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197A32FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197A338C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_218B8243C(0, &qword_280E92530, MEMORY[0x277D31D70]);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v40 - v4;
  sub_2186E3B14();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v40 - v8;
  v9 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8243C(0, &unk_280E919B0, sub_2186E3B14);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v40 - v15;
  sub_2197A3E80(0, &qword_280E8CBA0, sub_2197A3DC8, &type metadata for PaywallMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197A3DC8();
  v21 = v57;
  sub_219BF7B34();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = 0;
  v47 = v18;
  v48 = v11;
  v57 = a1;
  LOBYTE(v62) = 0;
  sub_2186EC638(&qword_280E919C8, sub_2186E3B14);
  v23 = v56;
  v24 = v51;
  sub_219BF7674();
  LOBYTE(v60) = 1;
  sub_219BF7674();
  v43 = v62;
  v42 = v63;
  LOBYTE(v58) = 2;
  sub_219BF7674();
  v44 = v60;
  v64 = v61;
  v65 = 3;
  v25 = v17;
  sub_219BF7674();
  v26 = v58;
  v41 = v59;
  v27 = v49;
  sub_218B82538(v23, v49);
  v28 = v50;
  v29 = *(v50 + 48);
  v30 = v29(v27, 1, v24);
  v45 = v20;
  if (v30 == 1)
  {
    v40 = v26;
    v31 = v55;
    v32 = v52;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v24, qword_280F61818);
    v34 = v53;
    (*(v28 + 16))(v53, v33, v24);
    v35 = v29(v27, 1, v24);
    v36 = v34;
    if (v35 != 1)
    {
      sub_218B825B8(v27, &unk_280E919B0, sub_2186E3B14);
    }
  }

  else
  {
    v36 = v53;
    (*(v28 + 32))(v53, v27, v24);
    v31 = v55;
    v32 = v52;
  }

  v37 = sub_219BEDB04();
  (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
  v38 = v54;
  sub_219BEEA04();
  sub_218B825B8(v32, &qword_280E92530, MEMORY[0x277D31D70]);
  (*(v28 + 8))(v36, v24);
  sub_218B825B8(v56, &unk_280E919B0, sub_2186E3B14);
  (*(v47 + 8))(v45, v25);
  v39 = v48;
  (*(v28 + 32))(v48, v38, v24);
  sub_2197A3E1C(v39, v31);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_2197A3A58()
{
  v1 = 0x73656C7572;
  v2 = 0x746C754D6B6E6172;
  if (*v0 != 2)
  {
    v2 = 0x726F635365736162;
  }

  if (*v0)
  {
    v1 = 0x727563634F78616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2197A3AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2197A416C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2197A3B14(uint64_t a1)
{
  v2 = sub_2197A3DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197A3B50(uint64_t a1)
{
  v2 = sub_2197A3DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197A3B8C(uint64_t a1)
{
  v2 = sub_2197A3EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197A3BC8(uint64_t a1)
{
  v2 = sub_2197A3EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197A3C1C(void *a1)
{
  sub_2197A3E80(0, &qword_280E8C3F0, sub_2197A3EE8, &type metadata for PaywallMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197A3EE8();
  sub_219BF7B44();
  sub_2186E3B14();
  sub_2186EC638(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2197A3DC8()
{
  result = qword_280EAF868;
  if (!qword_280EAF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF868);
  }

  return result;
}

uint64_t sub_2197A3E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197A3E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2197A3EE8()
{
  result = qword_280EAF890;
  if (!qword_280EAF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF890);
  }

  return result;
}

unint64_t sub_2197A3F60()
{
  result = qword_27CC1F2C0;
  if (!qword_27CC1F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F2C0);
  }

  return result;
}

unint64_t sub_2197A3FB8()
{
  result = qword_27CC1F2C8;
  if (!qword_27CC1F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F2C8);
  }

  return result;
}

unint64_t sub_2197A4010()
{
  result = qword_280EAF880;
  if (!qword_280EAF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF880);
  }

  return result;
}

unint64_t sub_2197A4068()
{
  result = qword_280EAF888;
  if (!qword_280EAF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF888);
  }

  return result;
}

unint64_t sub_2197A40C0()
{
  result = qword_280EAF870;
  if (!qword_280EAF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF870);
  }

  return result;
}

unint64_t sub_2197A4118()
{
  result = qword_280EAF878;
  if (!qword_280EAF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF878);
  }

  return result;
}

uint64_t sub_2197A416C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2197A42F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x53 && *(a1 + 8))
  {
    return (*a1 + 83);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x52)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2197A4354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x52)
  {
    *result = a2 - 83;
    if (a3 >= 0x53)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x53)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2197A43D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84FA0];
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x17uLL:
    case 0x1DuLL:
    case 0x1FuLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x29uLL:
    case 0x2BuLL:
      return v16;
    case 2uLL:
      v18 = &unk_282A27930;
      goto LABEL_33;
    case 3uLL:
      v18 = &unk_282A279D0;
      goto LABEL_33;
    case 7uLL:
      v19 = v12;
      v20 = v13;
      v21 = swift_projectBox();
      v38 = v20;
      (*(v20 + 16))(v15, v21, v19);
      v39 = v19;
      sub_219BEDD14();
      (*(v5 + 16))(v7, &v10[*(v8 + 20)], v4);
      sub_2197B8CA4(v10, type metadata accessor for CuratedTagFeedGroupConfigData);
      sub_219BF1724();
      (*(v5 + 8))(v7, v4);
      v22 = sub_219BF5AC4();

      if (v22 >> 62)
      {
        goto LABEL_39;
      }

      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_40;
      }

      break;
    case 0x10uLL:
    case 0x28uLL:
      v18 = &unk_282A27A98;
      goto LABEL_33;
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x20uLL:
      v18 = &unk_282A27A20;
      goto LABEL_33;
    case 0x18uLL:
      v18 = &unk_282A27AC0;
      goto LABEL_33;
    case 0x19uLL:
      v18 = &unk_282A27908;
      goto LABEL_33;
    case 0x1AuLL:
      goto LABEL_27;
    case 0x1BuLL:
      v18 = &unk_282A279A8;
      goto LABEL_33;
    case 0x23uLL:
      v18 = &unk_282A27A48;
      goto LABEL_33;
    case 0x27uLL:
      v18 = &unk_282A27A70;
      goto LABEL_33;
    case 0x2AuLL:
      v18 = &unk_282A27AE8;
      goto LABEL_33;
    case 0x2CuLL:
      v18 = &unk_282A27B10;
      goto LABEL_33;
    case 0x2DuLL:
      v18 = &unk_282A27B38;
      goto LABEL_33;
    default:
      v18 = &unk_282A27958;
      goto LABEL_33;
  }

LABEL_13:
  v24 = 0;
  v43 = v22 & 0xC000000000000001;
  v41 = OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor;
  v42 = v22 & 0xFFFFFFFFFFFFFF8;
  v40 = v23;
  while (!v43)
  {
    if (v24 >= *(v42 + 16))
    {
      __break(1u);
LABEL_39:
      v23 = sub_219BF7214();
      if (!v23)
      {
LABEL_40:

        (*(v38 + 8))(v15, v39);
        return MEMORY[0x277D84FA0];
      }

      goto LABEL_13;
    }

    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_26;
    }

LABEL_17:
    v44 = v25;
    v27 = sub_219BED9A4();
    v29 = v28;
    v30 = a1;
    v31 = [objc_msgSend(*(a1 + v41) backingTag)];
    swift_unknownObjectRelease();
    v32 = sub_219BF5414();
    v34 = v33;

    if (v27 == v32 && v29 == v34)
    {

LABEL_37:

      v16 = sub_2194B4390(&unk_282A279F8);

      (*(v38 + 8))(v15, v39);
      return v16;
    }

    v36 = sub_219BF78F4();

    if (v36)
    {
      goto LABEL_37;
    }

    ++v24;
    a1 = v30;
    if (v26 == v40)
    {
      goto LABEL_40;
    }
  }

  v25 = MEMORY[0x21CECE0F0](v24, v22);
  v26 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v18 = &unk_282A27980;
LABEL_33:

  return sub_2194B4390(v18);
}

uint64_t sub_2197A4908(uint64_t a1)
{
  sub_21937E158();
  v230 = *(v2 - 8);
  v231 = v2;
  MEMORY[0x28223BE20](v2);
  v229 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v227 = *(v4 - 8);
  v228 = v4;
  MEMORY[0x28223BE20](v4);
  v226 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v224 = *(v6 - 8);
  v225 = v6;
  MEMORY[0x28223BE20](v6);
  v223 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v221 = *(v8 - 8);
  v222 = v8;
  MEMORY[0x28223BE20](v8);
  v220 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v218 = *(v10 - 8);
  v219 = v10;
  MEMORY[0x28223BE20](v10);
  v217 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92458, sub_218B00BC0, sub_218B00C14);
  v215 = *(v12 - 8);
  v216 = v12;
  MEMORY[0x28223BE20](v12);
  v214 = &v132 - v13;
  sub_218D10EB4();
  v213[1] = v14;
  v213[0] = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v212 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v211[1] = v16;
  v211[0] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v210 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v209[1] = v18;
  v209[0] = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v208 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v207[1] = v20;
  v207[0] = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v206 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v205[1] = v22;
  v205[0] = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v204 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v203[1] = v24;
  v203[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v202 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v201[1] = v26;
  v201[0] = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v200 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v199[1] = v28;
  v199[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v198 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v197[1] = v30;
  v197[0] = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v196 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v195[1] = v32;
  v195[0] = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v194 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v193[1] = v34;
  v193[0] = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v192 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v191[1] = v36;
  v191[0] = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v190 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v189[1] = v38;
  v189[0] = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v188 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v187[1] = v40;
  v187[0] = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v186 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v185[1] = v42;
  v185[0] = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v184 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v183[1] = v44;
  v183[0] = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v182 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v181[1] = v46;
  v181[0] = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v180 = &v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v179[1] = v48;
  v179[0] = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v178 = &v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v177[1] = v50;
  v177[0] = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v176 = &v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v175[1] = v52;
  v175[0] = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v174 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v173[1] = v54;
  v173[0] = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v172 = &v132 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v171[1] = v56;
  v171[0] = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v170 = &v132 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v169 = v58;
  v168 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v167 = &v132 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v166 = v60;
  v165 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v164 = &v132 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v163 = v62;
  v162 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v161 = &v132 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v233 = *(v64 - 8);
  v234 = v64;
  MEMORY[0x28223BE20](v64);
  v232 = &v132 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194C0030();
  v160 = v66;
  v159 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v158 = &v132 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v157 = v68;
  v156 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v155 = &v132 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v154 = v70;
  v153 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v152 = &v132 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v151 = v72;
  v150 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v149 = &v132 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v148 = v74;
  v147 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v146 = &v132 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v145 = v76;
  v144 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v143 = &v132 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92480, sub_2197B8968, sub_2197B89BC);
  v142 = v78;
  v141 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v140 = &v132 - v79;
  sub_218A8750C();
  v139 = v80;
  v138 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v137 = &v132 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v136 = v82;
  v135 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v84 = &v132 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v86 = v85;
  v134 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v88 = &v132 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A8C();
  v90 = v89;
  v133 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v132 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v94 = v93;
  v132 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v96 = &v132 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E923F0, sub_218A5944C, sub_218A594A0);
  v98 = v97;
  v99 = a1;
  v100 = *(v98 - 8);
  v101 = MEMORY[0x28223BE20](v99);
  v103 = &v132 - v102;
  switch((v101 >> 58) & 0x3C | (v101 >> 1) & 3)
  {
    case 1uLL:
      v124 = swift_projectBox();
      v125 = v133;
      (*(v133 + 16))(v92, v124, v90);
      v126 = sub_219BEDCA4();
      v127 = v92;
      v117 = v126;
      (*(v125 + 8))(v127, v90);
      return v117;
    case 2uLL:
      v119 = swift_projectBox();
      (*(v100 + 16))(v103, v119, v98);
      v117 = sub_219BEDCA4();
      (*(v100 + 8))(v103, v98);
      return v117;
    case 3uLL:
      v120 = swift_projectBox();
      v121 = v134;
      (*(v134 + 16))(v88, v120, v86);
      v117 = sub_219BEDCA4();
      (*(v121 + 8))(v88, v86);
      return v117;
    case 4uLL:
      v114 = swift_projectBox();
      v115 = v135;
      v116 = v136;
      (*(v135 + 16))(v84, v114, v136);
      v117 = sub_219BEDCA4();
      (*(v115 + 8))(v84, v116);
      return v117;
    case 5uLL:
      v109 = swift_projectBox();
      v106 = v138;
      v110 = *(v138 + 16);
      v105 = v137;
      v111 = v137;
      v112 = v171;
      goto LABEL_47;
    case 6uLL:
      v109 = swift_projectBox();
      v106 = v141;
      v110 = *(v141 + 16);
      v105 = v140;
      v111 = v140;
      v112 = v173;
      goto LABEL_47;
    case 7uLL:
      v109 = swift_projectBox();
      v106 = v144;
      v110 = *(v144 + 16);
      v105 = v143;
      v111 = v143;
      v112 = v175;
      goto LABEL_47;
    case 8uLL:
      v109 = swift_projectBox();
      v106 = v147;
      v110 = *(v147 + 16);
      v105 = v146;
      v111 = v146;
      v112 = v177;
      goto LABEL_47;
    case 9uLL:
      v109 = swift_projectBox();
      v106 = v150;
      v110 = *(v150 + 16);
      v105 = v149;
      v111 = v149;
      v112 = v179;
      goto LABEL_47;
    case 0xAuLL:
      v109 = swift_projectBox();
      v106 = v156;
      v110 = *(v156 + 16);
      v105 = v155;
      v111 = v155;
      v112 = v183;
      goto LABEL_47;
    case 0xBuLL:
      v109 = swift_projectBox();
      v106 = v159;
      v110 = *(v159 + 16);
      v105 = v158;
      v111 = v158;
      v112 = v185;
      goto LABEL_47;
    case 0xCuLL:
      v109 = swift_projectBox();
      v106 = v153;
      v110 = *(v153 + 16);
      v105 = v152;
      v111 = v152;
      v112 = v181;
      goto LABEL_47;
    case 0xDuLL:
    case 0xEuLL:
      v104 = swift_projectBox();
      v105 = v232;
      v106 = v233;
      v107 = v234;
      (*(v233 + 16))(v232, v104, v234);
      goto LABEL_48;
    case 0xFuLL:
      v109 = swift_projectBox();
      v106 = v162;
      v110 = *(v162 + 16);
      v105 = v161;
      v111 = v161;
      v112 = v187;
      goto LABEL_47;
    case 0x10uLL:
      v109 = swift_projectBox();
      v106 = v165;
      v110 = *(v165 + 16);
      v105 = v164;
      v111 = v164;
      v112 = v189;
      goto LABEL_47;
    case 0x11uLL:
      v109 = swift_projectBox();
      v106 = v168;
      v110 = *(v168 + 16);
      v105 = v167;
      v111 = v167;
      v112 = v191;
      goto LABEL_47;
    case 0x12uLL:
      v109 = swift_projectBox();
      v106 = v171[0];
      v110 = *(v171[0] + 16);
      v105 = v170;
      v111 = v170;
      v112 = v193;
      goto LABEL_47;
    case 0x13uLL:
      v109 = swift_projectBox();
      v106 = v173[0];
      v110 = *(v173[0] + 16);
      v105 = v172;
      v111 = v172;
      v112 = v195;
      goto LABEL_47;
    case 0x14uLL:
      v109 = swift_projectBox();
      v106 = v175[0];
      v110 = *(v175[0] + 16);
      v105 = v174;
      v111 = v174;
      v112 = v197;
      goto LABEL_47;
    case 0x15uLL:
      v109 = swift_projectBox();
      v106 = v177[0];
      v110 = *(v177[0] + 16);
      v105 = v176;
      v111 = v176;
      v112 = v199;
      goto LABEL_47;
    case 0x16uLL:
      v109 = swift_projectBox();
      v106 = v179[0];
      v110 = *(v179[0] + 16);
      v105 = v178;
      v111 = v178;
      v112 = v201;
      goto LABEL_47;
    case 0x17uLL:
      v109 = swift_projectBox();
      v106 = v181[0];
      v110 = *(v181[0] + 16);
      v105 = v180;
      v111 = v180;
      v112 = v203;
      goto LABEL_47;
    case 0x18uLL:
      v109 = swift_projectBox();
      v106 = v183[0];
      v110 = *(v183[0] + 16);
      v105 = v182;
      v111 = v182;
      v112 = v205;
      goto LABEL_47;
    case 0x19uLL:
      v109 = swift_projectBox();
      v106 = v185[0];
      v110 = *(v185[0] + 16);
      v105 = v184;
      v111 = v184;
      v112 = v207;
      goto LABEL_47;
    case 0x1AuLL:
      v109 = swift_projectBox();
      v106 = v187[0];
      v110 = *(v187[0] + 16);
      v105 = v186;
      v111 = v186;
      v112 = v209;
      goto LABEL_47;
    case 0x1BuLL:
      v109 = swift_projectBox();
      v106 = v189[0];
      v110 = *(v189[0] + 16);
      v105 = v188;
      v111 = v188;
      v112 = v211;
      goto LABEL_47;
    case 0x1CuLL:
      v109 = swift_projectBox();
      v106 = v191[0];
      v110 = *(v191[0] + 16);
      v105 = v190;
      v111 = v190;
      v112 = v213;
      goto LABEL_47;
    case 0x1DuLL:
      v109 = swift_projectBox();
      v106 = v193[0];
      v110 = *(v193[0] + 16);
      v105 = v192;
      v111 = v192;
      v112 = &v215;
      goto LABEL_47;
    case 0x1EuLL:
      v109 = swift_projectBox();
      v106 = v195[0];
      v110 = *(v195[0] + 16);
      v105 = v194;
      v111 = v194;
      v112 = &v218;
      goto LABEL_47;
    case 0x1FuLL:
      v109 = swift_projectBox();
      v106 = v197[0];
      v110 = *(v197[0] + 16);
      v105 = v196;
      v111 = v196;
      v112 = &v221;
      goto LABEL_47;
    case 0x20uLL:
      v109 = swift_projectBox();
      v106 = v199[0];
      v110 = *(v199[0] + 16);
      v105 = v198;
      v111 = v198;
      v112 = &v224;
      goto LABEL_47;
    case 0x21uLL:
      v109 = swift_projectBox();
      v106 = v201[0];
      v110 = *(v201[0] + 16);
      v105 = v200;
      v111 = v200;
      v112 = &v227;
      goto LABEL_47;
    case 0x22uLL:
      v109 = swift_projectBox();
      v106 = v203[0];
      v110 = *(v203[0] + 16);
      v105 = v202;
      v111 = v202;
      v112 = &v230;
      goto LABEL_47;
    case 0x23uLL:
      v109 = swift_projectBox();
      v106 = v205[0];
      v110 = *(v205[0] + 16);
      v105 = v204;
      v111 = v204;
      v112 = &v233;
      goto LABEL_47;
    case 0x24uLL:
      v109 = swift_projectBox();
      v106 = v207[0];
      v110 = *(v207[0] + 16);
      v105 = v206;
      v111 = v206;
      v112 = &v235;
      goto LABEL_47;
    case 0x25uLL:
      v109 = swift_projectBox();
      v106 = v209[0];
      v110 = *(v209[0] + 16);
      v105 = v208;
      v111 = v208;
      v112 = &v236;
      goto LABEL_47;
    case 0x26uLL:
      v109 = swift_projectBox();
      v106 = v211[0];
      v110 = *(v211[0] + 16);
      v105 = v210;
      v111 = v210;
      v112 = &v237;
      goto LABEL_47;
    case 0x27uLL:
      v109 = swift_projectBox();
      v106 = v213[0];
      v110 = *(v213[0] + 16);
      v105 = v212;
      v111 = v212;
      v112 = &v238;
LABEL_47:
      v107 = *(v112 - 32);
      v110(v111, v109, v107);
      goto LABEL_48;
    case 0x28uLL:
      v118 = swift_projectBox();
      v105 = v214;
      v106 = v215;
      v107 = v216;
      (*(v215 + 16))(v214, v118, v216);
      goto LABEL_48;
    case 0x29uLL:
      v128 = swift_projectBox();
      v105 = v217;
      v106 = v218;
      v107 = v219;
      (*(v218 + 16))(v217, v128, v219);
      goto LABEL_48;
    case 0x2AuLL:
      v130 = swift_projectBox();
      v105 = v220;
      v106 = v221;
      v107 = v222;
      (*(v221 + 16))(v220, v130, v222);
      goto LABEL_48;
    case 0x2BuLL:
      v108 = swift_projectBox();
      v105 = v223;
      v106 = v224;
      v107 = v225;
      (*(v224 + 16))(v223, v108, v225);
      goto LABEL_48;
    case 0x2CuLL:
      v113 = swift_projectBox();
      v105 = v226;
      v106 = v227;
      v107 = v228;
      (*(v227 + 16))(v226, v113, v228);
      goto LABEL_48;
    case 0x2DuLL:
      v129 = swift_projectBox();
      v105 = v229;
      v106 = v230;
      v107 = v231;
      (*(v230 + 16))(v229, v129, v231);
LABEL_48:
      v117 = sub_219BEDCA4();
      (*(v106 + 8))(v105, v107);
      break;
    default:
      v122 = swift_projectBox();
      v123 = v132;
      (*(v132 + 16))(v96, v122, v94);
      v117 = sub_219BEDCA4();
      (*(v123 + 8))(v96, v94);
      break;
  }

  return v117;
}

uint64_t sub_2197A6B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v233 = a2;
  sub_21937E158();
  v228 = *(v3 - 8);
  v229 = v3;
  MEMORY[0x28223BE20](v3);
  v227 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v225 = *(v5 - 8);
  v226 = v5;
  MEMORY[0x28223BE20](v5);
  v224 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v222 = *(v7 - 8);
  v223 = v7;
  MEMORY[0x28223BE20](v7);
  v221 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v219 = *(v9 - 8);
  v220 = v9;
  MEMORY[0x28223BE20](v9);
  v218 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v216 = *(v11 - 8);
  v217 = v11;
  MEMORY[0x28223BE20](v11);
  v215 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92458, sub_218B00BC0, sub_218B00C14);
  v213 = *(v13 - 8);
  v214 = v13;
  MEMORY[0x28223BE20](v13);
  v212 = &v129 - v14;
  sub_218D10EB4();
  v211[1] = v15;
  v211[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v210 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v209[1] = v17;
  v209[0] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v208 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v207[1] = v19;
  v207[0] = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v206 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v205[1] = v21;
  v205[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v204 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v203[1] = v23;
  v203[0] = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v202 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v201[1] = v25;
  v201[0] = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v200 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v199[1] = v27;
  v199[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v198 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v197[1] = v29;
  v197[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v196 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v195[1] = v31;
  v195[0] = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v194 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v193[1] = v33;
  v193[0] = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v192 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v191[1] = v35;
  v191[0] = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v190 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v189[1] = v37;
  v189[0] = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v188 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v187[1] = v39;
  v187[0] = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v186 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v185[1] = v41;
  v185[0] = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v184 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v183[1] = v43;
  v183[0] = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v182 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v181[1] = v45;
  v181[0] = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v180 = &v129 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v179[1] = v47;
  v179[0] = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v178 = &v129 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v177[1] = v49;
  v177[0] = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v176 = &v129 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v175[1] = v51;
  v175[0] = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v174 = &v129 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v173[1] = v53;
  v173[0] = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v172 = &v129 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v171[1] = v55;
  v171[0] = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v170 = &v129 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v169[1] = v57;
  v169[0] = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v168 = &v129 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v167 = v59;
  v166 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v165 = &v129 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v164 = v61;
  v163 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v162 = &v129 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v161 = v63;
  v160 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v159 = &v129 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v231 = *(v65 - 8);
  v232 = v65;
  MEMORY[0x28223BE20](v65);
  v230 = &v129 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194C0030();
  v158 = v67;
  v157 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v156 = &v129 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v155 = v69;
  v154 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v153 = &v129 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v152 = v71;
  v151 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v150 = &v129 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v149 = v73;
  v148 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v147 = &v129 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v146 = v75;
  v145 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v144 = &v129 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v143 = v77;
  v142 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v141 = &v129 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92480, sub_2197B8968, sub_2197B89BC);
  v140 = v79;
  v139 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v138 = &v129 - v80;
  sub_218A8750C();
  v137 = v81;
  v136 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v135 = &v129 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v134 = v83;
  v133 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v85 = &v129 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v87 = v86;
  v132 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v89 = &v129 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A8C();
  v91 = v90;
  v131 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v93 = &v129 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v95 = v94;
  v130 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v97 = &v129 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E923F0, sub_218A5944C, sub_218A594A0);
  v99 = v98;
  v100 = *(v98 - 8);
  v101 = MEMORY[0x28223BE20](a1);
  v103 = &v129 - v102;
  switch((v101 >> 58) & 0x3C | (v101 >> 1) & 3)
  {
    case 1uLL:
      v124 = swift_projectBox();
      v125 = v131;
      (*(v131 + 16))(v93, v124, v91);
      sub_219BEDC94();
      return (*(v125 + 8))(v93, v91);
    case 2uLL:
      v119 = swift_projectBox();
      (*(v100 + 16))(v103, v119, v99);
      sub_219BEDC94();
      return (*(v100 + 8))(v103, v99);
    case 3uLL:
      v120 = swift_projectBox();
      v121 = v132;
      (*(v132 + 16))(v89, v120, v87);
      sub_219BEDC94();
      return (*(v121 + 8))(v89, v87);
    case 4uLL:
      v114 = swift_projectBox();
      v115 = v133;
      v116 = v134;
      (*(v133 + 16))(v85, v114, v134);
      sub_219BEDC94();
      return (*(v115 + 8))(v85, v116);
    case 5uLL:
      v109 = swift_projectBox();
      v106 = v136;
      v110 = *(v136 + 16);
      v105 = v135;
      v111 = v135;
      v112 = v169;
      goto LABEL_47;
    case 6uLL:
      v109 = swift_projectBox();
      v106 = v139;
      v110 = *(v139 + 16);
      v105 = v138;
      v111 = v138;
      v112 = v171;
      goto LABEL_47;
    case 7uLL:
      v109 = swift_projectBox();
      v106 = v142;
      v110 = *(v142 + 16);
      v105 = v141;
      v111 = v141;
      v112 = v173;
      goto LABEL_47;
    case 8uLL:
      v109 = swift_projectBox();
      v106 = v145;
      v110 = *(v145 + 16);
      v105 = v144;
      v111 = v144;
      v112 = v175;
      goto LABEL_47;
    case 9uLL:
      v109 = swift_projectBox();
      v106 = v148;
      v110 = *(v148 + 16);
      v105 = v147;
      v111 = v147;
      v112 = v177;
      goto LABEL_47;
    case 0xAuLL:
      v109 = swift_projectBox();
      v106 = v154;
      v110 = *(v154 + 16);
      v105 = v153;
      v111 = v153;
      v112 = v181;
      goto LABEL_47;
    case 0xBuLL:
      v109 = swift_projectBox();
      v106 = v157;
      v110 = *(v157 + 16);
      v105 = v156;
      v111 = v156;
      v112 = v183;
      goto LABEL_47;
    case 0xCuLL:
      v109 = swift_projectBox();
      v106 = v151;
      v110 = *(v151 + 16);
      v105 = v150;
      v111 = v150;
      v112 = v179;
      goto LABEL_47;
    case 0xDuLL:
    case 0xEuLL:
      v104 = swift_projectBox();
      v105 = v230;
      v106 = v231;
      v107 = v232;
      (*(v231 + 16))(v230, v104, v232);
      goto LABEL_48;
    case 0xFuLL:
      v109 = swift_projectBox();
      v106 = v160;
      v110 = *(v160 + 16);
      v105 = v159;
      v111 = v159;
      v112 = v185;
      goto LABEL_47;
    case 0x10uLL:
      v109 = swift_projectBox();
      v106 = v163;
      v110 = *(v163 + 16);
      v105 = v162;
      v111 = v162;
      v112 = v187;
      goto LABEL_47;
    case 0x11uLL:
      v109 = swift_projectBox();
      v106 = v166;
      v110 = *(v166 + 16);
      v105 = v165;
      v111 = v165;
      v112 = v189;
      goto LABEL_47;
    case 0x12uLL:
      v109 = swift_projectBox();
      v106 = v169[0];
      v110 = *(v169[0] + 16);
      v105 = v168;
      v111 = v168;
      v112 = v191;
      goto LABEL_47;
    case 0x13uLL:
      v109 = swift_projectBox();
      v106 = v171[0];
      v110 = *(v171[0] + 16);
      v105 = v170;
      v111 = v170;
      v112 = v193;
      goto LABEL_47;
    case 0x14uLL:
      v109 = swift_projectBox();
      v106 = v177[0];
      v110 = *(v177[0] + 16);
      v105 = v176;
      v111 = v176;
      v112 = v199;
      goto LABEL_47;
    case 0x15uLL:
      v109 = swift_projectBox();
      v106 = v173[0];
      v110 = *(v173[0] + 16);
      v105 = v172;
      v111 = v172;
      v112 = v195;
      goto LABEL_47;
    case 0x16uLL:
      v109 = swift_projectBox();
      v106 = v175[0];
      v110 = *(v175[0] + 16);
      v105 = v174;
      v111 = v174;
      v112 = v197;
      goto LABEL_47;
    case 0x17uLL:
      v109 = swift_projectBox();
      v106 = v179[0];
      v110 = *(v179[0] + 16);
      v105 = v178;
      v111 = v178;
      v112 = v201;
      goto LABEL_47;
    case 0x18uLL:
      v109 = swift_projectBox();
      v106 = v181[0];
      v110 = *(v181[0] + 16);
      v105 = v180;
      v111 = v180;
      v112 = v203;
      goto LABEL_47;
    case 0x19uLL:
      v109 = swift_projectBox();
      v106 = v183[0];
      v110 = *(v183[0] + 16);
      v105 = v182;
      v111 = v182;
      v112 = v205;
      goto LABEL_47;
    case 0x1AuLL:
      v109 = swift_projectBox();
      v106 = v185[0];
      v110 = *(v185[0] + 16);
      v105 = v184;
      v111 = v184;
      v112 = v207;
      goto LABEL_47;
    case 0x1BuLL:
      v109 = swift_projectBox();
      v106 = v187[0];
      v110 = *(v187[0] + 16);
      v105 = v186;
      v111 = v186;
      v112 = v209;
      goto LABEL_47;
    case 0x1CuLL:
      v109 = swift_projectBox();
      v106 = v189[0];
      v110 = *(v189[0] + 16);
      v105 = v188;
      v111 = v188;
      v112 = v211;
      goto LABEL_47;
    case 0x1DuLL:
      v109 = swift_projectBox();
      v106 = v191[0];
      v110 = *(v191[0] + 16);
      v105 = v190;
      v111 = v190;
      v112 = &v213;
      goto LABEL_47;
    case 0x1EuLL:
      v109 = swift_projectBox();
      v106 = v193[0];
      v110 = *(v193[0] + 16);
      v105 = v192;
      v111 = v192;
      v112 = &v216;
      goto LABEL_47;
    case 0x1FuLL:
      v109 = swift_projectBox();
      v106 = v195[0];
      v110 = *(v195[0] + 16);
      v105 = v194;
      v111 = v194;
      v112 = &v219;
      goto LABEL_47;
    case 0x20uLL:
      v109 = swift_projectBox();
      v106 = v197[0];
      v110 = *(v197[0] + 16);
      v105 = v196;
      v111 = v196;
      v112 = &v222;
      goto LABEL_47;
    case 0x21uLL:
      v109 = swift_projectBox();
      v106 = v199[0];
      v110 = *(v199[0] + 16);
      v105 = v198;
      v111 = v198;
      v112 = &v225;
      goto LABEL_47;
    case 0x22uLL:
      v109 = swift_projectBox();
      v106 = v201[0];
      v110 = *(v201[0] + 16);
      v105 = v200;
      v111 = v200;
      v112 = &v228;
      goto LABEL_47;
    case 0x23uLL:
      v109 = swift_projectBox();
      v106 = v203[0];
      v110 = *(v203[0] + 16);
      v105 = v202;
      v111 = v202;
      v112 = &v231;
      goto LABEL_47;
    case 0x24uLL:
      v109 = swift_projectBox();
      v106 = v205[0];
      v110 = *(v205[0] + 16);
      v105 = v204;
      v111 = v204;
      v112 = &v234;
      goto LABEL_47;
    case 0x25uLL:
      v109 = swift_projectBox();
      v106 = v207[0];
      v110 = *(v207[0] + 16);
      v105 = v206;
      v111 = v206;
      v112 = &v235;
      goto LABEL_47;
    case 0x26uLL:
      v109 = swift_projectBox();
      v106 = v209[0];
      v110 = *(v209[0] + 16);
      v105 = v208;
      v111 = v208;
      v112 = &v236;
      goto LABEL_47;
    case 0x27uLL:
      v109 = swift_projectBox();
      v106 = v211[0];
      v110 = *(v211[0] + 16);
      v105 = v210;
      v111 = v210;
      v112 = &v237;
LABEL_47:
      v107 = *(v112 - 32);
      v110(v111, v109, v107);
      goto LABEL_48;
    case 0x28uLL:
      v118 = swift_projectBox();
      v106 = v213;
      v107 = v214;
      v105 = v212;
      (*(v213 + 16))(v212, v118, v214);
      goto LABEL_48;
    case 0x29uLL:
      v126 = swift_projectBox();
      v105 = v215;
      v106 = v216;
      v107 = v217;
      (*(v216 + 16))(v215, v126, v217);
      goto LABEL_48;
    case 0x2AuLL:
      v128 = swift_projectBox();
      v105 = v218;
      v106 = v219;
      v107 = v220;
      (*(v219 + 16))(v218, v128, v220);
      goto LABEL_48;
    case 0x2BuLL:
      v108 = swift_projectBox();
      v105 = v221;
      v106 = v222;
      v107 = v223;
      (*(v222 + 16))(v221, v108, v223);
      goto LABEL_48;
    case 0x2CuLL:
      v113 = swift_projectBox();
      v105 = v224;
      v106 = v225;
      v107 = v226;
      (*(v225 + 16))(v224, v113, v226);
      goto LABEL_48;
    case 0x2DuLL:
      v127 = swift_projectBox();
      v105 = v227;
      v106 = v228;
      v107 = v229;
      (*(v228 + 16))(v227, v127, v229);
LABEL_48:
      sub_219BEDC94();
      result = (*(v106 + 8))(v105, v107);
      break;
    default:
      v122 = swift_projectBox();
      v123 = v130;
      (*(v130 + 16))(v97, v122, v95);
      sub_219BEDC94();
      result = (*(v123 + 8))(v97, v95);
      break;
  }

  return result;
}

uint64_t sub_2197A8E1C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v236 = a2;
  sub_21937E158();
  v231 = *(v3 - 8);
  v232 = v3;
  MEMORY[0x28223BE20](v3);
  v230 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v228 = *(v5 - 8);
  v229 = v5;
  MEMORY[0x28223BE20](v5);
  v227 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v225 = *(v7 - 8);
  v226 = v7;
  MEMORY[0x28223BE20](v7);
  v224 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v222 = *(v9 - 8);
  v223 = v9;
  MEMORY[0x28223BE20](v9);
  v221 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v219 = *(v11 - 8);
  v220 = v11;
  MEMORY[0x28223BE20](v11);
  v218 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92458, sub_218B00BC0, sub_218B00C14);
  v216 = *(v13 - 8);
  v217 = v13;
  MEMORY[0x28223BE20](v13);
  v215 = &v132 - v14;
  sub_218D10EB4();
  v214[1] = v15;
  v214[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v213 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v212[1] = v17;
  v212[0] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v211 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v210[1] = v19;
  v210[0] = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v209 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v208[1] = v21;
  v208[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v207 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v206[1] = v23;
  v206[0] = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v205 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v204[1] = v25;
  v204[0] = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v203 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v202[1] = v27;
  v202[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v201 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v200[1] = v29;
  v200[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v199 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v198[1] = v31;
  v198[0] = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v197 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v196[1] = v33;
  v196[0] = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v195 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v194[1] = v35;
  v194[0] = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v193 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v192[1] = v37;
  v192[0] = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v191 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v190[1] = v39;
  v190[0] = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v189 = &v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v188[1] = v41;
  v188[0] = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v187 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v186[1] = v43;
  v186[0] = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v185 = &v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v184[1] = v45;
  v184[0] = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v183 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v182[1] = v47;
  v182[0] = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v181 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v180[1] = v49;
  v180[0] = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v179 = &v132 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v178[1] = v51;
  v178[0] = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v177 = &v132 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v176[1] = v53;
  v176[0] = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v175 = &v132 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v174[1] = v55;
  v174[0] = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v173 = &v132 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v172[1] = v57;
  v172[0] = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v171 = &v132 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v170 = v59;
  v169 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v168 = &v132 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v167 = v61;
  v166 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v165 = &v132 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v164 = v63;
  v163 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v162 = &v132 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v234 = *(v65 - 8);
  v235 = v65;
  MEMORY[0x28223BE20](v65);
  v233 = &v132 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194C0030();
  v161 = v67;
  v160 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v159 = &v132 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v158 = v69;
  v157 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v156 = &v132 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v155 = v71;
  v154 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v153 = &v132 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v152 = v73;
  v151 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v150 = &v132 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v149 = v75;
  v148 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v147 = &v132 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v146 = v77;
  v145 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v144 = &v132 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92480, sub_2197B8968, sub_2197B89BC);
  v143 = v79;
  v142 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v141 = &v132 - v80;
  sub_218A8750C();
  v140 = v81;
  v139 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v138 = &v132 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v137 = v83;
  v136 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v85 = &v132 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v87 = v86;
  v135 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v89 = &v132 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A8C();
  v91 = v90;
  v134 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v93 = &v132 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v95 = v94;
  v133 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v97 = &v132 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E923F0, sub_218A5944C, sub_218A594A0);
  v99 = v98;
  v100 = *(v98 - 8);
  v101 = MEMORY[0x28223BE20](a1);
  v103 = &v132 - v102;
  switch((v101 >> 58) & 0x3C | (v101 >> 1) & 3)
  {
    case 1uLL:
      v126 = swift_projectBox();
      v127 = v134;
      (*(v134 + 16))(v93, v126, v91);
      v115 = v236(v91);
      (*(v127 + 8))(v93, v91);
      return v115;
    case 2uLL:
      v119 = swift_projectBox();
      (*(v100 + 16))(v103, v119, v99);
      v115 = v236(v99);
      (*(v100 + 8))(v103, v99);
      return v115;
    case 3uLL:
      v120 = swift_projectBox();
      v121 = v135;
      (*(v135 + 16))(v89, v120, v87);
      v115 = v236(v87);
      v116 = *(v121 + 8);
      v117 = v89;
      goto LABEL_49;
    case 4uLL:
      v113 = swift_projectBox();
      v114 = v136;
      v87 = v137;
      (*(v136 + 16))(v85, v113, v137);
      v115 = v236(v87);
      v116 = *(v114 + 8);
      v117 = v85;
      goto LABEL_49;
    case 5uLL:
      v108 = swift_projectBox();
      v106 = v139;
      v109 = *(v139 + 16);
      v105 = v138;
      v110 = v138;
      v111 = v172;
      goto LABEL_47;
    case 6uLL:
      v108 = swift_projectBox();
      v106 = v142;
      v109 = *(v142 + 16);
      v105 = v141;
      v110 = v141;
      v111 = v174;
      goto LABEL_47;
    case 7uLL:
      v108 = swift_projectBox();
      v106 = v145;
      v109 = *(v145 + 16);
      v105 = v144;
      v110 = v144;
      v111 = v176;
      goto LABEL_47;
    case 8uLL:
      v108 = swift_projectBox();
      v106 = v148;
      v109 = *(v148 + 16);
      v105 = v147;
      v110 = v147;
      v111 = v178;
      goto LABEL_47;
    case 9uLL:
      v108 = swift_projectBox();
      v106 = v151;
      v109 = *(v151 + 16);
      v105 = v150;
      v110 = v150;
      v111 = v180;
      goto LABEL_47;
    case 0xAuLL:
      v108 = swift_projectBox();
      v106 = v157;
      v109 = *(v157 + 16);
      v105 = v156;
      v110 = v156;
      v111 = v184;
      goto LABEL_47;
    case 0xBuLL:
      v108 = swift_projectBox();
      v106 = v160;
      v109 = *(v160 + 16);
      v105 = v159;
      v110 = v159;
      v111 = v186;
      goto LABEL_47;
    case 0xCuLL:
      v108 = swift_projectBox();
      v106 = v154;
      v109 = *(v154 + 16);
      v105 = v153;
      v110 = v153;
      v111 = v182;
      goto LABEL_47;
    case 0xDuLL:
    case 0xEuLL:
      v104 = swift_projectBox();
      v105 = v233;
      v106 = v234;
      v87 = v235;
      (*(v234 + 16))(v233, v104, v235);
      goto LABEL_48;
    case 0xFuLL:
      v108 = swift_projectBox();
      v106 = v163;
      v109 = *(v163 + 16);
      v105 = v162;
      v110 = v162;
      v111 = v188;
      goto LABEL_47;
    case 0x10uLL:
      v108 = swift_projectBox();
      v106 = v166;
      v109 = *(v166 + 16);
      v105 = v165;
      v110 = v165;
      v111 = v190;
      goto LABEL_47;
    case 0x11uLL:
      v108 = swift_projectBox();
      v106 = v169;
      v109 = *(v169 + 16);
      v105 = v168;
      v110 = v168;
      v111 = v192;
      goto LABEL_47;
    case 0x12uLL:
      v108 = swift_projectBox();
      v106 = v172[0];
      v109 = *(v172[0] + 16);
      v105 = v171;
      v110 = v171;
      v111 = v194;
      goto LABEL_47;
    case 0x13uLL:
      v108 = swift_projectBox();
      v106 = v174[0];
      v109 = *(v174[0] + 16);
      v105 = v173;
      v110 = v173;
      v111 = v196;
      goto LABEL_47;
    case 0x14uLL:
      v108 = swift_projectBox();
      v106 = v176[0];
      v109 = *(v176[0] + 16);
      v105 = v175;
      v110 = v175;
      v111 = v198;
      goto LABEL_47;
    case 0x15uLL:
      v108 = swift_projectBox();
      v106 = v178[0];
      v109 = *(v178[0] + 16);
      v105 = v177;
      v110 = v177;
      v111 = v200;
      goto LABEL_47;
    case 0x16uLL:
      v108 = swift_projectBox();
      v106 = v180[0];
      v109 = *(v180[0] + 16);
      v105 = v179;
      v110 = v179;
      v111 = v202;
      goto LABEL_47;
    case 0x17uLL:
      v108 = swift_projectBox();
      v106 = v182[0];
      v109 = *(v182[0] + 16);
      v105 = v181;
      v110 = v181;
      v111 = v204;
      goto LABEL_47;
    case 0x18uLL:
      v108 = swift_projectBox();
      v106 = v184[0];
      v109 = *(v184[0] + 16);
      v105 = v183;
      v110 = v183;
      v111 = v206;
      goto LABEL_47;
    case 0x19uLL:
      v108 = swift_projectBox();
      v106 = v186[0];
      v109 = *(v186[0] + 16);
      v105 = v185;
      v110 = v185;
      v111 = v208;
      goto LABEL_47;
    case 0x1AuLL:
      v108 = swift_projectBox();
      v106 = v188[0];
      v109 = *(v188[0] + 16);
      v105 = v187;
      v110 = v187;
      v111 = v210;
      goto LABEL_47;
    case 0x1BuLL:
      v108 = swift_projectBox();
      v106 = v190[0];
      v109 = *(v190[0] + 16);
      v105 = v189;
      v110 = v189;
      v111 = v212;
      goto LABEL_47;
    case 0x1CuLL:
      v108 = swift_projectBox();
      v106 = v192[0];
      v109 = *(v192[0] + 16);
      v105 = v191;
      v110 = v191;
      v111 = v214;
      goto LABEL_47;
    case 0x1DuLL:
      v108 = swift_projectBox();
      v106 = v194[0];
      v109 = *(v194[0] + 16);
      v105 = v193;
      v110 = v193;
      v111 = &v216;
      goto LABEL_47;
    case 0x1EuLL:
      v108 = swift_projectBox();
      v106 = v196[0];
      v109 = *(v196[0] + 16);
      v105 = v195;
      v110 = v195;
      v111 = &v219;
      goto LABEL_47;
    case 0x1FuLL:
      v108 = swift_projectBox();
      v106 = v198[0];
      v109 = *(v198[0] + 16);
      v105 = v197;
      v110 = v197;
      v111 = &v222;
      goto LABEL_47;
    case 0x20uLL:
      v108 = swift_projectBox();
      v106 = v200[0];
      v109 = *(v200[0] + 16);
      v105 = v199;
      v110 = v199;
      v111 = &v225;
      goto LABEL_47;
    case 0x21uLL:
      v108 = swift_projectBox();
      v106 = v202[0];
      v109 = *(v202[0] + 16);
      v105 = v201;
      v110 = v201;
      v111 = &v228;
      goto LABEL_47;
    case 0x22uLL:
      v108 = swift_projectBox();
      v106 = v204[0];
      v109 = *(v204[0] + 16);
      v105 = v203;
      v110 = v203;
      v111 = &v231;
      goto LABEL_47;
    case 0x23uLL:
      v108 = swift_projectBox();
      v106 = v206[0];
      v109 = *(v206[0] + 16);
      v105 = v205;
      v110 = v205;
      v111 = &v234;
      goto LABEL_47;
    case 0x24uLL:
      v108 = swift_projectBox();
      v106 = v208[0];
      v109 = *(v208[0] + 16);
      v105 = v207;
      v110 = v207;
      v111 = &v237;
      goto LABEL_47;
    case 0x25uLL:
      v108 = swift_projectBox();
      v106 = v210[0];
      v109 = *(v210[0] + 16);
      v105 = v209;
      v110 = v209;
      v111 = &v238;
      goto LABEL_47;
    case 0x26uLL:
      v108 = swift_projectBox();
      v106 = v212[0];
      v109 = *(v212[0] + 16);
      v105 = v211;
      v110 = v211;
      v111 = &v239;
      goto LABEL_47;
    case 0x27uLL:
      v108 = swift_projectBox();
      v106 = v214[0];
      v109 = *(v214[0] + 16);
      v105 = v213;
      v110 = v213;
      v111 = &v240;
LABEL_47:
      v87 = *(v111 - 32);
      v109(v110, v108, v87);
      goto LABEL_48;
    case 0x28uLL:
      v118 = swift_projectBox();
      v106 = v216;
      v87 = v217;
      v105 = v215;
      (*(v216 + 16))(v215, v118, v217);
      goto LABEL_48;
    case 0x29uLL:
      v128 = swift_projectBox();
      v105 = v218;
      v106 = v219;
      v87 = v220;
      (*(v219 + 16))(v218, v128, v220);
      goto LABEL_48;
    case 0x2AuLL:
      v130 = swift_projectBox();
      v105 = v221;
      v106 = v222;
      v87 = v223;
      (*(v222 + 16))(v221, v130, v223);
      goto LABEL_48;
    case 0x2BuLL:
      v107 = swift_projectBox();
      v105 = v224;
      v106 = v225;
      v87 = v226;
      (*(v225 + 16))(v224, v107, v226);
      goto LABEL_48;
    case 0x2CuLL:
      v112 = swift_projectBox();
      v105 = v227;
      v106 = v228;
      v87 = v229;
      (*(v228 + 16))(v227, v112, v229);
      goto LABEL_48;
    case 0x2DuLL:
      v129 = swift_projectBox();
      v105 = v230;
      v106 = v231;
      v87 = v232;
      (*(v231 + 16))(v230, v129, v232);
LABEL_48:
      v115 = v236(v87);
      v116 = *(v106 + 8);
      v117 = v105;
LABEL_49:
      v116(v117, v87);
      break;
    default:
      v122 = swift_projectBox();
      v123 = v133;
      (*(v133 + 16))(v97, v122, v95);
      v124 = v236(v95);
      v125 = v95;
      v115 = v124;
      (*(v123 + 8))(v97, v125);
      break;
  }

  return v115;
}

uint64_t sub_2197AB118@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v234 = a3;
  v235 = a2;
  sub_21937E158();
  v229 = *(v4 - 8);
  v230 = v4;
  MEMORY[0x28223BE20](v4);
  v228 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v226 = *(v6 - 8);
  v227 = v6;
  MEMORY[0x28223BE20](v6);
  v225 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v223 = *(v8 - 8);
  v224 = v8;
  MEMORY[0x28223BE20](v8);
  v222 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v220 = *(v10 - 8);
  v221 = v10;
  MEMORY[0x28223BE20](v10);
  v219 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v217 = *(v12 - 8);
  v218 = v12;
  MEMORY[0x28223BE20](v12);
  v216 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92458, sub_218B00BC0, sub_218B00C14);
  v215 = v14;
  v214 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v213 = &v131 - v15;
  sub_218D10EB4();
  v212[1] = v16;
  v212[0] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v211 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v210[1] = v18;
  v210[0] = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v209 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v208[1] = v20;
  v208[0] = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v207 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v206[1] = v22;
  v206[0] = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v205 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v204[1] = v24;
  v204[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v203 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v202[1] = v26;
  v202[0] = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v201 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v200[1] = v28;
  v200[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v199 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v198[1] = v30;
  v198[0] = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v197 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v196[1] = v32;
  v196[0] = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v195 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v194[1] = v34;
  v194[0] = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v193 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v192[1] = v36;
  v192[0] = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v191 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v190[1] = v38;
  v190[0] = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v189 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v188[1] = v40;
  v188[0] = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v187 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v186[1] = v42;
  v186[0] = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v185 = &v131 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v184[1] = v44;
  v184[0] = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v183 = &v131 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v182[1] = v46;
  v182[0] = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v181 = &v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v180[1] = v48;
  v180[0] = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v179 = &v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v178[1] = v50;
  v178[0] = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v177 = &v131 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v176[1] = v52;
  v176[0] = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v175 = &v131 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v174[1] = v54;
  v174[0] = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v173 = &v131 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v172[1] = v56;
  v172[0] = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v171 = &v131 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v170[1] = v58;
  v170[0] = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v169 = &v131 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v168 = v60;
  v167 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v166 = &v131 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v165 = v62;
  v164 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v163 = &v131 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v162 = v64;
  v161 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v160 = &v131 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v232 = *(v66 - 8);
  v233 = v66;
  MEMORY[0x28223BE20](v66);
  v231 = &v131 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194C0030();
  v159 = v68;
  v158 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v157 = &v131 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v156 = v70;
  v155 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v154 = &v131 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v153 = v72;
  v152 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v151 = &v131 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v150 = v74;
  v149 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v148 = &v131 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v147 = v76;
  v146 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v145 = &v131 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v144 = v78;
  v143 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v142 = &v131 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92480, sub_2197B8968, sub_2197B89BC);
  v141 = v80;
  v140 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v139 = &v131 - v81;
  sub_218A8750C();
  v138 = v82;
  v137 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v136 = &v131 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v135 = v84;
  v134 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v86 = &v131 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v88 = v87;
  v133 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = &v131 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A8C();
  v92 = v91;
  v132 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v94 = &v131 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v96 = v95;
  v131 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v98 = &v131 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E923F0, sub_218A5944C, sub_218A594A0);
  v100 = v99;
  v101 = *(v99 - 8);
  v102 = MEMORY[0x28223BE20](a1);
  v104 = &v131 - v103;
  switch((v102 >> 58) & 0x3C | (v102 >> 1) & 3)
  {
    case 1uLL:
      v126 = swift_projectBox();
      v127 = v132;
      (*(v132 + 16))(v94, v126, v92);
      v235(v92);
      return (*(v127 + 8))(v94, v92);
    case 2uLL:
      v120 = swift_projectBox();
      (*(v101 + 16))(v104, v120, v100);
      v235(v100);
      return (*(v101 + 8))(v104, v100);
    case 3uLL:
      v122 = swift_projectBox();
      v123 = v133;
      (*(v133 + 16))(v90, v122, v88);
      v235(v88);
      return (*(v123 + 8))(v90, v88);
    case 4uLL:
      v115 = swift_projectBox();
      v116 = v134;
      v108 = v135;
      (*(v134 + 16))(v86, v115, v135);
      v235(v108);
      v117 = *(v116 + 8);
      v118 = v86;
      goto LABEL_49;
    case 5uLL:
      v110 = swift_projectBox();
      v107 = v137;
      v111 = *(v137 + 16);
      v106 = v136;
      v112 = v136;
      v113 = v170;
      goto LABEL_47;
    case 6uLL:
      v110 = swift_projectBox();
      v107 = v140;
      v111 = *(v140 + 16);
      v106 = v139;
      v112 = v139;
      v113 = v172;
      goto LABEL_47;
    case 7uLL:
      v110 = swift_projectBox();
      v107 = v143;
      v111 = *(v143 + 16);
      v106 = v142;
      v112 = v142;
      v113 = v174;
      goto LABEL_47;
    case 8uLL:
      v110 = swift_projectBox();
      v107 = v146;
      v111 = *(v146 + 16);
      v106 = v145;
      v112 = v145;
      v113 = v176;
      goto LABEL_47;
    case 9uLL:
      v110 = swift_projectBox();
      v107 = v149;
      v111 = *(v149 + 16);
      v106 = v148;
      v112 = v148;
      v113 = v178;
      goto LABEL_47;
    case 0xAuLL:
      v110 = swift_projectBox();
      v107 = v155;
      v111 = *(v155 + 16);
      v106 = v154;
      v112 = v154;
      v113 = v182;
      goto LABEL_47;
    case 0xBuLL:
      v110 = swift_projectBox();
      v107 = v158;
      v111 = *(v158 + 16);
      v106 = v157;
      v112 = v157;
      v113 = v184;
      goto LABEL_47;
    case 0xCuLL:
      v110 = swift_projectBox();
      v107 = v152;
      v111 = *(v152 + 16);
      v106 = v151;
      v112 = v151;
      v113 = v180;
      goto LABEL_47;
    case 0xDuLL:
    case 0xEuLL:
      v105 = swift_projectBox();
      v106 = v231;
      v107 = v232;
      v108 = v233;
      (*(v232 + 16))(v231, v105, v233);
      goto LABEL_48;
    case 0xFuLL:
      v110 = swift_projectBox();
      v107 = v161;
      v111 = *(v161 + 16);
      v106 = v160;
      v112 = v160;
      v113 = v186;
      goto LABEL_47;
    case 0x10uLL:
      v110 = swift_projectBox();
      v107 = v164;
      v111 = *(v164 + 16);
      v106 = v163;
      v112 = v163;
      v113 = v188;
      goto LABEL_47;
    case 0x11uLL:
      v110 = swift_projectBox();
      v107 = v167;
      v111 = *(v167 + 16);
      v106 = v166;
      v112 = v166;
      v113 = v190;
      goto LABEL_47;
    case 0x12uLL:
      v110 = swift_projectBox();
      v107 = v170[0];
      v111 = *(v170[0] + 16);
      v106 = v169;
      v112 = v169;
      v113 = v192;
      goto LABEL_47;
    case 0x13uLL:
      v110 = swift_projectBox();
      v107 = v172[0];
      v111 = *(v172[0] + 16);
      v106 = v171;
      v112 = v171;
      v113 = v194;
      goto LABEL_47;
    case 0x14uLL:
      v110 = swift_projectBox();
      v107 = v174[0];
      v111 = *(v174[0] + 16);
      v106 = v173;
      v112 = v173;
      v113 = v196;
      goto LABEL_47;
    case 0x15uLL:
      v110 = swift_projectBox();
      v107 = v176[0];
      v111 = *(v176[0] + 16);
      v106 = v175;
      v112 = v175;
      v113 = v198;
      goto LABEL_47;
    case 0x16uLL:
      v110 = swift_projectBox();
      v107 = v178[0];
      v111 = *(v178[0] + 16);
      v106 = v177;
      v112 = v177;
      v113 = v200;
      goto LABEL_47;
    case 0x17uLL:
      v110 = swift_projectBox();
      v107 = v180[0];
      v111 = *(v180[0] + 16);
      v106 = v179;
      v112 = v179;
      v113 = v202;
      goto LABEL_47;
    case 0x18uLL:
      v110 = swift_projectBox();
      v107 = v182[0];
      v111 = *(v182[0] + 16);
      v106 = v181;
      v112 = v181;
      v113 = v204;
      goto LABEL_47;
    case 0x19uLL:
      v110 = swift_projectBox();
      v107 = v184[0];
      v111 = *(v184[0] + 16);
      v106 = v183;
      v112 = v183;
      v113 = v206;
      goto LABEL_47;
    case 0x1AuLL:
      v110 = swift_projectBox();
      v107 = v186[0];
      v111 = *(v186[0] + 16);
      v106 = v185;
      v112 = v185;
      v113 = v208;
      goto LABEL_47;
    case 0x1BuLL:
      v110 = swift_projectBox();
      v107 = v188[0];
      v111 = *(v188[0] + 16);
      v106 = v187;
      v112 = v187;
      v113 = v210;
      goto LABEL_47;
    case 0x1CuLL:
      v110 = swift_projectBox();
      v107 = v190[0];
      v111 = *(v190[0] + 16);
      v106 = v189;
      v112 = v189;
      v113 = v212;
      goto LABEL_47;
    case 0x1DuLL:
      v110 = swift_projectBox();
      v107 = v192[0];
      v111 = *(v192[0] + 16);
      v106 = v191;
      v112 = v191;
      v113 = &v214;
      goto LABEL_47;
    case 0x1EuLL:
      v110 = swift_projectBox();
      v107 = v194[0];
      v111 = *(v194[0] + 16);
      v106 = v193;
      v112 = v193;
      v113 = &v217;
      goto LABEL_47;
    case 0x1FuLL:
      v110 = swift_projectBox();
      v107 = v196[0];
      v111 = *(v196[0] + 16);
      v106 = v195;
      v112 = v195;
      v113 = &v220;
      goto LABEL_47;
    case 0x20uLL:
      v110 = swift_projectBox();
      v107 = v198[0];
      v111 = *(v198[0] + 16);
      v106 = v197;
      v112 = v197;
      v113 = &v223;
      goto LABEL_47;
    case 0x21uLL:
      v110 = swift_projectBox();
      v107 = v200[0];
      v111 = *(v200[0] + 16);
      v106 = v199;
      v112 = v199;
      v113 = &v226;
      goto LABEL_47;
    case 0x22uLL:
      v110 = swift_projectBox();
      v107 = v202[0];
      v111 = *(v202[0] + 16);
      v106 = v201;
      v112 = v201;
      v113 = &v229;
      goto LABEL_47;
    case 0x23uLL:
      v110 = swift_projectBox();
      v107 = v204[0];
      v111 = *(v204[0] + 16);
      v106 = v203;
      v112 = v203;
      v113 = &v232;
      goto LABEL_47;
    case 0x24uLL:
      v110 = swift_projectBox();
      v107 = v206[0];
      v111 = *(v206[0] + 16);
      v106 = v205;
      v112 = v205;
      v113 = &v235;
      goto LABEL_47;
    case 0x25uLL:
      v110 = swift_projectBox();
      v107 = v208[0];
      v111 = *(v208[0] + 16);
      v106 = v207;
      v112 = v207;
      v113 = &v236;
      goto LABEL_47;
    case 0x26uLL:
      v110 = swift_projectBox();
      v107 = v210[0];
      v111 = *(v210[0] + 16);
      v106 = v209;
      v112 = v209;
      v113 = &v237;
      goto LABEL_47;
    case 0x27uLL:
      v110 = swift_projectBox();
      v107 = v212[0];
      v111 = *(v212[0] + 16);
      v106 = v211;
      v112 = v211;
      v113 = &v238;
LABEL_47:
      v108 = *(v113 - 32);
      v111(v112, v110, v108);
      goto LABEL_48;
    case 0x28uLL:
      v119 = swift_projectBox();
      v107 = v214;
      v106 = v213;
      v108 = v215;
      (*(v214 + 16))(v213, v119, v215);
      goto LABEL_48;
    case 0x29uLL:
      v128 = swift_projectBox();
      v106 = v216;
      v107 = v217;
      v108 = v218;
      (*(v217 + 16))(v216, v128, v218);
      goto LABEL_48;
    case 0x2AuLL:
      v130 = swift_projectBox();
      v106 = v219;
      v107 = v220;
      v108 = v221;
      (*(v220 + 16))(v219, v130, v221);
      goto LABEL_48;
    case 0x2BuLL:
      v109 = swift_projectBox();
      v106 = v222;
      v107 = v223;
      v108 = v224;
      (*(v223 + 16))(v222, v109, v224);
      goto LABEL_48;
    case 0x2CuLL:
      v114 = swift_projectBox();
      v106 = v225;
      v107 = v226;
      v108 = v227;
      (*(v226 + 16))(v225, v114, v227);
      goto LABEL_48;
    case 0x2DuLL:
      v129 = swift_projectBox();
      v106 = v228;
      v107 = v229;
      v108 = v230;
      (*(v229 + 16))(v228, v129, v230);
LABEL_48:
      v235(v108);
      v117 = *(v107 + 8);
      v118 = v106;
LABEL_49:
      result = v117(v118, v108);
      break;
    default:
      v124 = swift_projectBox();
      v125 = v131;
      (*(v131 + 16))(v98, v124, v96);
      v235(v96);
      result = (*(v125 + 8))(v98, v96);
      break;
  }

  return result;
}

uint64_t sub_2197AD354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2189A150C();

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

unint64_t sub_2197AD3B4()
{
  result = qword_280ED2868;
  if (!qword_280ED2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2868);
  }

  return result;
}

unint64_t sub_2197AD40C()
{
  result = qword_280ED2878;
  if (!qword_280ED2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2878);
  }

  return result;
}

uint64_t sub_2197AD460(char a1)
{
  result = 0x4C656C6369747261;
  switch(a1)
  {
    case 1:
    case 27:
    case 31:
      return 0xD000000000000013;
    case 2:
      return 0x73694C6575737369;
    case 3:
      return 0x536C656E6E616863;
    case 4:
      return 0xD000000000000017;
    case 5:
      return 0x72656874616577;
    case 6:
      return 0x6C6C6177796170;
    case 7:
      return 0x64657461727563;
    case 8:
      return 0x65527374726F7073;
    case 9:
      return 0xD000000000000010;
    case 10:
      return 0x63537374726F7073;
    case 11:
      return 0x74537374726F7073;
    case 12:
      return 0x72427374726F7073;
    case 13:
      return 0xD000000000000010;
    case 14:
      return 0x61467374726F7073;
    case 15:
      return 0x63537374726F7073;
    case 16:
    case 23:
    case 36:
      return 0xD000000000000015;
    case 17:
      return 0x7374726F7053796DLL;
    case 18:
      return 0x6867696C68676968;
    case 19:
      return 0x756F59726F66;
    case 20:
      return 0x526C656E6E616863;
    case 21:
      v4 = 0x756F59726F66;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
    case 22:
      return 0x7453746E65636572;
    case 24:
      return 0x676E615265746164;
    case 25:
      return 0x6F427374726F7073;
    case 26:
      return 0x76457374726F7073;
    case 28:
      return 0x694C7374726F7073;
    case 29:
      return 0xD000000000000010;
    case 30:
      return 0xD000000000000010;
    case 32:
      return 0x614D7374726F7073;
    case 33:
      return 0xD000000000000010;
    case 34:
      return 0x694C656C7A7A7570;
    case 35:
      return 0x7241656C7A7A7570;
    case 37:
      return 0x6546656C7A7A7570;
    case 38:
      return 0xD000000000000011;
    case 39:
      return 0xD000000000000010;
    case 40:
      return 0x7974696E69666661;
    case 41:
      return 0x65726F736E6F7073;
    case 42:
      v4 = 0x74736574616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
    case 43:
      v3 = 0x526465766173;
      goto LABEL_34;
    case 44:
      return 0x676E69646E657274;
    case 45:
      v3 = 0x526369706F74;
LABEL_34:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2197AD9AC(uint64_t a1)
{
  v237[1] = a1;
  sub_21937E158();
  v234 = *(v1 - 8);
  v235 = v1;
  MEMORY[0x28223BE20](v1);
  v233 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v231 = *(v3 - 8);
  v232 = v3;
  MEMORY[0x28223BE20](v3);
  v230 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v228 = *(v5 - 8);
  v229 = v5;
  MEMORY[0x28223BE20](v5);
  v227 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v225 = *(v7 - 8);
  v226 = v7;
  MEMORY[0x28223BE20](v7);
  v224 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v222 = *(v9 - 8);
  v223 = v9;
  MEMORY[0x28223BE20](v9);
  v221 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92458, sub_218B00BC0, sub_218B00C14);
  v219 = *(v11 - 8);
  v220 = v11;
  MEMORY[0x28223BE20](v11);
  v218 = &v125 - v12;
  sub_218D10EB4();
  v217[1] = v13;
  v217[0] = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v216 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v215[1] = v15;
  v215[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v214 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v213[1] = v17;
  v213[0] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v212 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v211[1] = v19;
  v211[0] = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v210 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v209[1] = v21;
  v209[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v208 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v207[1] = v23;
  v207[0] = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v206 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v205[1] = v25;
  v205[0] = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v204 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v203[1] = v27;
  v203[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v202 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v201[1] = v29;
  v201[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v200 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v199[1] = v31;
  v199[0] = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v198 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v197[1] = v33;
  v197[0] = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v196 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v195[1] = v35;
  v195[0] = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v194 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v193[1] = v37;
  v193[0] = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v192 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v191[1] = v39;
  v191[0] = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v190 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v189[1] = v41;
  v189[0] = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v188 = &v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v187 = v43;
  v186 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v185 = &v125 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v184 = v45;
  v183 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v182 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v181 = v47;
  v180 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v179 = &v125 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v178 = v49;
  v177 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v176 = &v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v175 = v51;
  v174 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v173 = &v125 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v172 = v53;
  v171 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v170 = &v125 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v169 = v55;
  v168 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v167 = &v125 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v166 = v57;
  v165 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v164 = &v125 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v163 = v59;
  v162 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v161 = &v125 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v160 = v61;
  v159 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v158 = &v125 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v236 = *(v63 - 8);
  v237[0] = v63;
  v64 = MEMORY[0x28223BE20](v63);
  v157 = &v125 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v156 = &v125 - v66;
  sub_2194C0030();
  v155 = v67;
  v154 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v153 = &v125 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v152 = v69;
  v151 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v150 = &v125 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v149 = v71;
  v148 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v147 = &v125 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v146 = v73;
  v145 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v144 = &v125 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v143 = v75;
  v142 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v141 = &v125 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v140 = v77;
  v139 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v138 = &v125 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92480, sub_2197B8968, sub_2197B89BC);
  v137 = v79;
  v136 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v135 = &v125 - v80;
  sub_218A8750C();
  v134 = v81;
  v133 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v132 = &v125 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v131 = v83;
  v130 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v129 = &v125 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v126 = v85;
  v128 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v87 = &v125 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E923F0, sub_218A5944C, sub_218A594A0);
  v89 = v88;
  v127 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v91 = &v125 - v90;
  sub_2197B8A8C();
  v93 = v92;
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v96 = &v125 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v98 = v97;
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v101 = &v125 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v102 >> 58) & 0x3C | (v102 >> 1) & 3)
  {
    case 1uLL:
      v121 = swift_projectBox();
      (*(v94 + 16))(v96, v121, v93);
      sub_219BEDD64();
      return (*(v94 + 8))(v96, v93);
    case 2uLL:
      v116 = swift_projectBox();
      v117 = v127;
      (*(v127 + 16))(v91, v116, v89);
      sub_219BEDD64();
      return (*(v117 + 8))(v91, v89);
    case 3uLL:
      v118 = swift_projectBox();
      v119 = v128;
      v120 = v126;
      (*(v128 + 16))(v87, v118, v126);
      sub_219BEDD64();
      return (*(v119 + 8))(v87, v120);
    case 4uLL:
      v109 = swift_projectBox();
      v107 = v130;
      v110 = *(v130 + 16);
      v106 = v129;
      v111 = v129;
      v112 = &v163;
      goto LABEL_49;
    case 5uLL:
      v109 = swift_projectBox();
      v107 = v133;
      v110 = *(v133 + 16);
      v106 = v132;
      v111 = v132;
      v112 = &v166;
      goto LABEL_49;
    case 6uLL:
      v109 = swift_projectBox();
      v107 = v136;
      v110 = *(v136 + 16);
      v106 = v135;
      v111 = v135;
      v112 = &v169;
      goto LABEL_49;
    case 7uLL:
      v109 = swift_projectBox();
      v107 = v139;
      v110 = *(v139 + 16);
      v106 = v138;
      v111 = v138;
      v112 = &v172;
      goto LABEL_49;
    case 8uLL:
      v109 = swift_projectBox();
      v107 = v142;
      v110 = *(v142 + 16);
      v106 = v141;
      v111 = v141;
      v112 = &v175;
      goto LABEL_49;
    case 9uLL:
      v109 = swift_projectBox();
      v107 = v145;
      v110 = *(v145 + 16);
      v106 = v144;
      v111 = v144;
      v112 = &v178;
      goto LABEL_49;
    case 0xAuLL:
      v109 = swift_projectBox();
      v107 = v151;
      v110 = *(v151 + 16);
      v106 = v150;
      v111 = v150;
      v112 = &v184;
      goto LABEL_49;
    case 0xBuLL:
      v109 = swift_projectBox();
      v107 = v154;
      v110 = *(v154 + 16);
      v106 = v153;
      v111 = v153;
      v112 = &v187;
      goto LABEL_49;
    case 0xCuLL:
      v109 = swift_projectBox();
      v107 = v148;
      v110 = *(v148 + 16);
      v106 = v147;
      v111 = v147;
      v112 = &v181;
      goto LABEL_49;
    case 0xDuLL:
      v109 = swift_projectBox();
      v107 = v236;
      v110 = *(v236 + 16);
      v114 = &v188;
      goto LABEL_32;
    case 0xEuLL:
      v109 = swift_projectBox();
      v107 = v236;
      v110 = *(v236 + 16);
      v114 = v189;
LABEL_32:
      v106 = *(v114 - 32);
      v111 = v106;
      v108 = v237[0];
      goto LABEL_50;
    case 0xFuLL:
      v109 = swift_projectBox();
      v107 = v159;
      v110 = *(v159 + 16);
      v106 = v158;
      v111 = v158;
      v112 = v191;
      goto LABEL_49;
    case 0x10uLL:
      v109 = swift_projectBox();
      v107 = v162;
      v110 = *(v162 + 16);
      v106 = v161;
      v111 = v161;
      v112 = v193;
      goto LABEL_49;
    case 0x11uLL:
      v109 = swift_projectBox();
      v107 = v165;
      v110 = *(v165 + 16);
      v106 = v164;
      v111 = v164;
      v112 = v195;
      goto LABEL_49;
    case 0x12uLL:
      v109 = swift_projectBox();
      v107 = v168;
      v110 = *(v168 + 16);
      v106 = v167;
      v111 = v167;
      v112 = v197;
      goto LABEL_49;
    case 0x13uLL:
      v109 = swift_projectBox();
      v107 = v171;
      v110 = *(v171 + 16);
      v106 = v170;
      v111 = v170;
      v112 = v199;
      goto LABEL_49;
    case 0x14uLL:
      v109 = swift_projectBox();
      v107 = v174;
      v110 = *(v174 + 16);
      v106 = v173;
      v111 = v173;
      v112 = v201;
      goto LABEL_49;
    case 0x15uLL:
      v109 = swift_projectBox();
      v107 = v177;
      v110 = *(v177 + 16);
      v106 = v176;
      v111 = v176;
      v112 = v203;
      goto LABEL_49;
    case 0x16uLL:
      v109 = swift_projectBox();
      v107 = v180;
      v110 = *(v180 + 16);
      v106 = v179;
      v111 = v179;
      v112 = v205;
      goto LABEL_49;
    case 0x17uLL:
      v109 = swift_projectBox();
      v107 = v183;
      v110 = *(v183 + 16);
      v106 = v182;
      v111 = v182;
      v112 = v207;
      goto LABEL_49;
    case 0x18uLL:
      v109 = swift_projectBox();
      v107 = v186;
      v110 = *(v186 + 16);
      v106 = v185;
      v111 = v185;
      v112 = v209;
      goto LABEL_49;
    case 0x19uLL:
      v109 = swift_projectBox();
      v107 = v189[0];
      v110 = *(v189[0] + 16);
      v106 = v188;
      v111 = v188;
      v112 = v211;
      goto LABEL_49;
    case 0x1AuLL:
      v109 = swift_projectBox();
      v107 = v191[0];
      v110 = *(v191[0] + 16);
      v106 = v190;
      v111 = v190;
      v112 = v213;
      goto LABEL_49;
    case 0x1BuLL:
      v109 = swift_projectBox();
      v107 = v193[0];
      v110 = *(v193[0] + 16);
      v106 = v192;
      v111 = v192;
      v112 = v215;
      goto LABEL_49;
    case 0x1CuLL:
      v109 = swift_projectBox();
      v107 = v195[0];
      v110 = *(v195[0] + 16);
      v106 = v194;
      v111 = v194;
      v112 = v217;
      goto LABEL_49;
    case 0x1DuLL:
      v109 = swift_projectBox();
      v107 = v197[0];
      v110 = *(v197[0] + 16);
      v106 = v196;
      v111 = v196;
      v112 = &v219;
      goto LABEL_49;
    case 0x1EuLL:
      v109 = swift_projectBox();
      v107 = v199[0];
      v110 = *(v199[0] + 16);
      v106 = v198;
      v111 = v198;
      v112 = &v222;
      goto LABEL_49;
    case 0x1FuLL:
      v109 = swift_projectBox();
      v107 = v201[0];
      v110 = *(v201[0] + 16);
      v106 = v200;
      v111 = v200;
      v112 = &v225;
      goto LABEL_49;
    case 0x20uLL:
      v109 = swift_projectBox();
      v107 = v203[0];
      v110 = *(v203[0] + 16);
      v106 = v202;
      v111 = v202;
      v112 = &v228;
      goto LABEL_49;
    case 0x21uLL:
      v109 = swift_projectBox();
      v107 = v205[0];
      v110 = *(v205[0] + 16);
      v106 = v204;
      v111 = v204;
      v112 = &v231;
      goto LABEL_49;
    case 0x22uLL:
      v109 = swift_projectBox();
      v107 = v207[0];
      v110 = *(v207[0] + 16);
      v106 = v206;
      v111 = v206;
      v112 = &v234;
      goto LABEL_49;
    case 0x23uLL:
      v109 = swift_projectBox();
      v107 = v209[0];
      v110 = *(v209[0] + 16);
      v106 = v208;
      v111 = v208;
      v112 = v237;
      goto LABEL_49;
    case 0x24uLL:
      v109 = swift_projectBox();
      v107 = v211[0];
      v110 = *(v211[0] + 16);
      v106 = v210;
      v111 = v210;
      v112 = &v238;
      goto LABEL_49;
    case 0x25uLL:
      v109 = swift_projectBox();
      v107 = v213[0];
      v110 = *(v213[0] + 16);
      v106 = v212;
      v111 = v212;
      v112 = &v239;
      goto LABEL_49;
    case 0x26uLL:
      v109 = swift_projectBox();
      v107 = v215[0];
      v110 = *(v215[0] + 16);
      v106 = v214;
      v111 = v214;
      v112 = &v240;
      goto LABEL_49;
    case 0x27uLL:
      v109 = swift_projectBox();
      v107 = v217[0];
      v110 = *(v217[0] + 16);
      v106 = v216;
      v111 = v216;
      v112 = &v241;
LABEL_49:
      v108 = *(v112 - 32);
LABEL_50:
      v110(v111, v109, v108);
      goto LABEL_51;
    case 0x28uLL:
      v115 = swift_projectBox();
      v106 = v218;
      v107 = v219;
      v108 = v220;
      (*(v219 + 16))(v218, v115, v220);
      goto LABEL_51;
    case 0x29uLL:
      v122 = swift_projectBox();
      v106 = v221;
      v107 = v222;
      v108 = v223;
      (*(v222 + 16))(v221, v122, v223);
      goto LABEL_51;
    case 0x2AuLL:
      v124 = swift_projectBox();
      v106 = v224;
      v107 = v225;
      v108 = v226;
      (*(v225 + 16))(v224, v124, v226);
      goto LABEL_51;
    case 0x2BuLL:
      v105 = swift_projectBox();
      v106 = v227;
      v107 = v228;
      v108 = v229;
      (*(v228 + 16))(v227, v105, v229);
      goto LABEL_51;
    case 0x2CuLL:
      v113 = swift_projectBox();
      v106 = v230;
      v107 = v231;
      v108 = v232;
      (*(v231 + 16))(v230, v113, v232);
      goto LABEL_51;
    case 0x2DuLL:
      v123 = swift_projectBox();
      v106 = v233;
      v107 = v234;
      v108 = v235;
      (*(v234 + 16))(v233, v123, v235);
LABEL_51:
      sub_219BEDD64();
      result = (*(v107 + 8))(v106, v108);
      break;
    default:
      v103 = swift_projectBox();
      (*(v99 + 16))(v101, v103, v98);
      sub_219BEDD64();
      result = (*(v99 + 8))(v101, v98);
      break;
  }

  return result;
}

uint64_t sub_2197AFC2C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2197AFC80@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2197AFCD8(uint64_t a1)
{
  v2 = sub_2197B8BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197AFD14(uint64_t a1)
{
  v2 = sub_2197B8BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197AFD50(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2197AD460(*a1);
  v5 = v4;
  if (v3 == sub_2197AD460(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_2197AFDD8()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_2197AD460(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2197AFE3C()
{
  sub_2197AD460(*v0);
  sub_219BF5524();
}

uint64_t sub_2197AFE90()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_2197AD460(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2197AFEF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2197B8ED8();
  *a1 = result;
  return result;
}

uint64_t sub_2197AFF20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2197AD460(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2197AFFFC@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_2197B3B54(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2197B0044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v528 = a2;
  v521 = type metadata accessor for TopicRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v521);
  v522 = &v332 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937E158();
  v519 = *(v4 - 8);
  v520 = v4;
  MEMORY[0x28223BE20](v4);
  v517 = &v332 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = type metadata accessor for TrendingRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v516);
  v518 = &v332 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v514 = *(v7 - 8);
  v515 = v7;
  MEMORY[0x28223BE20](v7);
  v512 = &v332 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = type metadata accessor for SavedRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v511);
  v513 = &v332 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v509 = *(v10 - 8);
  v510 = v10;
  MEMORY[0x28223BE20](v10);
  v507 = &v332 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v506 = type metadata accessor for LatestRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v506);
  v508 = &v332 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v505 = v13;
  v504 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v502 = &v332 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = type metadata accessor for SponsoredBannerTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v501);
  v503 = &v332 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v500 = v16;
  v499 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v497 = &v332 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v496);
  v498 = &v332 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D10EB4();
  v495 = v19;
  v494 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v492 = &v332 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v491);
  v493 = &v332 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v490 = v22;
  v489 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v487 = &v332 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v486 = type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v486);
  v488 = &v332 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v485 = v25;
  v484 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v482 = &v332 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v481);
  v483 = &v332 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v480 = v28;
  v479 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v477 = &v332 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = type metadata accessor for PuzzleArchiveTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v476);
  v478 = &v332 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v475 = v31;
  v474 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v472 = &v332 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = type metadata accessor for PuzzleListTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v471);
  v473 = &v332 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v470 = v34;
  v469 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v467 = &v332 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = type metadata accessor for SportsEventTopicTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v466);
  v468 = &v332 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v465 = v37;
  v464 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v462 = &v332 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for SportsMastheadTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v461);
  v463 = &v332 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v460 = v40;
  v459 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v457 = &v332 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = type metadata accessor for SportsOnboardingTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v456);
  v458 = &v332 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v455 = v43;
  v454 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v452 = &v332 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v451 = type metadata accessor for DateRangeTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v451);
  v453 = &v332 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v450 = v46;
  v449 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v447 = &v332 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v446);
  v448 = &v332 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v445 = v49;
  v444 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v442 = &v332 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = type metadata accessor for RecentStoriesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v441);
  v443 = &v332 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v440 = v52;
  v439 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v437 = &v332 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = type metadata accessor for ForYouRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v436);
  v438 = &v332 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v435 = v55;
  v434 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v432 = &v332 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = type metadata accessor for ChannelRecipesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v431);
  v433 = &v332 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v430 = v58;
  v429 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v427 = &v332 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for ForYouTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v426);
  v428 = &v332 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v425 = v61;
  v424 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v422 = &v332 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for HighlightsTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v63 - 8);
  v423 = &v332 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v421 = v65;
  v420 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v418 = &v332 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = type metadata accessor for SportsEventArticlesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v417);
  v419 = &v332 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v416 = v68;
  v415 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v413 = &v332 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v412);
  v414 = &v332 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v411 = v71;
  v410 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v408 = &v332 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v407);
  v409 = &v332 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v406 = v74;
  v405 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v403 = &v332 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = type metadata accessor for SportsEventInfoTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v402);
  v404 = &v332 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v401 = v77;
  v400 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v398 = &v332 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = type metadata accessor for SportsBoxScoresTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v397);
  v399 = &v332 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v396 = v80;
  v395 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v393 = &v332 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = type metadata accessor for SportsBracketTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v392);
  v394 = &v332 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v391 = v83;
  v390 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v388 = &v332 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = type metadata accessor for SportsStandingsTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v387);
  v389 = &v332 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v386 = v86;
  v385 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v383 = &v332 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MySportsTopicTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v88 - 8);
  v384 = &v332 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v382 = v90;
  v381 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v379 = &v332 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = type metadata accessor for SportsLinksTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v378);
  v380 = &v332 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v377 = v93;
  v376 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v375 = &v332 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = type metadata accessor for SportsScoresTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v526);
  v527 = &v332 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v524 = *(v96 - 8);
  v525 = v96;
  MEMORY[0x28223BE20](v96);
  v523 = &v332 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for SportsFavoritesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v373);
  v374 = &v332 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194C0030();
  v372 = v99;
  v371 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v369 = &v332 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = type metadata accessor for SportsTopStoriesTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v368);
  v370 = &v332 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v367 = v102;
  v366 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v364 = &v332 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = type metadata accessor for SportsScheduleTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v363);
  v365 = &v332 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v362 = v105;
  v361 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v359 = &v332 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = type metadata accessor for SportsNavigationTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v358);
  v360 = &v332 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v357 = v108;
  v356 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v354 = &v332 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = type metadata accessor for SportsRecordTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v353);
  v355 = &v332 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v352 = v111;
  v351 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v349 = &v332 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v348);
  v350 = &v332 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v347 = v114;
  v346 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v344 = &v332 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for WeatherTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v343);
  v345 = &v332 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A8750C();
  v342 = v117;
  v341 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v339 = &v332 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v338);
  v340 = &v332 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v337 = v120;
  v336 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v122 = &v332 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for ChannelSectionTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v334);
  v335 = &v332 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v125 = v124;
  v333 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v127 = &v332 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for PromotedArticleListTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v128 - 8);
  v130 = &v332 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A8C();
  v132 = v131;
  v332 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v134 = &v332 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ArticleListTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v135 - 8);
  v137 = &v332 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v139 = v138;
  v140 = a1;
  v141 = *(v139 - 8);
  v142 = MEMORY[0x28223BE20](v140);
  v144 = &v332 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v142 >> 58) & 0x3C | (v142 >> 1) & 3)
  {
    case 1uLL:
      v222 = swift_projectBox();
      v223 = v332;
      (*(v332 + 16))(v134, v222, v132);
      sub_219BEDD14();
      (*(v223 + 8))(v134, v132);
      v214 = sub_219BF1934();
      v215 = *(v214 - 8);
      v216 = v528;
      (*(v215 + 32))(v528, v130, v214);
      goto LABEL_27;
    case 2uLL:
    case 6uLL:
    case 0x28uLL:
      v145 = sub_219BF1934();
      v146 = *(*(v145 - 8) + 56);
      v147 = v145;
      v148 = v528;

      return v146(v148, 1, 1, v147);
    case 3uLL:
      v237 = swift_projectBox();
      v238 = v333;
      (*(v333 + 16))(v127, v237, v125);
      v154 = v335;
      sub_219BEDD14();
      (*(v238 + 8))(v127, v125);
      v164 = &v366;
      goto LABEL_50;
    case 4uLL:
      v247 = swift_projectBox();
      v248 = v336;
      v249 = v337;
      (*(v336 + 16))(v122, v247, v337);
      v250 = v340;
      sub_219BEDD14();
      (*(v248 + 8))(v122, v249);
      v251 = *(v338 + 20);
      v252 = sub_219BF1934();
      v253 = *(v252 - 8);
      v254 = *(v253 + 32);
      v255 = &v250[v251];
      goto LABEL_52;
    case 5uLL:
      v224 = swift_projectBox();
      v225 = v341;
      v226 = v339;
      v227 = v342;
      (*(v341 + 16))(v339, v224, v342);
      v154 = v345;
      sub_219BEDD14();
      (*(v225 + 8))(v226, v227);
      v164 = &v375;
      goto LABEL_50;
    case 7uLL:
      v264 = swift_projectBox();
      v265 = v346;
      v266 = v344;
      v267 = v347;
      (*(v346 + 16))(v344, v264, v347);
      v268 = v350;
      sub_219BEDD14();
      (*(v265 + 8))(v266, v267);
      v269 = *(v348 + 20);
      v252 = sub_219BF1934();
      v253 = *(v252 - 8);
      v270 = v268 + v269;
      v271 = v528;
      (*(v253 + 16))(v528, v270, v252);
      v272 = type metadata accessor for CuratedTagFeedGroupConfigData;
      goto LABEL_39;
    case 8uLL:
      v205 = swift_projectBox();
      v206 = v351;
      v207 = v349;
      v208 = v352;
      (*(v351 + 16))(v349, v205, v352);
      v154 = v355;
      sub_219BEDD14();
      (*(v206 + 8))(v207, v208);
      v164 = &v385;
      goto LABEL_50;
    case 9uLL:
      v260 = swift_projectBox();
      v261 = v356;
      v262 = v354;
      v263 = v357;
      (*(v356 + 16))(v354, v260, v357);
      v154 = v360;
      sub_219BEDD14();
      (*(v261 + 8))(v262, v263);
      v164 = &v390;
      goto LABEL_50;
    case 0xAuLL:
      v193 = swift_projectBox();
      v194 = v366;
      v195 = v364;
      v196 = v367;
      (*(v366 + 16))(v364, v193, v367);
      v154 = v370;
      sub_219BEDD14();
      (*(v194 + 8))(v195, v196);
      v164 = &v400;
      goto LABEL_50;
    case 0xBuLL:
      v197 = swift_projectBox();
      v198 = v371;
      v199 = v369;
      v200 = v372;
      (*(v371 + 16))(v369, v197, v372);
      v154 = v374;
      sub_219BEDD14();
      (*(v198 + 8))(v199, v200);
      v164 = &v405;
      goto LABEL_50;
    case 0xCuLL:
      v239 = swift_projectBox();
      v240 = v361;
      v241 = v359;
      v242 = v362;
      (*(v361 + 16))(v359, v239, v362);
      v154 = v365;
      sub_219BEDD14();
      (*(v240 + 8))(v241, v242);
      v164 = &v395;
      goto LABEL_50;
    case 0xDuLL:
    case 0xEuLL:
      v150 = swift_projectBox();
      v151 = v523;
      v152 = v524;
      v153 = v525;
      (*(v524 + 16))(v523, v150, v525);
      v154 = v527;
      sub_219BEDD14();
      (*(v152 + 8))(v151, v153);
      v155 = v526;
      goto LABEL_51;
    case 0xFuLL:
      v181 = swift_projectBox();
      v182 = v376;
      v183 = v375;
      v184 = v377;
      (*(v376 + 16))(v375, v181, v377);
      v154 = v380;
      sub_219BEDD14();
      (*(v182 + 8))(v183, v184);
      v164 = &v410;
      goto LABEL_50;
    case 0x10uLL:
      v232 = swift_projectBox();
      v233 = v381;
      v234 = v379;
      v235 = v382;
      (*(v381 + 16))(v379, v232, v382);
      v236 = v384;
      sub_219BEDD14();
      (*(v233 + 8))(v234, v235);
      v214 = sub_219BF1934();
      v215 = *(v214 - 8);
      v216 = v528;
      (*(v215 + 16))(v528, v236, v214);
      sub_2197B8CA4(v236, type metadata accessor for MySportsTopicTagFeedGroupConfigData);
      goto LABEL_27;
    case 0x11uLL:
      v277 = swift_projectBox();
      v278 = v385;
      v279 = v383;
      v280 = v386;
      (*(v385 + 16))(v383, v277, v386);
      v154 = v389;
      sub_219BEDD14();
      (*(v278 + 8))(v279, v280);
      v164 = &v419;
      goto LABEL_50;
    case 0x12uLL:
      v303 = swift_projectBox();
      v304 = v390;
      v305 = v388;
      v306 = v391;
      (*(v390 + 16))(v388, v303, v391);
      v154 = v394;
      sub_219BEDD14();
      (*(v304 + 8))(v305, v306);
      v164 = &v424;
      goto LABEL_50;
    case 0x13uLL:
      v256 = swift_projectBox();
      v257 = v395;
      v258 = v393;
      v259 = v396;
      (*(v395 + 16))(v393, v256, v396);
      v154 = v399;
      sub_219BEDD14();
      (*(v257 + 8))(v258, v259);
      v164 = &v429;
      goto LABEL_50;
    case 0x14uLL:
      v273 = swift_projectBox();
      v274 = v400;
      v275 = v398;
      v276 = v401;
      (*(v400 + 16))(v398, v273, v401);
      v154 = v404;
      sub_219BEDD14();
      (*(v274 + 8))(v275, v276);
      v164 = &v434;
      goto LABEL_50;
    case 0x15uLL:
      v295 = swift_projectBox();
      v296 = v405;
      v297 = v403;
      v298 = v406;
      (*(v405 + 16))(v403, v295, v406);
      v154 = v409;
      sub_219BEDD14();
      (*(v296 + 8))(v297, v298);
      v164 = &v439;
      goto LABEL_50;
    case 0x16uLL:
      v311 = swift_projectBox();
      v312 = v410;
      v313 = v408;
      v314 = v411;
      (*(v410 + 16))(v408, v311, v411);
      v154 = v414;
      sub_219BEDD14();
      (*(v312 + 8))(v313, v314);
      v164 = &v444;
      goto LABEL_50;
    case 0x17uLL:
      v217 = swift_projectBox();
      v218 = v415;
      v219 = v413;
      v220 = v416;
      (*(v415 + 16))(v413, v217, v416);
      v154 = v419;
      sub_219BEDD14();
      (*(v218 + 8))(v219, v220);
      v164 = &v449;
      goto LABEL_50;
    case 0x18uLL:
      v209 = swift_projectBox();
      v210 = v420;
      v211 = v418;
      v212 = v421;
      (*(v420 + 16))(v418, v209, v421);
      v213 = v423;
      sub_219BEDD14();
      (*(v210 + 8))(v211, v212);
      v214 = sub_219BF1934();
      v215 = *(v214 - 8);
      v216 = v528;
      (*(v215 + 32))(v528, v213, v214);
      goto LABEL_27;
    case 0x19uLL:
      v327 = swift_projectBox();
      v328 = v424;
      v329 = v422;
      v330 = v425;
      (*(v424 + 16))(v422, v327, v425);
      v154 = v428;
      sub_219BEDD14();
      (*(v328 + 8))(v329, v330);
      v164 = &v458;
      goto LABEL_50;
    case 0x1AuLL:
      v173 = swift_projectBox();
      v174 = v429;
      v175 = v427;
      v176 = v430;
      (*(v429 + 16))(v427, v173, v430);
      v154 = v433;
      sub_219BEDD14();
      (*(v174 + 8))(v175, v176);
      v164 = &v463;
      goto LABEL_50;
    case 0x1BuLL:
      v315 = swift_projectBox();
      v316 = v434;
      v317 = v432;
      v318 = v435;
      (*(v434 + 16))(v432, v315, v435);
      v154 = v438;
      sub_219BEDD14();
      (*(v316 + 8))(v317, v318);
      v164 = &v468;
      goto LABEL_50;
    case 0x1CuLL:
      v319 = swift_projectBox();
      v320 = v439;
      v321 = v437;
      v322 = v440;
      (*(v439 + 16))(v437, v319, v440);
      v154 = v443;
      sub_219BEDD14();
      (*(v320 + 8))(v321, v322);
      v164 = &v473;
      goto LABEL_50;
    case 0x1DuLL:
      v281 = swift_projectBox();
      v282 = v444;
      v283 = v442;
      v284 = v445;
      (*(v444 + 16))(v442, v281, v445);
      v154 = v448;
      sub_219BEDD14();
      (*(v282 + 8))(v283, v284);
      v164 = &v478;
      goto LABEL_50;
    case 0x1EuLL:
      v228 = swift_projectBox();
      v229 = v449;
      v230 = v447;
      v231 = v450;
      (*(v449 + 16))(v447, v228, v450);
      v154 = v453;
      sub_219BEDD14();
      (*(v229 + 8))(v230, v231);
      v164 = &v483;
      goto LABEL_50;
    case 0x1FuLL:
      v285 = swift_projectBox();
      v286 = v454;
      v287 = v452;
      v288 = v455;
      (*(v454 + 16))(v452, v285, v455);
      v268 = v458;
      sub_219BEDD14();
      (*(v286 + 8))(v287, v288);
      v289 = *(v456 + 20);
      v252 = sub_219BF1934();
      v253 = *(v252 - 8);
      v290 = v268 + v289;
      v271 = v528;
      (*(v253 + 16))(v528, v290, v252);
      v272 = type metadata accessor for SportsOnboardingTagFeedGroupConfigData;
LABEL_39:
      sub_2197B8CA4(v268, v272);
      goto LABEL_53;
    case 0x20uLL:
      v189 = swift_projectBox();
      v190 = v459;
      v191 = v457;
      v192 = v460;
      (*(v459 + 16))(v457, v189, v460);
      v154 = v463;
      sub_219BEDD14();
      (*(v190 + 8))(v191, v192);
      v164 = &v493;
      goto LABEL_50;
    case 0x21uLL:
      v177 = swift_projectBox();
      v178 = v464;
      v179 = v462;
      v180 = v465;
      (*(v464 + 16))(v462, v177, v465);
      v154 = v468;
      sub_219BEDD14();
      (*(v178 + 8))(v179, v180);
      v164 = &v498;
      goto LABEL_50;
    case 0x22uLL:
      v165 = swift_projectBox();
      v166 = v469;
      v167 = v467;
      v168 = v470;
      (*(v469 + 16))(v467, v165, v470);
      v154 = v473;
      sub_219BEDD14();
      (*(v166 + 8))(v167, v168);
      v164 = &v503;
      goto LABEL_50;
    case 0x23uLL:
      v169 = swift_projectBox();
      v170 = v474;
      v171 = v472;
      v172 = v475;
      (*(v474 + 16))(v472, v169, v475);
      v154 = v478;
      sub_219BEDD14();
      (*(v170 + 8))(v171, v172);
      v164 = &v508;
      goto LABEL_50;
    case 0x24uLL:
      v160 = swift_projectBox();
      v161 = v479;
      v162 = v477;
      v163 = v480;
      (*(v479 + 16))(v477, v160, v480);
      v154 = v483;
      sub_219BEDD14();
      (*(v161 + 8))(v162, v163);
      v164 = &v513;
      goto LABEL_50;
    case 0x25uLL:
      v323 = swift_projectBox();
      v324 = v484;
      v325 = v482;
      v326 = v485;
      (*(v484 + 16))(v482, v323, v485);
      v154 = v488;
      sub_219BEDD14();
      (*(v324 + 8))(v325, v326);
      v164 = &v518;
      goto LABEL_50;
    case 0x26uLL:
      v299 = swift_projectBox();
      v300 = v489;
      v301 = v487;
      v302 = v490;
      (*(v489 + 16))(v487, v299, v490);
      v154 = v493;
      sub_219BEDD14();
      (*(v300 + 8))(v301, v302);
      v164 = &v523;
      goto LABEL_50;
    case 0x27uLL:
      v201 = swift_projectBox();
      v202 = v494;
      v203 = v492;
      v204 = v495;
      (*(v494 + 16))(v492, v201, v495);
      v154 = v498;
      sub_219BEDD14();
      (*(v202 + 8))(v203, v204);
      v164 = &v528;
      goto LABEL_50;
    case 0x29uLL:
      v243 = swift_projectBox();
      v244 = v499;
      v245 = v497;
      v246 = v500;
      (*(v499 + 16))(v497, v243, v500);
      v154 = v503;
      sub_219BEDD14();
      (*(v244 + 8))(v245, v246);
      v164 = &v529;
      goto LABEL_50;
    case 0x2AuLL:
      v307 = swift_projectBox();
      v308 = v504;
      v309 = v502;
      v310 = v505;
      (*(v504 + 16))(v502, v307, v505);
      v154 = v508;
      sub_219BEDD14();
      (*(v308 + 8))(v309, v310);
      v164 = &v530;
LABEL_50:
      v155 = *(v164 - 32);
      goto LABEL_51;
    case 0x2BuLL:
      v156 = swift_projectBox();
      v158 = v509;
      v157 = v510;
      v159 = v507;
      (*(v509 + 16))(v507, v156, v510);
      v154 = v513;
      sub_219BEDD14();
      (*(v158 + 8))(v159, v157);
      v155 = v511;
      goto LABEL_51;
    case 0x2CuLL:
      v185 = swift_projectBox();
      v187 = v514;
      v186 = v515;
      v188 = v512;
      (*(v514 + 16))(v512, v185, v515);
      v154 = v518;
      sub_219BEDD14();
      (*(v187 + 8))(v188, v186);
      v155 = v516;
      goto LABEL_51;
    case 0x2DuLL:
      v291 = swift_projectBox();
      v293 = v519;
      v292 = v520;
      v294 = v517;
      (*(v519 + 16))(v517, v291, v520);
      v154 = v522;
      sub_219BEDD14();
      (*(v293 + 8))(v294, v292);
      v155 = v521;
LABEL_51:
      v331 = *(v155 + 20);
      v252 = sub_219BF1934();
      v253 = *(v252 - 8);
      v254 = *(v253 + 32);
      v255 = &v154[v331];
LABEL_52:
      v271 = v528;
      v254(v528, v255, v252);
LABEL_53:
      result = (*(v253 + 56))(v271, 0, 1, v252);
      break;
    default:
      v221 = swift_projectBox();
      (*(v141 + 16))(v144, v221, v139);
      sub_219BEDD14();
      (*(v141 + 8))(v144, v139);
      v214 = sub_219BF1934();
      v215 = *(v214 - 8);
      v216 = v528;
      (*(v215 + 32))(v528, v137, v214);
LABEL_27:
      result = (*(v215 + 56))(v216, 0, 1, v214);
      break;
  }

  return result;
}

unint64_t sub_2197B3B54(void *a1)
{
  sub_21937E158();
  v397 = v2;
  v348 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v392 = &v260 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();
  v347 = v4;
  v346 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v388 = &v260 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFD268();
  v345 = v6;
  v344 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v391 = &v260 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CDA4();
  v343 = v8;
  v342 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v390 = &v260 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC59D0();
  v341 = v10;
  v340 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v389 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92458, sub_218B00BC0, sub_218B00C14);
  v336 = v12;
  v338 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v396 = &v260 - v13;
  sub_218D10EB4();
  v339 = v14;
  v337 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v387 = &v260 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B856C();
  v335 = v16;
  v334 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v386 = &v260 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D92E4();
  v333 = v18;
  v332 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v385 = &v260 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8638();
  v331 = v20;
  v330 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v384 = &v260 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BB554();
  v329 = v22;
  v328 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v383 = &v260 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  v327 = v24;
  v326 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v382 = &v260 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();
  v325 = v26;
  v324 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v381 = &v260 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();
  v323 = v28;
  v322 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v380 = &v260 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219465EC4();
  v321 = v30;
  v320 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v379 = &v260 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21958F7F0();
  v319 = v32;
  v318 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v378 = &v260 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E8672C();
  v317 = v34;
  v316 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v377 = &v260 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219327A64();
  v315 = v36;
  v314 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v376 = &v260 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21953FF10();
  v313 = v38;
  v312 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v375 = &v260 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668();
  v311 = v40;
  v310 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v374 = &v260 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A5D0();
  v309 = v42;
  v308 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v373 = &v260 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8704();
  v307 = v44;
  v306 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v372 = &v260 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7EEB4();
  v305 = v46;
  v304 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v371 = &v260 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219425F54();
  v303 = v48;
  v302 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v370 = &v260 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA1E04();
  v301 = v50;
  v300 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v369 = &v260 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B87D0();
  v299 = v52;
  v298 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v368 = &v260 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694FFC();
  v297 = v54;
  v296 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v367 = &v260 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219201950();
  v295 = v56;
  v294 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v366 = &v260 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972CF04();
  v293 = v58;
  v292 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v365 = &v260 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8920();
  v291 = v60;
  v290 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v364 = &v260 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219519384();
  v289 = v62;
  v288 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v363 = &v260 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F664F8();
  v350 = v64;
  v349 = *(v64 - 8);
  v65 = MEMORY[0x28223BE20](v64);
  v362 = &v260 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v361 = &v260 - v67;
  sub_2194C0030();
  v286 = v68;
  v287 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v356 = &v260 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C();
  v284 = v70;
  v285 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v357 = &v260 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC633C();
  v283 = v72;
  v282 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v352 = &v260 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F1DD0();
  v281 = v74;
  v280 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v360 = &v260 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B889C();
  v279 = v76;
  v278 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v359 = &v260 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v277 = v78;
  v276 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v358 = &v260 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E92480, sub_2197B8968, sub_2197B89BC);
  v395 = v80;
  v274 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v394 = &v260 - v81;
  sub_218A8750C();
  v275 = v82;
  v273 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v355 = &v260 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219268F50();
  v272 = v84;
  v271 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v354 = &v260 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9CF74();
  v270 = v86;
  v269 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v353 = &v260 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8A10(0, &qword_280E923F0, sub_218A5944C, sub_218A594A0);
  v393 = v88;
  v267 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v351 = &v260 - v89;
  sub_2197B8A8C();
  v268 = v90;
  v266 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v92 = &v260 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21940DA80();
  v94 = v93;
  v265 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v96 = &v260 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197B8BA0();
  v98 = v97;
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v101 = &v260 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1[3];
  v102 = a1[4];
  v399 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v103);
  sub_2197B8BFC();
  v104 = v398;
  sub_219BF7B34();
  if (!v104)
  {
    v263 = v96;
    v262 = v94;
    v264 = v92;
    v105 = v393;
    v106 = v394;
    v108 = v395;
    v107 = v396;
    v109 = v397;
    v398 = v99;
    sub_2197B8C50();
    sub_219BF7734();
    v261 = v101;
    v260 = v98;
    switch(v400)
    {
      case 1:
        sub_218718690(v399, &v400);
        type metadata accessor for PromotedArticleListTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E95730, type metadata accessor for PromotedArticleListTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E95738, type metadata accessor for PromotedArticleListTagFeedGroupConfigData);
        v182 = v264;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v183 = v268;
        v184 = swift_allocBox();
        (*(v266 + 32))(v185, v182, v183);
        v102 = v184 | 2;
        break;
      case 2:
        sub_218718690(v399, &v400);
        sub_218A5944C();
        sub_218A594A0();
        v169 = v351;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v98);
        v170 = swift_allocBox();
        (*(v267 + 32))(v171, v169, v105);
        v102 = v170 | 4;
        break;
      case 3:
        sub_218718690(v399, &v400);
        type metadata accessor for ChannelSectionTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9BBB0, type metadata accessor for ChannelSectionTagFeedGroupConfigData);
        sub_2197B8B58(qword_280E9BBB8, type metadata accessor for ChannelSectionTagFeedGroupConfigData);
        v175 = v353;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v176 = v270;
        v177 = swift_allocBox();
        (*(v269 + 32))(v178, v175, v176);
        v102 = v177 | 6;
        break;
      case 4:
        sub_218718690(v399, &v400);
        type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E93C48, type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E93C50, type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData);
        v151 = v354;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v152 = v272;
        v153 = swift_allocBox();
        (*(v271 + 32))(v154, v151, v152);
        v102 = v153 | 0x1000000000000000;
        break;
      case 5:
        sub_218718690(v399, &v400);
        type metadata accessor for WeatherTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280EADD20, type metadata accessor for WeatherTagFeedGroupConfigData);
        sub_2197B8B58(qword_280EADD30, type metadata accessor for WeatherTagFeedGroupConfigData);
        v199 = v355;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v200 = v275;
        v120 = swift_allocBox();
        (*(v273 + 32))(v201, v199, v200);
        v122 = 0x1000000000000002;
        goto LABEL_50;
      case 6:
        sub_218718690(v399, &v400);
        sub_2197B8968();
        sub_2197B89BC();
        sub_219BEDD24();
        (*(v398 + 8))(v261, v98);
        v120 = swift_allocBox();
        (*(v274 + 32))(v208, v106, v108);
        v135 = 0x1000000000000002;
        goto LABEL_49;
      case 7:
        sub_218718690(v399, &v400);
        type metadata accessor for CuratedTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280EB1020, type metadata accessor for CuratedTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280EB1030, type metadata accessor for CuratedTagFeedGroupConfigData);
        v179 = v358;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v180 = v277;
        v115 = swift_allocBox();
        (*(v276 + 32))(v181, v179, v180);
        v117 = 0x1000000000000002;
        goto LABEL_47;
      case 8:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsRecordTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E9EAF0, type metadata accessor for SportsRecordTagFeedGroupConfigData);
        sub_2197B8B58(qword_280E9EB00, type metadata accessor for SportsRecordTagFeedGroupConfigData);
        v217 = v359;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v218 = v279;
        v219 = swift_allocBox();
        (*(v278 + 32))(v220, v217, v218);
        v102 = v219 | 0x2000000000000000;
        break;
      case 9:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsNavigationTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E97C40, type metadata accessor for SportsNavigationTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E97C48, type metadata accessor for SportsNavigationTagFeedGroupConfigData);
        v160 = v360;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v161 = v281;
        v120 = swift_allocBox();
        (*(v280 + 32))(v162, v160, v161);
        v122 = 0x2000000000000002;
        goto LABEL_50;
      case 10:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsScheduleTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9A468, type metadata accessor for SportsScheduleTagFeedGroupConfigData);
        sub_2197B8B58(qword_280E9A470, type metadata accessor for SportsScheduleTagFeedGroupConfigData);
        v213 = v352;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v214 = v283;
        v215 = swift_allocBox();
        (*(v282 + 32))(v216, v213, v214);
        v102 = v215 | 0x3000000000000000;
        break;
      case 11:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsStandingsTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E98A78, type metadata accessor for SportsStandingsTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98A80, type metadata accessor for SportsStandingsTagFeedGroupConfigData);
        v148 = v365;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v149 = v293;
        v120 = swift_allocBox();
        (*(v292 + 32))(v150, v148, v149);
        v122 = 0x4000000000000002;
        goto LABEL_50;
      case 12:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsBracketTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E9C6E0, type metadata accessor for SportsBracketTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9C6F0, type metadata accessor for SportsBracketTagFeedGroupConfigData);
        v157 = v366;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v158 = v295;
        v120 = swift_allocBox();
        (*(v294 + 32))(v159, v157, v158);
        v135 = 0x4000000000000002;
        goto LABEL_49;
      case 13:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsTopStoriesTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E97AB0, type metadata accessor for SportsTopStoriesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E97AC0, type metadata accessor for SportsTopStoriesTagFeedGroupConfigData);
        v205 = v357;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v206 = v284;
        v120 = swift_allocBox();
        (*(v285 + 32))(v207, v205, v206);
        v135 = 0x2000000000000002;
        goto LABEL_49;
      case 14:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsFavoritesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E98B30, type metadata accessor for SportsFavoritesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98B38, type metadata accessor for SportsFavoritesTagFeedGroupConfigData);
        v142 = v356;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v143 = v286;
        v115 = swift_allocBox();
        (*(v287 + 32))(v144, v142, v143);
        v117 = 0x2000000000000002;
        goto LABEL_47;
      case 15:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsScoresTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9E958, type metadata accessor for SportsScoresTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9E960, type metadata accessor for SportsScoresTagFeedGroupConfigData);
        v172 = v361;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v173 = v350;
        v120 = swift_allocBox();
        (*(v349 + 32))(v174, v172, v173);
        v122 = 0x3000000000000002;
        goto LABEL_50;
      case 16:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsScoresTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9E958, type metadata accessor for SportsScoresTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9E960, type metadata accessor for SportsScoresTagFeedGroupConfigData);
        v136 = v362;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v137 = v350;
        v120 = swift_allocBox();
        (*(v349 + 32))(v138, v136, v137);
        v135 = 0x3000000000000002;
        goto LABEL_49;
      case 17:
        sub_218718690(v399, &v400);
        type metadata accessor for MySportsTopicTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E9CFA0, type metadata accessor for MySportsTopicTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9CFB0, type metadata accessor for MySportsTopicTagFeedGroupConfigData);
        v189 = v364;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v190 = v291;
        v191 = swift_allocBox();
        (*(v290 + 32))(v192, v189, v190);
        v102 = v191 | 0x4000000000000000;
        break;
      case 18:
        sub_218718690(v399, &v400);
        type metadata accessor for HighlightsTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280EA67A0, type metadata accessor for HighlightsTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280EA67B0, type metadata accessor for HighlightsTagFeedGroupConfigData);
        v209 = v372;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v210 = v307;
        v211 = swift_allocBox();
        (*(v306 + 32))(v212, v209, v210);
        v102 = v211 | 0x6000000000000000;
        break;
      case 19:
        sub_218718690(v399, &v400);
        type metadata accessor for ForYouTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280EB4348, type metadata accessor for ForYouTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280EB4350, type metadata accessor for ForYouTagFeedGroupConfigData);
        v238 = v373;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v239 = v309;
        v120 = swift_allocBox();
        (*(v308 + 32))(v240, v238, v239);
        v122 = 0x6000000000000002;
        goto LABEL_50;
      case 20:
        sub_218718690(v399, &v400);
        type metadata accessor for ChannelRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9BC50, type metadata accessor for ChannelRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9BC58, type metadata accessor for ChannelRecipesTagFeedGroupConfigData);
        v196 = v374;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v197 = v311;
        v120 = swift_allocBox();
        (*(v310 + 32))(v198, v196, v197);
        v135 = 0x6000000000000002;
        goto LABEL_49;
      case 21:
        sub_218718690(v399, &v400);
        type metadata accessor for ForYouRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9D888, type metadata accessor for ForYouRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9D890, type metadata accessor for ForYouRecipesTagFeedGroupConfigData);
        v202 = v375;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v203 = v313;
        v115 = swift_allocBox();
        (*(v312 + 32))(v204, v202, v203);
        v117 = 0x6000000000000002;
        goto LABEL_47;
      case 22:
        sub_218718690(v399, &v400);
        type metadata accessor for RecentStoriesTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E9C850, type metadata accessor for RecentStoriesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9C860, type metadata accessor for RecentStoriesTagFeedGroupConfigData);
        v231 = v376;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v232 = v315;
        v233 = swift_allocBox();
        (*(v314 + 32))(v234, v231, v232);
        v102 = v233 | 0x7000000000000000;
        break;
      case 23:
        sub_218718690(v399, &v400);
        type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E940F8, type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E94100, type metadata accessor for RecentlyViewedRecipesTagFeedGroupConfigData);
        v244 = v377;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v245 = v317;
        v120 = swift_allocBox();
        (*(v316 + 32))(v246, v244, v245);
        v122 = 0x7000000000000002;
        goto LABEL_50;
      case 24:
        sub_218718690(v399, &v400);
        type metadata accessor for DateRangeTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280EA9740, type metadata accessor for DateRangeTagFeedGroupConfigData);
        sub_2197B8B58(qword_280EA9748, type metadata accessor for DateRangeTagFeedGroupConfigData);
        v166 = v378;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v167 = v319;
        v120 = swift_allocBox();
        (*(v318 + 32))(v168, v166, v167);
        v135 = 0x7000000000000002;
        goto LABEL_49;
      case 25:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsBoxScoresTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E98CA8, type metadata accessor for SportsBoxScoresTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98CB0, type metadata accessor for SportsBoxScoresTagFeedGroupConfigData);
        v163 = v367;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v164 = v297;
        v115 = swift_allocBox();
        (*(v296 + 32))(v165, v163, v164);
        v117 = 0x4000000000000002;
        goto LABEL_47;
      case 26:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsEventInfoTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E98BF0, type metadata accessor for SportsEventInfoTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98BF8, type metadata accessor for SportsEventInfoTagFeedGroupConfigData);
        v256 = v368;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v258 = v299;
        v120 = swift_allocBox();
        (*(v298 + 32))(v259, v256, v258);
        v122 = 0x5000000000000000;
        goto LABEL_50;
      case 27:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E95210, type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E95220, type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData);
        v129 = v369;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v130 = v301;
        v120 = swift_allocBox();
        (*(v300 + 32))(v131, v129, v130);
        v122 = 0x5000000000000002;
        goto LABEL_50;
      case 28:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsLinksTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280EA1C80, type metadata accessor for SportsLinksTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280EA1C90, type metadata accessor for SportsLinksTagFeedGroupConfigData);
        v247 = v363;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v248 = v289;
        v115 = swift_allocBox();
        (*(v288 + 32))(v249, v247, v248);
        v117 = 0x3000000000000002;
        goto LABEL_47;
      case 29:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsOnboardingTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E97B78, type metadata accessor for SportsOnboardingTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E97B80, type metadata accessor for SportsOnboardingTagFeedGroupConfigData);
        v250 = v379;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v251 = v321;
        v115 = swift_allocBox();
        (*(v320 + 32))(v252, v250, v251);
        v117 = 0x7000000000000002;
        goto LABEL_47;
      case 30:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E97D00, type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E97D10, type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData);
        v221 = v370;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v222 = v303;
        v120 = swift_allocBox();
        (*(v302 + 32))(v223, v221, v222);
        v135 = 0x5000000000000002;
        goto LABEL_49;
      case 31:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsEventArticlesTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E952D0, type metadata accessor for SportsEventArticlesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E952E0, type metadata accessor for SportsEventArticlesTagFeedGroupConfigData);
        v186 = v371;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v187 = v305;
        v115 = swift_allocBox();
        (*(v304 + 32))(v188, v186, v187);
        v117 = 0x5000000000000002;
        goto LABEL_47;
      case 32:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsMastheadTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9A5C8, type metadata accessor for SportsMastheadTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9A5D0, type metadata accessor for SportsMastheadTagFeedGroupConfigData);
        v224 = v380;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v225 = v323;
        v226 = swift_allocBox();
        (*(v322 + 32))(v227, v224, v225);
        v102 = v226 | 0x8000000000000000;
        break;
      case 33:
        sub_218718690(v399, &v400);
        type metadata accessor for SportsEventTopicTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E97E60, type metadata accessor for SportsEventTopicTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E97E70, type metadata accessor for SportsEventTopicTagFeedGroupConfigData);
        v145 = v381;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v146 = v325;
        v120 = swift_allocBox();
        (*(v324 + 32))(v147, v145, v146);
        v122 = 0x8000000000000002;
        goto LABEL_50;
      case 34:
        sub_218718690(v399, &v400);
        type metadata accessor for PuzzleListTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280EA5658, type metadata accessor for PuzzleListTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280EA5660, type metadata accessor for PuzzleListTagFeedGroupConfigData);
        v132 = v382;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v133 = v327;
        v120 = swift_allocBox();
        (*(v326 + 32))(v134, v132, v133);
        v135 = 0x8000000000000002;
        goto LABEL_49;
      case 35:
        sub_218718690(v399, &v400);
        type metadata accessor for PuzzleArchiveTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E9CBC0, type metadata accessor for PuzzleArchiveTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9CBD0, type metadata accessor for PuzzleArchiveTagFeedGroupConfigData);
        v123 = v383;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v124 = v329;
        v115 = swift_allocBox();
        (*(v328 + 32))(v125, v123, v124);
        v117 = 0x8000000000000002;
        goto LABEL_47;
      case 36:
        sub_218718690(v399, &v400);
        type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E941D0, type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E941E0, type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData);
        v126 = v384;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v127 = v331;
        v120 = swift_allocBox();
        (*(v330 + 32))(v128, v126, v127);
        v122 = 0x9000000000000000;
        goto LABEL_50;
      case 37:
        sub_218718690(v399, &v400);
        type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9AC68, type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9AC70, type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData);
        v118 = v385;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v119 = v333;
        v120 = swift_allocBox();
        (*(v332 + 32))(v121, v118, v119);
        v122 = 0x9000000000000002;
        goto LABEL_50;
      case 38:
        sub_218718690(v399, &v400);
        type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E96CC0, type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData);
        sub_2197B8B58(&unk_280E96CD0, type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData);
        v253 = v386;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v254 = v335;
        v120 = swift_allocBox();
        (*(v334 + 32))(v255, v253, v254);
        v135 = 0x9000000000000002;
        goto LABEL_49;
      case 39:
        sub_218718690(v399, &v400);
        type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E98160, type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98170, type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData);
        v235 = v387;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v236 = v339;
        v115 = swift_allocBox();
        (*(v337 + 32))(v237, v235, v236);
        v117 = 0x9000000000000002;
        goto LABEL_47;
      case 40:
        sub_218718690(v399, &v400);
        sub_218B00BC0();
        sub_218B00C14();
        sub_219BEDD24();
        (*(v398 + 8))(v261, v98);
        v155 = v336;
        v120 = swift_allocBox();
        (*(v338 + 32))(v156, v107, v155);
        v122 = 0xA000000000000000;
        goto LABEL_50;
      case 41:
        sub_218718690(v399, &v400);
        type metadata accessor for SponsoredBannerTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E98D60, type metadata accessor for SponsoredBannerTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98D70, type metadata accessor for SponsoredBannerTagFeedGroupConfigData);
        v193 = v389;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v194 = v341;
        v120 = swift_allocBox();
        (*(v340 + 32))(v195, v193, v194);
        v122 = 0xA000000000000002;
        goto LABEL_50;
      case 42:
        sub_218718690(v399, &v400);
        type metadata accessor for LatestRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9D630, type metadata accessor for LatestRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9D638, type metadata accessor for LatestRecipesTagFeedGroupConfigData);
        v241 = v390;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v242 = v343;
        v120 = swift_allocBox();
        (*(v342 + 32))(v243, v241, v242);
        v135 = 0xA000000000000002;
LABEL_49:
        v122 = v135 + 2;
        goto LABEL_50;
      case 43:
        sub_218718690(v399, &v400);
        type metadata accessor for SavedRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E9F3B8, type metadata accessor for SavedRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9F3C0, type metadata accessor for SavedRecipesTagFeedGroupConfigData);
        v113 = v391;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v114 = v345;
        v115 = swift_allocBox();
        (*(v344 + 32))(v116, v113, v114);
        v117 = 0xA000000000000002;
LABEL_47:
        v102 = v115 | v117 | 4;
        break;
      case 44:
        sub_218718690(v399, &v400);
        type metadata accessor for TrendingRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280E98740, type metadata accessor for TrendingRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E98748, type metadata accessor for TrendingRecipesTagFeedGroupConfigData);
        v139 = v388;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v140 = v347;
        v120 = swift_allocBox();
        (*(v346 + 32))(v141, v139, v140);
        v122 = 0xB000000000000000;
        goto LABEL_50;
      case 45:
        v228 = v109;
        sub_218718690(v399, &v400);
        type metadata accessor for TopicRecipesTagFeedGroupConfigData();
        sub_2197B8B58(&unk_280E9E310, type metadata accessor for TopicRecipesTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280E9E320, type metadata accessor for TopicRecipesTagFeedGroupConfigData);
        v229 = v392;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v120 = swift_allocBox();
        (*(v348 + 32))(v230, v229, v228);
        v122 = 0xB000000000000002;
LABEL_50:
        v102 = v120 | v122;
        break;
      default:
        sub_218718690(v399, &v400);
        type metadata accessor for ArticleListTagFeedGroupConfigData();
        sub_2197B8B58(&qword_280EA3F58, type metadata accessor for ArticleListTagFeedGroupConfigData);
        sub_2197B8B58(&qword_280EA3F60, type metadata accessor for ArticleListTagFeedGroupConfigData);
        v110 = v263;
        sub_219BEDD24();
        (*(v398 + 8))(v261, v260);
        v111 = v262;
        v102 = swift_allocBox();
        (*(v265 + 32))(v112, v110, v111);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v399);
  return v102;
}

void sub_2197B856C()
{
  if (!qword_280E92060)
  {
    type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData();
    sub_2197B8B58(&unk_280E96CC0, type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData);
    sub_2197B8B58(&unk_280E96CD0, type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92060);
    }
  }
}

void sub_2197B8638()
{
  if (!qword_280E91FC0)
  {
    type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData();
    sub_2197B8B58(&unk_280E941D0, type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData);
    sub_2197B8B58(&qword_280E941E0, type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91FC0);
    }
  }
}

void sub_2197B8704()
{
  if (!qword_280E923D0)
  {
    type metadata accessor for HighlightsTagFeedGroupConfigData();
    sub_2197B8B58(&unk_280EA67A0, type metadata accessor for HighlightsTagFeedGroupConfigData);
    sub_2197B8B58(&qword_280EA67B0, type metadata accessor for HighlightsTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E923D0);
    }
  }
}

void sub_2197B87D0()
{
  if (!qword_280E920F0)
  {
    type metadata accessor for SportsEventInfoTagFeedGroupConfigData();
    sub_2197B8B58(&qword_280E98BF0, type metadata accessor for SportsEventInfoTagFeedGroupConfigData);
    sub_2197B8B58(&qword_280E98BF8, type metadata accessor for SportsEventInfoTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920F0);
    }
  }
}

void sub_2197B889C()
{
  if (!qword_280E922C0)
  {
    type metadata accessor for SportsRecordTagFeedGroupConfigData();
    sub_2197B8B58(&unk_280E9EAF0, type metadata accessor for SportsRecordTagFeedGroupConfigData);
    sub_2197B8B58(qword_280E9EB00, type metadata accessor for SportsRecordTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E922C0);
    }
  }
}

unint64_t sub_2197B8968()
{
  result = qword_280EAF790;
  if (!qword_280EAF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF790);
  }

  return result;
}

unint64_t sub_2197B89BC()
{
  result = qword_280EAF7A0;
  if (!qword_280EAF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF7A0);
  }

  return result;
}

void sub_2197B8A10(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BEDD94();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2197B8A8C()
{
  if (!qword_280E92038)
  {
    type metadata accessor for PromotedArticleListTagFeedGroupConfigData();
    sub_2197B8B58(&qword_280E95730, type metadata accessor for PromotedArticleListTagFeedGroupConfigData);
    sub_2197B8B58(&qword_280E95738, type metadata accessor for PromotedArticleListTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92038);
    }
  }
}

uint64_t sub_2197B8B58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2197B8BA0()
{
  if (!qword_280E8CF48)
  {
    sub_2197B8BFC();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CF48);
    }
  }
}

unint64_t sub_2197B8BFC()
{
  result = qword_280ED28B8[0];
  if (!qword_280ED28B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED28B8);
  }

  return result;
}

unint64_t sub_2197B8C50()
{
  result = qword_280ED2888;
  if (!qword_280ED2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2888);
  }

  return result;
}

uint64_t sub_2197B8CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2197B8D28()
{
  result = qword_27CC1F2D0;
  if (!qword_27CC1F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F2D0);
  }

  return result;
}

unint64_t sub_2197B8D80()
{
  result = qword_27CC1F2D8;
  if (!qword_27CC1F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F2D8);
  }

  return result;
}

unint64_t sub_2197B8DD8()
{
  result = qword_280ED28A8;
  if (!qword_280ED28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED28A8);
  }

  return result;
}

unint64_t sub_2197B8E30()
{
  result = qword_280ED28B0;
  if (!qword_280ED28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED28B0);
  }

  return result;
}

unint64_t sub_2197B8E84()
{
  result = qword_280ED2890;
  if (!qword_280ED2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2890);
  }

  return result;
}

uint64_t sub_2197B8ED8()
{
  v0 = sub_219BF7954();

  if (v0 >= 0x2E)
  {
    return 46;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2197B8F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v1 != 1)
  {
    sub_218B675EC(a1, a1 + 32, 1, (2 * v1) | 1);
  }

  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_2197B8FD0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2197B9040(void *a1)
{
  sub_21896FA3C();
  v37 = *(v3 - 8);
  v4 = *(v37 + 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = v1[4];
  swift_getObjectType();
  v9 = sub_218E97A64(a1, v8);
  v10 = v1[2];
  v39 = v9;
  v11 = v9[2];
  v12 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v13 = swift_allocObject();
  v14 = [v11 identifier];
  v15 = sub_219BF5414();
  v17 = v16;

  *(v13 + 16) = v15;
  *(v13 + 24) = v17;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 56) = 10;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = -1;
  v18 = v1[3];
  v19 = sub_219BDFA44();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = v10;
  sub_2187B14CC(v46, &v41, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v42)
  {
    sub_21875F93C(&v41, v43);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v21 = qword_280ED32D8;
    v20 = qword_280ED32E0;
    v22 = qword_280ED32E8;

    v36 = v20;
    sub_2188202A8(v20);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_2187448D0(&v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v21 = qword_280ED32D8;
    v23 = qword_280ED32E0;
    v22 = qword_280ED32E8;

    v36 = v23;
    sub_2188202A8(v23);
  }

  v40 = v13 | 0x2000000000000006;
  v42 = sub_219BDD274();
  *&v41 = v18;
  v24 = v38;
  sub_2189B4E2C(v7, v38);
  sub_2187B14CC(v48, v43, &qword_280EE33A0, &qword_280EE33B0);
  v25 = (v37[80] + 24) & ~v37[80];
  v26 = (v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
  v37 = v7;
  v28 = swift_allocObject();
  *(v28 + 16) = v18;
  sub_2189B4EAC(v24, v28 + v25);
  v29 = v28 + v26;
  v30 = v43[1];
  *v29 = v43[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v44;
  v31 = (v28 + v27);
  v32 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = 0;
  v31[1] = 0;
  v33 = v36;
  *v32 = v21;
  v32[1] = v33;
  v32[2] = v22;
  swift_retain_n();

  sub_2188202A8(v33);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v33);
  sub_2187448D0(v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v37);
  sub_2187448D0(&v41, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t type metadata accessor for AppRefreshRequestWindow()
{
  result = qword_27CC1F2E0;
  if (!qword_27CC1F2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197B9748()
{
  result = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SportsFavoritesSyncModule.createViewController(routeModel:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SportsFavoritesSyncViewController();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;

  sub_218DF5B38(v2, v3);
  v6 = sub_219BE1E04();

  if (v6)
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197B98BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1BA4();
}

uint64_t SportsFavoritesSyncModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t SportsFavoritesSyncModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2197B9A68(uint64_t a1, void (*a2)(char *), uint64_t a3, unint64_t a4)
{
  v31 = a3;
  v32 = a2;
  sub_218E2C134(0, &qword_27CC127F8, MEMORY[0x277D6DF88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  sub_2197BA18C();
  MEMORY[0x28223BE20](v14 - 8);
  sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  if (a4 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v20 = sub_2197BA258(&qword_27CC1F300);
    v29 = v6;
    v21 = v20;
    v22 = sub_2197BA258(&qword_27CC1F308);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v11, v21, v22);
    sub_2189528B0();
    sub_218952904();
    sub_219BEB2D4();
    sub_2197B9F08();
    sub_218E2C9AC();
    sub_219BEB324();
    (*(v30 + 8))(v13, v11);
    sub_2197BA2B8(a4, v19);
    sub_2197BA910(a4, v19);
    sub_2197BAF6C();
    v24 = *(v23 + 48);
    (*(v17 + 16))(v9, v19, v16);
    v25 = *MEMORY[0x277D6D868];
    v26 = sub_219BE6DF4();
    (*(*(v26 - 8) + 104))(&v9[v24], v25, v26);
    v27 = v29;
    (*(v7 + 104))(v9, *MEMORY[0x277D6DF70], v29);
    v32(v9);
    (*(v7 + 8))(v9, v27);
    return (*(v17 + 8))(v19, v16);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D6DF80], v6);
  v32(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2197B9F08()
{
  sub_218E2CAD4();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_218C72018();
  v4 = v3;
  v5 = sub_218E2CB84(&qword_27CC12838);
  v6 = sub_218E2CB84(&qword_27CC12840);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v4, v5, v6);
  sub_2189528B0();
  sub_218952904();
  return sub_219BE6924();
}

uint64_t sub_2197BA0F4(uint64_t a1)
{
  v2 = sub_2189B0A6C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2197BA134()
{
  result = qword_27CC1F2F0;
  if (!qword_27CC1F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F2F0);
  }

  return result;
}

void sub_2197BA18C()
{
  if (!qword_27CC1F2F8)
  {
    sub_218E2C134(255, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
    sub_2197BA258(&qword_27CC1F300);
    sub_2197BA258(&qword_27CC1F308);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F2F8);
    }
  }
}

uint64_t sub_2197BA258(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218E2C134(255, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2197BA2B8(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  sub_218C72018();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2CAD4();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v39[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_38:
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v5;
  v35 = v11;
  if (v12)
  {
    v30[1] = v8;
    v5 = 0;
    v8 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v8)
      {
        v13 = MEMORY[0x21CECE0F0](v5, a1);
        v14 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v11 = v35;
          break;
        }
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v13 = *(a1 + 8 * v5 + 32);

        v14 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v15 = [*(*(v13 + 24) + 16) tagType];
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_44;
        }

        sub_219BF73D4();
        v11 = *(v39[0] + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
        if (v15 != 1)
        {
          goto LABEL_44;
        }
      }

      ++v5;
      if (v14 == v12)
      {
        goto LABEL_17;
      }
    }
  }

  v39[0] = sub_219758FD4(v16);
  sub_218A24FC0(v39);

  a1 = v39[0];
  v17 = v39[0] < 0 || (v39[0] & 0x4000000000000000) != 0;
  if (!v17)
  {
    if (*(v39[0] + 16))
    {
      goto LABEL_23;
    }

LABEL_40:
  }

  if (!sub_219BF7214())
  {
    goto LABEL_40;
  }

LABEL_23:
  sub_2197EC8C8(v39);
  v40 = 1;
  v18 = sub_218E2CB84(&qword_27CC12838);
  v19 = sub_218E2CB84(&qword_27CC12840);
  v20 = MEMORY[0x277D84F90];
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v37, v18, v19);
  sub_2189528B0();
  sub_218952904();
  sub_219BE6924();
  if (!v17)
  {
    v21 = *(a1 + 16);
    if (v21)
    {
      goto LABEL_25;
    }

LABEL_35:

LABEL_36:
    v28 = v33;
    sub_219BE6984();

    sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
    sub_218E2C9AC();
    sub_219BEB324();
    return (*(v32 + 8))(v11, v28);
  }

  v21 = sub_219BF7214();
  if (!v21)
  {
    goto LABEL_35;
  }

LABEL_25:
  v39[0] = v20;
  sub_218C38040(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v39[0];
    v24 = v31;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CECE0F0](v22, a1);
      }

      else
      {
      }

      v38 = v25;
      sub_219BE5FB4();
      v39[0] = v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_218C38040(v26 > 1, v27 + 1, 1);
        v24 = v31;
        v23 = v39[0];
      }

      ++v22;
      *(v23 + 16) = v27 + 1;
      (*(v36 + 32))(v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27, v24, v37);
    }

    while (v21 != v22);

    v11 = v35;
    goto LABEL_36;
  }

  __break(1u);
LABEL_44:
  sub_219BF7514();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2197BA910(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  sub_218C72018();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2CAD4();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v39[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_38:
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v5;
  v35 = v11;
  if (v12)
  {
    v30[1] = v8;
    v5 = 0;
    v8 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v8)
      {
        v13 = MEMORY[0x21CECE0F0](v5, a1);
        v14 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v11 = v35;
          break;
        }
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v13 = *(a1 + 8 * v5 + 32);

        v14 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v15 = [*(*(v13 + 24) + 16) tagType];
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v15 != 1)
        {
          goto LABEL_44;
        }

        sub_219BF73D4();
        v11 = *(v39[0] + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v5;
      if (v14 == v12)
      {
        goto LABEL_17;
      }
    }
  }

  v39[0] = sub_219758FD4(v16);
  sub_218A24FC0(v39);

  a1 = v39[0];
  v17 = v39[0] < 0 || (v39[0] & 0x4000000000000000) != 0;
  if (!v17)
  {
    if (*(v39[0] + 16))
    {
      goto LABEL_23;
    }

LABEL_40:
  }

  if (!sub_219BF7214())
  {
    goto LABEL_40;
  }

LABEL_23:
  sub_2197EC9B8(v39);
  v40 = 2;
  v18 = sub_218E2CB84(&qword_27CC12838);
  v19 = sub_218E2CB84(&qword_27CC12840);
  v20 = MEMORY[0x277D84F90];
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v37, v18, v19);
  sub_2189528B0();
  sub_218952904();
  sub_219BE6924();
  if (!v17)
  {
    v21 = *(a1 + 16);
    if (v21)
    {
      goto LABEL_25;
    }

LABEL_35:

LABEL_36:
    v28 = v33;
    sub_219BE6984();

    sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
    sub_218E2C9AC();
    sub_219BEB324();
    return (*(v32 + 8))(v11, v28);
  }

  v21 = sub_219BF7214();
  if (!v21)
  {
    goto LABEL_35;
  }

LABEL_25:
  v39[0] = v20;
  sub_218C38040(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v39[0];
    v24 = v31;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CECE0F0](v22, a1);
      }

      else
      {
      }

      v38 = v25 | 0x8000000000000000;
      sub_219BE5FB4();
      v39[0] = v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_218C38040(v26 > 1, v27 + 1, 1);
        v24 = v31;
        v23 = v39[0];
      }

      ++v22;
      *(v23 + 16) = v27 + 1;
      (*(v36 + 32))(v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27, v24, v37);
    }

    while (v21 != v22);

    v11 = v35;
    goto LABEL_36;
  }

  __break(1u);
LABEL_44:
  sub_219BF7514();
  __break(1u);

  __break(1u);
  return result;
}

void sub_2197BAF6C()
{
  if (!qword_27CC1F310)
  {
    sub_218E2C134(255, &qword_27CC0B008, MEMORY[0x277D6EC60]);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F310);
    }
  }
}

uint64_t sub_2197BB028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_2197BB920(0, &qword_280E91A90, sub_218700FF8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197BB920(0, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_2197BB920(0, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197BB974(a1, v17, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_2197BB974(v14, v12, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v12, 1, v23) == 1)
    {
      sub_218700FF8();
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_2190F6EC8(v29, v36);
      sub_2197BB9E0(v14, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      if (v24(v12, 1, v37) != 1)
      {
        sub_2197BB9E0(v12, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      }
    }

    else
    {
      sub_2197BB9E0(v14, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      v28 = v36;
      sub_2197BBA3C(v12, v36, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
    }

    sub_2197BBA3C(v28, v21, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
    sub_2197BB9E0(v34, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_2197BB9E0(v17, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    }
  }

  else
  {
    sub_2197BB9E0(a1, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    sub_2197BBA3C(v17, v21, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  }

  v30 = v40;
  sub_2197BBA3C(v21, v40, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for AudioPlaylistFeedKnobsConfig();
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_2197BB594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2197BB920(0, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_2197BBAA4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197BBB00();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for AudioPlaylistFeedGroupKnobs();
    v18 = 0;
    sub_2197BBB54(&qword_27CC1F328, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_2197BB028(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197BB7C0@<X0>(char *a1@<X8>)
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