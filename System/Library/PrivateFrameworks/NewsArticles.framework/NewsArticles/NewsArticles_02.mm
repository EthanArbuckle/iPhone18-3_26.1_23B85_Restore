uint64_t sub_1D79C0FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TableOfContentsHeaderViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79C1070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TableOfContentsHeaderViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79C112C(uint64_t a1, uint64_t a2)
{
  sub_1D7C61E88(0, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C11B4(uint64_t a1, uint64_t a2)
{
  sub_1D7C61E88(0, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C1244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C127C()
{
  v1 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 16);
  v6 = *(v1 + 36);
  v7 = sub_1D7D295CC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 40);
  v10 = sub_1D7D2ACCC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79C144C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C1484()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C14E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C1518()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D79C1558()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79C1590()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C1618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2F06C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D79C16D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2F06C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D79C1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7C6A4C8(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D79C1854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7C6A4C8(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D79C1914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D79C19CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79C1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79C1B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79C1BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7C6A4C8(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1D79C1CB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7C6A4C8(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }
}

uint64_t sub_1D79C1D88()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C1DE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C1E24()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79C1E94()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C1ECC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C1F04()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1D79EA2E4(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C1F4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C1F84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79C1FCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C2004()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79C205C()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D79C20CC()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1D79C2154()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D79C21B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D79C222C(uint64_t a1, void *a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA8);
  v3 = *(a2 + v2);
  if (v3)
  {
    [v3 play];
    v5 = *(a2 + v2);
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;

      sub_1D7D28EDC();

      LODWORD(v7) = dword_1D7D5D860[v8];
      [v6 setRate_];
    }
  }
}

uint64_t sub_1D79C2314()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79C234C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1D79C238C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_1D79C23C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79C247C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C24B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1D79C2570@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

uint64_t sub_1D79C25AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79C2654()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C2690()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C26C8()
{
  v1 = type metadata accessor for BottomPaletteFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 20);
  type metadata accessor for ArticleViewerPage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v5 + 72);
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D7C92060(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v29 - 8) + 8))(v11, v29);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v30 = (v5 + v7[10]);
        v31 = v30[2];
        if ((~v31 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v30, v30[1], v31);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v5 + *(v32 + 48)), *(v5 + *(v32 + 48) + 8), *(v5 + *(v32 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v25 = sub_1D7D2CADC();
      (*(*(v25 - 8) + 8))(v5, v25);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D799A5AC();
      v16 = *(v24 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v16 = *(v15 + 36);
      sub_1D7AECC70();
    }

    (*(*(v17 - 8) + 8))(v5 + v16, v17);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    v18 = type metadata accessor for ArticleViewerArticlePage(0);
    v19 = v18[7];
    v20 = sub_1D7D295CC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
    v21 = (v5 + v18[8]);
    if (*v21 >= 2)
    {
    }

    v22 = (v5 + v18[9]);
    type metadata accessor for ArticleNavigationAction();
    v23 = swift_getEnumCaseMultiPayload();
    switch(v23)
    {
      case 2:
        sub_1D7C92060(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v26 - 8) + 8))(v22, v26);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v27 = (v5 + v18[10]);
    v28 = v27[2];
    if ((~v28 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v27, v27[1], v28);
    }
  }

LABEL_39:
  v33 = *(v1 + 24);
  v34 = sub_1D7D2ACCC();
  (*(*(v34 - 8) + 8))(v0 + v3 + v33, v34);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D79C2CE0()
{
  v1 = type metadata accessor for BottomPaletteFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 20);
  type metadata accessor for ArticleViewerPage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v5 + 72);
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D7C92060(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v29 - 8) + 8))(v11, v29);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v30 = (v5 + v7[10]);
        v31 = v30[2];
        if ((~v31 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v30, v30[1], v31);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v5 + *(v32 + 48)), *(v5 + *(v32 + 48) + 8), *(v5 + *(v32 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v25 = sub_1D7D2CADC();
      (*(*(v25 - 8) + 8))(v5, v25);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D799A5AC();
      v16 = *(v24 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v16 = *(v15 + 36);
      sub_1D7AECC70();
    }

    (*(*(v17 - 8) + 8))(v5 + v16, v17);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    v18 = type metadata accessor for ArticleViewerArticlePage(0);
    v19 = v18[7];
    v20 = sub_1D7D295CC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
    v21 = (v5 + v18[8]);
    if (*v21 >= 2)
    {
    }

    v22 = (v5 + v18[9]);
    type metadata accessor for ArticleNavigationAction();
    v23 = swift_getEnumCaseMultiPayload();
    switch(v23)
    {
      case 2:
        sub_1D7C92060(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v26 - 8) + 8))(v22, v26);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v27 = (v5 + v18[10]);
    v28 = v27[2];
    if ((~v28 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v27, v27[1], v28);
    }
  }

LABEL_39:
  v33 = *(v1 + 24);
  v34 = sub_1D7D2ACCC();
  (*(*(v34 - 8) + 8))(v0 + v3 + v33, v34);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D79C32F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79C3330()
{
  v1 = type metadata accessor for ToolbarFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 40) & ~v2;
  sub_1D7A1ECF8(v0[2], v0[3], v0[4]);
  v5 = v0 + v4;
  type metadata accessor for ArticleViewerPage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1((v5 + 72));
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(&v5[v8], v9);
        v10 = &v5[v7[8]];
        if (*v10 >= 2)
        {
        }

        v11 = &v5[v7[9]];
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D7C985DC(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v29 - 8) + 8))(v11, v29);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v30 = &v5[v7[10]];
        v31 = v30[2];
        if ((~v31 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v30, v30[1], v31);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*&v5[*(v32 + 48)], *&v5[*(v32 + 48) + 8], *&v5[*(v32 + 48) + 16]);
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v25 = sub_1D7D2CADC();
      (*(*(v25 - 8) + 8))(v0 + v4, v25);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D799A5AC();
      v16 = *(v24 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v16 = *(v15 + 36);
      sub_1D7AECC70();
    }

    (*(*(v17 - 8) + 8))(&v5[v16], v17);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 11);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 9), *(v5 + 10), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1((v5 + 72));
    v18 = type metadata accessor for ArticleViewerArticlePage(0);
    v19 = v18[7];
    v20 = sub_1D7D295CC();
    (*(*(v20 - 8) + 8))(&v5[v19], v20);
    v21 = &v5[v18[8]];
    if (*v21 >= 2)
    {
    }

    v22 = &v5[v18[9]];
    type metadata accessor for ArticleNavigationAction();
    v23 = swift_getEnumCaseMultiPayload();
    switch(v23)
    {
      case 2:
        sub_1D7C985DC(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v26 - 8) + 8))(v22, v26);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v27 = &v5[v18[10]];
    v28 = v27[2];
    if ((~v28 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v27, v27[1], v28);
    }
  }

LABEL_39:
  v33 = &v5[*(v1 + 20)];

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D79C38E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C3918()
{
  v1 = type metadata accessor for ArticleViewerMoreFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 72);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  v7 = v6[7];
  v8 = sub_1D7D295CC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v6[8]);
  if (*v9 >= 2)
  {
  }

  v10 = (v5 + v6[9]);
  type metadata accessor for ArticleNavigationAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_1D7C994B8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
      (*(*(v12 - 8) + 8))(v10, v12);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  v13 = (v5 + v6[10]);
  v14 = v13[2];
  if ((~v14 & 0xF000000000000007) != 0)
  {
    sub_1D7A1ECF8(*v13, v13[1], v14);
  }

  v15 = *(v1 + 20);
  v16 = sub_1D7D2ACCC();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79C3B88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7C997A0(0, &unk_1EE0C0210, MEMORY[0x1E69B6A88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D7C997A0(0, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1D79C3CE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D7C997A0(0, &unk_1EE0C0210, MEMORY[0x1E69B6A88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D7C997A0(0, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D79C3E40()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79C3EC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C3EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79C3F40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C3F7C()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C3FB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79C3FEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79C4028()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C4068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D79C40C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D79C4128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_accessoryPresentationMode;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D79C4188(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EndOfRecipeFeedContentConfig();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2E3FC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D79C42AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for EndOfRecipeFeedContentConfig();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2E3FC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79C43D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C4408()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79C4468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79C458C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79C46B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1D79C46E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C472C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedContentConfig();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C4798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedContentConfig();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C4808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7CBD1AC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D79C48E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7CBD1AC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D79C49BC()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79C4A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2D57C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C4AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2D57C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C4B18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C4B68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C4BA0()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C4BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79C4CFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79C4E20(uint64_t a1, uint64_t a2)
{
  sub_1D7A72FC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C4E8C(uint64_t a1, uint64_t a2)
{
  sub_1D7A72FC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C4EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D7D2ACCC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D79C5020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticleViewerArticlePage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D7D2ACCC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D79C5144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EndOfArticleFeedGapLocation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79C51F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EndOfArticleFeedGapLocation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79C5294()
{
  v1 = *(type metadata accessor for RouteModel() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1D7D2B54C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_17;
      }

LABEL_12:

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 5)
    {
LABEL_17:

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_28;
    }

    v15 = sub_1D7D2824C();
LABEL_16:
    (*(*(v15 - 8) + 8))(v10, v15);
    goto LABEL_28;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      goto LABEL_27;
    case 1:
      swift_unknownObjectRelease();
      sub_1D7CD09B4(0, v16);
      v23 = v17;
      v18 = (v10 + *(v17 + 48));
      type metadata accessor for ArticleNavigationAction();
      v19 = swift_getEnumCaseMultiPayload();
      if (v19 == 2)
      {
        sub_1D79961C4();
        (*(*(v21 - 8) + 8))(v18, v21);
      }

      else
      {
        if (v19 != 1)
        {
          v20 = v23;
          if (!v19)
          {
          }

          goto LABEL_26;
        }
      }

      v20 = v23;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_1(v10 + *(v20 + 64));
LABEL_27:
      swift_unknownObjectRelease();
      break;
    case 2:
      type metadata accessor for ArticleRouteModel();
      v12 = swift_getEnumCaseMultiPayload();

      if (v12 != 1)
      {
        sub_1D7C572F0();
        v10 = (v10 + *(v13 + 48));
        type metadata accessor for ArticleNavigationAction();
        v14 = swift_getEnumCaseMultiPayload();
        if (v14 == 2)
        {
          sub_1D79961C4();
          goto LABEL_16;
        }

        if (v14 != 1)
        {
          if (v14)
          {
            break;
          }

          goto LABEL_12;
        }
      }

      break;
  }

LABEL_28:
  (*(v6 + 8))(v0 + v8, v5);

  if (*(v0 + v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + 40, v2 | v7 | 7);
}

uint64_t sub_1D79C55EC()
{
  v1 = *(type metadata accessor for RouteModel() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1D7D2B54C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_17;
      }

LABEL_12:

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 5)
    {
LABEL_17:

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_28;
    }

    v14 = sub_1D7D2824C();
LABEL_16:
    (*(*(v14 - 8) + 8))(v9, v14);
    goto LABEL_28;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      goto LABEL_27;
    case 1:
      swift_unknownObjectRelease();
      sub_1D7CD09B4(0, v15);
      v24 = v16;
      v17 = (v9 + *(v16 + 48));
      type metadata accessor for ArticleNavigationAction();
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 == 2)
      {
        sub_1D79961C4();
        (*(*(v20 - 8) + 8))(v17, v20);
      }

      else
      {
        if (v18 != 1)
        {
          v19 = v24;
          if (!v18)
          {
          }

          goto LABEL_26;
        }
      }

      v19 = v24;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_1(v9 + *(v19 + 64));
LABEL_27:
      swift_unknownObjectRelease();
      break;
    case 2:
      type metadata accessor for ArticleRouteModel();
      v11 = swift_getEnumCaseMultiPayload();

      if (v11 != 1)
      {
        sub_1D7C572F0();
        v9 = (v9 + *(v12 + 48));
        type metadata accessor for ArticleNavigationAction();
        v13 = swift_getEnumCaseMultiPayload();
        if (v13 == 2)
        {
          sub_1D79961C4();
          goto LABEL_16;
        }

        if (v13 != 1)
        {
          if (v13)
          {
            break;
          }

          goto LABEL_12;
        }
      }

      break;
  }

LABEL_28:
  v21 = (v3 + v4 + v7) & ~v7;
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v21, v5);

  return MEMORY[0x1EEE6BDD0](v0, v22 + 8, v2 | v7 | 7);
}

uint64_t sub_1D79C592C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C596C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C59B4()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C59EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EC9E8550;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D79C5A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1D79C5BC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D79C5D0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1D79C5D4C()
{
  result = 20.0;
  if (*(v0 + 24))
  {
    return 11.0;
  }

  return result;
}

uint64_t sub_1D79C5D64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79C5D9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 8))(*(a1 + a2 - 24));
  *a3 = result & 1;
  return result;
}

__n128 sub_1D79C5DF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D79C5E08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 16))(*(a1 + a2 - 24));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D79C5E64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D79C5EC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C5EFC()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  sub_1D7CF0400(0, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v40 = v4;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v10 + 72);
        v12 = type metadata accessor for ArticleViewerArticlePage(0);
        v13 = v12[7];
        v14 = sub_1D7D295CC();
        (*(*(v14 - 8) + 8))(v10 + v13, v14);
        v15 = (v10 + v12[8]);
        if (*v15 >= 2)
        {
        }

        v16 = (v10 + v12[9]);
        type metadata accessor for ArticleNavigationAction();
        v17 = swift_getEnumCaseMultiPayload();
        switch(v17)
        {
          case 2:
            sub_1D799C6E0(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v34 - 8) + 8))(v16, v34);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v35 = (v10 + v12[10]);
        v36 = v35[2];
        if ((~v36 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v35, v35[1], v36);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v10 + *(v37 + 48)), *(v10 + *(v37 + 48) + 8), *(v10 + *(v37 + 48) + 16));
        v4 = v40;
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 == 2)
    {
      v30 = sub_1D7D2CADC();
      (*(*(v30 - 8) + 8))(v0 + v3, v30);
      goto LABEL_31;
    }

    if (v19 == 1)
    {

      sub_1D799A5AC();
      v21 = *(v29 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v19)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v21 = *(v20 + 36);
      sub_1D7CF0400(0, &qword_1EE0BB1E0, MEMORY[0x1E69B42E0]);
    }

    (*(*(v22 - 8) + 8))(v10 + v21, v22);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v18 = *(v10 + 88);
      if ((~v18 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v10 + 72), *(v10 + 80), v18);
      }
    }
  }

  else
  {
    v41 = v4;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v10 + 72);
    v23 = type metadata accessor for ArticleViewerArticlePage(0);
    v24 = v23[7];
    v25 = sub_1D7D295CC();
    (*(*(v25 - 8) + 8))(v10 + v24, v25);
    v26 = (v10 + v23[8]);
    if (*v26 >= 2)
    {
    }

    v27 = (v10 + v23[9]);
    type metadata accessor for ArticleNavigationAction();
    v28 = swift_getEnumCaseMultiPayload();
    switch(v28)
    {
      case 2:
        sub_1D799C6E0(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v31 - 8) + 8))(v27, v31);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v32 = (v10 + v23[10]);
    v33 = v32[2];
    v4 = v41;
    if ((~v33 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v32, v32[1], v33);
    }
  }

