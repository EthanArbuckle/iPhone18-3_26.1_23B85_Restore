void sub_218D91DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D91E10(uint64_t a1, uint64_t a2)
{
  sub_218D91DAC(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D91EA4(uint64_t a1)
{
  sub_218D91DAC(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218D91F68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 32) = 0x656C6269736976;
  *(inited + 40) = 0xE700000000000000;
  v4 = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 72) = v4;
  strcpy((inited + 80), "isPresenting");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 120) = v4;
  *(inited + 96) = v2;
  v5 = sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  return v5;
}

uint64_t getEnumTagSinglePayload for PuzzleVisibilityChangedEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for PuzzleVisibilityChangedEvent(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_218D921B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_218D9221C(uint64_t a1, double *a2, char *a3)
{
  sub_21881ACB0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v44 - v7;
  v8 = sub_219BEC004();
  v49 = *(v8 - 8);
  v50 = v8;
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a3[qword_27CC1F030];
  [v11 setAdjustsFontSizeToFitWidth_];
  v48 = *&a3[qword_27CC1F038];
  [v48 setAdjustsFontSizeToFitWidth_];
  v12 = *a2;
  v13 = a2[1];
  [a3 setFrame_];
  if (sub_219BED0C4())
  {
    v14 = *&a3[qword_27CC1F020];
    v15 = type metadata accessor for NameLogoMastheadViewLayoutAttributes();
    [v14 setFrame_];
    [*&a3[qword_27CC1F018] setFrame_];
  }

  [*&a3[qword_280EC9828] setFrame_];
  v16 = *&a3[qword_280EC9820];
  v17 = (a2 + *(type metadata accessor for NameLogoMastheadViewLayoutAttributes() + 44));
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v46 = v17;
  [v16 setFrame_];
  [*&a3[qword_280EC9818] setFrame_];
  v22 = a2[15];
  v23 = a2[16];
  v24 = a2[17];
  v25 = a2[18];
  v47 = *&a3[qword_280EC9810];
  [v47 setFrame_];
  [a3 setAccessibilityIgnoresInvertColors_];
  [*&a3[qword_27CC1F028] setFrame_];
  v26 = [a3 traitCollection];
  sub_21950F57C(v26, &v53);

  if (v54)
  {
    sub_2186CB1F0(&v53, v56);
    sub_218718690(v56, &v53);
    v27 = sub_219BE7D54();
    swift_allocObject();
    v28 = sub_219BE7D44();
    v54 = v27;
    v55 = MEMORY[0x277D6DD38];
    *&v53 = v28;

    sub_219BEB3A4();

    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  else
  {
    sub_218D92854(&v53, &qword_280EE5A68, sub_2189A7118);
  }

  [v11 setNumberOfLines_];
  v29 = [a3 traitCollection];
  v30 = sub_218F959F4(a1, v29, *(a2 + 80));

  [v11 setAttributedText_];
  [v11 setFrame_];
  v31 = v48;
  [v48 setNumberOfLines_];
  v32 = [a3 traitCollection];
  v33 = sub_218F95C74(a1, v32);

  [v31 setAttributedText_];
  [v31 setFrame_];
  v34 = sub_21950F7B8();
  [v47 setBackgroundColor_];

  v35 = *&a3[qword_27CC1F040];
  [v35 setFrame_];
  v36 = type metadata accessor for NameLogoMastheadModel();
  v37 = v51;
  sub_21881AC1C(a1 + *(v36 + 24), v51);
  v39 = v49;
  v38 = v50;
  if ((*(v49 + 48))(v37, 1, v50) == 1)
  {
    sub_218D92854(v37, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
LABEL_10:
    v42 = 1;
    goto LABEL_11;
  }

  v40 = v45;
  (*(v39 + 32))(v45, v37, v38);
  v41 = sub_219BEBFF4();
  (*(v39 + 8))(v40, v38);
  if (!v41)
  {
    goto LABEL_10;
  }

  v42 = 0;
LABEL_11:
  [v35 setHidden_];
  sub_218F95E6C(v35);
  return sub_219AF91F0(a3, (v52 + 56));
}

uint64_t sub_218D92854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21881ACB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218D928B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_218D928F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218D92948()
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

uint64_t sub_218D92A0C()
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v0 = CACurrentMediaTime();
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BF5054();
  sub_219BE3204();
  sub_2187D9028();
  v2 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2F94();

  v4 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2FE4();
}

uint64_t sub_218D92CD8(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 8))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_218D95688(0);
  sub_218D9556C(&qword_27CC11C00, sub_218D95688);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_218D92DE0()
{
  v0 = sub_219BE61B4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  sub_219BF6214();
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219BE6EC4();
    sub_219BE6F74();

    (*(v1 + 104))(v4, *MEMORY[0x277D6D518], v0);
    sub_218D9556C(&qword_280EE5AF0, MEMORY[0x277D6D528]);
    sub_219BF53A4();
    v11 = *(v1 + 8);
    v11(v4, v0);
    v11(v6, v0);
    type metadata accessor for AudioPlaylistFeedInteractor();
    sub_219363A20();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218D930B0()
{
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 96) = MEMORY[0x277D837D0];
  *(v0 + 104) = sub_2186FC3BC();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218D93284()
{
  v1 = *v0;
  sub_219BE6EC4();
  v2 = sub_218982870();

  if ((v2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 80);
  *(v5 + 24) = *(v1 + 88);
  *(v5 + 32) = v4;
  *(v5 + 40) = HIBYTE(v2) & 1;

  sub_219BE6F24();
}

uint64_t sub_218D9341C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_219BE61B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {

      sub_219BE6EC4();
      sub_219BE6F74();

      (*(v5 + 104))(v8, *MEMORY[0x277D6D518], v4);
      sub_218D9556C(&qword_280EE5AF0, MEMORY[0x277D6D528]);
      sub_219BF53A4();
      v12 = *(v5 + 8);
      v12(v8, v4);
      v12(v10, v4);
      type metadata accessor for AudioPlaylistFeedInteractor();
      sub_219363A20();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218D93658()
{
  v38 = sub_219BDC104();
  v37 = *(v38 - 8);
  v0 = MEMORY[0x28223BE20](v38);
  v36 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v35 = &v34 - v2;
  sub_218D95618();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE7634();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = sub_219BE7654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9084();
  sub_219BE9064();
  v18 = &v6[*(v4 + 56)];
  (*(v15 + 32))(v6, v17, v14);
  (*(v8 + 32))(v18, v13, v7);
  v19 = (*(v15 + 88))(v6, v14);
  if (v19 == *MEMORY[0x277D6DAB8] || v19 == *MEMORY[0x277D6DAA8] || v19 == *MEMORY[0x277D6DAB0] || v19 == *MEMORY[0x277D6DA98])
  {
    return (*(v8 + 8))(v18, v7);
  }

  if (v19 == *MEMORY[0x277D6DAA0])
  {
    if ((*(v8 + 88))(v18, v7) == *MEMORY[0x277D6DA60])
    {
      (*(v8 + 96))(v18, v7);
      sub_218AEF9F8();
      v22 = *(v21 + 48);
      v23 = v37;
      v24 = *(v37 + 32);
      v25 = v35;
      v26 = v38;
      v24(v35, v18, v38);
      v27 = &v18[v22];
      v28 = v36;
      v24(v36, v27, v26);
      sub_218D93BC8(v25, v28);
      v29 = *(v23 + 8);
      v29(v28, v26);
      return (v29)(v25, v26);
    }

    else
    {
      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_219C09BA0;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_219BE9064();
      sub_219BF7484();
      v31 = *(v8 + 8);
      v31(v11, v7);
      v32 = v39;
      v33 = v40;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_2186FC3BC();
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_219BE5314();

      return (v31)(v18, v7);
    }
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218D93BC8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v27 = a1;
  v30 = *v2;
  sub_218985EAC();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioPlaylistFeedModel();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D956A8(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  sub_218B7E48C();
  v24 = v13;
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[4];
  sub_219BE6EC4();
  v33 = v34;
  sub_218987004();
  sub_218D9556C(&qword_27CC11BF0, sub_218987004);
  sub_219BE7B94();

  sub_219BEB344();
  (*(v10 + 8))(v12, v9);
  sub_219BE5FC4();
  v17 = v28;
  v16 = v29;
  v18 = v26;
  (*(v28 + 32))(v26, v7, v29);
  v34 = (*(*(v30 + 88) + 24))(v15, v32, *(v30 + 80));
  sub_218D95688(0);
  sub_218D9556C(&qword_27CC11C00, sub_218D95688);
  sub_219BE6EF4();
  v19 = v18;
  sub_219BF07D4();
  v20 = *(v34 + 16);
  swift_unknownObjectRetain();

  v21 = sub_219BDC0E4();
  sub_2196E6C70(v20, v21);
  swift_unknownObjectRelease();

  (*(v17 + 8))(v19, v16);
  return (*(v31 + 8))(v15, v24);
}

uint64_t sub_218D9402C()
{
  sub_218D955B4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v54 = &v37 - v1;
  v2 = sub_219BDE294();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDEE04();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AudioPlaylistFeedRouteModel();
  MEMORY[0x28223BE20](v51);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1324();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BF1C74();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF2A04();
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D955B4(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
  v15 = v14;
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = type metadata accessor for AudioPlaylistFeedModel();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E48C();
  sub_219BE5FC4();
  v42 = v23;
  (*(v23 + 32))(v25, v20, v22);
  v43 = v22;
  sub_219BF07D4();
  v26 = *(v56 + 16);
  swift_unknownObjectRetain();

  v58 = v26;
  (*(v11 + 104))(v13, *MEMORY[0x277D33A68], v38);
  (*(v9 + 104))(v39, *MEMORY[0x277D33570], v40);
  (*(v45 + 13))(v41, *MEMORY[0x277D33298], v46);
  v56 = 0u;
  v57 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_unknownObjectRetain();
  v27 = v44;
  sub_219BDEDE4();
  v28 = *(v55 + 16);
  v29 = v48;
  v45 = v17;
  v46 = v15;
  v28(v48, v17, v15);
  v31 = v49;
  v30 = v50;
  (*(v49 + 104))(v29, *MEMORY[0x277D2FF00], v50);
  v32 = sub_219BDB954();
  v33 = v54;
  (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  v34 = v47;
  sub_219BDD904();
  sub_218838478(v33);
  (*(v31 + 8))(v29, v30);
  (*(v52 + 8))(v27, v53);
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    sub_218F9EB3C(v34);
    swift_unknownObjectRelease();
    sub_218D95874(v34, type metadata accessor for AudioPlaylistFeedRouteModel);
    (*(v55 + 8))(v45, v46);
    (*(v42 + 8))(v25, v43);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_218D95874(v34, type metadata accessor for AudioPlaylistFeedRouteModel);
    (*(v55 + 8))(v45, v46);
    return (*(v42 + 8))(v25, v43);
  }
}

uint64_t sub_218D94810()
{
  v0 = type metadata accessor for AudioPlaylistFeedRouteModel();
  MEMORY[0x28223BE20](v0);
  v2 = (v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for AudioPlaylistFeedModel();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E48C();
  sub_219BE5FC4();
  (*(v8 + 32))(v10, v5, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v12 = Strong;
  sub_219BF07D4();
  v13 = *(v15[1] + 16);
  swift_unknownObjectRetain();

  *v2 = v13;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
  sub_218F9EB3C(v2);
  sub_218D95874(v2, type metadata accessor for AudioPlaylistFeedRouteModel);
  (*(v8 + 8))(v10, v7);
  return swift_unknownObjectRelease();
}

uint64_t *sub_218D94A48()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218D94B08()
{
  sub_218D94A48();

  return swift_deallocClassInstance();
}

uint64_t sub_218D94B8C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v27 = *v2;
  v3 = sub_219BDBD64();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshRequest();
  MEMORY[0x28223BE20](refreshed);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D956A8(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  sub_219BE6EC4();
  v28 = v29;
  sub_218987004();
  sub_218D9556C(&qword_27CC11BF0, sub_218987004);
  sub_219BE7B94();

  v14 = sub_2197266D4();
  (*(v11 + 8))(v13, v10);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218D9556C(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    sub_219BEE7A4();
    sub_219BDBD54();
    v16 = sub_219BDBD44();
    v18 = v17;
    v19 = (*(v23 + 8))(v5, v24);
    *v8 = v16;
    v8[1] = v18;
    MEMORY[0x28223BE20](v19);
    v20 = v26;
    *(&v22 - 4) = v25;
    *(&v22 - 3) = v20;
    *(&v22 - 2) = v8;
    type metadata accessor for AudioPlaylistFeedRefreshResult();
    sub_219BE3204();
    sub_2187D9028();
    v21 = sub_219BF66A4();

    sub_219BE2F94();
    sub_21885AB78(v14);

    return sub_218D95874(v8, type metadata accessor for AudioPlaylistFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D8A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    return sub_219BE5314();
  }
}

uint64_t sub_218D94FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshRequest();
  v5 = *(refreshed - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v7 = CACurrentMediaTime();
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218D955B4(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218D95978(a3, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlaylistFeedRefreshRequest);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_218D959E0(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AudioPlaylistFeedRefreshRequest);
  v10 = sub_219BE2E54();
  type metadata accessor for AudioPlaylistFeedRefreshResult();
  v11 = sub_219BE2F64();

  return v11;
}

uint64_t sub_218D9521C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshResult();
  v13 = *(refreshed - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v6 = *(v3 + 88);
  v7 = *(v3 + 80);
  v14 = (*(v6 + 16))(a1, v7, v6);
  v15 = v14;
  v8 = swift_allocObject();
  swift_weakInit();
  sub_218D95978(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlaylistFeedRefreshResult);
  v9 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v8;
  sub_218D959E0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AudioPlaylistFeedRefreshResult);
  sub_218D95688(0);
  sub_218D9556C(&qword_27CC11C00, sub_218D95688);

  sub_219BE6EF4();
}

uint64_t sub_218D95468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*(a3 + *(type metadata accessor for AudioPlaylistFeedRefreshResult() + 24)) >> 62)
      {
        sub_219BF7214();
      }

      type metadata accessor for AudioPlaylistFeedInteractor();

      sub_219363A20();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_218D9556C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218D955B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218D95618()
{
  if (!qword_27CC11BC8)
  {
    sub_219BE7654();
    sub_219BE7634();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11BC8);
    }
  }
}

void sub_218D956A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218D9556C(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218D9556C(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218D95874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D958D4(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaylistFeedRefreshResult() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_218D95468(a1, v4, v5);
}

uint64_t sub_218D95978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D959E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D95ABC()
{
  v0 = sub_219BF1984();
  MEMORY[0x28223BE20](v0);
  swift_unknownObjectRetain();
  sub_219BF1974();
  sub_218D98E40(&qword_280E907E8, MEMORY[0x277D334B0]);
  return sub_219BF1994();
}

uint64_t sub_218D95B90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218D95C1C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v221 = a7;
  v216 = a4;
  v208 = sub_219BE5C64();
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_219BE60B4();
  v212 = *(v213 - 8);
  v12 = MEMORY[0x28223BE20](v213);
  v211 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v215 = v15;
  v16 = *(v15 + 16);
  v220 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = a6;
  v16();
  v17 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v17 setAccessibilityLabel_];
  v18 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v18 setText_];
  v19 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v19 setText_];
  [a2 setAccessibilityLabel_];
  v20 = type metadata accessor for TagView();
  v227.receiver = a2;
  v227.super_class = v20;
  objc_msgSendSuper2(&v227, sel_setAccessibilityValue_, 0);
  v21 = *(a3 + 40);
  v22 = *(a3 + 48);
  v23 = *(a3 + 56);
  v24 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v24 = *(a3 + 32);
  *(v24 + 1) = v21;
  *(v24 + 2) = v22;
  *(v24 + 3) = v23;
  [v19 setFrame_];
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v26 = *(a3 + 80);
  *v25 = *(a3 + 64);
  *(v25 + 1) = v26;
  v28 = *(a3 + 200);
  v27 = *(a3 + 208);
  [v17 setFrame_];
  v29 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v29 setFrame_];
  v30 = *(a3 + 128);
  v31 = *(a3 + 136);
  v32 = *(a3 + 144);
  v33 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v33 = *(a3 + 120);
  *(v33 + 1) = v30;
  *(v33 + 2) = v31;
  *(v33 + 3) = v32;
  [v18 setFrame_];
  v34 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v35 = *(a3 + 168);
  *v34 = *(a3 + 152);
  *(v34 + 1) = v35;
  v36 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v37 = *(a3 + 248);
  v38 = *(a3 + 256);
  v39 = *(a3 + 264);
  v40 = *(a3 + 272);
  [v36 setFrame_];
  v41 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v41 setFrame_];
  v217 = a2;
  v42 = *(a3 + 312);
  v43 = *(a3 + 320);
  v44 = *(a3 + 328);
  v45 = *(a3 + 336);
  v214 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v214 setFrame_];
  [v19 setNumberOfLines_];
  [v18 setNumberOfLines_];
  LODWORD(v46) = *(a3 + 112);
  [v19 ts:v46 setHyphenationFactor:?];
  LODWORD(v47) = *(a3 + 116);
  v218 = v18;
  [v18 ts:v47 setHyphenationFactor:?];
  v48 = [v36 layer];
  v228.origin.x = v37;
  v228.origin.y = v38;
  v228.size.width = v39;
  v228.size.height = v40;
  [v48 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v49 = *(a3 + 489);
  v50 = sub_219534AD0(v49);
  [v19 setFont_];

  v51 = objc_opt_self();
  v52 = [v51 labelColor];
  [v19 setTextColor_];

  v210 = v19;
  [v19 setLineBreakMode_];
  v209 = v17;
  [v17 setContentMode_];
  if ((v49 & 1) == 0)
  {
    v53 = *__swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v54 = [v51 systemBackgroundColor];
    [v29 setBackgroundColor_];

    v55 = [v29 layer];
    [*(v53 + 32) cornerRadius];
    [v55 setCornerRadius_];
  }

  v56 = *(a5 + 80);
  v219 = a5;
  __swift_project_boxed_opaque_existential_1((a5 + 56), v56);
  v57 = (*(v221 + 40))(v222);
  sub_219534B5C(v49, v218, v57);

  v58 = [v51 systemPinkColor];
  v59 = *&v36[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v36[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v58;
  v60 = v58;

  if (v60)
  {
    v61 = [v36 traitCollection];
    v62 = [v60 resolvedColorWithTraitCollection_];

    [v36 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(v219 + 7, v219[10]);
  v63 = sub_219534AD0(v49);
  [v41 setFont_];

  v64 = [v51 secondaryLabelColor];
  [v41 setTextColor_];

  v65 = v217;
  sub_218C5949C(a3, v217);
  CGRectGetHeight(*a3);
  v66 = objc_allocWithZone(sub_219BE7F64());
  v67 = sub_219BE7F44();
  v68 = *(a3 + 472);
  sub_219BE7F54();
  v69 = v214;
  v214 = v67;
  [v69 addSubview_];
  v70 = (*(v221 + 56))(v222);
  v71 = (v70 >> 21) & 3;
  v72 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (v71 > 1)
  {
    if (v71 == 2)
    {
      if (sub_219093144(2u, *(v68 + 16)))
      {
        v79 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
        v80 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        if (v80)
        {
          v81 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        }

        else
        {
          v94 = sub_218EC4E8C(1);
          v95 = *&v65[v79];
          *&v65[v79] = v94;
          v81 = v94;
        }

        v96 = (v206 + 8);
        if (v70)
        {
          v97 = MEMORY[0x277D6D338];
        }

        else
        {
          v97 = MEMORY[0x277D6D340];
        }

        v98 = v207;
        v99 = v208;
        (*(v206 + 104))(v207, *v97, v208);
        type metadata accessor for AccessoryButton();
        sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton);
        v100 = v80;
        sub_219BEB694();
        (*v96)(v98, v99);

        v72 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      }
    }

    else
    {
      v82 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v82)
      {
        [v82 setHidden_];
      }
    }
  }

  else
  {
    if (v71)
    {
      goto LABEL_35;
    }

    v74 = *(v68 + 16);
    v75 = sub_219093144(0, v74);
    v205 = v74;
    if (v75)
    {
      v76 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v77 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      if (v77)
      {
        v78 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      }

      else
      {
        v83 = sub_218EC4E8C(0);
        v84 = *&v65[v76];
        *&v65[v76] = v83;
        v78 = v83;
      }

      v85 = v206;
      v86 = MEMORY[0x277D6D338];
      if ((v70 & 0x800000) != 0)
      {
        v86 = MEMORY[0x277D6D340];
      }

      v87 = v207;
      v88 = v208;
      (*(v206 + 104))(v207, *v86, v208);
      type metadata accessor for AccessoryButton();
      sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v89 = v77;
      sub_219BEB694();
      (*(v85 + 8))(v87, v88);

      v72 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v74 = v205;
    }

    if (sub_219093144(1u, v74))
    {
      v90 = sub_218C5824C();
      [v90 setHidden_];
    }

    if (sub_219093144(2u, v74))
    {
      v91 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v92 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v92)
      {
        v93 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v101 = sub_218EC4E8C(1);
        v102 = *&v65[v91];
        *&v65[v91] = v101;
        v93 = v101;
      }

      v103 = v206;
      v104 = MEMORY[0x277D6D340];
      if ((v70 & 0x100) != 0)
      {
        v104 = MEMORY[0x277D6D338];
      }

      v105 = v207;
      v106 = v208;
      (*(v206 + 104))(v207, *v104, v208);
      type metadata accessor for AccessoryButton();
      sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v107 = v92;
      sub_219BEB694();
      (*(v103 + 8))(v105, v106);

      v72 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v74 = v205;
    }

    if (sub_219093144(3u, v74))
    {
LABEL_35:
      v108 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
      v109 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v109)
      {
        v110 = *&v65[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      }

      else
      {
        v111 = sub_219608868();
        v112 = *&v65[v108];
        *&v65[v108] = v111;
        v110 = v111;
      }

      v113 = v109;
      if (v70)
      {
        [v110 setHidden_];
        if (v70 == 1)
        {
          v114 = MEMORY[0x277D6D338];
        }

        else
        {
          v114 = MEMORY[0x277D6D340];
        }

        v115 = v206;
        v116 = v207;
        v117 = v208;
        (*(v206 + 104))(v207, *v114, v208);
        type metadata accessor for NotificationSwitch();
        sub_218D98E40(&qword_27CC11C08, type metadata accessor for NotificationSwitch);
        sub_219BE68E4();

        (*(v115 + 8))(v116, v117);
      }

      else
      {
        [v110 setHidden_];
      }
    }
  }

  v118 = v73[484];
  v119 = *&v65[v118];
  if (v119)
  {
    [v119 setIsAccessibilityElement_];
  }

  if (*&v65[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v120 = *&v65[v118];
    if (v120)
    {
      v121 = *&v65[v118];
    }

    else
    {
      v122 = sub_218EC4E8C(0);
      v123 = *&v65[v118];
      *&v65[v118] = v122;
      v121 = v122;

      v120 = 0;
    }

    v124 = v120;
    [v121 setIsAccessibilityElement_];
  }

  v125 = *&v65[v72[486]];
  if (v125)
  {
    [v125 setIsAccessibilityElement_];
  }

  v126 = v221;
  v127 = *(v221 + 16);
  v128 = v222;
  v127(v222, v221);
  v129 = sub_219BF53D4();

  [v210 setText_];

  (*(v126 + 32))(v128, v126);
  if (v130)
  {
    v131 = sub_219BF53D4();
  }

  else
  {
    v131 = 0;
  }

  v132 = v219;
  [v218 setText_];

  v133 = v221;
  v134 = v222;
  sub_218D98318(v220, v65, a3, v222, v221);
  v207 = v132[12];
  v135 = (*(v133 + 48))(v134, v133);
  v218 = v136;
  v138 = v137;
  v210 = (v127)(v134, v133);
  v219 = v139;
  __swift_project_boxed_opaque_existential_1(v132 + 2, v132[5]);
  v140 = MEMORY[0x277D6D488];
  sub_218D98F10(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
  v141 = v212;
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_219C09EC0;
  sub_219BE60A4();
  sub_219BE6094();
  v226 = v142;
  sub_218D98E40(&qword_280EE5B00, MEMORY[0x277D6D488]);
  sub_218D98F10(0, &qword_280E8F508, v140, MEMORY[0x277D83940]);
  sub_218D98E88();
  v143 = v211;
  v144 = v213;
  sub_219BF7164();
  LODWORD(v208) = sub_219BE87F4();
  (*(v141 + 8))(v143, v144);
  if (v138 > 1u)
  {
    if (v138 != 2)
    {
      v183 = v135;
      v184 = [v135 tagType];
      v185 = v218;
      if ((v184 - 1) >= 2)
      {
        sub_218A264C8(v183, v218, 3u);

        goto LABEL_72;
      }

      v186 = [v183 groupTitleColor];
      v187 = *(v207 + 7);
      swift_unknownObjectRetain();
      if (v186)
      {
        v188 = [v186 ne_color];

        type metadata accessor for TopicColorFeedNavImageStyler();
        v189 = swift_allocObject();
        *(v189 + 16) = v188;
        *(v189 + 24) = v187;
        v187 = v189;
      }

      swift_unknownObjectRetain();
      v190 = v209;
      v191 = [v209 traitCollection];
      [v191 displayScale];
      v193 = v192;

      v194 = type metadata accessor for FeedNavImageAssetHandle();
      v195 = objc_allocWithZone(v194);
      v196 = &v195[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
      *v196 = 0;
      *(v196 + 1) = 0;
      *&v195[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
      *&v195[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v183;
      v197 = swift_unknownObjectRetain();
      v198 = sub_219352488(v197);
      v199 = &v195[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
      *v199 = v198;
      v199[1] = v200;
      v201 = &v195[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
      *v201 = v28;
      v201[1] = v27;
      *&v195[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v187;
      *&v195[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v193;
      *&v195[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
      v224.receiver = v195;
      v224.super_class = v194;
      v163 = objc_msgSendSuper2(&v224, sel_init);
      sub_218A462FC(v163, v190, v210, v219, v208 & 1, v28, v27, 1.0);
      sub_218A264C8(v183, v185, 3u);
      swift_unknownObjectRelease();
      goto LABEL_69;
    }

    v164 = v209;
    [v209 setImage_];
    v165 = sub_219BF53D4();

    [v164 setAccessibilityLabel_];
    sub_218A264C8(v135, v218, 2u);
  }

  else
  {
    if (!v138)
    {
      v145 = v218;

      v146 = sub_219BF53D4();
      v147 = [objc_opt_self() imageNamed_];

      v148 = v147;
      if (!v147)
      {
        v149 = [objc_opt_self() welcomeToNewsIcon];
        if (!v149)
        {

          sub_218A264C8(v135, v145, 0);
          [v209 setImage_];
          sub_218A264C8(v135, v145, 0);
          goto LABEL_72;
        }

        v148 = v149;
      }

      v150 = v147;

      v151 = *(v207 + 7);
      v152 = v148;
      v153 = v209;
      v154 = [v209 traitCollection];
      [v154 displayScale];
      v156 = v155;

      v157 = type metadata accessor for FeedNavImageAssetHandle();
      v158 = objc_allocWithZone(v157);
      v159 = &v158[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
      *v159 = 0;
      *(v159 + 1) = 0;
      v160 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
      *&v158[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
      swift_beginAccess();
      *&v158[v160] = v152;
      v161 = &v158[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
      *v161 = v135;
      *(v161 + 1) = v145;
      v162 = &v158[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
      *v162 = v28;
      v162[1] = v27;
      *&v158[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v151;
      *&v158[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
      *&v158[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v156;
      *&v158[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
      v223.receiver = v158;
      v223.super_class = v157;
      swift_unknownObjectRetain();
      v163 = objc_msgSendSuper2(&v223, sel_init);
      sub_218A462FC(v163, v153, v210, v219, v208 & 1, v28, v27, 1.0);
      sub_218A264C8(v135, v145, 0);

LABEL_69:

      goto LABEL_72;
    }

    v166 = *(v207 + 7);
    v167 = v209;
    v168 = [v209 traitCollection];
    [v168 displayScale];
    v170 = v169;

    v171 = type metadata accessor for FeedNavImageAssetHandle();
    v172 = objc_allocWithZone(v171);
    v173 = &v172[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v173 = 0;
    *(v173 + 1) = 0;
    v174 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
    *&v172[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    swift_beginAccess();
    v175 = v135;
    *&v172[v174] = v135;
    v176 = &v172[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    v177 = v210;
    v178 = v219;
    *v176 = v210;
    *(v176 + 1) = v178;
    v179 = &v172[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v179 = v28;
    v179[1] = v27;
    *&v172[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v166;
    *&v172[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
    *&v172[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v170;
    *&v172[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v180 = v135;
    v181 = v218;
    sub_218A472B0(v180, v218, 1u);
    v225.receiver = v172;
    v225.super_class = v171;

    swift_unknownObjectRetain();
    v182 = objc_msgSendSuper2(&v225, sel_init);
    sub_218A462FC(v182, v167, v177, v178, v208 & 1, v28, v27, 1.0);
    sub_218A264C8(v175, v181, 1u);
  }

LABEL_72:
  v202 = v220;
  v203 = v222;
  sub_218D97C8C(v220, v217, v216, v222, v221);

  return (*(v215 + 8))(v202, v203);
}

uint64_t sub_218D972A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v14 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  v17 = *(sub_219BF69C4() + 16);

  if (v17 || sub_219093144(2u, *(*(a3 + 472) + 16)) || (a5 & 1) == 0)
  {
    if ([*(a6 + 224) useOfflineMode] && ((*(a8 + 96))(v9, a8) & 1) == 0)
    {
      v18 = a2;
      v19 = 0;
    }

    else
    {
      v18 = a2;
      v19 = 1;
    }

    sub_218D978D0(v18, v19);
  }

  else
  {
    v20 = sub_219BE8284();
    v21 = *&v20[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

    [v21 setEnabled_];
  }

  v22 = sub_219BE8284();
  v23 = *&v22[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  v24 = [v23 isEnabled];
  v25 = sub_219BE8284();
  v26 = *MEMORY[0x277D76580];
  v27 = TagView.accessibilityTraits.getter();
  v28 = v27 & v26;
  if (v24)
  {
    if (v28)
    {
      v29 = ~v26;
    }

    else
    {
      v29 = -1;
    }

    v30 = type metadata accessor for TagView();
    v90.receiver = v25;
    v90.super_class = v30;
    objc_msgSendSuper2(&v90, sel_setAccessibilityTraits_, v29 & v27);
  }

  else
  {
    if (v28 == v26)
    {
      v26 = 0;
    }

    v31 = type metadata accessor for TagView();
    v91.receiver = v25;
    v91.super_class = v31;
    objc_msgSendSuper2(&v91, sel_setAccessibilityTraits_, v26 | v27);
  }

  v32 = sub_219BE8284();
  v33 = *&v32[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  v89 = a5;
  v34 = a5 & 1;
  v35 = 32;
  if (v34)
  {
    v35 = 64;
  }

  v36 = 40;
  if (v34)
  {
    v36 = 72;
  }

  v37 = 48;
  if (v34)
  {
    v37 = 80;
  }

  v38 = 56;
  if (v34)
  {
    v38 = 88;
  }

  [v33 setFrame_];

  v39 = sub_219BE8284();
  v40 = *&v39[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

  v41 = 176;
  v42 = 168;
  v43 = 160;
  v44 = 152;
  if (!v34)
  {
    v44 = 120;
    v43 = 128;
    v42 = 136;
    v41 = 144;
  }

  [v40 setFrame_];

  v45 = *(*(a3 + 472) + 16);
  if (sub_219093144(8u, v45))
  {
    v46 = sub_219BE8284();
    v47 = *&v46[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

    v48 = v89 & 1;
    v49 = 32;
    if (v89)
    {
      v49 = 376;
    }

    v50 = 40;
    if (v89)
    {
      v50 = 384;
    }

    v51 = 48;
    if (v89)
    {
      v51 = 392;
    }

    v52 = 56;
    if (v89)
    {
      v52 = 400;
    }

    [v47 setFrame_];

    v53 = sub_219BE8284();
    v54 = *&v53[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

    v55 = 432;
    v56 = 424;
    v57 = 416;
    v58 = 408;
    v59 = v48;
    v60 = v48 == 0;
    if (v48)
    {
      v61 = 464;
    }

    else
    {
      v61 = 208;
    }

    v62 = v9;
    if (v60)
    {
      v63 = 200;
    }

    else
    {
      v63 = 456;
    }

    v87 = v16;
    v88 = v14;
    if (v60)
    {
      v64 = 192;
    }

    else
    {
      v64 = 448;
    }

    if (v60)
    {
      v65 = 184;
    }

    else
    {
      v65 = 440;
    }

    if (v60)
    {
      v58 = 32;
    }

    if (!v59)
    {
      v57 = 40;
      v56 = 48;
      v55 = 56;
    }

    [v54 setFrame_];

    v66 = sub_219BE8284();
    v67 = *&v66[OBJC_IVAR____TtC7NewsUI27TagView_imageView];

    v68 = *(a3 + v63);
    v9 = v62;
    v69 = *(a3 + v64);
    v70 = *(a3 + v65);
    v16 = v87;
    v14 = v88;
    [v67 setFrame_];
  }

  v71 = sub_219093144(2u, v45);
  v72 = v89;
  if (v71)
  {
    v73 = sub_219BE8284();
    v74 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v75 = *&v73[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
    if (v75)
    {
      v76 = v75;
    }

    else
    {
      v77 = sub_218EC4E8C(1);
      v78 = *&v73[v74];
      *&v73[v74] = v77;
      v76 = v77;

      v73 = v78;
      v72 = v89;
    }

    [v76 setHidden_];
  }

  v79 = sub_219BE8284();
  v80 = *&v79[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];

  v81 = 312;
  if (v72)
  {
    v81 = 344;
  }

  v82 = 320;
  if (v72)
  {
    v82 = 352;
  }

  v83 = 328;
  if (v72)
  {
    v83 = 360;
  }

  v84 = 336;
  if (v72)
  {
    v84 = 368;
  }

  [v80 setFrame_];

  return (*(v14 + 8))(v16, v9);
}

void sub_218D978D0(uint64_t a1, char a2)
{
  v3 = sub_219BE8284();
  v4 = *&v3[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];

  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [v4 setEnabled_];

  v6 = sub_219BE8284();
  v7 = *&v6[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];

  [v7 setEnabled_];
  v8 = sub_219BE8284();
  v9 = *&v8[OBJC_IVAR____TtC7NewsUI27TagView_imageView];

  [v9 setAlpha_];
  v10 = sub_219BE8284();
  v11 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v12 = *&v10[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = sub_218EC4E8C(0);
    v15 = *&v10[v11];
    *&v10[v11] = v14;
    v13 = v14;

    v10 = v15;
  }

  v16 = *&v13[qword_280F620F0];
  [v16 setAlpha_];

  v17 = sub_219BE8284();
  v18 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  swift_beginAccess();
  v19 = a2 & 1;
  v17[v18] = a2 & 1;

  v20 = sub_219BE8284();
  v21 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable;
  swift_beginAccess();
  v20[v21] = v19;
}

uint64_t sub_218D97AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v24) = a3;
  v27 = a4;
  v28 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v12 = *(a5 + 64);
  v13 = v12(a4, a5);
  if ((v15 & 0x100) != 0)
  {
    if (v13 | v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15 == 0;
    }

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = v24 & 1;
    }

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  else
  {
    v16 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v17 = v12(v10, v11);
    sub_2190D8F20(v17, v19, v18 & 0x1FF);
    v20 = sub_219BF53D4();

    [v16 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v16 setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_218D97C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  (*(v11 + 16))(v10);
  sub_218D98194(a3, v37);
  v12 = v38;
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    swift_beginAccess();
    swift_beginAccess();
    v12 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_218D9828C(v37);
  }

  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v14 = *(a5 + 72);
  v15 = v14(a4, a5);
  sub_219534DC0(v13, v15 & 1, v12 & 1);
  v16 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v35 = v14;
  v17 = v14(a4, a5);
  LODWORD(v13) = [v13 isEnabled];
  v18 = (*(a5 + 80))(a4, a5);
  if (v13)
  {
    v19 = 0.7;
    if (v17)
    {
      v19 = 1.0;
    }

    [v16 setAlpha_];
    if (v12)
    {
      v20 = [objc_opt_self() whiteColor];
      [v16 setTintColor_];
    }

    else
    {
      [v16 setTintColor_];
    }
  }

  else
  {
    v21 = [v16 image];
    if (v21)
    {
      v22 = v21;
      if ([v21 renderingMode] == 2)
      {
        v23 = [objc_opt_self() placeholderTextColor];
        [v16 setTintColor_];

        [v16 setAlpha_];
        goto LABEL_15;
      }
    }

    [v16 setAlpha_];
  }

LABEL_15:

  v24 = (*(a5 + 48))(a4, a5);
  v26 = 4u >> (v25 & 0xF);
  sub_218A264C8(v24, v27, v25);
  sub_218D97AB4(v10, a2, v12 & 1, a4, a5);
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v28 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);

  LOBYTE(v26) = v35(a4, a5);
  v29 = objc_opt_self();
  if (v26)
  {
    v30 = [v29 secondaryLabelColor];
    if (v12)
    {
      v31 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v32 = [v30 resolvedColorWithTraitCollection_];

      v30 = [v32 colorWithAlphaComponent_];
    }
  }

  else
  {
    v30 = [v29 placeholderTextColor];
  }

  [v28 setTextColor_];

  return (*(v36 + 8))(v10, a4);
}

uint64_t sub_218D98194(uint64_t a1, uint64_t a2)
{
  sub_218D98F10(0, &qword_280EE5158, sub_218D98228, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D98228()
{
  result = qword_280EE5160;
  if (!qword_280EE5160)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5160);
  }

  return result;
}

uint64_t sub_218D9828C(uint64_t a1)
{
  sub_218D98F10(0, &qword_280EE5158, sub_218D98228, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D98318(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = sub_219BE5C64();
  v10 = *(v99 - 8);
  v11 = MEMORY[0x28223BE20](v99);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v95 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v95, a1, a4);
  v16 = *(a5 + 48);
  v94 = a4;
  v17 = v16(a4, a5);
  v100 = a2;
  v91 = a5;
  v92 = v14;
  if (v19 >= 3u)
  {
    v20 = MEMORY[0x28223BE20](v17);
    v22 = v21;
    sub_218D98F7C();
    sub_218D98E40(&qword_280E907E0, sub_218D98F7C);
    sub_219BF6C74();
    v23 = v20;
    a2 = v100;
    sub_218A264C8(v23, v22, 3u);
  }

  else
  {
    sub_218A264C8(v17, v18, v19);
    [a2 setAccessibilityIdentifier_];
  }

  v93 = *(*(a3 + 472) + 16);
  v24 = *(v93 + 16);
  if (v24)
  {
    v101 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v102 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v25 = (v93 + 32);
    v98 = *MEMORY[0x277D6D340];
    v96 = (v10 + 8);
    v97 = (v10 + 104);
    do
    {
      v31 = *v25++;
      v30 = v31;
      if (v31 == 2)
      {
        v26 = *&a2[v102];
        if (!v26)
        {
          type metadata accessor for AccessoryButton();
          v39 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v40 = qword_280EDB508;
          v41 = v39[qword_280EDB508];
          v39[qword_280EDB508] = 1;
          v35 = v39;
          sub_219BE61D4();
          if (v41 != v39[v40] || !*&v35[qword_280F620E8] || !*&v35[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v42 = v99;
          (*v97)(v13, v98, v99);
          sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v96)(v13, v42);
          v43 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v100;
          v38 = v102;
          goto LABEL_23;
        }
      }

      else
      {
        if (v30)
        {
          goto LABEL_9;
        }

        v26 = *&a2[v101];
        if (!v26)
        {
          type metadata accessor for AccessoryButton();
          v32 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v33 = qword_280EDB508;
          v34 = v32[qword_280EDB508];
          v32[qword_280EDB508] = 0;
          v35 = v32;
          sub_219BE61D4();
          if (v34 != v32[v33] || !*&v35[qword_280F620E8] || !*&v35[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v36 = v99;
          (*v97)(v13, v98, v99);
          sub_218D98E40(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v96)(v13, v36);
          v37 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v100;
          v38 = v101;
LABEL_23:
          v44 = *&a2[v38];
          *&a2[v38] = v35;
          v27 = v35;

          v26 = 0;
          goto LABEL_8;
        }
      }

      v27 = v26;
LABEL_8:
      v28 = *(a3 + 488);
      v29 = v26;
      sub_218EC2D64(v28);

LABEL_9:
      --v24;
    }

    while (v24);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v45 = 0;
    v46 = 0;
    v47 = v94;
    v48 = v91;
  }

  else
  {
    v48 = v91;
    v47 = v94;
    v45 = (*(v91 + 32))(v94, v91);
    v46 = v49;
  }

  sub_218D98F10(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_219C09EC0;
  v51 = *(v48 + 16);
  *(v50 + 32) = v51(v47);
  *(v50 + 40) = v52;
  *(v50 + 48) = v45;
  *(v50 + 56) = v46;
  sub_219BE5F34();
  v54 = v53;

  if (v54)
  {
    v55 = sub_219BF53D4();
  }

  else
  {
    v55 = 0;
  }

  [a2 setAccessibilityLabel_];

  v56 = (v51)(v47, v48);
  v58 = v57;
  v59 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v59 = v56;
  v59[1] = v58;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = objc_opt_self();
  v62 = [v61 bundleForClass_];
  v63 = sub_219BDB5E4();
  v65 = v64;

  v66 = v93;
  if (sub_219093144(0, v93) && sub_219093144(1u, v66))
  {
    v67 = (*(v48 + 56))(v94, v48);
    if ((v67 & 0x600000) != 0)
    {
      LODWORD(v101) = 0;
      v68 = 0;
    }

    else if ((v67 & 0x800000) != 0)
    {
      v68 = 0;
      LODWORD(v101) = HIWORD(v67) & 1;
    }

    else
    {
      LODWORD(v101) = 0;
      v68 = 1;
    }

    v74 = (*(v48 + 64))(v94, v48);
    if ((v76 & 0x100) != 0 && !(v74 | v75) && !v76)
    {

      v63 = 0;
      v65 = 0;
    }

    if (v68)
    {
      v77 = [v61 bundleForClass_];
      v102 = sub_219BDB5E4();
      v79 = v78;

      if (!v101)
      {
LABEL_47:
        v80 = 0;
        v81 = 0;
LABEL_50:
        v84 = v100;
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_219C0B8C0;
        *(v85 + 32) = v63;
        *(v85 + 40) = v65;
        *(v85 + 48) = v102;
        *(v85 + 56) = v79;
        *(v85 + 64) = v80;
        *(v85 + 72) = v81;
        sub_219BE5F34();
        v87 = v86;

        if (v87)
        {
          v88 = sub_219BF53D4();
        }

        else
        {
          v88 = 0;
        }

        v69 = v94;
        v70 = v95;
        v71 = v92;
        v89 = type metadata accessor for TagView();
        v103.receiver = v84;
        v103.super_class = v89;
        objc_msgSendSuper2(&v103, sel_setAccessibilityValue_, v88);

        return (*(v71 + 8))(v70, v69);
      }
    }

    else
    {
      v102 = 0;
      v79 = 0;
      if (!v101)
      {
        goto LABEL_47;
      }
    }

    v82 = [v61 bundleForClass_];
    v80 = sub_219BDB5E4();
    v81 = v83;

    goto LABEL_50;
  }

  v69 = v94;
  v70 = v95;
  if (sub_2190D9050(v94, v48))
  {
  }

  else
  {
    v72 = sub_219BF53D4();

    v73 = type metadata accessor for TagView();
    v104.receiver = v100;
    v104.super_class = v73;
    objc_msgSendSuper2(&v104, sel_setAccessibilityValue_, v72);
  }

  v71 = v92;
  return (*(v71 + 8))(v70, v69);
}

uint64_t sub_218D98E40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218D98E88()
{
  result = qword_280E8F500;
  if (!qword_280E8F500)
  {
    sub_218D98F10(255, &qword_280E8F508, MEMORY[0x277D6D488], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F500);
  }

  return result;
}

void sub_218D98F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218D98F7C()
{
  if (!qword_280E907D8)
  {
    sub_219BF1984();
    sub_218D98E40(&qword_280E907E8, MEMORY[0x277D334B0]);
    v0 = sub_219BF19A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E907D8);
    }
  }
}

uint64_t sub_218D99034()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D990FC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D991C4()
{
  v23 = sub_219BE9C04();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1524();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v22 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3F8], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v23);
  if (v15 == *MEMORY[0x277D6E830])
  {
    v16 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v15 != *MEMORY[0x277D6E840] && v15 != *MEMORY[0x277D6E848] && v15 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D2D810];
  }

  (*(v3 + 104))(v5, *v16, v25);
  sub_219BE1514();
  sub_218D9C718(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v19 = v24;
  sub_219BDD1F4();
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_218D995B4(uint64_t a1)
{
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  sub_218A25EF0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v9 + 8))(v11, v8);
  if (v17)
  {
    if (v17 == 1)
    {
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      return sub_218A26564(v16);
    }
  }

  else
  {
    v13 = v16[0];
    (*(v4 + 16))(v6, a1, v3);
    v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v4 + 32))(v15 + v14, v6, v3);

    sub_219BDD154();
  }
}

uint64_t sub_218D99808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v64 = a1;
  v48 = sub_219BDF104();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BE09E4();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1094();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BE0E44();
  v50 = *(v53 - 1);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE0E34();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1444();
  v49 = *(v12 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a2 + 24);
  v16 = [*(v54 + 16) identifier];
  sub_219BF5414();

  sub_219BE1424();
  sub_2187F3258();
  v61 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v62 = *(v19 + 72);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  v63 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = *MEMORY[0x277CEAD18];
  v24 = *(v19 + 104);
  v24(v22 + v21, v23, v18);
  v60 = "FollowingNotificationsModel";
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260]);
  sub_219BDCCC4();

  (*(v49 + 8))(v15, v12);
  (*(v50 + 104))(v52, *MEMORY[0x277D2ED50], v53);
  (*(v58 + 104))(v55, *MEMORY[0x277D2EED0], v59);
  v25 = v51;
  sub_219BE0E24();
  v59 = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = v63;
  v27 = v21;
  v28 = v26 + v21;
  LODWORD(v55) = v23;
  v58 = v18;
  v29 = v19 + 104;
  v53 = v24;
  v24(v28, v23, v18);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40]);
  v30 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v25, v30);
  v31 = [*(v54 + 16) asChannel];
  if (v31)
  {
    v57 = *(v42 + 24);
    v32 = v43;
    v56 = v31;
    sub_219BE01E4();
    v33 = swift_allocObject();
    *(v33 + 16) = v63;
    v34 = v55;
    v41 = v29;
    v35 = v53;
    v53(v33 + v27, v55, v58);
    sub_218D9C718(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v36 = v45;
    sub_219BDCCC4();

    (*(v44 + 8))(v32, v36);
    v37 = v46;
    sub_219BE01F4();
    v38 = swift_allocObject();
    *(v38 + 16) = v63;
    v35(v38 + v27, v34, v58);
    sub_218D9C718(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v39 = v48;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v47 + 8))(v37, v39);
  }

  sub_219BE0E14();
  sub_218D9C718(&qword_27CC19020, MEMORY[0x277D2ED30]);
  memset(v65, 0, 32);
  sub_219BDCCE4();
  return sub_218D9C6B8(v65, sub_21880702C);
}

uint64_t sub_218D9A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v64 = a1;
  v48 = sub_219BDF104();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BE09E4();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1094();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BE0E44();
  v50 = *(v53 - 1);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE0E34();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1444();
  v49 = *(v12 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a2 + 24);
  v16 = [*(v54 + 16) identifier];
  sub_219BF5414();

  sub_219BE1424();
  sub_2187F3258();
  v61 = v17;
  v18 = sub_219BDCD44();
  v19 = *(v18 - 8);
  v62 = *(v19 + 72);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  v63 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = *MEMORY[0x277CEAD18];
  v24 = *(v19 + 104);
  v24(v22 + v21, v23, v18);
  v60 = "FollowingNotificationsModel";
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260]);
  sub_219BDCCC4();

  (*(v49 + 8))(v15, v12);
  (*(v50 + 104))(v52, *MEMORY[0x277D2ED50], v53);
  (*(v58 + 104))(v55, *MEMORY[0x277D2EED0], v59);
  v25 = v51;
  sub_219BE0E24();
  v59 = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = v63;
  v27 = v21;
  v28 = v26 + v21;
  LODWORD(v55) = v23;
  v58 = v18;
  v29 = v19 + 104;
  v53 = v24;
  v24(v28, v23, v18);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40]);
  v30 = v56;
  sub_219BDCCC4();

  (*(v57 + 8))(v25, v30);
  v31 = [*(v54 + 16) asChannel];
  if (v31)
  {
    v57 = *(v42 + 24);
    v32 = v43;
    v56 = v31;
    sub_219BE01E4();
    v33 = swift_allocObject();
    *(v33 + 16) = v63;
    v34 = v55;
    v41 = v29;
    v35 = v53;
    v53(v33 + v27, v55, v58);
    sub_218D9C718(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v36 = v45;
    sub_219BDCCC4();

    (*(v44 + 8))(v32, v36);
    v37 = v46;
    sub_219BE01F4();
    v38 = swift_allocObject();
    *(v38 + 16) = v63;
    v35(v38 + v27, v34, v58);
    sub_218D9C718(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v39 = v48;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v47 + 8))(v37, v39);
  }

  sub_219BE10A4();
  sub_218D9C718(&unk_27CC11C20, MEMORY[0x277D2EEE0]);
  memset(v65, 0, 32);
  sub_219BDCCE4();
  return sub_218D9C6B8(v65, sub_21880702C);
}

uint64_t sub_218D9A968(uint64_t a1, void *a2)
{
  v26 = a1;
  v24 = sub_219BE1094();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0E44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE0E34();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  if ((v15 - 2) > 4u)
  {
    v16 = MEMORY[0x277D2ED58];
  }

  else
  {
    v16 = qword_278242578[(v15 - 2)];
  }

  (*(v7 + 104))(v9, *v16, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2EED0], v24);
  sub_219BE0E24();
  sub_2187F3258();
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD18], v17);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40]);
  v21 = v25;
  sub_219BDCCC4();

  (*(v10 + 8))(v12, v21);
  sub_219BE0E14();
  sub_218D9C718(&qword_27CC19020, MEMORY[0x277D2ED30]);
  memset(v27, 0, sizeof(v27));
  sub_219BDCCE4();
  return sub_218D9C6B8(v27, sub_21880702C);
}

uint64_t sub_218D9AD80(uint64_t a1, void *a2)
{
  v26 = a1;
  v24 = sub_219BE1094();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0E44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE0E34();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  if ((v15 - 2) > 4u)
  {
    v16 = MEMORY[0x277D2ED58];
  }

  else
  {
    v16 = qword_278242578[(v15 - 2)];
  }

  (*(v7 + 104))(v9, *v16, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2EED0], v24);
  sub_219BE0E24();
  sub_2187F3258();
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD18], v17);
  sub_218D9C718(&unk_27CC22080, MEMORY[0x277D2ED40]);
  v21 = v25;
  sub_219BDCCC4();

  (*(v10 + 8))(v12, v21);
  sub_219BE10A4();
  sub_218D9C718(&unk_27CC11C20, MEMORY[0x277D2EEE0]);
  memset(v27, 0, sizeof(v27));
  sub_219BDCCE4();
  return sub_218D9C6B8(v27, sub_21880702C);
}

uint64_t sub_218D9B198()
{
  v0 = sub_219BDF274();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDEEB4();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1444();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D2D9C0], v0);
  sub_219BDEEA4();
  sub_2187F3258();
  v11 = sub_219BDCD44();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277CEAD18], v11);
  sub_218D9C718(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v15 = v18;
  sub_219BDCCC4();

  (*(v4 + 8))(v6, v15);
  sub_219BDF704();
  sub_218D9C718(qword_280EE86B0, MEMORY[0x277D2DCE8]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218D9C6B8(v19, sub_21880702C);
}

uint64_t sub_218D9B5E8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v26 = a2;
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1544();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE1524();
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D2F3A0], v24);
  (*(v3 + 104))(v5, *v26, v25);
  sub_219BE1514();
  sub_2187F3258();
  v17 = sub_219BDCD44();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD18], v17);
  sub_218D9C718(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v21 = v27;
  sub_219BDCCC4();

  sub_219BE17A4();
  sub_218D9C718(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v31, 0, sizeof(v31));
  sub_219BDCCE4();
  sub_218D9C6B8(v31, sub_21880702C);
  return (*(v28 + 8))(v16, v21);
}

uint64_t sub_218D9BA50()
{
  sub_219BE0244();
  sub_218D9C718(&qword_280EE8478, MEMORY[0x277D2E3E8]);
  return sub_219BDD234();
}

uint64_t sub_218D9BAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v79 = a1;
  v4 = sub_219BDBD34();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BDF1E4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25EF0();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9C5E0(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v63 = v9;
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v52 - v10;
  sub_218A25F90();
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D9C5E0(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v52 - v14;
  v58 = sub_219BDFCE4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1444();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *(a2 + 16);
  v21 = *(a2 + 24);
  v81 = 0;
  v82 = 0xE000000000000000;
  v80 = v19;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v22 = [*(v21 + 16) identifier];
  v23 = sub_219BF5414();
  v25 = v24;

  MEMORY[0x21CECC330](v23, v25);

  sub_219BE1424();
  sub_2187F3258();
  v27 = v26;
  v28 = sub_219BDCD44();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v75 = *(v29 + 72);
  v77 = v27;
  v31 = swift_allocObject();
  v72 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  v32 = *(v29 + 104);
  v74 = *MEMORY[0x277CEAD18];
  v78 = v28;
  v73 = v32;
  v32(v31 + v30);
  sub_218D9C718(&unk_280EE8030, MEMORY[0x277D2F260]);
  v76 = "FollowingNotificationsModel";
  sub_219BDCCC4();

  (*(v18 + 8))(v20, v17);
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v34 = v33;
  sub_218D9C664();
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_219BDFCD4();
  v36 = swift_allocObject();
  *(v36 + 16) = v72;
  v73(v36 + v30, v74, v78);
  sub_218D9C718(&unk_280EE8590, MEMORY[0x277D2E058]);
  v37 = v58;
  sub_219BDCCC4();

  (*(v57 + 8))(v16, v37);
  v38 = v59;
  sub_219BE7594();
  v39 = v60;
  v58 = v34;
  sub_219BE7564();
  v40 = v65;
  sub_219BE5F84();
  (*(v64 + 8))(v39, v40);
  v41 = v61;
  v42 = v63;
  sub_219BEB244();

  (*(v62 + 8))(v38, v42);
  v43 = v66;
  v44 = v67;
  if ((*(v66 + 48))(v41, 1, v67) == 1)
  {
    sub_218D9C6B8(v41, sub_218A25F90);
  }

  else
  {
    v45 = v53;
    (*(v43 + 32))(v53, v41, v44);
    sub_219BE6944();
    v46 = v54;
    sub_219BDF1C4();
    v47 = swift_allocObject();
    *(v47 + 16) = v72;
    v73(v47 + v30, v74, v78);
    sub_218D9C718(&unk_280EE8840, MEMORY[0x277D2D970]);
    v48 = v56;
    sub_219BDCCC4();

    (*(v55 + 8))(v46, v48);
    (*(v43 + 8))(v45, v44);
  }

  sub_219BDFEC4();
  v49 = v68;
  sub_219BE75A4();
  sub_218D9C718(&unk_280EE8520, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v50 = v70;
  v51 = *(v69 + 8);
  v51(v49, v70);
  sub_219BE7574();
  sub_219BDCC74();
  return (v51)(v49, v50);
}

uint64_t sub_218D9C550(uint64_t a1)
{
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_218D9BAD0(a1, v4, v5);
}

void sub_218D9C5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
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

unint64_t sub_218D9C664()
{
  result = qword_27CC11C18;
  if (!qword_27CC11C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11C18);
  }

  return result;
}

uint64_t sub_218D9C6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D9C718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_218D9C760(uint64_t *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *a2;
    swift_unknownObjectRetain();
    if (sub_219BE82D4())
    {
      if (v5 == 2)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = swift_allocObject();
        *(v6 + 16) = v5 & 1;
        *(v6 + 24) = v3;
        swift_unknownObjectRetain();
        sub_219BDD154();
        swift_unknownObjectRelease();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_218D9C868(uint64_t a1, char a2, void *a3)
{
  v5 = sub_219BE1444();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v10 = [a3 identifier];
    sub_219BF5414();

    sub_219BE1424();
    sub_2187F3258();
    v11 = sub_219BDCD44();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277CEAD18], v11);
    sub_218D9CB14(&unk_280EE8030, MEMORY[0x277D2F260]);
    sub_219BDCCC4();

    (*(v6 + 8))(v9, v5);
    sub_219BDF714();
    sub_218D9CB14(&qword_27CC11C30, MEMORY[0x277D2DCF8]);
    memset(v15, 0, sizeof(v15));
    sub_219BDCCE4();
    return sub_218806FD0(v15);
  }

  return result;
}

uint64_t sub_218D9CB14(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_218D9CB5C(char a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v5[0] = 0;
  if ([v2 setMarketingNotificationsEnabled:a1 & 1 error:v5])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_219BDB724();

  return swift_willThrow();
}

id sub_218D9CC0C(char a1, char a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 16);
  v6[0] = 0;
  if ([v3 setPuzzleNotificationsEnabled:a1 & 1 userTriggered:a2 & 1 error:v6])
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_219BDB724();

  return swift_willThrow();
}

void sub_218D9CCE8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a2)
  {
    v6 = a2;
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62670);
    v8 = a2;
    oslog = sub_219BE5414();
    v9 = sub_219BF61F4();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_2186C1000, oslog, v9, "PushNotificationService failed to fetch configuration with error: %@", v10, 0xCu);
      sub_218962D30(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a2;
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = *(Strong + 16);

      v19 = sub_219BF5904();
      v20 = sub_219BF53D4();
      if (!a1 || (v21 = [a1 mySportsTagID]) == 0)
      {
        v21 = 0;
      }

      [v18 *a5];
    }
  }
}

void sub_218D9CF74()
{
  if (!qword_280E921F8)
  {
    type metadata accessor for ChannelSectionTagFeedGroupConfigData();
    sub_218D9D040(&qword_280E9BBB0, type metadata accessor for ChannelSectionTagFeedGroupConfigData);
    sub_218D9D040(qword_280E9BBB8, type metadata accessor for ChannelSectionTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E921F8);
    }
  }
}

uint64_t sub_218D9D040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ChannelSectionTagFeedGroupEmitter()
{
  result = qword_280EA3BE8;
  if (!qword_280EA3BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D9D0E8()
{
  sub_218D9CF74();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChannelSectionTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280E9BB10);
        if (v3 <= 0x3F)
        {
          sub_219BE5434();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218D9D1DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D9D274, 0, 0);
}

uint64_t sub_218D9D274()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_218D9D348;
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  return MEMORY[0x282190858](v3, v4, &unk_219C37020, v1, v4);
}

uint64_t sub_218D9D348()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218D9D5DC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_218D9D4C8;
    v4 = v2[6];
    v5 = v2[3];
    v6 = v2[2];

    return sub_218D9F348(v6, v5, v4);
  }
}

