uint64_t sub_2196F0150(id a1, unint64_t a2)
{
  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v6 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CECE0F0](v6, a2);
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_17;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v7 == a1)
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v6;
        if (v8 == i)
        {
          v9 = v15;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_20:
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C146A0;
    *(inited + 32) = a1;
    v14 = a1;
    sub_2191EDAB0(inited);
    return v9;
  }

  else
  {
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C146A0;
    *(v10 + 32) = a1;
    v11 = a1;
    return v10;
  }
}

uint64_t sub_2196F0340(id a1, unint64_t a2)
{
  result = MEMORY[0x277D84F90];
  if (a2)
  {
    v10 = MEMORY[0x277D84F90];
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x21CECE0F0](j, a2);
        }

        else
        {
          if (j >= *(v5 + 16))
          {
            goto LABEL_16;
          }

          v8 = *(a2 + 8 * j + 32);
        }

        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v8 == a1)
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        if (v9 == i)
        {
          return v10;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2196F0470(char a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v4 = [objc_opt_self() areAnimationsEnabled];
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 traitCollection];

  v8 = [v7 horizontalSizeClass];
  v9 = v8 == 1;
LABEL_7:
  v10 = [v2 tabBarController];
  [v10 setTabBarHidden:v9 animated:v4];

  v11 = sub_219BF6544();
  [v11 setToolbarHidden:a1 & 1 animated:v4];
}

void sub_2196F05A0(uint64_t a1, char a2)
{
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v8[4] = sub_2196F4248;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218A1DA70;
  v8[3] = &block_descriptor_158;
  v7 = _Block_copy(v8);

  [v4 setCollectionViewLayout:a1 animated:1 completion:v7];
  _Block_release(v7);
}

void sub_2196F06DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v7 = v5;
    [v6 setAllowsMultipleSelection_];

    sub_2196F08C0();
    v8 = [v7 isEditing];

    v9 = v8 ^ 1;
    if ((v8 ^ 1))
    {
      v14 = 0;
    }

    else
    {
      v10 = [v7 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = [v10 traitCollection];

      v13 = [v12 horizontalSizeClass];
      v14 = v13 == 1;
    }

    v15 = [v7 tabBarController];
    [v15 setTabBarHidden:v14 animated:0];

    v16 = sub_219BF6544();
    [v16 setToolbarHidden:v9 animated:0];

    if (a3)
    {
      sub_219BE8664();
      v17 = sub_219BE7BC4();

      [v17 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

      v7 = v17;
    }
  }
}

void sub_2196F08C0()
{
  sub_2196F4254(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - v2;
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);
  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = [v7 indexPathsForSelectedItems];

  if (v8)
  {
    sub_219BDC104();
    v9 = sub_219BF5924();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v31 = *(v9 + 16);
  v32 = v9;
  v10 = v31 != 0;
  v11 = sub_2196EE614(&OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem, &selRef_doRemoveDownloadsAction);
  [v11 setEnabled_];

  v12 = sub_2196EE614(&OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem, &selRef_doRemoveIssuesAndDownloadsAction);
  [v12 setEnabled_];

  v13 = sub_2196EE534();
  sub_219BEAF54();
  sub_219BEAB54();
  v38 = sub_2196F1988();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E118], v3);
  LOBYTE(v12) = sub_219BE89A4();

  (*(v4 + 8))(v6, v3);

  [v13 setEnabled_];

  v14 = sub_2196EE780();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  if (v31)
  {
    sub_219BDB5E4();

    sub_2186F20D4();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    v18 = v32;
    v19 = *(v32 + 16);
    v20 = MEMORY[0x277D83C10];
    *(v17 + 56) = MEMORY[0x277D83B88];
    *(v17 + 64) = v20;
    *(v17 + 32) = v19;
    sub_219BF5454();
  }

  else
  {
    sub_219BDB5E4();

    v18 = v32;
  }

  v21 = sub_219BF53D4();

  [v14 setText_];

  v22 = sub_2196EE780();
  [v22 sizeToFit];

  sub_219BE86A4();
  v37 = v38;
  sub_2189870F0();
  sub_2196F3EC0(&unk_27CC11EB0, 255, sub_2189870F0);
  v23 = v34;
  sub_219BE7B94();

  v24 = v36;
  v25 = sub_219BEB184();
  (*(v35 + 8))(v23, v24);
  v26 = sub_218C3E380(v25);

  v27 = sub_218C3E380(v18);

  sub_21947C774(v26, v27);

  v28 = sub_2196EE258();
  v29 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v30 = sub_219BF53D4();

  [v28 setTitle_];
}

uint64_t sub_2196F0F70()
{
  v1 = v0;
  v2 = sub_219BDC104();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196F4254(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);
  sub_219BE8664();
  v11 = sub_219BE7BC4();

  v12 = [v11 indexPathsForSelectedItems];

  if (v12)
  {
    v13 = sub_219BF5924();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  sub_219BE86A4();
  v33 = v10;
  v34 = v35;
  sub_2189870F0();
  sub_2196F3EC0(&unk_27CC11EB0, 255, sub_2189870F0);
  sub_219BE7B94();

  v14 = sub_219BEB184();
  (*(v7 + 8))(v9, v6);

  v16 = sub_218C3E380(v15);

  v18 = sub_218C3E380(v17);

  v19 = sub_21947C774(v16, v18);

  if (v19)
  {

    sub_219BE8664();
    v20 = sub_219BE7BC4();

    [v20 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

    v21 = v13;
  }

  else
  {
    v30 = v1;

    v31 = v14;
    v22 = *(v14 + 16);
    if (v22)
    {
      v23 = *(v32 + 16);
      v24 = v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v25 = *(v32 + 72);
      v26 = (v32 + 8);
      do
      {
        v23(v4, v24, v2);
        sub_219BE8664();
        v27 = sub_219BE7BC4();

        v28 = sub_219BDC094();
        (*v26)(v4, v2);
        [v27 selectItemAtIndexPath:v28 animated:1 scrollPosition:0];

        v24 += v25;
        --v22;
      }

      while (v22);
    }

    v21 = v31;
  }

  sub_2196F1348(v21);
}

uint64_t sub_2196F1348(uint64_t a1)
{
  v2 = v1;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  v5 = [v4 collectionViewLayout];

  [v5 copy];
  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_2196F41E8();
  swift_dynamicCast();
  v6 = v31;
  [v2 isEditing];
  sub_219BEA1F4();

  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = &v31;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2196F436C;
  *(v10 + 24) = v9;
  v29 = sub_218807D50;
  v30 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_218807CE4;
  v28 = &block_descriptor_20_1;
  v11 = _Block_copy(&aBlock);

  [v7 performBatchUpdates:v11 completion:0];
  _Block_release(v11);

  sub_219BE8664();
  v12 = sub_219BE7BC4();

  [v12 contentOffset];
  v14 = v13;
  v16 = v15;

  sub_219BE8664();
  v17 = sub_219BE7BC4();

  v18 = v31;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v14;
  v20[4] = v16;
  v29 = sub_2196F4378;
  v30 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_218A1DA70;
  v28 = &block_descriptor_27_2;
  v21 = _Block_copy(&aBlock);
  v22 = v18;

  [v17 setCollectionViewLayout:v22 animated:0 completion:v21];
  _Block_release(v21);

  sub_2196F08C0();
  v23 = v31;

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  return result;
}

void sub_2196F17D0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE89F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEAF54();
  sub_219BEAB54();
  v7 = sub_2196F1988();
  (*(v3 + 104))(v5, *MEMORY[0x277D6E118], v2);
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  sub_219BE89D4();

  (*(v3 + 8))(v5, v2);

  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setEditing_animated_, 0, 1);
  sub_2196EF774(0, 1, 1);
}

uint64_t sub_2196F1988()
{
  v0 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v0);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC();
  v4 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196F4254(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v44 = v6;
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  sub_219BE8664();
  v10 = sub_219BE7BC4();

  v11 = [v10 indexPathsForSelectedItems];

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    sub_219BDC104();
    sub_219BF5924();
  }

  sub_219BE86A4();
  v46 = v47;
  sub_2189870F0();
  sub_2196F3EC0(&unk_27CC11EB0, 255, sub_2189870F0);
  sub_219BE7B94();

  v13 = v44;
  v14 = sub_219BEB374();

  (*(v7 + 8))(v9, v13);
  v47 = v12;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v42 + 16);
    v17 = *(v42 + 80);
    v38 = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v43 = *(v42 + 72);
    v44 = v16;
    v19 = (v42 + 8);
    v40 = v0;
    v41 = MEMORY[0x277D84F90];
    v39 = v4;
    v42 += 16;
    do
    {
      v24 = v45;
      v44(v45, v18, v4);
      sub_219BE5FC4();
      (*v19)(v24, v4);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v26 = *v2;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          sub_2189E9530(*(v2 + 4), *(v2 + 5), *(v2 + 6));
          sub_2189E9570(0);
          v21 = *(v20 + 64);
          v22 = *&v2[*(v20 + 80) + 32];

          v23 = sub_219BF0744();
          (*(*(v23 - 8) + 8))(&v2[v21], v23);
        }

        else
        {

          sub_2189E93F4();
          v28 = *(v27 + 48);
          v29 = *&v2[*(v27 + 64) + 32];

          v30 = sub_219BF0444();
          (*(*(v30 - 8) + 8))(&v2[v28], v30);
        }
      }

      else
      {
        v31 = *(v2 + 2);
        sub_2189E96A0();
        v33 = *(v32 + 48);
        v34 = *&v2[*(v32 + 64) + 32];

        v35 = sub_219BF0744();
        v36 = (*(*(v35 - 8) + 8))(&v2[v33], v35);
        MEMORY[0x21CECC690](v36);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v41 = v47;
        v4 = v39;
      }

      v18 += v43;
      --v15;
    }

    while (v15);

    return v41;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2196F1F80(unsigned int *a1, uint64_t a2)
{
  v13[1] = a2;
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196F1988();
  sub_2196F4318(0, &unk_280E8BD80, MEMORY[0x277D31B20]);
  v7 = sub_219BEAAD4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v8 + 104))(v10 + v9, *a1, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BEAB14();
  swift_allocObject();
  v11 = sub_219BEAAE4();
  sub_219BEAB24();
  v13[3] = v11;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E118], v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 1;

  sub_219BE89D4();

  (*(v4 + 8))(v6, v3);
}

void sub_2196F2218()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2.receiver = Strong;
    v2.super_class = type metadata accessor for MagazineGridViewController();
    objc_msgSendSuper2(&v2, sel_setEditing_animated_, 0, 1);
    sub_2196EF774(0, 1, 1);
  }
}

void sub_2196F2300(uint64_t a1, uint64_t a2, id *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(a2 + 16))
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D75310]) init];
      sub_219BDC104();
      v8 = sub_219BF5904();
      [v7 invalidateItemsAtIndexPaths_];

      [*a3 invalidateLayoutWithContext_];
    }
  }
}

void sub_2196F23CC(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_219BE8664();
    v6 = sub_219BE7BC4();

    [v6 setContentOffset_];
  }
}

uint64_t sub_2196F2474()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_2196F3EC0(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196F27CC()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196F29A8()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
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

uint64_t sub_2196F2BCC()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200();
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = sub_219BE6C74();
  v13 = MEMORY[0x277D6D7C0];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C64();
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v6[v11], v14, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

void sub_2196F2FD0()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

void sub_2196F303C(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    [v6 *a2];
  }
}

uint64_t sub_2196F30DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [v3 tabBarSplitViewFocusable];
  if (v5)
  {
    [v5 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  if ([v3 isEditing])
  {
    sub_2196F4318(0, &qword_27CC0DCE8, MEMORY[0x277CC9AF8]);
    v6 = sub_219BDC104();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    (*(v7 + 16))(v9 + v8, a3, v6);
    sub_2196F1348(v9);
  }

  else
  {
    v11 = *&v3[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler];
    __swift_project_boxed_opaque_existential_1(v11 + 11, v11[14]);
    sub_2189E8E84();
    __swift_project_boxed_opaque_existential_1(v11 + 6, v11[9]);
    return sub_2199C2688();
  }
}

id sub_2196F3288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [v3 tabBarSplitViewFocusable];
  if (v5)
  {
    [v5 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  result = [v3 isEditing];
  if (result)
  {
    sub_2196F4318(0, &qword_27CC0DCE8, MEMORY[0x277CC9AF8]);
    v7 = sub_219BDC104();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    (*(v8 + 16))(v10 + v9, a3, v7);
    sub_2196F1348(v10);
  }

  return result;
}

void sub_2196F33F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(ObjectType, v10);
    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E978])
    {
      if (v9 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v9 != *MEMORY[0x277D6E958])
      {
        if (v9 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v14 = sub_219BE7BC4();

          v15 = [v14 collectionViewLayout];

          [v15 invalidateLayout];
          sub_219BE8664();
          v16 = sub_219BE7BC4();

          [v16 reloadData];
        }

        else
        {
          sub_219BF7514();
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_2196F36C8(uint64_t a1, char a2)
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
    v11[4] = sub_2196F3EC0(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
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

void sub_2196F3A24()
{
  if (*(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig) == 1)
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      sub_219BF6C44();
    }
  }
}

uint64_t sub_2196F3BCC@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  *a1 = v2;
  v3 = *MEMORY[0x277D6DA10];
  v4 = sub_219BE74B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void sub_2196F3C70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_219BF6544();

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated_];
    }
  }
}

uint64_t sub_2196F3CF4()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE7444();
}

uint64_t sub_2196F3E28()
{
  v1 = (*v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
  if (v1[1])
  {
    v2 = *v1;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2196F3EC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2196F3F08(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = *&v3[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v7 + 40);
    v10 = swift_getObjectType();
    v11 = *(v9 + 48);

    v11(a1, sub_2196F41C4, v8, v10, v9);

    return;
  }

  v12 = ObjectType;
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  v24 = ObjectType;
  v26 = MEMORY[0x277D84F90];
  sub_219BF73F4();
  v14 = (a1 + 32);
  v15 = OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem;
  do
  {
    v19 = *v14++;
    v18 = v19;
    if (v19 <= 1)
    {
      if (!v18)
      {
        sub_2196EE534();
        goto LABEL_6;
      }

      v20 = &OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem;
      v21 = &selRef_doRemoveDownloadsAction;
      goto LABEL_15;
    }

    if (v18 == 2)
    {
      v20 = &OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem;
      v21 = &selRef_doRemoveIssuesAndDownloadsAction;
LABEL_15:
      sub_2196EE614(v20, v21);
      goto LABEL_6;
    }

    if (v18 == 3)
    {
      [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    }

    else
    {
      v16 = sub_2196EE6F0();
      [v16 setHidesSharedBackground_];

      [*&v3[v15] setSharesBackground_];
      v17 = *&v3[v15];
    }

LABEL_6:
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    --v13;
  }

  while (v13);
  v12 = v24;
LABEL_17:
  v22 = sub_219BF6514();
  sub_219399E20();
  v23 = sub_219BF5904();

  [v22 setToolbarItems_];

  LODWORD(v22) = [v3 isEditing];
  v25.receiver = v3;
  v25.super_class = v12;
  objc_msgSendSuper2(&v25, sel_setEditing_animated_, v22 ^ 1, 1);
  sub_2196EF774(v22 ^ 1, 1, 1);
}

void sub_2196F41E8()
{
  if (!qword_27CC14F18)
  {
    sub_219BE9C54();
    v0 = sub_219BEA224();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14F18);
    }
  }
}

void sub_2196F4254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel();
    v8[2] = sub_21895164C();
    v8[3] = sub_2196F3EC0(&unk_27CC0B810, 255, type metadata accessor for MagazineGridItemModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2196F4318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2196F43A8()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_2196F4468()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_styler], v19);
  v4 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v5 = [v0 view];
  if (v5)
  {
    v7 = v5;
    v8 = sub_2196F3EC0(&qword_27CC1E408, v6, type metadata accessor for MagazineGridViewController);
    v9 = MEMORY[0x21CEBCBD0](ObjectType, v8);
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() clearColor];
      [v7 setBackgroundColor_];

      v7 = v10;
    }

    else
    {
      [v7 setBackgroundColor_];
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v12 = __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    sub_219BE8664();
    v13 = sub_219BE7BC4();

    v14 = MEMORY[0x21CEBCBD0](ObjectType, v8);
    if (v14)
    {
      v15 = [objc_opt_self() clearColor];
      [v13 setBackgroundColor_];
    }

    else
    {
      [v13 setBackgroundColor_];
    }

    [v13 setAlwaysBounceVertical_];

    v16 = __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
    v17 = [v1 navigationItem];
    v18 = *(*__swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2196F475C(unint64_t a1, char *a2, char a3)
{
  v6 = sub_219BDBF94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBF34();
  sub_219BDBE64();
  (*(v7 + 8))(v9, v6);
  if (a3)
  {
    v17 = a2;

    sub_2195EB2C4(sub_2196F55B0, v16, a1);
  }

  else
  {
    v17 = v13;

    sub_2195EB2C4(sub_2196F55D0, v16, a1);
  }

  sub_219BF4044();
  sub_218E5B244();
  v14 = sub_219BF5994();

  (*(v11 + 8))(v13, v10);
  return v14;
}

BOOL sub_2196F49F8(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v28 = a2;
  sub_2186DCF58();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v27 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = sub_219BF4AC4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v25 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *a1;
  sub_219BF3FA4();
  sub_219BF4AB4();
  v18 = *(v9 + 8);
  v26 = v8;
  v18(v13, v8);
  v19 = *(v15 + 48);
  if (v19(v7, 1, v14) == 1)
  {
    sub_2189DD39C(v7);
    return 0;
  }

  (*(v15 + 32))(v17, v7, v14);
  sub_218E5B244();
  if (sub_219BF5334())
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  v28 = v19;
  v21 = v25;
  sub_219BF3FA4();
  v22 = v27;
  sub_219BF4AA4();
  v18(v21, v26);
  (*(v15 + 8))(v17, v14);
  v23 = v28(v22, 1, v14) == 1;
  sub_2189DD39C(v22);
  return v23;
}

uint64_t sub_2196F4D2C(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4AC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AA4();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_2189DD39C(v4);
    v13 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    sub_218E5B244();
    v14 = sub_219BF5334();
    (*(v10 + 8))(v12, v9);
    v13 = v14 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_2196F4F90@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF4AC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v8 + 8))(v10, v7);
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v6, v11);
  }

  a1();
  result = (v13)(v6, 1, v11);
  if (result != 1)
  {
    return sub_2189DD39C(v6);
  }

  return result;
}

uint64_t sub_2196F5174(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 0x676E696D6F637075;
  }

  if (v2)
  {
    v4 = 0xEE007365726F6353;
  }

  else
  {
    v4 = 0xEF7365726F635364;
  }

  if (*a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x676E696D6F637075;
  }

  if (*a2)
  {
    v6 = 0xEF7365726F635364;
  }

  else
  {
    v6 = 0xEE007365726F6353;
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

uint64_t sub_2196F5234()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2196F52D0()
{
  sub_219BF5524();
}

uint64_t sub_2196F5358()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2196F53F0@<X0>(char *a1@<X8>)
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

void sub_2196F5450(uint64_t *a1@<X8>)
{
  v2 = 0x676E696D6F637075;
  if (*v1)
  {
    v2 = 0x6574656C706D6F63;
  }

  v3 = 0xEE007365726F6353;
  if (*v1)
  {
    v3 = 0xEF7365726F635364;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2196F555C()
{
  result = qword_27CC1E428;
  if (!qword_27CC1E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E428);
  }

  return result;
}

unint64_t sub_2196F55F0()
{
  result = qword_27CC1E430;
  if (!qword_27CC1E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E430);
  }

  return result;
}

uint64_t sub_2196F5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDE294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_2187FAD00();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 104))(v9, *MEMORY[0x277D2FF08], v6);
  (*(a3 + 112))(a1, v12, v9, a2, a3);
  (*(v7 + 8))(v9, v6);
  return sub_218817724(v12, &unk_280EE58B0, sub_2187FAD00);
}

uint64_t _s7NewsUI216RestorationEventO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](a1);
  return sub_219BF7AE4();
}

uint64_t sub_2196F58EC()
{
  sub_219BF7AA4();
  sub_2196F5850(v2, *v0);
  return sub_219BF7AE4();
}

uint64_t sub_2196F5934()
{
  sub_21880B928();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9[1] = v9[3];
  v5 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v5);
  sub_219BE7B94();

  v6 = off_282A6CF28;
  type metadata accessor for TodayDataManager();
  v7 = v6(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_2196F5B14@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839B0];
  *(v4 + 16) = xmmword_219C09BA0;
  v6 = MEMORY[0x277D839F0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314();

  *a2 = v3;
  return result;
}

uint64_t sub_2196F5C28()
{
  v1 = sub_219BF0644();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  sub_21880B928();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  v14 = sub_219BE7B04();
  if (v14 >> 62 != 1)
  {
    sub_21880BB00(v14);
    goto LABEL_7;
  }

  v29 = v7;
  v30 = v5;
  v31 = v2;
  sub_219BE6EC4();
  v32 = v33;
  v15 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15);
  sub_219BE7B94();

  v16 = sub_218827310();
  (*(v10 + 8))(v12, v9);
  if ((~v16 & 0xF000000000000007) == 0)
  {
LABEL_7:
    v24 = 0;
    return v24 & 1;
  }

  v17 = *(v0 + *((*v13 & *v0) + 0x78));
  v33 = *__swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v17 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
  v18 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v18(0) == 6)
  {
    v19 = sub_219BF1AE4();
    v21 = v30;
    v20 = v31;
    v22 = v29;
    if (v19)
    {
      v23 = MEMORY[0x277D32EF8];
    }

    else
    {
      v23 = MEMORY[0x277D32EF0];
    }

    (*(v31 + 104))(v29, *v23, v1);
  }

  else
  {
    v20 = v31;
    v22 = v29;
    (*(v31 + 104))(v29, *MEMORY[0x277D32EF0], v1);
    v21 = v30;
  }

  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  sub_219BEE844();
  sub_2187E1408(&unk_280E90EE0, MEMORY[0x277D32F00]);
  v25 = sub_219BF53A4();
  sub_21885AB78(v16);
  v26 = *(v20 + 8);
  v26(v21, v1);
  v26(v22, v1);
  v24 = v25 ^ 1;
  return v24 & 1;
}