LABEL_39:
  v38 = (v3 + v4 + v8) & ~v8;
  (*(v7 + 8))(v0 + v38, v6);

  return MEMORY[0x1EEE6BDD0](v0, v38 + v9, v2 | v8 | 7);
}

uint64_t sub_1D79C6554()
{
  v1 = *(type metadata accessor for InterstitialAdModel() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_1D7D2CADC();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D799A5AC();
      v7 = *(v9 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_8;
      }

      sub_1D7999AF4();
      v7 = *(v6 + 36);
      sub_1D7CF0400(0, &qword_1EE0BB1E0, MEMORY[0x1E69B42E0]);
    }

    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

LABEL_8:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79C66E4()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v6 + 72);
        v8 = type metadata accessor for ArticleViewerArticlePage(0);
        v9 = v8[7];
        v10 = sub_1D7D295CC();
        (*(*(v10 - 8) + 8))(v6 + v9, v10);
        v11 = (v6 + v8[8]);
        if (*v11 >= 2)
        {
        }

        v12 = (v6 + v8[9]);
        type metadata accessor for ArticleNavigationAction();
        v13 = swift_getEnumCaseMultiPayload();
        switch(v13)
        {
          case 2:
            sub_1D799C6E0(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v30 - 8) + 8))(v12, v30);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v31 = (v6 + v8[10]);
        v32 = v31[2];
        if ((~v32 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v31, v31[1], v32);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v6 + *(v33 + 48)), *(v6 + *(v33 + 48) + 8), *(v6 + *(v33 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 == 2)
    {
      v26 = sub_1D7D2CADC();
      (*(*(v26 - 8) + 8))(v6, v26);
      goto LABEL_31;
    }

    if (v15 == 1)
    {

      sub_1D799A5AC();
      v17 = *(v25 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v15)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v17 = *(v16 + 36);
      sub_1D7CF0400(0, &qword_1EE0BB1E0, MEMORY[0x1E69B42E0]);
    }

    (*(*(v18 - 8) + 8))(v6 + v17, v18);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v14 = *(v6 + 88);
      if ((~v14 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v6 + 72), *(v6 + 80), v14);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v6 + 72);
    v19 = type metadata accessor for ArticleViewerArticlePage(0);
    v20 = v19[7];
    v21 = sub_1D7D295CC();
    (*(*(v21 - 8) + 8))(v6 + v20, v21);
    v22 = (v6 + v19[8]);
    if (*v22 >= 2)
    {
    }

    v23 = (v6 + v19[9]);
    type metadata accessor for ArticleNavigationAction();
    v24 = swift_getEnumCaseMultiPayload();
    switch(v24)
    {
      case 2:
        sub_1D799C6E0(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v27 - 8) + 8))(v23, v27);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v28 = (v6 + v19[10]);
    v29 = v28[2];
    if ((~v29 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v28, v28[1], v29);
    }
  }

LABEL_39:
  v34 = v0 + v5;
  v35 = swift_getEnumCaseMultiPayload();
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      if (v35 == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (v35 == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v34 + 72);
        v36 = type metadata accessor for ArticleViewerArticlePage(0);
        v37 = v36[7];
        v38 = sub_1D7D295CC();
        (*(*(v38 - 8) + 8))(v34 + v37, v38);
        v39 = (v34 + v36[8]);
        if (*v39 >= 2)
        {
        }

        v40 = (v34 + v36[9]);
        type metadata accessor for ArticleNavigationAction();
        v41 = swift_getEnumCaseMultiPayload();
        switch(v41)
        {
          case 2:
            sub_1D799C6E0(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v59 - 8) + 8))(v40, v59);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v60 = (v34 + v36[10]);
        v61 = v60[2];
        if ((~v61 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v60, v60[1], v61);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v34 + *(v62 + 48)), *(v34 + *(v62 + 48) + 8), *(v34 + *(v62 + 48) + 16));
      }

      goto LABEL_77;
    }

    type metadata accessor for InterstitialAdModel();
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 2)
    {
      v47 = sub_1D7D2CADC();
      v45 = v0 + v5;
    }

    else if (v43 == 1)
    {

      sub_1D799A5AC();
      v45 = v34 + *(v54 + 36);
      sub_1D7AECD2C();
      v47 = v55;
    }

    else
    {
      if (v43)
      {
LABEL_69:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_77;
      }

      sub_1D7999AF4();
      v45 = v34 + *(v44 + 36);
      sub_1D7CF0400(0, &qword_1EE0BB1E0, MEMORY[0x1E69B42E0]);
      v47 = v46;
    }

    (*(*(v47 - 8) + 8))(v45);
    goto LABEL_69;
  }

  if (v35)
  {
    if (v35 == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v42 = *(v34 + 88);
      if ((~v42 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v34 + 72), *(v34 + 80), v42);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v34 + 72);
    v48 = type metadata accessor for ArticleViewerArticlePage(0);
    v49 = v48[7];
    v50 = sub_1D7D295CC();
    (*(*(v50 - 8) + 8))(v34 + v49, v50);
    v51 = (v34 + v48[8]);
    if (*v51 >= 2)
    {
    }

    v52 = (v34 + v48[9]);
    type metadata accessor for ArticleNavigationAction();
    v53 = swift_getEnumCaseMultiPayload();
    switch(v53)
    {
      case 2:
        sub_1D799C6E0(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v56 - 8) + 8))(v52, v56);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v57 = (v34 + v48[10]);
    v58 = v57[2];
    if ((~v58 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v57, v57[1], v58);
    }
  }

LABEL_77:

  return MEMORY[0x1EEE6BDD0](v0, v5 + v3, v2 | 7);
}

uint64_t sub_1D79C715C()
{
  v1 = *(type metadata accessor for InterstitialAdvertisementPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  type metadata accessor for InterstitialAdModel();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_1D7D2CADC();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D799A5AC();
      v7 = *(v9 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_8;
      }

      sub_1D7999AF4();
      v7 = *(v6 + 36);
      sub_1D7CF0400(0, &qword_1EE0BB1E0, MEMORY[0x1E69B42E0]);
    }

    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

LABEL_8:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79C7300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C736C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C73E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79C742C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C7464()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C749C()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C74D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C7520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D7D2ACCC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D79C7610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ArticleViewerPage(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D7D2ACCC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D79C770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D7D2ACCC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D79C7818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D7D2ACCC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D79C7920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2889C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79C79CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2889C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79C7A78(uint64_t a1, uint64_t a2)
{
  sub_1D7D02BC0(0, &qword_1EC9E8CE0, sub_1D7CFE348, sub_1D7CFE274, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79C7B20(uint64_t a1)
{
  sub_1D7D02BC0(0, &qword_1EC9E8CE0, sub_1D7CFE348, sub_1D7CFE274, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79C7BC0()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 154, 7);
}

uint64_t sub_1D79C7C34()
{

  return MEMORY[0x1EEE6BDD0](v0, 154, 7);
}

uint64_t sub_1D79C7CD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C7D0C@<X0>(void *a1@<X8>)
{
  result = sub_1D7D2D6FC();
  *a1 = v3;
  return result;
}

uint64_t sub_1D79C7DA8()
{

  sub_1D7D0233C(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

uint64_t sub_1D79C7E1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7D2D71C();
  *a1 = result;
  return result;
}

uint64_t sub_1D79C7E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7990AB0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79C7F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7990AB0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79C7FF0()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79C8070()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C80A8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C80E0()
{
  v1 = type metadata accessor for ArticleViewerMoreFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 72);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  v7 = v6[7];
  v8 = sub_1D7D295CC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v6[8]);
  if (*v9 >= 2)
  {
  }

  v10 = (v5 + v6[9]);
  type metadata accessor for ArticleNavigationAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_1D7D075A8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
      (*(*(v12 - 8) + 8))(v10, v12);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  v13 = (v5 + v6[10]);
  v14 = v13[2];
  if ((~v14 & 0xF000000000000007) != 0)
  {
    sub_1D7A1ECF8(*v13, v13[1], v14);
  }

  v15 = *(v1 + 20);
  v16 = sub_1D7D2ACCC();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79C8358()
{
  v1 = type metadata accessor for ArticleViewerMoreFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 72);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  v7 = v6[7];
  v8 = sub_1D7D295CC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v6[8]);
  if (*v9 >= 2)
  {
  }

  v10 = (v5 + v6[9]);
  type metadata accessor for ArticleNavigationAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_1D7D075A8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
      (*(*(v12 - 8) + 8))(v10, v12);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  v13 = (v5 + v6[10]);
  v14 = v13[2];
  if ((~v14 & 0xF000000000000007) != 0)
  {
    sub_1D7A1ECF8(*v13, v13[1], v14);
  }

  v15 = *(v1 + 20);
  v16 = sub_1D7D2ACCC();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D79C85DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7990AB0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79C8698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7990AB0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79C8750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2824C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C87BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2824C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C882C()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C8864()
{
  v1 = type metadata accessor for EndOfRecipeFeedServiceConfig();
  v21 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v20 = (v21 + 40) & ~v21;
  v2 = v0 + v20;

  v3 = v0 + v20 + v1[5];
  v4 = sub_1D7D2833C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  v6 = type metadata accessor for EndOfRecipeFeedConfig();

  v7 = *(v6 + 24);
  v8 = sub_1D7D2E1BC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = *(type metadata accessor for EndOfRecipeFeedContentConfig() + 20);
  v11 = v3 + v10 + *(type metadata accessor for EndOfRecipeFeedKnobsConfig() + 20);
  sub_1D7995698();
  v13 = v12;
  v14 = *(*(v12 - 8) + 8);
  v14(v11, v12);
  type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();

  v15 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  v14(v11 + *(v15 + 20), v13);
  type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();

  v14(v11 + *(v15 + 24), v13);
  type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();

  swift_unknownObjectRelease();
  v16 = v1[7];
  v17 = sub_1D7D2E3FC();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return MEMORY[0x1EEE6BDD0](v0, v20 + v19, v21 | 7);
}

uint64_t sub_1D79C8BB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D79C8C00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C8C38()
{
  v1 = sub_1D7D2D12C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79C8CFC(uint64_t a1, uint64_t a2)
{
  sub_1D7D15E9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79C8D68(uint64_t a1, uint64_t a2)
{
  sub_1D7D15E9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79C8DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C8E18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79C8E50()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C8EA8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C8EE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C8F18()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C8F50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_pageDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D79C8FAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_pageDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D79C9014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2833C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79C90C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2833C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D79C9164@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + qword_1EE0C0538) styler];
  *a2 = result;
  return result;
}

uint64_t sub_1D79C91D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C9214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1D79C9398(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id NABundle()
{
  if (NABundle_onceToken != -1)
  {
    NABundle_cold_1();
  }

  v1 = NABundle_bundle;

  return v1;
}

uint64_t __NABundle_block_invoke()
{
  NABundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D79CCC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double NAInsetsToMinimumTapTargetForFrame(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  return fmin((CGRectGetHeight(v9) + -44.0) * 0.5, 0.0);
}

void _NACrawlView(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13 = 0;
  v6[2](v6, v5, 0, &v13);
  if (!v13)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___NACrawlView_block_invoke_2;
    v9[3] = &unk_1E84EA560;
    v11 = v14;
    v12 = a2;
    v10 = v6;
    v7 = ___NACrawlView_block_invoke_2(v9);
    v8 = _Block_copy(v7);
    (v7)[2](v7, v8, v5, &v13);
  }

  _Block_object_dispose(v14, 8);
}

void sub_1D79D25D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NACrawlView(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __NACrawlView_block_invoke;
  v7[3] = &unk_1E84EA588;
  v8 = v5;
  v6 = v5;
  _NACrawlView(a1, a2, v7);
}

id NACrawlViewAndCollect(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = objc_opt_new();
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __NACrawlViewAndCollect_block_invoke;
  v15 = &unk_1E84EA5B0;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  NACrawlView(v6, a2, &v12);

  v10 = [v8 copy];

  return v10;
}

void __NACrawlViewAndCollect_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

id NAFirstViewPassing(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __NAFirstViewPassing_block_invoke;
  v10[3] = &unk_1E84EA5D8;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  NACrawlView(v5, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_1D79D2E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NAFirstViewPassing_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL NAViewContainsViewOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __NAViewContainsViewOfClass_block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__UIView_8lu32l8;
  v6[4] = a3;
  v3 = NAFirstViewPassing(a1, a2, v6);
  v4 = v3 != 0;

  return v4;
}

void _NACrawlViewController(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13 = 0;
  v6[2](v6, v5, 0, &v13);
  if (!v13)
  {
    if (a2 == 2)
    {
      v7 = v11;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v8 = ___NACrawlViewController_block_invoke_3;
    }

    else
    {
      if (a2 != 1)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v7 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v8 = ___NACrawlViewController_block_invoke_2;
    }

    v7[2] = v8;
    v7[3] = &unk_1E84EA620;
    v7[5] = v14;
    v7[4] = v6;
    v9 = _Block_copy(v7);

LABEL_8:
    v10 = _Block_copy(v9);
    (*(v9 + 2))(v9, v10, v5, &v13);
  }

  _Block_object_dispose(v14, 8);
}

void NACrawlViewController(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __NACrawlViewController_block_invoke;
  v7[3] = &unk_1E84EA648;
  v8 = v5;
  v6 = v5;
  _NACrawlViewController(a1, a2, v7);
}

id NACrawlViewControllerAndCollect(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = objc_opt_new();
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __NACrawlViewControllerAndCollect_block_invoke;
  v15 = &unk_1E84EA670;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  NACrawlViewController(v6, a2, &v12);

  v10 = [v8 copy];

  return v10;
}

void __NACrawlViewControllerAndCollect_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

id NAFirstViewControllerPassing(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __NAFirstViewControllerPassing_block_invoke;
  v10[3] = &unk_1E84EA698;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  NACrawlViewController(v5, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_1D79D38E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NAFirstViewControllerPassing_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL NAViewControllerContainsViewControllerOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __NAViewControllerContainsViewControllerOfClass_block_invoke;
  v6[3] = &__block_descriptor_40_e26_B16__0__UIViewController_8lu32l8;
  v6[4] = a3;
  v3 = NAFirstViewControllerPassing(a1, a2, v6);
  v4 = v3 != 0;

  return v4;
}

id NAViewHierarchy(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __NAViewHierarchy_block_invoke_2;
  v9 = &unk_1E84EA700;
  v10 = v2;
  v11 = &__block_literal_global_16;
  v3 = v2;
  _NACrawlView(v1, 2, &v6);

  v4 = [v3 copy];

  return v4;
}

id __NAViewHierarchy_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"     "];
  }

  v6 = [v4 description];
  [i appendFormat:@"%@\n", v6];

  v7 = [i copy];

  return v7;
}

void __NAViewHierarchy_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

id NAViewControllerHierarchy(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __NAViewControllerHierarchy_block_invoke_2;
  v9 = &unk_1E84EA748;
  v10 = v2;
  v11 = &__block_literal_global_23;
  v3 = v2;
  _NACrawlViewController(v1, 2, &v6);

  v4 = [v3 copy];

  return v4;
}

id __NAViewControllerHierarchy_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"     "];
  }

  v6 = [v4 description];
  [i appendFormat:@"%@\n", v6];

  v7 = [i copy];

  return v7;
}

