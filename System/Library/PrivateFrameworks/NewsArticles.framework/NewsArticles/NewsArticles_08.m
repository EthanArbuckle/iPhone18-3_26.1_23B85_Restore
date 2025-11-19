char *sub_1D7A5E088(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EE0BE9F0, &type metadata for ContextArticleViewerFeature, MEMORY[0x1E69E6F90]);
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

char *sub_1D7A5E1C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E2E38, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D7A5E2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E2E20, &type metadata for ArticleTextRanges.Paragraph, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D7A5E41C(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D79A7880(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_1D7A5E59C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &unk_1EE0BAE80, &type metadata for AnimationData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D7A5E6C0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D7A5FAF4(0, &qword_1EE0BE9D8, &qword_1EE0C3C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D798C468(0, &qword_1EE0C3C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D7A5E840(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E2DF8, &type metadata for ArticleRecirculationService.ScoredHeadline, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D7A5E964(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D7A5FD3C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 1104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[138 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 1104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D79A7880(0, &unk_1EE0C5BC0, &type metadata for ArticleRecirculationConfig, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D7A5EAC0(uint64_t a1, char a2, void *a3)
{
  v63 = *(a1 + 16);
  if (v63)
  {
    if (!*(a1 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    LOBYTE(v5) = a2;
    v6 = *(a1 + 96);
    v61 = *(a1 + 80);
    v62 = v6;
    v7 = *(a1 + 48);
    v60 = *(a1 + 64);
    v58 = *(a1 + 32);
    v59 = v7;
    v52 = v61;
    v54 = v6;
    v48 = v7;
    v50 = v60;
    v8 = *(&v58 + 1);
    v9 = v58;
    sub_1D7A603B0(&v58, &v56, &unk_1EE0BF428, MEMORY[0x1E69E6158], &type metadata for Article, sub_1D7A60214);
    if (v8)
    {
      v56 = v9;
      v57 = v8;
      v58 = v48;
      v59 = v50;
      v60 = v52;
      v61 = v54;
      v10 = *a3;
      v11 = sub_1D7A18FFC(v9, v8);
      v13 = v10[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      LOBYTE(v17) = v12;
      if (v10[3] < v16)
      {
        sub_1D7B91394(v16, v5 & 1);
        v11 = sub_1D7A18FFC(v9, v8);
        if ((v17 & 1) == (v18 & 1))
        {
          goto LABEL_9;
        }

LABEL_7:
        v11 = sub_1D7D31A2C();
        __break(1u);
      }

      if ((v5 & 1) == 0)
      {
        v21 = v11;
        sub_1D7B96CB0();
        v11 = v21;
        if (v17)
        {
LABEL_10:
          v19 = swift_allocError();
          swift_willThrow();
          v20 = v19;
          sub_1D798C468(0, &qword_1EE0BE7E0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            sub_1D7A0AD5C(&v58);

            return;
          }

          goto LABEL_29;
        }

LABEL_13:
        v22 = *a3;
        *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
        v23 = (v22[6] + 16 * v11);
        *v23 = v9;
        v23[1] = v8;
        v24 = (v22[7] + (v11 << 6));
        v25 = v58;
        v26 = v59;
        v27 = v61;
        v24[2] = v60;
        v24[3] = v27;
        *v24 = v25;
        v24[1] = v26;
        v28 = v22[2];
        v15 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v15)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          sub_1D7D3145C();
          MEMORY[0x1DA70DE90](0xD00000000000001BLL, 0x80000001D7D6C9A0);
          sub_1D7D315DC();
          MEMORY[0x1DA70DE90](39, 0xE100000000000000);
          sub_1D7D3160C();
          __break(1u);
          return;
        }

        v22[2] = v29;
        if (v63 != 1)
        {
          v5 = (a1 + 112);
          v17 = 1;
          while (v17 < *(a1 + 16))
          {
            v30 = v5[4];
            v61 = v5[3];
            v62 = v30;
            v31 = v5[1];
            v60 = v5[2];
            v58 = *v5;
            v59 = v31;
            v53 = v61;
            v55 = v30;
            v49 = v31;
            v51 = v60;
            v8 = *(&v58 + 1);
            v32 = v58;
            sub_1D7A603B0(&v58, &v56, &unk_1EE0BF428, MEMORY[0x1E69E6158], &type metadata for Article, sub_1D7A60214);
            if (!v8)
            {
              goto LABEL_24;
            }

            v56 = v32;
            v57 = v8;
            v58 = v49;
            v59 = v51;
            v60 = v53;
            v61 = v55;
            v33 = *a3;
            v34 = sub_1D7A18FFC(v32, v8);
            v36 = v33[2];
            v37 = (v35 & 1) == 0;
            v15 = __OFADD__(v36, v37);
            v38 = v36 + v37;
            if (v15)
            {
              goto LABEL_27;
            }

            v9 = v35;
            if (v33[3] < v38)
            {
              sub_1D7B91394(v38, 1);
              v34 = sub_1D7A18FFC(v32, v8);
              if ((v9 & 1) != (v39 & 1))
              {
                goto LABEL_7;
              }
            }

            if (v9)
            {
              goto LABEL_10;
            }

            v40 = *a3;
            *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
            v41 = (v40[6] + 16 * v34);
            *v41 = v32;
            v41[1] = v8;
            v42 = (v40[7] + (v34 << 6));
            v43 = v58;
            v44 = v59;
            v45 = v61;
            v42[2] = v60;
            v42[3] = v45;
            *v42 = v43;
            v42[1] = v44;
            v46 = v40[2];
            v15 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v15)
            {
              goto LABEL_28;
            }

            ++v17;
            v40[2] = v47;
            v5 += 5;
            if (v63 == v17)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }

LABEL_9:
      if (v17)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

LABEL_24:
}

uint64_t _s12NewsArticles22ArticleViewerBlueprintO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  MEMORY[0x1EEE9AC00](v50, v4);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v51 = &v49 - v8;
  v9 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v49 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v49 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v49 - v23;
  sub_1D7A6057C(0, &qword_1EE0BD380, type metadata accessor for ArticleViewerBlueprint);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v49 - v27;
  v30 = (&v49 + *(v29 + 56) - v27);
  sub_1D7A605DC(a1, &v49 - v27, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7A605DC(a2, v30, type metadata accessor for ArticleViewerBlueprint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D7A605DC(v28, v20, type metadata accessor for ArticleViewerBlueprint);
        v32 = *v20;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = sub_1D7A598D4(v32, *v30);

LABEL_27:
          sub_1D7A5FA24(v28, type metadata accessor for ArticleViewerBlueprint);
          return v33 & 1;
        }
      }

      else
      {
        sub_1D7A605DC(v28, v16, type metadata accessor for ArticleViewerBlueprint);
        v38 = *v16;
        v39 = v16[1];
        v40 = v16[2];
        v41 = v16[3];
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v42 = *v30;
          v43 = v30[1];
          v44 = v30[2];
          v51 = v30[3];
          v52 = v42;
          v33 = sub_1D7A598D4(v38, v42);
          sub_1D79DA510(v43, v44, v51);
          sub_1D79DA510(v39, v40, v41);

          goto LABEL_27;
        }

        sub_1D79DA510(v39, v40, v41);
      }
    }

    else
    {
      sub_1D7A605DC(v28, v24, type metadata accessor for ArticleViewerBlueprint);
      if (!swift_getEnumCaseMultiPayload())
      {
        v45 = v24;
        v46 = v51;
        sub_1D79A8864(v45, v51, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        v47 = v52;
        sub_1D79A8864(v30, v52, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        v33 = (_s12NewsArticles22ArticleViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(v46, v47) & 1) != 0 && *(*(v46 + *(v50 + 20)) + 16) == *(*(v47 + *(v50 + 20)) + 16);
        sub_1D7A5FA24(v47, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        sub_1D7A5FA24(v46, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        goto LABEL_27;
      }

      sub_1D7A5FA24(v24, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1D7A605DC(v28, v12, type metadata accessor for ArticleViewerBlueprint);
    v34 = *v12;
    v35 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v36 = *v30;
      v37 = v30[1];
      sub_1D7992EFC(0, &qword_1EE0BEC90);
      if (sub_1D7D311DC())
      {
        v33 = sub_1D7A57E84(v35, v37);
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 4 || swift_getEnumCaseMultiPayload() != 5)
  {
LABEL_20:
    sub_1D7A602C0(v28, &qword_1EE0BD380, type metadata accessor for ArticleViewerBlueprint);
    v33 = 0;
    return v33 & 1;
  }

  sub_1D7A5FA24(v28, type metadata accessor for ArticleViewerBlueprint);
  v33 = 1;
  return v33 & 1;
}

uint64_t _s12NewsArticles22ArticleViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v33 - v14);
  sub_1D7A6057C(0, qword_1EE0BD388, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v33 - v18;
  v21 = (v33 + *(v20 + 56) - v18);
  sub_1D7A605DC(a1, v33 - v18, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  sub_1D7A605DC(a2, v21, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A605DC(v19, v11, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D79A8864(v21, v7, type metadata accessor for AsyncArticle);
      v22 = static AsyncArticle.== infix(_:_:)(v11, v7);
      sub_1D7A5FA24(v7, type metadata accessor for AsyncArticle);
      sub_1D7A5FA24(v11, type metadata accessor for AsyncArticle);
LABEL_9:
      sub_1D7A5FA24(v19, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
      return v22 & 1;
    }

    sub_1D7A5FA24(v11, type metadata accessor for AsyncArticle);
  }

  else
  {
    sub_1D7A605DC(v19, v15, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    v23 = v15[1];
    v36[0] = *v15;
    v36[1] = v23;
    v24 = v15[3];
    v36[2] = v15[2];
    v36[3] = v24;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v21[1];
      v35[0] = *v21;
      v35[1] = v25;
      v26 = v21[3];
      v28 = *v21;
      v27 = v21[1];
      v35[2] = v21[2];
      v35[3] = v26;
      v29 = v15[1];
      v34[0] = *v15;
      v34[1] = v29;
      v30 = v15[3];
      v34[2] = v15[2];
      v34[3] = v30;
      v33[0] = v28;
      v33[1] = v27;
      v31 = v21[3];
      v33[2] = v21[2];
      v33[3] = v31;
      v22 = _s12NewsArticles7ArticleV2eeoiySbAC_ACtFZ_0(v34, v33);
      sub_1D7A0AD5C(v35);
      sub_1D7A0AD5C(v36);
      goto LABEL_9;
    }

    sub_1D7A0AD5C(v36);
  }

  sub_1D7A602C0(v19, qword_1EE0BD388, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_1D7A5F80C()
{
  result = qword_1EC9E2D80;
  if (!qword_1EC9E2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2D80);
  }

  return result;
}

unint64_t sub_1D7A5F864()
{
  result = qword_1EC9E2D88;
  if (!qword_1EC9E2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2D88);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7A5F904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D7A5F94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7A5F9C4()
{
  if (!qword_1EE0BEBD0)
  {
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEBD0);
    }
  }
}

uint64_t sub_1D7A5FA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A5FA84()
{
  if (!qword_1EE0BE878)
  {
    sub_1D7A60214(255, &unk_1EE0BF428);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE878);
    }
  }
}

void sub_1D7A5FAF4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D798C468(255, a3);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7A5FB54()
{
  if (!qword_1EC9E2DC0)
  {
    type metadata accessor for EndOfRecipeLayoutModel();
    sub_1D7996ECC(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel);
    v0 = sub_1D7D2ABCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2DC0);
    }
  }
}

void sub_1D7A5FBE8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7A5FCD4(255, a3, a4);
    v5 = sub_1D7D3191C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7A5FC40()
{
  if (!qword_1EE0BFF40)
  {
    type metadata accessor for EndOfArticleLayoutModel();
    sub_1D7996ECC(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel);
    v0 = sub_1D7D2ABCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFF40);
    }
  }
}

void sub_1D7A5FCD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D7A5FD3C()
{
  if (!qword_1EE0BEA08)
  {
    sub_1D79A7880(255, &unk_1EE0C5BC0, &type metadata for ArticleRecirculationConfig, MEMORY[0x1E69E6720]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEA08);
    }
  }
}

void sub_1D7A5FDB8()
{
  if (!qword_1EE0BCEC8)
  {
    type metadata accessor for EndOfArticleHeadlineModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BCEC8);
    }
  }
}

void sub_1D7A5FE20()
{
  if (!qword_1EC9E2E00)
  {
    sub_1D79A7880(255, &unk_1EE0BF330, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2E00);
    }
  }
}

void sub_1D7A5FE9C()
{
  if (!qword_1EE0BE880)
  {
    sub_1D79A7880(255, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE880);
    }
  }
}

void sub_1D7A5FFC8()
{
  if (!qword_1EC9E1A50)
  {
    sub_1D79A7880(255, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1A50);
    }
  }
}

uint64_t sub_1D7A60044(uint64_t a1, unint64_t *a2)
{
  sub_1D7A60214(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A600A4()
{
  if (!qword_1EE0BFED0)
  {
    type metadata accessor for EndOfArticleLayoutModel();
    sub_1D7A6015C();
    sub_1D7996ECC(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel);
    v0 = sub_1D7D2B07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFED0);
    }
  }
}

unint64_t sub_1D7A6015C()
{
  result = qword_1EE0C1D20[0];
  if (!qword_1EE0C1D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C1D20);
  }

  return result;
}

void sub_1D7A60214(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D7A602C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7A6057C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7A6031C()
{
  if (!qword_1EE0BDEB0)
  {
    sub_1D79A7924(255, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BDEB0);
    }
  }
}

uint64_t sub_1D7A603B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D7A60424()
{
  if (!qword_1EC9E2E78)
  {
    sub_1D7A6051C(255, &qword_1EC9E5940, sub_1D7A26E88);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2E78);
    }
  }
}

void sub_1D7A604A0()
{
  if (!qword_1EC9E86A0)
  {
    sub_1D7A6051C(255, &qword_1EC9E32F0, sub_1D7A13440);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E86A0);
    }
  }
}

void sub_1D7A6051C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7D29F0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7A6057C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7A605DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A60644()
{
  if (!qword_1EE0BF420)
  {
    sub_1D7D2DFAC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF420);
    }
  }
}

uint64_t sub_1D7A606D0()
{
  v0 = sub_1D7D2BABC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - v6;
  sub_1D7A60C24(0, &unk_1EE0C0118, MEMORY[0x1E69D8428]);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v27 = &v26 - v10;
  sub_1D7A60C24(0, &qword_1EE0C0108, type metadata accessor for TSAccessibilityInterfaceStyleIntent);
  v28 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ArticleViewerColorPalette();
  __swift_allocate_value_buffer(v16, qword_1EE0DE538);
  v17 = __swift_project_value_buffer(v16, qword_1EE0DE538);
  v18 = objc_opt_self();
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.850980392 alpha:1.0];
  v20 = [v18 blackColor];
  v26 = [v18 ts:v19 dynamicColor:v20 withDarkStyleVariant:?];

  v21 = [v18 labelColor];
  v33 = 2;
  v32 = 1;
  type metadata accessor for TSAccessibilityInterfaceStyleIntent(0);
  sub_1D7D29DDC();
  v22 = *(v1 + 104);
  v22(v7, *MEMORY[0x1E69D8420], v0);
  v22(v29, *MEMORY[0x1E69D8418], v0);
  v23 = v27;
  sub_1D7D29DDC();
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.2];
  *v17 = v26;
  *(v17 + 1) = v21;
  (*(v12 + 32))(&v17[v16[6]], v15, v28);
  result = (*(v30 + 32))(&v17[v16[7]], v23, v31);
  *&v17[v16[8]] = v24;
  return result;
}