uint64_t sub_2196F6054()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = v0;
    sub_21880BB54(0, &qword_280E91C08, MEMORY[0x277D32018]);
    swift_allocObject();
    v2 = sub_219BEE444();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_2196F6108()
{
  v1 = [*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x128)) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 smarterMessagingConfig];
    swift_unknownObjectRelease();
    v3 = [v2 todayFeedMastheadBannerEnabledForSubscribers];

    return v3;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_2196F61C8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v42 = a1;
  v39 = a3;
  v6 = *a2;
  v7 = *MEMORY[0x277D85000];
  sub_21881DBDC(0);
  v41 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8);
  v40 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayExpandContext();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v13 = v12;
  v35 = *(v12 - 8);
  v14 = v35;
  MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  v33 = v7;
  v31[1] = *(a2 + *((v7 & v6) + 0xC8));
  v38 = *(a2 + *((v7 & v6) + 0x68));
  sub_219BE6EC4();
  v44 = v45;
  v17 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  v37 = v18;
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v17);
  sub_219BE7B94();

  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  sub_219BE7AE4();
  v19 = *(v14 + 8);
  v20 = v13;
  v19(v16, v13);
  sub_219BE7B14();
  v43 = a2;
  sub_219BE3204();
  v21 = v34;
  sub_2187F684C(v39, v34, type metadata accessor for TodayExpandContext);
  v22 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v23 = swift_allocObject();
  v25 = v32;
  v24 = v33;
  *(v23 + 16) = *((v33 & v32) + 0x50);
  *(v23 + 24) = *((v24 & v25) + 0x58);
  *(v23 + 32) = a4;
  *(v23 + 40) = a2;
  sub_21880BBE4(v21, v23 + v22, type metadata accessor for TodayExpandContext);
  v26 = a2;
  v27 = sub_219BE2E54();
  sub_219BE2F74();

  sub_219BE6EC4();
  v44 = v45;
  sub_219BE7B94();

  v28 = *(v41 + 56);
  v29 = v40;
  sub_2188482CC(v42, v40);
  (*(v35 + 32))(v29 + v28, v16, v20);
  sub_2187DD4F0(0, &unk_280EE6EA0, sub_21881DBDC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2196F6678(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  v4 = MEMORY[0x277D839B0];
  *(v2 + 32) = v5;
  v6 = MEMORY[0x277D839F0];
  *(v2 + 96) = v4;
  *(v2 + 104) = v6;
  *(v2 + 72) = v1;
  sub_219BF6214();
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for TodayInteractor();
    sub_218844CD0(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2196F684C(void *a1)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B9E0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_219BE7B14();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12;
  v18 = 0;
  v19 = 0xE000000000000000;
  v17[1] = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v13 = v18;
  v14 = v19;
  *(v10 + 96) = MEMORY[0x277D837D0];
  *(v10 + 104) = sub_2186FC3BC();
  *(v10 + 72) = v13;
  *(v10 + 80) = v14;
  sub_219BE5314();

  v15 = off_282A6CF18;
  type metadata accessor for TodayDataManager();
  v15();
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC08700 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_27CC1DDF0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21971571C();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21971571C();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_2196F6C90(void *a1)
{
  v2 = CACurrentMediaTime();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v3 = [objc_opt_self() sharedApplication];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v7[4] = sub_219715F0C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_218793E0C;
  v7[3] = &block_descriptor_159;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 ts:v5 installCACommitCompletionBlock:?];
  _Block_release(v5);
}

uint64_t sub_2196F6E0C()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();

  return sub_2196F6F20();
}

uint64_t sub_2196F6F20()
{
  v22 = *v0;
  v1 = *MEMORY[0x277D85000];
  v2 = sub_219BED174();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED214();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_2187D9028();
  v23 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = v1 & v22;
  v17[2] = *((v1 & v22) + 0x50);
  v17[3] = *(v18 + 88);
  v17[4] = v16;
  aBlock[4] = sub_219715F18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_29_0;
  v19 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187E1408(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_2187DD4F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  v20 = v23;
  MEMORY[0x21CECD420](v14, v7, v4, v19);
  _Block_release(v19);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v7, v26);
  return (v15)(v14, v24);
}

uint64_t sub_2196F733C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v58 = a7;
  v59 = a8;
  v15 = *v8;
  v16 = *MEMORY[0x277D85000];
  v17 = *MEMORY[0x277D85000] & v15;
  v18 = sub_219BE9F74();
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v53 = v19;
  v55 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v9 + *((v16 & v15) + 0x68));
  sub_219BE6EC4();
  LODWORD(v16) = sub_218982990();

  v54 = v16;
  if ((v16 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219714678(0, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v21 = CACurrentMediaTime();
  sub_219BE6084();
  v22 = *(v17 + 88);
  v23 = *(v22 + 40);
  v51 = *(v17 + 80);
  v52 = v22;
  *&v60 = COERCE_DOUBLE(v23());

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v50 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09EC0;
  v61 = 0.0;
  v62 = -2.68156159e154;
  sub_219BF7484();
  v49 = a6;
  v25 = v18;
  v27 = v61;
  v26 = v62;
  v28 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v29 = sub_2186FC3BC();
  *(v24 + 64) = v29;
  *(v24 + 32) = v27;
  *(v24 + 40) = v26;
  v65 = 0;
  v66 = 0xE000000000000000;
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v30 = v65;
  v31 = v66;
  *(v24 + 96) = v28;
  *(v24 + 104) = v29;
  *(v24 + 72) = v30;
  *(v24 + 80) = v31;
  sub_219BF6214();
  sub_219BE5314();

  v61 = *&v60;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v55;
  v33 = v56;
  (*(v56 + 16))(v55, v49, v25);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = (v53 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 39) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v52;
  *(v39 + 16) = v51;
  *(v39 + 24) = v40;
  (*(v33 + 32))(v39 + v35, v34, v25);
  v41 = (v39 + v36);
  *v41 = a1;
  v41[1] = a2;
  v41[2] = a3;
  v41[3] = a4;
  *(v39 + v37) = v21;
  v42 = (v39 + v38);
  v43 = v58;
  v44 = v59;
  *v42 = v58;
  v42[1] = v44;
  v45 = v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v45 = v32;
  *(v45 + 8) = BYTE1(v54) & 1;
  sub_2188202A8(v43);
  v46 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v46);

  sub_219BE6EF4();
}

void sub_2196F789C(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  v37[0] = a11;
  v37[1] = a12;
  v38 = a10;
  v39 = a9;
  v40 = a8;
  v42 = a1;
  v43 = a7;
  v16 = sub_219BE85F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v44 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v41 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C0EE20;
  v45 = 0.0;
  v46 = -2.68156159e154;
  sub_219BE9F74();
  sub_219BF7484();
  v21 = v45;
  v20 = v46;
  v22 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v23 = sub_2186FC3BC();
  *(v19 + 64) = v23;
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  v49 = 0;
  v50 = 0xE000000000000000;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v24 = v49;
  v25 = v50;
  *(v19 + 96) = v22;
  *(v19 + 104) = v23;
  *(v19 + 72) = v24;
  *(v19 + 80) = v25;
  v45 = 0.0;
  v46 = -2.68156159e154;
  v26 = v42;
  sub_219BF7484();
  v27 = v45;
  v28 = v46;
  *(v19 + 136) = v22;
  *(v19 + 144) = v23;
  *(v19 + 112) = v27;
  *(v19 + 120) = v28;
  sub_219BF5CD4();
  v29 = MEMORY[0x277D83A80];
  *(v19 + 176) = MEMORY[0x277D839F8];
  *(v19 + 184) = v29;
  *(v19 + 152) = v30;
  sub_219BF6214();
  sub_219BE5314();

  if (v43)
  {
    v43(v31);
  }

  v32 = v44;
  (*(v17 + 16))(v44, v26, v16);
  v33 = (*(v17 + 88))(v32, v16);
  if (v33 != *MEMORY[0x277D6DF98] && (v33 == *MEMORY[0x277D6DF90] || v33 == *MEMORY[0x277D6DFA0]))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (v38)
      {
        v35 = Strong;
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for TodayInteractor();
          v36 = v35;
          sub_218844CD0(0);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    (*(v17 + 8))(v32, v16);
  }
}

uint64_t sub_2196F7C9C(void *a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v115 = a1;
  ObjectType = swift_getObjectType();
  v113 = *MEMORY[0x277D85000] & *v3;
  v114 = v3;
  v5 = type metadata accessor for TodayExpandContext();
  v102 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = v6;
  v110 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  v8 = v7;
  v106 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v101 = v9;
  v111 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TodayExpandRequest();
  MEMORY[0x28223BE20](v100);
  v112 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_219BE5354();
  v97 = *(v98 - 1);
  v11 = MEMORY[0x28223BE20](v98);
  v96 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v86 - v13;
  v14 = sub_219BE5384();
  v107 = *(v14 - 8);
  v108 = v14;
  v15 = *(v107 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v105 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v86 - v17;
  v19 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for TodayGapLocation(0);
  v99 = *(v22 - 8);
  v23 = *(v99 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21880BA68(v21, type metadata accessor for TodayModel);
    v27 = v115[3];
    v28 = v115[4];
    __swift_project_boxed_opaque_existential_1(v115, v27);
    MEMORY[0x21CEC0B20](0, v27, v28);
    type metadata accessor for TodayInteractor.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = 2;
    sub_2187DD4F0(0, &qword_280EE6EC8, type metadata accessor for TodayExpandResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }

  else
  {
    v31 = v95;
    v91 = v23;
    v92 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v89 = v15;
    v93 = v18;
    v94 = a2;
    v32 = v115;
    v33 = v21[1];
    v88 = *v21;
    v87 = v33;
    sub_2186EA920();
    sub_21880BBE4(v21 + *(v34 + 48), v26, type metadata accessor for TodayGapLocation);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v35 = qword_280F616D8;
    sub_219BE5364();
    sub_219BE5374();
    v36 = v31;
    sub_219BE5334();
    v37 = sub_219BE5374();
    v38 = sub_219BF67E4();
    v39 = sub_219BF6F34();
    v40 = v8;
    v41 = v104;
    if (v39)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_219BE5344();
      _os_signpost_emit_with_name_impl(&dword_2186C1000, v37, v38, v43, "News.TodayFeed.Interactor.Expand", "", v42, 2u);
      MEMORY[0x21CECF960](v42, -1, -1);
    }

    v44 = v97;
    v45 = v98;
    (*(v97 + 2))(v96, v36, v98);
    sub_219BE53C4();
    swift_allocObject();
    v96 = sub_219BE53B4();
    (*(v44 + 1))(v36, v45);
    v46 = v100;
    v47 = v112;
    v48 = v112 + *(v100 + 20);
    v98 = type metadata accessor for TodayGapLocation;
    sub_2187F684C(v26, v48, type metadata accessor for TodayGapLocation);
    v49 = *(v46 + 24);
    v90 = v26;
    v50 = sub_2187F684C(v41, v47 + v49, type metadata accessor for TodayExpandContext);
    v51 = v87;
    *v47 = v88;
    v47[1] = v51;
    MEMORY[0x28223BE20](v50);
    *(&v86 - 2) = v114;
    *(&v86 - 1) = v52;
    v88 = type metadata accessor for TodayExpandResult();
    v87 = sub_219BE3204();
    v95 = sub_2187D9028();
    v53 = sub_219BF66A4();
    v54 = v106;
    v55 = *(v106 + 2);
    v97 = v106 + 16;
    v100 = v55;
    v56 = v111;
    v55(v111, v94, v40);
    sub_2187F684C(v26, v92, type metadata accessor for TodayGapLocation);
    sub_218718690(v32, &v116);
    sub_2187F684C(v41, v110, type metadata accessor for TodayExpandContext);
    v57 = *(v54 + 80);
    v58 = (v57 + 32) & ~v57;
    v86 = v40;
    v59 = *(v99 + 80);
    v104 = v101 + v59;
    v60 = (v101 + v59 + v58) & ~v59;
    v101 = v57 | v59 | 7;
    v61 = (v91 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (*(v102 + 80) + v61 + 40) & ~*(v102 + 80);
    v63 = swift_allocObject();
    v64 = v113;
    v65 = *(v113 + 80);
    *(v63 + 16) = v65;
    v102 = *(v64 + 88);
    v103 = v65;
    *(v63 + 24) = v102;
    v113 = *(v54 + 4);
    v66 = v56;
    v67 = v86;
    (v113)(v63 + v58, v66, v86);
    v106 = type metadata accessor for TodayGapLocation;
    v68 = v63 + v60;
    v69 = v92;
    sub_21880BBE4(v92, v68, type metadata accessor for TodayGapLocation);
    sub_2186CB1F0(&v116, v63 + v61);
    sub_21880BBE4(v110, v63 + v62, type metadata accessor for TodayExpandContext);
    v110 = sub_219BE2F84();

    v70 = sub_219BF66A4();
    sub_218718690(v115, &v116);
    v71 = v111;
    (v100)(v111, v94, v67);
    sub_2187F684C(v90, v69, v98);
    v72 = (v57 + 72) & ~v57;
    v73 = (v104 + v72) & ~v59;
    v74 = v67;
    v75 = swift_allocObject();
    v76 = v102;
    *(v75 + 16) = v103;
    *(v75 + 24) = v76;
    sub_2186CB1F0(&v116, v75 + 32);
    (v113)(v75 + v72, v71, v74);
    sub_21880BBE4(v69, v75 + v73, v106);
    sub_219BE2FE4();

    v78 = v107;
    v77 = v108;
    v79 = v105;
    v80 = v93;
    (*(v107 + 16))(v105, v93, v108);
    v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v82 = (v89 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    (*(v78 + 32))(v83 + v81, v79, v77);
    *(v83 + v82) = v96;

    v84 = sub_219BE2E54();
    v85 = sub_219BE3024();

    (*(v78 + 8))(v80, v77);
    sub_21880BA68(v90, type metadata accessor for TodayGapLocation);
    sub_21880BA68(v112, type metadata accessor for TodayExpandRequest);
    return v85;
  }
}

uint64_t sub_2196F88B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v75 = a5;
  v61 = a3;
  v62 = a4;
  v7 = *MEMORY[0x277D85000] & *a2;
  v68 = a2;
  v69 = v7;
  v8 = type metadata accessor for TodayExpandContext();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = v9;
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TodayExpandResult();
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v10;
  v72 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TodayFailedData(0);
  MEMORY[0x28223BE20](v59);
  v60 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21880B9E0();
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219716C10();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF0644();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v22 = *(a1 + 16);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();

  sub_219BEF3D4();
  sub_219BEE844();

  v23 = *(v15 + 56);
  *v17 = v22;
  (*(v19 + 32))(&v17[v23], v21, v18);
  if (v22 >> 61 == 4 && (*(v19 + 88))(&v17[v23], v18) == *MEMORY[0x277D32EF0])
  {
    v24 = off_282A6CF18;
    type metadata accessor for TodayDataManager();
    v25 = v63;
    v24();
    v26 = sub_219BF1584();
    v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
    sub_21880BA68(v25, sub_21880B9E0);
    if (v27 != 1)
    {
      sub_218853400();
      v46 = sub_219BE5F84();
      v48 = v47;
      v49 = v60;
      sub_2187F684C(v62, v60 + *(v59 + 20), type metadata accessor for TodayGapLocation);
      *v49 = v46;
      v49[1] = v48;
      v50 = (*(*(v69 + 88) + 64))(v49, *(v69 + 80));
      sub_21880BA68(v49, type metadata accessor for TodayFailedData);
      *&v76[0] = v50;
      v51 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v51);
      sub_219BE6E84();
      v52 = v72;
      sub_21952B7BC(v73, v72);
      v53 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v54 = swift_allocObject();
      sub_21880BBE4(v52, v54 + v53, type metadata accessor for TodayExpandResult);
      v55 = sub_219BE2E54();
      sub_219BE2F74();

      sub_218718690(v75, v76);
      v56 = swift_allocObject();
      sub_2186CB1F0(v76, v56 + 16);
      v57 = sub_219BE2E54();
      v44 = sub_219BE3024();

      return v44;
    }
  }

  else
  {
    sub_21880BA68(v17, sub_219716C10);
  }

  v29 = *(v69 + 80);
  v28 = *(v69 + 88);
  v30 = v73;
  v69 = (*(v28 + 24))(v73, v29, v28);
  *&v76[0] = v69;
  v31 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v31);
  sub_219BE6E84();
  v32 = v75;
  sub_218718690(v75, v76);
  v33 = v30;
  v34 = v72;
  sub_21952B7BC(v33, v72);
  v35 = (*(v70 + 80) + 56) & ~*(v70 + 80);
  v36 = swift_allocObject();
  sub_2186CB1F0(v76, v36 + 16);
  sub_21880BBE4(v34, v36 + v35, type metadata accessor for TodayExpandResult);
  v37 = sub_219BE2E54();
  sub_219BE2F74();

  sub_218718690(v32, v76);
  v38 = swift_allocObject();
  sub_2186CB1F0(v76, v38 + 16);
  v39 = sub_219BE2E54();
  sub_219BE2FD4();

  v40 = v66;
  sub_2187F684C(v67, v66, type metadata accessor for TodayExpandContext);
  v41 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v29;
  *(v42 + 24) = v28;
  sub_21880BBE4(v40, v42 + v41, type metadata accessor for TodayExpandContext);
  v43 = sub_219BE2E54();
  type metadata accessor for TodayInteractor();
  v44 = sub_219BE3034();

  return v44;
}

uint64_t sub_2196F9270@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x21CEC0B20](1, v5, v6);
  return sub_21952B7BC(a2, a3);
}

uint64_t sub_2196F92DC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for TodayInteractor();
    sub_218844CD0(0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2196F9398(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85000] & *a2;
  v8 = type metadata accessor for TodayFailedData(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    return MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    sub_218853400();
    v14 = sub_219BE5F84();
    v16 = v15;
    sub_2187F684C(a5, v10 + *(v8 + 20), type metadata accessor for TodayGapLocation);
    *v10 = v14;
    v10[1] = v16;
    v17 = (*(*(v7 + 88) + 64))(v10, *(v7 + 80));
    sub_21880BA68(v10, type metadata accessor for TodayFailedData);
    v21 = v17;
    sub_218718690(a3, v20);
    v18 = swift_allocObject();
    sub_2186CB1F0(v20, v18 + 16);
    v19 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v19);
    sub_219BE6EF4();
  }
}

uint64_t sub_2196F9624()
{
  v0 = sub_219BE5394();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE5374();
  sub_219BE53A4();
  v9 = sub_219BF67D4();
  if (sub_219BF6F34())
  {

    sub_219BE53D4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_219BE5344();
    _os_signpost_emit_with_name_impl(&dword_2186C1000, v8, v9, v12, "News.TodayFeed.Interactor.Expand", v10, v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196F986C(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85000] & *v2;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BE1D74();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_219BF6214();
  sub_219BE5314();

  v14 = (*(*(v5 + 88) + 32))(a2, *(v5 + 80));
  sub_218718690(a1, v13);
  v10 = swift_allocObject();
  sub_2186CB1F0(v13, v10 + 16);
  v11 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v11);
  sub_219BE6EF4();
}

uint64_t sub_2196F9B14(uint64_t a1, void *a2)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_219BE1D74();
  v6 = v5;
  v7 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_219BE85F4();
  sub_219BF7484();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_219BE9DA4();
}

unint64_t sub_2196F9CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  v75 = a2;
  ObjectType = swift_getObjectType();
  v67 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_219BEE644();
  v71 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - v8;
  v73 = sub_219BED214();
  v68 = *(v73 - 8);
  v10 = v68[8];
  v11 = MEMORY[0x28223BE20](v73);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v65 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v72 = &v57 - v14;
  sub_21880B928();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219BE7B04();
  if (result >> 62)
  {
    if (result >> 62 == 1)
    {
      v63 = ObjectType;
      v64 = v5;
      sub_219BE6EC4();
      v76 = v77;
      v21 = MEMORY[0x277D6D8B8];
      sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
      sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v21);
      sub_219BE7B94();

      v22 = sub_218827310();
      (*(v17 + 8))(v19, v16);
      if ((~v22 & 0xF000000000000007) != 0)
      {
        v27 = CACurrentMediaTime();
        v28 = v65;
        sub_219BED1F4();
        v29 = v71;
        v30 = v64;
        v61 = *(v71 + 16);
        v62 = v71 + 16;
        v61(v9, v75, v64);
        v31 = (*(v29 + 88))(v9, v30);
        if (v31 == *MEMORY[0x277D320A8])
        {
          sub_219BDC8D4();
          sub_219BDC8B4();
          v32 = v68;
          if (qword_280EE9428 != -1)
          {
            swift_once();
          }

          sub_219BDC8A4();
        }

        else
        {
          v32 = v68;
          if (v31 != *MEMORY[0x277D320A0])
          {
            (*(v71 + 8))(v9, v30, 0.0);
          }
        }

        v33 = v72;
        v34 = v73;
        v35 = v74;
        sub_219BED244();
        v36 = v32[1];
        v74 = v32 + 1;
        v68 = v36;
        (v36)(v28, v34);
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        v37 = sub_219BE5314();
        MEMORY[0x28223BE20](v37);
        *(&v57 - 4) = v22;
        *(&v57 - 3) = v3;
        v38 = v75;
        *(&v57 - 2) = v35;
        *(&v57 - 1) = v38;
        v58 = type metadata accessor for TodayPrewarmResult();
        v57 = sub_219BE3204();
        v65 = v22;
        v60 = v32[2];
        v39 = v66;
        v60(v66, v33, v34);
        v40 = v32;
        v41 = (*(v32 + 80) + 16) & ~*(v32 + 80);
        v42 = swift_allocObject();
        v59 = v40[4];
        v59(v42 + v41, v39, v34);
        v43 = sub_219BE2E54();
        v58 = sub_219BE2F64();

        v44 = v73;
        v60(v39, v72, v73);
        v45 = swift_allocObject();
        v59(v45 + v41, v39, v44);
        v46 = sub_219BE2E54();
        v66 = sub_219BE3054();

        sub_2187D9028();
        v47 = sub_219BF66A4();
        v48 = v69;
        v49 = v64;
        v61(v69, v75, v64);
        v50 = v71;
        v51 = (*(v71 + 80) + 40) & ~*(v71 + 80);
        v52 = swift_allocObject();
        v53 = v67;
        v60 = *(v67 + 80);
        *(v52 + 2) = v60;
        v67 = *(v53 + 88);
        *(v52 + 3) = v67;
        v52[4] = v27;
        v71 = *(v50 + 32);
        (v71)(v52 + v51, v48, v49);
        v59 = sub_219BE2F94();

        v61(v48, v75, v49);
        v54 = swift_allocObject();
        v55 = v67;
        *(v54 + 2) = v60;
        *(v54 + 3) = v55;
        v54[4] = v27;
        (v71)(v54 + v51, v48, v49);
        v56 = sub_219BE2E54();
        sub_219BE2FE4();
        sub_21885AB78(v65);

        return (v68)(v72, v73);
      }

      else
      {
        result = swift_unknownObjectWeakLoadStrong();
        v23 = v64;
        if (result)
        {
          v24 = result;
          v25 = v71;
          v26 = v69;
          (*(v71 + 104))(v69, *MEMORY[0x277D320A8], v64);
          sub_219BEE634();
          (*(v25 + 8))(v26, v23);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_219715940(v24, 0);
            swift_unknownObjectRelease();
          }

          return swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    sub_21880BB00(result);
    sub_21881DCEC(v74);
  }

  return result;
}

uint64_t sub_2196FA684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a3;
  v12 = *MEMORY[0x277D85000] & *a2;
  v4 = sub_219BF0644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  sub_219BEE774();
  sub_219BEE844();

  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D32EF0])
  {
    v9 = sub_219BEE774();
    v7 = sub_21939CADC(v9, v13, v14);

    return v7;
  }

  if (v8 == *MEMORY[0x277D32EF8])
  {
    type metadata accessor for TodayInteractor.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    return v7;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_2196FA8D4()
{
  sub_2187D9028();
  v0 = sub_219BF66A4();
  type metadata accessor for TodayPrewarmResult();
  v1 = sub_219BE2E04();

  return v1;
}

uint64_t sub_2196FA944(void *a1)
{
  sub_2187D9028();
  v2 = sub_219BF66A4();
  sub_219BE2E04();

  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  v4 = sub_219BE2E54();
  type metadata accessor for TodayPrewarmResult();
  v5 = sub_219BE2F64();

  return v5;
}

uint64_t sub_2196FAA2C(uint64_t a1, void *a2)
{
  v26 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEE644();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  sub_2188482CC(a1, &v25 - v11);
  v13 = type metadata accessor for TodayPrewarmResult();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = MEMORY[0x277D85000];
  v15 = *((*MEMORY[0x277D85000] & *a2) + 0xB0);
  swift_beginAccess();
  sub_219716240(v12, a2 + v15);
  swift_endAccess();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v17 = MEMORY[0x277D83A80];
  *(v16 + 56) = MEMORY[0x277D839F8];
  *(v16 + 64) = v17;
  *(v16 + 32) = v18;
  sub_219BF6214();
  sub_219BE5314();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*(v7 + 104))(v9, *MEMORY[0x277D320A8], v6);
    sub_219BEE634();
    (*(v7 + 8))(v9, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219715940(v20, 1);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v21 = (a2 + *((*v14 & *a2) + 0xF0));
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v22 = *MEMORY[0x277D2F310];
  v23 = sub_219BE14C4();
  (*(*(v23 - 8) + 104))(v5, v22, v23);
  swift_storeEnumTagMultiPayload();
  sub_21880C6BC(v5);
  return sub_21880BA68(v5, type metadata accessor for EngagementEvent);
}

uint64_t sub_2196FAE8C(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEE644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v12 = MEMORY[0x277D83A80];
  *(v11 + 56) = MEMORY[0x277D839F8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v13;
  v26 = 0;
  v27 = 0xE000000000000000;
  v25 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v15 = v26;
  v14 = v27;
  *(v11 + 96) = MEMORY[0x277D837D0];
  *(v11 + 104) = sub_2186FC3BC();
  *(v11 + 72) = v15;
  *(v11 + 80) = v14;
  sub_219BE5314();

  v16 = MEMORY[0x277D85000];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*(v8 + 104))(v10, *MEMORY[0x277D320A8], v7);
    sub_219BEE634();
    (*(v8 + 8))(v10, v7);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219715940(v18, 0);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v19 = (a2 + *((*v16 & *a2) + 0xF0));
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v20 = *MEMORY[0x277D2F310];
  v21 = sub_219BE14C4();
  (*(*(v21 - 8) + 104))(v6, v20, v21);
  swift_storeEnumTagMultiPayload();
  sub_21880C6BC(v6);
  return sub_21880BA68(v6, type metadata accessor for EngagementEvent);
}

uint64_t sub_2196FB248(uint64_t a1)
{
  v23[1] = a1;
  v1 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219717384(0, &qword_280E91290, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32858]);
  v5 = v4;
  v23[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  sub_21880B928();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v23[2] = v24;
  v13 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v13);
  sub_219BE7B94();

  v14 = sub_218827310();
  (*(v10 + 8))(v12, v9);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    return 1;
  }

  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  sub_219BEE834();
  sub_219BEE374();

  v15 = sub_219BEFA14();
  (*(v23[0] + 8))(v7, v5);
  sub_219BEF3C4();
  v16 = *(v3 + 3);

  sub_21880BA68(v3, type metadata accessor for TodayFeedServiceContext);
  if (*(v16 + 16) <= *(v15 + 16) >> 3)
  {
    v24 = v15;
    sub_218EB3B08(v16);

    v17 = v24;
    if (*(v24 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v17 = sub_218EB4048(v16, v15);

  if (!*(v17 + 16))
  {
LABEL_8:

    sub_21885AB78(v14);
    return 1;
  }

LABEL_4:
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  v19 = *(v17 + 16);
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v20;
  *(v18 + 32) = v19;
  sub_2186E2394();
  *(v18 + 96) = v21;
  *(v18 + 104) = sub_2187E1408(&unk_280E8E9A0, sub_2186E2394);
  *(v18 + 72) = v17;
  sub_219BF6214();
  sub_219BE5314();
  sub_21885AB78(v14);

  return 0;
}

uint64_t sub_2196FB7E8()
{
  sub_21880B928();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0);
  v15 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE6EC4();
  v16 = v17;
  v10 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v10);
  sub_219BE7B94();

  v11 = sub_218827310();
  v12 = *(v2 + 8);
  v12(v6, v1);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2187DF448();
    sub_219BEE7D4();
    sub_21885AB78(v11);
    sub_219BEE2F4();
  }

  sub_219BE6EC4();
  v16 = v17;
  v13 = v15;
  sub_219BE7B94();

  sub_2193A0D7C(v13);
  return (v12)(v13, v1);
}