void __NAViewControllerHierarchy_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

id NANowPlayingLog()
{
  if (NANowPlayingLog_once != -1)
  {
    NANowPlayingLog_cold_1();
  }

  v1 = NANowPlayingLog_result;

  return v1;
}

uint64_t __NANowPlayingLog_block_invoke()
{
  NANowPlayingLog_result = os_log_create("com.apple.news", "NowPlaying");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D79D5824()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D79D5A14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D79D5A34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D79D5AC0(uint64_t a1, id *a2)
{
  result = sub_1D7D3032C();
  *a2 = 0;
  return result;
}

uint64_t sub_1D79D5B38(uint64_t a1, id *a2)
{
  v3 = sub_1D7D3033C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D79D5BB8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7D3034C();
  v2 = sub_1D7D3031C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D79D5C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *v2 & *a1;
  result = sub_1D7D30B6C();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    *v2 = v5 & ~v4;
  }

  *a2 = v6;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_1D79D5C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2 & *a1;
  *v2 |= *a1;
  result = sub_1D7D30B6C();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_1D79D5D48()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D79D5DBC()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D79D5E00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D79D6984(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D79D5ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79D5FA8(uint64_t a1)
{
  v2 = sub_1D79D5ED0(&qword_1EE0BEF20, type metadata accessor for Key);
  v3 = sub_1D79D5ED0(&unk_1EC9E1080, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D79D60F4(uint64_t a1)
{
  v2 = sub_1D79D5ED0(&qword_1EC9E1068, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1D79D5ED0(&unk_1EC9E1070, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D79D6288@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D3031C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D79D62D0(uint64_t a1)
{
  v2 = sub_1D79D5ED0(&qword_1EC9E11B8, type metadata accessor for ActivityType);
  v3 = sub_1D79D5ED0(&qword_1EC9E11C0, type metadata accessor for ActivityType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D79D641C()
{
  v0 = sub_1D7D3034C();
  v1 = MEMORY[0x1DA70DF30](v0);

  return v1;
}

uint64_t sub_1D79D6458()
{
  sub_1D7D3034C();
  sub_1D7D303FC();
}

uint64_t sub_1D79D64AC()
{
  sub_1D7D3034C();
  sub_1D7D31A8C();
  sub_1D7D303FC();
  v0 = sub_1D7D31ABC();

  return v0;
}

uint64_t sub_1D79D6520()
{
  v0 = sub_1D7D3034C();
  v2 = v1;
  if (v0 == sub_1D7D3034C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D7D3197C();
  }

  return v5 & 1;
}

id sub_1D79D65A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D79D6A28(0, &qword_1EE0BE810, sub_1D79D6A7C);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7D3B4D0;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1D79D6AE0();
    *(v4 + 32) = a1;
    *(v4 + 40) = a2;

    sub_1D7D3037C();

    sub_1D79D6A28(0, &qword_1EE0BE830, sub_1D79D69BC);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4E0;
    v6 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v7 = sub_1D7992EFC(0, &qword_1EE0BED40);
    v8 = v6;
    *(inited + 40) = sub_1D7D3105C();
    v9 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v7;
  }

  else
  {
    sub_1D79D6A28(0, &qword_1EE0BE830, sub_1D79D69BC);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4E0;
    v12 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v13 = sub_1D7992EFC(0, &qword_1EE0BED40);

    v14 = v12;
    *(inited + 40) = sub_1D7D3105C();
    v9 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v13;
  }

  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v15 = [v10 secondaryLabelColor];
  *(inited + 104) = sub_1D7992EFC(0, &qword_1EE0BECE8);
  *(inited + 80) = v15;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = sub_1D7D3031C();

  type metadata accessor for Key(0);
  sub_1D79D5ED0(&qword_1EE0BEF20, type metadata accessor for Key);
  v18 = sub_1D7D3027C();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

uint64_t sub_1D79D6984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1D79D69BC()
{
  if (!qword_1EE0BEEF8)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BEEF8);
    }
  }
}

void sub_1D79D6A28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D79D6A7C()
{
  result = qword_1EE0BE7B0;
  if (!qword_1EE0BE7B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BE7B0);
  }

  return result;
}

unint64_t sub_1D79D6AE0()
{
  result = qword_1EE0BF4D0;
  if (!qword_1EE0BF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF4D0);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s7SectionO22GroupSizeConfigurationVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SectionO22GroupSizeConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D79D6E34()
{
  result = type metadata accessor for ArticleViewerArticlePage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D79D6EE4()
{
  result = type metadata accessor for ArticleViewerRecipeFeatureContext.Page(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SearchInArticleModule.createViewController(tracker:)(uint64_t a1)
{
  if (!a1)
  {
  }

  sub_1D7D28A1C();

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SearchInArticleViewController();

  v2 = sub_1D7D28CFC();

  if (v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D79D707C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t SearchInArticleModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t SearchInArticleModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79D71B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21[2] = a2;
  sub_1D79D7B34();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 40;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = *(v9 + 40);
      v13 = *(v9 + 8);
      v12 = *(v9 + 16);
      v14 = *v9;
      v24[0] = *(v9 - 8);
      v24[1] = v14;
      v25 = v13;
      v26 = v12;
      v27 = *(v9 + 24);
      v28 = v11;

      v15 = v13;

      sub_1D79D7420(v24, v3, v22);

      if (v22[1])
      {
        sub_1D79D7CBC(v22, v23);
        sub_1D79D7CBC(v23, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D79E3664(0, *(v10 + 2) + 1, 1, v10);
        }

        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        if (v17 >= v16 >> 1)
        {
          v10 = sub_1D79E3664((v16 > 1), v17 + 1, 1, v10);
        }

        *(v10 + 2) = v17 + 1;
        sub_1D79D7CBC(v22, &v10[104 * v17 + 32]);
      }

      else
      {
        sub_1D79D7C44(v22);
      }

      v9 += 56;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1D79D7B9C();
  v19 = sub_1D79D7BF0();
  MEMORY[0x1DA706A80](v10, &type metadata for RecipeViewerPage, v18, v19);
  sub_1D79D7D18();
  return sub_1D7D29FBC();
}

uint64_t sub_1D79D7420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v48 = a1[3];
  v8 = a1[4];
  v37 = a1[5];
  v9 = a1[6];
  swift_beginAccess();
  v10 = *(a2 + 144);
  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_1D7A18FFC(v6, v5), (v13 & 1) != 0))
  {
    sub_1D79D7DA4(*(v10 + 56) + 104 * v12, &v39);
    swift_endAccess();

    return sub_1D79D7CBC(&v39, a3);
  }

  else
  {
    v35 = a2;
    swift_endAccess();
    if (qword_1EC9DFDB8 != -1)
    {
      swift_once();
    }

    v36 = a3;
    v15 = sub_1D7D29AFC();
    __swift_project_value_buffer(v15, qword_1ECA0BB90);

    v16 = v7;

    v17 = sub_1D7D29ADC();
    v18 = sub_1D7D30C6C();

    v19 = v5;
    if (os_log_type_enabled(v17, v18))
    {
      v33 = v18;
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v20 = 136315138;
      v21 = v6;
      v39 = v6;
      v40 = v19;
      v41 = v16;
      v42 = v48;
      v43 = v8;
      v44 = v37;
      v45 = v9;

      v22 = v16;

      v23 = sub_1D7D303AC();
      v24 = v8;
      v25 = v9;
      v26 = v19;
      v28 = sub_1D7B06D4C(v23, v27, v38);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_1D7987000, v17, v33, "Creating page blueprint for recipe=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1DA7102E0](v32, -1, -1);
      MEMORY[0x1DA7102E0](v20, -1, -1);
    }

    else
    {

      v21 = v6;
      v24 = v8;
      v25 = v9;
      v26 = v19;
    }

    v34 = v16;
    v39 = v21;
    v40 = v26;
    v41 = v16;
    v29 = v48;
    v42 = v48;
    v43 = v24;
    v44 = v37;
    v45 = v25;
    RecipeViewerRecipe.dynamicDataIdentifier.getter();
    v30 = sub_1D7D28A1C();

    sub_1D799CC84(v35 + 24, &v47);
    v39 = v21;
    v40 = v26;
    v41 = v34;
    v42 = v29;
    v43 = v24;
    v44 = v37;
    v45 = v25;
    v46 = v30;
    sub_1D79D7DA4(&v39, v38);
    swift_beginAccess();

    v31 = v34;

    sub_1D7B8A2EC(v38, v21, v26);
    swift_endAccess();

    return sub_1D79D7CBC(&v39, v36);
  }
}

uint64_t sub_1D79D77CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  swift_beginAccess();
  v8 = *(a1 + 144);
  v9 = *(v8 + 16);

  if (v9 && (v10 = sub_1D7A18FFC(v7, v6), (v11 & 1) != 0))
  {
    sub_1D79D7DA4(*(v8 + 56) + 104 * v10, v16);
    sub_1D79D7CBC(v16, v17);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1D799CC84(a1 + 24, &v20);
    v12 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v12;
    v17[2] = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = a3;
    sub_1D79D7DA4(v17, v16);
    swift_beginAccess();
    sub_1D79D7E00(a2, v15);

    sub_1D7B8A2EC(v16, v7, v6);
    swift_endAccess();
  }

  sub_1D79D7E5C(0, &qword_1EC9E17D8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7D3B4D0;
  sub_1D79D7CBC(v17, v13 + 32);
  return v13;
}

uint64_t sub_1D79D7954()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79D79D0(uint64_t a1)
{
  sub_1D79D7B34();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = *(a1 + 32);
  v6 = *v1;
  v13 = *(a1 + 48);
  RecipeViewerRecipe.dynamicDataIdentifier.getter();
  v7 = sub_1D7D28A1C();

  v8 = sub_1D79D77CC(v6, v12, v7);
  v9 = sub_1D79D7B9C();
  v10 = sub_1D79D7BF0();
  MEMORY[0x1DA706A80](v8, &type metadata for RecipeViewerPage, v9, v10);
  sub_1D79D7D18();
  sub_1D7D29FBC();
}

void sub_1D79D7B34()
{
  if (!qword_1EC9E2CB0)
  {
    sub_1D79D7B9C();
    sub_1D79D7BF0();
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2CB0);
    }
  }
}

unint64_t sub_1D79D7B9C()
{
  result = qword_1EC9E2B40;
  if (!qword_1EC9E2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2B40);
  }

  return result;
}

unint64_t sub_1D79D7BF0()
{
  result = qword_1EC9E2CC0;
  if (!qword_1EC9E2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2CC0);
  }

  return result;
}

uint64_t sub_1D79D7C44(uint64_t a1)
{
  sub_1D79D7E5C(0, &qword_1EC9E17D0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D79D7D18()
{
  result = qword_1EC9E2750;
  if (!qword_1EC9E2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2750);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D79D7E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RecipeViewerPage);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D79D7EB0()
{

  return swift_deallocClassInstance();
}

id _s12NewsArticles21ArticleViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D79D81DC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_headerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D79D8248(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_headerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D79D82E8;
}

void sub_1D79D82E8(uint64_t a1, char a2)
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

void sub_1D79D8370(CGFloat a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_headerDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v53, v1, &off_1F529C470, ObjectType, v5);
    v7 = *&v53[1];
    swift_unknownObjectRelease();
    if ((v54 & 1) == 0)
    {
LABEL_5:
      v11 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_renderer], *&v2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_renderer + 24]);
      v13 = *&v2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_channelName];
      v12 = *&v2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_channelName + 8];
      v14 = *v11;
      v15 = *(*v11 + 56);

      v16 = [v15 possiblyUnfetchedAppConfiguration];
      if ([v16 respondsToSelector_])
      {
        v17 = [v16 aiAttributionArticleString];
        swift_unknownObjectRelease();
        if (v17)
        {
          sub_1D7D3034C();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_1D7D30B4C();
      v19 = a1 - v18;
      v20 = sub_1D79D65A8(v13, v12);
      sub_1D7D30E5C();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v55.origin.x = v22;
      v55.origin.y = v24;
      v55.size.width = v26;
      v55.size.height = v28;
      v29 = CGRectGetHeight(v55) + 10.0;
      if (v29 > 40.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 40.0;
      }

      v56.origin.x = 0.0;
      v56.origin.y = 0.0;
      v56.size.width = a1;
      v56.size.height = v30;
      Height = CGRectGetHeight(v56);
      v32 = [v2 view];
      if (v32)
      {
        v33 = v32;
        [v32 setFrame_];

        v34 = [v2 view];
        if (v34)
        {
          v35 = v34;
          [v34 setBackgroundColor_];

          v36 = [v2 view];
          if (v36)
          {
            v37 = v36;
            v38 = [objc_opt_self() mainScreen];
            v39 = [v38 traitCollection];

            v40 = [v39 userInterfaceStyle];
            [v37 setOverrideUserInterfaceStyle_];

            v41 = *&v2[OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_label];
            [v41 setFrame_];
            v42 = sub_1D79D65A8(v13, v12);

            [v41 setAttributedText_];

            [v41 setTextAlignment_];
            v43 = [v2 view];
            if (v43)
            {
              v44 = v43;
              [v43 frame];
              v46 = v45;
              v48 = v47;
              v50 = v49;
              v52 = v51;

              v57.origin.x = v46;
              v57.origin.y = v48;
              v57.size.width = v50;
              v57.size.height = v52;
              CGRectGetHeight(v57);
              return;
            }

            goto LABEL_20;
          }

LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 safeAreaInsets];
    v7 = v10;

    goto LABEL_5;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1D79D87DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v190 = a2;
  v182 = a3;
  v181 = type metadata accessor for TitleViewArticleViewerFeatureTransition();
  MEMORY[0x1EEE9AC00](v181, v4);
  v180 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79DA564(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v188 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v174 = &v167 - v11;
  sub_1D79DA598(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v187 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v185 = &v167 - v17;
  v18 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v168 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v177 = &v167 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v167 - v26;
  v191 = type metadata accessor for TitleViewContext();
  v178 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v28);
  v172 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v167 - v32;
  sub_1D79DA5CC(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v167 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v167 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v167 - v48;
  sub_1D79DA634(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v179 = &v167 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v186 = &v167 - v55;
  sub_1D79DA668(0);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v176 = &v167 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v189 = &v167 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v173 = &v167 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v167 - v67;
  sub_1D79DA69C(0, &unk_1EE0C1B30, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v171 = v69;
  v175 = *(v69 + 28);
  v183 = v68;
  sub_1D79DA700(a1 + v175, v68, sub_1D79DA668);
  v192 = a1;
  sub_1D79DA700(a1, v49, sub_1D79DA5CC);
  sub_1D79DA600(0);
  v71 = v70;
  v72 = *(*(v70 - 8) + 48);
  if (v72(v49, 1, v70) == 1)
  {
    sub_1D79DA930(v49, sub_1D79DA5CC);
  }

  else
  {
    sub_1D79DA700(v49, v33, type metadata accessor for TitleViewContext);
    sub_1D79DA930(v49, sub_1D79DA600);
    sub_1D79DA700(v33, v27, type metadata accessor for ArticleViewerPage);
    sub_1D79DA930(v33, type metadata accessor for TitleViewContext);
    ArticleViewerPage.article.getter(&v197);
    sub_1D79DA930(v27, type metadata accessor for ArticleViewerPage);
    v193 = v197;
    v194 = v198;
    v195 = v199;
    v196 = v200;
    if (*(&v197 + 1))
    {
      v73 = v194;
      swift_unknownObjectRetain();
      sub_1D79DA7DC(&v193, &qword_1EE0C0600);
      goto LABEL_6;
    }
  }

  v73 = 0;
LABEL_6:
  sub_1D79DA700(v192, v45, sub_1D79DA5CC);
  v169 = v72(v45, 1, v71);
  if (v169 == 1)
  {
    sub_1D79DA930(v45, sub_1D79DA5CC);
    v170 = 0;
  }

  else
  {
    sub_1D79DA880(&v45[*(v71 + 28)], &v193);
    sub_1D79DA930(v45, sub_1D79DA600);
    v74 = v196;
    sub_1D79DA8DC(&v193);
    v170 = [v74 userInterfaceStyle];
  }

  sub_1D79DA700(v192, v41, sub_1D79DA5CC);
  if (v72(v41, 1, v71) == 1)
  {
    sub_1D79DA930(v41, sub_1D79DA5CC);
    v75 = sub_1D7D295CC();
    (*(*(v75 - 8) + 56))(v185, 1, 1, v75);
  }

  else
  {
    v76 = v172;
    sub_1D79DA700(v41, v172, type metadata accessor for TitleViewContext);
    sub_1D79DA930(v41, sub_1D79DA600);
    v77 = v177;
    sub_1D79DA700(v76, v177, type metadata accessor for ArticleViewerPage);
    sub_1D79DA930(v76, type metadata accessor for TitleViewContext);
    sub_1D7C3BB44(v185);
    sub_1D79DA930(v77, type metadata accessor for ArticleViewerPage);
  }

  sub_1D79DA700(v192, v37, sub_1D79DA5CC);
  if (v72(v37, 1, v71) == 1)
  {
    sub_1D79DA930(v37, sub_1D79DA5CC);
    v78 = sub_1D7D2ACCC();
    v79 = v174;
    (*(*(v78 - 8) + 56))(v174, 1, 1, v78);
  }

  else
  {
    v80 = v172;
    sub_1D79DA700(v37, v172, type metadata accessor for TitleViewContext);
    sub_1D79DA930(v37, sub_1D79DA600);
    v81 = *(v191 + 20);
    v82 = sub_1D7D2ACCC();
    v83 = *(v82 - 8);
    v79 = v174;
    (*(v83 + 16))(v174, v80 + v81, v82);
    sub_1D79DA930(v80, type metadata accessor for TitleViewContext);
    (*(v83 + 56))(v79, 0, 1, v82);
  }

  v85 = v183;
  v84 = v184;
  v86 = v189;
  v87 = (v192 + *(v171 + 32));
  v89 = *v87;
  v88 = v87[1];
  v172 = v89;
  v174 = v88;
  if (v73)
  {
    v90 = *(v184 + 112);
    v91 = qword_1EE0C0520;
    swift_unknownObjectRetain();

    sub_1D7D2BD9C();
    v93 = [v73 disableTapToChannel];
    if ((v93 & 1) == 0)
    {
      v94 = *&v90[v91];
      v95 = swift_allocObject();
      swift_weakInit();
      v96 = swift_allocObject();
      v96[2] = v95;
      v96[3] = v73;
      v97 = v174;
      v96[4] = v172;
      v96[5] = v97;
      swift_unknownObjectRetain();
      v98 = v94;
    }

    v99 = v169 == 1;
    v100 = sub_1D79D9DFC(v73, v84);
    sub_1D799CC84(v84 + 16, &v193);
    v101 = objc_opt_self();
    v102 = v90;
    v103 = [v101 mainScreen];
    [v103 bounds];
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;

    v201.origin.x = v105;
    v201.origin.y = v107;
    v201.size.width = v109;
    v201.size.height = v111;
    Width = CGRectGetWidth(v201);
    swift_unknownObjectRelease();
    if (Width >= 375.0)
    {
      v113 = 298.0;
    }

    else
    {
      v113 = 121.0;
    }

    v114 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
    v115 = v186;
    sub_1D79DA768(v185, v186 + v114[9], sub_1D79DA598);
    sub_1D79DA768(v79, v115 + v114[10], sub_1D79DA564);
    *v115 = v73;
    *(v115 + 8) = v102;
    sub_1D799D69C(&v193, v115 + 16);
    *(v115 + 56) = 0;
    *(v115 + 64) = 0;
    *(v115 + 72) = v113;
    v116 = v170;
    *(v115 + 80) = 0x4046000000000000;
    *(v115 + 88) = v116;
    *(v115 + 96) = v99;
    *(v115 + v114[11]) = v100 & 1;
    v117 = v115;
    v84 = v184;
    (*(*(v114 - 1) + 56))(v117, 0, 1, v114);
    v85 = v183;
    v86 = v189;
  }

  else
  {
    sub_1D79DA930(v79, sub_1D79DA564);
    sub_1D79DA930(v185, sub_1D79DA598);
    v92 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
    (*(*(v92 - 8) + 56))(v186, 1, 1, v92);
  }

  v118 = v173;
  sub_1D79DA700(v85, v173, sub_1D79DA668);
  v119 = *(v178 + 48);
  if (v119(v118, 1, v191) == 1)
  {
    sub_1D79DA930(v118, sub_1D79DA668);
    v120 = 0;
  }

  else
  {
    v121 = v168;
    sub_1D79DA700(v118, v168, type metadata accessor for ArticleViewerPage);
    sub_1D79DA930(v118, type metadata accessor for TitleViewContext);
    ArticleViewerPage.article.getter(&v197);
    sub_1D79DA930(v121, type metadata accessor for ArticleViewerPage);
    v193 = v197;
    v194 = v198;
    v195 = v199;
    v196 = v200;
    if (*(&v197 + 1))
    {
      v120 = v194;
      swift_unknownObjectRetain();
      sub_1D79DA7DC(&v193, &qword_1EE0C0600);
    }

    else
    {
      v120 = 0;
    }

    v86 = v189;
  }

  v122 = [*(v190 + 48) userInterfaceStyle];
  sub_1D79DA700(v85, v86, sub_1D79DA668);
  v123 = v191;
  if (v119(v86, 1, v191) == 1)
  {
    sub_1D79DA930(v86, sub_1D79DA668);
    v124 = sub_1D7D295CC();
    (*(*(v124 - 8) + 56))(v187, 1, 1, v124);
  }

  else
  {
    v125 = v86;
    v126 = v86;
    v127 = v177;
    sub_1D79DA700(v125, v177, type metadata accessor for ArticleViewerPage);
    sub_1D79DA930(v126, type metadata accessor for TitleViewContext);
    sub_1D7C3BB44(v187);
    sub_1D79DA930(v127, type metadata accessor for ArticleViewerPage);
  }

  v128 = v176;
  sub_1D79DA700(v192 + v175, v176, sub_1D79DA668);
  if (v119(v128, 1, v123) == 1)
  {
    sub_1D79DA930(v128, sub_1D79DA668);
    v129 = sub_1D7D2ACCC();
    (*(*(v129 - 8) + 56))(v188, 1, 1, v129);
    v130 = &off_1E84EC000;
    if (v120)
    {
      goto LABEL_35;
    }

LABEL_37:
    sub_1D79DA930(v188, sub_1D79DA564);
    sub_1D79DA930(v187, sub_1D79DA598);
    v139 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
    v140 = v179;
    (*(*(v139 - 8) + 56))(v179, 1, 1, v139);
    goto LABEL_44;
  }

  v133 = *(v123 + 20);
  v134 = v128;
  v135 = sub_1D7D2ACCC();
  v136 = *(v135 - 8);
  v137 = v134 + v133;
  v138 = v188;
  (*(v136 + 16))(v188, v137, v135);
  sub_1D79DA930(v134, type metadata accessor for TitleViewContext);
  (*(v136 + 56))(v138, 0, 1, v135);
  v130 = &off_1E84EC000;
  if (!v120)
  {
    goto LABEL_37;
  }

LABEL_35:
  v131 = *(v84 + 112);
  v132 = qword_1EE0C0520;
  swift_unknownObjectRetain();

  sub_1D7D2BD9C();
  v141 = [v120 v130[334]];
  if ((v141 & 1) == 0)
  {
    v142 = *&v131[v132];
    v143 = swift_allocObject();
    swift_weakInit();
    v144 = swift_allocObject();
    v144[2] = v143;
    v144[3] = v120;
    v144[4] = v172;
    v144[5] = v174;

    swift_unknownObjectRetain();
    v145 = v142;

    v84 = v184;
  }

  v146 = sub_1D79D9DFC(v120, v84);
  sub_1D799CC84(v84 + 16, &v193);
  v147 = objc_opt_self();
  v148 = v131;
  v149 = [v147 mainScreen];
  [v149 bounds];
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v157 = v156;

  v202.origin.x = v151;
  v202.origin.y = v153;
  v202.size.width = v155;
  v202.size.height = v157;
  v158 = CGRectGetWidth(v202);
  swift_unknownObjectRelease();
  if (v158 >= 375.0)
  {
    v159 = 298.0;
  }

  else
  {
    v159 = 121.0;
  }

  v160 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
  v140 = v179;
  sub_1D79DA768(v187, &v179[v160[9]], sub_1D79DA598);
  sub_1D79DA768(v188, v140 + v160[10], sub_1D79DA564);
  *v140 = v120;
  *(v140 + 8) = v148;
  sub_1D799D69C(&v193, v140 + 16);
  *(v140 + 56) = 0;
  *(v140 + 64) = 0;
  *(v140 + 72) = v159;
  *(v140 + 80) = 0x4046000000000000;
  *(v140 + 88) = v122;
  *(v140 + 96) = 0;
  *(v140 + v160[11]) = v146 & 1;
  (*(*(v160 - 1) + 56))(v140, 0, 1, v160);
LABEL_44:
  v161 = v186;
  v162 = v180;
  sub_1D79DA700(v186, v180, sub_1D79DA634);
  v163 = v181;
  sub_1D79DA700(v140, v162 + *(v181 + 20), sub_1D79DA634);
  v164 = v182;
  *(v182 + 24) = v163;
  *(v164 + 32) = &off_1F52AE5A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v164);
  sub_1D79DA768(v162, boxed_opaque_existential_1, type metadata accessor for TitleViewArticleViewerFeatureTransition);
  sub_1D79DA930(v140, sub_1D79DA634);
  sub_1D79DA930(v161, sub_1D79DA634);
  result = sub_1D79DA930(v85, sub_1D79DA668);
  *(v164 + 40) = 0;
  return result;
}

id sub_1D79D9C64(uint64_t a1, void *a2, void (*a3)(void *))
{
  v5 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + 128), *(Strong + 152));
    if (sub_1D7D2F96C())
    {
      __swift_project_boxed_opaque_existential_1((v10 + 168), *(v10 + 192));
      v11 = sub_1D7D2E4DC();

      if (v11)
      {
        return result;
      }
    }

    else
    {
    }
  }

  result = [a2 sourceChannel];
  if (result)
  {
    *v8 = result;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    a3(v8);
    swift_unknownObjectRelease();
    return sub_1D79DA930(v8, type metadata accessor for ArticleViewerFeatureAction);
  }

  return result;
}

uint64_t sub_1D79D9DFC(void *a1, uint64_t a2)
{
  result = [a1 sourceChannel];
  if (result)
  {
    v5 = result;
    v6 = *(a2 + 120);
    v7 = [v6 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v8 = [v5 asSection];
      if (!v8 || (v9 = [v8 parentID], swift_unknownObjectRelease(), !v9))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      v9 = [v5 identifier];
    }

    v10 = sub_1D7D3034C();
    v12 = v11;

    v13 = [v7 purchasedTagIDs];
    v14 = sub_1D7D309AC();

    LOBYTE(v13) = sub_1D7D053C8(v10, v12, v14);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_8:
    v15 = [objc_msgSend(v6 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v15, v15 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28 = v26;
    v29 = v27;
    if (*(&v27 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v16 = v25;
        v17 = [v25 integerValue];
        if (v17 == -1)
        {

          goto LABEL_28;
        }

        v18 = v17;
LABEL_17:
        if (objc_getAssociatedObject(v15, ~v18))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v26 = 0u;
          v27 = 0u;
        }

        v28 = v26;
        v29 = v27;
        if (*(&v27 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v19 = v25;
            v20 = [v19 integerValue];

            if (((v20 ^ v18) & 1) == 0)
            {
LABEL_32:
              v24 = [a1 isPaid];
              swift_unknownObjectRelease();
              return v24 ^ 1;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_1D79DA7DC(&v28, &qword_1EE0BE7A0);
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_28:
        v21 = [objc_msgSend(v6 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v22 = [v5 identifier];
        if (!v22)
        {
          sub_1D7D3034C();
          v22 = sub_1D7D3031C();
        }

        v23 = [v21 containsTagID_];

        if ((v23 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {
      sub_1D79DA7DC(&v28, &qword_1EE0BE7A0);
    }

    v16 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D79DA218()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);

  return swift_deallocClassInstance();
}

void sub_1D79DA28C()
{
  v1 = *v0;
  v2 = sub_1D7D2DB0C();
  v3 = sub_1D7D30D8C();
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 112);
  }

  v5 = v3;
  [v3 setTitleView_];
}

uint64_t sub_1D79DA32C(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79DA700(a1, v5, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_1D79DA768(v5, v9, type metadata accessor for ArticleViewerArticlePage);
      v12 = *(v9 + 2);
      swift_unknownObjectRetain();
      sub_1D79DA930(v9, type metadata accessor for ArticleViewerArticlePage);
      v13 = [v12 sourceChannelID];
      swift_unknownObjectRelease();
      if (v13)
      {

        return 1;
      }

      return 0;
    }

LABEL_8:
    sub_1D79DA930(v5, type metadata accessor for ArticleViewerPage);
    return 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1D799A6BC();
      sub_1D79DA510(*&v5[*(v11 + 48)], *&v5[*(v11 + 48) + 8], *&v5[*(v11 + 48) + 16]);
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  sub_1D79DA930(v5, type metadata accessor for ArticleViewerPage);
  return 0;
}

uint64_t sub_1D79DA510(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a3 < 0)
  {
  }

  return swift_unknownObjectRelease();
}

void sub_1D79DA69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D79DA700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79DA768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79DA7DC(uint64_t a1, unint64_t *a2)
{
  sub_1D799956C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_3Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79DA930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s12NewsArticles19ArticleLoadingEventO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D79DA9DC()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D79DAACC()
{
  if (!*(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = sub_1D7D30D8C();

    v4 = [v3 _preferredNavigationBarVisibility];
    swift_unknownObjectRelease();

    return v4 == 2;
  }

  return result;
}

uint64_t type metadata accessor for PDFReplicaViewerViewController()
{
  result = qword_1EC9E18E8;
  if (!qword_1EC9E18E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D79DAE40()
{
  result = sub_1D7D29A8C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D79DAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A70](a1, a2, a3, a4, a5, ObjectType, a7);
}

uint64_t sub_1D79DAFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A48](a1, a2, ObjectType, a4);
}

uint64_t sub_1D79DB028(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12.n128_f64[0] = a4;

  return MEMORY[0x1EEE47A58](a1, a2, a3, ObjectType, a6, v12);
}

uint64_t sub_1D79DB0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A80](a1, a2, a3, a4, a5, ObjectType, a7);
}

uint64_t sub_1D79DB120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A68](a1, a2, ObjectType, a4);
}

uint64_t sub_1D79DB178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A50](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D79DB1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A60](a1, a2, ObjectType, a4);
}

void sub_1D79DB240()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D29A8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v62 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v60 - v10;
  v68.receiver = v0;
  v68.super_class = ObjectType;
  objc_msgSendSuper2(&v68, sel_viewDidLoad, v9);
  v12 = *&v0[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageViewController];
  [v1 addChildViewController_];
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v61 = ObjectType;
  v15 = [v12 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  [v14 addSubview_];

  [v12 didMoveToParentViewController_];
  sub_1D7D2AA8C();
  v17 = [v1 traitCollection];
  sub_1D79E06B4();

  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallFactory], *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallFactory + 24]);
  v63 = &v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue];
  sub_1D7D2971C();
  v18 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall;
  swift_beginAccess();
  (*(v4 + 40))(&v1[v18], v11, v3);
  swift_endAccess();
  v19 = *(v4 + 16);
  v19(v11, &v1[v18], v3);
  v20 = sub_1D7D29A7C();
  v21 = *(v4 + 8);
  v21(v11, v3);
  if ((v20 & 1) == 0)
  {
    sub_1D79DC0A8();
    LOBYTE(v65) = 3;
    sub_1D7D28C6C();
    v36 = objc_allocWithZone(type metadata accessor for PDFReplicaBarVisibilityAnimator());
    v37 = v1;
    v38 = sub_1D7AF456C(v37);
    v39 = [v37 view];
    if (v39)
    {
      v40 = v39;
      [v39 addGestureRecognizer_];

      *&v38[OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_delegate + 8] = &off_1F529C5B8;
      swift_unknownObjectWeakAssign();
      v41 = &v37[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator];
      *v41 = v38;
      v41[1] = &off_1F52A42E0;
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v22 = v62;
  v19(v62, &v1[v18], v3);
  v23 = (*(v4 + 88))(v22, v3);
  if (v23 != *MEMORY[0x1E69B6C50])
  {
    if (v23 == *MEMORY[0x1E69B6C60])
    {
      v42 = v22;
      v43 = v21;
      v21(v42, v3);
    }

    else
    {
      v43 = v21;
      if (v23 != *MEMORY[0x1E69B6C58])
      {
        sub_1D7D30C4C();
        sub_1D79A02D8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1D7D3B4D0;
        v65 = 0;
        v66 = 0xE000000000000000;
        v19(v11, &v1[v18], v3);
        sub_1D7D315DC();
        v21(v11, v3);
        v49 = v65;
        v50 = v66;
        *(v48 + 56) = MEMORY[0x1E69E6158];
        *(v48 + 64) = sub_1D79D6AE0();
        *(v48 + 32) = v49;
        *(v48 + 40) = v50;
        sub_1D7992EFC(0, &qword_1EE0BEC80);
        v51 = sub_1D7D312CC();
        sub_1D7D29AAC();

        sub_1D79DC0A8();
        LOBYTE(v65) = 3;
        sub_1D7D28C6C();
        v21(v62, v3);
        goto LABEL_15;
      }
    }

    sub_1D7D30C4C();
    sub_1D79A02D8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D7D3B4D0;
    v65 = 0;
    v66 = 0xE000000000000000;
    v19(v11, &v1[v18], v3);
    sub_1D7D315DC();
    v43(v11, v3);
    v45 = v65;
    v46 = v66;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1D79D6AE0();
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    sub_1D7992EFC(0, &qword_1EE0BEC80);
    v47 = sub_1D7D312CC();
    sub_1D7D29AAC();

    sub_1D79DC0A8();
    LOBYTE(v65) = 3;
    sub_1D7D28C6C();
LABEL_15:
    v52 = v63;
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer], *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer + 24]);
    v53 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_titleView];
    v54 = *(v52 + 1);
    v65 = *v52;
    v66 = v54;
    v55 = &v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler];
    v56 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler];
    v57 = *(v55 + 1);
    v58 = v65;

    sub_1D7C8F558(v53, &v65, v56, v57);
    v59 = v65;

    return;
  }

  (*(v4 + 96))(v22, v3);
  sub_1D799D69C(v22, &v65);
  __swift_project_boxed_opaque_existential_1(&v65, v67);
  v64[3] = v61;
  v64[4] = sub_1D79E1384(&qword_1EC9E1980, type metadata accessor for PDFReplicaViewerViewController);
  v64[0] = v1;
  v24 = v1;
  v25 = sub_1D7D296DC();
  __swift_destroy_boxed_opaque_existential_1(v64);
  sub_1D79E1384(&unk_1EC9E1988, type metadata accessor for PDFReplicaViewerViewController);
  swift_unknownObjectRetain();
  sub_1D7D297AC();
  v26 = v25;
  [v24 addChildViewController_];
  v27 = [v24 view];
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v26 view];

  if (v29)
  {
    [v28 addSubview_];

    [v26 didMoveToParentViewController_];
    v30 = *&v24[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController];
    *&v24[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController] = v26;
    v31 = v26;

    sub_1D79DBBBC(0);
    MEMORY[0x1EEE9AC00](v32, v33);
    *(&v60 - 2) = v31;
    type metadata accessor for CGSize(0);
    sub_1D7D294BC();
    *(swift_allocObject() + 16) = v24;
    v34 = v24;
    v35 = sub_1D7D2934C();
    sub_1D7D2941C();

    __swift_destroy_boxed_opaque_existential_1(&v65);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
}