uint64_t ArticleViewerColorPalette.accessibilityInterfaceStyleIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewerColorPalette() + 24);
  sub_1D7A60C24(0, &qword_1EE0C0108, type metadata accessor for TSAccessibilityInterfaceStyleIntent);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ArticleViewerColorPalette()
{
  result = qword_1EE0C6630;
  if (!qword_1EE0C6630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArticleViewerColorPalette.fullscreenTransitionCoverStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewerColorPalette() + 28);
  sub_1D7A60C24(0, &unk_1EE0C0118, MEMORY[0x1E69D8428]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1D7A60C24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D29E0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7A60CA0()
{
  sub_1D79F85FC();
  if (v0 <= 0x3F)
  {
    sub_1D7A60C24(319, &qword_1EE0C0108, type metadata accessor for TSAccessibilityInterfaceStyleIntent);
    if (v1 <= 0x3F)
    {
      sub_1D7A60C24(319, &unk_1EE0C0118, MEMORY[0x1E69D8428]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1D7A60E04(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 >= 0.0)
  {
    v6 = *(a2 + 32);
    if (v6(0.0) <= a3)
    {
      (v6)(a1, a2, a3);
    }
  }
}

void sub_1D7A60E90(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(v22, a3, a4);
  if (v23)
  {
    v6 = v22[8];
    v7 = v22[5];

    v8 = [a1 currentItem];
    if (v8)
    {
      v9 = v8;
      v21 = v7;
      if (a2 >> 62)
      {
LABEL_30:
        v10 = sub_1D7D3167C();
      }

      else
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
          if (qword_1EE0C05E0 != -1)
          {
            swift_once();
          }

          sub_1D7D30C3C();
          sub_1D79F3AB0();
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1D7D3B4D0;
          sub_1D7D3093C();
          *(v17 + 56) = MEMORY[0x1E69E6158];
          *(v17 + 64) = sub_1D79D6AE0();
          *(v17 + 32) = 0;
          *(v17 + 40) = 0xE000000000000000;
          sub_1D7D29AAC();

          goto LABEL_22;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA70EF00](v11, a2);
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        v13 = v12;
        sub_1D7992EFC(0, &qword_1EE0BEC90);
        v14 = sub_1D7D311DC();

        if (v14)
        {
          break;
        }

        if (__OFADD__(v11++, 1))
        {
          goto LABEL_29;
        }
      }

      if (v11 >= 1)
      {
        if (v11 > *(v6 + 16))
        {
          __break(1u);
        }

        else if (qword_1EE0C05E0 == -1)
        {
LABEL_26:
          sub_1D7D30C3C();
          sub_1D79F3AB0();
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1D7D42910;
          sub_1D7D3093C();
          v19 = MEMORY[0x1E69E6158];
          *(v18 + 56) = MEMORY[0x1E69E6158];
          v20 = sub_1D79D6AE0();
          *(v18 + 64) = v20;
          *(v18 + 32) = 0;
          *(v18 + 40) = 0xE000000000000000;
          sub_1D7D3093C();
          *(v18 + 96) = v19;
          *(v18 + 104) = v20;
          *(v18 + 72) = 0;
          *(v18 + 80) = 0xE000000000000000;
          sub_1D7D3093C();
          *(v18 + 136) = v19;
          *(v18 + 144) = v20;
          *(v18 + 112) = 0;
          *(v18 + 120) = 0xE000000000000000;
          sub_1D7D3093C();
          *(v18 + 176) = v19;
          *(v18 + 184) = v20;
          *(v18 + 152) = 0;
          *(v18 + 160) = 0xE000000000000000;
          sub_1D7D29AAC();

          return;
        }

        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C3C();
      sub_1D79F3AB0();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7D3B4D0;
      sub_1D7D3093C();
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1D79D6AE0();
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
      sub_1D7D29AAC();

LABEL_22:
    }
  }

  else
  {
    sub_1D7A61558(v22);
  }
}

void sub_1D7A61398(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, Float64 a7)
{
  (*(a6 + 24))(&v24, a5, a6);
  if (v31)
  {
    v12 = v30;
    v13 = v29;
    v14 = v28;
    v15 = v27;
    v16 = v26;
    v17 = v25;

    v18 = v17;
    v19 = v16;
    v20 = v15;
    v21 = v14;
    v22 = v13;
    v23 = v12;
    sub_1D7A61A98(a1, a2, &v18, a3, a4, a7);
  }

  else
  {
    sub_1D7A61558(&v24);
    sub_1D7A615AC(a1, a3, a4, a7);
  }
}

uint64_t sub_1D7A614C8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(v7);
  v3 = v7[0];
  if (v8)
  {
    v4 = v7[5];

    v5 = v3();
  }

  else
  {
    v5 = (v7[0])(v2);
    sub_1D7A61558(v7);
  }

  return v5;
}

void sub_1D7A615AC(void *a1, void (*a2)(void), uint64_t a3, Float64 a4)
{
  v7 = [a1 currentItem];
  if (v7)
  {
    v8 = v7;
    if (a4 < 0.0 || ([v7 duration], CMTimeGetSeconds(&time) < a4))
    {
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C4C();
      sub_1D79F3AB0();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7D3B4D0;
      time.value = 0;
      *&time.timescale = 0xE000000000000000;
      sub_1D7D3093C();
      value = time.value;
      v11 = *&time.timescale;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D79D6AE0();
      *(v9 + 32) = value;
      *(v9 + 40) = v11;
      sub_1D7D29AAC();
LABEL_7:

      a2(0);

      return;
    }

    CMTimeMakeWithSeconds(&time, a4, 1000000000);
    v12 = time.value;
    timescale = time.timescale;
    flags = time.flags;
    epoch = time.epoch;
    if ((sub_1D7D3020C() & 1) == 0)
    {
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C4C();
      sub_1D79F3AB0();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D7D3B4D0;
      time.value = v12;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      type metadata accessor for CMTime(0);
      sub_1D7D315DC();
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1D79D6AE0();
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      sub_1D7D29AAC();
      goto LABEL_7;
    }

    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C6C();
    sub_1D79F3AB0();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7D3B4D0;
    v29 = 0;
    v30 = 0xE000000000000000;
    time.value = v12;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    type metadata accessor for CMTime(0);
    sub_1D7D315DC();
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D79D6AE0();
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    sub_1D7D29AAC();

    v17 = *MEMORY[0x1E6960CC0];
    v23 = epoch;
    v24 = flags;
    v18 = timescale;
    LODWORD(v16) = *(MEMORY[0x1E6960CC0] + 8);
    v19 = *(MEMORY[0x1E6960CC0] + 12);
    v20 = *(MEMORY[0x1E6960CC0] + 16);
    v34 = a2;
    v35 = a3;
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 1107296256;
    time.epoch = sub_1D7C8B29C;
    v33 = &block_descriptor_8;
    v21 = _Block_copy(&time);

    v31 = v20;
    time.value = v12;
    time.timescale = v18;
    time.flags = v24;
    time.epoch = v23;
    v28 = v20;
    v29 = v17;
    v30 = __PAIR64__(v19, v16);
    v25 = v17;
    v26 = v16;
    v27 = v19;
    [v8 seekToTime:&time toleranceBefore:&v29 toleranceAfter:&v25 completionHandler:v21];
    _Block_release(v21);
  }

  else
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7D29AAC();
    a2(0);
  }
}

void sub_1D7A61A98(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, Float64 a6)
{
  v12 = *(a3 + 48);
  v13 = [a1 currentItem];
  if (!v13)
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7D29AAC();
    (a4)(0);
    return;
  }

  v15 = v13;
  v16 = *(v12 + 2);
  if (v16)
  {
    if (v12[v16 + 3] > a6)
    {
      goto LABEL_4;
    }

LABEL_13:
    v77 = a4;
    v78 = a5;
    v19 = v13;
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79F3AB0();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D3093C();
    v21 = MEMORY[0x1E69E6158];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1D79D6AE0();
    *(v20 + 64) = v22;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    sub_1D7D3093C();
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 72) = 0;
    *(v20 + 80) = 0xE000000000000000;
    sub_1D7D29AAC();

    (v77)(0);

    return;
  }

  if (a6 >= 0.0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!v16)
  {
    goto LABEL_78;
  }

  v17 = 0;
  v18 = v12 + 4;
  while (1)
  {
    v14.n128_f64[0] = *v18;
    if (*v18 >= a6)
    {
      break;
    }

    ++v17;
    ++v18;
    if (v16 == v17)
    {
      goto LABEL_78;
    }
  }

  v75 = a2 >> 62;
  if (!(a2 >> 62))
  {
    if (v17 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_78:
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79F3AB0();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D7D3B4D0;
    sub_1D7D3093C();
    *(v67 + 56) = MEMORY[0x1E69E6158];
    *(v67 + 64) = sub_1D79D6AE0();
    *(v67 + 32) = 0;
    *(v67 + 40) = 0xE000000000000000;
    sub_1D7D29AAC();

    (a4)(0);

    return;
  }

  if (v17 >= sub_1D7D3167C())
  {
    goto LABEL_78;
  }

LABEL_18:
  v74 = a2 & 0xC000000000000001;
  v78 = a5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1DA70EF00](v17, a2, v14);
  }

  else
  {
    if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v23 = *(a2 + 8 * v17 + 32);
  }

  v76 = v23;
  sub_1D7992EFC(0, &qword_1EE0BEC90);
  if (sub_1D7D311DC())
  {
    CMTimeMakeWithSeconds(&aBlock, a6, 1000000000);
    value = aBlock.value;
    epoch = aBlock.epoch;
    v26 = *&aBlock.timescale;
    v27 = *MEMORY[0x1E6960CC0];
    v28 = *(MEMORY[0x1E6960CC0] + 8);
    v29 = *(MEMORY[0x1E6960CC0] + 12);
    v30 = *(MEMORY[0x1E6960CC0] + 16);
    v89 = a4;
    v90 = v78;
    aBlock.value = MEMORY[0x1E69E9820];
    *&aBlock.timescale = 1107296256;
    aBlock.epoch = sub_1D7C8B29C;
    v88 = &block_descriptor_9_0;
    v31 = _Block_copy(&aBlock);

    v86 = v30;
    aBlock.value = value;
    *&aBlock.timescale = v26;
    aBlock.epoch = epoch;
    v82 = v30;
    v83 = v27;
    v84 = v28;
    v85 = v29;
    v79 = v27;
    v80 = v28;
    v81 = v29;
    [v15 seekToTime:&aBlock toleranceBefore:&v83 toleranceAfter:&v79 completionHandler:v31];
    _Block_release(v31);
LABEL_23:

    return;
  }

  v77 = a4;
  v32 = [a1 items];
  v72 = sub_1D7992EFC(0, &unk_1EC9E4B10);
  v33 = sub_1D7D3063C();

  v73 = &v69;
  aBlock.value = v76;
  MEMORY[0x1EEE9AC00](v34, v35);
  v68[2] = &aBlock;
  v36 = 0;
  v6 = sub_1D7B8AA8C(sub_1D7A62614, v68, v33);

  if (v17 && (v6 & 1) != 0)
  {
    if (v17 > *(v12 + 2))
    {
      goto LABEL_89;
    }

    v37 = *(v18 - 1);
    [a1 advanceToNextItem];
    v38 = [a1 currentItem];
    v39 = v77;
    if (!v38)
    {
      v77();
      goto LABEL_23;
    }

    v73 = v38;
    [a1 pause];
    CMTimeMakeWithSeconds(&aBlock, a6 - v37, 1000000000);
    v70 = aBlock.value;
    v71 = aBlock.epoch;
    v40 = *&aBlock.timescale;
    v41 = *MEMORY[0x1E6960CC0];
    v43 = *(MEMORY[0x1E6960CC0] + 8);
    v42 = *(MEMORY[0x1E6960CC0] + 12);
    v44 = *(MEMORY[0x1E6960CC0] + 16);
    v89 = v39;
    v90 = v78;
    aBlock.value = MEMORY[0x1E69E9820];
    *&aBlock.timescale = 1107296256;
    aBlock.epoch = sub_1D7C8B29C;
    v88 = &block_descriptor_6_0;
    v45 = _Block_copy(&aBlock);

    v86 = v44;
    aBlock.value = v70;
    *&aBlock.timescale = v40;
    aBlock.epoch = v71;
    v82 = v44;
    v83 = v41;
    v84 = v43;
    v85 = v42;
    v79 = v41;
    v80 = v43;
    v81 = v42;
    v18 = v73;
    [v73 seekToTime:&aBlock toleranceBefore:&v83 toleranceAfter:&v79 completionHandler:v45];
    _Block_release(v45);
    [a1 play];
  }

  [a1 removeAllItems];
  v46 = v75;
  if (v75)
  {
    v47 = sub_1D7D3167C();
  }

  else
  {
    v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0x1E84ED000;
  if (!v47)
  {
    (v77)(0);
    goto LABEL_39;
  }

  if (v74)
  {
    v73 = MEMORY[0x1DA70EF00](0, a2);
    v48 = v78;
  }

  else
  {
    v48 = v78;
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_93;
    }

    v73 = *(a2 + 32);
  }

  CMTimeMakeWithSeconds(&aBlock, a6, 1000000000);
  v70 = aBlock.value;
  v71 = aBlock.epoch;
  v49 = *&aBlock.timescale;
  v50 = *MEMORY[0x1E6960CC0];
  v52 = *(MEMORY[0x1E6960CC0] + 8);
  v51 = *(MEMORY[0x1E6960CC0] + 12);
  v53 = *(MEMORY[0x1E6960CC0] + 16);
  v89 = v77;
  v90 = v48;
  aBlock.value = MEMORY[0x1E69E9820];
  *&aBlock.timescale = 1107296256;
  aBlock.epoch = sub_1D7C8B29C;
  v88 = &block_descriptor_3;
  v54 = _Block_copy(&aBlock);

  v86 = v53;
  aBlock.value = v70;
  *&aBlock.timescale = v49;
  aBlock.epoch = v71;
  v82 = v53;
  v83 = v50;
  v84 = v52;
  v85 = v51;
  v79 = v50;
  v80 = v52;
  v81 = v51;
  v18 = v73;
  [v73 seekToTime:&aBlock toleranceBefore:&v83 toleranceAfter:&v79 completionHandler:v54];
  _Block_release(v54);
  v17 = &selRef_addTarget_action_;
  [a1 insertItem:v18 afterItem:0];
  [a1 play];

  v46 = v75;
  if (v47 < 0)
  {
LABEL_93:
    __break(1u);
    return;
  }

LABEL_39:
  v12 = v15;
  v6 = v47 != 0;
  if (v46)
  {
    if (a2 < 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    if (sub_1D7D3167C() < v6)
    {
      goto LABEL_83;
    }

    v55 = sub_1D7D3167C();
  }

  else
  {
    v55 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55 < v6)
    {
      goto LABEL_83;
    }
  }

  if (v55 >= v47)
  {
    if (v74)
    {

      if (v47 >= 2)
      {
        v56 = v47 != 0;
        do
        {
          v18 = (v56 + 1);
          sub_1D7D3147C();
          v56 = v18;
        }

        while (v47 != v18);
      }
    }

    else
    {
    }

    if (v46)
    {

      v15 = sub_1D7D3168C();
      v6 = v58;
      v36 = v59;
    }

    else
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFF8);
      v57 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
      v36 = (2 * v47) | 1;
    }

    if ((v36 & 1) == 0)
    {
      goto LABEL_58;
    }

    v18 = v57;
    sub_1D7D319DC();
    swift_unknownObjectRetain_n();
    v61 = swift_dynamicCastClass();
    if (!v61)
    {
      swift_unknownObjectRelease();
      v61 = MEMORY[0x1E69E7CC0];
    }

    v62 = *(v61 + 16);

    if (!__OFSUB__(v36 >> 1, v6))
    {
      if (v62 == (v36 >> 1) - v6)
      {
        v6 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v6)
        {
          goto LABEL_66;
        }

        v6 = MEMORY[0x1E69E7CC0];
        goto LABEL_65;
      }

      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  v36 = sub_1D7D3167C();
  v63 = v12;
  if (v36)
  {
    while (v36 < 1)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_unknownObjectRelease();
      v57 = v18;
LABEL_58:
      sub_1D7B0FDA0(v15, v57, v6, v36);
      v6 = v60;
LABEL_65:
      swift_unknownObjectRelease();
LABEL_66:
      if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
      {
        goto LABEL_85;
      }

      v36 = *(v6 + 16);
      v63 = v12;
      if (!v36)
      {
        goto LABEL_86;
      }
    }

    for (i = 0; i != v36; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1DA70EF00](i, v6);
      }

      else
      {
        v65 = *(v6 + 8 * i + 32);
      }

      v66 = v65;
      [a1 *(v17 + 1000)];
    }
  }

  else
  {
LABEL_86:
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7A62694()
{
  v0 = sub_1D7D29AFC();
  __swift_allocate_value_buffer(v0, qword_1ECA0BAA0);
  __swift_project_value_buffer(v0, qword_1ECA0BAA0);
  return sub_1D7D29AEC();
}

uint64_t sub_1D7A62710()
{
  v0 = sub_1D7D29AFC();
  __swift_allocate_value_buffer(v0, qword_1ECA0BAB8);
  __swift_project_value_buffer(v0, qword_1ECA0BAB8);
  return sub_1D7D29AEC();
}

uint64_t sub_1D7A62790(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D7D2DC4C();
    return a2;
  }

  return result;
}

uint64_t sub_1D7A62824(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D7D27D2C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_1D7A63AD8();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1D7D2DC4C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A62984, 0, 0);
}