uint64_t sub_2196FBB64()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

void sub_2196FBD34(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  ObjectType = swift_getObjectType();
  v39 = *MEMORY[0x277D85000] & *v1;
  v3 = type metadata accessor for TodayExpandContext();
  v36[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v36[1] = v4;
  v37 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v36 - v6;
  sub_21880B928();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F62520);
  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2186C1000, v14, v15, "Today interactor will force reload", v16, 2u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  sub_219BE6EC4();
  v42 = v41;
  v17 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v17);
  sub_219BE7B94();

  v18 = sub_218827310();
  (*(v10 + 8))(v12, v9);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v22 = MEMORY[0x277D85000];
    sub_219BDEC34();
    sub_219BDEB94();
    v23 = type metadata accessor for TodayPrewarmResult();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = *((*v22 & *v2) + 0xB0);
    swift_beginAccess();
    sub_219716240(v7, v2 + v24);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        sub_219714678(0, v26);
        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectRelease();
    }

    MEMORY[0x28223BE20](Strong);
    v36[-4] = v2;
    v36[-3] = v18;
    v27 = v38;
    v36[-2] = v38;
    sub_219BE3204();
    sub_2187D9028();
    v28 = sub_219BF66A4();
    sub_219BE95D4();
    sub_219BE2F84();

    *(swift_allocObject() + 16) = v2;
    v29 = v2;
    v30 = sub_219BE2E54();
    sub_219BE2F94();

    v31 = v37;
    sub_2187F684C(v27, v37, type metadata accessor for TodayExpandContext);
    v32 = (*(v36[0] + 80) + 32) & ~*(v36[0] + 80);
    v33 = swift_allocObject();
    v34 = v39;
    *(v33 + 16) = *(v39 + 80);
    *(v33 + 24) = *(v34 + 88);
    sub_21880BBE4(v31, v33 + v32, type metadata accessor for TodayExpandContext);
    v35 = sub_219BE2E54();
    sub_219BE3034();

    sub_21885AB78(v18);
  }

  else
  {
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2186C1000, v19, v20, "No cursor to force-reload", v21, 2u);
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }
}

uint64_t sub_2196FC44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  v4 = sub_219BEE774();
  v5 = sub_21939FF08(v4, a3);

  return v5;
}

uint64_t sub_2196FC4EC(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85000] & *a2;
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62520);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "Today interactor did force reload", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  (*(*(v3 + 88) + 16))(a1, *(v3 + 80));
  v8 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v8);
  v9 = sub_219BE6E84();

  return v9;
}

uint64_t sub_2196FC700(uint64_t a1)
{
  v2 = sub_219BE95D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D6E6A0])
  {
    if (result == *MEMORY[0x277D6E6A8])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = result;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = off_282A86C30;
          type metadata accessor for TodayViewController();
          v8(v7, &off_282A97CA0, 0);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_2196FC8C8(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62520);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "Today interactor did run refresh modifier after force reload", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v10 = (a1 + *((*v2 & *a1) + 0xF0));
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v11 = *MEMORY[0x277D2F310];
  v12 = sub_219BE14C4();
  (*(*(v12 - 8) + 104))(v5, v11, v12);
  swift_storeEnumTagMultiPayload();
  sub_21880C6BC(v5);
  sub_21880BA68(v5, type metadata accessor for EngagementEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TodayInteractor();
    sub_218844CD0(0);
    swift_unknownObjectRelease();
  }

  sub_219BDEC84();
  return sub_219BDEBE4();
}

uint64_t sub_2196FCB88(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v26 = *MEMORY[0x277D85000] & *v2;
  v5 = type metadata accessor for TodayExpandContext();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = v6;
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD34B0();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_219BE6EE4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      sub_219714678(1, v12);
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectRelease();
  }

  MEMORY[0x28223BE20](Strong);
  *(&v25 - 4) = v2;
  *(&v25 - 3) = a1;
  *(&v25 - 2) = a2;
  type metadata accessor for TodayExpandResult();
  sub_219BE3204();
  v13 = sub_219BE1C44();
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = *(v9 + 80);
  v25 = a2;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  v17 = v26;
  v18 = *(v26 + 80);
  *(v16 + 16) = v18;
  v19 = *(v17 + 88);
  *(v16 + 24) = v19;
  (*(v9 + 32))(v16 + v15, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_219BE95D4();
  sub_219BE2F84();

  v20 = sub_219BE1C44();
  v21 = v29;
  sub_2187F684C(v25, v29, type metadata accessor for TodayExpandContext);
  v22 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v19;
  sub_21880BBE4(v21, v23 + v22, type metadata accessor for TodayExpandContext);
  sub_219BE3034();
}

uint64_t sub_2196FCF68(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v24 = a2;
  v5 = type metadata accessor for TodayExpandContext();
  v30 = *(v5 - 8);
  v29 = *(v30 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD34B0();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x78));
  *(v12 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_blockNextAutoRefresh) = 1;
  v23[1] = *(v12 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_accessQueue);
  v23[3] = v12;
  v13 = *(v9 + 16);
  v13(v11, a2, v8);
  v14 = *(v9 + 80);
  v15 = (v14 + 16) & ~v14;
  v25 = v15 + v10;
  v27 = v14 | 7;
  v16 = swift_allocObject();
  v26 = *(v9 + 32);
  v26(v16 + v15, v11, v8);
  sub_219717384(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  v23[2] = type metadata accessor for TodayDataManager();
  sub_219BE31F4();

  sub_2187D9028();
  v17 = sub_219BF66A4();
  v13(v11, v24, v8);
  v18 = v28;
  sub_2187F684C(v31, v28, type metadata accessor for TodayExpandContext);
  v19 = (v25 + *(v30 + 80)) & ~*(v30 + 80);
  v20 = swift_allocObject();
  v26(v20 + v15, v11, v8);
  sub_21880BBE4(v18, v20 + v19, type metadata accessor for TodayExpandContext);
  type metadata accessor for TodayExpandResult();
  v21 = sub_219BE2F84();

  return v21;
}

uint64_t sub_2196FD310(uint64_t a1, void *a2, uint64_t a3)
{
  (*(*((*MEMORY[0x277D85000] & *a2) + 0x58) + 120))(a3, a1, *((*MEMORY[0x277D85000] & *a2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v3);
  v4 = sub_219BE6E84();

  return v4;
}

id sub_2196FD460()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v17 = v1;
      v18 = v5;
      v11 = OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController;
      sub_219BE86E4();
      result = [*(v10 + v11) view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v12 = result;
      swift_getObjectType();
      v13 = sub_219BE9E14();

      swift_unknownObjectRelease();
      if (v13)
      {
        *(v10 + OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent) = 0;
        sub_219BE8644();
        (*(v18 + 104))(v7, *MEMORY[0x277D6EC88], v4);
        v14 = v17;
        (*(v17 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        *(v16 + 24) = v15;

        sub_219BE6BE4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v14 + 8))(v3, v0);
        (*(v18 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2196FD7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v431 = a3;
  v412 = a2;
  v446 = a4;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v345 = &v326 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v405 = &v326 - v9;
  v397 = sub_219BEDAE4();
  v396 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v395 = &v326 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90E30, MEMORY[0x277D31D50], sub_2197160E4, sub_219716118);
  v394 = v11;
  v391 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v390 = &v326 - v12;
  v404 = sub_219BDEA14();
  v403 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  v402 = &v326 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = sub_219BF0B74();
  v392 = *(v393 - 8);
  v14 = MEMORY[0x28223BE20](v393);
  v389 = &v326 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v387 = &v326 - v16;
  v401 = sub_219BDEB14();
  v400 = *(v401 - 8);
  MEMORY[0x28223BE20](v401);
  v399 = &v326 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v5);
  MEMORY[0x28223BE20](v18 - 8);
  v386 = &v326 - v19;
  v384 = sub_219BDDED4();
  v383 = *(v384 - 8);
  MEMORY[0x28223BE20](v384);
  v385 = (&v326 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v420 = sub_219BDDBF4();
  v398 = *(v420 - 8);
  v21 = MEMORY[0x28223BE20](v420);
  v388 = &v326 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v434 = &v326 - v23;
  sub_21971614C(0, &qword_280E90D80, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v419 = v24;
  v418 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v417 = &v326 - v25;
  v382 = sub_219BEDB94();
  v381 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v379 = &v326 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90E20, MEMORY[0x277D31DE8], sub_218CF5F8C, sub_218CF5FC4);
  v378 = v27;
  v377 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v373 = &v326 - v28;
  v372 = sub_219BF0AC4();
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v370 = &v326 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v376);
  v374 = &v326 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90DA0, MEMORY[0x277D32FB8], sub_218CF6140, sub_218CF6178);
  v369 = v31;
  v368 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v367 = &v326 - v32;
  v366 = sub_219BF04A4();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v364 = &v326 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90DF0, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v363 = v34;
  v362 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v361 = &v326 - v35;
  sub_2187DD4F0(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v5);
  MEMORY[0x28223BE20](v36 - 8);
  v329 = &v326 - v37;
  v328 = sub_219BDDDA4();
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v326 = &v326 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_219BDE4D4();
  v444 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v340 = &v326 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = sub_219BF07A4();
  v359 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v358 = &v326 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971614C(0, &qword_280E90DC0, MEMORY[0x277D32F68], sub_218CF61B0, sub_218CF61E8);
  v416 = v41;
  v415 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v414 = &v326 - v42;
  sub_2187DD4F0(0, &unk_280E90A30, MEMORY[0x277D33058], v5);
  MEMORY[0x28223BE20](v43 - 8);
  v339 = &v326 - v44;
  sub_2187DD4F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v45 - 8);
  v344 = &v326 - v46;
  v347 = sub_219BDB954();
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v338 = &v326 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E90180, MEMORY[0x277D33E20], v5);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v343 = &v326 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v411 = &v326 - v51;
  v357 = sub_219BF1094();
  v356 = *(v357 - 8);
  v52 = MEMORY[0x28223BE20](v357);
  v337 = &v326 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v342 = &v326 - v55;
  MEMORY[0x28223BE20](v54);
  v352 = &v326 - v56;
  sub_21971614C(0, &qword_280E90D20, MEMORY[0x277D330F8], sub_218CF606C, sub_218CF60A4);
  v380 = v57;
  v410 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v375 = &v326 - v58;
  v351 = sub_219BEC504();
  v350 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v349 = &v326 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v355 = v60;
  v354 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v353 = &v326 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = sub_219BDE744();
  v429 = *(v430 - 8);
  MEMORY[0x28223BE20](v430);
  v428 = &v326 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BF0634();
  v440 = *(v63 - 8);
  v441 = v63;
  MEMORY[0x28223BE20](v63);
  v437 = &v326 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], v5);
  MEMORY[0x28223BE20](v65 - 8);
  v424 = &v326 - v66;
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v5);
  MEMORY[0x28223BE20](v67 - 8);
  v432 = &v326 - v68;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v5);
  MEMORY[0x28223BE20](v69 - 8);
  v435 = &v326 - v70;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v5);
  v72 = MEMORY[0x28223BE20](v71 - 8);
  v341 = &v326 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v406 = &v326 - v75;
  MEMORY[0x28223BE20](v74);
  v436 = &v326 - v76;
  sub_218853400();
  v78 = v77;
  v421 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v423 = &v326 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = sub_219BDE7A4();
  v426 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v425 = &v326 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_219BF0534();
  v335 = *(v336 - 8);
  v81 = MEMORY[0x28223BE20](v336);
  v334 = &v326 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v333 = &v326 - v83;
  v332 = sub_219BF0EE4();
  v331 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v330 = &v326 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_219BF0F34();
  v409 = *(v408 - 8);
  v85 = MEMORY[0x28223BE20](v408);
  v348 = &v326 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v407 = &v326 - v87;
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v5);
  MEMORY[0x28223BE20](v88 - 8);
  v90 = &v326 - v89;
  sub_2186EAB88();
  v413 = v91;
  v433 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v93 = &v326 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TodayModel(0);
  v95 = MEMORY[0x28223BE20](v94);
  v97 = &v326 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v99 = &v326 - v98;
  v447 = sub_219BF0614();
  v449 = *(v447 - 8);
  v100 = MEMORY[0x28223BE20](v447);
  v102 = (&v326 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v100);
  v104 = (&v326 - v103);
  sub_219BE5FC4();
  v448 = v104;
  sub_21887B94C(v104);
  sub_21880BA68(v99, type metadata accessor for TodayModel);
  v438 = a1;
  v439 = v78;
  sub_219BE5FC4();
  v422 = v94;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v449 + 8))(v448, v447);
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      v178 = *(v177 + 48);
      v179 = sub_219BF1584();
      (*(*(v179 - 8) + 8))(&v97[v178], v179);
      v105 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      v125 = v93;
      v126 = v413;
      (*(v433 + 32))(v93, v97, v413);
      sub_218812314(v412, v90, &unk_280EE58B0, sub_2187FAD00);
      sub_2187FAD00();
      v128 = v127;
      v129 = *(v127 - 8);
      if ((*(v129 + 48))(v90, 1, v127) == 1)
      {
        sub_218817724(v90, &unk_280EE58B0, sub_2187FAD00);
LABEL_39:
        v232 = v408;
LABEL_40:
        (*(v421 + 16))(v423, v438, v439);
        v244 = v407;
        sub_219BF07D4();
        v439 = sub_219BF0F14();
        v245 = *(v409 + 8);
        v245(v244, v232);
        v246 = v125;
        v247 = sub_219BF04D4();
        v249 = v248;
        v250 = v348;
        sub_219BF07D4();
        v251 = sub_219BF0F14();
        v245(v250, v232);
        v252 = [v251 identifier];
        swift_unknownObjectRelease();
        v253 = sub_219BF5414();
        v255 = v254;

        sub_2197019FC(v247, v249, v253, v255, 0, 0, v435);

        v257 = v440;
        v256 = v441;
        (*(v440 + 56))(v432, 1, 1, v441);
        v258 = v436;
        sub_219BDE4B4();
        (*(v444 + 56))(v258, 0, 1, v442);
        sub_219701EE8(v412, v424);
        (*(v257 + 104))(v437, *MEMORY[0x277D32E98], v256);
        sub_21880BAC8();
        v259 = v425;
        sub_219BDE794();
        v260 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x88));
        __swift_project_boxed_opaque_existential_1(v260, v260[3]);
        swift_getWitnessTable();
        v261 = v428;
        sub_219BDED04();
        sub_219BDE734();
        sub_219BDEC64();

        v262 = v446;
        sub_219BDE724();
        (*(v429 + 8))(v261, v430);
        (*(v426 + 8))(v259, v427);
        (*(v433 + 8))(v246, v126);
        (*(v449 + 8))(v448, v447);
        v153 = type metadata accessor for TodayRouteModel();
        swift_storeEnumTagMultiPayload();
        v225 = *(*(v153 - 8) + 56);
        v226 = v262;
        return v225(v226, 0, 1, v153);
      }

      sub_219BE6934();
      v227 = v450;
      (*(v129 + 8))(v90, v128);
      if (((v227 >> 58) & 0x3C | (v227 >> 1) & 3) != 1)
      {

        goto LABEL_39;
      }

      v228 = type metadata accessor for CuratedTodayFeedGroup();
      v229 = (swift_projectBox() + *(v228 + 20));
      v231 = *v229;
      v230 = v229[1];

      if (v231 == 0x6F69647561 && v230 == 0xE500000000000000)
      {

        v232 = v408;
      }

      else
      {
        v283 = sub_219BF78F4();

        v232 = v408;
        if ((v283 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v284 = v407;
      sub_219BF07D4();
      v285 = v330;
      sub_219BF0EF4();
      v434 = *(v409 + 8);
      (v434)(v284, v232);
      v286 = v333;
      sub_219BF0E94();
      (*(v331 + 8))(v285, v332);
      v287 = v335;
      v288 = v334;
      v289 = v336;
      (*(v335 + 104))(v334, *MEMORY[0x277D32D40], v336);
      v290 = sub_219BF0524();
      v291 = *(v287 + 8);
      v291(v288, v289);
      v291(v286, v289);
      if ((v290 & 1) == 0)
      {
        goto LABEL_40;
      }

      v292 = v407;
      sub_219BF07D4();
      v293 = sub_219BF0F14();
      (v434)(v292, v232);
      (*(v433 + 8))(v125, v126);
      (*(v449 + 8))(v448, v447);
      v152 = v446;
      *v446 = v293;
      v153 = type metadata accessor for TodayRouteModel();
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v225 = *(*(v153 - 8) + 56);
      v226 = v152;
      return v225(v226, 0, 1, v153);
    case 3u:
      v154 = v410;
      v155 = v375;
      v156 = v380;
      (*(v410 + 32))(v375, v97, v380);
      v157 = v352;
      sub_219BF07D4();
      v158 = v411;
      sub_219BF1034();
      v159 = *(v356 + 8);
      v160 = v157;
      v161 = v357;
      v159(v160, v357);
      v162 = sub_219BF3484();
      v163 = *(v162 - 8);
      if ((*(v163 + 48))(v158, 1, v162) == 1)
      {
        v164 = v342;
        sub_219BF07D4();
        v165 = v156;
        v166 = v344;
        sub_219BF1084();
        v159(v164, v161);
        v167 = v346;
        v168 = v161;
        v169 = v347;
        if ((*(v346 + 48))(v166, 1, v347) == 1)
        {
          sub_218817724(v166, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v170 = v337;
          sub_219BF07D4();
          v171 = v339;
          sub_219BF1074();
          v159(v170, v168);
          v172 = v409;
          v173 = v408;
          if ((*(v409 + 48))(v171, 1, v408) == 1)
          {
            (*(v410 + 8))(v155, v165);
            (*(v449 + 8))(v448, v447);
            sub_218817724(v171, &unk_280E90A30, MEMORY[0x277D33058]);
            v174 = type metadata accessor for TodayRouteModel();
            (*(*(v174 - 8) + 56))(v446, 1, 1, v174);
            return sub_218817724(v411, &qword_280E90180, MEMORY[0x277D33E20]);
          }

          sub_219BF0F14();
          v294 = v165;
          (*(v172 + 8))(v171, v173);
          (*(v421 + 16))(v423, v438, v439);
          (*(v444 + 56))(v436, 1, 1, v442);
          v295 = sub_219BDEA34();
          (*(*(v295 - 8) + 56))(v424, 1, 1, v295);
          (*(v440 + 104))(v437, *MEMORY[0x277D32E98], v441);
          sub_21880BAC8();
          swift_unknownObjectRetain();
          v296 = v155;
          v297 = v425;
          sub_219BDE794();
          v298 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x88));
          __swift_project_boxed_opaque_existential_1(v298, v298[3]);
          swift_getWitnessTable();
          v299 = v428;
          sub_219BDED04();
          sub_219BDE734();
          sub_219BDEC64();

          v300 = v446;
          sub_219BDE724();
          swift_unknownObjectRelease();
          (*(v429 + 8))(v299, v430);
          (*(v426 + 8))(v297, v427);
          (*(v410 + 8))(v296, v294);
          (*(v449 + 8))(v448, v447);
          v266 = type metadata accessor for TodayRouteModel();
          swift_storeEnumTagMultiPayload();
          v267 = *(*(v266 - 8) + 56);
          v268 = v300;
        }

        else
        {
          (*(v410 + 8))(v155, v165);
          (*(v449 + 8))(v448, v447);
          v263 = *(v167 + 32);
          v264 = v338;
          v263(v338, v166, v169);
          v265 = v446;
          v263(v446, v264, v169);
          v266 = type metadata accessor for TodayRouteModel();
          swift_storeEnumTagMultiPayload();
          v267 = *(*(v266 - 8) + 56);
          v268 = v265;
        }

        v267(v268, 0, 1, v266);
        return sub_218817724(v411, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v233 = v343;
      sub_218812314(v158, v343, &qword_280E90180, MEMORY[0x277D33E20]);
      v234 = (*(v163 + 88))(v233, v162);
      if (v234 == *MEMORY[0x277D33DF0])
      {
        (*(v163 + 96))(v233, v162);

        v235 = sub_219BF4024();
        if (v235)
        {
          v236 = [v235 identifier];
          v237 = sub_219BF5414();
          v238 = v154;
          v239 = v156;
          v241 = v240;
          swift_unknownObjectRelease();

          (*(v238 + 8))(v155, v239);
          (*(v449 + 8))(v448, v447);
          v242 = v446;
          *v446 = v237;
          v242[1] = v241;
          v243 = 8;
LABEL_60:
          v242[2] = v243;
          v308 = type metadata accessor for TodayRouteModel();
          swift_storeEnumTagMultiPayload();
          (*(*(v308 - 8) + 56))(v242, 0, 1, v308);
LABEL_62:

          return sub_218817724(v158, &qword_280E90180, MEMORY[0x277D33E20]);
        }

        goto LABEL_61;
      }

      if (v234 == *MEMORY[0x277D33E08])
      {
        (*(v163 + 96))(v233, v162);

        v269 = sub_219BF46D4();
        if (v269)
        {
          v270 = [v269 identifier];
          v271 = sub_219BF5414();
          v272 = v154;
          v273 = v156;
          v275 = v274;
          swift_unknownObjectRelease();

          (*(v272 + 8))(v155, v273);
          (*(v449 + 8))(v448, v447);
          v242 = v446;
          *v446 = v271;
          v242[1] = v275;
          v243 = 4;
          goto LABEL_60;
        }

LABEL_61:

        (*(v154 + 8))(v155, v156);
        (*(v449 + 8))(v448, v447);
        v309 = type metadata accessor for TodayRouteModel();
        (*(*(v309 - 8) + 56))(v446, 1, 1, v309);
        goto LABEL_62;
      }

      if (v234 == *MEMORY[0x277D33DF8])
      {
        (*(v163 + 96))(v233, v162);

        v301 = sub_219BF4BE4();
        if (v301)
        {
          v302 = [v301 identifier];
          v303 = sub_219BF5414();
          v304 = v154;
          v305 = v156;
          v307 = v306;
          swift_unknownObjectRelease();

          (*(v304 + 8))(v155, v305);
          (*(v449 + 8))(v448, v447);
          v242 = v446;
          *v446 = v303;
          v242[1] = v307;
          v243 = 7;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      v317 = *MEMORY[0x277D33E00];
      v318 = v234;
      (*(v154 + 8))(v155, v156);
      (*(v449 + 8))(v448, v447);
      (*(v163 + 8))(v233, v162);
      if (v318 != v317 && v318 != *MEMORY[0x277D33E18] && v318 != *MEMORY[0x277D33DE8] && v318 != *MEMORY[0x277D33E10])
      {
        v319 = type metadata accessor for TodayRouteModel();
        (*(*(v319 - 8) + 56))(v446, 1, 1, v319);
        return sub_218817724(v158, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      sub_218817724(v158, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_5:
      v108 = type metadata accessor for TodayRouteModel();
      return (*(*(v108 - 8) + 56))(v446, 1, 1, v108);
    case 4u:
    case 5u:
    case 8u:
    case 9u:
    case 0xEu:
      (*(v449 + 8))(v448, v447);
      v105 = type metadata accessor for TodayModel;
LABEL_3:
      v106 = v105;
      v107 = v97;
      goto LABEL_4;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      v435 = *(v110 + 48);
      v111 = v354;
      v112 = v353;
      v113 = v355;
      (*(v354 + 32))(v353, v97, v355);
      (*(v421 + 16))(v423, v438, v439);
      v114 = v349;
      sub_219BF07D4();
      sub_219BEC4F4();
      (*(v350 + 8))(v114, v351);
      (*(v444 + 56))(v436, 1, 1, v442);
      v115 = sub_219BDEA34();
      (*(*(v115 - 8) + 56))(v424, 1, 1, v115);
      (*(v440 + 104))(v437, *MEMORY[0x277D32E98], v441);
      sub_21880BAC8();
      v116 = v425;
      sub_219BDE794();
      v117 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x88));
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      swift_getWitnessTable();
      v118 = v428;
      sub_219BDED04();
      sub_219BDE734();
      sub_219BDEC64();

      v119 = v446;
      sub_219BDE724();
      (*(v429 + 8))(v118, v430);
      (*(v426 + 8))(v116, v427);
      (*(v111 + 8))(v112, v113);
      (*(v449 + 8))(v448, v447);
      v120 = type metadata accessor for TodayRouteModel();
      swift_storeEnumTagMultiPayload();
      (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
      return (*(v433 + 8))(&v97[v435], v413);
    case 7u:
      v180 = v391;
      v181 = v390;
      v182 = v394;
      (*(v391 + 32))(v390, v97, v394);
      v183 = v395;
      sub_219BF07D4();
      v184 = v405;
      sub_219BEDAD4();
      (*(v396 + 8))(v183, v397);
      (*(v180 + 8))(v181, v182);
      (*(v449 + 8))(v448, v447);
      v185 = sub_219BF1DA4();
      v186 = *(v185 - 8);
      if ((*(v186 + 48))(v184, 1, v185) == 1)
      {
        goto LABEL_46;
      }

      v187 = v345;
      sub_218812314(v184, v345, &qword_280E905C0, MEMORY[0x277D33610]);
      if ((*(v186 + 88))(v187, v185) == *MEMORY[0x277D33608])
      {
        (*(v186 + 96))(v187, v185);
        v188 = v446;
        (*(v346 + 32))(v446, v187, v347);
        v189 = type metadata accessor for TodayRouteModel();
        swift_storeEnumTagMultiPayload();
        (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
      }

      else
      {
        (*(v186 + 8))(v187, v185);
LABEL_46:
        v276 = type metadata accessor for TodayRouteModel();
        (*(*(v276 - 8) + 56))(v446, 1, 1, v276);
      }

      return sub_218817724(v184, &qword_280E905C0, MEMORY[0x277D33610]);
    case 0xAu:
      (*(v415 + 32))(v414, v97, v416);
      v190 = (v445 + *((*MEMORY[0x277D85000] & *v445) + 0x90));
      v191 = __swift_project_boxed_opaque_existential_1(v190, v190[3]);
      v192 = v358;
      sub_219BF07D4();
      v193 = sub_219BF06B4();
      (*(v359 + 8))(v192, v360);
      v194 = sub_219BF07B4();
      v437 = v195;
      ObjectType = swift_getWitnessTable();
      sub_219BE5FC4();
      sub_21887B94C(v102);
      sub_21880BA68(v99, type metadata accessor for TodayModel);
      v196 = sub_219BF04D4();
      v198 = v197;
      v199 = *(v449 + 8);
      v449 += 8;
      v199(v102, v447);
      sub_2197019FC(v196, v198, 0, 0, 0, 0, v435);

      (*(v440 + 56))(v432, 1, 1, v441);
      v200 = v406;
      sub_219BDE4B4();
      v201 = v442;
      (*(v444 + 56))(v200, 0, 1, v442);
      v202 = *v191;
      v203 = *(*v191 + 16);
      v204 = [objc_msgSend(v193 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v204)
      {
        sub_219BF5414();
        v204 = sub_219BF53D4();
      }

      v205 = [v203 hasMutedSubscriptionForTagID_];

      if (!v205)
      {
        goto LABEL_65;
      }

      v206 = v341;
      sub_218812314(v200, v341, &unk_280EE8C40, MEMORY[0x277D30018]);
      v207 = v444;
      if ((*(v444 + 48))(v206, 1, v201) == 1)
      {
        v208 = MEMORY[0x277D30018];
        sub_218817724(v200, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v415 + 8))(v414, v416);
        v199(v448, v447);
        sub_218817724(v206, &unk_280EE8C40, v208);
LABEL_66:
        v310 = 0;
        v311 = v445;
        v312 = v446;
        v313 = ObjectType;
        v314 = v437;
        goto LABEL_67;
      }

      v277 = v340;
      (*(v207 + 32))(v340, v206, v201);
      if ((sub_219BDE4A4() & 1) == 0)
      {
        (*(v207 + 8))(v277, v201);
LABEL_65:
        sub_218817724(v200, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v415 + 8))(v414, v416);
        v199(v448, v447);
        goto LABEL_66;
      }

      v441 = v194;
      __swift_project_boxed_opaque_existential_1((v202 + 24), *(v202 + 48));
      v278 = v435;
      sub_219BDE4C4();
      v279 = v329;
      sub_219BDEA24();
      v280 = v279;
      sub_218817724(v278, &qword_280EE8D20, MEMORY[0x277D2FD40]);
      v281 = v327;
      v282 = v328;
      if ((*(v327 + 48))(v280, 1, v328) == 1)
      {
        (*(v207 + 8))(v340, v201);
        sub_218817724(v406, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v415 + 8))(v414, v416);
        v199(v448, v447);
        sub_218817724(v280, &unk_280EE8D10, MEMORY[0x277D2FD50]);
        v194 = v441;
        goto LABEL_66;
      }

      v320 = *(v281 + 32);
      v321 = v326;
      v320(v326, v280, v282);
      v322 = swift_allocObject();
      *(v322 + 40) = v282;
      *(v322 + 48) = sub_2187E1408(&qword_27CC11940, MEMORY[0x277D2FD50]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v322 + 16));
      v320(boxed_opaque_existential_1, v321, v282);
      (*(v207 + 8))(v340, v201);
      sub_218817724(v406, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v415 + 8))(v414, v416);
      v199(v448, v447);
      v311 = 0;
      v324 = v437;
      *(v322 + 56) = v441;
      *(v322 + 64) = v324;
      v325 = v445;
      *(v322 + 72) = v193;
      *(v322 + 80) = v325;
      v310 = 1;
      v194 = v322;
      *(v322 + 88) = ObjectType;
      *(v322 + 96) = 0;
      v314 = 0;
      v193 = 0;
      v313 = 0;
      v312 = v446;
LABEL_67:
      *v312 = v194;
      v312[1] = v314;
      v312[2] = v193;
      v312[3] = v311;
      v312[4] = v313;
      *(v312 + 40) = v310;
      v315 = type metadata accessor for TodayRouteModel();
      swift_storeEnumTagMultiPayload();
      (*(*(v315 - 8) + 56))(v312, 0, 1, v315);
      v316 = v445;

      return v316;
    case 0xBu:
      v121 = v362;
      v122 = v361;
      v123 = v363;
      (*(v362 + 32))(v361, v97, v363);
      v175 = v364;
      sub_219BF07D4();
      sub_219BF0404();
      (*(v365 + 8))(v175, v366);
      goto LABEL_16;
    case 0xCu:
      v209 = v368;
      v210 = v367;
      v211 = v369;
      (*(v368 + 32))(v367, v97, v369);
      v212 = v370;
      sub_219BF07D4();
      v213 = sub_219BF0AA4();
      (*(v371 + 8))(v212, v372);
      v214 = v376;
      v215 = *(v376 + 20);
      v216 = sub_219BF24E4();
      v217 = v374;
      (*(*(v216 - 8) + 56))(&v374[v215], 1, 1, v216);
      v218 = v448;
      v219 = sub_219BF04D4();
      v221 = v220;
      (*(v209 + 8))(v210, v211);
      (*(v449 + 8))(v218, v447);
      *v217 = v213;
      *(v217 + 8) = 0;
      *(v217 + 16) = 1;
      v222 = (v217 + v214[6]);
      *v222 = v219;
      v222[1] = v221;
      v223 = (v217 + v214[7]);
      *v223 = 0;
      v223[1] = 0;
      v224 = (v217 + v214[8]);
      *v224 = 0;
      v224[1] = 0;
      v152 = v446;
      sub_21880BBE4(v217, v446, type metadata accessor for PuzzleModel);
      v153 = type metadata accessor for TodayRouteModel();
      goto LABEL_28;
    case 0xDu:
      v121 = v377;
      v122 = v373;
      v123 = v378;
      (*(v377 + 32))(v373, v97, v378);
      v124 = v379;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v381 + 8))(v124, v382);
LABEL_16:
      v152 = v446;
      sub_219BDD644();
      (*(v121 + 8))(v122, v123);
      (*(v449 + 8))(v448, v447);
      v153 = type metadata accessor for TodayRouteModel();
      goto LABEL_28;
    case 0xFu:
      (*(v418 + 32))(v417, v97, v419);
      v130 = sub_219BF04D4();
      v131 = v385;
      *v385 = v130;
      v131[1] = v132;
      (*(v383 + 104))(v131, *MEMORY[0x277D2FDC8], v384);
      v133 = sub_219BDD944();
      (*(*(v133 - 8) + 56))(v386, 1, 1, v133);
      sub_219BDDBD4();
      v134 = v387;
      sub_219BF07D4();
      v433 = sub_219BF0AF4();
      v431 = v135;
      v136 = *(v392 + 8);
      v137 = v393;
      v136(v134, v393);
      v138 = v389;
      sub_219BF07D4();
      v430 = sub_219BF0B44();
      v136(v138, v137);
      v139 = v398;
      (*(v398 + 16))(v388, v434, v420);
      sub_219BE5FC4();
      sub_21887B94C(v102);
      sub_21880BA68(v99, type metadata accessor for TodayModel);
      v140 = sub_219BF04D4();
      v142 = v141;
      v143 = *(v449 + 8);
      v144 = v102;
      v145 = v447;
      v143(v144, v447);
      sub_2197019FC(v140, v142, 0, 0, 0, 0, v435);

      v147 = v440;
      v146 = v441;
      (*(v440 + 56))(v432, 1, 1, v441);
      v148 = v436;
      sub_219BDE4B4();
      (*(v444 + 56))(v148, 0, 1, v442);
      (*(v147 + 104))(v437, *MEMORY[0x277D32E98], v146);
      v149 = v399;
      sub_219BDEB04();
      swift_getWitnessTable();
      v150 = v402;
      sub_219BDE2F4();
      sub_219BDEA04();
      sub_219BDEBC4();

      v151 = sub_219BDE9F4();
      (*(v403 + 8))(v150, v404);
      (*(v400 + 8))(v149, v401);
      (*(v139 + 8))(v434, v420);
      (*(v418 + 8))(v417, v419);
      v143(v448, v145);
      v152 = v446;
      *v446 = v151;
      v153 = type metadata accessor for TodayRouteModel();
      goto LABEL_28;
    default:
      (*(v449 + 8))(v448, v447);

      sub_2186EA920();
      v106 = type metadata accessor for TodayGapLocation;
      v107 = &v97[*(v176 + 48)];
LABEL_4:
      sub_21880BA68(v107, v106);
      goto LABEL_5;
  }
}

uint64_t sub_2197019FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a5;
  v44 = a6;
  v45 = a3;
  v46 = a4;
  v48 = a1;
  v49 = a2;
  v50 = a7;
  sub_21880B928();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  sub_2187FAD00();
  v19 = v18;
  v47 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v40 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  v41 = *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0x68));
  sub_219BE6EC4();
  v51 = v52;
  v24 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v24);
  sub_219BE7B94();

  sub_219BEB244();
  v25 = v19;
  v26 = *(v10 + 8);
  v48 = v10 + 8;
  v49 = v9;
  v26(v12, v9);
  v27 = v47;
  v28 = *(v47 + 48);
  if (v28(v17, 1, v25) == 1)
  {
    sub_218817724(v17, &unk_280EE58B0, sub_2187FAD00);
    if (v44)
    {
      v39 = v25;
      sub_219BE6EC4();
      v51 = v52;
      sub_219BE7B94();

      v29 = v42;
      v30 = v49;
      sub_219BEB244();
      v31 = v39;
      v26(v12, v30);
      if (v28(v29, 1, v31) != 1)
      {
        v35 = v40;
        (*(v27 + 32))(v40, v29, v31);
        v36 = v31;
        v33 = v50;
        sub_2197091BC(v45, v46, v50);
        (*(v27 + 8))(v35, v36);
        v32 = 0;
        goto LABEL_8;
      }

      sub_218817724(v29, &unk_280EE58B0, sub_2187FAD00);
    }

    v32 = 1;
    v33 = v50;
  }

  else
  {
    (*(v27 + 32))(v23, v17, v25);
    v34 = v50;
    sub_2197091BC(v45, v46, v50);
    (*(v27 + 8))(v23, v25);
    v32 = 0;
    v33 = v34;
  }