void sub_1D79DBBBC(uint64_t a1)
{
  if (sub_1D7D2DB0C())
  {
    return;
  }

  v3 = [v1 navigationItem];
  v4 = v1;
  v5 = v4;
  while (1)
  {
    v6 = v3;
    v33 = v4;
    v3 = [v4 navigationItem];

    v7 = [v33 parentViewController];
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

LABEL_6:
    v9 = [v33 parentViewController];

    if (!v9)
    {
      v33 = 0;
      goto LABEL_10;
    }

    v4 = v9;
  }

LABEL_10:
  v10 = [v5 parentViewController];
  if (!v10)
  {
LABEL_15:
    v21 = sub_1D7D30D8C();
    v22 = sub_1D7D30D8C();
    v23 = [v22 titleView];

    [v21 setTitleView_];
    v24 = sub_1D7D30D8C();
    v25 = sub_1D7D30D8C();
    v26 = [v25 rightBarButtonItems];

    [v24 setRightBarButtonItems_];
    v27 = sub_1D7D30D8C();
    v28 = [v5 ts_transitionContainerViewController];
    if (v28)
    {
      v29 = v28;
      sub_1D7D2BDCC();
    }

    else
    {
      v30 = sub_1D7D30D8C();
      v29 = [v30 leftBarButtonItems];

      if (!v29)
      {
LABEL_20:
        [v27 setLeftBarButtonItems_];

        if (a1)
        {
          sub_1D7992EFC(0, &qword_1EE0BF050);
          v18 = sub_1D7D3062C();
        }

        else
        {
          v18 = 0;
        }

        [v5 setToolbarItems_];
        goto LABEL_31;
      }

      sub_1D7992EFC(0, &qword_1EE0BF050);
      sub_1D7D3063C();
    }

    sub_1D7992EFC(0, &qword_1EE0BF050);
    v29 = sub_1D7D3062C();

    goto LABEL_20;
  }

  v11 = v10;
  type metadata accessor for IssueViewerViewController();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_15;
  }

  v13 = v12;
  v14 = sub_1D7D30D8C();
  v15 = [v14 titleView];

  [v3 setTitleView_];
  v16 = sub_1D7D30D8C();
  v17 = [v16 rightBarButtonItems];

  [v3 setRightBarButtonItems_];
  v18 = v11;
  v19 = [v13 ts_transitionContainerViewController];
  if (v19)
  {
    v20 = v19;
    sub_1D7D2BDCC();
    goto LABEL_26;
  }

  v31 = sub_1D7D30D8C();
  v20 = [v31 leftBarButtonItems];

  if (v20)
  {
    sub_1D7992EFC(0, &qword_1EE0BF050);
    sub_1D7D3063C();
LABEL_26:

    sub_1D7992EFC(0, &qword_1EE0BF050);
    v20 = sub_1D7D3062C();
  }

  [v3 setLeftBarButtonItems_];

  if (a1)
  {
    sub_1D7992EFC(0, &qword_1EE0BF050);
    v32 = sub_1D7D3062C();
  }

  else
  {
    v32 = 0;
  }

  [v13 setToolbarItems_];

  v3 = v18;