uint64_t sub_218D9D4C8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_218D9D6CC;
  }

  else
  {
    v2 = sub_218D9D648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D9D5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9D648()
{
  sub_218DA08B4(*(v0 + 48), type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9D6CC()
{
  sub_218DA08B4(*(v0 + 48), type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2187609C8;

  return MEMORY[0x28218FC58](a1, a2, a3, a4, a5);
}

uint64_t sub_218D9D818@<X0>(uint64_t *a1@<X8>)
{
  sub_218D9CF74();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 6;
  return result;
}

uint64_t sub_218D9D890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ChannelSectionTagFeedGroupKnobs();
  a2[4] = sub_218D9D040(qword_280EA9B78, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  a2[5] = sub_218D9D040(&qword_27CC11C70, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218DA2610(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
}

uint64_t sub_218D9D958()
{
  type metadata accessor for ChannelSectionTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_2186E47EC(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218DA2574(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_218D9DB24()
{
  sub_218D9CF74();

  return sub_219BEDCA4();
}

uint64_t sub_218D9DB50@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E47EC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218D9CF74();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DA08B4(inited + 32, sub_2188317B0);
  sub_218DA2678(0);
  a1[3] = v5;
  a1[4] = sub_218D9D040(&unk_27CC11C80, sub_218DA2678);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D9DCD4()
{
  sub_218D9D040(&qword_27CC11C48, type metadata accessor for ChannelSectionTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218D9DEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2187608D4;

  return sub_218D9E004(a1, a3);
}

uint64_t sub_218D9DF58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_218D9DEA8(a1, v5, v4);
}

uint64_t sub_218D9E004(uint64_t a1, uint64_t a2)
{
  v3[112] = v2;
  v3[111] = a2;
  v3[110] = a1;
  v3[113] = type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = type metadata accessor for ChannelSectionTagFeedGroupEmitter();
  v3[117] = swift_task_alloc();
  v3[118] = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = type metadata accessor for ChannelSectionsGroupPersonalizerRequest();
  v3[122] = swift_task_alloc();
  v3[123] = type metadata accessor for ChannelSectionsGroupModel();
  v3[124] = swift_task_alloc();
  sub_218DA24A4(0);
  v3[125] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v3[126] = v4;
  v3[127] = *(v4 - 8);
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v5 = sub_219BEFBD4();
  v3[131] = v5;
  v3[132] = *(v5 - 8);
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D9E2A8, 0, 0);
}

uint64_t sub_218D9E2A8()
{
  sub_219BEF164();
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  *(v0 + 1080) = *(v0 + 208);

  sub_218A410EC(v0 + 144);
  v5 = swift_task_alloc();
  *(v0 + 1088) = v5;
  *v5 = v0;
  v5[1] = sub_218D9E490;

  return MEMORY[0x2821D23D8](v0 + 840);
}

uint64_t sub_218D9E490()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_218D9F220;
  }

  else
  {

    v2 = sub_218D9E5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D9E5AC()
{
  v125 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1000);
  v118 = *(v0 + 840);
  [v118 channel];
  sub_219BEF134();
  type metadata accessor for ChannelSectionTagFeedGroupKnobs();
  sub_219BEF524();
  sub_219BEFBC4();
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 1072);
  if (v4 == 1)
  {
    v6 = *(v0 + 1040);
    v7 = *(v0 + 1016);
    v8 = *(v0 + 1008);
    sub_218DA08B4(*(v0 + 1000), sub_218DA24A4);
    swift_getObjectType();
    sub_218DA23BC(v5);
    swift_unknownObjectRelease();
    v9 = *(v7 + 8);
    v9(v6, v8);
  }

  else
  {
    v10 = *(v0 + 1056);
    v121 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    v12 = *(v0 + 1016);
    v13 = *(v0 + 1008);
    v110 = *(v0 + 1000);
    swift_unknownObjectRelease();
    v9 = *(v12 + 8);
    v9(v11, v13);
    (*(v10 + 32))(v5, v110, v121);
  }

  v107 = *(v0 + 1072);
  v111 = *(v0 + 1096);
  v103 = *(v0 + 1064);
  v122 = *(v0 + 1056);
  v100 = *(v0 + 1048);
  v14 = *(v0 + 1032);
  v15 = *(v0 + 1008);
  sub_218718690(*(v0 + 896) + *(*(v0 + 928) + 28), v0 + 784);
  __swift_project_boxed_opaque_existential_1((v0 + 784), *(v0 + 808));
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v98 = *(v0 + 848);
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v97 = *(v0 + 856);
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v16 = *(v0 + 864);
  sub_219BEF134();
  sub_219BEF524();
  v9(v14, v15);
  v17 = *(v0 + 872);
  v18 = *(v122 + 16);
  v18(v103, v107, v100);
  sub_219BEF164();
  if (v111)
  {
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1048);

    v28 = *(v21 + 8);
    v28(v20, v22);
    v28(v19, v22);
    __swift_destroy_boxed_opaque_existential_1(v0 + 784);

    v29 = *(v0 + 8);
LABEL_7:

    return v29();
  }

  v112 = v17;
  v114 = v16;
  v23 = *(v0 + 384);
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 512) = v23;
  v24 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v24;
  v25 = *(v0 + 288);
  *(v0 + 400) = *(v0 + 272);
  *(v0 + 416) = v25;
  v26 = *(v0 + 320);
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 448) = v26;
  v27 = *(v0 + 488);

  sub_218A410EC(v0 + 400);
  sub_219BEF164();
  v95 = v18;
  v96 = v9;
  v31 = *(v0 + 1056);
  v101 = *(v0 + 1048);
  v104 = *(v0 + 1064);
  v108 = *(v0 + 992);
  v32 = *(v0 + 976);
  v33 = *(v0 + 968);
  v34 = *(v0 + 928);
  v35 = *(v0 + 896);
  v36 = *(v0 + 608);
  *(v0 + 720) = *(v0 + 592);
  *(v0 + 736) = v36;
  v37 = *(v0 + 640);
  *(v0 + 752) = *(v0 + 624);
  *(v0 + 768) = v37;
  v38 = *(v0 + 544);
  *(v0 + 656) = *(v0 + 528);
  *(v0 + 672) = v38;
  v39 = *(v0 + 576);
  *(v0 + 688) = *(v0 + 560);
  *(v0 + 704) = v39;
  v40 = *(v0 + 752);

  sub_218A410EC(v0 + 656);
  v41 = *(v34 + 36);
  v42 = v33[12];
  v43 = sub_219BE5434();
  (*(*(v43 - 8) + 16))(v32 + v42, v35 + v41, v43);
  *&v44 = v98;
  *(&v44 + 1) = v97;
  *&v45 = v114;
  *(&v45 + 1) = v112;
  *v32 = v118;
  *(v32 + 24) = v45;
  *(v32 + 8) = v44;
  (*(v31 + 32))(v32 + v33[9], v104, v101);
  *(v32 + v33[10]) = v27;
  *(v32 + v33[11]) = v40;
  v46 = v118;
  sub_219BA640C(v32, v108);
  v113 = v46;
  v47 = *(v0 + 992);
  v48 = *(v0 + 984);
  sub_218DA08B4(*(v0 + 976), type metadata accessor for ChannelSectionsGroupPersonalizerRequest);
  __swift_destroy_boxed_opaque_existential_1(v0 + 784);
  sub_219BEF134();
  v49 = *(v47 + *(v48 + 24));
  v50 = *(v49 + 16);
  v105 = *v47;
  result = swift_unknownObjectRetain();
  v119 = v50;
  if (!v50)
  {
    v53 = MEMORY[0x277D84F90];
LABEL_23:
    v62 = *(v0 + 1072);
    v63 = *(v0 + 1048);
    v64 = *(v0 + 1024);
    v65 = *(v0 + 1008);
    v102 = *(v0 + 936);
    v116 = *(v0 + 920);
    v120 = *(v0 + 912);
    v66 = *(v0 + 904);
    v67 = *(v0 + 896);
    v68 = *(v0 + 880);
    v99 = sub_218DA0914(v64, v105, v53);

    v96(v64, v65);
    v69 = *(v66 + 24);
    v95(v68 + v69, v62, v63);
    v70 = *MEMORY[0x277D320E8];
    v71 = sub_219BEE6F4();
    (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
    *v68 = v105;
    v68[1] = v99;
    sub_218DA2610(v67, v102, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    sub_218DA2610(v68, v116, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
    sub_218DA2610(v68, v120, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
    v72 = sub_219BE5414();
    v73 = sub_219BF6214();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 1072);
    v76 = *(v0 + 1056);
    v77 = *(v0 + 1048);
    v78 = *(v0 + 992);
    v79 = *(v0 + 936);
    if (v74)
    {
      v80 = *(v0 + 928);
      v81 = *(v0 + 920);
      v106 = *(v0 + 912);
      v123 = *(v0 + 1072);
      v82 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v124[0] = v109;
      *v82 = 136446722;
      v83 = (v79 + *(v80 + 32));
      v117 = v78;
      v84 = *v83;
      v85 = v83[1];

      sub_218DA08B4(v79, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
      v86 = sub_2186D1058(v84, v85, v124);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2048;
      v87 = *(*(v81 + 8) + 16);
      sub_218DA08B4(v81, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
      *(v82 + 14) = v87;
      *(v82 + 22) = 2082;
      v88 = [*v106 identifier];
      v89 = sub_219BF5414();
      v91 = v90;

      sub_218DA08B4(v106, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
      v92 = sub_2186D1058(v89, v91, v124);

      *(v82 + 24) = v92;
      _os_log_impl(&dword_2186C1000, v72, v73, "%{public}s created cursor to emit %ld sections, channel=%{public}s", v82, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v109, -1, -1);
      MEMORY[0x21CECF960](v82, -1, -1);

      (*(v76 + 8))(v123, v77);
      v93 = v117;
    }

    else
    {
      v94 = *(v0 + 912);
      sub_218DA08B4(*(v0 + 920), type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

      sub_218DA08B4(v79, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
      (*(v76 + 8))(v75, v77);
      sub_218DA08B4(v94, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
      v93 = v78;
    }

    sub_218DA08B4(v93, type metadata accessor for ChannelSectionsGroupModel);

    v29 = *(v0 + 8);
    goto LABEL_7;
  }

  v51 = 0;
  v115 = *(v0 + 960);
  v52 = *(v0 + 944);
  v53 = MEMORY[0x277D84F90];
  while (v51 < *(v49 + 16))
  {
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v55 = *(v52 + 72);
    sub_218DA2610(v49 + v54 + v55 * v51, *(v0 + 960), type metadata accessor for ChannelSectionsGroupSectionModel);
    v56 = [*(v115 + 40) supergroupKnobs];
    if (v56 && (v57 = v56, v58 = [v56 isEligible], v57, !v58))
    {
      result = sub_218DA08B4(*(v0 + 960), type metadata accessor for ChannelSectionsGroupSectionModel);
    }

    else
    {
      sub_218DA24D8(*(v0 + 960), *(v0 + 952), type metadata accessor for ChannelSectionsGroupSectionModel);
      v124[0] = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C35380(0, *(v53 + 16) + 1, 1);
        v53 = v124[0];
      }

      v60 = *(v53 + 16);
      v59 = *(v53 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_218C35380(v59 > 1, v60 + 1, 1);
        v53 = v124[0];
      }

      v61 = *(v0 + 952);
      *(v53 + 16) = v60 + 1;
      result = sub_218DA24D8(v61, v53 + v54 + v60 * v55, type metadata accessor for ChannelSectionsGroupSectionModel);
    }

    if (v119 == ++v51)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218D9F220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D9F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[38] = type metadata accessor for ChannelSectionTagFeedGroupEmitter();
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  sub_2186E47EC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v4[43] = swift_task_alloc();
  sub_219BEF554();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = type metadata accessor for TagFeedGroup();
  v4[50] = swift_task_alloc();
  v4[51] = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D9F5A0, 0, 0);
}

uint64_t sub_218D9F5A0()
{
  v1 = *(*(v0 + 288) + 8);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 408) + 80);
    sub_218DA2610(v1 + ((v2 + 32) & ~v2), *(v0 + 424), type metadata accessor for ChannelSectionsGroupSectionModel);
    sub_219BEF164();
    v5 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v5;
    v6 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 128) = v6;
    v7 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v7;
    v8 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v8;
    v9 = swift_task_alloc();
    *(v0 + 432) = v9;
    *v9 = v0;
    v9[1] = sub_218D9FB94;
    v10 = *(v0 + 424);
    v11 = *(v0 + 280);

    return sub_218DA0FAC(v11, v0 + 16, v10);
  }

  else
  {
    v3 = sub_219BEEDD4();
    sub_218D9D040(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D323C8], v3);
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_218D9FB94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_218DA0328;
  }

  else
  {
    sub_218A410EC(v3 + 16);
    v4 = sub_218D9FCB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218D9FCB0()
{
  v18 = v0[50];
  v1 = v0[47];
  v17 = v0[48];
  v19 = v0[46];
  v2 = v0[43];
  v21 = v0[36];
  v22 = v0[42];
  v20 = *(v0[40] + 24);
  sub_218D9CF74();

  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v3 = sub_219BEE5D4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_219BED834();
  (*(v1 + 32))(v18, v17, v19);
  v4 = *(type metadata accessor for ChannelSectionTagFeedGroup() + 20);
  v5 = sub_219BEE6F4();
  (*(*(v5 - 8) + 16))(v18 + v4, v21 + v20, v5);
  swift_storeEnumTagMultiPayload();
  sub_21923969C(v22);
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[42];
  if (*(*(v22 + 8) + 16))
  {
    v9 = v0[40];
    v10 = v0[34];
    sub_218ACC140();
    v12 = (v10 + *(v11 + 48));
    sub_218DA2610(v7, v10, type metadata accessor for TagFeedGroup);
    v12[3] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    sub_218DA24D8(v8, boxed_opaque_existential_1, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

    sub_218DA08B4(v7, type metadata accessor for TagFeedGroup);
    sub_218DA08B4(v6, type metadata accessor for ChannelSectionsGroupSectionModel);
  }

  else
  {
    v14 = v0[34];
    sub_218DA08B4(v0[53], type metadata accessor for ChannelSectionsGroupSectionModel);

    sub_218DA08B4(v8, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);
    sub_218DA24D8(v7, v14, type metadata accessor for TagFeedGroup);
  }

  sub_218A59C84();
  swift_storeEnumTagMultiPayload();

  v15 = v0[1];

  return v15();
}

uint64_t sub_218DA00E8()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_218DA0780;
  }

  else
  {
    v2 = sub_218DA01FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DA01FC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);

  sub_218DA08B4(v1, type metadata accessor for ChannelSectionsGroupSectionModel);
  sub_218DA08B4(v2, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_218DA0328()
{
  v35 = v0;
  sub_218A410EC((v0 + 2));
  v1 = v0[56];
  v0[57] = v1;
  v3 = v0[52];
  v2 = v0[53];
  sub_218DA2610(v0[37], v0[39], type metadata accessor for ChannelSectionTagFeedGroupEmitter);
  sub_218DA2610(v2, v3, type metadata accessor for ChannelSectionsGroupSectionModel);
  v4 = v1;
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  v9 = v0[39];
  if (v7)
  {
    v10 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v11 = 136446722;
    v13 = (v9 + *(v10 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_218DA08B4(v9, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    v16 = sub_2186D1058(v15, v14, v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v17 = [*(v8 + 40) identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    sub_218DA08B4(v8, type metadata accessor for ChannelSectionsGroupSectionModel);
    v21 = sub_2186D1058(v18, v20, v34);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2114;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v23;
    *v12 = v23;
    _os_log_impl(&dword_2186C1000, v5, v6, "%{public}s failed to emit group for section, sectionID=%{public}s, error=%{public}@", v11, 0x20u);
    sub_218DA08B4(v12, sub_2189B3F3C);
    MEMORY[0x21CECF960](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v33, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {

    sub_218DA08B4(v9, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    sub_218DA08B4(v8, type metadata accessor for ChannelSectionsGroupSectionModel);
  }

  v24 = v0[41];
  sub_21923969C(v24);
  if (*(*(v24 + 8) + 16))
  {
    v25 = swift_task_alloc();
    v0[58] = v25;
    *v25 = v0;
    v25[1] = sub_218DA00E8;
    v26 = v0[41];
    v27 = v0[34];
    v28 = v0[35];

    return sub_218D9F348(v27, v28, v26);
  }

  else
  {
    v30 = v0[53];
    v31 = v0[41];
    swift_willThrow();
    sub_218DA08B4(v30, type metadata accessor for ChannelSectionsGroupSectionModel);
    sub_218DA08B4(v31, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_218DA0780()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);

  sub_218DA08B4(v1, type metadata accessor for ChannelSectionsGroupSectionModel);
  sub_218DA08B4(v2, type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_218DA08B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_218DA0914(uint64_t a1, char *a2, char *a3)
{
  v6 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v49 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - v9;
  v10 = type metadata accessor for ChannelSectionTagFeedGroupEmitter();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChannelSectionTagFeedGroupKnobs();
  sub_219BEF524();
  v13 = v51;
  sub_218DA2610(v3, v12, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v17;
    *v16 = 136446466;
    v18 = &v12[*(v10 + 32)];
    v20 = *v18;
    v19 = v18[1];

    sub_218DA08B4(v12, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
    v21 = sub_2186D1058(v20, v19, &v51);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    if (v13)
    {
      v22 = 0x6C616E6F73726570;
    }

    else
    {
      v22 = 0x746C7561666564;
    }

    if (v13)
    {
      v23 = 0xEF6E6F6974617A69;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    v24 = sub_2186D1058(v22, v23, &v51);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v14, v15, "%{public}s will order by %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v17, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);

    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_27:

    return a3;
  }

  sub_218DA08B4(v12, type metadata accessor for ChannelSectionTagFeedGroupEmitter);
  if (v13)
  {
    goto LABEL_27;
  }

LABEL_9:
  v51 = a3;
  sub_218DA2540(0);
  sub_218D9D040(&qword_27CC11C60, sub_218DA2540);
  sub_218D9D040(&qword_27CC11C68, type metadata accessor for ChannelSectionsGroupSectionModel);
  v25 = sub_219BF56C4();
  v26 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v27 = [a2 defaultSectionID];
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = v27;
  v29 = sub_219BF5414();
  a3 = v30;

  v26 = sub_218840D24(0, 1, 1, MEMORY[0x277D84F90]);
  v32 = *(v26 + 2);
  v31 = *(v26 + 3);
  v33 = v32 + 1;
  if (v32 >= v31 >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    *(v26 + 2) = v33;
    v34 = &v26[16 * v32];
    *(v34 + 4) = v29;
    *(v34 + 5) = a3;
    v51 = v26;
LABEL_12:
    v35 = [a2 sectionIDs];
    if (v35)
    {
      v36 = v35;
      v37 = sub_219BF5924();

      sub_2191ED3E8(v37);
      v26 = v51;
    }

    v50 = v26;
    v32 = MEMORY[0x277D837D0];
    sub_2186F83B8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();

    v29 = &v50;
    v33 = sub_219BF56E4();

    v38 = *(v33 + 16);
    if (!v38)
    {
      break;
    }

    a2 = 0;
    v39 = (v33 + 40);
    a3 = MEMORY[0x277D84F90];
    while (1)
    {
      v31 = *(v33 + 16);
      if (a2 >= v31)
      {
        break;
      }

      if (*(v25 + 16))
      {
        v32 = *(v39 - 1);
        v40 = *v39;

        v29 = v25;
        v41 = sub_21870F700(v32, v40);
        if (v42)
        {
          v32 = *(v49 + 72);
          v43 = v47;
          sub_218DA2610(*(v25 + 56) + v32 * v41, v47, type metadata accessor for ChannelSectionsGroupSectionModel);

          sub_218DA24D8(v43, v48, type metadata accessor for ChannelSectionsGroupSectionModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2191F85EC(0, *(a3 + 2) + 1, 1, a3);
          }

          v45 = *(a3 + 2);
          v44 = *(a3 + 3);
          v29 = (v45 + 1);
          if (v45 >= v44 >> 1)
          {
            a3 = sub_2191F85EC(v44 > 1, v45 + 1, 1, a3);
          }

          *(a3 + 2) = v29;
          sub_218DA24D8(v48, &a3[((*(v49 + 80) + 32) & ~*(v49 + 80)) + v45 * v32], type metadata accessor for ChannelSectionsGroupSectionModel);
        }

        else
        {
        }
      }

      ++a2;
      v39 += 2;
      if (v38 == a2)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    v26 = sub_218840D24((v31 > 1), v33, 1, v26);
  }

  a3 = MEMORY[0x277D84F90];
LABEL_29:

  return a3;
}

uint64_t sub_218DA0FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186E47EC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[9] = swift_task_alloc();
  sub_2186E47EC(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[10] = swift_task_alloc();
  sub_2186E47EC(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v4[11] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_218A89A94(0);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for ChannelSectionTagFeedGroupConfigData();
  v4[17] = swift_task_alloc();
  v7 = sub_219BF1934();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  sub_2186FE720();
  v4[21] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = sub_219BF2034();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DA1304, 0, 0);
}

uint64_t sub_218DA1304()
{
  v95 = v0;
  v1 = *(*(v0 + 56) + 48);
  v92 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_51:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v90 = v1 & 0xC000000000000001;
    v86 = *(v0 + 48);
    v88 = v1 & 0xFFFFFFFFFFFFFF8;
    v82 = v1;
    v5 = v1 + 4;
    while (1)
    {
      if (v90)
      {
        v6 = MEMORY[0x21CECE0F0](v4, v82);
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v18 = v92;
          v0 = v85;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v4 >= *(v88 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v6 = v5[v4];
        swift_unknownObjectRetain();
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_23;
        }
      }

      v0 = *(v86 + 88);
      v8 = [v6 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      if (*(v0 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v12 = sub_219BF7AE4(), v1 = (v0 + 56), v13 = -1 << *(v0 + 32), v14 = v12 & ~v13, ((*(v0 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(v0 + 48) + 16 * v14);
          v17 = *v16 == v9 && v16[1] == v11;
          if (v17 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v1 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
        if (v4 == v2)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        v1 = &v92;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v4 == v2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_26:
  v19 = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (v19)
  {
    if (sub_219BF7214())
    {
LABEL_31:
      v20 = *(v0 + 56);
      sub_2186F83B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C189F0;
      *(v21 + 32) = *(v20 + 32);
      v22 = *(v20 + 40);
      *(v21 + 40) = v22;
      sub_2186E47EC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
      sub_219BF3E84();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09BA0;
      v81 = v23;
      if (v19)
      {
        v24 = sub_219BF7214();
      }

      else
      {
        v24 = *(v18 + 16);
      }

      v87 = v22;
      if (v24)
      {
        v93 = v3;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        v25 = sub_218C34A88(0, v24 & ~(v24 >> 63), 0);
        if (v24 < 0)
        {
          __break(1u);
          return MEMORY[0x2821921B8](v25, v26, v27, v28, v29);
        }

        v30 = 0;
        v31 = *(v0 + 184);
        v32 = v93;
        v33 = *MEMORY[0x277D34128];
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x21CECE0F0](v30, v18);
          }

          else
          {
            v34 = swift_unknownObjectRetain();
          }

          v35 = *(v85 + 192);
          v36 = *(v85 + 176);
          *v35 = v34;
          (*(v31 + 104))(v35, v33, v36);
          v93 = v32;
          v38 = *(v32 + 16);
          v37 = *(v32 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_218C34A88(v37 > 1, v38 + 1, 1);
            v32 = v93;
          }

          v39 = *(v85 + 192);
          v40 = *(v85 + 176);
          ++v30;
          *(v32 + 16) = v38 + 1;
          (*(v31 + 32))(v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v38, v39, v40);
        }

        while (v24 != v30);

        v0 = v85;
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
      }

      v41 = *(v0 + 168);
      v77 = *(v0 + 152);
      v78 = *(v0 + 144);
      v73 = *(v0 + 136);
      v74 = *(v0 + 128);
      v76 = *(v0 + 120);
      v79 = *(v0 + 88);
      v80 = *(v0 + 80);
      v89 = *(v0 + 72);
      v91 = *(v0 + 64);
      sub_218F0B984(v3);
      sub_218F0BA7C(v3);
      sub_218F0BB90(v3);
      sub_219BF3E74();
      v42 = sub_219BEC004();
      v75 = *(*(v42 - 8) + 56);
      v75(v41, 1, 1, v42);
      sub_219A95188(v3);
      sub_219A95188(v3);
      sub_219A951A0(v3);
      v43 = sub_219A951B8(v3);
      v44 = v3;
      v45 = sub_219A952CC(v3);
      v46 = sub_219A952E4(v3);
      v72 = sub_219A953F8(v44);
      sub_219BF2024();
      sub_218D9CF74();
      sub_219BEDD14();
      v83 = *(v74 + 20);
      v93 = sub_219BEDCA4();
      v94 = v47;
      MEMORY[0x21CECC330](45, 0xE100000000000000);
      v48 = [v87 identifier];
      v49 = sub_219BF5414();
      v51 = v50;

      MEMORY[0x21CECC330](v49, v51);

      v52 = [v87 identifier];
      sub_219BF5414();

      v75(v41, 1, 1, v42);
      sub_218A42400(0);
      (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
      sub_219BF1764();

      sub_218DA08B4(v76, sub_218A89A94);
      sub_218DA08B4(v41, sub_2186FE720);
      v54 = *(v77 + 8);
      *(v85 + 224) = v54;
      *(v85 + 232) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54(v73 + v83, v78);
      v55 = type metadata accessor for ChannelSectionTagFeedGroupEmitter();
      v56 = (v91 + *(v55 + 24));
      v57 = v56[3];
      v84 = v56[4];
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v58 = *(v55 + 20);
      sub_2189AD5C8();
      v60 = v59;
      v61 = *(v59 - 8);
      (*(v61 + 16))(v79, v91 + v58, v59);
      (*(v61 + 56))(v79, 0, 1, v60);
      sub_219BEF0B4();
      v62 = *(*(v85 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      v63 = sub_219BF35D4();
      (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
      *(v85 + 264) = 3;
      sub_218DA2574(0, &qword_280E90090, MEMORY[0x277D33F88]);
      swift_allocObject();

      sub_219BF38D4();
      sub_219BEF0B4();
      sub_218CB8CBC();

      sub_219BEF0B4();
      v64 = *(*(v85 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      sub_219BF3914();
      swift_allocObject();
      sub_219BF3904();
      v65 = sub_219BF2774();
      (*(*(v65 - 8) + 56))(v89, 1, 1, v65);
      v66 = qword_280E8D7F8;
      *MEMORY[0x277D30BC0];
      if (v66 != -1)
      {
        swift_once();
      }

      qword_280F61708;
      sub_219BF2A84();
      v67 = swift_task_alloc();
      *(v85 + 240) = v67;
      *v67 = v85;
      v67[1] = sub_218DA1FFC;
      v26 = *(v85 + 216);
      v27 = *(v85 + 112);
      v25 = *(v85 + 160);
      v28 = v57;
      v29 = v84;

      return MEMORY[0x2821921B8](v25, v26, v27, v28, v29);
    }
  }

  else if (*(v18 + 16))
  {
    goto LABEL_31;
  }

  v68 = sub_219BEEDD4();
  sub_218D9D040(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D32428], v68);
  swift_willThrow();

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_218DA1FFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v4[31] = v1;

  v6 = (v5 + 8);
  v7 = v4[14];
  v8 = v4[12];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_218DA22A0;
  }

  else
  {
    v4[32] = a1;
    (*v6)(v7, v8);
    v9 = sub_218DA2188;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_218DA2188()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v0 + 224))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 256);

  return v4(v5);
}

uint64_t sub_218DA22A0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v0 + 224))(*(v0 + 160), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_218DA23BC@<X0>(uint64_t a1@<X8>)
{
  if ([v1 isLocal])
  {
    v3 = *MEMORY[0x277D32990];
    v4 = sub_219BEFBD4();
    v5 = *(*(v4 - 8) + 104);
    v6 = v4;
    v7 = a1;
    v8 = v3;
  }

  else
  {
    v9 = [v1 isNewspaper];
    v6 = sub_219BEFBD4();
    v5 = *(*(v6 - 8) + 104);
    if (v9)
    {
      v10 = MEMORY[0x277D329B0];
    }

    else
    {
      v10 = MEMORY[0x277D32918];
    }

    v8 = *v10;
    v7 = a1;
  }

  return v5(v7, v8, v6);
}

uint64_t sub_218DA24D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218DA2574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_218D9D040(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218DA2610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218DA26AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_218DA2700();
  }
}

uint64_t sub_218DA2700()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFilterItem();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong text], v7, v8))
  {
    v9 = sub_219BF5414();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = *(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_filterProvider + 8);
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 8))(ObjectType, v12);
  if (!v11)
  {
    if (!v14)
    {
      goto LABEL_32;
    }

    v48 = v9;
    goto LABEL_14;
  }

  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    if (v15)
    {
      v49 = v1;
      v18 = 0;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v48 = v9;
  if (!v15)
  {
LABEL_14:
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = v14;
      v47 = v11;
      v49 = v1;
LABEL_16:
      v50 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v16, 0);
      v18 = v50;
      v19 = *(v3 + 80);
      v46 = v17;
      v20 = v17 + ((v19 + 32) & ~v19);
      v21 = *(v3 + 72);
      do
      {
        sub_218957A08(v20, v5);
        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        sub_21892DEAC();
        sub_218DA5FCC(v5, type metadata accessor for SearchFilterItem);
        v50 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21870B65C((v24 > 1), v25 + 1, 1);
          v18 = v50;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
        v20 += v21;
        --v16;
      }

      while (v16);

      v11 = v47;
      goto LABEL_21;
    }

LABEL_32:

    sub_219BE5914();

    v40 = *(*(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
    v41 = swift_getObjectType();
    return (*(v40 + 64))(v41, v40);
  }

  v16 = *(v14 + 16);
  v49 = v1;
  if (v16)
  {
    v17 = v14;
    v47 = v11;
    goto LABEL_16;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_21:
  v9 = v48;
LABEL_24:
  v27 = v49;
  v48 = *(v49 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination);
  sub_219BE86E4();
  v28 = objc_allocWithZone(sub_219BE9274());
  v46 = sub_219BE9254();
  sub_218DA3954(&v50);
  v29 = v51;
  v30 = v52;
  v44 = v53;
  v45 = v50;
  v43 = v54;
  HIDWORD(v42) = v55;
  sub_218DA387C();
  v32 = v31;
  v47 = OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam;
  v33 = *(v27 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam);
  if (v11)
  {
    v34 = v9;
  }

  else
  {
    v34 = 0;
  }

  if (v11)
  {
    v35 = v11;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = *(*(v27 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
  v37 = swift_getObjectType();
  v57[0] = v34;
  v57[1] = v35;
  v57[2] = v18;
  v57[3] = v48;
  v57[4] = v32;
  v58 = v33;
  v38 = v46;
  v50 = v46;
  v51 = v45;
  v52 = v29;
  v53 = v30;
  v54 = v44;
  v55 = v43;
  v56 = BYTE4(v42);
  (*(v36 + 48))(v57, 0, &v50, v37, v36);

  *(v27 + v47) = 0;
  *(v27 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 1;
  return result;
}

void sub_218DA2B40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_219BE5914();

    v2 = *(*&v1[OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 64))(ObjectType, v2);
  }
}

id sub_218DA2C14()
{
  ObjectType = swift_getObjectType();

  sub_219BE58F4();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_218DA2DEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
  sub_219BE86E4();
  v2 = objc_allocWithZone(sub_219BE9274());
  v3 = sub_219BE9254();
  sub_218DA3954(&v13);
  v5 = v13;
  v4 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v13 = v3;
  v14 = v5;
  v15 = v4;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  (*(v10 + 32))(&v13, ObjectType, v10);
}

uint64_t sub_218DA2EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  sub_219BE5914();

  sub_219BE86E4();
  v7 = objc_allocWithZone(sub_219BE9274());
  v21 = sub_219BE9254();
  sub_218DA3954(&v26);
  v9 = v26;
  v8 = v27;
  v10 = v28;
  v19 = v29;
  v11 = v30;
  v18 = v31;
  sub_218DA387C();
  v13 = v12;
  v22 = OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam;
  v14 = *(v5 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam);
  v15 = *(*(v5 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  v33[0] = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v33[4] = v13;
  v34 = v14;
  v26 = v21;
  v27 = v9;
  v28 = v8;
  v29 = v10;
  v30 = v19;
  v31 = v11;
  v32 = v18;
  v16 = *(v15 + 48);

  v16(v33, 0, &v26, ObjectType, v15);

  *(v5 + v22) = 0;
  *(v5 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 1;
  return result;
}

void sub_218DA3108()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v8 setFrame_];
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    sub_218807578();
    sub_2186D76A0(&qword_280E90610, sub_218807578);
    sub_219BF6C74();

    v20 = [v1 traitCollection];
    sub_218DA62C8();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_218DA3330()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2186D76A0(&qword_280E92580, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_218DA34A0(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);

  a5(v9);
}

id sub_218DA352C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE8164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewWillLayoutSubviews);
  result = [*&v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v7 setFrame_];
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE7FF4();
  v18 = v17;
  sub_219BE7FF4();
  if (v19 < v18)
  {
    v18 = v19;
  }

  sub_219BE8664();
  v20 = sub_219BE7BC4();

  [v20 setContentInset_];

  return (*(v3 + 8))(v5, v2);
}

void sub_218DA387C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController) view];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  v11 = CGRectGetHeight(v12) / 44.0;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_218DA3954(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = [Strong text], v4, v5))
  {
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination);
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v8)
  {
    v11 = v8;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_218DA3A08()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_219BE5914();

  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218DA3C50()
{
  v0 = sub_219BEB384();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;

  sub_219BE5914();

  sub_219BE8644();
  sub_219BE6BA4();

  v10 = (*(v4 + 88))(v9, v3);
  v11 = *MEMORY[0x277D6EC88];
  v12 = *(v4 + 8);
  result = v12(v9, v3);
  if (v10 == v11)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v14 = sub_219BF01B4();
    v15 = __swift_project_value_buffer(v14, qword_280F61940);
    v7[3] = v14;
    v7[4] = sub_2186D76A0(&qword_280E91000, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v19 = sub_219BF54E4();
    v21 = v20;

    v7[5] = v19;
    v7[6] = v21;
    (*(v4 + 104))(v7, *MEMORY[0x277D6EC80], v3);
    v23 = v24;
    v22 = v25;
    (*(v24 + 104))(v2, *MEMORY[0x277D6ECB0], v25);
    sub_219BE6BD4();

    (*(v23 + 8))(v2, v22);
    return v12(v7, v3);
  }

  return result;
}

uint64_t sub_218DA4054()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE5914();

  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218DA4254(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination) != 5)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_218DA4340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27[1] = a1;
  v5 = type metadata accessor for SearchSectionDescriptor();
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3BCC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953A84();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong resignFirstResponder];
  }

  sub_219BE86D4();
  if (*(v3 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) == 1)
  {
    *(v3 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 0;
    sub_2189539F0();
    v27[0] = a2;
    sub_219BE5F84();
    sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
    sub_219BEB244();

    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_218DA5FCC(v10, sub_218AF3BCC);
      v18 = 0;
    }

    else
    {
      (*(v13 + 32))(v15, v10, v12);
      sub_219BE6934();
      (*(v13 + 8))(v15, v12);
      v18 = swift_getEnumCaseMultiPayload() == 6;
      sub_218DA5FCC(v7, type metadata accessor for SearchSectionDescriptor);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    a2 = v27[0];
    if (v19 && (v20 = v19, v21 = [v19 text], v20, v21))
    {
      v22 = sub_219BF5414();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    sub_219531BC8(a2, v22, v24, v18);
  }

  sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  sub_2186D76A0(&qword_27CC11D10, type metadata accessor for SearchModel);
  v25 = sub_219BEB304();
  sub_218DA3954(v32);
  v28[0] = v32[0];
  v28[1] = v32[1];
  v29 = v33;
  v30 = v34;
  v31 = v35;
  sub_219532118(a2, v25, v28);
}

void sub_218DA475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for SearchFilterItem();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_219BDB0F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_219BE9F74();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D6E950])
  {
    (*(v15 + 8))(v17, v14);
LABEL_3:
    v19 = *(*(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v19 + 72))(ObjectType, v19);
    return;
  }

  if (v18 == *MEMORY[0x277D6E928])
  {
    v84 = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v22 = Strong, v23 = [Strong text], v22, v23))
    {
      v83 = sub_219BF5414();
      v25 = v24;
    }

    else
    {
      v83 = 0;
      v25 = 0;
    }

    v29 = *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_filterProvider + 8);
    v30 = swift_getObjectType();
    v31 = (*(v29 + 8))(v30, v29);
    v32 = swift_unknownObjectWeakLoadStrong();
    v85 = v25;
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      v35 = [v32 &selRef_listenableArticleIDs];

      if (v35)
      {
        v36 = sub_219BF5414();
        v38 = v37;

        v86 = v36;
        v87 = v38;
        sub_219BDB0D4();
        sub_2187F3BD4();
        v39 = sub_219BF7024();
        v41 = v40;
        (*(v11 + 8))(v13, v10);

        v42 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = v39 & 0xFFFFFFFFFFFFLL;
        }

        v43 = v42 == 0;
      }

      else
      {
        v43 = 1;
      }

      v31 = v33;
      v44 = v84;
      if (v33)
      {
LABEL_25:
        v46 = *(v31 + 16);
        if (v43)
        {
          if (!v46)
          {

            goto LABEL_28;
          }
        }

        else if (!v46)
        {

          v45 = MEMORY[0x277D84F90];
LABEL_36:
          sub_219BE86E4();
          v66 = objc_allocWithZone(sub_219BE9274());
          v82 = sub_219BE9254();
          sub_218DA3954(&v86);
          v67 = v87;
          v68 = v88;
          v80 = v89;
          v81 = v86;
          v79 = v90;
          v78 = v91;
          sub_218DA387C();
          v70 = v69;
          v84 = OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam;
          v71 = *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam);
          if (v85)
          {
            v72 = v83;
          }

          else
          {
            v72 = 0;
          }

          if (v85)
          {
            v73 = v85;
          }

          else
          {
            v73 = 0xE000000000000000;
          }

          v74 = *(*(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
          v75 = swift_getObjectType();
          v93[0] = v72;
          v93[1] = v73;
          v93[2] = v45;
          v93[3] = 9;
          v93[4] = v70;
          v94 = v71;
          v76 = v82;
          v86 = v82;
          v87 = v81;
          v88 = v67;
          v89 = v68;
          v90 = v80;
          v91 = v79;
          v92 = v78;
          (*(v74 + 48))(v93, 0, &v86, v75, v74);

          *(v4 + v84) = 0;
          *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 1;
          return;
        }

        v84 = v4;
        v86 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v46, 0);
        v45 = v86;
        v58 = *(v44 + 80);
        v82 = v31;
        v59 = v31 + ((v58 + 32) & ~v58);
        v60 = *(v44 + 72);
        do
        {
          sub_218957A08(v59, v9);
          v62 = *(v9 + 2);
          v61 = *(v9 + 3);
          sub_21892DEAC();
          sub_218DA5FCC(v9, type metadata accessor for SearchFilterItem);
          v86 = v45;
          v64 = v45[2];
          v63 = v45[3];
          if (v64 >= v63 >> 1)
          {
            sub_21870B65C((v63 > 1), v64 + 1, 1);
            v45 = v86;
          }

          v45[2] = v64 + 1;
          v65 = &v45[2 * v64];
          v65[4] = v62;
          v65[5] = v61;
          v59 += v60;
          --v46;
        }

        while (v46);

        v4 = v84;
        goto LABEL_36;
      }
    }

    else
    {
      v43 = 1;
      v44 = v84;
      if (v31)
      {
        goto LABEL_25;
      }
    }

    if (v43)
    {
LABEL_28:

      v47 = *(v4 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
      sub_219BE86E4();
      v48 = objc_allocWithZone(sub_219BE9274());
      v49 = sub_219BE9254();
      sub_218DA3954(&v86);
      v51 = v86;
      v50 = v87;
      v52 = v88;
      v53 = v89;
      v54 = v90;
      v55 = v91;
      v56 = *(v47 + 40);
      v57 = swift_getObjectType();
      v86 = v49;
      v87 = v51;
      v88 = v50;
      v89 = v52;
      v90 = v53;
      v91 = v54;
      v92 = v55;
      (*(v56 + 32))(&v86, v57, v56);

      return;
    }

    v45 = 0;
    goto LABEL_36;
  }

  if (v18 == *MEMORY[0x277D6E948])
  {
    goto LABEL_3;
  }

  if (v18 != *MEMORY[0x277D6E978])
  {
    if (v18 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v18 != *MEMORY[0x277D6E958])
    {
      if (v18 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v26 = sub_219BE7BC4();

        v27 = [v26 collectionViewLayout];

        [v27 invalidateLayout];
        sub_219BE8664();
        v28 = sub_219BE7BC4();

        [v28 reloadData];
      }

      else if (v18 != *MEMORY[0x277D6E960] && v18 != *MEMORY[0x277D6E968] && v18 != *MEMORY[0x277D6E938] && v18 != *MEMORY[0x277D6E940])
      {
        (*(v15 + 8))(v17, v14);
      }
    }
  }
}

uint64_t sub_218DA4FA0()
{
  v0 = sub_219BF0F34();
  v19 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189539F0();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2186EB018();
      goto LABEL_11;
    }

    sub_2186F8128();
    v14 = type metadata accessor for SearchFeedGapLocation;
    v15 = &v10[*(v13 + 48)];
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v19 + 8))(v2, v0);
      sub_219BE5F84();
      v16 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v5 + 8))(v7, v4);
      return v16;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2186EB308();
LABEL_11:
      (*(*(v12 - 8) + 8))(v10, v12);
      return 0;
    }

    v14 = type metadata accessor for SearchModel;
    v15 = v10;
  }

  sub_218DA5FCC(v15, v14);
  return 0;
}

uint64_t sub_218DA52D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
  sub_219BE86E4();
  v4 = objc_allocWithZone(sub_219BE9274());
  v5 = sub_219BE9254();
  sub_218DA3954(&v17);
  v7 = v17;
  v6 = v18;
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v14 = *(v3 + 120);
  v17 = v5;
  v18 = v7;
  v19 = v6;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  (*(v12 + 56))(a2, v14, &v17, ObjectType, v12);
}

uint64_t sub_218DA53E4(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v12 = sub_219BF01B4();
    v13 = __swift_project_value_buffer(v12, qword_280F61940);
    v11[3] = v12;
    v11[4] = sub_2186D76A0(&qword_280E91000, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v17 = sub_219BF54E4();
    v19 = v18;

    v11[5] = v17;
    v11[6] = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_218DA5740(uint64_t a1, uint64_t a2)
{
  sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  sub_2186D76A0(&qword_27CC11D10, type metadata accessor for SearchModel);
  v3 = sub_219BEB304();
  sub_218DA3954(&v6);
  v4 = sub_2195326AC(a2, v3);

  return v4;
}

uint64_t sub_218DA5888(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE8F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();
}

uint64_t sub_218DA5B78()
{
  *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam) = 1;
  v1 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_218DA5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v23 = a3;
  v24 = a4;
  v30 = a1;
  v25 = a9;
  sub_218DA609C(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_219BE86A4();
  v40 = v32;
  sub_2189871A8();
  sub_2186D76A0(&qword_280EE5510, sub_2189871A8);
  sub_219BE7B94();

  sub_218DA6190(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  v31 = xmmword_219C09BA0;
  *(v15 + 16) = xmmword_219C09BA0;
  v16 = swift_allocObject();
  *(v16 + 16) = v31;
  v17 = sub_219BE6684();
  type metadata accessor for SearchFeedServiceConfig();
  sub_2186D76A0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
  *&v31 = v11;
  v18 = sub_219BEB284();
  v32 = a2;
  v33 = v23;
  v34 = v24;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v39 = v25;
  sub_219BE57D4();
  sub_219BE57B4();
  v19 = sub_219BE6624();

  sub_21885AB78(v18);
  if (v19)
  {
    v20 = MEMORY[0x277D6D630];
  }

  else
  {
    v17 = 0;
    v20 = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
  }

  *(v16 + 32) = v19;
  *(v16 + 56) = v17;
  *(v16 + 64) = v20;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v21 = sub_219BE59D4();
  (*(v12 + 8))(v14, v31);
  return v21;
}

uint64_t sub_218DA5FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218DA602C()
{
  sub_219BE8F74();

  return sub_219897EA8();
}

void sub_218DA609C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor();
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D76A0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    v8[3] = sub_2186D76A0(&qword_280EDF480, type metadata accessor for SearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218DA6190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218DA61F4()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC7NewsUI220SearchViewController_searchAction;
  sub_218803FE0();
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC7NewsUI220SearchViewController_clearAction;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218DA62C8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI220SearchViewController_styler], v17);
  v3 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  [v5 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v17);
  v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 setBackgroundColor_];
  [v8 setAlwaysBounceVertical_];

  v9 = [v1 parentViewController];
  if (v9)
  {
    v10 = v9;
    sub_219BE7984();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      sub_218718690(v2, v17);
      v13 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v14 = [v12 view];
      if (v14)
      {
        v15 = v14;
        v16 = *(*__swift_project_boxed_opaque_existential_1((*v13 + 16), *(*v13 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
        [v15 setBackgroundColor_];

        __swift_destroy_boxed_opaque_existential_1(v17);
        return;
      }

      goto LABEL_9;
    }
  }
}

void sub_218DA6504()
{

  sub_219BE5914();

  MEMORY[0x21CEC15C0](v0);
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 adjustedContentInset];
  [v2 setContentOffset:0 animated:{0.0, -v1}];
}

uint64_t sub_218DA65C4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![*(v2 + 16) useContinueReading])
  {
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    goto LABEL_5;
  }

  NewsActivityInfoDeserializer.deserialize(userActivity:)(a1, &v30);
  v8 = v30;
  if ((~v30 & 0xF000000000000007) == 0)
  {
    *v7 = a1;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_218DA6B6C();
    swift_allocObject();
    v9 = a1;
    return sub_219BE3014();
  }

  v33 = v30;
  v11 = sub_2190902E8(&v30);
  v13 = v30;
  v12 = v31;
  if (v32 > 1u)
  {
    if (v32 == 2)
    {
      v30 = a1;
      LOBYTE(v31) = 0;
      v19 = a1;
      v20 = sub_218A70D04(v13, v12, &v30, a2);
      sub_218DA6BC4(v13, v12, 2u);
      sub_218970170(v8);
      sub_218A57FB4(v30, v31);
      return v20;
    }

    *v7 = v8;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_218DA6B6C();
    swift_allocObject();
    return sub_219BE3014();
  }

  v29 = v31;
  if (v32)
  {
    MEMORY[0x28223BE20](v11);
    *(&v28 - 4) = v2;
    *(&v28 - 3) = v13;
    *(&v28 - 2) = v12;
    sub_219BDED54();
    v21 = a1;
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v22 = sub_219BF66A4();
    sub_218DA6C10();
    sub_219BE2F84();

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a1;
    *(v24 + 32) = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_218DA6C80;
    *(v25 + 24) = v24;
    v26 = v21;
    v27 = sub_219BE2E54();
    v18 = sub_219BE2F64();

    sub_218DA6BC4(v13, v29, 1u);
    sub_218970170(v8);
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v28 - 4) = v2;
    *(&v28 - 3) = v13;
    *(&v28 - 2) = v14;
    sub_218731D50();
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v15 = sub_219BF66A4();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = 0;
    v17 = a1;
    v18 = sub_219BE2F84();

    sub_218DA6BC4(v13, v29, 0);
    sub_218970170(v8);
  }

  return v18;
}

id *sub_218DA6AB0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 4));
  __swift_destroy_boxed_opaque_existential_1((v0 + 9));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t sub_218DA6B38()
{
  sub_218DA6AB0();

  return swift_deallocClassInstance();
}

void sub_218DA6B6C()
{
  if (!qword_280EE6D58)
  {
    type metadata accessor for ContinueReadingEligibility(255);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6D58);
    }
  }
}