LABEL_8:
  v37 = sub_219BDDD94();
  return (*(*(v37 - 8) + 56))(v33, v32, 1, v37);
}

uint64_t sub_219701EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  sub_218812314(a1, v16 - v5, &unk_280EE58B0, sub_2187FAD00);
  sub_2187FAD00();
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
    sub_218817724(v6, &unk_280EE58B0, sub_2187FAD00);
    v10 = sub_219BDEA34();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_219BE6934();
    v12 = v16[1];
    (*(v9 + 8))(v6, v8);
    v18 = &type metadata for TodaySectionDescriptor;
    v19 = sub_2197161EC();
    *&v17 = v12;
    sub_2186CB1F0(&v17, v20);
    sub_2186CB1F0(v20, a2);
    v13 = *MEMORY[0x277D30258];
    v14 = sub_219BDEA34();
    v15 = *(v14 - 8);
    (*(v15 + 104))(a2, v13, v14);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }
}

uint64_t sub_21970214C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219BE1E74();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_219702220()
{
  sub_21880B928();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9[0] = v9[1];
  v5 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v5);
  sub_219BE7B94();

  v6 = sub_218827310();
  result = (*(v2 + 8))(v4, v1);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v8 = off_282A6CF68;
    type metadata accessor for TodayDataManager();
    v8();
    return sub_21885AB78(v6);
  }

  return result;
}

void sub_219702414()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v2 = swift_unknownObjectWeakLoadStrong();
        if (v2)
        {
          v3 = v2;
          [v2 dismissViewControllerAnimated:0 completion:0];
        }
      }
    }
  }
}

uint64_t sub_219702514()
{
  sub_219702540();

  return sub_218811A74(1);
}

uint64_t sub_219702540()
{
  v1 = MEMORY[0x277D31758];
  sub_21881214C(0, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
  v150 = v2;
  MEMORY[0x28223BE20](v2);
  v151 = &v133 - v3;
  v163 = sub_219BE3794();
  v165 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v149 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D31680];
  sub_21881214C(0, &qword_280EE6608, &unk_280EE6610, MEMORY[0x277D31680]);
  v156 = v6;
  MEMORY[0x28223BE20](v6);
  v157 = &v133 - v7;
  v8 = sub_219BE38C4();
  v9 = *(v8 - 8);
  v158 = v8;
  v159 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v155 = &v133 - v13;
  v14 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE6610, v5, MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v152 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v160 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v154 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v161 = &v133 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v133 - v24;
  v26 = sub_219BE3514();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE65C0, v1, v14);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v162 = &v133 - v35;
  result = MEMORY[0x28223BE20](v34);
  v41 = &v133 - v40;
  v42 = *MEMORY[0x277D85000] & *v0;
  if (*(v0 + *(v42 + 0x148)) == 1)
  {
    v147 = v39;
    v146 = v38;
    v139 = v37;
    v138 = v12;
    v43 = *(v42 + 272);
    sub_218718690(v0 + v43, &v167);
    v164 = v25;
    v153 = v0;
    v44 = v27;
    v148 = v169;
    __swift_project_boxed_opaque_existential_1(&v167, v168);
    v45 = *MEMORY[0x277D314F8];
    v46 = *(v27 + 104);
    v46(v29, v45, v26);
    v166 = v41;
    sub_219BE3AC4();
    v47 = *(v27 + 8);
    v47(v29, v26);
    __swift_destroy_boxed_opaque_existential_1(&v167);
    v144 = v43;
    sub_218718690(v153 + v43, &v167);
    __swift_project_boxed_opaque_existential_1(&v167, v168);
    v142 = v45;
    v143 = v27 + 104;
    v141 = v46;
    v46(v29, v45, v26);
    v48 = v164;
    sub_219BE3AD4();
    v49 = v29;
    v145 = v26;
    v148 = v44 + 8;
    v140 = v47;
    v47(v29, v26);
    __swift_destroy_boxed_opaque_existential_1(&v167);
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v50 = sub_219BE5434();
    v51 = __swift_project_value_buffer(v50, qword_280F62520);
    v52 = v161;
    sub_218812314(v48, v161, &unk_280EE6610, MEMORY[0x277D31680]);
    v53 = v166;
    v54 = v162;
    sub_218812314(v166, v162, &qword_280EE65C0, MEMORY[0x277D31758]);
    v55 = sub_219BE5414();
    v56 = sub_219BF6214();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v163;
    v59 = v165;
    if (v57)
    {
      v135 = v56;
      v136 = v55;
      v60 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v167 = v134;
      *v60 = 136315394;
      v61 = v154;
      sub_218812314(v52, v154, &unk_280EE6610, MEMORY[0x277D31680]);
      v137 = v59[6];
      if (v137(v61, 1, v58) == 1)
      {
        sub_218817724(v61, &unk_280EE6610, MEMORY[0x277D31680]);
        v62 = 0xE300000000000000;
        v63 = 7104878;
      }

      else
      {
        v63 = sub_219BE3784();
        v62 = v67;
        (v59[1])(v61, v58);
      }

      v68 = v155;
      sub_218817724(v161, &unk_280EE6610, MEMORY[0x277D31680]);
      v69 = sub_2186D1058(v63, v62, &v167);

      *(v60 + 4) = v69;
      *(v60 + 12) = 2080;
      v70 = v147;
      sub_218812314(v54, v147, &qword_280EE65C0, MEMORY[0x277D31758]);
      v65 = v158;
      v71 = v159;
      v72 = *(v159 + 48);
      if (v72(v70, 1, v158) == 1)
      {
        (*(v71 + 104))(v68, *MEMORY[0x277D31738], v65);
        v73 = v72(v70, 1, v65) == 1;
        v74 = v70;
        v75 = v164;
        if (!v73)
        {
          sub_218817724(v74, &qword_280EE65C0, MEMORY[0x277D31758]);
        }
      }

      else
      {
        (*(v71 + 32))(v68, v70, v65);
        v75 = v164;
      }

      sub_2187E1408(&unk_280EE65D0, MEMORY[0x277D31758]);
      v76 = sub_219BF7894();
      v78 = v77;
      (*(v71 + 8))(v68, v65);
      sub_218817724(v162, &qword_280EE65C0, MEMORY[0x277D31758]);
      v79 = sub_2186D1058(v76, v78, &v167);

      *(v60 + 14) = v79;
      v80 = v136;
      _os_log_impl(&dword_2186C1000, v136, v135, "Masthead placement state after coming back to foreground: source=%s state=%s.", v60, 0x16u);
      v81 = v134;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v81, -1, -1);
      MEMORY[0x21CECF960](v60, -1, -1);

      v59 = v165;
      v53 = v166;
      v48 = v75;
      v58 = v163;
      v66 = v160;
      v64 = v137;
    }

    else
    {

      sub_218817724(v54, &qword_280EE65C0, MEMORY[0x277D31758]);
      sub_218817724(v52, &unk_280EE6610, MEMORY[0x277D31680]);
      v64 = v59[6];
      v65 = v158;
      v66 = v160;
    }

    v82 = v64;
    v83 = v64(v48, 1, v58);
    v163 = v49;
    if (v83 == 1 && (*(v159 + 48))(v53, 1, v65) == 1)
    {
      goto LABEL_32;
    }

    v84 = v48;
    v85 = v51;
    v59[13](v66, *MEMORY[0x277D31668], v58);
    (v59[7])(v66, 0, 1, v58);
    v86 = *(v156 + 48);
    v87 = v66;
    v88 = MEMORY[0x277D31680];
    v89 = v84;
    v90 = v157;
    sub_218812314(v89, v157, &unk_280EE6610, MEMORY[0x277D31680]);
    sub_218812314(v87, v90 + v86, &unk_280EE6610, v88);
    if (v82(v90, 1, v58) == 1)
    {
      sub_218817724(v87, &unk_280EE6610, MEMORY[0x277D31680]);
      v91 = v85;
      if (v82(v90 + v86, 1, v58) == 1)
      {
        sub_218817724(v90, &unk_280EE6610, MEMORY[0x277D31680]);
        v53 = v166;
        v48 = v164;
        goto LABEL_26;
      }
    }

    else
    {
      v92 = v152;
      sub_218812314(v90, v152, &unk_280EE6610, MEMORY[0x277D31680]);
      if (v82(v90 + v86, 1, v58) != 1)
      {
        v133 = v85;
        v96 = v165;
        v97 = v90 + v86;
        v98 = v149;
        (v165)[4](v149, v97, v58);
        sub_2187E1408(&qword_280EE6628, MEMORY[0x277D31680]);
        v99 = sub_219BF53A4();
        v100 = v58;
        v101 = v96[1];
        v101(v98, v100);
        v102 = MEMORY[0x277D31680];
        sub_218817724(v160, &unk_280EE6610, MEMORY[0x277D31680]);
        v101(v92, v100);
        v91 = v133;
        sub_218817724(v90, &unk_280EE6610, v102);
        v53 = v166;
        v48 = v164;
        if (v99)
        {
LABEL_26:
          v133 = v91;
          v103 = v159;
          v104 = v146;
          (*(v159 + 104))(v146, *MEMORY[0x277D31750], v65);
          (*(v103 + 56))(v104, 0, 1, v65);
          v105 = v53;
          v106 = *(v150 + 48);
          v107 = MEMORY[0x277D31758];
          v108 = v65;
          v109 = v151;
          sub_218812314(v105, v151, &qword_280EE65C0, MEMORY[0x277D31758]);
          sub_218812314(v104, v109 + v106, &qword_280EE65C0, v107);
          v110 = *(v103 + 48);
          if (v110(v109, 1, v108) == 1)
          {
            sub_218817724(v104, &qword_280EE65C0, MEMORY[0x277D31758]);
            if (v110(v109 + v106, 1, v108) == 1)
            {
              sub_218817724(v109, &qword_280EE65C0, MEMORY[0x277D31758]);
              v53 = v166;
              goto LABEL_22;
            }
          }

          else
          {
            v111 = v139;
            sub_218812314(v109, v139, &qword_280EE65C0, MEMORY[0x277D31758]);
            if (v110(v109 + v106, 1, v108) != 1)
            {
              v128 = v109 + v106;
              v129 = v138;
              (*(v103 + 32))(v138, v128, v108);
              sub_2187E1408(&unk_280EE65E0, MEMORY[0x277D31758]);
              v130 = sub_219BF53A4();
              v131 = *(v103 + 8);
              v131(v129, v108);
              v132 = MEMORY[0x277D31758];
              sub_218817724(v146, &qword_280EE65C0, MEMORY[0x277D31758]);
              v131(v111, v108);
              sub_218817724(v109, &qword_280EE65C0, v132);
              v53 = v166;
              if (v130)
              {
                goto LABEL_22;
              }

LABEL_32:
              v112 = v153;
              v113 = [*(v112 + *((*MEMORY[0x277D85000] & *v112) + 0x120)) cachedSubscription];
              if ([v113 isSubscribed] && (sub_2196F6108() & 1) == 0)
              {
                v124 = sub_219BE5414();
                v125 = sub_219BF6214();
                if (os_log_type_enabled(v124, v125))
                {
                  v126 = swift_slowAlloc();
                  *v126 = 0;
                  _os_log_impl(&dword_2186C1000, v124, v125, "Subscription state prevented refreshing Masthead placement.", v126, 2u);
                  v127 = v126;
                  v53 = v166;
                  MEMORY[0x21CECF960](v127, -1, -1);
                }
              }

              else
              {
                v165 = v113;
                v114 = sub_219BE5414();
                v115 = sub_219BF6214();
                if (os_log_type_enabled(v114, v115))
                {
                  v116 = swift_slowAlloc();
                  *v116 = 0;
                  _os_log_impl(&dword_2186C1000, v114, v115, "Refreshing Masthead placement...", v116, 2u);
                  MEMORY[0x21CECF960](v116, -1, -1);
                }

                v117 = v144;
                sub_218718690(v112 + v144, &v167);
                __swift_project_boxed_opaque_existential_1(&v167, v168);
                v118 = v163;
                v119 = v142;
                v120 = v145;
                v121 = v141;
                v141(v163, v142, v145);
                sub_219BE3A64();
                v122 = v112;
                v123 = v140;
                v140(v118, v120);
                __swift_destroy_boxed_opaque_existential_1(&v167);
                sub_218718690(v122 + v117, &v167);
                __swift_project_boxed_opaque_existential_1(&v167, v168);
                v121(v118, v119, v120);
                sub_219BE3A34();

                v123(v118, v120);
                __swift_destroy_boxed_opaque_existential_1(&v167);
                v48 = v164;
                v53 = v166;
              }

              goto LABEL_40;
            }

            sub_218817724(v146, &qword_280EE65C0, MEMORY[0x277D31758]);
            (*(v103 + 8))(v111, v108);
          }

          sub_218812394(v109, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
          v53 = v166;
          goto LABEL_32;
        }

LABEL_22:
        v93 = sub_219BE5414();
        v94 = sub_219BF6214();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_2186C1000, v93, v94, "No need to refresh Masthead placement.", v95, 2u);
          MEMORY[0x21CECF960](v95, -1, -1);
        }

LABEL_40:
        sub_218817724(v48, &unk_280EE6610, MEMORY[0x277D31680]);
        return sub_218817724(v53, &qword_280EE65C0, MEMORY[0x277D31758]);
      }

      sub_218817724(v160, &unk_280EE6610, MEMORY[0x277D31680]);
      (v165[1])(v92, v58);
    }

    sub_218812394(v90, &qword_280EE6608, &unk_280EE6610, MEMORY[0x277D31680]);
    v53 = v166;
    v48 = v164;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2197039C8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = type metadata accessor for TodayExpandContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_219BE7B04();
  sub_21880BB00(v7);
  if (v7 >> 62)
  {
    v10 = *(v3 + 80);
    v9 = *(v3 + 88);
    v15[1] = (*(v9 + 72))(v10, v9);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2187F684C(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
    v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v9;
    v13[4] = v11;
    sub_21880BBE4(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TodayExpandContext);
    v14 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v14);

    sub_219BE6EF4();
  }

  else
  {
    sub_21881DCEC(a1);
  }
}