LABEL_31:
}

void sub_1D79DC0A8()
{
  v1 = sub_1D79DDD84();
  v2 = sub_1D7D30D8C();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_menuProvider), *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_menuProvider + 24));
  v3 = *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue + 8);
  v4 = *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue);

  v5 = sub_1D7D30D8C();
  v6 = [v5 overflowPresentationSource];

  v7 = *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_tracker);
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v4;
  v11[4] = v3;
  v11[5] = v10;
  v11[6] = v7;
  v19[4] = sub_1D79E112C;
  v19[5] = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D7AEB0C8;
  v19[3] = &block_descriptor;
  v12 = _Block_copy(v19);
  v13 = v4;

  v14 = [v8 elementWithUncachedProvider_];
  _Block_release(v12);

  swift_unknownObjectRelease();
  [v2 setAdditionalOverflowItems_];

  v15 = sub_1D7D30D8C();
  sub_1D79A7834(0, &qword_1EE0BE7F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7D3C670;
  *(v16 + 32) = v1;
  sub_1D7992EFC(0, &qword_1EE0BF050);
  v17 = v1;
  v18 = sub_1D7D3062C();

  [v15 setRightBarButtonItems_];
}

void sub_1D79DC3A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D29A8C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews, v6);
  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 toolbar];

    if (v11)
    {
      v12 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_coverButton];
      if (v12)
      {
        v13 = v12;
        sub_1D7AA0E94(v11);
      }
    }
  }

  v14 = sub_1D79DC578(v1);
  v15 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall;
  swift_beginAccess();
  (*(v4 + 16))(v8, &v1[v15], v3);
  v16 = sub_1D7D29A7C();
  (*(v4 + 8))(v8, v3);
  if (v16)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  sub_1D7C4AE5C(v17 & 0xFFFFFFFE | v14 & 1);
}