uint64_t sub_1D7A62984()
{
  v1 = *(v0 + 24);
  v3 = v1[10];
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1D7A62A40;

  return MEMORY[0x1EEE20DE8](v3, v2);
}

uint64_t sub_1D7A62A40(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 112) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D7A62BC0, 0, 0);
  }
}

uint64_t sub_1D7A62BC0()
{
  v1 = sub_1D7A62790(v0[2], v0[14]);
  v23 = v2;
  v24 = v4 >> 1;
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_17;
  }

  if (v5)
  {
    v6 = v3;
    v25 = MEMORY[0x1E69E7CC0];
    v1 = sub_1D7A5BDC8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
LABEL_18:
      __break(1u);
      return MEMORY[0x1EEE22170](v1, v2, v3);
    }

    v7 = v0[11];
    v8 = v25;
    if (v6 <= v24)
    {
      v9 = v24;
    }

    else
    {
      v9 = v6;
    }

    while (v9 != v6)
    {
      v10 = v0[12];
      v11 = v0[10];
      (*(v7 + 16))(v10, v23 + *(v7 + 72) * v6, v11);
      v12 = sub_1D7D2DC3C();
      v14 = v13;
      v1 = (*(v7 + 8))(v10, v11);
      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        v1 = sub_1D7A5BDC8((v15 > 1), v16 + 1, 1);
      }

      *(v25 + 16) = v16 + 1;
      v17 = v25 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (v24 == ++v6)
      {
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  v8 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v0[15] = v8;
  v18 = v0[3];
  v19 = v18[5];
  v20 = v18[6];
  __swift_project_boxed_opaque_existential_1(v18 + 2, v19);
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_1D7A62DD8;
  v1 = v8;
  v2 = v19;
  v3 = v20;

  return MEMORY[0x1EEE22170](v1, v2, v3);
}

uint64_t sub_1D7A62DD8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1D7A63500;
  }

  else
  {

    v4 = sub_1D7A62EF4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7A62EF4(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[17];
  if (v5 >> 62)
  {
    v6 = sub_1D7D3167C();
    v4[19] = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[19] = v6;
    if (v6)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v7 = v4[17];
        v8 = MEMORY[0x1E69E7CC0];
        v4[20] = 0;
        v4[21] = v8;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA70EF00](0);
        }

        else
        {
          v9 = *(v7 + 32);
        }

        v10 = v9;
        v4[22] = v9;
        v11 = v4[3];
        v12 = v11[15];
        v13 = v11[16];
        __swift_project_boxed_opaque_existential_1(v11 + 12, v12);
        v14 = swift_task_alloc();
        v4[23] = v14;
        *v14 = v4;
        v14[1] = sub_1D7A630B8;
        v6 = v4[9];
        a2 = v10;
        a3 = v12;
        a4 = v13;
      }

      return MEMORY[0x1EEE22618](v6, a2, a3, a4);
    }
  }

  v15 = v4[1];
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t sub_1D7A630B8()
{

  if (v0)
  {

    v1 = sub_1D7A635A4;
  }

  else
  {
    v1 = sub_1D7A631D0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D7A631D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1D7A63B30(v2, v1);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 64);
    sub_1D7A63B94(*(v0 + 72));

    sub_1D7A63B94(v6);
    v7 = *(v0 + 168);
  }

  else
  {
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 32);
    v31 = *(v10 + 32);
    v31(v8, *(v0 + 64), v11);
    (*(v10 + 16))(v9, v8, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1D79E44FC(0, *(v7 + 2) + 1, 1, *(v0 + 168));
    }

    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v7 = sub_1D79E44FC(v13 > 1, v14 + 1, 1, v7);
    }

    v15 = *(v0 + 72);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    (*(v19 + 8))(v16, v18);
    sub_1D7A63B94(v15);
    *(v7 + 2) = v14 + 1;
    v31(&v7[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14], v17, v18);
  }

  v20 = *(v0 + 160) + 1;
  if (v20 == *(v0 + 152))
  {

    v21 = *(v0 + 8);

    return v21(v7);
  }

  else
  {
    *(v0 + 160) = v20;
    *(v0 + 168) = v7;
    v23 = *(v0 + 136);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1DA70EF00]();
    }

    else
    {
      v24 = *(v23 + 8 * v20 + 32);
    }

    v25 = v24;
    *(v0 + 176) = v24;
    v26 = *(v0 + 24);
    v27 = v26[15];
    v28 = v26[16];
    __swift_project_boxed_opaque_existential_1(v26 + 12, v27);
    v29 = swift_task_alloc();
    *(v0 + 184) = v29;
    *v29 = v0;
    v29[1] = sub_1D7A630B8;
    v30 = *(v0 + 72);

    return MEMORY[0x1EEE22618](v30, v25, v27, v28);
  }
}

uint64_t sub_1D7A63500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A635A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_1D7A63B30(v2, v1);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 64);
    sub_1D7A63B94(*(v0 + 72));

    sub_1D7A63B94(v6);
    v7 = *(v0 + 168);
  }

  else
  {
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 32);
    v31 = *(v10 + 32);
    v31(v8, *(v0 + 64), v11);
    (*(v10 + 16))(v9, v8, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1D79E44FC(0, *(v7 + 2) + 1, 1, *(v0 + 168));
    }

    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v7 = sub_1D79E44FC(v13 > 1, v14 + 1, 1, v7);
    }

    v15 = *(v0 + 72);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    (*(v19 + 8))(v16, v18);
    sub_1D7A63B94(v15);
    *(v7 + 2) = v14 + 1;
    v31(&v7[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14], v17, v18);
  }

  v20 = *(v0 + 160) + 1;
  if (v20 == *(v0 + 152))
  {

    v21 = *(v0 + 8);

    return v21(v7);
  }

  else
  {
    *(v0 + 160) = v20;
    *(v0 + 168) = v7;
    v23 = *(v0 + 136);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1DA70EF00]();
    }

    else
    {
      v24 = *(v23 + 8 * v20 + 32);
    }

    v25 = v24;
    *(v0 + 176) = v24;
    v26 = *(v0 + 24);
    v27 = v26[15];
    v28 = v26[16];
    __swift_project_boxed_opaque_existential_1(v26 + 12, v27);
    v29 = swift_task_alloc();
    *(v0 + 184) = v29;
    *v29 = v0;
    v29[1] = sub_1D7A630B8;
    v30 = *(v0 + 72);

    return MEMORY[0x1EEE22618](v30, v25, v27, v28);
  }
}

uint64_t sub_1D7A638D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A63940(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D7A639D8;

  return sub_1D7A62824(a1);
}

uint64_t sub_1D7A639D8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1D7A63AD8()
{
  if (!qword_1EC9E2E88)
  {
    sub_1D7D27D2C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2E88);
    }
  }
}

uint64_t sub_1D7A63B30(uint64_t a1, uint64_t a2)
{
  sub_1D7A63AD8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A63B94(uint64_t a1)
{
  sub_1D7A63AD8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A63BF0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1D7D2FAFC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1D7D27BEC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1D7D2824C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A63D74, 0, 0);
}

uint64_t sub_1D7A63D74()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69972B8] || v4 == *MEMORY[0x1E69972A8] || v4 == *MEMORY[0x1E69972A0])
  {
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    (*(v0[10] + 96))(v10, v0[9]);
    v15 = *(v9 + 32);
    v0[16] = v15;
    v15(v7, v10, v8);
    v16 = *(v14 + 16);
    v17 = sub_1D7D281BC();
    v0[17] = [v16 assetHandleForURL:v17 lifetimeHint:0];

    (*(v13 + 104))(v11, *MEMORY[0x1E69B6568], v12);
    v0[18] = sub_1D7D30BFC();
    (*(v13 + 8))(v11, v12);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_1D7A6404C;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }

  else
  {
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    if (v4 == *MEMORY[0x1E69972B0])
    {
      (*(v20 + 96))(v0[11], v0[9]);
      v22 = *v19;
    }

    else
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      (*(v20 + 8))(v19, v21);
    }

    v23 = v0[1];

    return v23(v22);
  }
}