void sub_219703CC0(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D6DFA0])
    {
      (*(v3 + 8))(v5, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for TodayInteractor();
        v8 = v7;
        sub_218844CD0(0);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_219703EB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_219717104();
}

uint64_t sub_219703F50(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x88)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x90)]);

  sub_218817724(&a1[*((*v3 & *a1) + 0xB0)], &qword_280ED2200, type metadata accessor for TodayPrewarmResult);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xB8)]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xF0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xF8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x100)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x108)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x110)]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x130)]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_21970444C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v304 = a3;
  v305 = a4;
  v301 = a2;
  v317 = a1;
  v318 = a5;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v265 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v273 = &v239 - v9;
  v272 = sub_219BEDAE4();
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v270 = &v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_219BDEA14();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v257 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_219BDEB14();
  v256 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v255 = &v239 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v251 = &v239 - v14;
  v249 = sub_219BDDED4();
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v250 = (&v239 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v266 = sub_219BDDBF4();
  v254 = *(v266 - 8);
  v16 = MEMORY[0x28223BE20](v266);
  v252 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v253 = &v239 - v18;
  v264 = sub_219BF0B74();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v262 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_219BEDB94();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v240 = &v239 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v247);
  v246 = &v239 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_219BF0AC4();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v243 = &v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_219BF04A4();
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v274 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v5);
  MEMORY[0x28223BE20](v24 - 8);
  v267 = &v239 - v25;
  v269 = sub_219BDDDA4();
  v268 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v261 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDE4D4();
  v312 = *(v27 - 8);
  v313 = v27;
  MEMORY[0x28223BE20](v27);
  v277 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_219BF07A4();
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v286 = &v239 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280E90A30, MEMORY[0x277D33058], v5);
  MEMORY[0x28223BE20](v30 - 8);
  v280 = &v239 - v31;
  sub_2187DD4F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v32 - 8);
  v282 = &v239 - v33;
  v284 = sub_219BDB954();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v279 = &v239 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E90180, MEMORY[0x277D33E20], v5);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v281 = &v239 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v291 = &v239 - v38;
  v292 = sub_219BF1094();
  v289 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v290 = &v239 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDE744();
  v299 = *(v40 - 8);
  v300 = v40;
  MEMORY[0x28223BE20](v40);
  v298 = &v239 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BF0634();
  v308 = *(v42 - 8);
  v309 = v42;
  MEMORY[0x28223BE20](v42);
  v303 = &v239 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], v5);
  MEMORY[0x28223BE20](v44 - 8);
  v294 = &v239 - v45;
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v5);
  MEMORY[0x28223BE20](v46 - 8);
  v306 = &v239 - v47;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v5);
  MEMORY[0x28223BE20](v48 - 8);
  v307 = &v239 - v49;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v5);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v278 = &v239 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v285 = &v239 - v54;
  MEMORY[0x28223BE20](v53);
  v302 = &v239 - v55;
  sub_219717384(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v57 = v56;
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v314 = &v239 - v59;
  v297 = sub_219BDE7A4();
  v296 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v295 = &v239 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BF0F34();
  v315 = *(v61 - 8);
  v316 = v61;
  MEMORY[0x28223BE20](v61);
  v63 = &v239 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_219BF13A4();
  MEMORY[0x28223BE20](v293);
  v65 = &v239 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BF0614();
  v67 = *(v66 - 8);
  v68 = MEMORY[0x28223BE20](v66);
  v70 = &v239 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v72 = &v239 - v71;
  v73 = v317;
  sub_219BE5FC4();
  sub_219BF1394();
  v74 = v65;
  v75 = v67;
  sub_21880BA68(v74, MEMORY[0x277D33320]);
  v76 = *(v67 + 16);
  v319 = v72;
  v76(v70, v72, v66);
  v77 = (*(v67 + 88))(v70, v66);
  if (v77 == *MEMORY[0x277D32DB8] || v77 == *MEMORY[0x277D32D10] || v77 == *MEMORY[0x277D32E00])
  {
    goto LABEL_22;
  }

  if (v77 != *MEMORY[0x277D32E10])
  {
    if (v77 == *MEMORY[0x277D32E18])
    {
      (*(v67 + 96))(v70, v66);
      v101 = v289;
      v102 = v290;
      (*(v289 + 32))(v290, v70, v292);
      v103 = v291;
      sub_219BF1034();
      v104 = sub_219BF3484();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1, v104) == 1)
      {
        v106 = v282;
        sub_219BF1084();
        v107 = v283;
        v108 = v284;
        if ((*(v283 + 48))(v106, 1, v284) == 1)
        {
          sub_218817724(v106, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v109 = v280;
          sub_219BF1074();
          v111 = v315;
          v110 = v316;
          if ((*(v315 + 48))(v109, 1, v316) == 1)
          {
            (*(v289 + 8))(v102, v292);
            (*(v75 + 8))(v319, v66);
            sub_218817724(v109, &unk_280E90A30, MEMORY[0x277D33058]);
            v112 = type metadata accessor for TodayRouteModel();
            (*(*(v112 - 8) + 56))(v318, 1, 1, v112);
            return sub_218817724(v291, &qword_280E90180, MEMORY[0x277D33E20]);
          }

          sub_219BF0F14();
          (*(v111 + 8))(v109, v110);
          (*(v58 + 16))(v314, v73, v57);
          (*(v312 + 56))(v302, 1, 1, v313);
          v156 = sub_219BDEA34();
          (*(*(v156 - 8) + 56))(v294, 1, 1, v156);
          (*(v308 + 104))(v303, *MEMORY[0x277D32E98], v309);
          sub_2191FD45C();
          swift_unknownObjectRetain();
          v157 = v295;
          sub_219BDE794();
          v158 = v289;
          v284 = v66;
          v159 = (v311 + *((*MEMORY[0x277D85000] & *v311) + 0x88));
          v160 = v75;
          __swift_project_boxed_opaque_existential_1(v159, v159[3]);
          swift_getWitnessTable();
          v161 = v298;
          sub_219BDECF4();
          sub_219BDE734();
          sub_219BDEC64();

          v162 = v318;
          sub_219BDE724();
          swift_unknownObjectRelease();
          (*(v299 + 8))(v161, v300);
          (*(v296 + 8))(v157, v297);
          (*(v158 + 8))(v290, v292);
          (*(v160 + 8))(v319, v284);
          v143 = type metadata accessor for TodayRouteModel();
          swift_storeEnumTagMultiPayload();
          v144 = *(*(v143 - 8) + 56);
          v145 = v162;
        }

        else
        {
          (*(v289 + 8))(v102, v292);
          (*(v75 + 8))(v319, v66);
          v140 = *(v107 + 32);
          v141 = v279;
          v140(v279, v106, v108);
          v142 = v318;
          v140(v318, v141, v108);
          v143 = type metadata accessor for TodayRouteModel();
          swift_storeEnumTagMultiPayload();
          v144 = *(*(v143 - 8) + 56);
          v145 = v142;
        }

        v144(v145, 0, 1, v143);
        return sub_218817724(v291, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v128 = v281;
      sub_218812314(v103, v281, &qword_280E90180, MEMORY[0x277D33E20]);
      v129 = (*(v105 + 88))(v128, v104);
      if (v129 == *MEMORY[0x277D33DF0])
      {
        (*(v105 + 96))(v128, v104);

        v130 = sub_219BF4024();
        if (v130)
        {
          v131 = v75;
          v132 = [v130 identifier];
          v133 = sub_219BF5414();
          v135 = v134;
          swift_unknownObjectRelease();

          (*(v101 + 8))(v290, v292);
          (*(v131 + 8))(v319, v66);
          v136 = v318;
          *v318 = v133;
          v136[1] = v135;
          v137 = 8;
LABEL_43:
          v136[2] = v137;
          v174 = type metadata accessor for TodayRouteModel();
          swift_storeEnumTagMultiPayload();
          (*(*(v174 - 8) + 56))(v136, 0, 1, v174);

          return sub_218817724(v291, &qword_280E90180, MEMORY[0x277D33E20]);
        }

        goto LABEL_45;
      }

      if (v129 == *MEMORY[0x277D33E08])
      {
        (*(v105 + 96))(v128, v104);

        v146 = sub_219BF46D4();
        if (v146)
        {
          v147 = v75;
          v148 = [v146 identifier];
          v149 = sub_219BF5414();
          v151 = v150;
          swift_unknownObjectRelease();

          (*(v101 + 8))(v290, v292);
          (*(v147 + 8))(v319, v66);
          v136 = v318;
          *v318 = v149;
          v136[1] = v151;
          v137 = 4;
          goto LABEL_43;
        }

        goto LABEL_45;
      }

      if (v129 == *MEMORY[0x277D33DF8])
      {
        (*(v105 + 96))(v128, v104);

        v168 = sub_219BF4BE4();
        if (v168)
        {
          v169 = v75;
          v170 = [v168 identifier];
          v171 = sub_219BF5414();
          v173 = v172;
          swift_unknownObjectRelease();

          (*(v101 + 8))(v290, v292);
          (*(v169 + 8))(v319, v66);
          v136 = v318;
          *v318 = v171;
          v136[1] = v173;
          v137 = 7;
          goto LABEL_43;
        }

LABEL_45:

        (*(v101 + 8))(v290, v292);
        (*(v75 + 8))(v319, v66);
        v175 = type metadata accessor for TodayRouteModel();
        (*(*(v175 - 8) + 56))(v318, 1, 1, v175);

        return sub_218817724(v103, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v189 = v75;
      v190 = *MEMORY[0x277D33E00];
      v191 = v129;
      (*(v101 + 8))(v290, v292);
      (*(v189 + 8))(v319, v66);
      (*(v105 + 8))(v128, v104);
      if (v191 != v190 && v191 != *MEMORY[0x277D33E18] && v191 != *MEMORY[0x277D33DE8] && v191 != *MEMORY[0x277D33E10])
      {
        v192 = type metadata accessor for TodayRouteModel();
        (*(*(v192 - 8) + 56))(v318, 1, 1, v192);
        return sub_218817724(v103, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      sub_218817724(v103, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_23:
      v100 = type metadata accessor for TodayRouteModel();
      v97 = *(*(v100 - 8) + 56);
      v98 = v318;
      v99 = 1;
      return v97(v98, v99, 1, v100);
    }

    if (v77 == *MEMORY[0x277D32DD8])
    {
      v317 = v67;
      (*(v67 + 96))(v70, v66);
      (*(v287 + 32))(v286, v70, v288);
      v113 = v311;
      v114 = (v311 + *((*MEMORY[0x277D85000] & *v311) + 0x90));
      v115 = __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v116 = sub_219BF06B4();
      WitnessTable = swift_getWitnessTable();
      v118 = sub_219BF04D4();
      sub_2197019FC(v118, v119, 0, 0, 0, 0, v307);

      (*(v308 + 56))(v306, 1, 1, v309);
      v120 = v285;
      sub_219BDE4B4();
      (*(v312 + 56))(v120, 0, 1, v313);
      v121 = *v115;
      v122 = *(*v115 + 16);
      v123 = [objc_msgSend(v116 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v123)
      {
        sub_219BF5414();
        v123 = sub_219BF53D4();
      }

      v124 = [v122 hasMutedSubscriptionForTagID_];

      if (v124)
      {
        v125 = v278;
        sub_218812314(v120, v278, &unk_280EE8C40, MEMORY[0x277D30018]);
        v127 = v312;
        v126 = v313;
        if ((*(v312 + 48))(v125, 1, v313) == 1)
        {
          sub_218817724(v125, &unk_280EE8C40, MEMORY[0x277D30018]);
        }

        else
        {
          v163 = v277;
          (*(v127 + 32))(v277, v125, v126);
          if (sub_219BDE4A4())
          {
            v284 = v66;
            __swift_project_boxed_opaque_existential_1((v121 + 24), *(v121 + 48));
            v164 = v307;
            sub_219BDE4C4();
            v165 = v267;
            sub_219BDEA24();
            sub_218817724(v164, &qword_280EE8D20, MEMORY[0x277D2FD40]);
            v166 = v268;
            v167 = v269;
            if ((*(v268 + 48))(v165, 1, v269) != 1)
            {
              v211 = *(v166 + 32);
              v212 = v165;
              v213 = v261;
              v211(v261, v212, v167);
              v185 = swift_allocObject();
              *(v185 + 40) = v167;
              *(v185 + 48) = sub_2187E1408(&qword_27CC11940, MEMORY[0x277D2FD50]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v185 + 16));
              v211(boxed_opaque_existential_1, v213, v167);
              (*(v312 + 8))(v163, v313);
              v187 = 0;
              *(v185 + 56) = 0;
              *(v185 + 64) = 0;
              *(v185 + 72) = v116;
              *(v185 + 80) = v113;
              v186 = 1;
              *(v185 + 88) = WitnessTable;
              *(v185 + 96) = 0;
              v116 = 0;
              WitnessTable = 0;
              v66 = v284;
              v120 = v285;
              goto LABEL_54;
            }

            (*(v312 + 8))(v163, v313);
            sub_218817724(v165, &unk_280EE8D10, MEMORY[0x277D2FD50]);
            v66 = v284;
          }

          else
          {
            (*(v127 + 8))(v163, v126);
          }

          v120 = v285;
        }
      }

      v185 = 0;
      v186 = 0;
      v187 = v113;
LABEL_54:
      swift_unknownObjectRetain();
      sub_218817724(v120, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v287 + 8))(v286, v288);
      (*(v317 + 8))(v319, v66);
      v188 = v318;
      *v318 = v185;
      v188[1] = 0;
      v188[2] = v116;
      v188[3] = v187;
      v188[4] = WitnessTable;
      *(v188 + 40) = v186;
      v96 = type metadata accessor for TodayRouteModel();
      swift_storeEnumTagMultiPayload();
      v97 = *(*(v96 - 8) + 56);
      v98 = v188;
      goto LABEL_6;
    }

    if (v77 == *MEMORY[0x277D32CF8])
    {
LABEL_22:
      v138 = *(v67 + 8);
      v138(v319, v66);
      v138(v70, v66);
      goto LABEL_23;
    }

    if (v77 == *MEMORY[0x277D32DC0])
    {
      (*(v67 + 96))(v70, v66);
      v152 = v275;
      v153 = v274;
      v154 = v276;
      (*(v275 + 32))(v274, v70, v276);
      sub_219BF0404();
      goto LABEL_32;
    }

    if (v77 != *MEMORY[0x277D32CF0])
    {
      if (v77 == *MEMORY[0x277D32E08] || v77 == *MEMORY[0x277D32DB0] || v77 == *MEMORY[0x277D32DE0])
      {
        goto LABEL_22;
      }

      if (v77 == *MEMORY[0x277D32DF0])
      {
        (*(v67 + 96))(v70, v66);
        (*(v263 + 32))(v262, v70, v264);
        v193 = v305;

        v194 = sub_219BF04D4();
        v195 = v304;
        v196 = v250;
        *v250 = v304;
        v196[1] = v193;
        v196[2] = v194;
        v196[3] = v197;
        (*(v248 + 104))(v196, *MEMORY[0x277D2FDC0], v249);
        v198 = sub_219BDD944();
        (*(*(v198 - 8) + 56))(v251, 1, 1, v198);
        v199 = v253;
        sub_219BDDBD4();
        v200 = sub_219BF0AF4();
        v315 = v201;
        v316 = v200;
        sub_219BF0B44();
        v317 = v75;
        v202 = v254;
        (*(v254 + 16))(v252, v199, v266);
        v203 = sub_219BF04D4();
        v284 = v66;
        sub_2197019FC(v203, v204, 0, 0, v195, v193, v307);

        v206 = v308;
        v205 = v309;
        (*(v308 + 56))(v306, 1, 1, v309);
        v207 = v302;
        sub_219BDE4B4();
        (*(v312 + 56))(v207, 0, 1, v313);
        (*(v206 + 104))(v303, *MEMORY[0x277D32E98], v205);
        v208 = v255;
        sub_219BDEB04();
        swift_getWitnessTable();
        v209 = v257;
        sub_219BDE2F4();
        sub_219BDEA04();
        sub_219BDEBC4();

        v210 = sub_219BDE9F4();
        (*(v259 + 8))(v209, v260);
        (*(v256 + 8))(v208, v258);
        (*(v202 + 8))(v199, v266);
        (*(v263 + 8))(v262, v264);
        (*(v317 + 8))(v319, v284);
        v155 = v318;
        *v318 = v210;
        v96 = type metadata accessor for TodayRouteModel();
        goto LABEL_33;
      }

      if (v77 == *MEMORY[0x277D32D38])
      {
        goto LABEL_22;
      }

      if (v77 == *MEMORY[0x277D32DE8])
      {
        (*(v67 + 96))(v70, v66);
        v216 = v244;
        v217 = v243;
        v218 = v70;
        v219 = v245;
        (*(v244 + 32))(v243, v218, v245);
        v317 = sub_219BF0AA4();
        v220 = v247;
        v221 = *(v247 + 20);
        v222 = sub_219BF24E4();
        v223 = v75;
        v224 = v246;
        (*(*(v222 - 8) + 56))(&v246[v221], 1, 1, v222);
        v225 = v319;
        v226 = sub_219BF04D4();
        v228 = v227;
        (*(v216 + 8))(v217, v219);
        (*(v223 + 8))(v225, v66);
        *v224 = v317;
        *(v224 + 8) = 0;
        *(v224 + 16) = 1;
        v229 = (v224 + v220[6]);
        *v229 = v226;
        v229[1] = v228;
        v230 = (v224 + v220[7]);
        v231 = v305;
        *v230 = v304;
        v230[1] = v231;
        v232 = (v224 + v220[8]);
        *v232 = 0;
        v232[1] = 0;
        v233 = v318;
        sub_21880BBE4(v224, v318, type metadata accessor for PuzzleModel);
        v234 = type metadata accessor for TodayRouteModel();
        swift_storeEnumTagMultiPayload();
        (*(*(v234 - 8) + 56))(v233, 0, 1, v234);
      }

      if (v77 != *MEMORY[0x277D32D18])
      {
        v235 = *MEMORY[0x277D32DD0];
        v236 = *(v67 + 8);
        v237 = v77;
        v236(v319, v66);
        if (v237 != v235)
        {
          v238 = type metadata accessor for TodayRouteModel();
          (*(*(v238 - 8) + 56))(v318, 1, 1, v238);
          return (v236)(v70, v66);
        }

        goto LABEL_23;
      }

      (*(v67 + 96))(v70, v66);
      v152 = v241;
      v153 = v240;
      v154 = v242;
      (*(v241 + 32))(v240, v70, v242);
      sub_219BEDB74();
LABEL_32:
      v155 = v318;
      sub_219BDD644();
      (*(v152 + 8))(v153, v154);
      (*(v75 + 8))(v319, v66);
      v96 = type metadata accessor for TodayRouteModel();
LABEL_33:
      swift_storeEnumTagMultiPayload();
      v97 = *(*(v96 - 8) + 56);
      v98 = v155;
      goto LABEL_6;
    }

    (*(v67 + 96))(v70, v66);
    v176 = v271;
    v177 = v270;
    v178 = v272;
    (*(v271 + 32))(v270, v70, v272);
    v179 = v273;
    sub_219BEDAD4();
    (*(v176 + 8))(v177, v178);
    (*(v67 + 8))(v319, v66);
    v180 = sub_219BF1DA4();
    v181 = *(v180 - 8);
    if ((*(v181 + 48))(v179, 1, v180) != 1)
    {
      v182 = v265;
      sub_218812314(v179, v265, &qword_280E905C0, MEMORY[0x277D33610]);
      if ((*(v181 + 88))(v182, v180) == *MEMORY[0x277D33608])
      {
        (*(v181 + 96))(v182, v180);
        v183 = v318;
        (*(v283 + 32))(v318, v182, v284);
        v184 = type metadata accessor for TodayRouteModel();
        swift_storeEnumTagMultiPayload();
        (*(*(v184 - 8) + 56))(v183, 0, 1, v184);
        return sub_218817724(v179, &qword_280E905C0, MEMORY[0x277D33610]);
      }

      (*(v181 + 8))(v182, v180);
    }

    v215 = type metadata accessor for TodayRouteModel();
    (*(*(v215 - 8) + 56))(v318, 1, 1, v215);
    return sub_218817724(v179, &qword_280E905C0, MEMORY[0x277D33610]);
  }

  (*(v67 + 96))(v70, v66);
  (*(v315 + 32))(v63, v70, v316);
  (*(v58 + 16))(v314, v73, v57);
  v292 = sub_219BF0F14();
  v78 = sub_219BF04D4();
  v317 = v67;
  v79 = v78;
  v81 = v80;
  v82 = [sub_219BF0F14() identifier];
  v284 = v66;
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = sub_219BF5414();
  v86 = v85;

  v87 = v311;
  sub_2197019FC(v79, v81, v84, v86, v304, v305, v307);

  v89 = v308;
  v88 = v309;
  (*(v308 + 56))(v306, 1, 1, v309);
  v90 = v302;
  sub_219BDE4B4();
  (*(v312 + 56))(v90, 0, 1, v313);
  v91 = sub_219BDEA34();
  (*(*(v91 - 8) + 56))(v294, 1, 1, v91);
  (*(v89 + 104))(v303, *MEMORY[0x277D32E98], v88);
  sub_2191FD45C();
  v92 = v295;
  sub_219BDE794();
  v93 = (v87 + *((*MEMORY[0x277D85000] & *v87) + 0x88));
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  swift_getWitnessTable();
  v94 = v298;
  sub_219BDECF4();
  sub_219BDE734();
  sub_219BDEC64();

  v95 = v318;
  sub_219BDE724();
  (*(v299 + 8))(v94, v300);
  (*(v296 + 8))(v92, v297);
  (*(v315 + 8))(v63, v316);
  (*(v317 + 8))(v319, v284);
  v96 = type metadata accessor for TodayRouteModel();
  swift_storeEnumTagMultiPayload();
  v97 = *(*(v96 - 8) + 56);
  v98 = v95;
LABEL_6:
  v99 = 0;
  v100 = v96;
  return v97(v98, v99, 1, v100);
}

void sub_219707424(uint64_t a1, void *a2, unint64_t a3)
{
  v78 = a3;
  v69 = *MEMORY[0x277D85000] & *a2;
  v4 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v70);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD34B0();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v57 - v10;
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v14 = v13;
  v74 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219717384(0, &qword_280E8D4A0, sub_21880B928, sub_2193A56A0, MEMORY[0x277D84310]);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  sub_21880B928();
  v21 = v20;
  v77 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v26 = sub_219BE7B04();
  if (v26 >> 62 != 1)
  {
    sub_21880BB00(v26);
    return;
  }

  v27 = *((*MEMORY[0x277D85000] & *a2) + 0x68);
  v61 = a2;
  v64 = *(a2 + v27);
  sub_219BE6EC4();
  v81 = v79;
  v28 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  v30 = v29;
  v31 = sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v28);
  v63 = v30;
  v62 = v31;
  sub_219BE7B94();

  v32 = sub_218827310();
  v33 = v77;
  v34 = v77 + 8;
  v35 = *(v77 + 8);
  v35(v25, v21);
  if ((~v32 & 0xF000000000000007) == 0)
  {
    return;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v57 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09BA0;
  v60 = v32;
  v59 = v34;
  v58 = v35;
  if (v78 == 1)
  {
    v37 = 0xE900000000000064;
    v38 = 0x656472616F626E6FLL;
  }

  else if (v78)
  {
    v79 = 0x286E776F6E6B6E75;
    v80 = 0xE800000000000000;
    v81 = v78;
    v39 = sub_219BF7894();
    MEMORY[0x21CECC330](v39);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v38 = v79;
    v37 = v80;
  }

  else
  {
    v37 = 0xEC00000064656472;
    v38 = 0x616F626E4F746F6ELL;
  }

  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = sub_2186FC3BC();
  *(v36 + 32) = v38;
  *(v36 + 40) = v37;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE6EC4();
  v81 = v79;
  v40 = v75;
  sub_219BE7B94();

  (*(v33 + 16))(v19, v40, v21);
  v41 = *(v76 + 36);
  sub_2193A56A0();
  sub_219BF5DF4();
  v58(v40, v21);
  sub_219BF5E84();
  if (*&v19[v41] == v79)
  {
LABEL_12:
    sub_21885AB78(v60);
    sub_2197172E4(v19);
    return;
  }

  v42 = (v74 + 16);
  v43 = (v74 + 8);
  while (1)
  {
    v44 = sub_219BF5EC4();
    (*v42)(v16);
    v44(&v79, 0);
    sub_219BF5E94();
    sub_219BE6934();
    (*v43)(v16, v14);
    if (!v78)
    {
      break;
    }

    if (v78 == 1 && ((v79 >> 58) & 0x3C | (v79 >> 1) & 3) == 0x15)
    {
      v45 = swift_projectBox();
      v46 = v65;
      sub_2187F684C(v45, v65, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_2187F684C(v46, v71, type metadata accessor for IntroToSportsTodayFeedGroup);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TodayFeedServiceConfig();
      sub_2187DF448();

      v47 = v66;
      sub_219BEEB14();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v49 = Strong;
        type metadata accessor for TodayInteractor();
        sub_219A1AE58(v47, v49);
        swift_unknownObjectRelease();
      }

      sub_21885AB78(v60);
      (*(v72 + 8))(v47, v73);
      v50 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v51 = v46;
      goto LABEL_25;
    }

LABEL_15:

    sub_219BF5E84();
    if (*&v19[v41] == v79)
    {
      goto LABEL_12;
    }
  }

  if (((v79 >> 58) & 0x3C | (v79 >> 1) & 3) != 0x14)
  {
    goto LABEL_15;
  }

  v52 = swift_projectBox();
  v53 = v68;
  sub_2187F684C(v52, v68, type metadata accessor for MySportsTodayFeedGroup);
  sub_2187F684C(v53, v71, type metadata accessor for MySportsTodayFeedGroup);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();

  v54 = v67;
  sub_219BEEB14();
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    type metadata accessor for TodayInteractor();
    sub_219A1AE58(v54, v56);
    swift_unknownObjectRelease();
  }

  sub_21885AB78(v60);
  (*(v72 + 8))(v54, v73);
  v50 = type metadata accessor for MySportsTodayFeedGroup;
  v51 = v53;
LABEL_25:
  sub_21880BA68(v51, v50);
  sub_2197172E4(v19);
}

uint64_t sub_219707F48()
{
  v0 = sub_219A47D24();
  if (sub_219918738(v0) == 0x7374726F7053796DLL && v1 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_219BF78F4();

    return v3 & 1;
  }
}

uint64_t sub_219707FC4()
{
  v0 = sub_219A47D24();
  if (sub_219918738(v0) == 0x536F546F72746E69 && v1 == 0xED00007374726F70)
  {

    return 1;
  }

  else
  {
    v3 = sub_219BF78F4();

    return v3 & 1;
  }
}

uint64_t sub_219708054(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BF0BD4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE7B04();
  if (v14 >> 62 == 1)
  {
    v25 = a3;
    v26 = v3;
    v24 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
    sub_219BE6EC4();
    v32 = v30;
    v15 = MEMORY[0x277D6D8B8];
    sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
    sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15);
    sub_219BE7B94();

    v16 = sub_218827310();
    (*(v11 + 8))(v13, v10);
    if ((~v16 & 0xF000000000000007) != 0)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_2187DF448();
      sub_219BEE7A4();
      v22 = (*(*(v27 + 88) + 104))(v25, v8, *(v27 + 80));
      (*(v28 + 8))(v8, v29);
      v30 = v22;
      v23 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v23);
      sub_219BE6EF4();
      sub_21885AB78(v16);
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }
  }

  else
  {
    sub_21880BB00(v14);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    v30 = 0;
    v31 = 0xE000000000000000;
    v19 = sub_219BE7B04();
    v32 = v19;
    sub_21880BB54(0, &qword_280EE4F98, MEMORY[0x277D6DC48]);
    sub_219BF7484();
    sub_21880BB00(v19);
    v20 = v30;
    v21 = v31;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = v20;
    *(v18 + 40) = v21;
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_21970859C(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BF0BD4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE7B04();
  if (v14 >> 62 == 1)
  {
    v25 = a3;
    v26 = v3;
    v24 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
    sub_219BE6EC4();
    v32 = v30;
    v15 = MEMORY[0x277D6D8B8];
    sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
    sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15);
    sub_219BE7B94();

    v16 = sub_218827310();
    (*(v11 + 8))(v13, v10);
    if ((~v16 & 0xF000000000000007) != 0)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_2187DF448();
      sub_219BEE7A4();
      v22 = (*(*(v27 + 88) + 112))(v25, v8, *(v27 + 80));
      (*(v28 + 8))(v8, v29);
      v30 = v22;
      v23 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v23);
      sub_219BE6EF4();
      sub_21885AB78(v16);
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }
  }

  else
  {
    sub_21880BB00(v14);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    v30 = 0;
    v31 = 0xE000000000000000;
    v19 = sub_219BE7B04();
    v32 = v19;
    sub_21880BB54(0, &qword_280EE4F98, MEMORY[0x277D6DC48]);
    sub_219BF7484();
    sub_21880BB00(v19);
    v20 = v30;
    v21 = v31;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = v20;
    *(v18 + 40) = v21;
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_219708AE4(uint64_t a1)
{
  v41 = a1;
  v1 = sub_219BF0644();
  v37 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = v35 - v5;
  v6 = sub_219BF11C4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21971416C(v14);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE6EC4();
  v42 = v44;
  v15 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v15);
  sub_219BE7B94();

  v16 = sub_218827310();
  result = (*(v10 + 8))(v12, v9);
  if ((~v16 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    v18 = sub_2187DF448();
    v19 = v36;
    v35[1] = v18;
    sub_219BEE844();
    v20 = v41;
    v44 = *__swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v41 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
    v21 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v21(0) == 6)
    {
      v22 = sub_219BF1AE4();
      v23 = v37;
      if (v22)
      {
        v24 = MEMORY[0x277D32EF8];
      }

      else
      {
        v24 = MEMORY[0x277D32EF0];
      }

      (*(v37 + 104))(v4, *v24, v1);
    }

    else
    {
      v23 = v37;
      (*(v37 + 104))(v4, *MEMORY[0x277D32EF0], v1);
    }

    sub_2187E1408(&qword_280E90ED0, MEMORY[0x277D32F00]);
    sub_219BF5874();
    sub_219BF5874();
    if (v44 == v42 && v45 == v43)
    {
      v25 = *(v23 + 8);
      v25(v4, v1);
      v25(v19, v1);

      v26 = MEMORY[0x277D331F8];
    }

    else
    {
      v27 = sub_219BF78F4();
      v28 = *(v23 + 8);
      v28(v4, v1);
      v28(v19, v1);

      if (v27)
      {
        v26 = MEMORY[0x277D331F8];
      }

      else
      {
        v26 = MEMORY[0x277D331E0];
      }
    }

    v30 = v38;
    v29 = v39;
    sub_219BEE844();
    v31 = v40;
    (*(v29 + 104))(v30, *v26, v40);
    v32 = v20 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      (*(v33 + 96))(v20, &off_282A6CEF8, v30, ObjectType, v33);
      sub_21885AB78(v16);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_21885AB78(v16);
    }

    return (*(v29 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_2197091BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v4 = sub_219BE0674();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  sub_219BE6934();
  if (((v37 >> 58) & 0x3C | (v37 >> 1) & 3) != 1)
  {

    goto LABEL_9;
  }

  v32 = v5;
  v33 = v4;
  v13 = type metadata accessor for CuratedTodayFeedGroup();
  v14 = (swift_projectBox() + *(v13 + 20));
  if (*v14 != 0x69726F7453706F74 || v14[1] != 0xEA00000000007365)
  {
    v16 = sub_219BF78F4();

    v5 = v32;
    v4 = v33;
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_9:
    sub_219BE6934();
    if (((v37 >> 58) & 0x3C | (v37 >> 1) & 3) == 3)
    {
      v17 = swift_projectBox();
      sub_2187F684C(v17, v12, type metadata accessor for LocalNewsTodayFeedGroup);

      if (v35)
      {
        v18 = &v12[*(v10 + 36)];
        if (sub_2188537B8(v34, v35, *v18))
        {
          v19 = v18[8];
          sub_21880BA68(v12, type metadata accessor for LocalNewsTodayFeedGroup);
          v20 = sub_219BDDD94();
          v21 = *(*(v20 - 8) + 104);
          if (v19 == 1)
          {
            v22 = MEMORY[0x277D2FD38];
          }

          else
          {
            v22 = MEMORY[0x277D2FD28];
          }

          v31 = *v22;
          v30 = a3;
          return v21(v30, v31, v20);
        }

        sub_21880BA68(v12, type metadata accessor for LocalNewsTodayFeedGroup);
        goto LABEL_26;
      }

      sub_21880BA68(v12, type metadata accessor for LocalNewsTodayFeedGroup);
    }

    else
    {
    }

    sub_219BE6934();
    sub_2193B6C2C(v37, v9);

    v24 = v36;
    (*(v5 + 32))(v36, v9, v4);
    v25 = (*(v5 + 88))(v24, v4);
    if (v25 != *MEMORY[0x277D2E6C0] && v25 != *MEMORY[0x277D2E6B0] && v25 != *MEMORY[0x277D2E6A0])
    {
      if (v25 == *MEMORY[0x277D2E6B8])
      {
        v23 = MEMORY[0x277D2FD38];
        goto LABEL_27;
      }

      if (v25 != *MEMORY[0x277D2E6A8])
      {
        v26 = *MEMORY[0x277D2FD28];
        v27 = sub_219BDDD94();
        (*(*(v27 - 8) + 104))(a3, v26, v27);
        return (*(v5 + 8))(v24, v4);
      }
    }

LABEL_26:
    v23 = MEMORY[0x277D2FD28];
    goto LABEL_27;
  }

LABEL_16:
  v23 = MEMORY[0x277D2FD30];
LABEL_27:
  v29 = *v23;
  v20 = sub_219BDDD94();
  v21 = *(*(v20 - 8) + 104);
  v30 = a3;
  v31 = v29;
  return v21(v30, v31, v20);
}

void sub_219709684()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2197096D8();
  }
}