id sub_1D79DC578(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    Width = CGRectGetWidth(v22);
    result = [a1 view];
    if (result)
    {
      v13 = result;
      [result bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v23.origin.x = v15;
      v23.origin.y = v17;
      v23.size.width = v19;
      v23.size.height = v21;
      return (Width / CGRectGetHeight(v23) >= 1.33333333);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79DC6C0(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  swift_getObjectType();
  sub_1D7D2AB3C();
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer], *&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer + 24]);
  v5 = *&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue];
  v4 = *&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue + 8];
  sub_1D7992EFC(0, &qword_1EE0BECD8);
  sub_1D7D294BC();
  sub_1D7992EFC(0, &qword_1EE0BEFF0);
  v6 = sub_1D7D30E1C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  sub_1D7D2AF2C();
  v8 = v5;

  sub_1D7D293AC();

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  v10 = v8;

  v11 = sub_1D7D2934C();
  sub_1D7D2944C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1D7D2934C();
  sub_1D7D293AC();

  if (qword_1EE0C0140 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7D2C04C();
  swift_allocObject();

  sub_1D7D2A60C();
  sub_1D7D2A61C();
  sub_1D79E1384(&qword_1EC9E1968, MEMORY[0x1E69D79E0]);
  sub_1D7D2AB0C();

  result = sub_1D7D28E7C();
  if (*&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator])
  {
    swift_unknownObjectRetain();
    sub_1D7AF4688(0, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D79DCA90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    if (qword_1EE0C0128 != -1)
    {
      swift_once();
    }

    sub_1D7D2AF4C();
    sub_1D79E1384(&unk_1EC9E1970, MEMORY[0x1E69D7D88]);

    v2 = v1;
    sub_1D7D2AB0C();
  }
}

uint64_t sub_1D79DCBE8()
{
  v0 = sub_1D7D2F09C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D29A8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall;
    swift_beginAccess();
    (*(v6 + 16))(v9, &v11[v12], v5);
    LOBYTE(v12) = sub_1D7D29A7C();
    (*(v6 + 8))(v9, v5);
    if (v12)
    {

      return 0;
    }

    else
    {
      sub_1D7C4B2B0(v4);
      sub_1D7D2F08C();
      (*(v1 + 8))(v4, v0);
      swift_getObjectType();
      v13 = sub_1D7D2B7CC();
      swift_unknownObjectRelease();

      return v13;
    }
  }

  return result;
}

void sub_1D79DCE5C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  if ((_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0() & 1) == 0)
  {
    sub_1D7D28C6C();
  }

  sub_1D7D28C6C();
  sub_1D79DD018();
  if (*&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageSheetPresentationObserver])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7D2B9BC();
  }

  if ((_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0() & 1) == 0)
  {
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];

      if (v6)
      {
        v7 = [v6 windowScene];

        if (v7)
        {
          v8 = [v2 title];
          [v7 setTitle_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D79DD018()
{
  v1 = v0;
  sub_1D79E1440(0, &qword_1EC9E1910, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7708]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v50 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44[-v9];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44[-v13];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44[-v17];
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D79E062C(&qword_1EC9E1960);
  sub_1D7D309EC();
  sub_1D7D30A5C();
  v19 = *(v4 + 8);
  result = v19(v18, v3);
  if (v54 == v57)
  {
    goto LABEL_27;
  }

  v48 = v10;
  v21 = *&v0[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageViewController];
  sub_1D7D2AA3C();
  v49 = *(&v54 + 1);
  v22 = v54;
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  v23 = sub_1D7D29FCC();
  v19(v18, v3);
  result = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    return result;
  }

  v47 = v21;
  sub_1D7D29FEC();
  v19(v14, v3);
  v24 = v57;
  v25 = v58;
  if (!v22)
  {
    if (!v57)
    {
      v29 = 0;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!v57)
  {
LABEL_9:
    sub_1D79E11E0(v22);
    sub_1D79E11E0(v24);
    goto LABEL_10;
  }

  *&v53 = v22;
  *(&v53 + 1) = v49;
  sub_1D79E1228(v22);

  v26 = sub_1D79F95F4();
  v46 = v27;
  v51 = v24;
  v52 = v25;
  if (v26 == sub_1D79F95F4() && v46 == v28)
  {
    sub_1D79E11E0(v24);

    sub_1D79E11E0(v22);

    v29 = v22;
LABEL_14:
    sub_1D79E11E0(v29);
    goto LABEL_15;
  }

  v45 = sub_1D7D3197C();
  sub_1D79E11E0(v24);

  sub_1D79E11E0(v22);

  sub_1D79E11E0(v22);
  if ((v45 & 1) == 0)
  {
LABEL_10:
    sub_1D7D2C55C();
    LOBYTE(v57) = 1;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    *(swift_allocObject() + 16) = v1;
    v30 = v1;
    sub_1D7D2A4BC();

    sub_1D79E1030(&v54, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  }

LABEL_15:
  sub_1D7D2AA3C();
  v31 = v54;
  sub_1D7D2ADEC();
  v32 = v48;
  sub_1D7D28EDC();

  sub_1D7D2ADEC();
  v33 = v50;
  sub_1D7D28EDC();

  sub_1D7D29F7C();
  v19(v33, v3);
  sub_1D7D29FEC();
  v19(v32, v3);
  v34 = v57;
  v35 = v58;
  if (!v31)
  {
    if (!v57)
    {
      v40 = 0;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (!v57)
  {
LABEL_21:
    sub_1D79E11E0(v31);
    sub_1D79E11E0(v34);
    goto LABEL_22;
  }

  v53 = v31;
  sub_1D79E1228(v31);

  v36 = sub_1D79F95F4();
  v38 = v37;
  v51 = v34;
  v52 = v35;
  if (v36 == sub_1D79F95F4() && v38 == v39)
  {
    sub_1D79E11E0(v34);

    sub_1D79E11E0(v31);

    v40 = v31;
LABEL_26:
    result = sub_1D79E11E0(v40);
    goto LABEL_27;
  }

  v42 = sub_1D7D3197C();
  sub_1D79E11E0(v34);

  sub_1D79E11E0(v31);

  result = sub_1D79E11E0(v31);
  if ((v42 & 1) == 0)
  {
LABEL_22:
    sub_1D7D2C56C();
    LOBYTE(v57) = 1;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    *(swift_allocObject() + 16) = v1;
    v41 = v1;
    sub_1D7D2A4BC();

    result = sub_1D79E1030(&v54, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  }

LABEL_27:
  if (!*&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController])
  {
    sub_1D7D2C43C();
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    *(swift_allocObject() + 16) = v1;
    v43 = v1;
    sub_1D7D2A4CC();

    return sub_1D79E1030(&v54, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  }

  return result;
}

void sub_1D79DD7BC(uint64_t a1)
{
  v2 = sub_1D7D2B79C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v3 + 16))(v6, a1, v2);
    v9 = (*(v3 + 88))(v6, v2);
    if (v9 == *MEMORY[0x1E69D8248])
    {

      sub_1D7D2A4EC();
    }

    else if (v9 == *MEMORY[0x1E69D8240])
    {
      sub_1D79DD018();
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_1D79DD9A0(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator])
  {
    swift_unknownObjectRetain();
    sub_1D7AF4688(0, 0);
    swift_unknownObjectRelease();
  }

  sub_1D7D2A4EC();
  swift_getObjectType();
  return sub_1D7D2AB2C();
}

void sub_1D79DDB48(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  sub_1D79E06B4();

  v4 = [v1 toolbarItems];
  if (v4)
  {
    v5 = v4;
    sub_1D7992EFC(0, &qword_1EE0BF050);
    v6 = sub_1D7D3063C();
  }

  else
  {
    v6 = 0;
  }

  sub_1D79DBBBC(v6);

  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer], *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer + 24]);
  v7 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_titleView];
  v8 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue + 8];
  v13[0] = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue];
  v13[1] = v8;
  v10 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler];
  v9 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler + 8];
  v11 = v13[0];

  sub_1D7C8F558(v7, v13, v10, v9);
  v12 = v13[0];
}

id sub_1D79DDD84()
{
  v1 = v0;
  sub_1D79E04D4(0, &qword_1EE0BF650, MEMORY[0x1E69B6330], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v43 - v4;
  v6 = sub_1D7D2B49C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    if (qword_1EE0C0678 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EE0C0680;
  }

  else
  {
    if (qword_1EC9E0060 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EC9E92D8;
  }

  v12 = *v11;
  v13 = objc_opt_self();
  v43[0] = v12;
  v14 = [v13 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D7D2A4DC();
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7FA8], v6);
  v15 = *(v1 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_tracker);
  v43[4] = sub_1D7D28A3C();
  v43[5] = sub_1D79E1384(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v43[1] = v15;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  sub_1D7D2B0EC();
  sub_1D7D2C4BC();
  sub_1D79E1154();
  v17 = *(v16 + 48);
  v18 = *(v1 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue);
  *v5 = v18;
  v19 = *MEMORY[0x1E69B6348];
  v20 = sub_1D7D2F51C();
  (*(*(v20 - 8) + 104))(&v5[v17], v19, v20);
  v21 = *MEMORY[0x1E69B6310];
  v22 = sub_1D7D2F4FC();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v5, v21, v22);
  (*(v23 + 56))(v5, 0, 1, v22);
  sub_1D79E04D4(0, &unk_1EE0BFF10, MEMORY[0x1E69B6330], MEMORY[0x1E69D7C98]);
  objc_allocWithZone(v24);
  v25 = v43[0];
  v26 = v18;
  v27 = v14;
  v28 = sub_1D7D2AD6C();
  v29 = sub_1D7D3031C();
  [v28 setIdentifier_];

  sub_1D7D2AD5C();
  v30 = [v28 customView];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v34 = v31;
    v35 = sub_1D7D3031C();
    [v34 setAccessibilityLabel_];

    [v34 setShowsLargeContentViewer_];
    v36 = sub_1D7D3031C();

    [v34 setLargeContentTitle_];
  }

  if (sub_1D7D2DB0C())
  {
    type metadata accessor for Localized();
    v37 = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();
    v39 = v28;
    v40 = [v38 bundleForClass_];
    sub_1D7D2811C();

    v41 = sub_1D7D3031C();

    [v39 setTitle_];

    v27 = v25;
    v25 = v39;
  }

  return v28;
}

uint64_t sub_1D79DE448()
{
  sub_1D7D2ADEC();
  sub_1D79E062C(&unk_1EC9E1918);
  sub_1D7D28F1C();

  return sub_1D7D28C6C();
}