uint64_t sub_1D7A6404C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2[13] + 8))(v2[15], v2[12]);

    v3 = sub_1D7A64490;
  }

  else
  {

    v3 = sub_1D7A641A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D7A641A4()
{
  v30 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = 0x1E69DC000uLL;
  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D79EA338(v1, v2);
  v5 = sub_1D7D2826C();
  v6 = [v4 initWithData_];

  sub_1D79EA2E4(v1, v2);
  if (v6)
  {
    v7 = v0[17];
    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  else
  {
    if (qword_1EC9DFD30 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[14];
    v11 = v0[12];
    v12 = sub_1D7D29AFC();
    __swift_project_value_buffer(v12, qword_1ECA0BAB8);
    v9(v10, v8, v11);
    v13 = sub_1D7D29ADC();
    v14 = sub_1D7D30C4C();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    if (v15)
    {
      v28 = v14;
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v19 = 136315138;
      sub_1D7A645C0();
      v20 = sub_1D7D3190C();
      v22 = v21;
      (*(v17 + 8))(v16, v18);
      v23 = v20;
      v3 = 0x1E69DC000;
      v24 = sub_1D7B06D4C(v23, v22, &v29);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D7987000, v13, v28, "Failed to load a recipe image: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1DA7102E0](v27, -1, -1);
      MEMORY[0x1DA7102E0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v7 = v0[17];
    v6 = [objc_allocWithZone(*(v3 + 2744)) init];
  }

  sub_1D79EA2E4(v1, v2);

  v25 = v0[1];

  return v25(v6);
}

uint64_t sub_1D7A64490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A64528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D7A639D8;

  return sub_1D7A63BF0(a1);
}

unint64_t sub_1D7A645C0()
{
  result = qword_1EC9E5D00;
  if (!qword_1EC9E5D00)
  {
    sub_1D7D2824C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5D00);
  }

  return result;
}

uint64_t sub_1D7A64618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_1D7A66C0C(0);
  v5[12] = swift_task_alloc();
  v6 = sub_1D7D2B49C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_1D7D2EF2C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_1D7A66CA4(0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A647C4, 0, 0);
}

uint64_t sub_1D7A647C4()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v5);
  sub_1D79AAE38(0, &qword_1EE0BE890, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v0[22] = v6;
  *(v6 + 16) = xmmword_1D7D3B4D0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;

  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_1D7A648E4;

  return MEMORY[0x1EEE22170](v6, v5, v4);
}

uint64_t sub_1D7A648E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1D7A65338;
  }

  else
  {

    v4 = sub_1D7A64A00;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D7A64A00()
{
  v32 = v0;
  v1 = *(v0 + 192);
  if (v1 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1DA70EF00](0, *(v0 + 192));
LABEL_6:
      *(v0 + 208) = v2;
      v3 = *(v0 + 80);
      v4 = *(v0 + 88);

      v5 = *(v4 + 120);
      if (v3)
      {
        v6 = (v0 + 72);
        v7 = v3;
      }

      else
      {
        v7 = *(v0 + 64);
        v6 = (v0 + 56);
      }

      v8 = *v6;
      v9 = *(v0 + 200);
      v10 = *(v5 + 16);
      v11 = swift_task_alloc();
      *(v11 + 16) = v8;
      *(v11 + 24) = v7;

      os_unfair_lock_lock(v10 + 6);
      sub_1D7A66DA4(&v10[4], v31);
      *(v0 + 216) = v9;
      os_unfair_lock_unlock(v10 + 6);
      if (!v9)
      {
        v12 = v31[0];

        if (v12)
        {
          v13 = WeakRecipeCoordinator.tracker.getter();
        }

        else
        {
          v13 = *(*(v0 + 88) + 112);
        }

        *(v0 + 224) = v13;
        v14 = *(v0 + 136);
        v15 = *(v0 + 144);
        v16 = *(v0 + 120);
        v17 = *(v0 + 128);
        v18 = *(v0 + 104);
        v19 = *(v0 + 112);
        *v15 = v2;
        (*(v14 + 104))(v15, *MEMORY[0x1E69B60B0], v17);
        v20 = v2;
        sub_1D7D2F48C();
        (*(v19 + 104))(v16, *MEMORY[0x1E69D7FB8], v18);
        v31[3] = sub_1D7D28A3C();
        v31[4] = sub_1D7A66CF4(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
        v31[0] = v13;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 1;
        sub_1D7D2B10C();
        swift_allocObject();

        *(v0 + 232) = sub_1D7D2B0EC();
        sub_1D7D3084C();
        *(v0 + 240) = sub_1D7D3083C();
        v22 = sub_1D7D307DC();

        MEMORY[0x1EEE6DFA0](sub_1D7A64EA0, v22, v21);
      }

      return;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(*(v0 + 192) + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_1EC9DFD28 != -1)
  {
LABEL_25:
    swift_once();
  }

  v23 = sub_1D7D29AFC();
  __swift_project_value_buffer(v23, qword_1ECA0BAA0);

  v24 = sub_1D7D29ADC();
  v25 = sub_1D7D30C6C();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_1D7B06D4C(v27, v26, v31);
    _os_log_impl(&dword_1D7987000, v24, v25, "Unable to fetch recipe with id: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1DA7102E0](v29, -1, -1);
    MEMORY[0x1DA7102E0](v28, -1, -1);
  }

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1D7A64EA0()
{
  v7 = v0[27];
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[12];

  swift_getObjectType();
  sub_1D7D2C48C();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_1D7D2A78C();
  v0[31] = v7;

  sub_1D7A66D3C(v4, sub_1D7A66C0C);
  if (v7)
  {
    v5 = sub_1D7A650C0;
  }

  else
  {
    v5 = sub_1D7A64FF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7A64FF4()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D7A650C0()
{
  v20 = v0;
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v5 = v0[31];
  if (qword_1EC9DFD28 != -1)
  {
    swift_once();
  }

  v6 = sub_1D7D29AFC();
  __swift_project_value_buffer(v6, qword_1ECA0BAA0);

  v7 = v5;
  v8 = sub_1D7D29ADC();
  v9 = sub_1D7D30C4C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_1D7B06D4C(v11, v10, &v19);
    *(v12 + 12) = 2114;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_1D7987000, v8, v9, "Error saving a recipe with id: %{public}s, error: %{public}@", v12, 0x16u);
    sub_1D7A66D3C(v13, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1DA7102E0](v14, -1, -1);
    MEMORY[0x1DA7102E0](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D7A65338()
{
  v16 = v0;

  v1 = v0[25];
  if (qword_1EC9DFD28 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BAA0);

  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1D7B06D4C(v7, v6, &v15);
    *(v8 + 12) = 2114;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1D7987000, v4, v5, "Error saving a recipe with id: %{public}s, error: %{public}@", v8, 0x16u);
    sub_1D7A66D3C(v9, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    MEMORY[0x1DA7102E0](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D7A65580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_1D7A66C0C(0);
  v5[12] = swift_task_alloc();
  v6 = sub_1D7D2B49C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_1D7D2EF2C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_1D7A66CA4(0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A6572C, 0, 0);
}

uint64_t sub_1D7A6572C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v5);
  sub_1D79AAE38(0, &qword_1EE0BE890, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v0[22] = v6;
  *(v6 + 16) = xmmword_1D7D3B4D0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;

  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_1D7A6584C;

  return MEMORY[0x1EEE22170](v6, v5, v4);
}

uint64_t sub_1D7A6584C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1D7A661D4;
  }

  else
  {

    v4 = sub_1D7A65968;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D7A65968()
{
  v32 = v0;
  v1 = *(v0 + 192);
  if (v1 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1DA70EF00](0, *(v0 + 192));
LABEL_6:
      *(v0 + 208) = v2;
      v3 = *(v0 + 80);
      v4 = *(v0 + 88);

      v5 = *(v4 + 120);
      if (v3)
      {
        v6 = (v0 + 72);
        v7 = v3;
      }

      else
      {
        v7 = *(v0 + 64);
        v6 = (v0 + 56);
      }

      v8 = *v6;
      v9 = *(v0 + 200);
      v10 = *(v5 + 16);
      v11 = swift_task_alloc();
      *(v11 + 16) = v8;
      *(v11 + 24) = v7;

      os_unfair_lock_lock(v10 + 6);
      sub_1D7A66CD8(&v10[4], v31);
      *(v0 + 216) = v9;
      os_unfair_lock_unlock(v10 + 6);
      if (!v9)
      {
        v12 = v31[0];

        if (v12)
        {
          v13 = WeakRecipeCoordinator.tracker.getter();
        }

        else
        {
          v13 = *(*(v0 + 88) + 112);
        }

        *(v0 + 224) = v13;
        v14 = *(v0 + 136);
        v15 = *(v0 + 144);
        v16 = *(v0 + 120);
        v17 = *(v0 + 128);
        v18 = *(v0 + 104);
        v19 = *(v0 + 112);
        *v15 = v2;
        (*(v14 + 104))(v15, *MEMORY[0x1E69B60B0], v17);
        v20 = v2;
        sub_1D7D2F48C();
        (*(v19 + 104))(v16, *MEMORY[0x1E69D7FB8], v18);
        v31[3] = sub_1D7D28A3C();
        v31[4] = sub_1D7A66CF4(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
        v31[0] = v13;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 1;
        sub_1D7D2B10C();
        swift_allocObject();

        *(v0 + 232) = sub_1D7D2B0EC();
        sub_1D7D3084C();
        *(v0 + 240) = sub_1D7D3083C();
        v22 = sub_1D7D307DC();

        MEMORY[0x1EEE6DFA0](sub_1D7A65E08, v22, v21);
      }

      return;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(*(v0 + 192) + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_1EC9DFD28 != -1)
  {
LABEL_25:
    swift_once();
  }

  v23 = sub_1D7D29AFC();
  __swift_project_value_buffer(v23, qword_1ECA0BAA0);

  v24 = sub_1D7D29ADC();
  v25 = sub_1D7D30C6C();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_1D7B06D4C(v27, v26, v31);
    _os_log_impl(&dword_1D7987000, v24, v25, "Unable to fetch recipe with id: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1DA7102E0](v29, -1, -1);
    MEMORY[0x1DA7102E0](v28, -1, -1);
  }

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1D7A65E08()
{
  v7 = v0[27];
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[12];

  swift_getObjectType();
  sub_1D7D2C48C();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_1D7D2A78C();
  v0[31] = v7;

  sub_1D7A66D3C(v4, sub_1D7A66C0C);
  if (v7)
  {
    v5 = sub_1D7A65F5C;
  }

  else
  {
    v5 = sub_1D7A66D9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7A65F5C()
{
  v20 = v0;
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v5 = v0[31];
  if (qword_1EC9DFD28 != -1)
  {
    swift_once();
  }

  v6 = sub_1D7D29AFC();
  __swift_project_value_buffer(v6, qword_1ECA0BAA0);

  v7 = v5;
  v8 = sub_1D7D29ADC();
  v9 = sub_1D7D30C4C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_1D7B06D4C(v11, v10, &v19);
    *(v12 + 12) = 2114;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_1D7987000, v8, v9, "Error deleting a recipe with id: %{public}s, error: %{public}@", v12, 0x16u);
    sub_1D7A66D3C(v13, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1DA7102E0](v14, -1, -1);
    MEMORY[0x1DA7102E0](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D7A661D4()
{
  v16 = v0;

  v1 = v0[25];
  if (qword_1EC9DFD28 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BAA0);

  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1D7B06D4C(v7, v6, &v15);
    *(v8 + 12) = 2114;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1D7987000, v4, v5, "Error deleting a recipe with id: %{public}s, error: %{public}@", v8, 0x16u);
    sub_1D7A66D3C(v9, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    MEMORY[0x1DA7102E0](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D7A6641C()
{
  sub_1D7A66A90(0, &qword_1EC9E2E90, MEMORY[0x1E69E8638]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    v7 = sub_1D7D2DBFC();
    sub_1D7A66A90(0, &unk_1EE0BB080, MEMORY[0x1E69E8660]);
    sub_1D7D308AC();

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_1D7A66594(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7A66CF4(qword_1EE0BD940, type metadata accessor for SavedRecipeService.Observer);
  return sub_1D7D2DBEC();
}

uint64_t sub_1D7A66618()
{
  if (qword_1EC9DFD28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BAA0);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D7987000, v4, v5, "Error getting saved recipe IDs, error: %{public}@", v7, 0xCu);
    sub_1D7A66D3C(v8, sub_1D7A66A10);
    MEMORY[0x1DA7102E0](v8, -1, -1);
    MEMORY[0x1DA7102E0](v7, -1, -1);
  }

  v11 = *(v0 + 32);

  v12 = *(v0 + 8);
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

uint64_t sub_1D7A667BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A667F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A6684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7A4E2D8;

  return sub_1D7A64618(a1, a2, a3, a4);
}

uint64_t sub_1D7A6690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7A4E814;

  return sub_1D7A65580(a1, a2, a3, a4);
}

unint64_t sub_1D7A66A44()
{
  result = qword_1EE0BEC90;
  if (!qword_1EE0BEC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BEC90);
  }

  return result;
}

void sub_1D7A66A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D79AAE38(255, qword_1EE0BF240, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A66B0C()
{
  result = qword_1EE0BB060;
  if (!qword_1EE0BB060)
  {
    sub_1D7A66A90(255, &qword_1EE0BB068, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB060);
  }

  return result;
}

uint64_t sub_1D7A66B80()
{
  sub_1D7A66A90(0, &unk_1EE0BB080, MEMORY[0x1E69E8660]);

  return sub_1D7A6641C();
}

void sub_1D7A66C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A66CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7A66D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ToolbarTransition.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t ToolbarFeatureContext.toolbarOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ToolbarFeatureContext() + 20));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_1D7A66F20(&v12, v11);
}

uint64_t type metadata accessor for ToolbarFeatureContext()
{
  result = qword_1EE0C7960;
  if (!qword_1EE0C7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ToolbarFeatureContext.actionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolbarFeatureContext() + 28));

  return v1;
}

uint64_t ToolbarFeatureState.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ToolbarFeatureState.init(barButtonItems:contentInset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t ToolbarFeatureState.init(items:contentInset:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_16:

    v8 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *a2 = v8;
    *(a2 + 8) = a3;
    return result;
  }

  v6 = sub_1D7D3167C();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1D7A5C13C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x1DA70EF00](v9, a1);
        v12 = *(v22 + 16);
        v11 = *(v22 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          sub_1D7A5C13C((v11 > 1), v12 + 1, 1);
          v10 = v14;
        }

        ++v9;
        *(v22 + 16) = v12 + 1;
        v13 = v22 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = 0;
      }

      while (v6 != v9);
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = *(v22 + 16);
        v17 = *(v22 + 24);
        v18 = *(a1 + v15);
        if (v16 >= v17 >> 1)
        {
          v20 = v17 > 1;
          v21 = v18;
          sub_1D7A5C13C(v20, v16 + 1, 1);
          v18 = v21;
        }

        *(v22 + 16) = v16 + 1;
        v19 = v22 + 16 * v16;
        *(v19 + 32) = v18;
        *(v19 + 40) = 0;
        v15 += 8;
        --v6;
      }

      while (v6);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void (*sub_1D7A67234(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D7A672B4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7A672C0()
{
  result = qword_1EC9E2E98;
  if (!qword_1EC9E2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2E98);
  }

  return result;
}

unint64_t sub_1D7A6734C()
{
  result = type metadata accessor for ArticleViewerPage(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D79E6E78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7A673F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7A67440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_1D7A67508(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1D7A6779C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D7A67588(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D7A67798;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D7A67608(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1D7A67688;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D7A67690(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D7A67710;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D7A67718(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA70EF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D7A677A0;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArticleViewerFeatureAction()
{
  result = qword_1EE0C5B10;
  if (!qword_1EE0C5B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A677F0()
{
  sub_1D7A67910();
  if (v0 <= 0x3F)
  {
    sub_1D7A67968();
    if (v1 <= 0x3F)
    {
      sub_1D798C3BC(319, &qword_1EE0BF070);
      if (v2 <= 0x3F)
      {
        sub_1D7A67998();
        if (v3 <= 0x3F)
        {
          sub_1D7992EFC(319, &qword_1EE0BF010);
          if (v4 <= 0x3F)
          {
            sub_1D7A67A6C();
            if (v5 <= 0x3F)
            {
              sub_1D7A67AB4();
              if (v6 <= 0x3F)
              {
                sub_1D7A1F1F8();
                if (v7 <= 0x3F)
                {
                  sub_1D7A1F344();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D7A67910()
{
  if (!qword_1EC9E2EA0)
  {
    v0 = sub_1D7992EFC(0, &qword_1EE0BED00);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2EA0);
    }
  }
}

uint64_t sub_1D7A67968()
{
  result = qword_1EE0BF470;
  if (!qword_1EE0BF470)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE0BF470);
  }

  return result;
}

void sub_1D7A67998()
{
  if (!qword_1EC9E2EB0)
  {
    sub_1D7A67A04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2EB0);
    }
  }
}

void sub_1D7A67A04()
{
  if (!qword_1EC9E2EB8)
  {
    sub_1D798C3BC(255, &unk_1EC9E2EC0);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2EB8);
    }
  }
}

void sub_1D7A67A6C()
{
  if (!qword_1EC9E2ED0)
  {
    v0 = type metadata accessor for ArticleViewerPage(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2ED0);
    }
  }
}

void sub_1D7A67AB4()
{
  if (!qword_1EC9E2ED8)
  {
    sub_1D798C3BC(255, &qword_1EE0BF070);
    sub_1D7A67B64(255, &unk_1EC9E2EE0, &unk_1EE0BED20, 0x1E69DD250, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2ED8);
    }
  }
}

void sub_1D7A67B64(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7992EFC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t TableOfContentsAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TableOfContentsAutomation.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1D7D2A03C();
  a3[1] = v6;
  v7 = type metadata accessor for TableOfContentsAutomation();
  v8 = *(*(a2 - 8) + 32);
  v9 = a3 + *(v7 + 36);

  return v8(v9, a1, a2);
}

uint64_t sub_1D7A67D1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D7A67E20(char a1)
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](a1 & 1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7A67E68(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D7A67EBC()
{
  sub_1D7D31A8C();
  sub_1D7A67DF8(v2, *v0);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7A67F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A67D1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A67F44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7A68A90();
  *a1 = result;
  return result;
}

uint64_t sub_1D7A67F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D7A67FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TableOfContentsAutomation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[0] = *(a2 + 24);
  v12[1] = v4;
  type metadata accessor for TableOfContentsAutomation.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D7D318DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D31B1C();
  v14 = 0;
  v10 = v12[3];
  sub_1D7D3188C();
  if (!v10)
  {
    v13 = 1;
    sub_1D7D318BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TableOfContentsAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableOfContentsAutomation.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_1D7D3180C();
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v8);
  v10 = &v23 - v9;
  v30 = a3;
  v11 = type metadata accessor for TableOfContentsAutomation();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v23 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v32;
  sub_1D7D31AFC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v24 = v11;
  v16 = v28;
  v17 = v29;
  v34 = 0;
  v18 = v14;
  *v14 = sub_1D7D317AC();
  v14[1] = v19;
  v23 = v19;
  v33 = 1;
  sub_1D7D317DC();
  (*(v16 + 8))(v10, v31);
  v20 = v24;
  (*(v26 + 32))(v14 + *(v24 + 36), v17, a2);
  v21 = v25;
  (*(v25 + 16))(v27, v18, v20);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return (*(v21 + 8))(v18, v20);
}

uint64_t sub_1D7A685E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7A68660(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D7A687E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1D7A68A98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D7C10660();
        sub_1D7D2AA9C();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7A68B58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D7A68BB4(a1);
  }
}

uint64_t sub_1D7A68BB4(uint64_t a1)
{
  swift_getObjectType();
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1D7A2B8F8();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = (MEMORY[0x1EEE9AC00])(v8 - 8, v11);
  v13 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v73 - v15;
  v17 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A6B7C0(a1, v20, type metadata accessor for ArticleViewerBlueprint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v25 = *(v20 + 1);
        v81 = *v20;
        v82 = v25;
        v83 = *(v20 + 4);
        *&v26 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v22);
        *(&v73 - 6) = v1;
        *(&v73 - 5) = v26;
        *(&v73 - 3) = v27;
        *(&v73 - 2) = v28;
        *(&v73 - 1) = &v81;
        sub_1D7D294BC();
        v29 = sub_1D7D28C3C();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D7D293AC();

        swift_allocObject();
        swift_unknownObjectWeakInit();

        v30 = sub_1D7D2934C();
        sub_1D7D293DC();

        return sub_1D7A6B2DC(&v81);
      }

      v58 = type metadata accessor for ArticleViewerPage(0);
      v59 = sub_1D7A6B99C(&qword_1EE0C9920, type metadata accessor for ArticleViewerPage);
      v60 = sub_1D7A6B99C(&unk_1EE0C9940, type metadata accessor for ArticleViewerPage);
      MEMORY[0x1DA706A80](MEMORY[0x1E69E7CC0], v58, v59, v60);
      sub_1D7A6B99C(&qword_1EE0C9930, type metadata accessor for ArticleViewerPage);
      v61 = v75;
      sub_1D7D29FBC();
      sub_1D7A69EB4();
      return (*(v76 + 8))(v61, v77);
    }

    v38 = *v20;
    v39 = *(v20 + 1);
    v40 = *(v1 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_paidAccessChecker);
    v41 = [*v20 isPaid];
    v42 = [v38 isBundlePaid];
    v43 = &off_1E84EC000;
    v44 = [objc_msgSend(v38 sourceChannel)];
    swift_unknownObjectRelease();
    v45 = sub_1D7D3034C();
    v47 = v46;

    v74 = v40;
    if (v41)
    {
      v48 = [objc_msgSend(v40 purchaseProvider)];
      v49 = v45;
      v50 = v48;
      v51 = sub_1D7D309AC();

      LOBYTE(v50) = sub_1D7D053C8(v49, v47, v51);

      swift_unknownObjectRelease();
      if (v50)
      {

        v52 = 1;
        v43 = &off_1E84EC000;
LABEL_40:
        v72 = [objc_msgSend(v38 v43[335])];
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1D7B621C4((v52 | v72) & 1);
          swift_unknownObjectRelease();
        }

        __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory), *(v1 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory + 24));
        *&v81 = v38;
        *(&v81 + 1) = v39;
        v61 = v75;
        sub_1D7C4D0C8(&v81, v75);
        sub_1D7A69EB4();

        return (*(v76 + 8))(v61, v77);
      }

      v43 = &off_1E84EC000;
      if (!v42)
      {
        goto LABEL_35;
      }
    }

    else if ((v42 & 1) == 0)
    {

      v52 = 1;
      goto LABEL_40;
    }

    v62 = [objc_msgSend(v74 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v62, v62 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    v81 = v79;
    v82 = v80;
    if (*(&v80 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v63 = v78;
        v64 = [v78 integerValue];
        if (v64 == -1)
        {

          v43 = &off_1E84EC000;
          goto LABEL_37;
        }

        v65 = v64;
LABEL_26:
        if (objc_getAssociatedObject(v62, ~v65))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = 0u;
          v80 = 0u;
        }

        v81 = v79;
        v82 = v80;
        if (*(&v80 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v66 = v78;
            v67 = [v66 integerValue];

            v43 = &off_1E84EC000;
            if ((v67 ^ v65))
            {
LABEL_37:
              v68 = [objc_msgSend(v74 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v69 = [v68 bundleChannelIDs];

              v70 = sub_1D7D3031C();
              v71 = [v69 containsObject_];

              if (v71)
              {
                v52 = 1;
                goto LABEL_40;
              }

LABEL_39:
              v52 = 0;
              goto LABEL_40;
            }

LABEL_35:

            goto LABEL_39;
          }
        }

        else
        {
          sub_1D79F0014(&v81);
        }

        v43 = &off_1E84EC000;
        if (v65)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_1D79F0014(&v81);
    }

    v63 = 0;
    v65 = 0;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v20;
      v81 = 0uLL;
      v82 = xmmword_1D7D43600;
      sub_1D7A6A234(v23, &v81);
    }

    else
    {
      v53 = *v20;
      v54 = *(v20 + 1);
      v55 = *(v20 + 2);
      v56 = *(v20 + 3);
      v57 = *(v20 + 4);
      *&v81 = v54;
      *(&v81 + 1) = v55;
      *&v82 = v56;
      *(&v82 + 1) = v57;
      sub_1D7A03D20(v54, v55, v56);
      sub_1D7A6A234(v53, &v81);

      sub_1D79DA510(v54, v55, v56);
      return sub_1D7A3B3F0(v81, *(&v81 + 1), v82);
    }
  }

  else
  {
    v31 = sub_1D79A8BC0(v20, v16, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v73 - 2) = v1;
    *(&v73 - 1) = v16;
    sub_1D7D294BC();
    v33 = sub_1D7D28C3C();
    sub_1D7D293CC();

    sub_1D7A6B7C0(v16, v13, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v35 = swift_allocObject();
    sub_1D79A8BC0(v13, v35 + v34, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v36 = sub_1D7D2934C();
    sub_1D7A6B828(0, &qword_1EE0BF320, &type metadata for Article, MEMORY[0x1E69E62F8]);
    sub_1D7D293BC();

    v37 = sub_1D7D28C3C();
    sub_1D7D293CC();

    return sub_1D7A6BAA4(v16, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  }
}

void sub_1D7A69730()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_insertAdvertisementBlueprintModifier);
    v2 = Strong;

    if (v1)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;

        type metadata accessor for InsertAdvertisementPageBlueprintModifier();
        sub_1D7A6B99C(&qword_1EE0BBA78, type metadata accessor for InsertAdvertisementPageBlueprintModifier);
        sub_1D7D2ADDC();
      }
    }
  }
}

uint64_t sub_1D7A69850()
{
  v0 = sub_1D7D2B49C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7998EF4(0, &unk_1EE0BF5E0, MEMORY[0x1E69B6528]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11[-v7];
  sub_1D7D2C59C();
  swift_unknownObjectRetain();
  sub_1D7D2FA2C();
  v9 = sub_1D7D2FA4C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7FB8], v0);
  memset(&v11[16], 0, 32);
  v11[48] = 1;
  sub_1D7D2B47C();

  (*(v1 + 8))(v4, v0);
  return sub_1D7A6B878(v8, &unk_1EE0BF5E0, MEMORY[0x1E69B6528]);
}

uint64_t sub_1D7A69BB0()
{
  v1 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CA2C8 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v5 = *(v0 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_blueprintProvider + 24);
  v6 = *(v0 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_blueprintProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_blueprintProvider), v5);
  (*(v6 + 8))(v5, v6);
  sub_1D7D28EDC();

  sub_1D7A68BB4(v4);
  return sub_1D7A6BAA4(v4, type metadata accessor for ArticleViewerBlueprint);
}

uint64_t sub_1D7A69D04(__int128 *a1, uint64_t a2)
{
  sub_1D7A2B8F8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  v20 = *a1;
  v21 = v10;
  v11 = a1[3];
  v22 = a1[2];
  v23 = v11;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory), *(a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory + 24));
  sub_1D7A6B828(0, &unk_1EE0BE990, &type metadata for Article, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  inited[1] = xmmword_1D7D3B4D0;
  v14 = v22;
  v13 = v23;
  v15 = v21;
  inited[2] = v20;
  inited[3] = v15;
  inited[4] = v14;
  inited[5] = v13;
  v18[0] = 0;
  v18[1] = 0;
  v19 = xmmword_1D7D43600;
  sub_1D79F5B54(&v20, v17);
  sub_1D7C4C338(inited, v18, v9);
  swift_setDeallocating();
  sub_1D7A0AD5C((inited + 2));
  sub_1D7A69EB4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7A69EB4()
{
  sub_1D7D2ADEC();
  sub_1D7A6B99C(&unk_1EE0C00D0, sub_1D7A2B8F8);
  sub_1D7D28F1C();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7D28C6C();
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

uint64_t sub_1D7A69FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A6B7C0(a3, v8, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D7BE556C(v8, v12);
  v13 = sub_1D7BA1670(v12, *(*(a3 + *(v5 + 28)) + 16) != 0);
  sub_1D7A6BAA4(v12, type metadata accessor for AsyncArticle);
  return v13;
}

uint64_t sub_1D7A6A110(uint64_t *a1, uint64_t a2)
{
  sub_1D7A2B8F8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory), *(a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory + 24));
  v12[0] = 0;
  v12[1] = 0;
  v13 = xmmword_1D7D43600;
  sub_1D7C4C338(v10, v12, v9);
  sub_1D7A69EB4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7A6A234(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  sub_1D7998EF4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v73 = &v65 - v6;
  v7 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7998EF4(0, &qword_1EE0BDCD8, type metadata accessor for AsyncArticle);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for AsyncArticle();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v74 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v20);
  v88 = &v65 - v21;
  v78 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v23 = MEMORY[0x1EEE9AC00](v78, v22);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2[1];
  v68 = *a2;
  v67 = v28;
  v29 = a2[3];
  v66 = a2[2];
  v65 = v29;
  v30 = *(a1 + 16);
  v69 = a1;
  if (v30)
  {
    v31 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v32 = *(v25 + 72);
    v86 = (v16 + 56);
    v87 = v32;
    v77 = v16;
    v85 = (v16 + 48);
    v89 = MEMORY[0x1E69E7CC0];
    v72 = v7;
    v75 = v14;
    v76 = v15;
    do
    {
      sub_1D7A6B7C0(v31, v27, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      sub_1D7A6B7C0(v27, v10, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D7A6BAA4(v27, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        sub_1D79A8BC0(v10, v14, type metadata accessor for AsyncArticle);
        v33 = 0;
      }

      else
      {
        v34 = v7;
        v35 = v10[1];
        v36 = v10[2];
        v37 = v10[5];
        v38 = v10[7];
        if (*(*&v27[*(v78 + 20)] + 16))
        {
          v83 = v10[3];
          v84 = v37;
          v39 = v73;
          v40 = v10[6];
          v81 = *v10;
          v82 = v40;

          v41 = [v36 articleID];
          v42 = sub_1D7D3034C();
          v79 = v43;
          v80 = v42;

          v44 = [v36 routeURL];
          if (v44)
          {
            v45 = v44;
            sub_1D7D281EC();

            v46 = 0;
          }

          else
          {
            v46 = 1;
          }

          v14 = v75;
          v47 = sub_1D7D2824C();
          (*(*(v47 - 8) + 56))(v39, v46, 1, v47);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          v48 = v74;
          v49 = v80;
          *v74 = v81;
          v48[1] = v35;
          v50 = v79;
          v48[2] = v49;
          v48[3] = v50;
          v48[4] = v82;
          v48[5] = v38;
          v15 = v76;
          sub_1D79A8B40(v39, v48 + *(v76 + 28));
          sub_1D79A8BC0(v48, v14, type metadata accessor for AsyncArticle);
          sub_1D7A6BAA4(v27, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
          v33 = 0;
          v7 = v72;
        }

        else
        {
          sub_1D7A6BAA4(v27, type metadata accessor for ArticleViewerBlueprint.ArticleItem);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          v33 = 1;
          v7 = v34;
          v14 = v75;
          v15 = v76;
        }
      }

      (*v86)(v14, v33, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        v23 = sub_1D7A6B878(v14, &qword_1EE0BDCD8, type metadata accessor for AsyncArticle);
      }

      else
      {
        sub_1D79A8BC0(v14, v88, type metadata accessor for AsyncArticle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D79E4530(0, v89[2] + 1, 1, v89);
        }

        v52 = v89[2];
        v51 = v89[3];
        v53 = v77;
        if (v52 >= v51 >> 1)
        {
          v56 = sub_1D79E4530(v51 > 1, v52 + 1, 1, v89);
          v53 = v77;
          v89 = v56;
        }

        v54 = v88;
        v55 = v89;
        v89[2] = v52 + 1;
        v23 = sub_1D79A8BC0(v54, v55 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52, type metadata accessor for AsyncArticle);
      }

      v31 += v87;
      --v30;
    }

    while (v30);
  }

  else
  {
    v89 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v23, v24);
  v57 = v89;
  *(&v65 - 4) = v71;
  *(&v65 - 3) = v57;
  v58 = v69;
  *(&v65 - 2) = v69;
  sub_1D7A6B828(0, &qword_1EE0BF320, &type metadata for Article, MEMORY[0x1E69E62F8]);
  sub_1D7D294BC();

  v59 = sub_1D7D28C3C();
  v60 = swift_allocObject();
  v61 = v68;
  v60[2] = v58;
  v60[3] = v61;
  v62 = v67;
  v63 = v66;
  v60[4] = v67;
  v60[5] = v63;
  v60[6] = v65;

  sub_1D7A03D0C(v61, v62, v63);
  sub_1D7D293CC();
}

uint64_t sub_1D7A6AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AsyncArticle();
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 36);
  v17 = sub_1D7D2824C();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  *v15 = a2;
  *(v15 + 1) = a3;
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  LOBYTE(a6) = *(*(a6 + 32) + 16) != 0;
  swift_bridgeObjectRetain_n();
  v18 = sub_1D7BA262C(v15, a4, a5, a6);
  sub_1D7A6BAA4(v15, type metadata accessor for AsyncArticle);
  return v18;
}

uint64_t sub_1D7A6AB84(_OWORD *a1)
{
  sub_1D7A2B8F8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory), *(result + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory + 24));
    v10 = a1[1];
    v13[0] = *a1;
    v13[1] = v10;
    v11 = a1[3];
    v13[2] = a1[2];
    v13[3] = v11;
    v14 = v3;
    v12 = off_1F52ADB98[0];
    type metadata accessor for ArticleViewerPageBlueprintFactory();
    (v12)(v13);
    sub_1D7A69EB4();

    return (*(v4 + 8))(v7, v14);
  }

  return result;
}

uint64_t sub_1D7A6AD0C(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1D7A6AE1C(a1, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_1D799CC84(v10, v9);
      sub_1D7D2C18C();
      swift_allocObject();
      v6 = sub_1D7D2C13C();
      v7 = v5[9];
      v8 = v5[10];
      __swift_project_boxed_opaque_existential_1(v5 + 6, v7);
      (*(v8 + 32))(v6, 1, v7, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void sub_1D7A6AE1C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  if (swift_dynamicCast())
  {
    v4 = v11 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a2 + 24) = &type metadata for AlertArticleUnavailable;
    *(a2 + 32) = sub_1D7A6B948();
    *a2 = 2;
    *(a2 + 8) = 1;
  }

  else
  {

    *(a2 + 24) = &type metadata for AlertArticleUnavailable;
    *(a2 + 32) = sub_1D7A6B948();
    v5 = sub_1D7D2814C();
    v6 = [v5 fc_isUnknownItemError];

    if (v6)
    {
      v7 = 1;
      v8 = 1;
    }

    else
    {
      v9 = sub_1D7D2814C();
      v10 = [v9 fc_isBlockedInStoreFrontError];

      v7 = 2;
      if (!v10)
      {
        v7 = 0;
      }

      v8 = v10 ^ 1;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
  }
}

uint64_t sub_1D7A6AF50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  sub_1D7A2B8F8();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7A5B1A8(*a1, a3);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory), *(a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory + 24));
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = v22;
  sub_1D7C4C338(v19, v23, v18);

  sub_1D7A69EB4();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D7A6B0A0()
{
  type metadata accessor for RemoveAdvertisementPageBlueprintModifier();
  swift_allocObject();
  sub_1D7A6B99C(qword_1EE0BB9A8, type metadata accessor for RemoveAdvertisementPageBlueprintModifier);
  sub_1D7D2ADDC();
}

uint64_t sub_1D7A6B330()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  return sub_1D7A6B3F0(v1, v2);
}

uint64_t sub_1D7A6B3F0(uint64_t a1, uint64_t a2)
{
  sub_1D7998EF4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v41 - v6;
  v8 = type metadata accessor for AsyncArticle();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v41 - v14;
  v16 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A6B7C0(a1, v19, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D79A8BC0(v19, v15, type metadata accessor for AsyncArticle);
    v20 = *(*(a1 + *(type metadata accessor for ArticleViewerBlueprint.ArticleItem(0) + 20)) + 16) != 0;
    v21 = sub_1D7BA134C(v15, v20);
    v22 = v15;
LABEL_9:
    sub_1D7A6BAA4(v22, type metadata accessor for AsyncArticle);
    return v21;
  }

  v23 = v19[1];
  v43 = *v19;
  v44 = v23;
  v24 = v19[3];
  v45 = v19[2];
  v46 = v24;
  v25 = *(a1 + *(type metadata accessor for ArticleViewerBlueprint.ArticleItem(0) + 20));
  if (*(v25 + 16))
  {
    v26 = *(a2 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_dataManager);
    v27 = *(&v43 + 1);
    v41[0] = v43;
    v41[1] = v26;
    v28 = v44;

    sub_1D79F5B54(&v43, v42);
    v29 = [v28 articleID];
    v30 = sub_1D7D3034C();
    v32 = v31;

    v33 = v46;

    v34 = [v28 routeURL];
    if (v34)
    {
      v35 = v34;
      sub_1D7D281EC();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v39 = sub_1D7D2824C();
    (*(*(v39 - 8) + 56))(v7, v36, 1, v39);
    sub_1D7A0AD5C(&v43);
    *v12 = v41[0];
    *(v12 + 1) = v27;
    *(v12 + 2) = v30;
    *(v12 + 3) = v32;
    *(v12 + 2) = v33;
    sub_1D79A8B40(v7, &v12[*(v8 + 28)]);
    v21 = sub_1D7BA134C(v12, *(v25 + 16) != 0);
    sub_1D7A0AD5C(&v43);
    v22 = v12;
    goto LABEL_9;
  }

  v37 = v19[1];
  v42[0] = *v19;
  v42[1] = v37;
  v38 = v19[3];
  v42[2] = v19[2];
  v42[3] = v38;
  sub_1D7A6B828(0, &unk_1EE0C02A0, &type metadata for Article, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A6B7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A6B828(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7A6B878(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7998EF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A6B8D4()
{
  v1 = *(v0 + 24);
  v2 = sub_1D7A5B064(*(v0 + 32));
  return sub_1D7BA1DE8(v1, v2);
}

unint64_t sub_1D7A6B948()
{
  result = qword_1EC9E3060;
  if (!qword_1EC9E3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3060);
  }

  return result;
}

uint64_t sub_1D7A6B99C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7A6B9E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 16) | a2)
    {
      return result;
    }
  }

  else if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7D28C6C();
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

uint64_t sub_1D7A6BAA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A6BB04()
{
  if (!qword_1EE0C4C50)
  {
    sub_1D798F168(255, &unk_1EE0C4C58);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C4C50);
    }
  }
}

void sub_1D7A6BBB8(void *a1)
{
  v3 = [a1 sourceChannelID];
  if (v3 && (v4 = v3, v5 = sub_1D7D3034C(), v7 = v6, v4, v8 = v1[5], v9 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v8), v10 = [a1 articleID], v11 = sub_1D7D3034C(), v13 = v12, v10, v14 = (*(v9 + 16))(v11, v13, v5, v7, v8, v9), v16 = v15, , , v14))
  {
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D7D30C4C();
    sub_1D79F3AB0();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7D3B4D0;
    v19 = [a1 articleID];
    v20 = sub_1D7D3034C();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D79D6AE0();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1D79A52C4();
    v23 = sub_1D7D312CC();
    sub_1D7D29AAC();
  }
}

uint64_t sub_1D7A6BE48(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v34 = v2;
  v35 = result;
  v33 = v6;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          goto LABEL_39;
        }

        v5 = *(v2 + 8 * v10);
        ++v8;
        if (v5)
        {
          v8 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

LABEL_10:
    v41 = v5;
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11;
    v38 = v11 >> 62;
    v13 = v11 >> 62 ? sub_1D7D3167C() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_38;
    }

LABEL_14:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v13;
    if (!result)
    {
      if (v14)
      {
LABEL_20:
        sub_1D7D3167C();
      }

LABEL_21:
      v18 = v1;
      result = sub_1D7D314AC();
      v9 = result;
      v17 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v18 = v1;
LABEL_22:
    v37 = v9;
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = v12;
    if (v38)
    {
      v23 = v17;
      result = sub_1D7D3167C();
      v17 = v23;
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v41 - 1) & v41;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v39)
      {
        goto LABEL_42;
      }

      v24 = v17 + 8 * v19 + 32;
      v41 &= v41 - 1;
      v36 = v17;
      if (v38)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_1D7A745D8(0, &qword_1EE0BB0B0, &qword_1EE0BECC0, 0x1E69B5578, MEMORY[0x1E69E62F8]);
        sub_1D7A7469C(&qword_1EC9E1AA0);
        for (i = 0; i != v22; ++i)
        {
          v26 = sub_1D7A67588(v40, i, v21);
          v28 = *v27;
          (v26)(v40, 0);
          *(v24 + 8 * i) = v28;
        }
      }

      else
      {
        sub_1D7992EFC(0, &qword_1EE0BECC0);
        swift_arrayInitWithCopy();
      }

      v2 = v34;
      v1 = v35;
      v6 = v33;
      v9 = v37;
      v5 = v41;
      if (v39 >= 1)
      {
        v29 = *(v36 + 16);
        v30 = __OFADD__(v29, v39);
        v31 = v29 + v39;
        if (v30)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v31;
      }
    }

    else
    {

      v9 = v37;
      v1 = v18;
      if (v39 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = sub_1D7D3167C();
  v16 = v32 + v13;
  if (!__OFADD__(v32, v13))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  return v9;
}

uint64_t RecipeRecirculationService.__allocating_init(appConfigManager:recipeService:recipeAccessProvider:recipeRecirculationConfigService:tagService:recipeHistory:personalizationService:subscriptionController:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 256) = a1;
  sub_1D799D69C(a2, v16 + 16);
  sub_1D799D69C(a3, v16 + 56);
  sub_1D799D69C(a4, v16 + 96);
  sub_1D799D69C(a5, v16 + 216);
  sub_1D799D69C(a6, v16 + 136);
  sub_1D799D69C(a7, v16 + 176);
  *(v16 + 264) = a8;
  return v16;
}