uint64_t sub_2197096D8()
{
  sub_2187DD4F0(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  [objc_opt_self() popHighPriorityTaskInFlight];
  sub_219BF5054();
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_219BF5BD4();
  v5 = v0;
  v6 = sub_219BF5BC4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_2195E70E0(0, 0, v3, &unk_219C9EA20, v7);
}

uint64_t sub_21970983C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[3] = a4;
  v4[4] = *MEMORY[0x277D85000] & *a4;
  v5 = sub_219BE95D4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_219BF5BD4();
  v4[8] = sub_219BF5BC4();
  v7 = sub_219BF5B44();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_219709968, v7, v6);
}

uint64_t sub_219709968()
{
  v1 = v0[3];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
  v0[11] = v2;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_219709A48;

  return MEMORY[0x282192920](v3, v4);
}

uint64_t sub_219709A48()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_219709B7C, v3, v2);
}

uint64_t sub_219709B7C()
{
  v1 = (v0[3] + v0[11]);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_219BF2EE4();
  if (*(v2 + 16))
  {
    v3 = v0[4];
    v4 = sub_218845F78(v2);

    v5 = (*(*(v3 + 88) + 48))(v4, 0, *(v3 + 80));
    v0[13] = v5;

    v0[2] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v7 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    v9 = v8;
    v10 = sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v7);
    *v6 = v0;
    v6[1] = sub_219709DA8;
    v11 = v0[7];

    return MEMORY[0x2821D3910](v11, v0 + 2, v9, v10);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_219709DA8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_219709F4C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_219709ED4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_219709ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219709F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219709FC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v107 = a3;
  v98 = a4;
  v106 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = v80 - v7;
  v8 = sub_219BDC104();
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  MEMORY[0x28223BE20](v8);
  v99 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDF094();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = v80 - v13;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v5);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = v80 - v15;
  v93 = sub_219BE16D4();
  v92 = *(v93 - 8);
  v16 = MEMORY[0x28223BE20](v93);
  v84 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = v80 - v18;
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v5);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = v80 - v20;
  sub_2187FAD00();
  v22 = *(v21 - 8);
  v102 = v21;
  v103 = v22;
  MEMORY[0x28223BE20](v21);
  v91 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v24 - 8);
  v94 = v80 - v25;
  v104 = sub_219BEBE64();
  v95 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v27 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE5D20, sub_218853400, v5);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v80 - v29;
  sub_218853400();
  v32 = v31;
  v105 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDEDB4();
  if (v41)
  {
    sub_21970AF0C(a1, v106, v107, v40, v41);
  }

  v81 = v27;
  v43 = v104;
  v82 = v34;
  v83 = v37;
  v44 = *(v108 + *((*MEMORY[0x277D85000] & *v108) + 0xA8));
  sub_219BDEC74();
  sub_219BDEDC4();
  sub_219BEB1C4();

  v45 = v105;
  if ((*(v105 + 48))(v30, 1, v32) == 1)
  {
    (*(v83 + 8))(v39, v36);
    v46 = &unk_280EE5D20;
    v47 = sub_218853400;
    v48 = v30;
    return sub_218817724(v48, v46, v47);
  }

  v80[1] = v44;
  v49 = v82;
  (*(v45 + 32))(v82, v30, v32);
  sub_219717404();
  v50 = v94;
  sub_219BEB264();
  v51 = v95;
  v52 = v43;
  if ((*(v95 + 48))(v50, 1, v43) == 1)
  {
    sub_218817724(v50, &qword_280EE3450, MEMORY[0x277D2D430]);
  }

  else
  {
    v53 = v81;
    (*(v51 + 32))(v81, v50, v52);
    sub_219717458(v107, v109);
    if (v110)
    {
      __swift_project_boxed_opaque_existential_1(v109, v110);
      sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430]);
      sub_219BEC144();
      (*(v51 + 8))(v53, v52);
      __swift_destroy_boxed_opaque_existential_1(v109);
    }

    else
    {
      (*(v51 + 8))(v53, v52);
      sub_219308EE0(v109);
    }
  }

  v104 = v32;
  sub_219BE5F84();
  v54 = v96;
  sub_219BEB244();

  v56 = v102;
  v55 = v103;
  v57 = (*(v103 + 48))(v54, 1, v102);
  v107 = v39;
  if (v57 == 1)
  {
    sub_218817724(v54, &unk_280EE58B0, sub_2187FAD00);
    v59 = v99;
    v58 = v100;
    v60 = v97;
  }

  else
  {
    v95 = v36;
    v61 = v91;
    (*(v55 + 32))(v91, v54, v56);
    v62 = (v108 + *((*MEMORY[0x277D85000] & *v108) + 0xB8));
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_21880BAC8();
    v63 = sub_219BF00E4();

    v64 = sub_219BEDFD4();
    v65 = v89;
    (*(*(v64 - 8) + 56))(v89, 1, 1, v64);
    v66 = v90;
    sub_219689464(v63, v65, 0, v90);
    sub_218817724(v65, &qword_280E91DB0, MEMORY[0x277D31F08]);
    v67 = v92;
    v68 = v93;
    if ((*(v92 + 48))(v66, 1, v93) == 1)
    {
      (*(v103 + 8))(v61, v102);
      sub_218817724(v66, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    }

    else
    {
      v69 = v85;
      (*(v67 + 32))(v85, v66, v68);
      sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590]);
      sub_219BDD1F4();
      (*(v67 + 16))(v84, v69, v68);
      v70 = v86;
      sub_219BDF084();
      sub_2187E1408(&unk_280EE88C0, MEMORY[0x277D2D888]);
      v71 = v88;
      sub_219BDD1F4();
      (*(v87 + 8))(v70, v71);
      (*(v67 + 8))(v69, v68);
      (*(v103 + 8))(v61, v102);
    }

    v59 = v99;
    v58 = v100;
    v60 = v97;
    v36 = v95;
    v49 = v82;
  }

  v72 = v107;
  sub_219BEB2F4();
  v73 = v101;
  v74 = (*(v101 + 48))(v60, 1, v58);
  v75 = v98;
  if (v74 == 1)
  {
    (*(v105 + 8))(v49, v104);
    (*(v83 + 8))(v72, v36);
    v46 = &unk_280EE9BB0;
    v47 = MEMORY[0x277CC9AF8];
    v48 = v60;
    return sub_218817724(v48, v46, v47);
  }

  (*(v73 + 32))(v59, v60, v58);
  if (v75)
  {
    (*(v73 + 8))(v59, v58);
    (*(v105 + 8))(v49, v104);
    return (*(v83 + 8))(v107, v36);
  }

  else
  {
    v76 = sub_219BDEC24();
    v77 = v83;
    if (v76)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v79 = v104;
      if (Strong)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_219714430(v59);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v73 + 8))(v59, v58);
      (*(v105 + 8))(v82, v79);
    }

    else
    {
      (*(v73 + 8))(v59, v58);
      (*(v105 + 8))(v49, v104);
    }

    return (*(v77 + 8))(v107, v36);
  }
}

uint64_t sub_21970AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a4;
  v68 = a5;
  v64 = a3;
  v57 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v53 - v9;
  v10 = sub_219BEBE64();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - v13;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v53 - v15;
  v16 = sub_219BE16D4();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  sub_2187FAD00();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D85000];
  sub_219BDEC74();
  sub_219BEB244();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    (*(v28 + 8))(v30, v27);
    v32 = &unk_280EE58B0;
    v33 = sub_2187FAD00;
    v34 = v20;
    return sub_218817724(v34, v32, v33);
  }

  v54 = v23;
  v55 = v28;
  v68 = v27;
  (*(v23 + 32))(v25, v20, v22);
  v35 = (v6 + *((*v31 & *v6) + 0xB8));
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v67 = v22;
  sub_219BE6944();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  v36 = sub_219BF00E4();

  v37 = sub_219BEDFD4();
  v38 = v58;
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v39 = v59;
  sub_219689464(v36, v38, 0, v59);
  sub_218817724(v38, &qword_280E91DB0, MEMORY[0x277D31F08]);
  v41 = v60;
  v40 = v61;
  v42 = v25;
  if ((*(v60 + 48))(v39, 1, v61) == 1)
  {
    sub_218817724(v39, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v43 = v56;
    (*(v41 + 32))(v56, v39, v40);
    sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    sub_219BDD1F4();
    (*(v41 + 8))(v43, v40);
  }

  v45 = v65;
  v44 = v66;
  v46 = v62;
  v47 = v63;
  v48 = v68;
  v49 = v55;
  sub_219717404();
  sub_219BEB274();
  v50 = (*(v45 + 48))(v46, 1, v44);
  v51 = v64;
  if (v50 == 1)
  {
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    v32 = &qword_280EE3450;
    v33 = MEMORY[0x277D2D430];
    v34 = v46;
    return sub_218817724(v34, v32, v33);
  }

  (*(v45 + 32))(v47, v46, v44);
  sub_219717458(v51, v69);
  if (v70)
  {
    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430]);
    sub_219BEC144();
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return sub_219308EE0(v69);
  }
}

uint64_t sub_21970B7CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v120 = a3;
  v114 = a4;
  v119 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = v91 - v7;
  v112 = sub_219BDC104();
  v116 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v115 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BDF094();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = v91 - v11;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = v91 - v13;
  v104 = sub_219BE16D4();
  v105 = *(v104 - 8);
  v14 = MEMORY[0x28223BE20](v104);
  v97 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = v91 - v16;
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v5);
  MEMORY[0x28223BE20](v17 - 8);
  v110 = v91 - v18;
  sub_2187FAD00();
  v109 = v19;
  v111 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v106 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v21 - 8);
  v107 = v91 - v22;
  v118 = sub_219BEBE64();
  v108 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE5D20, sub_218853400, v5);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v91 - v26;
  sub_218853400();
  v29 = v28;
  v117 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BDD334();
  if (v38)
  {
    sub_21970C7B0(a1, v119, v120, v37, v38);
  }

  v92 = v24;
  v40 = v118;
  v93 = v31;
  v95 = v29;
  v94 = v34;
  v96 = v33;
  v41 = MEMORY[0x277D85000];
  v42 = *(v121 + *((*MEMORY[0x277D85000] & *v121) + 0xA0));
  sub_219BDEBD4();
  sub_219BDD344();
  if (!v43)
  {
    v51 = *(v94 + 8);
    v52 = v36;
    return v51(v52, v96);
  }

  v44 = v27;
  v45 = v96;
  sub_219BEB1C4();

  v46 = v117;
  v47 = v95;
  if ((*(v117 + 48))(v27, 1, v95) == 1)
  {
    (*(v94 + 8))(v36, v45);
    v48 = &unk_280EE5D20;
    v49 = sub_218853400;
    v50 = v27;
    return sub_218817724(v50, v48, v49);
  }

  v91[1] = v42;
  v53 = v93;
  (*(v46 + 32))(v93, v44, v47);
  sub_219717404();
  v54 = v107;
  sub_219BEB264();
  v55 = v108;
  v56 = v40;
  if ((*(v108 + 48))(v54, 1, v40) == 1)
  {
    sub_218817724(v54, &qword_280EE3450, MEMORY[0x277D2D430]);
  }

  else
  {
    v57 = v92;
    (*(v55 + 32))(v92, v54, v56);
    sub_219717458(v120, &v122);
    if (v123)
    {
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430]);
      sub_219BEC144();
      (*(v55 + 8))(v57, v56);
      __swift_destroy_boxed_opaque_existential_1(&v122);
    }

    else
    {
      (*(v55 + 8))(v57, v56);
      sub_219308EE0(&v122);
    }
  }

  sub_219BE5F84();
  v58 = v110;
  sub_219BEB244();

  v59 = v111;
  v60 = v109;
  v61 = (*(v111 + 48))(v58, 1, v109);
  v120 = v36;
  if (v61 == 1)
  {
    sub_218817724(v58, &unk_280EE58B0, sub_2187FAD00);
    v62 = v112;
    v63 = v113;
    v65 = v115;
    v64 = v116;
  }

  else
  {
    v66 = v106;
    (*(v59 + 32))(v106, v58, v60);
    v67 = (v121 + *((*v41 & *v121) + 0xB8));
    v68 = v59;
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    sub_219BE6944();
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_21880BAC8();
    v69 = sub_219BF00E4();

    v70 = sub_219BEDFD4();
    v71 = v102;
    (*(*(v70 - 8) + 56))(v102, 1, 1, v70);
    v72 = v103;
    sub_219689464(v69, v71, 0, v103);
    sub_218817724(v71, &qword_280E91DB0, MEMORY[0x277D31F08]);
    v73 = v105;
    v74 = v104;
    if ((*(v105 + 48))(v72, 1, v104) == 1)
    {
      (*(v68 + 8))(v66, v60);
      sub_218817724(v72, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    }

    else
    {
      v75 = v98;
      (*(v73 + 32))(v98, v72, v74);
      sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590]);
      sub_219BDD1F4();
      (*(v73 + 16))(v97, v75, v74);
      v76 = v99;
      sub_219BDF084();
      sub_2187E1408(&unk_280EE88C0, MEMORY[0x277D2D888]);
      v77 = v101;
      sub_219BDD1F4();
      (*(v100 + 8))(v76, v77);
      (*(v73 + 8))(v75, v74);
      (*(v68 + 8))(v106, v60);
    }

    v62 = v112;
    v63 = v113;
    v65 = v115;
    v64 = v116;
    v53 = v93;
  }

  v78 = v53;
  v79 = v96;
  v80 = v120;
  sub_219BEB2F4();
  v81 = (*(v64 + 48))(v63, 1, v62);
  v82 = v114;
  v83 = v117;
  if (v81 == 1)
  {
    (*(v117 + 8))(v78, v95);
    (*(v94 + 8))(v80, v79);
    v48 = &unk_280EE9BB0;
    v49 = MEMORY[0x277CC9AF8];
    v50 = v63;
    return sub_218817724(v50, v48, v49);
  }

  (*(v64 + 32))(v65, v63, v62);
  if (v82)
  {
    (*(v64 + 8))(v65, v62);
    (*(v83 + 8))(v93, v95);
    v51 = *(v94 + 8);
    v52 = v120;
    return v51(v52, v96);
  }

  v84 = sub_219BDEB84();
  v85 = v96;
  v86 = v120;
  v87 = v93;
  if (v84)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v89 = v94;
    v90 = v95;
    if (Strong)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_219714430(v65);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      v90 = v95;
    }

    (*(v64 + 8))(v65, v62);
    (*(v83 + 8))(v87, v90);
    return (*(v89 + 8))(v86, v85);
  }

  else
  {
    (*(v64 + 8))(v65, v62);
    (*(v83 + 8))(v87, v95);
    return (*(v94 + 8))(v86, v85);
  }
}