uint64_t sub_1D79DE4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();

    v7 = a2;
    v8 = a3;
    sub_1D7C4B014(&v7);
    v7 = a2;
    v8 = a3;
    sub_1D7C4B134(&v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D79DE578(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v3 = sub_1D7D2918C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v8 = MEMORY[0x1E69D6810];
  sub_1D79E04D4(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2916C();
  sub_1D7D2917C();
  v16 = v9;
  sub_1D79E1384(&qword_1EE0C0380, MEMORY[0x1E69D6810]);
  sub_1D79E04D4(0, &unk_1EE0BF2C0, v8, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v12 = v15;
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;

  sub_1D7D28C8C();

  (*(v4 + 8))(v7, v3);
}

void sub_1D79DE810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D79E1440(0, &qword_1EC9E1910, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7708]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1D79A7834(0, &qword_1EE0BE890);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4D0;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v14 = sub_1D7BDE0A4(inited);
    swift_setDeallocating();
    sub_1D79E0AA4(inited + 32);
    sub_1D7D2ADEC();
    sub_1D7D28EDC();

    v19 = v14;
    v15 = sub_1D7D29F8C();
    (*(v7 + 8))(v10, v6);

    if (v15[2])
    {
      v16 = v15[4];
      v17 = v15[5];

      v19 = v16;
      v20 = v17;
      sub_1D7D2AABC();
    }

    else
    {
    }
  }
}

uint64_t sub_1D79DEA80()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler) + 32);
  result = swift_beginAccess();
  if (*(v1 + 56))
  {
    sub_1D799CC84(v1 + 32, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 40))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1D79DEB44(uint64_t a1, uint64_t a2)
{
  v12[0] = a1;
  v3 = sub_1D7D2918C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B229C0(&unk_1F529A240);
  v8 = MEMORY[0x1E69D6810];
  sub_1D79E04D4(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2916C();
  sub_1D7D2917C();
  v12[1] = v9;
  sub_1D79E1384(&qword_1EE0C0380, MEMORY[0x1E69D6810]);
  sub_1D79E04D4(0, &unk_1EE0BF2C0, v8, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  v10 = swift_allocObject();
  *(v10 + 16) = v12[0];
  *(v10 + 24) = a2;

  sub_1D7D28C7C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D79DEDB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D8418];
  v3 = sub_1D7D2BABC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for PDFReplicaViewerViewController.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PDFReplicaViewerViewController.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D79DF01C()
{
  result = qword_1EC9E18F8;
  if (!qword_1EC9E18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E18F8);
  }

  return result;
}

uint64_t sub_1D79DF070(uint64_t a1)
{
  v2 = type metadata accessor for PDFReplicaViewerRoute();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7D2AA3C();
  v7 = v13;
  v6 = v14;
  if (v13)
  {

    sub_1D79E11E0(v7);
    v12[0] = v7;
    v12[1] = v6;
    v8 = sub_1D79F95F4();
    v10 = v9;
    sub_1D79E11E0(v7);
  }

  else
  {
    sub_1D79E11E0(0);
    v8 = 0;
    v10 = 0;
  }

  __swift_project_boxed_opaque_existential_1((*(a1 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler) + 48), *(*(a1 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler) + 72));
  *v5 = v8;
  v5[1] = v10;
  swift_storeEnumTagMultiPayload();

  sub_1D7CF0CE4(v5);

  return sub_1D79E1268(v5, type metadata accessor for PDFReplicaViewerRoute);
}

id sub_1D79DF1D4()
{
  result = sub_1D7D2AA6C();
  if (!result)
  {

    return v1;
  }

  return result;
}

void sub_1D79DF234()
{
  if ((sub_1D7D2DB0C() & 1) != 0 && (sub_1D7992EFC(0, &unk_1EC9E1950), (v1 = sub_1D7D30D9C()) != 0))
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];

      v5 = [v2 view];
      if (v5)
      {
        [v5 safeAreaInsets];

        sub_1D7D2B01C();
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 safeAreaInsets];

        sub_1D7D2B01C();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

id sub_1D79DF428@<X0>(uint64_t a1@<X8>)
{
  sub_1D79DF234();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  MEMORY[0x1DA70E590](v14, v4, v6, v8, v10);
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = result;
  [result safeAreaInsets];

  sub_1D7D30B3C();
  v16 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  [result layoutMargins];

  sub_1D7D2AF6C();
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = result;
  [result bounds];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result window];

  if (v20)
  {
    [v20 bounds];
  }

  v21 = [objc_opt_self() mainScreen];
  [v21 nativeBounds];

  v22 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v23 = result;
  v24 = objc_opt_self();
  v25 = [v23 semanticContentAttribute];

  [v24 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v26 = [v1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  sub_1D7D2976C();
  v28 = sub_1D7D2977C();
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 0, 1, v28);
}

unint64_t sub_1D79DF824()
{
  result = qword_1EC9E1900;
  if (!qword_1EC9E1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1900);
  }

  return result;
}

void sub_1D79DF878()
{
  v1 = sub_1D7D2C09C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall;
  v9 = *MEMORY[0x1E69B6C58];
  v10 = sub_1D7D29A8C();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  v11 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_navigationItemStyle;
  sub_1D7D2ACBC();
  sub_1D79E04D4(0, &qword_1EE0C0470, MEMORY[0x1E69D7C68], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v11) = sub_1D7D28ECC();
  v12 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_titleView;
  (*(v2 + 104))(v5, *MEMORY[0x1E69D86B0], v1);
  v13 = objc_allocWithZone(type metadata accessor for TitleView());
  *(v0 + v12) = TitleView.init(layout:)(v5);
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController) = 0;
  v14 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventManager;
  sub_1D79E1440(0, &qword_1EC9E1998, sub_1D79E14A8, &type metadata for PDFReplicaViewerViewController.Event, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *(v0 + v14) = sub_1D7D28C9C();
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_newsPlusLabelItem) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_backButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_nextButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_coverButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issueCoverView) = 0;
  v15 = (v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageSheetPresentationObserver) = 0;
  sub_1D7D3160C();
  __break(1u);
}

id sub_1D79DFB6C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v61 = a3;
  v62 = a1;
  v60 = sub_1D7D2918C();
  v6 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v7);
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v63 = a2[1];
  v64 = v9;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  sub_1D79A02D8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7D3B4E0;
  v13 = *&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue];
  v14 = [v13 title];
  v15 = sub_1D7D3034C();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D79D6AE0();
  *(v12 + 64) = v19;
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v20 = [v13 coverDate];
  v21 = sub_1D7D3034C();
  v23 = v22;

  *(v12 + 96) = v18;
  *(v12 + 104) = v19;
  *(v12 + 72) = v21;
  *(v12 + 80) = v23;
  sub_1D7D3037C();

  v24 = sub_1D7D3031C();

  [v4 setTitle_];

  if ((_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0() & 1) == 0)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_31;
    }

    v26 = result;
    v27 = [result window];

    if (v27)
    {
      v28 = [v27 windowScene];

      if (v28)
      {
        v29 = [v4 title];
        [v28 setTitle_];
      }
    }
  }

  sub_1D7B229C0(&unk_1F529A268);
  v30 = MEMORY[0x1E69D6810];
  sub_1D79E04D4(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D7D3C680;
  sub_1D7D2916C();
  sub_1D7D2915C();
  sub_1D7D2917C();
  *&v65 = v31;
  sub_1D79E1384(&qword_1EE0C0380, MEMORY[0x1E69D6810]);
  sub_1D79E04D4(0, &unk_1EE0BF2C0, v30, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  v33 = v59;
  v32 = v60;
  sub_1D7D313AC();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v37 = v63;
  v36 = v64;
  v35[2] = v34;
  v35[3] = v36;
  v35[4] = v37;

  sub_1D7D28C7C();

  (*(v6 + 8))(v33, v32);

  type metadata accessor for PDFReplicaViewController();
  v38 = v61;
  if (swift_dynamicCastClass())
  {
    v39 = v38;
    v40 = v4;
    sub_1D7C452F4(v4, &off_1F529C598);
  }

  sub_1D79E1440(0, &qword_1EC9E1910, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7708]);
  sub_1D7D29F7C();
  sub_1D7D29FEC();
  v70 = v65;
  v41 = sub_1D79F95F4();
  v43 = v42;
  v68 = v64;
  v69 = v63;
  if (v41 == sub_1D79F95F4() && v43 == v44)
  {
  }

  else
  {
    v45 = sub_1D7D3197C();

    if ((v45 & 1) == 0)
    {
      v47 = *&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_backButton];
      if (v47)
      {
        [v47 setEnabled_];
      }

      sub_1D7D2C56C();
      LOBYTE(v70) = 1;
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      *(swift_allocObject() + 16) = v4;
      v48 = v4;
      sub_1D7D2A4BC();

      goto LABEL_18;
    }
  }

  v46 = *&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_backButton];
  if (v46)
  {
    [v46 setEnabled_];
  }

  sub_1D7D2C56C();
  LOBYTE(v70) = 1;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_1D7D2A4BC();