uint64_t RecipeRecirculationService.init(appConfigManager:recipeService:recipeAccessProvider:recipeRecirculationConfigService:tagService:recipeHistory:personalizationService:subscriptionController:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, uint64_t a8)
{
  *(v8 + 256) = a1;
  sub_1D799D69C(a2, v8 + 16);
  sub_1D799D69C(a3, v8 + 56);
  sub_1D799D69C(a4, v8 + 96);
  sub_1D799D69C(a5, v8 + 216);
  sub_1D799D69C(a6, v8 + 136);
  sub_1D799D69C(a7, v8 + 176);
  *(v8 + 264) = a8;
  return v8;
}

uint64_t RecipeRecirculationService.fetchRecirculationRecipes(for:)(uint64_t a1, uint64_t a2)
{
  v3[191] = v2;
  v3[185] = a2;
  v3[179] = a1;
  v3[197] = type metadata accessor for RecipeRecirculationData();
  v3[203] = swift_task_alloc();
  v3[209] = swift_task_alloc();
  v3[215] = type metadata accessor for RecipeRecirculationConfig();
  v3[221] = swift_task_alloc();
  v3[222] = swift_task_alloc();
  v3[167] = MEMORY[0x1E69E7CC0];
  v5 = swift_task_alloc();
  v3[223] = v5;
  *v5 = v3;
  v5[1] = sub_1D7A6C480;

  return sub_1D7A6D5E4(a2);
}