uint64_t sub_21970C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a4;
  v68 = a5;
  v64 = a3;
  v57 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v53 - v9;
  v10 = sub_219BEBE64();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - v13;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v53 - v15;
  v16 = sub_219BE16D4();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  sub_2187FAD00();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D85000];
  sub_219BDEBD4();
  sub_219BEB244();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    (*(v28 + 8))(v30, v27);
    v32 = &unk_280EE58B0;
    v33 = sub_2187FAD00;
    v34 = v20;
    return sub_218817724(v34, v32, v33);
  }

  v54 = v23;
  v55 = v28;
  v68 = v27;
  (*(v23 + 32))(v25, v20, v22);
  v35 = (v6 + *((*v31 & *v6) + 0xB8));
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v67 = v22;
  sub_219BE6944();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_21880BAC8();
  v36 = sub_219BF00E4();

  v37 = sub_219BEDFD4();
  v38 = v58;
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v39 = v59;
  sub_219689464(v36, v38, 0, v59);
  sub_218817724(v38, &qword_280E91DB0, MEMORY[0x277D31F08]);
  v41 = v60;
  v40 = v61;
  v42 = v25;
  if ((*(v60 + 48))(v39, 1, v61) == 1)
  {
    sub_218817724(v39, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v43 = v56;
    (*(v41 + 32))(v56, v39, v40);
    sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    sub_219BDD1F4();
    (*(v41 + 8))(v43, v40);
  }

  v45 = v65;
  v44 = v66;
  v46 = v62;
  v47 = v63;
  v48 = v68;
  v49 = v55;
  sub_219717404();
  sub_219BEB274();
  v50 = (*(v45 + 48))(v46, 1, v44);
  v51 = v64;
  if (v50 == 1)
  {
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    v32 = &qword_280EE3450;
    v33 = MEMORY[0x277D2D430];
    v34 = v46;
    return sub_218817724(v34, v32, v33);
  }

  (*(v45 + 32))(v47, v46, v44);
  sub_219717458(v51, v69);
  if (v70)
  {
    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_2187E1408(&unk_280EE3458, MEMORY[0x277D2D430]);
    sub_219BEC144();
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    (*(v45 + 8))(v47, v44);
    (*(v54 + 8))(v42, v67);
    (*(v49 + 8))(v30, v48);
    return sub_219308EE0(v69);
  }
}

uint64_t sub_21970D070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v47 = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v44 - v6;
  sub_2187DD4F0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v44 - v8;
  v9 = sub_219BE16D4();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE58B0, sub_2187FAD00, v4);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v44 - v12;
  sub_2187FAD00();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE5D20, sub_218853400, v4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  sub_218853400();
  v19 = v18;
  v55 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v3;
  sub_219BE6EC4();
  v60 = v61;
  v27 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  v28 = v27;
  v29 = v23;
  v30 = v19;
  v31 = v55;
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v28);
  sub_219BE7B94();

  sub_219BEB1C4();
  if ((*(v31 + 48))(v17, 1, v30) == 1)
  {
    (*(v24 + 8))(v26, v29);
    v32 = &unk_280EE5D20;
    v33 = sub_218853400;
  }

  else
  {
    v57 = v24;
    (*(v31 + 32))(v21, v17, v30);
    sub_219BE5F84();
    v17 = v54;
    sub_219BEB244();

    if ((*(v58 + 48))(v17, 1, v59) == 1)
    {
      (*(v31 + 8))(v21, v30);
      (*(v57 + 8))(v26, v29);
      v32 = &unk_280EE58B0;
      v33 = sub_2187FAD00;
    }

    else
    {
      v45 = v21;
      v34 = v31;
      v56 = v29;
      v35 = v49;
      (*(v58 + 32))(v49, v17, v59);
      v36 = (v48 + *((*MEMORY[0x277D85000] & *v48) + 0xB8));
      v48 = __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_21880BAC8();
      v54 = v26;
      v37 = sub_219BF00E4();

      v38 = sub_219BEDFD4();
      v39 = v50;
      (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
      v17 = v51;
      sub_219689464(v37, v39, 0, v51);
      sub_218817724(v39, &qword_280E91DB0, MEMORY[0x277D31F08]);
      v41 = v52;
      v40 = v53;
      if ((*(v52 + 48))(v17, 1, v53) != 1)
      {
        v43 = v46;
        (*(v41 + 32))(v46, v17, v40);
        sub_2187E1408(&unk_280EE7FB0, MEMORY[0x277D2F590]);
        sub_219BDCCC4();
        (*(v41 + 8))(v43, v40);
        (*(v58 + 8))(v35, v59);
        (*(v34 + 8))(v45, v30);
        return (*(v57 + 8))(v54, v56);
      }

      (*(v58 + 8))(v35, v59);
      (*(v34 + 8))(v45, v30);
      (*(v57 + 8))(v54, v56);
      v32 = &unk_280EE7FA0;
      v33 = MEMORY[0x277D2F590];
    }
  }

  return sub_218817724(v17, v32, v33);
}

uint64_t sub_21970D96C(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 80))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v2);
  sub_219BE6EF4();
}

uint64_t sub_21970DAA8(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 88))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v2);
  sub_219BE6EF4();
}

void sub_21970DBEC()
{
  swift_getObjectType();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v0 = sub_219BE5314();
  MEMORY[0x28223BE20](v0);
  sub_219BE3204();
  v1 = sub_219BE1C44();
  sub_219BE2F94();
}

void sub_21970DD24(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = sub_219BE7B04();
    if (v2 >> 62)
    {
      if (v2 >> 62 == 1 && swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_2197174E8(1, 0, Strong);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_21880BB00(v2);
    }
  }

  else
  {
    v4 = *(*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig);
    if (v4)
    {
      v5 = (v4 + OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_onRefresh);
      swift_beginAccess();
      v6 = *v5;
      if (*v5)
      {

        v6(v7);
        sub_2187FABEC(v6);
      }
    }
  }
}

uint64_t sub_21970DE84()
{
  swift_getObjectType();
  result = sub_2196F5C28();
  if (result)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_219A1B0CC(result);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21970DF8C()
{
  swift_getObjectType();
  sub_219BF36B4();
  result = sub_2196F5C28();
  if (result)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_219A1B0CC(result);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21970E0E4(uint64_t a1, uint64_t a2)
{
  v123[2] = swift_getObjectType();
  v4 = *MEMORY[0x277D85000] & *v2;
  v152 = v2;
  v132 = v4;
  v136 = sub_219BE61B4();
  v135 = *(v136 - 1);
  v5 = MEMORY[0x28223BE20](v136);
  v134 = v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = v123 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = v123 - v10;
  v128 = sub_219BE35B4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEEC14();
  v145 = *(v12 - 8);
  v146 = v12;
  MEMORY[0x28223BE20](v12);
  v144 = v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], v8);
  MEMORY[0x28223BE20](v14 - 8);
  v137 = v123 - v15;
  v140 = sub_219BE3C04();
  v143 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE39F4();
  v18 = *(v17 - 8);
  v147 = v17;
  v148 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v141 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v138 = v123 - v22;
  MEMORY[0x28223BE20](v21);
  v124 = (v123 - v23);
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v8);
  MEMORY[0x28223BE20](v24 - 8);
  v125 = v123 - v25;
  v26 = sub_219BE3794();
  v150 = *(v26 - 8);
  v151 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v130 = v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v131 = v123 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v142 = v123 - v32;
  MEMORY[0x28223BE20](v31);
  v149 = v123 - v33;
  v34 = sub_219BE3514();
  v35 = *(v34 - 8);
  v36 = v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = v123 - v40;
  v153 = a2;
  sub_219BE35A4();
  sub_2187DD4F0(0, &qword_280E8C060, MEMORY[0x277D31550], MEMORY[0x277D84560]);
  v42 = *(v35 + 72);
  v43 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C0EE20;
  v45 = *(v36 + 104);
  v45(v44 + v43, *MEMORY[0x277D314C8], v34);
  v45(v44 + v43 + v42, *MEMORY[0x277D314D0], v34);
  v45(v44 + v43 + 2 * v42, *MEMORY[0x277D314D8], v34);
  v46 = 3 * v42;
  v47 = *MEMORY[0x277D314F8];
  v45(v44 + v43 + v46, v47, v34);
  LOBYTE(a2) = sub_2190894A0(v41, v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((a2 & 1) == 0)
  {
    return (*(v36 + 8))(v41, v34);
  }

  v45(v39, v47, v34);
  sub_2187E1408(&unk_280EE6680, MEMORY[0x277D31550]);
  v154 = v41;
  sub_219BF5874();
  sub_219BF5874();
  if (v155 == v158 && v156 == v159)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_219BF78F4();
  }

  v50 = *(v36 + 8);
  v123[1] = v36 + 8;
  v123[0] = v50;
  v50(v39, v34);

  if ((v48 & 1) == 0)
  {
    v58 = sub_219BE34F4();
    v60 = v59;
    (*(v127 + 16))(v126, v153, v128);

    v61 = v144;
    sub_219BEEBD4();
    v62 = v152;
    v63 = v145;
    v64 = v129;
    v65 = v61;
    v66 = v146;
    (*(v145 + 16))(v129, v65, v146);
    (*(v63 + 56))(v64, 0, 1, v66);
    v67 = *(v132 + 80);
    v68 = *(*(v132 + 88) + 96);
    v148 = v58;
    v149 = v68(v58, v60, v64, v67);
    sub_218817724(v64, &qword_280E918A8, MEMORY[0x277D322C0]);
    sub_219BE6EC4();
    v69 = v133;
    sub_219BE6F74();

    v70 = v135;
    v71 = v134;
    v72 = v136;
    (*(v135 + 104))(v134, *MEMORY[0x277D6D518], v136);
    LOBYTE(v66) = sub_219BE61A4();
    v73 = *(v70 + 8);
    v73(v71, v72);
    v73(v69, v72);
    if (v66)
    {

      v155 = v149;
      v74 = MEMORY[0x277D6D888];
      sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
      sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v74);
      sub_219BE6EF4();
    }

    else
    {
      sub_2196F6054();
      sub_219BEE424();
    }

    v93 = v151;
    v94 = sub_21970F69C();
    v95 = v154;
    if ((v94 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_219BE3584();
    (*(v150 + 104))(v130, *MEMORY[0x277D31678], v93);
    sub_2187E1408(&qword_280EE6620, MEMORY[0x277D31680]);
    sub_219BF5874();
    sub_219BF5874();
    if (v155 == v158 && v156 == v159)
    {
      v96 = *(v150 + 8);
      v96(v130, v93);
      v96(v131, v93);
    }

    else
    {
      v114 = v93;
      v115 = sub_219BF78F4();
      v116 = *(v150 + 8);
      v116(v130, v114);
      v116(v131, v114);

      if ((v115 & 1) == 0)
      {
LABEL_37:

        (*(v145 + 8))(v144, v146);
        v118 = v95;
        return (v123[0])(v118, v34);
      }
    }

    v117 = (v62 + *((*MEMORY[0x277D85000] & *v62) + 0x130));
    __swift_project_boxed_opaque_existential_1(v117, v117[3]);
    sub_2192265C0(v95);
    goto LABEL_37;
  }

  v51 = v152;
  v52 = *((*MEMORY[0x277D85000] & *v152) + 0x110);
  sub_218718690(v152 + v52, &v155);
  __swift_project_boxed_opaque_existential_1(&v155, v157);
  v136 = sub_219BE3AA4();
  __swift_destroy_boxed_opaque_existential_1(&v155);
  v146 = v52;
  sub_218718690(v51 + v52, &v155);
  __swift_project_boxed_opaque_existential_1(&v155, v157);
  v53 = v125;
  sub_219BE3AD4();
  v54 = v150;
  v55 = v151;
  v56 = *(v150 + 48);
  if (v56(v53, 1, v151) == 1)
  {
    (*(v54 + 104))(v149, *MEMORY[0x277D31670], v55);
    v57 = v54;
    if (v56(v53, 1, v55) != 1)
    {
      sub_218817724(v53, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v54 + 32))(v149, v53, v55);
    v57 = v54;
  }

  __swift_destroy_boxed_opaque_existential_1(&v155);
  sub_218718690(v51 + v146, &v155);
  __swift_project_boxed_opaque_existential_1(&v155, v157);
  v135 = sub_219BE3AE4();
  v76 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v155);
  sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
  v77 = v148;
  v78 = *(v148 + 72);
  v79 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_219C09EC0;
  v144 = v79;
  v81 = v80 + v79;
  (*(v57 + 16))(v81, v149, v55);
  v82 = v51;
  v83 = *(v77 + 104);
  v84 = v147;
  (v83)(v81, *MEMORY[0x277D317E8], v147);
  v145 = v78;
  v85 = (v81 + v78);
  *v85 = v135;
  v85[1] = v76;
  v83();
  sub_218718690(v82 + v146, &v155);
  __swift_project_boxed_opaque_existential_1(&v155, v157);
  v86 = sub_219BE3A14();
  if (v87)
  {
    v88 = v86;
    v89 = v87;
    __swift_destroy_boxed_opaque_existential_1(&v155);
    v90 = v124;
    *v124 = v88;
    v90[1] = v89;
    (v83)(v90, *MEMORY[0x277D317D8], v84);
    v92 = *(v80 + 16);
    v91 = *(v80 + 24);
    if (v92 >= v91 >> 1)
    {
      v80 = sub_2191F80F4(v91 > 1, v92 + 1, 1, v80);
    }

    *(v80 + 16) = v92 + 1;
    (*(v148 + 32))(&v144[v80 + v92 * v145], v90, v84);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v155);
  }

  sub_218718690(v152 + v146, &v155);
  __swift_project_boxed_opaque_existential_1(&v155, v157);
  v97 = v137;
  sub_219BE3AB4();
  v98 = v143;
  v99 = v140;
  if ((*(v143 + 48))(v97, 1, v140) == 1)
  {
    sub_218817724(v97, &qword_280EE6510, MEMORY[0x277D318F8]);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    v100 = v150;
    v101 = v147;
  }

  else
  {
    v102 = v139;
    (*(v98 + 32))(v139, v97, v99);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    v103 = *(v98 + 16);
    v104 = v138;
    v103(v138, v102, v99);
    v101 = v147;
    (v83)(v104, *MEMORY[0x277D317E0], v147);
    v106 = *(v80 + 16);
    v105 = *(v80 + 24);
    v100 = v150;
    if (v106 >= v105 >> 1)
    {
      v80 = sub_2191F80F4(v105 > 1, v106 + 1, 1, v80);
    }

    (*(v143 + 8))(v139, v99);
    *(v80 + 16) = v106 + 1;
    (*(v148 + 32))(&v144[v80 + v106 * v145], v138, v101);
  }

  if ((sub_21970F69C() & 1) == 0)
  {

    (*(v100 + 8))(v149, v151);
    (v123[0])(v154, v34);
  }

  v107 = v141;
  (*(v36 + 16))(v141, v154, v34);
  (v83)(v107, *MEMORY[0x277D317F8], v101);
  v109 = *(v80 + 16);
  v108 = *(v80 + 24);
  if (v109 >= v108 >> 1)
  {
    v80 = sub_2191F80F4(v108 > 1, v109 + 1, 1, v80);
  }

  v110 = v152;
  *(v80 + 16) = v109 + 1;
  (*(v148 + 32))(&v144[v80 + v109 * v145], v141, v101);
  Strong = swift_unknownObjectWeakLoadStrong();
  v112 = v151;
  v113 = v149;
  if (Strong)
  {
    sub_219A1A5DC(v136, v80, Strong);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v100 + 104))(v142, *MEMORY[0x277D31678], v112);
  sub_2187E1408(&qword_280EE6620, MEMORY[0x277D31680]);
  sub_219BF5874();
  sub_219BF5874();
  if (v155 == v158 && v156 == v159)
  {
    v119 = 1;
  }

  else
  {
    v119 = sub_219BF78F4();
  }

  v120 = *(v100 + 8);
  v120(v142, v112);

  if (v119)
  {
    v121 = (v110 + *((*MEMORY[0x277D85000] & *v110) + 0x130));
    __swift_project_boxed_opaque_existential_1(v121, v121[3]);
    v122 = v154;
    sub_2192265C0(v154);

    v120(v113, v112);
    v118 = v122;
  }

  else
  {

    v120(v113, v112);
    v118 = v154;
  }

  return (v123[0])(v118, v34);
}

uint64_t sub_21970F69C()
{
  v0 = sub_219BE38C4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = sub_219BE3514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE35A4();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277D314C8] || v11 == *MEMORY[0x277D314D0] || v11 == *MEMORY[0x277D314D8])
  {
    sub_219BE3574();
    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D31720])
    {
      return 1;
    }

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    if (v11 == *MEMORY[0x277D314F8])
    {
      sub_219BE3574();
      v15 = (*(v1 + 88))(v6, v0) == *MEMORY[0x277D31750];
      (*(v1 + 8))(v6, v0);
      return v15;
    }

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_21970F924(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & v4;
  sub_2187DD4F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29[-1] - v8;
  v10 = sub_219BE3514();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(v2 + *((v5 & v4) + 0x110), v29);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_219BE3A64();
  __swift_destroy_boxed_opaque_existential_1(v29);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D314C8] || v14 == *MEMORY[0x277D314D0] || v14 == *MEMORY[0x277D314D8])
  {
    v17 = sub_219BE34F4();
    v19 = v18;
    v20 = sub_219BEEC14();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = (*(*(v6 + 88) + 96))(v17, v19, v9, *(v6 + 80));

    sub_218817724(v9, &qword_280E918A8, MEMORY[0x277D322C0]);
    v29[0] = v21;
    v22 = MEMORY[0x277D6D888];
    sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
    sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v22);
    sub_219BE6EF4();
  }

  else if (v14 == *MEMORY[0x277D314F8])
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_219A1A5DC(0, MEMORY[0x277D84F90], result);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    v25 = sub_219BE34F4();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_2186FC3BC();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_219BE5314();

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

void sub_21970FE38(void *a1, void *a2, uint64_t a3)
{
  v82 = a2;
  v88 = a3;
  v85 = a1;
  v83 = sub_219BE39F4();
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v74 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v67 - v6;
  v7 = sub_219BE3C04();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BDBD64();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - v12;
  v86 = sub_219BE3794();
  v84 = *(v86 - 8);
  v14 = MEMORY[0x28223BE20](v86);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v67 - v16;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_2187DD4F0(0, &qword_280E8C060, MEMORY[0x277D31550], MEMORY[0x277D84560]);
  v17 = sub_219BE3514();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v75 = xmmword_219C0EE20;
  *(v21 + 16) = xmmword_219C0EE20;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277D314C8], v17);
  v23(v22 + v19, *MEMORY[0x277D314D0], v17);
  v23(v22 + 2 * v19, *MEMORY[0x277D314D8], v17);
  v23(v22 + 3 * v19, *MEMORY[0x277D314F8], v17);
  v24 = v88;
  LOBYTE(v19) = sub_2190894A0(v88, v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = v82;
  if ((v19 & 1) != 0 && v82)
  {
    v70 = v9;
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    v82 = v25;
    sub_219BE3AD4();
    v26 = v84;
    v27 = *(v84 + 48);
    v28 = v86;
    if (v27(v13, 1, v86) == 1)
    {
      v29 = *(v26 + 104);
      v29(v87, *MEMORY[0x277D31670], v28);
      if (v27(v13, 1, v28) != 1)
      {
        sub_218817724(v13, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v26 + 32))(v87, v13, v28);
      v29 = *(v26 + 104);
    }

    v30 = v76;
    v29(v76, *MEMORY[0x277D31678], v28);
    sub_2187E1408(&qword_280EE6620, MEMORY[0x277D31680]);
    sub_219BF5874();
    sub_219BF5874();
    if (v91 == v89 && v92 == v90)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_219BF78F4();
    }

    v32 = *(v84 + 8);
    v76 = (v84 + 8);
    v69 = v32;
    v32(v30, v28);

    if (v31)
    {
      v33 = (v81 + *((*MEMORY[0x277D85000] & *v81) + 0x130));
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_219227798(v24);
    }

    sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
    v34 = v80;
    v35 = *(v80 + 72);
    v36 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v75;
    *&v75 = v37;
    v68 = v36;
    v38 = v37 + v36;
    (*(v18 + 16))(v37 + v36, v24, v17);
    v39 = *(v34 + 104);
    v39(v38, *MEMORY[0x277D317F8], v83);
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    v40 = sub_219BE3A14();
    if (!v41)
    {
      v42 = v71;
      sub_219BDBD54();
      v43 = sub_219BDBD44();
      v45 = v44;
      (*(v72 + 8))(v42, v73);
      v41 = v45;
      v40 = v43;
    }

    v46 = v87;
    v47 = (v38 + v35);
    *v47 = v40;
    v47[1] = v41;
    v48 = v83;
    v39(v38 + v35, *MEMORY[0x277D317D8], v83);
    (*(v84 + 16))(v38 + 2 * v35, v46, v86);
    v39(v38 + 2 * v35, *MEMORY[0x277D317E8], v48);
    v49 = (v38 + 3 * v35);
    v50 = v85;
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    *v49 = sub_219BE3AE4();
    v49[1] = v51;
    v39(v49, *MEMORY[0x277D317F0], v48);
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v52 = v77;
    sub_219BE3AB4();
    v54 = v78;
    v53 = v79;
    if ((*(v78 + 48))(v52, 1, v79) == 1)
    {
      sub_218817724(v52, &qword_280EE6510, MEMORY[0x277D318F8]);
      v55 = v82;
      v56 = MEMORY[0x277D85000];
      v57 = v75;
    }

    else
    {
      v58 = v70;
      (*(v54 + 32))(v70, v52, v53);
      v59 = v74;
      (*(v54 + 16))(v74, v58, v53);
      v39(v59, *MEMORY[0x277D317E0], v48);
      v60 = v75;
      v62 = *(v75 + 16);
      v61 = *(v75 + 24);
      if (v62 >= v61 >> 1)
      {
        v60 = sub_2191F80F4(v61 > 1, v62 + 1, 1, v75);
      }

      v55 = v82;
      v56 = MEMORY[0x277D85000];
      (*(v54 + 8))(v70, v53);
      *(v60 + 16) = v62 + 1;
      (*(v80 + 32))(v60 + v68 + v62 * v35, v59, v48);
      v57 = v60;
    }

    v63 = v81;
    v64 = (v81 + *((*v56 & *v81) + 0xE8));
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v65 = swift_allocObject();
    v65[2] = v63;
    v65[3] = v55;
    v65[4] = v57;
    v66 = v55;
    v63;
    sub_218EAA284(0, sub_2197177F0, v65);

    if ([v66 style] == 2)
    {
      sub_21970F924(v88);

      v69(v87, v86);
    }

    else
    {
      v69(v87, v86);
    }
  }
}