LABEL_18:

  sub_1D79E1030(&v65, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  v49 = sub_1D7D29FCC();
  v50 = __OFSUB__(v49, 1);
  result = (v49 - 1);
  if (!v50)
  {
    sub_1D7D29FEC();
    v70 = v65;
    v51 = sub_1D79F95F4();
    v53 = v52;
    v68 = v64;
    v69 = v63;
    if (v51 == sub_1D79F95F4() && v53 == v54)
    {
    }

    else
    {
      v55 = sub_1D7D3197C();

      if ((v55 & 1) == 0)
      {
        v57 = *&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_nextButton];
        if (v57)
        {
          [v57 setEnabled_];
        }

        sub_1D7D2C55C();
        LOBYTE(v70) = 1;
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        *(swift_allocObject() + 16) = v4;
        v58 = v4;
        sub_1D7D2A4BC();

        goto LABEL_29;
      }
    }

    v56 = *&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_nextButton];
    if (v56)
    {
      [v56 setEnabled_];
    }

    sub_1D7D2C55C();
    LOBYTE(v70) = 1;
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_1D7D2A4BC();
LABEL_29:

    return sub_1D79E1030(&v65, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1D79E04D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D79E0538()
{
  result = qword_1EE0BF2B0;
  if (!qword_1EE0BF2B0)
  {
    sub_1D79E04D4(255, &unk_1EE0BF2C0, MEMORY[0x1E69D6810], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF2B0);
  }

  return result;
}

uint64_t sub_1D79E062C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D79E1440(255, &qword_1EC9E1910, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7708]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D79E06B4()
{
  v1 = v0;
  v35 = sub_1D7D2AD0C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v9 = sub_1D7D2ACCC();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PDFReplicaViewerColorPalette();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_styler;
  sub_1D799CC84(v0 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_styler, v36);
  v18 = __swift_project_boxed_opaque_existential_1(v36, v37);
  result = [v1 view];
  if (result)
  {
    v20 = result;
    v22 = *(*v18 + 40);
    v21 = *(*v18 + 48);
    __swift_project_boxed_opaque_existential_1((*v18 + 16), v22);
    (*(v21 + 24))(v22, v21);
    v23 = *v16;
    sub_1D79E1268(v16, type metadata accessor for PDFReplicaViewerColorPalette);
    [v20 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = [v1 navigationController];
    v25 = [v24 toolbar];

    [v25 ts_setTransparentBackground];
    sub_1D799CC84(v1 + v17, v36);
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v26 = [v1 splitViewController];
    if (v26)
    {
      v27 = v26;
      v28 = v32;
      sub_1D7D30F4C();

      v29 = v28;
      v30 = v35;
      (*(v2 + 32))(v8, v29, v35);
    }

    else
    {
      v30 = v35;
      (*(v2 + 104))(v8, *MEMORY[0x1E69D7C90], v35);
    }

    sub_1D7B6BE54(v12);
    (*(v2 + 8))(v8, v30);
    sub_1D79E1384(&unk_1EE0BFF30, MEMORY[0x1E69D7C68]);
    sub_1D7D28F1C();
    (*(v33 + 8))(v12, v34);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D79E0AF8()
{
  v1 = v0;
  sub_1D79E04D4(0, &qword_1EC9E1928, MEMORY[0x1E69D7930], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v37 - v4;
  v6 = sub_1D7D2B22C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v37 - v13;
  v15 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController;
  v16 = *&v0[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController];
  if (v16)
  {
    v17 = v16;
    [v17 willMoveToParentViewController_];
    v18 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
    v19 = [v17 view];
    if (!v19)
    {
      __break(1u);
      goto LABEL_19;
    }

    v20 = v19;
    [v19 removeFromSuperview];

    [v17 removeFromParentViewController];
    v21 = *&v1[v15];
    *&v1[v15] = 0;

    sub_1D79DC0A8();
    v22 = sub_1D7D2AA6C();
    if (v22 && (v42[0] = v22, sub_1D7992EFC(0, &qword_1EE0BF010), sub_1D798F168(0, &unk_1EC9E1938), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v40 + 1))
      {
        v38 = v7;
        sub_1D799D69C(&v39, v42);
        v23 = &v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_sessionManager];
        v24 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_sessionManager + 24];
        v37[2] = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_sessionManager + 32];
        v37[1] = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_sessionManager], v24);
        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        sub_1D7D28CBC();
        sub_1D7D2B20C();

        v25 = sub_1D7D2A3DC();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v5, 1, v25) == 1)
        {
          sub_1D79E10A0(v5);
          v27 = v38;
          (*(v38 + 104))(v14, *MEMORY[0x1E69D7E80], v6);
        }

        else
        {
          sub_1D7D2A3CC();
          (*(v26 + 8))(v5, v25);
          v27 = v38;
          (*(v38 + 32))(v14, v10, v6);
        }

        v18 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
        __swift_project_boxed_opaque_existential_1(v23, *(v23 + 3));
        sub_1D7D2B1FC();
        __swift_project_boxed_opaque_existential_1(v23, *(v23 + 3));
        sub_1D7D2B21C();
        (*(v27 + 8))(v14, v6);
        __swift_destroy_boxed_opaque_existential_1(v42);
        goto LABEL_10;
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    sub_1D79E1030(&v39, &qword_1EC9E1930, &unk_1EC9E1938, MEMORY[0x1E69D7650]);
LABEL_10:
    v28 = &v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator];
    v29 = *&v1[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator];
    if (v29)
    {
      swift_unknownObjectRetain();
      v30 = [v1 v18[167]];
      if (!v30)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v31 = v30;
      [v30 removeGestureRecognizer_];

      swift_unknownObjectRelease();
    }

    *v28 = 0;
    v28[1] = 0;
    swift_unknownObjectRelease();
    v32 = objc_allocWithZone(type metadata accessor for PDFReplicaBarVisibilityAnimator());
    v33 = v1;
    v34 = sub_1D7AF456C(v33);
    v35 = [v33 v18[167]];
    if (v35)
    {
      v36 = v35;
      [v35 addGestureRecognizer_];

      *&v34[OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_delegate + 8] = &off_1F529C5B8;
      swift_unknownObjectWeakAssign();
      *v28 = v34;
      v28[1] = &off_1F52A42E0;
      swift_unknownObjectRelease();
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_1D79E1030(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D79A02D8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D79E10A0(uint64_t a1)
{
  sub_1D79E04D4(0, &qword_1EC9E1928, MEMORY[0x1E69D7930], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D79E1154()
{
  if (!qword_1EC9E1948)
  {
    sub_1D7992EFC(255, &qword_1EE0BED00);
    sub_1D7D2F51C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E1948);
    }
  }
}

uint64_t sub_1D79E11E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D79E1228(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D79E1268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79E1384(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D79E1440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D79E14A8()
{
  result = qword_1EC9E19A0;
  if (!qword_1EC9E19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E19A0);
  }

  return result;
}

char *FormatViewController.articles.getter()
{
  v87 = sub_1D7D2E8FC();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v0);
  v86 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D7D2F34C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v88 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v85 = &v66 - v7;
  sub_1D79E285C(0, &qword_1EE0BB2C0, MEMORY[0x1E69B6218], sub_1D79E27E0, MEMORY[0x1E69D7BF0]);
  v84 = v8;
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v66 - v10;
  sub_1D79E28FC(0, &unk_1EE0BB290, MEMORY[0x1E69D7DC0]);
  v13 = v12;
  v79 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v71 = &v66 - v15;
  sub_1D79E2814(0);
  v90 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79E28DC(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v66 - v28;
  v91[0] = sub_1D7D2F6BC();
  sub_1D79E28FC(0, &qword_1EE0BB278, MEMORY[0x1E69D7EA0]);
  sub_1D79E29F4();
  v30 = v21;
  sub_1D7D2B77C();

  v68 = v22;
  v31 = *(v22 + 16);
  v67 = v29;
  v31(v25, v29, v21);
  sub_1D79E7194(&unk_1EE0BB318, sub_1D79E28DC);
  sub_1D7D304FC();
  v32 = *(v90 + 44);
  v33 = sub_1D79E29C0();
  sub_1D7D30A5C();
  if (*&v19[v32] == v91[0])
  {
    v79 = MEMORY[0x1E69E7CC0];
LABEL_3:
    sub_1D79E3B74(v19, sub_1D79E2814);
    (*(v68 + 8))(v67, v30);
    return v79;
  }

  v77 = v79 + 16;
  v82 = v88 + 8;
  v83 = v72 + 16;
  v80 = (v89 + 8);
  v81 = (v89 + 32);
  v35 = (v72 + 8);
  v75 = v79 + 8;
  v79 = MEMORY[0x1E69E7CC0];
  v36 = v71;
  v70 = v13;
  v69 = v30;
  v76 = v19;
  v74 = v32;
  v73 = v33;
  while (1)
  {
    v38 = sub_1D7D30AAC();
    (*v77)(v36);
    v38(v91, 0);
    sub_1D7D30A6C();
    v39 = sub_1D7D2B05C();
    v40 = *(v39 + 16);
    if (v40)
    {
      break;
    }

    v44 = MEMORY[0x1E69E7CC0];
LABEL_26:
    (*v75)(v36, v13);
    v58 = *(v44 + 2);
    result = v79;
    v59 = *(v79 + 2);
    v60 = v59 + v58;
    v19 = v76;
    if (__OFADD__(v59, v58))
    {
      goto LABEL_42;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v61 = v79;
    if (!result || v60 > *(v79 + 3) >> 1)
    {
      if (v59 <= v60)
      {
        v62 = v59 + v58;
      }

      else
      {
        v62 = v59;
      }

      result = sub_1D79E3A50(result, v62, 1, v79);
      v61 = result;
    }

    v63 = *(v44 + 2);
    v79 = v61;
    if (v63)
    {
      if ((*(v61 + 3) >> 1) - *(v61 + 2) < v58)
      {
        goto LABEL_44;
      }

      swift_arrayInitWithCopy();

      v37 = v74;
      if (v58)
      {
        v64 = *(v79 + 2);
        v56 = __OFADD__(v64, v58);
        v65 = v64 + v58;
        if (v56)
        {
          goto LABEL_45;
        }

        *(v79 + 2) = v65;
      }
    }

    else
    {

      v37 = v74;
      if (v58)
      {
        goto LABEL_43;
      }
    }

    sub_1D7D30A5C();
    if (*&v19[v37] == v91[0])
    {
      goto LABEL_3;
    }
  }

  v41 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v78 = v39;
  v42 = v39 + v41;
  v43 = *(v72 + 16);
  v89 = *(v72 + 72);
  v90 = v43;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v45 = v84;
    (v90)(v11, v42, v84);
    v46 = v85;
    sub_1D7D2ABBC();
    v47 = v88;
    sub_1D79E3594(v46, v88);
    sub_1D79E35F8();

    v49 = v86;
    v48 = v87;
    (*v81)(v86, v47, v87);
    v50 = FeedItemLayoutAttributes.articles.getter();
    (*v80)(v49, v48);
    sub_1D79E3B74(v46, MEMORY[0x1E69B6218]);
    result = (*v35)(v11, v45);
    v51 = *(v50 + 16);
    v52 = *(v44 + 2);
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v53 <= *(v44 + 3) >> 1)
    {
      if (*(v50 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v52 <= v53)
      {
        v54 = v52 + v51;
      }

      else
      {
        v54 = v52;
      }

      result = sub_1D79E3A50(result, v54, 1, v44);
      v44 = result;
      if (*(v50 + 16))
      {
LABEL_20:
        if ((*(v44 + 3) >> 1) - *(v44 + 2) < v51)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v51)
        {
          v55 = *(v44 + 2);
          v56 = __OFADD__(v55, v51);
          v57 = v55 + v51;
          if (v56)
          {
            goto LABEL_41;
          }

          *(v44 + 2) = v57;
        }

        goto LABEL_10;
      }
    }

    if (v51)
    {
      goto LABEL_39;
    }

LABEL_10:
    v42 += v89;
    if (!--v40)
    {

      v13 = v70;
      v36 = v71;
      v30 = v69;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

char *FormatViewController.recipes.getter()
{
  v89 = sub_1D7D2E8FC();
  v82 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v0);
  v88 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D7D2F34C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v90 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v87 = &v67 - v7;
  sub_1D79E285C(0, &qword_1EE0BB2C0, MEMORY[0x1E69B6218], sub_1D79E27E0, MEMORY[0x1E69D7BF0]);
  v86 = v8;
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v67 - v10;
  sub_1D79E28FC(0, &unk_1EE0BB290, MEMORY[0x1E69D7DC0]);
  v13 = v12;
  v80 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v72 = &v67 - v15;
  sub_1D79E2814(0);
  v91 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79E28DC(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v67 - v28;
  v92[0] = sub_1D7D2F6BC();
  sub_1D79E28FC(0, &qword_1EE0BB278, MEMORY[0x1E69D7EA0]);
  sub_1D79E29F4();
  v30 = v21;
  sub_1D7D2B77C();

  v69 = v22;
  v31 = *(v22 + 16);
  v68 = v29;
  v31(v25, v29, v21);
  sub_1D79E7194(&unk_1EE0BB318, sub_1D79E28DC);
  sub_1D7D304FC();
  v32 = *(v91 + 44);
  v33 = sub_1D79E29C0();
  sub_1D7D30A5C();
  if (*&v19[v32] == v92[0])
  {
    v80 = MEMORY[0x1E69E7CC0];
LABEL_3:
    sub_1D79E3B74(v19, sub_1D79E2814);
    (*(v69 + 8))(v68, v30);
    return v80;
  }

  v78 = v80 + 16;
  v35 = v73;
  v84 = v90 + 8;
  v85 = v73 + 16;
  v36 = v82++;
  v83 = (v36 + 4);
  v81 = (v73 + 8);
  v76 = v80 + 8;
  v80 = MEMORY[0x1E69E7CC0];
  v37 = v72;
  v71 = v13;
  v70 = v30;
  v77 = v19;
  v75 = v32;
  v74 = v33;
  while (1)
  {
    v39 = sub_1D7D30AAC();
    (*v78)(v37);
    v39(v92, 0);
    sub_1D7D30A6C();
    v40 = sub_1D7D2B05C();
    v41 = *(v40 + 16);
    if (v41)
    {
      break;
    }

    v45 = MEMORY[0x1E69E7CC0];
LABEL_26:
    (*v76)(v37, v13);
    v59 = *(v45 + 2);
    result = v80;
    v60 = *(v80 + 2);
    v61 = v60 + v59;
    v19 = v77;
    if (__OFADD__(v60, v59))
    {
      goto LABEL_42;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v80;
    if (!result || v61 > *(v80 + 3) >> 1)
    {
      if (v60 <= v61)
      {
        v63 = v60 + v59;
      }

      else
      {
        v63 = v60;
      }

      result = sub_1D79E3BD4(result, v63, 1, v80);
      v62 = result;
    }

    v64 = *(v45 + 2);
    v80 = v62;
    if (v64)
    {
      if ((*(v62 + 3) >> 1) - *(v62 + 2) < v59)
      {
        goto LABEL_44;
      }

      swift_arrayInitWithCopy();

      v38 = v75;
      if (v59)
      {
        v65 = *(v80 + 2);
        v57 = __OFADD__(v65, v59);
        v66 = v65 + v59;
        if (v57)
        {
          goto LABEL_45;
        }

        *(v80 + 2) = v66;
      }
    }

    else
    {

      v38 = v75;
      if (v59)
      {
        goto LABEL_43;
      }
    }

    sub_1D7D30A5C();
    if (*&v19[v38] == v92[0])
    {
      goto LABEL_3;
    }
  }

  v42 = *(v35 + 80);
  v79 = v40;
  v43 = v40 + ((v42 + 32) & ~v42);
  v91 = *(v35 + 72);
  v44 = *(v35 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v46 = v86;
    v44(v11, v43, v86);
    v47 = v87;
    sub_1D7D2ABBC();
    v48 = v90;
    sub_1D79E3594(v47, v90);
    sub_1D79E35F8();

    v50 = v88;
    v49 = v89;
    (*v83)(v88, v48, v89);
    v51 = FeedItemLayoutAttributes.recipes.getter();
    (*v82)(v50, v49);
    sub_1D79E3B74(v47, MEMORY[0x1E69B6218]);
    result = (*v81)(v11, v46);
    v52 = *(v51 + 16);
    v53 = *(v45 + 2);
    v54 = v53 + v52;
    if (__OFADD__(v53, v52))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v54 <= *(v45 + 3) >> 1)
    {
      if (*(v51 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v53 <= v54)
      {
        v55 = v53 + v52;
      }

      else
      {
        v55 = v53;
      }

      result = sub_1D79E3BD4(result, v55, 1, v45);
      v45 = result;
      if (*(v51 + 16))
      {
LABEL_20:
        if ((*(v45 + 3) >> 1) - *(v45 + 2) < v52)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v52)
        {
          v56 = *(v45 + 2);
          v57 = __OFADD__(v56, v52);
          v58 = v56 + v52;
          if (v57)
          {
            goto LABEL_41;
          }

          *(v45 + 2) = v58;
        }

        goto LABEL_10;
      }
    }

    if (v52)
    {
      goto LABEL_39;
    }

LABEL_10:
    v43 += v91;
    if (!--v41)
    {

      v35 = v73;
      v13 = v71;
      v37 = v72;
      v30 = v70;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D79E26EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E3A50(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D79E285C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D79E28FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2FD8C();
    v8[1] = sub_1D7D2F34C();
    v8[2] = sub_1D79E7194(&qword_1EE0BB158, MEMORY[0x1E69B6710]);
    v8[3] = sub_1D79E27E0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D79E29F4()
{
  result = qword_1EE0BB280;
  if (!qword_1EE0BB280)
  {
    sub_1D79E28FC(255, &qword_1EE0BB278, MEMORY[0x1E69D7EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB280);
  }

  return result;
}

uint64_t sub_1D79E2A68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E3BD4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D79E2B60(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E4104(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D79A8148(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D79E2CD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E4564(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D79E2E10(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E4EC0(result, v10, 1, v3, &qword_1EE0BE910, &unk_1EE0BFC98, MEMORY[0x1E69D86F8]);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D798C468(0, &unk_1EE0BFC98);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D79E2F64(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D7D3167C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1D7D3167C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D79E3064(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E529C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D79E315C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79E5874(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D79E32C4(uint64_t result, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1D79E5FB4(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D79E344C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D7D3167C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1D7D3167C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D79E3594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2F34C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D79E35F8()
{
  if (!qword_1EE0BB1C0)
  {
    sub_1D7D2E8FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BB1C0);
    }
  }
}

char *sub_1D79E3664(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E17D8, &type metadata for RecipeViewerPage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E37A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E1A60, &type metadata for PDFReplicaPage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D79E38E4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1D79E57FC(0, &qword_1EC9E1A50, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D79A8148(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E3A50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &unk_1EE0BE990, &type metadata for Article, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}