uint64_t sub_1D7A6C480(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 1792) = a1;
  *(v3 + 1848) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D7A6C584, 0, 0);
}

uint64_t sub_1D7A6C584()
{
  if (*(v0 + 1848) == 255)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = sub_1D79E4564(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1D79E4564((v2 > 1), v3 + 1, 1, v1);
    }

    v4 = *(v0 + 1848);
    v5 = *(v0 + 1792);
    *(v1 + 2) = v3 + 1;
    v6 = &v1[16 * v3];
    *(v6 + 4) = v5;
    v6[40] = v4;
    *(v0 + 1336) = v1;
  }

  v7 = sub_1D7A727B4(*(v0 + 1480));
  if (v8 != -1)
  {
    v9 = v7;
    v10 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D79E4564(0, *(v1 + 2) + 1, 1, v1);
    }

    v12 = *(v1 + 2);
    v11 = *(v1 + 3);
    if (v12 >= v11 >> 1)
    {
      v1 = sub_1D79E4564((v11 > 1), v12 + 1, 1, v1);
    }

    *(v1 + 2) = v12 + 1;
    v13 = &v1[16 * v12];
    *(v13 + 4) = v9;
    v13[40] = v10;
    *(v0 + 1336) = v1;
  }

  v14 = *(v0 + 1528);
  v15 = *(v0 + 1480);

  swift_asyncLet_begin();
  v16 = swift_allocObject();
  *(v0 + 1800) = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;

  v17 = v15;
  swift_asyncLet_begin();
  v18 = *(v0 + 1776);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v18, sub_1D7A6C7A8, v0 + 1296);
}

uint64_t sub_1D7A6C7A8()
{
  v1[226] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7A6CDCC, 0, 0);
  }

  else
  {
    sub_1D7A72C30(v1[222], v1[221], type metadata accessor for RecipeRecirculationConfig);
    v2 = v1[209];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v2, sub_1D7A6C86C, v1 + 180);
  }
}

uint64_t sub_1D7A6C86C()
{
  *(v1 + 1816) = v0;
  if (v0)
  {
    v2 = sub_1D7A6D030;
  }

  else
  {
    v2 = sub_1D7A6C8A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A6C8A0()
{
  v1 = v0[221];
  v2 = v0[203];
  v3 = v0[191];
  v4 = v0[185];
  sub_1D7A72C30(v0[209], v2, type metadata accessor for RecipeRecirculationData);
  sub_1D79F3B50(0, &qword_1EC9E30E0, &type metadata for RecipeRecirculationSection, MEMORY[0x1E69E6720]);
  v6 = v5;
  sub_1D7A72C98();
  v8 = v7;
  v9 = swift_task_alloc();
  v0[228] = v9;
  v9[2] = v1;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v2;
  v10 = swift_task_alloc();
  v0[229] = v10;
  *v10 = v0;
  v10[1] = sub_1D7A6CA08;

  return MEMORY[0x1EEE6DD58](v0 + 173, v6, v8, 0, 0, &unk_1D7D437D8, v9, v6);
}

uint64_t sub_1D7A6CA08()
{
  *(*v1 + 1840) = v0;

  if (v0)
  {
    v2 = sub_1D7A6D2F4;
  }

  else
  {

    v2 = sub_1D7A6CB24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A6CB24(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t (*a3)(), void *a4)
{
  v5 = 0;
  v6 = v4[173];
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v6 + 40 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEB0](isUniquelyReferenced_nonNull_native, a2, a3, a4);
    }

    v10 = v9 + 16;
    ++v5;
    v11 = *v9;
    v9 += 16;
    if (v11 != 255)
    {
      v12 = *(v10 - 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D79E4564(0, *(v8 + 16) + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D79E4564((v13 > 1), v14 + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      goto LABEL_2;
    }
  }

  v16 = v4[221];
  v17 = v4[203];

  sub_1D79E2CD4(v8);
  sub_1D7A72DDC(v17, type metadata accessor for RecipeRecirculationData);
  sub_1D7A72DDC(v16, type metadata accessor for RecipeRecirculationConfig);
  a3 = sub_1D7A6CCC4;
  a2 = v4[209];
  isUniquelyReferenced_nonNull_native = (v4 + 82);
  a4 = v4 + 210;

  return MEMORY[0x1EEE6DEB0](isUniquelyReferenced_nonNull_native, a2, a3, a4);
}

uint64_t sub_1D7A6CD1C()
{

  **(v0 + 1432) = *(v0 + 1336);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A6CE44()
{
  v1 = *(v0 + 1808);
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D7987000, v4, v5, "Failed to fetch recirculation configuration for recipe recirculation sections, error=%{public}@", v6, 0xCu);
    sub_1D7A72BA8(v7);
    MEMORY[0x1DA7102E0](v7, -1, -1);
    MEMORY[0x1DA7102E0](v6, -1, -1);
  }

  else
  {
  }

  **(v0 + 1432) = *(v0 + 1336);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7A6D030()
{
  sub_1D7A72DDC(*(v0 + 1768), type metadata accessor for RecipeRecirculationConfig);
  v1 = *(v0 + 1672);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1D7A6D0B0, v0 + 1488);
}

uint64_t sub_1D7A6D108()
{
  v1 = *(v0 + 1816);
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D7987000, v4, v5, "Failed to fetch recirculation configuration for recipe recirculation sections, error=%{public}@", v6, 0xCu);
    sub_1D7A72BA8(v7);
    MEMORY[0x1DA7102E0](v7, -1, -1);
    MEMORY[0x1DA7102E0](v6, -1, -1);
  }

  else
  {
  }

  **(v0 + 1432) = *(v0 + 1336);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7A6D2F4()
{
  v1 = v0[221];
  v2 = v0[203];

  sub_1D7A72DDC(v2, type metadata accessor for RecipeRecirculationData);
  sub_1D7A72DDC(v1, type metadata accessor for RecipeRecirculationConfig);
  v3 = v0[209];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v3, sub_1D7A6D3A0, v0 + 198);
}

uint64_t sub_1D7A6D3F8()
{
  v1 = *(v0 + 1840);
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D7987000, v4, v5, "Failed to fetch recirculation configuration for recipe recirculation sections, error=%{public}@", v6, 0xCu);
    sub_1D7A72BA8(v7);
    MEMORY[0x1DA7102E0](v7, -1, -1);
    MEMORY[0x1DA7102E0](v6, -1, -1);
  }

  else
  {
  }

  **(v0 + 1432) = *(v0 + 1336);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7A6D5E4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D7A6D604, 0, 0);
}

uint64_t sub_1D7A6D604()
{
  swift_getObjectType();
  *(v0 + 56) = sub_1D7D30F7C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D7A6D6C0;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1D7A6D6C0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D7A6DBB4;
  }

  else
  {

    v2 = sub_1D7A6D7DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A6D7DC()
{
  v1 = v0[5];
  v2 = v0[2];
  v0[10] = v2;
  v3 = sub_1D7A6F7D0(v1, v2);
  sub_1D79F3B50(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = xmmword_1D7D3C670;
  v5 = [v1 sourceChannel];
  v0[3] = v4;
  *(v4 + 32) = v5;
  if (*(v3 + 16))
  {
    __swift_project_boxed_opaque_existential_1((v0[6] + 216), *(v0[6] + 240));
    v0[12] = sub_1D7D2F17C();

    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1D7A6D998;

    return MEMORY[0x1EEE44EE0](v0 + 4);
  }

  else
  {
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7(v4, 0);
  }
}

uint64_t sub_1D7A6D998()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1D7A6DD54;
  }

  else
  {
    v2 = sub_1D7A6DAD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A6DAD8()
{
  sub_1D798C3BC(0, &qword_1EE0BF070);
  v1 = sub_1D7D3066C();

  sub_1D79E2CA8(v1);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v2, 0);
}

uint64_t sub_1D7A6DBB4()
{

  v1 = *(v0 + 72);
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D7987000, v4, v5, "Failed to form EndOfRecipe topics section, reason: error=%{public}@", v6, 0xCu);
    sub_1D7A72BA8(v7);
    MEMORY[0x1DA7102E0](v7, -1, -1);
    MEMORY[0x1DA7102E0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 255);
}

uint64_t sub_1D7A6DD54()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 112);
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D7987000, v4, v5, "Failed to form EndOfRecipe topics section, reason: error=%{public}@", v6, 0xCu);
    sub_1D7A72BA8(v7);
    MEMORY[0x1DA7102E0](v7, -1, -1);
    MEMORY[0x1DA7102E0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 255);
}

uint64_t sub_1D7A6DEF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D7A4E814;

  return sub_1D7A6DF90(a1);
}

uint64_t sub_1D7A6DF90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D7D3039C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A6E050, 0, 0);
}

uint64_t sub_1D7A6E050()
{
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D7D29AFC();
  __swift_project_value_buffer(v1, qword_1ECA0BB60);
  v2 = sub_1D7D29ADC();
  v3 = sub_1D7D30C2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D7987000, v2, v3, "Fetching recipe recirculation config from app config", v4, 2u);
    MEMORY[0x1DA7102E0](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = v5[15];
  v7 = v5[16];
  __swift_project_boxed_opaque_existential_1(v5 + 12, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1D7A6E234;

  return v10(v6, v7);
}

uint64_t sub_1D7A6E234(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D7A6E39C, 0, 0);
  }
}

uint64_t sub_1D7A6E39C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1D7D3038C();
  v4 = sub_1D7D3035C();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    sub_1D7A7470C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1D7D27F5C();
    swift_allocObject();
    sub_1D7D27F4C();
    type metadata accessor for RecipeRecirculationConfig();
    sub_1D7A74760(&unk_1EC9E3168, type metadata accessor for RecipeRecirculationConfig);
    sub_1D7D27F3C();

    sub_1D79EA2D0(v4, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D7A6E540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D7A4E2D8;

  return sub_1D7A6E5F0(a1, a3);
}

uint64_t sub_1D7A6E5F0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1D7D2FAFC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A6E6B0, 0, 0);
}