uint64_t sub_219710A24(uint64_t a1, void *a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for TodayInteractor();
    sub_219A1B288(a2, a3, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219710AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  v110 = a2;
  v112 = type metadata accessor for EngagementPresentationFailure();
  v113 = *(v112 - 8);
  v4 = MEMORY[0x28223BE20](v112);
  v115 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v5;
  MEMORY[0x28223BE20](v4);
  v116 = &v97 - v6;
  v109 = sub_219BDBD64();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3C04();
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x28223BE20](v8);
  v122 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE39F4();
  v126 = *(v10 - 8);
  v127 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v121 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = (&v97 - v13);
  v14 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v120 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v130 = &v97 - v18;
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v14);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v118 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v97 - v22;
  v23 = sub_219BE3514();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v97 - v28;
  v30 = *(v24 + 104);
  v128 = *MEMORY[0x277D314F8];
  v131 = v30;
  (v30)(&v97 - v28);
  sub_2187E1408(&unk_280EE6680, MEMORY[0x277D31550]);
  sub_219BF5874();
  sub_219BF5874();
  if (v133[0] == v135 && v133[1] == v136)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_219BF78F4();
  }

  v32 = *(v24 + 8);
  v32(v29, v23);

  if (v31)
  {
    v34 = v125;
    v117 = *((*MEMORY[0x277D85000] & *v125) + 0x110);
    sub_218718690(v117 + v125, v133);
    __swift_project_boxed_opaque_existential_1(v133, v134);
    v132 = v24 + 104;
    v35 = v23;
    v131(v27, v128, v23);
    v99 = sub_219BE3A14();
    v105 = v36;
    v32(v27, v23);
    __swift_destroy_boxed_opaque_existential_1(v133);
    v37 = v32;
    v106 = v32;
    v38 = v117;
    sub_218718690(v117 + v34, v133);
    __swift_project_boxed_opaque_existential_1(v133, v134);
    v39 = v128;
    v131(v27, v128, v23);
    sub_219BE3AD4();
    v37(v27, v23);
    __swift_destroy_boxed_opaque_existential_1(v133);
    sub_218718690(v38 + v34, v133);
    __swift_project_boxed_opaque_existential_1(v133, v134);
    v40 = v39;
    v41 = v131;
    v131(v27, v39, v35);
    v102 = sub_219BE3AE4();
    v101 = v42;
    v43 = v106;
    v106(v27, v35);
    __swift_destroy_boxed_opaque_existential_1(v133);
    sub_218718690(v117 + v34, v133);
    __swift_project_boxed_opaque_existential_1(v133, v134);
    v41(v27, v40, v35);
    v44 = v35;
    sub_219BE3AB4();
    v43(v27, v35);
    __swift_destroy_boxed_opaque_existential_1(v133);
    sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
    v45 = v126;
    v46 = *(v126 + 72);
    v47 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_219C0B8C0;
    v104 = v48;
    v103 = v47;
    v49 = v48 + v47;
    v98 = v44;
    v131((v48 + v47), v40, v44);
    v50 = *MEMORY[0x277D317F8];
    v51 = v127;
    v117 = *(v45 + 104);
    (v117)(v49, v50, v127);
    v52 = v118;
    sub_218812314(v129, v118, &unk_280EE6610, MEMORY[0x277D31680]);
    v53 = sub_219BE3794();
    v54 = *(v53 - 8);
    v55 = *(v54 + 48);
    v56 = v55(v52, 1, v53);
    v106 = v53;
    v100 = v54;
    if (v56 == 1)
    {
      (*(v54 + 104))(v49 + v46, *MEMORY[0x277D31670], v53);
      v57 = v55(v52, 1, v53) == 1;
      v58 = v123;
      v59 = v52;
      v61 = v119;
      v60 = v120;
      v62 = v46;
      if (!v57)
      {
        sub_218817724(v59, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v54 + 32))(v49 + v46, v52, v53);
      v58 = v123;
      v61 = v119;
      v60 = v120;
      v62 = v46;
    }

    v63 = v117;
    (v117)(v49 + v62, *MEMORY[0x277D317E8], v51);
    v64 = (v49 + 2 * v62);
    v65 = v63;
    v66 = v101;
    *v64 = v102;
    v64[1] = v66;
    v63();
    v67 = v105;
    v68 = v104;
    v69 = v103;
    if (v105)
    {
      *v61 = v99;
      v61[1] = v67;
      (v65)(v61, *MEMORY[0x277D317D8], v51);
      v71 = *(v68 + 2);
      v70 = *(v68 + 3);
      if (v71 >= v70 >> 1)
      {
        v68 = sub_2191F80F4(v70 > 1, v71 + 1, 1, v68);
      }

      *(v68 + 2) = v71 + 1;
      v51 = v127;
      (*(v126 + 32))(&v68[v69 + v71 * v62], v61, v127);
      v65 = v117;
    }

    sub_218812314(v130, v60, &qword_280EE6510, MEMORY[0x277D318F8]);
    v72 = v124;
    if ((*(v58 + 48))(v60, 1, v124) == 1)
    {
      sub_218817724(v60, &qword_280EE6510, MEMORY[0x277D318F8]);
      v73 = v106;
    }

    else
    {
      v74 = v65;
      v75 = v122;
      (*(v58 + 32))(v122, v60, v72);
      v76 = v121;
      (*(v58 + 16))(v121, v75, v72);
      (v74)(v76, *MEMORY[0x277D317E0], v51);
      v78 = *(v68 + 2);
      v77 = *(v68 + 3);
      if (v78 >= v77 >> 1)
      {
        v68 = sub_2191F80F4(v77 > 1, v78 + 1, 1, v68);
      }

      v73 = v106;
      (*(v58 + 8))(v122, v124);
      *(v68 + 2) = v78 + 1;
      (*(v126 + 32))(&v68[v69 + v78 * v62], v121, v127);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = sub_219BE39A4();
      if (v80)
      {
        v81 = v79;
        v82 = v80;
      }

      else
      {
        v83 = v107;
        sub_219BDBD54();
        v81 = sub_219BDBD44();
        v82 = v84;
        (*(v108 + 8))(v83, v109);
      }

      v85 = sub_219BE39D4();
      v87 = v86;

      v88 = v116;
      v131(v116, v128, v98);
      v89 = v112;
      v90 = *(v112 + 28);
      v91 = sub_219BE3774();
      (*(*(v91 - 8) + 16))(v88 + v90, v110, v91);
      (*(v100 + 16))(v88 + v89[8], v111, v73);
      v92 = (v88 + v89[5]);
      *v92 = v81;
      v92[1] = v82;
      v93 = (v88 + v89[6]);
      *v93 = v85;
      v93[1] = v87;
      v94 = v115;
      sub_2187F684C(v88, v115, type metadata accessor for EngagementPresentationFailure);
      v95 = (*(v113 + 80) + 16) & ~*(v113 + 80);
      v96 = swift_allocObject();
      sub_21880BBE4(v94, v96 + v95, type metadata accessor for EngagementPresentationFailure);
      sub_219BDD154();

      sub_21880BA68(v88, type metadata accessor for EngagementPresentationFailure);
      sub_218817724(v130, &qword_280EE6510, MEMORY[0x277D318F8]);
      sub_218817724(v129, &unk_280EE6610, MEMORY[0x277D31680]);
      return swift_unknownObjectRelease();
    }

    else
    {

      sub_218817724(v130, &qword_280EE6510, MEMORY[0x277D318F8]);
      return sub_218817724(v129, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  return result;
}

uint64_t sub_2197119E0()
{
  v54[1] = swift_getObjectType();
  v1 = sub_219BE3C04();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v67 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BE39F4();
  v64 = *(v73 - 8);
  v70 = v73 - 8;
  v76 = v64;
  v3 = MEMORY[0x28223BE20](v73 - 8);
  v66 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = (v54 - v5);
  v6 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v65 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = v54 - v10;
  v62 = MEMORY[0x277D31680];
  sub_2187DD4F0(0, &unk_280EE6610, MEMORY[0x277D31680], v6);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v61 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = v54 - v14;
  v15 = sub_219BE3514();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  sub_218718690(v0 + v19, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v57 = *MEMORY[0x277D314F8];
  v58 = *(v16 + 104);
  v72 = v16 + 104;
  v58(v18);
  v54[0] = sub_219BE3A14();
  v63 = v20;
  v21 = *(v16 + 8);
  v54[2] = v16 + 8;
  v21(v18, v15);
  v55 = v21;
  __swift_destroy_boxed_opaque_existential_1(v78);
  v75 = v0;
  v56 = v19;
  sub_218718690(v0 + v19, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v22 = v57;
  v23 = v58;
  (v58)(v18, v57, v15);
  sub_219BE3AD4();
  v21(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_218718690(v0 + v19, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v23(v18, v22, v15);
  v24 = v23;
  v60 = sub_219BE3AE4();
  v59 = v25;
  v26 = v55;
  v55(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_218718690(v75 + v56, v78);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v24(v18, v22, v15);
  sub_219BE3AB4();
  v26(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_2187DD4F0(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
  v27 = *(v64 + 72);
  v28 = v76;
  v29 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C0B8C0;
  v70 = v29;
  v31 = v30 + v29;
  v24(v31, v22, v15);
  v32 = *(v28 + 104);
  (v32)(v31, *MEMORY[0x277D317F8], v73);
  v33 = v61;
  sub_218812314(v77, v61, &unk_280EE6610, v62);
  v34 = sub_219BE3794();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v33, 1, v34) == 1)
  {
    (*(v35 + 104))(v31 + v27, *MEMORY[0x277D31670], v34);
    if (v36(v33, 1, v34) != 1)
    {
      sub_218817724(v33, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v35 + 32))(v31 + v27, v33, v34);
  }

  v37 = v73;
  (v32)(v31 + v27, *MEMORY[0x277D317E8], v73);
  v38 = (v31 + 2 * v27);
  v39 = v59;
  *v38 = v60;
  v38[1] = v39;
  v32();
  v41 = v68;
  v40 = v69;
  v42 = v63;
  if (v63)
  {
    v43 = v71;
    *v71 = v54[0];
    v43[1] = v42;
    v32();
    v45 = *(v30 + 16);
    v44 = *(v30 + 24);
    v46 = v74;
    if (v45 >= v44 >> 1)
    {
      v30 = sub_2191F80F4(v44 > 1, v45 + 1, 1, v30);
    }

    *(v30 + 16) = v45 + 1;
    (*(v76 + 32))(v30 + v70 + v45 * v27, v71, v37);
  }

  else
  {
    v46 = v74;
  }

  v47 = v65;
  sub_218812314(v46, v65, &qword_280EE6510, MEMORY[0x277D318F8]);
  if ((*(v41 + 48))(v47, 1, v40) == 1)
  {
    sub_218817724(v47, &qword_280EE6510, MEMORY[0x277D318F8]);
  }

  else
  {
    v48 = v67;
    (*(v41 + 32))(v67, v47, v40);
    v49 = v66;
    (*(v41 + 16))(v66, v48, v40);
    (v32)(v49, *MEMORY[0x277D317E0], v37);
    v51 = *(v30 + 16);
    v50 = *(v30 + 24);
    if (v51 >= v50 >> 1)
    {
      v30 = sub_2191F80F4(v50 > 1, v51 + 1, 1, v30);
    }

    (*(v41 + 8))(v67, v40);
    *(v30 + 16) = v51 + 1;
    (*(v76 + 32))(v30 + v70 + v51 * v27, v66, v37);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_219A19B08(v30, Strong);
    swift_unknownObjectRelease();
  }

  sub_218817724(v46, &qword_280EE6510, MEMORY[0x277D318F8]);
  return sub_218817724(v77, &unk_280EE6610, MEMORY[0x277D31680]);
}

uint64_t sub_219712418(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2192BB864(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2197124A4()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 48))(0, 3, *((*MEMORY[0x277D85000] & *v0) + 0x50));
  v1 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v1);
  sub_219BE6EF4();
}

uint64_t sub_2197125F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v67 = a2;
  v82 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_219BDE294();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDE744();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BF0634();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = v65 - v13;
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = v65 - v15;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = v65 - v17;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v65 - v19;
  v21 = MEMORY[0x277D32E20];
  sub_2187DD4F0(0, qword_27CC1E440, MEMORY[0x277D32E20], v11);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v65 - v26;
  v28 = sub_219BF0F34();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BDE7A4();
  v69 = *(v32 - 8);
  v70 = v32;
  MEMORY[0x28223BE20](v32);
  v65[0] = v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v31, a1, v28);
  v34 = v67;
  v65[1] = v27;
  sub_218812314(v67, v27, qword_27CC1E440, v21);
  sub_218812314(v34, v25, qword_27CC1E440, v21);
  v35 = sub_219BF0614();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v25, 1, v35) == 1)
  {
    sub_218817724(v25, qword_27CC1E440, MEMORY[0x277D32E20]);
    v37 = sub_219BF0E44();
    v39 = v38;
  }

  else
  {
    v37 = sub_219BF04D4();
    v39 = v40;
    (*(v36 + 8))(v25, v35);
  }

  v41 = [sub_219BF0F14() identifier];
  swift_unknownObjectRelease();
  v42 = sub_219BF5414();
  v44 = v43;

  sub_2197019FC(v37, v39, v42, v44, 0, 0, v66);

  v45 = v71;
  v46 = v74;
  (*(v71 + 56))(v68, 1, 1, v74);
  sub_219BDE4B4();
  v47 = sub_219BDE4D4();
  (*(*(v47 - 8) + 56))(v20, 0, 1, v47);
  v48 = sub_219BDEA34();
  (*(*(v48 - 8) + 56))(v72, 1, 1, v48);
  (*(v45 + 104))(v73, *MEMORY[0x277D32E98], v46);
  v49 = v65[0];
  sub_219BDE784();
  v50 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x88));
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  swift_getWitnessTable();
  v52 = v77;
  v51 = v78;
  v53 = v75;
  (*(v77 + 104))(v75, *MEMORY[0x277D2FF08], v78);
  v54 = v79;
  sub_219BDED04();
  (*(v52 + 8))(v53, v51);
  sub_219BDE734();
  sub_219BDEC64();

  sub_2187B2C48();
  v56 = v55;
  v57 = swift_allocBox();
  v59 = v58;
  v60 = *(v56 + 48);
  sub_21881DC10(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
  v62 = *(v61 + 48);
  sub_219BDE724();
  v63 = MEMORY[0x277D84F90];
  *(v59 + v62) = MEMORY[0x277D84F90];
  (*(v80 + 8))(v54, v81);
  result = (*(v69 + 8))(v49, v70);
  *(v59 + v60) = v63;
  *v82 = v57 | 2;
  return result;
}

uint64_t sub_219712F14@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v81 = a2;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280EE8D10, MEMORY[0x277D2FD50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v68 - v6;
  v7 = sub_219BDDDA4();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE4D4();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v68 - v12;
  v14 = MEMORY[0x277D32E20];
  sub_2187DD4F0(0, qword_27CC1E440, MEMORY[0x277D32E20], v4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v4);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v4);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v75 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v68 - v26;
  v28 = v2;
  sub_218718690(v28 + *((*MEMORY[0x277D85000] & *v28) + 0x90), v84);
  v29 = __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  v82 = sub_219BF06B4();
  v30 = sub_219BF0664();
  v77 = v31;
  v78 = v30;
  sub_218812314(a1, v17, qword_27CC1E440, v14);
  v32 = sub_219BF0614();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v17, 1, v32) == 1)
  {
    sub_218817724(v17, qword_27CC1E440, MEMORY[0x277D32E20]);
    v34 = sub_219BF0664();
    v36 = v35;
  }

  else
  {
    v34 = sub_219BF04D4();
    v36 = v37;
    (*(v33 + 8))(v17, v32);
  }

  WitnessTable = swift_getWitnessTable();
  v39 = v28;
  sub_2197019FC(v34, v36, 0, 0, 0, 0, v22);

  v40 = sub_219BF0634();
  (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
  sub_219BDE4B4();
  v42 = v79;
  v41 = v80;
  (*(v79 + 56))(v27, 0, 1, v80);
  v43 = *v29;
  v44 = *(*v29 + 16);
  v45 = [objc_msgSend(v82 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v45)
  {
    sub_219BF5414();
    v45 = sub_219BF53D4();
  }

  v46 = [v44 hasMutedSubscriptionForTagID_];

  if (!v46)
  {
    goto LABEL_13;
  }

  v47 = v75;
  sub_218812314(v27, v75, &unk_280EE8C40, MEMORY[0x277D30018]);
  if ((*(v42 + 48))(v47, 1, v41) == 1)
  {
    v48 = MEMORY[0x277D30018];
    sub_218817724(v27, &unk_280EE8C40, MEMORY[0x277D30018]);
    v49 = v47;
    v50 = v48;
LABEL_14:
    sub_218817724(v49, &unk_280EE8C40, v50);
    v56 = v82;
    goto LABEL_15;
  }

  v51 = v74;
  (*(v42 + 32))(v74, v47, v41);
  if ((sub_219BDE4A4() & 1) == 0)
  {
    (*(v42 + 8))(v51, v41);
LABEL_13:
    v50 = MEMORY[0x277D30018];
    v49 = v27;
    goto LABEL_14;
  }

  ObjectType = WitnessTable;
  __swift_project_boxed_opaque_existential_1((v43 + 24), *(v43 + 48));
  v52 = v70;
  sub_219BDE4C4();
  v53 = v71;
  sub_219BDEA24();
  sub_218817724(v52, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  v55 = v72;
  v54 = v73;
  if ((*(v72 + 48))(v53, 1, v73) != 1)
  {
    v63 = *(v55 + 32);
    v64 = v69;
    v63(v69, v53, v54);
    v65 = swift_allocObject();
    *(v65 + 40) = v54;
    *(v65 + 48) = sub_2187E1408(&qword_27CC11940, MEMORY[0x277D2FD50]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v65 + 16));
    v63(boxed_opaque_existential_1, v64, v54);
    (*(v42 + 8))(v74, v41);
    sub_218817724(v27, &unk_280EE8C40, MEMORY[0x277D30018]);
    v58 = 0;
    v67 = v77;
    *(v65 + 56) = v78;
    *(v65 + 64) = v67;
    *(v65 + 72) = v82;
    *(v65 + 80) = v39;
    v57 = 1;
    v59 = v65;
    *(v65 + 88) = ObjectType;
    *(v65 + 96) = 0;
    v60 = 0;
    v56 = 0;
    WitnessTable = 0;
    goto LABEL_16;
  }

  (*(v42 + 8))(v74, v41);
  sub_218817724(v27, &unk_280EE8C40, MEMORY[0x277D30018]);
  sub_218817724(v53, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  v56 = v82;
  WitnessTable = ObjectType;
LABEL_15:
  v57 = 0;
  v58 = v39;
  v60 = v77;
  v59 = v78;
LABEL_16:
  v61 = v39;
  __swift_destroy_boxed_opaque_existential_1(v84);
  result = swift_allocObject();
  v83 = v57;
  *(result + 16) = v59;
  *(result + 24) = v60;
  *(result + 32) = v56;
  *(result + 40) = v58;
  *(result + 48) = WitnessTable;
  *(result + 56) = v57;
  *(result + 63) = 0;
  *(result + 61) = 0;
  *(result + 57) = 0;
  *(result + 64) = MEMORY[0x277D84F90];
  *v81 = result | 0x5000000000000000;
  return result;
}

uint64_t sub_219713888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v81 = a3;
  v77 = v4;
  ObjectType = swift_getObjectType();
  v7 = sub_219BDEA14();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0634();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &unk_280E90F00, MEMORY[0x277D32EE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v59 - v13;
  sub_2187DD4F0(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v59 - v15;
  sub_2187DD4F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v59 - v17;
  sub_2187DD4F0(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v59 - v19;
  v20 = MEMORY[0x277D32E20];
  sub_2187DD4F0(0, qword_27CC1E440, MEMORY[0x277D32E20], v11);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v60 = sub_219BDDED4();
  v27 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v29 = (&v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_219BDDBF4();
  MEMORY[0x28223BE20](v30 - 8);
  v65 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BDEB14();
  v67 = *(v32 - 8);
  v68 = v32;
  MEMORY[0x28223BE20](v32);
  v66 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BF0AF4();
  v63 = v35;
  v64 = v34;
  v62 = sub_219BF0B44();
  v71 = a2;
  sub_218812314(a2, v26, qword_27CC1E440, v20);
  v36 = sub_219BF0614();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v26, 1, v36);
  v59 = a1;
  if (v39 == 1)
  {
    sub_218817724(v26, qword_27CC1E440, MEMORY[0x277D32E20]);
    v40 = sub_219BF0AF4();
    v42 = v41;
  }

  else
  {
    v40 = sub_219BF04D4();
    v42 = v43;
    (*(v37 + 8))(v26, v36);
  }

  *v29 = v40;
  v29[1] = v42;
  (*(v27 + 104))(v29, *MEMORY[0x277D2FDC8], v60);
  v44 = sub_219BDD944();
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  sub_219BDDBD4();
  sub_218812314(v71, v24, qword_27CC1E440, MEMORY[0x277D32E20]);
  if (v38(v24, 1, v36) == 1)
  {
    sub_218817724(v24, qword_27CC1E440, MEMORY[0x277D32E20]);
    v45 = sub_219BF0AF4();
    v47 = v46;
  }

  else
  {
    v48 = sub_219BF04D4();
    v47 = v49;
    (*(v37 + 8))(v24, v36);
    v45 = v48;
  }

  sub_2197019FC(v45, v47, 0, 0, 0, 0, v69);

  v51 = v74;
  v50 = v75;
  (*(v74 + 56))(v72, 1, 1, v75);
  v52 = v70;
  sub_219BDE4B4();
  v53 = sub_219BDE4D4();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  (*(v51 + 104))(v73, *MEMORY[0x277D32E98], v50);
  v54 = v66;
  sub_219BDEB04();
  swift_getWitnessTable();
  v55 = v78;
  sub_219BDE2F4();
  sub_219BDEA04();
  sub_219BDEBC4();

  v56 = swift_allocObject();
  v57 = sub_219BDE9F4();
  (*(v79 + 8))(v55, v80);
  result = (*(v67 + 8))(v54, v68);
  *(v56 + 16) = v57;
  *v81 = v56 | 0x7000000000000004;
  return result;
}

void sub_21971416C(uint64_t a1)
{
  sub_2187DD4F0(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TodayExpandContext();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B9E0();
  if (sub_219BF1B44())
  {
    v8 = sub_219BE6DF4();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_218809CC0(v4, v7);
    sub_218817724(v4, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v9 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 168))(v7, ObjectType, v9);
    sub_21880BA68(v7, type metadata accessor for TodayExpandContext);
  }

  sub_219BE8664();
  v11 = sub_219BE7BC4();

  [v11 reloadData];
}

uint64_t sub_219714360(uint64_t a1, void *a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_218853400();
    v7 = sub_219BE5F84();
    v9 = v8;
    __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
    v10 = v7;
    v11 = v9;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_218F19BE4(a2, a3, &v10);
    sub_218DFAEC4(v10, v11, v12, v13, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219714430(uint64_t a1)
{
  sub_2187DD4F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  sub_219BE8694();
  sub_219BE20E4();

  if (v12[15] == 1)
  {
    swift_getObjectType();
    v5 = sub_219BDC104();
    v6 = *(v5 - 8);
    (*(v6 + 16))(v4, a1, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_219BEA2C4();
  }

  sub_219BE8664();
  v7 = sub_219BE7BC4();

  v8 = [v7 indexPathsForVisibleItems];

  sub_219BDC104();
  v9 = sub_219BF5924();

  LOBYTE(v8) = sub_2190890C0(a1, v9);

  if ((v8 & 1) == 0)
  {
    sub_219BE8664();
    v10 = sub_219BE7BC4();

    v11 = sub_219BDC094();
    [v10 scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_219714678(char a1, uint64_t a2)
{
  v4 = sub_219BEB384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEB394();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent) = a1;
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v12 = sub_219BF01B4();
  v13 = __swift_project_value_buffer(v12, qword_280F61940);
  v11[3] = v12;
  v11[4] = sub_2187E1408(&qword_280E91000, MEMORY[0x277D32BC8]);
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
  (*(v9 + 104))(v11, *MEMORY[0x277D6EC80], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D6ECB0], v4);
  sub_219BE6BD4();

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2197149DC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219714678(0, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219714A70(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 56))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v3);
  sub_219BE6EF4();
}

uint64_t sub_219714BAC(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_219BE8C14();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v34 - v14);
  v39 = type metadata accessor for TodayRouteModel();
  v16 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  sub_219BF4B34();
  v18 = (*(v6 + 88))(v8, v5);
  v19 = *MEMORY[0x277D345E0];
  v36 = v3;
  if (v18 == v19)
  {
    (*(v6 + 96))(v8, v5);
    (*(v38 + 8))(v8, v3);
    goto LABEL_3;
  }

  if (v18 == *MEMORY[0x277D345D0])
  {
    v20 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v18 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v20 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v20, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  v21 = sub_219BF4B14();
  sub_21970444C(v41, v12, v21, v22, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v39) == 1)
  {
    return sub_218817724(v15, qword_280ED9010, type metadata accessor for TodayRouteModel);
  }

  v24 = v37;
  sub_21880BBE4(v15, v37, type metadata accessor for TodayRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21880BA68(v24, type metadata accessor for TodayRouteModel);
  }

  v26 = Strong;
  v27 = v35;
  sub_219BF4B44();
  v28 = sub_219BF4B14();
  v30 = v29;
  sub_219717384(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v31 = sub_219BE5F84();
  v33 = v32;
  __swift_project_boxed_opaque_existential_1((v26 + 48), *(v26 + 72));
  v42 = v28;
  v43 = v30;
  v44 = v31;
  v45 = v33;
  v46 = 2;
  sub_218F19BE4(v24, v27, &v42);
  (*(v38 + 8))(v27, v36);
  sub_21880BA68(v24, type metadata accessor for TodayRouteModel);
  sub_218DFAEC4(v42, v43, v44, v45, v46);
  return swift_unknownObjectRelease();
}