uint64_t sub_218DA6BC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_218DA6BD8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_218DA6BD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_218DA6C10()
{
  if (!qword_27CC11D18)
  {
    sub_219BDED54();
    sub_2189EB4C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11D18);
    }
  }
}

uint64_t sub_218DA6C8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_218DA6C10();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t type metadata accessor for CuratedTagFeedGroupEmitter()
{
  result = qword_280EBBB40;
  if (!qword_280EBBB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DA6D90()
{
  sub_218A27A84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CuratedTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218DA6E3C(uint64_t a1)
{
  v65 = a1;
  v67 = *MEMORY[0x277D85DE8];
  sub_218A59E00(0);
  v64 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v46 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_219BF1934();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CuratedTagFeedGroupConfigData();
  v7 = MEMORY[0x28223BE20](v49);
  v61 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - v9;
  v10 = sub_219BF0BD4();
  v54 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  v14 = *(v3 + 72);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v44 = 3 * v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C0B8C0;
  v62 = v16;
  v45 = v15;
  v17 = (v16 + v15);
  v63 = v1 + *(type metadata accessor for CuratedTagFeedGroupEmitter() + 20);
  v56 = type metadata accessor for CuratedTagFeedGroupKnobs();
  sub_219BEF134();
  v18 = sub_219BEEDF4();
  v19 = *(v11 + 8);
  v53 = v11 + 8;
  v55 = v19;
  v19(v13, v10);
  *(swift_allocObject() + 16) = v18;
  sub_218DAADD4(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v17 = sub_219BEFB94();
  v20 = *MEMORY[0x277D32308];
  v47 = v3;
  v21 = *(v3 + 104);
  v22 = v64;
  v21(v17, v20, v64);
  swift_allocObject();
  *(v17 + v14) = sub_219BEFB94();
  v59 = v14;
  v60 = v21;
  v57 = v17;
  v58 = v20;
  v21((v17 + v14), v20, v22);
  sub_219BEF134();
  sub_219BEF524();
  v55(v13, v54);
  v23 = 0;
  v24 = 0;
  if (v66 == 1)
  {
    sub_218A27A84();
    v25 = v48;
    sub_219BEDD14();
    v26 = v50;
    v28 = v51;
    v27 = v52;
    (*(v51 + 16))(v50, v25 + *(v49 + 20), v52);
    sub_218DAB11C(v25, type metadata accessor for CuratedTagFeedGroupConfigData);
    v23 = sub_219BF1784();
    v24 = v29;
    (*(v28 + 8))(v26, v27);
  }

  v30 = (v57 + 2 * v59);
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  *(v31 + 24) = v24;
  swift_allocObject();
  *v30 = sub_219BEFB94();
  v32 = v64;
  v33 = v60;
  v60(v30, v58, v64);
  sub_218A27A84();
  v34 = v61;
  sub_219BEDD14();
  v35 = sub_219BF7614();
  sub_218DAB11C(v34, type metadata accessor for CuratedTagFeedGroupConfigData);
  if (v35)
  {
    v36 = v62;
  }

  else
  {
    sub_218DAAED0(0, &qword_280E8B8A0, MEMORY[0x277D32F00], MEMORY[0x277D84560]);
    v37 = sub_219BF0644();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_219C09BA0;
    (*(v38 + 104))(v40 + v39, *MEMORY[0x277D32EF8], v37);
    v41 = sub_2194B3180(v40);
    swift_setDeallocating();
    (*(v38 + 8))(v40 + v39, v37);
    swift_deallocClassInstance();
    v42 = v46;
    *v46 = v41;
    v33(v42, *MEMORY[0x277D322C8], v32);
    v36 = sub_2191F7464(1uLL, 4, 1, v62);
    *(v36 + 2) = 4;
    (*(v47 + 32))(&v36[v45 + v44], v42, v32);
  }

  LOBYTE(v66) = 8;
  sub_2189AD5C8();
  v66 = sub_219BEE964();
  sub_2191EDA0C(v36);
  return v66;
}

uint64_t sub_218DA769C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v2;
  v18 = a1;
  sub_219BF2754();
  sub_219BE3204();
  sub_218DAAFEC(v2, v7, type metadata accessor for CuratedTagFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_218DAACD8(v7, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218DAAFEC(v2, v7, type metadata accessor for CuratedTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_218DAACD8(v7, v12 + v8);
  v13 = sub_219BE2E54();
  v14 = sub_219BE3064();

  return v14;
}

uint64_t sub_218DA78B8(uint64_t a1, uint64_t a2)
{
  sub_219BEF164();
  if (!v2)
  {
    v14[4] = v10;
    v14[5] = v11;
    v14[6] = v12;
    v14[7] = v13;
    v14[0] = v6;
    v14[1] = v7;
    v14[2] = v8;
    v14[3] = v9;
    a1 = sub_218DA7944(a2, v14);
    sub_218A410EC(v14);
  }

  return a1;
}

uint64_t sub_218DA7944(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  v167 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_218DAAED0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v154 = &v122 - v5;
  sub_218DAAED0(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v122 - v7;
  sub_218DAAED0(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v148 = &v122 - v9;
  v153 = sub_219BF2AB4();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v11 - 8);
  v143 = &v122 - v12;
  v166 = sub_219BF1934();
  v150 = *(v166 - 8);
  v13 = MEMORY[0x28223BE20](v166);
  v142 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v165 = &v122 - v15;
  v141 = sub_219BEF9C4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v138 = (&v122 - v18);
  v131 = sub_219BEF564();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v137 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BEFBD4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v156 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280E912E0, MEMORY[0x277D32720], v3);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v132 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = &v122 - v24;
  v136 = sub_219BF0BD4();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v26 - 8);
  v155 = &v122 - v27;
  v147 = sub_219BF2774();
  v28 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v164 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAAED0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v30 - 8);
  v157 = &v122 - v31;
  v145 = sub_219BF2034();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v33 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BEDC14();
  MEMORY[0x28223BE20](v34 - 8);
  v35 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v35);
  v37 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF35D4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (&v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A27A84();
  v168 = v42;
  v175 = v2;
  sub_219BEDD14();
  v133 = v35;
  v43 = v37[*(v35 + 52)];
  v159 = v37;
  sub_218DAB11C(v37, type metadata accessor for CuratedTagFeedGroupConfigData);
  v162 = v38;
  v146 = v28;
  v163 = v33;
  v160 = v41;
  if (v43 == 1)
  {
    *v41 = 0x404E000000000000;
    (*(v39 + 104))(v41, *MEMORY[0x277D33EC0], v38);
    v44 = v167;
  }

  else
  {
    v44 = v167;
    sub_219BEF084();
    sub_219BF35E4();
  }

  sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_219C146A0;
  sub_219BEF0B4();
  v46 = *(v171 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v47 = [v46 backingTag];

  *(v45 + 32) = v47;
  v174 = v45;
  sub_219BEF0B4();
  v48 = *(v171 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v49 = [v48 backingChannel];

  v161 = v39;
  if (v49)
  {
    v50 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v50);
    if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    swift_unknownObjectRelease();
    v123 = v174;
  }

  else
  {
    v123 = v45;
  }

  sub_218DAAED0(0, &qword_280E8B730, sub_218DAAF34, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  sub_219BEF0B4();
  v52 = *(v171 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v53 = [v52 backingTag];

  v54 = [v53 identifier];
  swift_unknownObjectRelease();
  v55 = sub_219BF5414();
  v57 = v56;

  *(inited + 32) = v55;
  *(inited + 40) = v57;
  MEMORY[0x28223BE20](v58);
  sub_219BE3204();
  v59 = sub_219BE2E54();
  sub_2187E7248();
  v60 = sub_219BE2F74();

  *(inited + 48) = v60;
  sub_2194B08A8(inited);
  swift_setDeallocating();
  sub_218DAB11C(inited + 32, sub_218DAAF34);
  v61 = sub_219BEC004();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v126 = v61;
  v125 = v63;
  v124 = v62 + 56;
  (v63)(v157, 1, 1);
  v64 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v64);
  sub_219A951B8(v64);
  sub_219A952CC(v64);
  sub_219A952E4(v64);
  sub_219A953F8(v64);
  v65 = v44;
  sub_219BF2024();
  v66 = v134;
  sub_219BEF134();
  v123 = type metadata accessor for CuratedTagFeedGroupEmitter();
  v67 = v175 + *(v123 + 20);
  v68 = type metadata accessor for CuratedTagFeedGroupKnobs();
  v69 = *(v68 + 48);
  sub_2189B7614(v67 + v69, v127);
  v122 = v68;
  v170[3] = v68;
  v170[4] = sub_218DAB0D4(&qword_280EC2410, type metadata accessor for CuratedTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v170);
  sub_218DAAFEC(v67, boxed_opaque_existential_1, type metadata accessor for CuratedTagFeedGroupKnobs);
  v172 = sub_219BF1234();
  v173 = MEMORY[0x277D33230];
  __swift_allocate_boxed_opaque_existential_1(&v171);
  sub_219BF1224();
  v71 = v155;
  sub_219BF2AC4();
  v72 = sub_219BF2AD4();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  v127 = sub_218DA99C0(v65);
  v73 = *(v158 + 88);
  (*(v128 + 104))(v156, *MEMORY[0x277D329D8], v129);
  (*(v130 + 104))(v137, *MEMORY[0x277D32668], v131);
  v158 = v67;
  v74 = v132;
  sub_2189B7614(v67 + v69, v132);
  v75 = sub_219BEF814();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v74, 1, v75);
  v131 = v73;

  if (v77 == 1)
  {
    sub_218DAB054(v74, &qword_280E912E0, MEMORY[0x277D32720]);
    v78 = 1;
    v79 = v138;
    v80 = v136;
    v81 = v135;
  }

  else
  {
    sub_219BEF134();
    v79 = v138;
    v82 = v74;
    sub_219BEF7E4();
    v81 = v135;
    v80 = v136;
    (*(v135 + 8))(v66, v136);
    (*(v76 + 8))(v82, v75);
    v78 = 0;
  }

  v83 = sub_219BF02F4();
  (*(*(v83 - 8) + 56))(v79, v78, 1, v83);
  (v140[13])(v139, *MEMORY[0x277D32840], v141);
  sub_219BF2764();
  sub_219BEF134();
  sub_219BEF524();
  (*(v81 + 8))(v66, v80);
  v84 = v171;
  v85 = v65;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v86 = qword_280F61708;
  sub_2186F20D4();
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_219C09EC0;
  v88 = v175;
  v89 = sub_219BEDCA4();
  v91 = v90;
  *(v87 + 56) = MEMORY[0x277D837D0];
  *(v87 + 64) = sub_2186FC3BC();
  v92 = MEMORY[0x277D839B0];
  *(v87 + 32) = v89;
  *(v87 + 40) = v91;
  v93 = MEMORY[0x277D839F0];
  *(v87 + 96) = v92;
  *(v87 + 104) = v93;
  *(v87 + 72) = v84;
  sub_219BF6214();
  v156 = v86;
  sub_219BE5314();

  sub_218718690(v88 + *(v123 + 24), &v171);
  v141 = v173;
  v155 = v172;
  v140 = __swift_project_boxed_opaque_existential_1(&v171, v172);
  v94 = v159;
  sub_219BEDD14();
  v95 = v150;
  v96 = *(v150 + 16);
  v97 = v94 + *(v133 + 20);
  LODWORD(v139) = v84;
  v98 = v142;
  v99 = v166;
  v96(v142, v97, v166);
  v138 = type metadata accessor for CuratedTagFeedGroupConfigData;
  sub_218DAB11C(v94, type metadata accessor for CuratedTagFeedGroupConfigData);
  sub_218DA9CFC(v85);
  v100 = v157;
  v125(v157, 1, 1, v126);
  sub_218A42400(0);
  v102 = v143;
  (*(*(v101 - 8) + 56))(v143, 1, 1, v101);
  sub_219BF1764();

  sub_218DAB054(v102, &unk_280E8FF30, sub_218A42400);
  sub_218DAB054(v100, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v157 = *(v95 + 8);
  (v157)(v98, v99);
  sub_2189AD5C8();
  v104 = v103;
  v105 = *(v103 - 8);
  v106 = v148;
  (*(v105 + 16))(v148, v158, v103);
  (*(v105 + 56))(v106, 0, 1, v104);
  sub_219BEF0B4();
  v107 = *(v170[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BEDD14();

  sub_218DAB11C(v94, v138);
  v108 = v161;
  v109 = v149;
  v110 = v162;
  (*(v161 + 16))(v149, v160, v162);
  (*(v108 + 56))(v109, 0, 1, v110);
  v169 = 8;
  sub_218DAADD4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  if (v139)
  {
    sub_219BEF0B4();
    sub_218CB8CBC();

    sub_219BEF0B4();
    v111 = *(v170[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);
  }

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v112 = v159;
  sub_219BEDD14();
  sub_218E103B8();
  sub_218DAB11C(v112, type metadata accessor for CuratedTagFeedGroupConfigData);
  v113 = v146;
  v114 = v154;
  v115 = v164;
  v116 = v147;
  (*(v146 + 16))(v154, v164, v147);
  (*(v113 + 56))(v114, 0, 1, v116);
  *MEMORY[0x277D30BC0];
  v156;
  v117 = v151;
  sub_219BF2A84();
  v118 = v165;
  v119 = v163;
  v120 = sub_219BF2184();
  (*(v152 + 8))(v117, v153);
  (v157)(v118, v166);
  (*(v113 + 8))(v115, v116);
  (*(v144 + 8))(v119, v145);
  (*(v161 + 8))(v160, v162);
  __swift_destroy_boxed_opaque_existential_1(&v171);
  return v120;
}

uint64_t sub_218DA92DC(uint64_t *a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DA9470(*a1, v7);
  sub_218DAAFEC(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218DAAED0(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218DAB11C(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_218DA9470@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[3] = a1;
  v26 = a2;
  v2 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DAAED0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  v8 = sub_219BEF554();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v22[0] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = sub_219BED8D4();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v23 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();

  v13 = sub_219BEDCB4();
  v22[1] = v14;
  v22[2] = v13;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for CuratedTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v15 = sub_219BEE5D4();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = v23;
  sub_219BED834();
  sub_219BEDD14();
  v18 = *v4;
  v17 = v4[1];

  sub_218DAB11C(v4, type metadata accessor for CuratedTagFeedGroupConfigData);
  v19 = v26;
  (*(v24 + 32))(v26, v16, v25);
  v20 = (v19 + *(type metadata accessor for CuratedTagFeedGroup() + 20));
  *v20 = v18;
  v20[1] = v17;
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218DA9820()
{
  v0 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[0] = 0x2064657461727543;
  v6[1] = 0xE900000000000028;
  sub_218A27A84();
  sub_219BEDD14();
  v3 = *v2;
  v4 = v2[1];

  sub_218DAB11C(v2, type metadata accessor for CuratedTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v3, v4);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  sub_219BEF194();
}

uint64_t sub_218DA99C0(uint64_t a1)
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
  sub_218DAAED0(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33FA8];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33F90], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FA0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for CuratedTagFeedGroupEmitter();
  type metadata accessor for CuratedTagFeedGroupKnobs();
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

id sub_218DA9CFC(uint64_t a1)
{
  v72 = a1;
  v2 = sub_219BF1934();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v68 = &v64 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v64 - v9;
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - v10;
  v11 = type metadata accessor for CuratedTagFeedGroupConfigData();
  v12 = MEMORY[0x28223BE20](v11);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v64 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  sub_218A27A84();
  sub_219BEDD14();
  v24 = v23[*(v11 + 24)];
  sub_218DAB11C(v23, type metadata accessor for CuratedTagFeedGroupConfigData);
  if (v24 == 7)
  {
    v25 = v1 + *(type metadata accessor for CuratedTagFeedGroupEmitter() + 20);
    v26 = *(v25 + *(type metadata accessor for CuratedTagFeedGroupKnobs() + 44));
    if (v26 == 7)
    {
      v24 = 0;
    }

    else
    {
      v24 = v26;
    }
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v27 = 0xEA00000000006761;
  sub_2186F20D4();
  v28 = swift_allocObject();
  v29 = v28;
  *(v28 + 16) = xmmword_219C09BA0;
  v69 = v5;
  if (v24 <= 2)
  {
    if (!v24)
    {
      v30 = 0x5464657461727563;
      goto LABEL_21;
    }

    if (v24 == 1)
    {
      v27 = 0x8000000219CD73D0;
      v30 = 0xD000000000000016;
      goto LABEL_21;
    }

    v30 = 0xD00000000000001ALL;
    v31 = "curatedTagOrBackingChannel";
    goto LABEL_20;
  }

  if (v24 > 4)
  {
    if (v24 == 5)
    {
      v27 = 0xEE006C656E6E6168;
      v30 = 0x43676E696B636162;
      goto LABEL_21;
    }

    v30 = 0xD00000000000001ALL;
    v31 = "backingChannelOrBackingTag";
LABEL_20:
    v27 = (v31 - 32) | 0x8000000000000000;
    goto LABEL_21;
  }

  if (v24 == 3)
  {
    v27 = 0x8000000219CD7410;
    v30 = 0xD000000000000026;
  }

  else
  {
    v30 = 0x54676E696B636162;
  }

LABEL_21:
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_2186FC3BC();
  *(v29 + 32) = v30;
  *(v29 + 40) = v27;
  sub_219BF6214();
  sub_219BE5314();

  if (v24 > 2)
  {
    if (v24 > 4)
    {
      if (v24 == 5)
      {
        sub_219BEF0B4();
        v48 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

        v36 = [v48 backingChannel];

        if (!v36)
        {
          return v36;
        }
      }

      else
      {
        sub_219BEF0B4();
        v59 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

        v36 = [v59 backingChannel];

        if (!v36)
        {
          sub_219BEF0B4();
          v60 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

          v36 = [v60 backingTag];
        }
      }

      goto LABEL_42;
    }

    if (v24 == 3)
    {
      v32 = v65;
      sub_219BEDD14();
      v34 = v69;
      v33 = v70;
      v35 = v71;
      (*(v70 + 16))(v69, v32 + *(v11 + 20), v71);
      sub_218DAB11C(v32, type metadata accessor for CuratedTagFeedGroupConfigData);
      v36 = sub_219BF1784();
      v38 = v37;
      (*(v33 + 8))(v34, v35);
      if (!v38)
      {
        sub_219BEF0B4();
        v39 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

        v36 = [v39 backingChannel];

        if (!v36)
        {
          sub_219BEF0B4();
          v61 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

          v36 = [v61 backingTag];
        }

        goto LABEL_42;
      }

      return v36;
    }

LABEL_31:
    sub_219BEF0B4();
    v45 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v46 = [v45 backingTag];

    v47 = [v46 identifier];
LABEL_44:
    v62 = v47;
    swift_unknownObjectRelease();
    v36 = sub_219BF5414();

    return v36;
  }

  if (!v24)
  {
    sub_219BEDD14();
    v50 = v70;
    v49 = v71;
    v51 = v66;
    (*(v70 + 16))(v66, &v21[*(v11 + 20)], v71);
    sub_218DAB11C(v21, type metadata accessor for CuratedTagFeedGroupConfigData);
    v36 = sub_219BF1784();
    (*(v50 + 8))(v51, v49);
    return v36;
  }

  if (v24 == 1)
  {
    sub_219BEDD14();
    v41 = v70;
    v40 = v71;
    v42 = v67;
    (*(v70 + 16))(v67, &v18[*(v11 + 20)], v71);
    sub_218DAB11C(v18, type metadata accessor for CuratedTagFeedGroupConfigData);
    v36 = sub_219BF1784();
    v44 = v43;
    (*(v41 + 8))(v42, v40);
    if (v44)
    {
      return v36;
    }

    goto LABEL_31;
  }

  v52 = v64;
  sub_219BEDD14();
  v54 = v70;
  v53 = v71;
  v55 = v68;
  (*(v70 + 16))(v68, v52 + *(v11 + 20), v71);
  sub_218DAB11C(v52, type metadata accessor for CuratedTagFeedGroupConfigData);
  v36 = sub_219BF1784();
  v57 = v56;
  (*(v54 + 8))(v55, v53);
  if (!v57)
  {
    sub_219BEF0B4();
    v58 = *(v73 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v36 = [v58 backingChannel];

    if (v36)
    {
LABEL_42:
      v47 = [v36 identifier];
      goto LABEL_44;
    }
  }

  return v36;
}

uint64_t sub_218DAA694()
{
  v0 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[0] = 0x2064657461727543;
  v6[1] = 0xE900000000000028;
  sub_218A27A84();
  sub_219BEDD14();
  v3 = *v2;
  v4 = v2[1];

  sub_218DAB11C(v2, type metadata accessor for CuratedTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v3, v4);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_218DAA780@<X0>(uint64_t *a1@<X8>)
{
  sub_218A27A84();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000006;
  return result;
}

uint64_t sub_218DAA800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for CuratedTagFeedGroupKnobs();
  a2[4] = sub_218DAB0D4(&qword_280EC2408, type metadata accessor for CuratedTagFeedGroupKnobs);
  a2[5] = sub_218DAB0D4(&qword_27CC11D20, type metadata accessor for CuratedTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218DAAFEC(v2 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedTagFeedGroupKnobs);
}

uint64_t sub_218DAA8C8()
{
  sub_218A27A84();

  return sub_219BEDCA4();
}

uint64_t sub_218DAA8F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0x2064657461727543;
  v14 = 0xE900000000000028;
  sub_218A27A84();
  sub_219BEDD14();
  v5 = *v4;
  v6 = v4[1];

  sub_218DAB11C(v4, type metadata accessor for CuratedTagFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_218DAAED0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v8 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DAB11C(inited + 32, sub_2188317B0);
  sub_218DAAED0(0, &qword_280EE79C8, type metadata accessor for CuratedTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v10;
  a1[4] = sub_218DAB17C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for CuratedTagFeedGroupEmitter();
  return sub_219BE2334();
}

uint64_t sub_218DAAB30()
{
  sub_218DAB0D4(&qword_280EBBB68, type metadata accessor for CuratedTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218DAACD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218DAADD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218DAAED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218DAAF34()
{
  if (!qword_280E8F808)
  {
    sub_218DAAED0(255, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F808);
    }
  }
}

uint64_t sub_218DAAFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DAB054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218DAAED0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DAB0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218DAB11C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218DAB17C()
{
  result = qword_280EE79D0[0];
  if (!qword_280EE79D0[0])
  {
    sub_218DAAED0(255, &qword_280EE79C8, type metadata accessor for CuratedTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE79D0);
  }

  return result;
}

uint64_t type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs()
{
  result = qword_280E9A680;
  if (!qword_280E9A680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DAB278()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_218BE9934();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218DAB2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v21 = a2;
    sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a2 = v21;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v17 = sub_219BF1F54();
    sub_218C3DB88(v17);

    sub_218BE9934();
    swift_allocObject();
    a2 = sub_219BEEE04();
  }

  v18 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  *(a4 + *(v18 + 20)) = a2;
  if (!a3)
  {
    sub_218BE9934();
    swift_allocObject();
    a3 = sub_219BEEE04();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v18 + 24)) = a3;
  return result;
}

uint64_t sub_218DAB5FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2189AD5C8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = v38 - v11;
  sub_218DAC0AC(0, &qword_280E8C840, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DABFF4();
  v17 = v50;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38[1] = 0;
  v40 = v14;
  v41 = a1;
  v42 = v7;
  LOBYTE(v53) = 0;
  sub_21877C828(&qword_280E91A88, sub_2189AD5C8);
  v19 = v44;
  v20 = v46;
  sub_219BF7674();
  sub_218BE9934();
  LOBYTE(v52) = 1;
  sub_21877C828(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v38[0] = v53;
  v51 = 2;
  v50 = v13;
  v39 = v16;
  sub_219BF7674();
  v43 = v52;
  v21 = v19;
  v22 = v49;
  sub_2189ADE64(v19, v49);
  v23 = v45;
  v24 = *(v45 + 48);
  if (v24(v22, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v25 = v47;
    sub_219BEE974();
    v26 = v24(v22, 1, v20);
    v27 = v25;
    v29 = v40;
    v28 = v41;
    if (v26 != 1)
    {
      sub_2189ADEC8(v49);
    }
  }

  else
  {
    v27 = v47;
    (*(v23 + 32))(v47, v22, v20);
    v29 = v40;
    v28 = v41;
  }

  v30 = v42;
  (*(v23 + 32))(v42, v27, v20);
  v31 = v50;
  v32 = v38[0];
  if (!v38[0])
  {
    v33 = sub_219BF1F54();
    sub_218C3DB88(v33);

    swift_allocObject();
    v32 = sub_219BEEE04();
    v31 = v50;
  }

  v34 = v39;
  *(v30 + *(v5 + 20)) = v32;
  v35 = v48;
  if (v43)
  {
    v36 = v43;
  }

  else
  {
    swift_allocObject();
    v37 = sub_219BEEE04();
    v31 = v50;
    v36 = v37;
  }

  sub_2189ADEC8(v21);
  (*(v29 + 8))(v34, v31);
  *(v30 + *(v5 + 24)) = v36;
  sub_218DAC048(v30, v35);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_218DABBA0(void *a1)
{
  v3 = v1;
  sub_218DAC0AC(0, &qword_27CC11D28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DABFF4();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C828(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_218BE9934();
    sub_21877C828(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218DABE04()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218DABE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218DAC228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218DABE88(uint64_t a1)
{
  v2 = sub_218DABFF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DABEC4(uint64_t a1)
{
  v2 = sub_218DABFF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DABF30()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C828(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_218BE9934(), (sub_219BEEDE4()))
  {
    return sub_219BEEDE4() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_218DABFF4()
{
  result = qword_280E9A6A8[0];
  if (!qword_280E9A6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9A6A8);
  }

  return result;
}

uint64_t sub_218DAC048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218DAC0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DABFF4();
    v7 = a3(a1, &type metadata for SportsInjuryReportsTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DAC124()
{
  result = qword_27CC11D30;
  if (!qword_27CC11D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D30);
  }

  return result;
}

unint64_t sub_218DAC17C()
{
  result = qword_280E9A698;
  if (!qword_280E9A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A698);
  }

  return result;
}

unint64_t sub_218DAC1D4()
{
  result = qword_280E9A6A0;
  if (!qword_280E9A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A6A0);
  }

  return result;
}

uint64_t sub_218DAC228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for AudioFeedLayoutModel()
{
  result = qword_280ECF498;
  if (!qword_280ECF498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_218DAC394()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_218DAC4F8(uint64_t a1)
{
  v2 = sub_218DACDA8(&qword_280ECF4A8);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218DAC584()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  v8 = sub_219BEF8E4();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_218DAC7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  LOBYTE(a3) = a3(v12);
  (*(v6 + 8))(v9, v5);
  return a3 & 1;
}

uint64_t sub_218DAC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v4, v13);
  (*(v8 + 32))(v11, v13, v7);
  v14 = a4(a1);
  (*(v8 + 8))(v11, v7);
  return v14;
}

uint64_t sub_218DACA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_218DACBF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DACD44(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_218DACD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DACDA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218DACDEC(uint64_t a1, char *a2, CGFloat a3)
{
  v4 = v3;
  if (swift_unknownObjectWeakLoadStrong() && (v8 = off_282A2F300, type metadata accessor for MainTabBarController(), v9 = v8(), swift_unknownObjectRelease(), (v9 & 1) != 0))
  {
    v10 = v3[19];
    sub_219099BF8(a1, v4[19]);
    v12 = v11;
    sub_219099BF8(a1, v10);
    v13 = 0.0;
    if (v14 > 0.0)
    {
      sub_219099BF8(a1, v10);
      v13 = v15 + 16.0;
    }

    v16 = __swift_project_boxed_opaque_existential_1(v4 + 14, v4[17]);
    v17 = *&a2[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_bannerView];
    __swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40));
    v45.origin.x = 0.0;
    v45.origin.y = 8.0;
    v45.size.width = a3;
    v45.size.height = v12;
    CGRectGetWidth(v45);
    v18 = sub_219BE3AA4();
    FollowingEngagementBannerView.engagementView.setter(v18);
    v19 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
    swift_beginAccess();
    [*(v17 + v19) setFrame_];
    v20 = *(v17 + v19);
    if (v20)
    {
      v21 = v20;
      v46.origin.x = 0.0;
      v46.origin.y = 8.0;
      v46.size.width = a3;
      v46.size.height = v12;
      [v21 setHidden_];
    }

    [a2 setFrame_];
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F627F0);
    v23 = a2;
    v24 = sub_219BE5414();
    v25 = sub_219BF61E4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v26 = 138412802;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2080;
      v29 = v23;
      v30 = sub_219BF6B34();
      v32 = sub_2186D1058(v30, v31, &v43);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      v33 = sub_219BF6B34();
      v35 = sub_2186D1058(v33, v34, &v43);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_2186C1000, v24, v25, "Rendered %@ w/ frame=%s, bannerFrame=%s", v26, 0x20u);
      sub_218DAE588(v27, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v28, -1, -1);
      MEMORY[0x21CECF960](v26, -1, -1);
    }
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v36 = sub_219BE5434();
    __swift_project_value_buffer(v36, qword_280F627F0);
    v37 = a2;
    oslog = sub_219BE5414();
    v38 = sub_219BF61E4();

    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&dword_2186C1000, oslog, v38, "Ignoring request to render %@; reason='sidebar is not visible'", v39, 0xCu);
      sub_218DAE588(v40, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v40, -1, -1);
      MEMORY[0x21CECF960](v39, -1, -1);
    }
  }
}

uint64_t sub_218DAD2F4()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_218DAD34C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE3514();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  sub_219BE35A4();
  (*(v4 + 104))(v7, *MEMORY[0x277D314B0], v3);
  sub_218DAE540(&unk_280EE6680, 255, MEMORY[0x277D31550]);
  sub_219BF5874();
  sub_219BF5874();
  if (v14[2] == v14[0] && v14[3] == v14[1])
  {
    v10 = *(v4 + 8);
    v10(v7, v3);
    v10(v9, v3);
  }

  else
  {
    v11 = sub_219BF78F4();
    v12 = *(v4 + 8);
    v12(v7, v3);
    v12(v9, v3);

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  sub_218DAD5A0(a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21898CFC0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218DAD5A0(uint64_t a1)
{
  sub_21873809C(0, &qword_280EE6510, MEMORY[0x277D318F8]);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = v64 - v4;
  v5 = sub_219BE35B4();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v82 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = v64 - v8;
  sub_21873809C(0, &unk_280EE6610, MEMORY[0x277D31680]);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = v64 - v10;
  v11 = sub_219BE3794();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v77 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = v64 - v14;
  v15 = sub_219BF2CB4();
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  v68 = (v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_219BF2634();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  v67 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE38C4();
  v85 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v75 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v86 = v64 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v64 - v24;
  v26 = sub_219BE3514();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1[12];
  v87 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 9, v30);
  sub_219BE35A4();
  v31 = sub_219BE3A14();
  v33 = v32;
  v73 = v27;
  v74 = v26;
  v34 = *(v27 + 8);
  result = v34(v29, v26);
  if (v33)
  {
    v36 = v31;
    v37 = a1;
    sub_219BE3574();
    v38 = v85;
    v39 = (*(v85 + 88))(v25, v19);
    v40 = v19;
    if (v39 == *MEMORY[0x277D31720])
    {
      goto LABEL_3;
    }

    if (v39 == *MEMORY[0x277D31728])
    {

      return (*(v38 + 8))(v25, v19);
    }

    if (v39 == *MEMORY[0x277D31738] || v39 == *MEMORY[0x277D31740] || v39 == *MEMORY[0x277D31730])
    {
    }

    if (v39 == *MEMORY[0x277D31750])
    {
LABEL_3:
      v66 = v19;
      v41 = v87;
      v42 = v87[7];
      v64[0] = v87[8];
      __swift_project_boxed_opaque_existential_1(v87 + 4, v42);
      v64[1] = v36;
      v65 = v34;
      v43 = v68;
      *v68 = v36;
      v43[1] = v33;
      v44 = v71;
      v45 = v72;
      (*(v71 + 104))(v43, *MEMORY[0x277D33B80], v72);
      v64[2] = v33;

      v46 = v67;
      sub_219BF4794();
      (*(v44 + 8))(v43, v45);
      LODWORD(v71) = sub_219BF2614();
      (*(v69 + 8))(v46, v70);
      sub_219BE3574();
      __swift_project_boxed_opaque_existential_1(v41 + 9, v41[12]);
      v72 = v37;
      sub_219BE35A4();
      v47 = v76;
      sub_219BE3AD4();
      v48 = v74;
      v65(v29, v74);
      v49 = v78;
      v50 = v79;
      v51 = *(v78 + 48);
      if (v51(v47, 1, v79) == 1)
      {
        (v49)[13](v88, *MEMORY[0x277D31670], v50);
        if (v51(v47, 1, v50) != 1)
        {
          sub_218DAE588(v47, &unk_280EE6610, MEMORY[0x277D31680]);
        }
      }

      else
      {
        (v49)[4](v88, v47, v50);
      }

      __swift_project_boxed_opaque_existential_1(v87 + 9, v87[12]);
      sub_219BE35A4();
      v79 = sub_219BE3AE4();
      v65(v29, v48);
      (*(v73 + 104))(v29, *MEMORY[0x277D314B0], v48);
      v52 = v85;
      (*(v85 + 16))(v75, v86, v66);
      v53 = v49;
      (v49)[2](v77, v88, v50);
      v54 = sub_219BE3C04();
      (*(*(v54 - 8) + 56))(v81, 1, 1, v54);
      v55 = v80;
      sub_219BE3544();
      v56 = v82;
      v57 = *(v83 + 32);
      v58 = v84;
      v57(v82, v55, v84);
      type metadata accessor for FollowingEngagementModel();
      v59 = swift_allocObject();
      v60 = (v59 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_title);
      (v53[1])(v88, v50);
      (*(v52 + 8))(v86, v66);
      *v60 = 0;
      v60[1] = 0xE000000000000000;
      v57((v59 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_banner), v56, v58);
      *(v59 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_allowsUserInteraction) = v71 & 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21898CBE0(v59);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v61 = *MEMORY[0x277D31748];
      v62 = v40;
      v63 = v39;

      if (v63 != v61)
      {
        return (*(v38 + 8))(v25, v62);
      }
    }
  }

  return result;
}

id sub_218DADFD8(uint64_t a1, void *a2)
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D314B0], v4);
  sub_218DAE540(&unk_280EE6680, 255, MEMORY[0x277D31550]);
  sub_219BF5874();
  sub_219BF5874();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v8 = sub_219BF78F4();
    (*(v5 + 8))(v7, v4);

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21898D22C(a2);
    swift_unknownObjectRelease();
  }

  return sub_218DAE1E0(a2, v2);
}

id sub_218DAE1E0(id result, uint64_t a2)
{
  if (result)
  {
    result = [result style];
    if (result == 2)
    {
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v3 = sub_219BE5434();
      __swift_project_value_buffer(v3, qword_280F627F0);
      v4 = sub_219BE5414();
      v5 = sub_219BF61E4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        MEMORY[0x21CECF960](v6, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
      sub_218DAE540(qword_280EACD48, v7, type metadata accessor for FollowingEngagementViewManager);
      return sub_219BE3A54();
    }
  }

  return result;
}

uint64_t sub_218DAE330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3514();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D314B0], v5);
  sub_218DAE540(&unk_280EE6680, 255, MEMORY[0x277D31550]);
  sub_219BF5874();
  sub_219BF5874();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v9 = sub_219BF78F4();
    (*(v6 + 8))(v8, v5);

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21898D3A8(a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218DAE540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218DAE588(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21873809C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DAE5F8@<X0>(uint64_t a1@<X8>)
{
  v33[3] = a1;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDBD34();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFCC4();
  MEMORY[0x28223BE20](v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v15 = *(v14 + 24);
  v33[1] = *(v14 + 16);
  v17 = *(v16 + 104);
  v33[2] = v13;
  v17();
  v18 = OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval;
  v37 = *(v8 + 16);
  v37(v10, v14 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v7);
  v33[0] = v15;

  sub_219BDB164();
  v19 = *(v8 + 8);
  v19(v10, v7);
  sub_219BDBC84();
  v21 = v20;
  v34 = v4;
  v38 = *(v4 + 8);
  result = v38(v6, v39);
  v23 = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v37(v10, v14 + v18, v7);
  sub_219BDB134();
  v19(v10, v7);
  sub_219BDBC84();
  v25 = v24;
  v27 = v38;
  v26 = v39;
  result = v38(v6, v39);
  v28 = v25 * 1000.0;
  if (COERCE__INT64(fabs(v25 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v36;
  sub_2187D96F4(v35 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, v36);
  if ((*(v34 + 48))(v29, 1, v26) == 1)
  {
    sub_2189DD39C(v29);
    return sub_219BDF6B4();
  }

  sub_219BDBC84();
  v31 = v30;
  result = v27(v29, v26);
  v32 = v31 * 1000.0;
  if (COERCE__INT64(fabs(v31 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        return sub_219BDF6B4();
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs()
{
  result = qword_280E9F828;
  if (!qword_280E9F828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DAEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_218DAED78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DAF260(0, &qword_27CC11D38, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DAF20C();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8();
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8);
    sub_219BF7674();
    sub_218DAEB34(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218DAEF68(uint64_t a1)
{
  v2 = sub_218DAF20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DAEFA4(uint64_t a1)
{
  v2 = sub_218DAF20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DAEFF8(void *a1)
{
  sub_218DAF260(0, &qword_27CC11D48, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DAF20C();
  sub_219BF7B44();
  sub_2189AD5C8();
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218DAF180()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);

  return sub_219BEE9F4();
}

unint64_t sub_218DAF20C()
{
  result = qword_27CC11D40;
  if (!qword_27CC11D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D40);
  }

  return result;
}

void sub_218DAF260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DAF20C();
    v7 = a3(a1, &type metadata for PuzzleFullArchiveTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DAF2D8()
{
  result = qword_27CC11D50;
  if (!qword_27CC11D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D50);
  }

  return result;
}

unint64_t sub_218DAF330()
{
  result = qword_27CC11D58;
  if (!qword_27CC11D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D58);
  }

  return result;
}

unint64_t sub_218DAF388()
{
  result = qword_27CC11D60;
  if (!qword_27CC11D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D60);
  }

  return result;
}

uint64_t sub_218DAF3DC(uint64_t a1)
{
  v22 = sub_219BE9EC4();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE15B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD0A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v21[1] = a1;
  sub_219BEA7B4();
  if (v27)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v6 + 104))(v8, *MEMORY[0x277D2F568], v5);
      sub_219BDD094();
      (*(v6 + 8))(v8, v5);
      sub_219BDD204();

      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_218806FD0(v26);
  }

  v13 = v23;
  sub_218A54924(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_218FE7680(0x6565466F69647541, 0xE900000000000064, v4);

    (*(v2 + 8))(v4, v22);
    if (v16)
    {
      return v16;
    }
  }

  else
  {
    (*(v2 + 8))(v4, v22);
  }

  __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  sub_218DAF7DC();
  sub_219BEA794();
  sub_219BE1E14();

  if (v25)
  {
    sub_2186CB1F0(&v24, v26);
    v18 = v27;
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v16 = (*(v19 + 8))(v18, v19);
    v20 = sub_219BEA784();
    v20(v16);

    __swift_destroy_boxed_opaque_existential_1(v26);
    return v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_218DAF7DC()
{
  result = qword_280ED1E90;
  if (!qword_280ED1E90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED1E90);
  }

  return result;
}

void sub_218DAF840()
{
  v1 = *(v0 + 16);
  if ([v1 isSignedIntoEmailAccount])
  {
    v2 = [v1 forceUpdateSubscription];
  }
}

uint64_t sub_218DAF91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_218DB0218(0, &qword_280E91A38, sub_2186E9484);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DB0218(0, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_218DB0218(0, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for SavedFeedGroupKnobs();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DB026C(a1, v17, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_218DB026C(v14, v12, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v12, 1, v23) == 1)
    {
      sub_2186E9484();
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_218F70F9C(v29, 0, v36);
      sub_218DB02D8(v14, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      if (v24(v12, 1, v37) != 1)
      {
        sub_218DB02D8(v12, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      }
    }

    else
    {
      sub_218DB02D8(v14, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      v28 = v36;
      sub_218DB0334(v12, v36, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    }

    sub_218DB0334(v28, v21, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    sub_218DB02D8(v34, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_218DB02D8(v17, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    }
  }

  else
  {
    sub_218DB02D8(a1, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    sub_218DB0334(v17, v21, type metadata accessor for SavedFeedGroupKnobs);
  }

  v30 = v40;
  sub_218DB0334(v21, v40, type metadata accessor for SavedFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for SavedFeedKnobsConfig();
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_218DAFE8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218DB0218(0, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218DB039C();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DB03F8();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SavedFeedGroupKnobs();
    v18 = 0;
    sub_2186EE6BC(&qword_280ED0808, type metadata accessor for SavedFeedGroupKnobs);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_218DAF91C(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218DB00B8@<X0>(char *a1@<X8>)
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

uint64_t sub_218DB0118@<X0>(char *a1@<X8>)
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

uint64_t sub_218DB017C(uint64_t a1)
{
  v2 = sub_218DB03F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DB01B8(uint64_t a1)
{
  v2 = sub_218DB03F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218DB0218(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218DB026C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218DB0218(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218DB02D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218DB0218(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DB0334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218DB039C()
{
  if (!qword_280E8CED0)
  {
    sub_218DB03F8();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CED0);
    }
  }
}

unint64_t sub_218DB03F8()
{
  result = qword_280ECD748[0];
  if (!qword_280ECD748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECD748);
  }

  return result;
}

uint64_t sub_218DB044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218DB04C4()
{
  result = qword_27CC11D68;
  if (!qword_27CC11D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11D68);
  }

  return result;
}

unint64_t sub_218DB051C()
{
  result = qword_280ECD738;
  if (!qword_280ECD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD738);
  }

  return result;
}

unint64_t sub_218DB0574()
{
  result = qword_280ECD740;
  if (!qword_280ECD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECD740);
  }

  return result;
}

uint64_t sub_218DB05C8(unsigned __int8 *a1)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = sub_219BED2D4();
  if (v2 == 1)
  {
    swift_getObjectType();
    swift_getKeyPath();
    sub_219BF6A94();
  }

  else
  {
    v4 = [objc_opt_self() currentDevice];
    [v4 userInterfaceIdiom];
  }

  return v3;
}

id sub_218DB06B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipeBoxFeedRules];
  *a2 = result;
  return result;
}

id sub_218DB06EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxRecipeDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_218DB0724@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218DB05C8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_218DB0834(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_218DB226C(v6, a2, v2, v4, v5);
}

uint64_t sub_218DB0888()
{
  v0 = sub_219BF2FA4();
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09EC0;
  if (v0 == 1)
  {
    v2 = 0xE900000000000064;
    v3 = 0x656472616F626E6FLL;
  }

  else if (v0)
  {
    v4 = sub_219BF7894();
    MEMORY[0x21CECC330](v4);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v3 = 0x286E776F6E6B6E75;
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xEC00000064656472;
    v3 = 0x616F626E4F746F6ELL;
  }

  v5 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2186FC3BC();
  *(v1 + 64) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0xE000000000000000;
  sub_219BE5314();
}

void sub_218DB0A78(uint64_t a1)
{
  sub_218846C98(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_219BF3344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_218AD7D2C(a1, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_218AD7DC0(v4);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v11 = [sub_219BF3334() isSports];
      swift_unknownObjectRelease();
      if (v11)
      {
        v12 = *&v10[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32];
        v22 = *&v10[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24];
        v13 = __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager], v22);
        v14 = *&v10[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsFollowsCommandToken + 8];
        v20 = *&v10[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsFollowsCommandToken];
        v21 = v13;
        v19 = v14;
        sub_2186C6148(0, &qword_280E8E3B0);
        v15 = sub_219BF66A4();
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = *(v12 + 56);

        v17(v20, v19, v15, sub_218DB1E18, v16, v22, v12);

        (*(v6 + 8))(v8, v5);
      }

      else
      {
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

uint64_t sub_218DB0D64()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_2186C6148(0, &qword_280E8E3B0);
    v2 = sub_219BF66A4();
    v3 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v5 = *&v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24];
    v6 = *&v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager], v5);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_218DB1E20;
    v8[4] = v3;
    v9 = *(v6 + 8);
    swift_retain_n();

    v9(v2, sub_218DB1E2C, v8, v5, v6);
  }

  return result;
}

uint64_t sub_218DB0F1C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && result == 1)
  {
    v10 = v2;
    v11 = v3;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = result;
      sub_218718690(result + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager, v7);

      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 72))(v5, v6);
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

id sub_218DB0FD0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_subscriptionService];
  swift_unknownObjectRetain();
  v3 = v0;
  sub_218DB1F80(v3, v2);
  swift_unknownObjectRelease();

  [*&v3[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo] removeObserver_];
  v4 = [objc_opt_self() sharedAccount];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_218DB1188()
{
  sub_219BF2FA4();
  sub_218846C98(0, &unk_280EE6950, type metadata accessor for FCSportsOnboardingState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218DB1218@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF2FA4();
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  v10 = a1;
  if (v2 == 1)
  {
    v4 = 0xE900000000000064;
    v5 = 0x656472616F626E6FLL;
  }

  else if (v2)
  {
    v6 = sub_219BF7894();
    MEMORY[0x21CECC330](v6);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v5 = 0x286E776F6E6B6E75;
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000064656472;
    v5 = 0x616F626E4F746F6ELL;
  }

  v7 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v3 + 64) = v8;
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_219BE5314();

  *v10 = v2;
  return result;
}