uint64_t sub_1D7A6E6B0()
{
  v23 = v0;
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v9 = [v6 identifier];
    v10 = sub_1D7D3034C();
    v12 = v11;

    v13 = sub_1D7B06D4C(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D7987000, v4, v5, "Fetching recipeRecirulcationData asset for recipe %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA7102E0](v8, -1, -1);
    MEMORY[0x1DA7102E0](v7, -1, -1);
  }

  v14 = [*(v0 + 40) recipeRecirculationDataAssetHandle];
  *(v0 + 72) = v14;
  if (v14)
  {
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    sub_1D7D27F5C();
    swift_allocObject();
    *(v0 + 80) = sub_1D7D27F4C();
    (*(v16 + 104))(v15, *MEMORY[0x1E69B6568], v17);
    *(v0 + 88) = sub_1D7D30BFC();
    (*(v16 + 8))(v15, v17);
    v18 = swift_task_alloc();
    *(v0 + 96) = v18;
    *v18 = v0;
    v18[1] = sub_1D7A6E9BC;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    sub_1D7A7470C();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1D7A6E9BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D7A6EC18;
  }

  else
  {

    v2 = sub_1D7A6EAD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A6EAD8()
{
  v1 = v0[3];
  v2 = v0[2];
  type metadata accessor for RecipeRecirculationData();
  sub_1D7A74760(&qword_1EC9E3160, type metadata accessor for RecipeRecirculationData);
  sub_1D7D27F3C();
  v3 = v0[9];
  sub_1D79EA2E4(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D7A6EC18()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D7A6EC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = *(type metadata accessor for RecipeRecirculationData() - 8);
  v6[17] = v7;
  v6[18] = *(v7 + 64);
  v6[19] = swift_task_alloc();
  sub_1D798E9DC(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A6EDB4, 0, 0);
}

uint64_t sub_1D7A6EDB4()
{
  sub_1D7A72FC0();
  sub_1D7D2F55C();
  v26 = *(v0 + 72);
  v1 = *(v26 + 16);
  if (v1)
  {
    v31 = **(v0 + 96);
    v32 = *(v0 + 136);
    v30 = sub_1D7D3087C();
    v2 = *(v30 - 8);
    v29 = *(v2 + 56);
    v28 = (v2 + 48);
    v27 = (v2 + 8);
    v3 = (v26 + 48);
    do
    {
      v37 = v1;
      v6 = *(v0 + 168);
      v7 = *(v0 + 152);
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      v10 = *(v0 + 112);
      v11 = *(v3 - 1);
      v34 = *(v3 - 2);
      v35 = *(v0 + 160);
      v36 = v3;
      v33 = *v3;
      v29(v6, 1, 1, v30);
      sub_1D7A72C30(v8, v7, type metadata accessor for RecipeRecirculationData);
      v12 = (*(v32 + 80) + 72) & ~*(v32 + 80);
      v13 = swift_allocObject();
      v13[2] = 0;
      v14 = v13 + 2;
      v13[3] = 0;
      v13[4] = v10;
      v13[5] = v9;
      v13[6] = v34;
      v13[7] = v11;
      v13[8] = v33;
      sub_1D7A732B0(v7, v13 + v12);
      sub_1D7A4E3CC(v6, v35);
      LODWORD(v6) = (*v28)(v35, 1, v30);

      v15 = v9;
      v16 = *(v0 + 160);
      if (v6 == 1)
      {
        sub_1D7A74640(*(v0 + 160), &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
        if (*v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D7D3086C();
        (*v27)(v16, v30);
        if (*v14)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_1D7D307DC();
          v18 = v19;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v17 = 0;
      v18 = 0;
LABEL_10:
      sub_1D79F3B50(0, &qword_1EC9E30E0, &type metadata for RecipeRecirculationSection, MEMORY[0x1E69E6720]);

      if (v18 | v17)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v18;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_1D7A74640(v5, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
      v3 = v36 + 3;
      v1 = v37 - 1;
    }

    while (v37 != 1);
  }

  v20 = *(v0 + 96);

  *(v0 + 80) = *v20;
  v21 = swift_task_alloc();
  *(v0 + 176) = v21;
  sub_1D7A7343C();
  v23 = v22;
  v24 = sub_1D7A74760(&qword_1EC9E3140, sub_1D7A7343C);
  *v21 = v0;
  v21[1] = sub_1D7A6F1E0;

  return MEMORY[0x1EEE453B0](v23, v24);
}

uint64_t sub_1D7A6F1E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1D7A6F38C;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_1D7A6F308;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7A6F308()
{
  **(v0 + 88) = *(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A6F38C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A6F404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_1D7A6F4D0;

  return sub_1D7A73A68(a6, a7, a8, v15);
}

uint64_t sub_1D7A6F4D0(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D7A6F630, 0, 0);
  }
}

uint64_t sub_1D7A6F630()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1;
  return (*(v0 + 8))();
}

uint64_t RecipeRecirculationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RecipeRecirculationService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A6F724(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7A4E814;

  return RecipeRecirculationService.fetchRecirculationRecipes(for:)(a1, a2);
}

uint64_t sub_1D7A6F7D0(void *a1, uint64_t a2)
{
  sub_1D7D2864C();
  sub_1D7D2863C();
  if (qword_1EC9DFEB0 != -1)
  {
LABEL_33:
    swift_once();
  }

  sub_1D7D2862C();

  if (v27 != 1)
  {
    if ([a2 respondsToSelector_])
    {
      v6 = [a2 allowedRecipeRelatedTopicIDs];
      v7 = sub_1D7D3063C();
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    a2 = sub_1D7BDE0A4(v7);

    v8 = [a1 topicTagIDs];
    a1 = sub_1D7D3063C();

    v9 = a1[2];
    if (!v9)
    {
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }

    v10 = 0;
    v11 = a2 + 56;
    v5 = MEMORY[0x1E69E7CC0];
    v26 = a1[2];
    while (1)
    {
      v12 = v10;
      while (1)
      {
        if (v12 >= a1[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        v10 = v12 + 1;
        if (*(a2 + 16))
        {
          break;
        }

LABEL_11:
        v12 = v10;
        if (v10 == v9)
        {
          goto LABEL_30;
        }
      }

      v13 = &a1[2 * v12 + 4];
      v15 = *v13;
      v14 = v13[1];
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v16 = sub_1D7D31ABC();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (1)
      {
        v20 = (*(a2 + 48) + 16 * v18);
        v21 = *v20 == v15 && v20[1] == v14;
        if (v21 || (sub_1D7D3197C() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7A5BDC8(0, *(v5 + 16) + 1, 1);
      }

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D7A5BDC8((v22 > 1), v23 + 1, 1);
      }

      *(v5 + 16) = v23 + 1;
      v24 = v5 + 16 * v23;
      *(v24 + 32) = v15;
      *(v24 + 40) = v14;
      v9 = v26;
      if (v10 == v26)
      {
LABEL_30:

        return v5;
      }
    }

LABEL_10:

    goto LABEL_11;
  }

  v4 = [a1 topicTagIDs];
  v5 = sub_1D7D3063C();

  return v5;
}

void sub_1D7A6FAEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1D7D3034C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D7A6FB44(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_1D798E9DC(0, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v4 = sub_1D7D2DC4C();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A6FC80, 0, 0);
}

uint64_t sub_1D7A6FC80()
{
  v1 = v0[7];
  sub_1D799CC84(v0[9] + 136, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  if (v1 >> 62)
  {
    v4 = sub_1D7D3167C();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v6 = sub_1D7A5BDC8(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE20DD8](v6, v7, v8);
    }

    v5 = v28;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x1DA70EF00](v9, v0[7]);
        v10 = [swift_unknownObjectRetain() identifier];
        v11 = sub_1D7D3034C();
        v13 = v12;

        swift_unknownObjectRelease_n();
        v15 = *(v28 + 16);
        v14 = *(v28 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D7A5BDC8((v14 > 1), v15 + 1, 1);
        }

        ++v9;
        *(v28 + 16) = v15 + 1;
        v16 = v28 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v4 != v9);
    }

    else
    {
      v17 = (v0[7] + 32);
      do
      {
        v18 = *v17;
        v19 = [v18 identifier];
        v20 = sub_1D7D3034C();
        v22 = v21;

        v24 = *(v28 + 16);
        v23 = *(v28 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D7A5BDC8((v23 > 1), v24 + 1, 1);
        }

        *(v28 + 16) = v24 + 1;
        v25 = v28 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        ++v17;
        --v4;
      }

      while (v4);
    }
  }

  v0[18] = v5;
  v26 = swift_task_alloc();
  v0[19] = v26;
  *v26 = v0;
  v26[1] = sub_1D7A6FF0C;
  v6 = v5;
  v7 = v2;
  v8 = v3;

  return MEMORY[0x1EEE20DD8](v6, v7, v8);
}

uint64_t sub_1D7A6FF0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1D7A70884;
  }

  else
  {
    v4 = sub_1D7A70040;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7A70040()
{
  v1 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  v64 = v2;
  v4 = (v1 + 32);
  while (1)
  {
    if (!v2)
    {
      v6 = v77[7];

LABEL_24:
      v8 = v64;
      goto LABEL_27;
    }

    if ((*v4 & 1) == 0)
    {
      break;
    }

    v5 = sub_1D7D3197C();

    ++v4;
    --v2;
    if (v5)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v7 = v77[7];
  v78 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v6 = sub_1D7D3167C();
    v8 = v64;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v64;
    if (v6)
    {
LABEL_10:
      v9 = 0;
      v10 = v77[7];
      v72 = v10 & 0xC000000000000001;
      v74 = v77[20];
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v68 = v6;
      v70 = v10 + 32;
      v65 = v10 & 0xFFFFFFFFFFFFFF8;
      v66 = v77[13];
      while (1)
      {
        if (v72)
        {
          v12 = MEMORY[0x1DA70EF00](v9, v77[7]);
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_50;
          }

          v12 = *(v70 + 8 * v9);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          while (2)
          {
            __break(1u);
            while (2)
            {
              __break(1u);
LABEL_53:
              v30 = sub_1D7D3167C();
              if (!v30)
              {
                goto LABEL_54;
              }

LABEL_35:
              v31 = 0;
              v73 = v6;
              v75 = v77[20];
              v32 = v6 & 0xC000000000000001;
              v33 = v6 & 0xFFFFFFFFFFFFFF8;
              v69 = v77[13];
              v71 = v30;
              v67 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_39:
              if (v32)
              {
                v34 = MEMORY[0x1DA70EF00](v31, v6);
              }

              else
              {
                if (v31 >= *(v33 + 16))
                {
                  continue;
                }

                v34 = *(v6 + 8 * v31 + 32);
              }

              break;
            }

            v35 = v34;
            v36 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              continue;
            }

            break;
          }

          v37 = [v34 identifier];
          v38 = sub_1D7D3034C();
          v40 = v39;

          if (*(v75 + 16))
          {
            v41 = sub_1D7A18FFC(v38, v40);
            v43 = v42;

            if (v43)
            {
              v45 = v77[14];
              v44 = v77[15];
              v46 = v77[12];
              v47 = v77[10];
              (*(v69 + 16))(v45, *(v75 + 56) + *(v69 + 72) * v41, v46);
              (*(v69 + 32))(v44, v45, v46);
              sub_1D7D2DC2C();
              v33 = v67;
              (*(v69 + 8))(v44, v46);
              v48 = sub_1D7D2833C();
              v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
              sub_1D7A74640(v47, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
              if (v49 != 1)
              {

LABEL_38:
                ++v31;
                v6 = v73;
                if (v36 == v71)
                {
                  v50 = v78;
                  goto LABEL_55;
                }

                goto LABEL_39;
              }
            }
          }

          else
          {
          }

          sub_1D7D3153C();
          sub_1D7D3157C();
          sub_1D7D3158C();
          sub_1D7D3154C();
          goto LABEL_38;
        }

        v15 = [v12 identifier];
        v16 = sub_1D7D3034C();
        v18 = v17;

        if (*(v74 + 16))
        {
          v19 = sub_1D7A18FFC(v16, v18);
          v21 = v20;

          if (v21)
          {
            v23 = v77[16];
            v22 = v77[17];
            v25 = v77[11];
            v24 = v77[12];
            (*(v66 + 16))(v23, *(v74 + 56) + *(v66 + 72) * v19, v24);
            (*(v66 + 32))(v22, v23, v24);
            sub_1D7D2DC1C();
            v11 = v65;
            (*(v66 + 8))(v22, v24);
            v26 = sub_1D7D2833C();
            v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
            v28 = v25;
            v6 = v68;
            sub_1D7A74640(v28, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
            if (v27 != 1)
            {

              goto LABEL_13;
            }
          }
        }

        else
        {
        }

        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
LABEL_13:
        ++v9;
        if (v14 == v6)
        {
          v6 = v78;
          goto LABEL_24;
        }
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_27:
    if (!v8)
    {

      goto LABEL_56;
    }

    if (*v3 == 1)
    {
      break;
    }

    v29 = sub_1D7D3197C();

    ++v3;
    --v8;
    if (v29)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  v78 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_53;
  }

  v30 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v30)
  {
    goto LABEL_35;
  }

LABEL_54:
  v50 = MEMORY[0x1E69E7CC0];
LABEL_55:

  v6 = v50;
LABEL_56:
  v79 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_74;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v52 = 0;
    v76 = v6 & 0xC000000000000001;
    v53 = v77[9];
    v54 = v6;
    v6 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v76)
      {
        v55 = MEMORY[0x1DA70EF00](v52, v54);
      }

      else
      {
        if (v52 >= *(v6 + 16))
        {
          goto LABEL_73;
        }

        v55 = *(v54 + 8 * v52 + 32);
      }

      v56 = v55;
      v57 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(v53 + 7, v53[10]);
      if (sub_1D7D2FB4C())
      {
        goto LABEL_59;
      }

      v58 = v53[33];
      v59 = [objc_msgSend(v56 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v59)
      {
        sub_1D7D3034C();
        v59 = sub_1D7D3031C();
      }

      v60 = [v58 hasMutedSubscriptionForTagID_];

      if (v60)
      {
LABEL_59:
      }

      else
      {
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
      }

      ++v52;
      if (v57 == i)
      {
        v61 = v79;
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    ;
  }

  v61 = MEMORY[0x1E69E7CC0];
LABEL_76:

  v62 = v77[1];

  return v62(v61);
}

uint64_t sub_1D7A70884()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A70934(uint64_t a1, char a2)
{
  sub_1D7A745D8(0, &qword_1EC9E3148, &qword_1EE0BECC0, 0x1E69B5578, MEMORY[0x1E69B59A8]);
  v7 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v26 - v9;
  v11 = sub_1D7D2E90C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    v30 = sub_1D7C85AD8(v16);
    sub_1D7A71410(&v30);
    if (v3)
    {

      __break(1u);
    }

    else
    {
      return v30;
    }
  }

  else
  {
    v18 = v2[25];
    v28 = v2[26];
    v27 = __swift_project_boxed_opaque_existential_1(v2 + 22, v18);
    v30 = a1;
    sub_1D7A745D8(0, &qword_1EE0BB0B0, &qword_1EE0BECC0, 0x1E69B5578, MEMORY[0x1E69E62F8]);
    sub_1D7A7469C(&qword_1EC9E3150);
    sub_1D7D3052C();
    (*(v12 + 104))(v15, *MEMORY[0x1E69B5CA0], v11);
    sub_1D7992EFC(0, &qword_1EE0BECC0);
    v19 = sub_1D7D2E9EC();
    v26[1] = v3;
    if (v3)
    {
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      v20 = v19;
      (*(v12 + 8))(v15, v11);

      swift_getKeyPath();
      v21 = *(v20 + 16);
      if (v21)
      {
        v30 = MEMORY[0x1E69E7CC0];
        sub_1D7D3156C();
        v23 = v29 + 16;
        v22 = *(v29 + 16);
        v24 = *(v29 + 80);
        v26[0] = v20;
        v25 = v20 + ((v24 + 32) & ~v24);
        v28 = *(v29 + 72);
        v29 = v22;
        v27 = (v23 - 8);
        do
        {
          (v29)(v10, v25, v7);
          swift_getAtKeyPath();
          (*v27)(v10, v7);
          sub_1D7D3153C();
          sub_1D7D3157C();
          sub_1D7D3158C();
          sub_1D7D3154C();
          v25 += v28;
          --v21;
        }

        while (v21);

        return v30;
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

void sub_1D7A70D64(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D7A70DCC(void **a1, void **a2)
{
  sub_1D798E9DC(0, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v57 - v16;
  v18 = sub_1D7D2833C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v57 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v57 - v29;
  v31 = *a1;
  v60 = *a2;
  v32 = [v31 lastReferenceDate];
  if (v32)
  {
    v33 = v32;
    sub_1D7D2830C();

    v34 = *(v19 + 32);
    v34(v17, v25, v18);
    v35 = *(v19 + 56);
    v35(v17, 0, 1, v18);
    v34(v30, v17, v18);
    v36 = v60;
  }

  else
  {
    v59 = v30;
    v35 = *(v19 + 56);
    v35(v17, 1, 1, v18);
    v37 = [v31 publishDate];
    if (v37)
    {
      v38 = v37;
      sub_1D7D2830C();

      v39 = *(v19 + 32);
      v39(v13, v25, v18);
      v35(v13, 0, 1, v18);
      v39(v59, v13, v18);
      v40 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v35(v13, 1, 1, v18);
      sub_1D7D2829C();
      v41 = *(v19 + 48);
      if (v41(v13, 1, v18) != 1)
      {
        sub_1D7A74640(v13, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
      }

      v40 = v41(v17, 1, v18);
    }

    v36 = v60;
    if (v40 != 1)
    {
      sub_1D7A74640(v17, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
    }

    v30 = v59;
  }

  v42 = [v36 lastReferenceDate];
  v43 = v62;
  if (v42)
  {
    v44 = v42;
    sub_1D7D2830C();

    v45 = *(v19 + 32);
    v45(v43, v25, v18);
    v35(v43, 0, 1, v18);
    v46 = v61;
    v45(v61, v43, v18);
  }

  else
  {
    v35(v62, 1, 1, v18);
    v47 = [v36 publishDate];
    if (v47)
    {
      v48 = v47;
      sub_1D7D2830C();

      v59 = v30;
      v49 = *(v19 + 32);
      v50 = v58;
      v49(v58, v25, v18);
      v35(v50, 0, 1, v18);
      v46 = v61;
      v49(v61, v50, v18);
      v30 = v59;
      v51 = (*(v19 + 48))(v43, 1, v18);
    }

    else
    {
      v52 = v58;
      v35(v58, 1, 1, v18);
      v46 = v61;
      sub_1D7D2829C();
      v53 = *(v19 + 48);
      if (v53(v52, 1, v18) != 1)
      {
        sub_1D7A74640(v52, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
      }

      v51 = v53(v43, 1, v18);
    }

    if (v51 != 1)
    {
      sub_1D7A74640(v43, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
    }
  }

  v54 = sub_1D7D282CC();
  v55 = *(v19 + 8);
  v55(v46, v18);
  v55(v30, v18);
  return v54 & 1;
}

uint64_t sub_1D7A71410(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7B57370(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D7A7148C(v6);
  return sub_1D7D3154C();
}

void sub_1D7A7148C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7992EFC(0, &qword_1EE0BECC0);
        v6 = sub_1D7D3070C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D7A71690(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7A715A0(0, v2, 1, a1);
  }
}

void sub_1D7A715A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1D7A70DCC(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1D7A71690(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v162 = a1;
  sub_1D798E9DC(0, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v177 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v157 - v21;
  v23 = sub_1D7D2833C();
  MEMORY[0x1EEE9AC00](v23, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v180 = &v157 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v33 = *(a3 + 8);
  v165 = a3;
  if (v33 >= 1)
  {
    v169 = v11;
    v159 = a4;
    v34 = 0;
    v179 = (v30 + 32);
    v178 = (v30 + 56);
    v171 = (v30 + 48);
    v172 = (v30 + 8);
    v35 = MEMORY[0x1E69E7CC0];
    v168 = v18;
    v170 = v22;
    v175 = &v157 - v31;
    v176 = v32;
    v36 = &v157 - v31;
    v161 = v23;
    while (1)
    {
      v37 = v34 + 1;
      v164 = v34;
      if ((v34 + 1) < v33)
      {
        v38 = v34;
        v39 = v33;
        v160 = v35;
        a4 = *a3;
        v40 = *(*a3 + 8 * v37);
        v184 = *(*a3 + 8 * v38);
        v41 = v184;
        v185[0] = v40;
        v42 = v40;
        v43 = v41;
        LODWORD(v183) = sub_1D7A70DCC(v185, &v184);
        if (v5)
        {

          return;
        }

        v11 = v38;

        v44 = v38 + 2;
        v45 = 8 * v38;
        v46 = (a4 + 8 * v38 + 16);
        while (v39 != v44)
        {
          v47 = *v46;
          v184 = *(v46 - 1);
          v48 = v184;
          v185[0] = v47;
          a4 = v47;
          v49 = v48;
          v11 = sub_1D7A70DCC(v185, &v184);

          ++v44;
          ++v46;
          if ((v183 ^ v11))
          {
            v50 = v44 - 1;
            goto LABEL_11;
          }
        }

        v50 = v39;
LABEL_11:
        v5 = 0;
        v35 = v160;
        v36 = v175;
        v23 = v161;
        if (v183)
        {
          v51 = v164;
          if (v50 < v164)
          {
            goto LABEL_144;
          }

          if (v164 < v50)
          {
            v52 = 8 * v50 - 8;
            v53 = v50;
            do
            {
              if (v51 != --v53)
              {
                v55 = *v165;
                if (!*v165)
                {
                  goto LABEL_148;
                }

                v54 = *(v55 + v45);
                *(v55 + v45) = *(v55 + v52);
                *(v55 + v52) = v54;
              }

              ++v51;
              v52 -= 8;
              v45 += 8;
            }

            while (v51 < v53);
          }
        }

        v37 = v50;
        a3 = v165;
      }

      v56 = *(a3 + 8);
      v167 = v37;
      if (v37 < v56)
      {
        v122 = __OFSUB__(v37, v164);
        v57 = v37 - v164;
        if (v122)
        {
          goto LABEL_140;
        }

        if (v57 < v159)
        {
          if (__OFADD__(v164, v159))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (v164 + v159 < v56)
          {
            v56 = v164 + v159;
          }

          if (v56 < v164)
          {
            goto LABEL_143;
          }

          if (v167 != v56)
          {
            v163 = v56;
            v160 = v35;
            v158 = v5;
            v173 = *a3;
            v58 = v173 + 8 * v167 - 8;
            v59 = v164 - v167;
            v60 = v167;
            v61 = v36;
            do
            {
              v174 = v59;
              v166 = v58;
              v167 = v60;
              v63 = *(v173 + 8 * v60);
              v64 = v59;
              while (1)
              {
                v181 = v64;
                v65 = *v58;
                v66 = v63;
                v67 = v65;
                v68 = [v66 lastReferenceDate];
                v182 = v66;
                v183 = v67;
                if (v68)
                {
                  v69 = v180;
                  v70 = v68;
                  sub_1D7D2830C();

                  v71 = *v179;
                  (*v179)(v22, v69, v23);
                  v72 = *v178;
                  (*v178)(v22, 0, 1, v23);
                  v71(v61, v22, v23);
                }

                else
                {
                  v72 = *v178;
                  (*v178)(v22, 1, 1, v23);
                  v73 = [v66 publishDate];
                  if (v73)
                  {
                    v74 = v23;
                    v75 = v180;
                    v76 = v73;
                    sub_1D7D2830C();

                    v77 = *v179;
                    v78 = v168;
                    v79 = v75;
                    v23 = v74;
                    v80 = v175;
                    (*v179)(v168, v79, v23);
                    v72(v78, 0, 1, v23);
                    v67 = v183;
                    v77(v80, v78, v23);
                    v81 = (*v171)(v22, 1, v23);
                  }

                  else
                  {
                    v82 = v168;
                    v72(v168, 1, 1, v23);
                    sub_1D7D2829C();
                    v83 = *v171;
                    if ((*v171)(v82, 1, v23) != 1)
                    {
                      sub_1D7A74640(v82, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
                    }

                    v22 = v170;
                    v81 = v83(v170, 1, v23);
                  }

                  if (v81 != 1)
                  {
                    sub_1D7A74640(v22, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
                  }
                }

                v84 = [v67 lastReferenceDate];
                if (v84)
                {
                  v85 = v180;
                  v86 = v84;
                  sub_1D7D2830C();

                  v87 = *v179;
                  v88 = v23;
                  v89 = v177;
                  (*v179)(v177, v85, v88);
                  v72(v89, 0, 1, v88);
                  v90 = v176;
                  v91 = v89;
                  v23 = v88;
                  v87(v176, v91, v88);
                }

                else
                {
                  v72(v177, 1, 1, v23);
                  v92 = [v67 publishDate];
                  v93 = v171;
                  v94 = v23;
                  if (v92)
                  {
                    v95 = v180;
                    v96 = v92;
                    sub_1D7D2830C();

                    v97 = *v179;
                    v98 = v169;
                    (*v179)(v169, v95, v94);
                    v72(v98, 0, 1, v94);
                    v97(v176, v98, v94);
                    v99 = (*v93)(v177, 1, v94);
                  }

                  else
                  {
                    v100 = v169;
                    v72(v169, 1, 1, v23);
                    sub_1D7D2829C();
                    v101 = *v93;
                    if ((*v93)(v100, 1, v23) != 1)
                    {
                      sub_1D7A74640(v100, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
                    }

                    v99 = v101(v177, 1, v23);
                  }

                  v22 = v170;
                  v90 = v176;
                  v23 = v94;
                  if (v99 != 1)
                  {
                    sub_1D7A74640(v177, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
                  }
                }

                v61 = v175;
                v11 = sub_1D7D282CC();
                a4 = v172;
                v102 = *v172;
                (*v172)(v90, v23);
                v102(v61, v23);

                if ((v11 & 1) == 0)
                {
                  break;
                }

                v103 = v181;
                if (!v173)
                {
                  goto LABEL_145;
                }

                v104 = *v58;
                v63 = *(v58 + 8);
                *v58 = v63;
                *(v58 + 8) = v104;
                v58 -= 8;
                v105 = __CFADD__(v103, 1);
                v64 = v103 + 1;
                v62 = v174;
                if (v105)
                {
                  goto LABEL_31;
                }
              }

              v62 = v174;
LABEL_31:
              v60 = v167 + 1;
              v58 = v166 + 8;
              v59 = v62 - 1;
            }

            while (v167 + 1 != v163);
            v167 = v163;
            v5 = v158;
            a3 = v165;
            v35 = v160;
          }
        }
      }

      if (v167 < v164)
      {
        goto LABEL_139;
      }

      v106 = v35;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = v106;
      }

      else
      {
        v35 = sub_1D79E4688(0, *(v106 + 2) + 1, 1, v106);
      }

      v11 = *(v35 + 2);
      v107 = *(v35 + 3);
      a4 = v11 + 1;
      if (v11 >= v107 >> 1)
      {
        v35 = sub_1D79E4688((v107 > 1), v11 + 1, 1, v35);
      }

      *(v35 + 2) = a4;
      v108 = &v35[16 * v11];
      v109 = v167;
      *(v108 + 4) = v164;
      *(v108 + 5) = v109;
      if (!*v162)
      {
        goto LABEL_149;
      }

      if (v11)
      {
        v110 = *v162;
        while (1)
        {
          v111 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v112 = *(v35 + 4);
            v113 = *(v35 + 5);
            v122 = __OFSUB__(v113, v112);
            v114 = v113 - v112;
            v115 = v122;
LABEL_78:
            if (v115)
            {
              goto LABEL_128;
            }

            v128 = &v35[16 * a4];
            v130 = *v128;
            v129 = *(v128 + 1);
            v131 = __OFSUB__(v129, v130);
            v132 = v129 - v130;
            v133 = v131;
            if (v131)
            {
              goto LABEL_131;
            }

            v134 = &v35[16 * v111 + 32];
            v136 = *v134;
            v135 = *(v134 + 1);
            v122 = __OFSUB__(v135, v136);
            v137 = v135 - v136;
            if (v122)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v132, v137))
            {
              goto LABEL_135;
            }

            if (v132 + v137 >= v114)
            {
              if (v114 < v137)
              {
                v111 = a4 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v138 = &v35[16 * a4];
          v140 = *v138;
          v139 = *(v138 + 1);
          v122 = __OFSUB__(v139, v140);
          v132 = v139 - v140;
          v133 = v122;
LABEL_92:
          if (v133)
          {
            goto LABEL_130;
          }

          v141 = &v35[16 * v111];
          v143 = *(v141 + 4);
          v142 = *(v141 + 5);
          v122 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v122)
          {
            goto LABEL_133;
          }

          if (v144 < v132)
          {
            goto LABEL_3;
          }

LABEL_99:
          v11 = v111 - 1;
          if (v111 - 1 >= a4)
          {
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
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            v152 = sub_1D7B50220(v11);
            goto LABEL_113;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v149 = v35;
          a4 = *&v35[16 * v11 + 32];
          v150 = *&v35[16 * v111 + 40];
          sub_1D7A72418((*a3 + 8 * a4), (*a3 + 8 * *&v35[16 * v111 + 32]), (*a3 + 8 * v150), v110);
          if (v5)
          {
            goto LABEL_121;
          }

          if (v150 < a4)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = sub_1D7B50220(v149);
          }

          if (v11 >= *(v149 + 2))
          {
            goto LABEL_125;
          }

          v151 = &v149[16 * v11];
          *(v151 + 4) = a4;
          *(v151 + 5) = v150;
          v186 = v149;
          v11 = &v186;
          sub_1D7B50194(v111);
          v35 = v186;
          a4 = *(v186 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v116 = &v35[16 * a4 + 32];
        v117 = *(v116 - 64);
        v118 = *(v116 - 56);
        v122 = __OFSUB__(v118, v117);
        v119 = v118 - v117;
        if (v122)
        {
          goto LABEL_126;
        }

        v121 = *(v116 - 48);
        v120 = *(v116 - 40);
        v122 = __OFSUB__(v120, v121);
        v114 = v120 - v121;
        v115 = v122;
        if (v122)
        {
          goto LABEL_127;
        }

        v123 = &v35[16 * a4];
        v125 = *v123;
        v124 = *(v123 + 1);
        v122 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v122)
        {
          goto LABEL_129;
        }

        v122 = __OFADD__(v114, v126);
        v127 = v114 + v126;
        if (v122)
        {
          goto LABEL_132;
        }

        if (v127 >= v119)
        {
          v145 = &v35[16 * v111 + 32];
          v147 = *v145;
          v146 = *(v145 + 1);
          v122 = __OFSUB__(v146, v147);
          v148 = v146 - v147;
          if (v122)
          {
            goto LABEL_138;
          }

          if (v114 < v148)
          {
            v111 = a4 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v33 = *(a3 + 8);
      v34 = v167;
      v36 = v175;
      v23 = v161;
      if (v167 >= v33)
      {
        goto LABEL_110;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_110:
  a4 = *v162;
  if (*v162)
  {
    v11 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v152 = v11;
LABEL_113:
    v186 = v152;
    v11 = *(v152 + 2);
    if (v11 < 2)
    {
LABEL_121:

      return;
    }

    while (1)
    {
      v153 = *a3;
      if (!*a3)
      {
        break;
      }

      a3 = *&v152[16 * v11];
      v154 = v152;
      v155 = *&v152[16 * v11 + 24];
      sub_1D7A72418((v153 + 8 * a3), (v153 + 8 * *&v152[16 * v11 + 16]), (v153 + 8 * v155), a4);
      if (v5)
      {
        goto LABEL_121;
      }

      if (v155 < a3)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_1D7B50220(v154);
      }

      if (v11 - 2 >= *(v154 + 2))
      {
        goto LABEL_137;
      }

      v156 = &v154[16 * v11];
      *v156 = a3;
      *(v156 + 1) = v155;
      v186 = v154;
      sub_1D7B50194(v11 - 1);
      v152 = v186;
      v11 = *(v186 + 2);
      a3 = v165;
      if (v11 <= 1)
      {
        goto LABEL_121;
      }
    }

LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7A72418(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1D7A70DCC(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1D7A70DCC(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

unint64_t sub_1D7A727B4(void *a1)
{
  sub_1D7D2864C();
  sub_1D7D2863C();
  if (qword_1EC9DFEB8 != -1)
  {
    swift_once();
  }

  sub_1D7D2862C();

  v2 = [a1 articles];
  sub_1D798C3BC(0, &qword_1EE0CBA60);
  v3 = sub_1D7D3063C();

  if ((v19 & 1) == 0)
  {
    if (v3 >> 62)
    {
      v4 = sub_1D7D3167C();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 < 2)
    {
      if (qword_1EC9DFDA0 != -1)
      {
        swift_once();
      }

      v6 = sub_1D7D29AFC();
      __swift_project_value_buffer(v6, qword_1ECA0BB60);
      v7 = a1;
      v8 = sub_1D7D29ADC();
      v9 = sub_1D7D30C6C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18 = v11;
        *v10 = 136446210;
        v12 = [v7 identifier];
        v13 = sub_1D7D3034C();
        v15 = v14;

        v16 = sub_1D7B06D4C(v13, v15, &v18);

        *(v10 + 4) = v16;
        _os_log_impl(&dword_1D7987000, v8, v9, "Filtering out article section for recipe=%{public}s in EndOfRecipe feed; reason='one or less articles featuring recipe'", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1DA7102E0](v11, -1, -1);
        MEMORY[0x1DA7102E0](v10, -1, -1);
      }

      return 0;
    }

    else
    {
      v5 = [a1 articles];
      v3 = sub_1D7D3063C();
    }
  }

  return v3;
}

uint64_t sub_1D7A72A60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D7A4E814;

  return sub_1D7A6DEF4(a1);
}

uint64_t sub_1D7A72AFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D7A4E2D8;

  return sub_1D7A6E540(a1, v5, v4);
}

uint64_t sub_1D7A72BA8(uint64_t a1)
{
  sub_1D7A745D8(0, &unk_1EC9E30D0, &qword_1EE0BEC90, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A72C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A72C98()
{
  if (!qword_1EC9E30E8)
  {
    sub_1D79F3B50(255, &qword_1EC9E30E0, &type metadata for RecipeRecirculationSection, MEMORY[0x1E69E6720]);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E30E8);
    }
  }
}

uint64_t sub_1D7A72D14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D7A4E814;

  return sub_1D7A6EC94(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D7A72DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of RecipeRecirculationServiceType.fetchRecirculationRecipes(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7A4E814;

  return v11(a1, a2, a3, a4);
}

void sub_1D7A72FC0()
{
  if (!qword_1EC9E30F0)
  {
    sub_1D7A73054();
    sub_1D7A74760(&qword_1EC9E3110, sub_1D7A73054);
    v0 = sub_1D7D2F56C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E30F0);
    }
  }
}

void sub_1D7A73054()
{
  if (!qword_1EC9E30F8)
  {
    sub_1D7A730BC();
    sub_1D7A73110();
    v0 = sub_1D7D2FEEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E30F8);
    }
  }
}

unint64_t sub_1D7A730BC()
{
  result = qword_1EC9E3100;
  if (!qword_1EC9E3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3100);
  }

  return result;
}

unint64_t sub_1D7A73110()
{
  result = qword_1EC9E3108;
  if (!qword_1EC9E3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3108);
  }

  return result;
}

void sub_1D7A73164()
{
  if (!qword_1EC9E3118)
  {
    sub_1D7A73208();
    sub_1D7A7325C();
    v0 = sub_1D7D2914C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3118);
    }
  }
}

unint64_t sub_1D7A73208()
{
  result = qword_1EC9E3120;
  if (!qword_1EC9E3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3120);
  }

  return result;
}

unint64_t sub_1D7A7325C()
{
  result = qword_1EC9E3128;
  if (!qword_1EC9E3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3128);
  }

  return result;
}

uint64_t sub_1D7A732B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeRecirculationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A73314(uint64_t a1)
{
  type metadata accessor for RecipeRecirculationData();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D7A4E814;

  return sub_1D7A6F404(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D7A7343C()
{
  if (!qword_1EC9E3130)
  {
    sub_1D79F3B50(255, &qword_1EC9E30E0, &type metadata for RecipeRecirculationSection, MEMORY[0x1E69E6720]);
    sub_1D79AC5C4();
    v0 = sub_1D7D3090C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3130);
    }
  }
}

uint64_t sub_1D7A734D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a2 + 32;
    v17 = a2 + 32;
    v18 = *(a2 + 16);
    while (1)
    {
      v5 = (v4 + 32 * v3);
      v6 = *v5;
      v7 = *(*v5 + 16);
      if (v7)
      {
        break;
      }

LABEL_4:
      if (++v3 == v2)
      {
        return 0;
      }
    }

    swift_bridgeObjectRetain_n();

    v9 = 0;
    v10 = 0;
    v11 = (v6 + 40);
    v12 = v7 - 1;
    while ((v10 & 1) == 0)
    {
      v14 = *(v11 - 1);
      v13 = *v11;
      sub_1D7A73164();

      if (*(sub_1D7D2913C() + 16))
      {
        sub_1D7A18FFC(v14, v13);
        v16 = v15;

        if (v16)
        {
          break;
        }
      }

      else
      {
      }

      if (v12 == v9)
      {

        swift_bridgeObjectRelease_n();
        v4 = v17;
        v2 = v18;
        goto LABEL_4;
      }

      v10 = 0;
LABEL_7:
      ++v9;
      v11 += 2;
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }
    }

    if (v12 == v9)
    {

      return v6;
    }

    v10 = 1;
    goto LABEL_7;
  }

  return 0;
}