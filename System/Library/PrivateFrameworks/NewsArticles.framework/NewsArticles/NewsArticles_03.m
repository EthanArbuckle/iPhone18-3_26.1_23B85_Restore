uint64_t sub_1D79E3B74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1D79E3BD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BAEB0, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E3D14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E1AB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
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

char *sub_1D79E3E30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &unk_1EE0BAEA0, &type metadata for ANFIssuePage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E3FCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E1A18, &type metadata for SubConcernModel, MEMORY[0x1E69E6F90]);
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

void *sub_1D79E4104(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D79E57FC(0, &qword_1EE0BE880, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
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
    sub_1D79A8148(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D79E42D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D79E57FC(0, &qword_1EC9E19C0, &qword_1EC9E19C8, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E6720]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D79A8148(0, &qword_1EC9E19C8, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E4564(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E1A98, &type metadata for RecipeRecirculationSection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E4688(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79E495C(0, &unk_1EE0BE840, sub_1D79E6C90, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1D79E47CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798C468(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1D79E4838(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &unk_1EC9E19B0, &type metadata for BottomPaletteArticleViewerFeatureComponentViewModel, MEMORY[0x1E69E6F90]);
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

void sub_1D79E495C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D79E4A28(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D79E7094();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D79E47CC(0, &unk_1EE0BB2A0, &qword_1EE0BB2B0, MEMORY[0x1E69D7CA0], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E4BB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D79E4D1C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D79E495C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D79E6E78();
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D79E4EC0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1D79E47CC(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D798C468(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D79E502C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BE9E0, &type metadata for ArticleViewerFeatureTransition, MEMORY[0x1E69E6F90]);
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

char *sub_1D79E5160(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BEA20, &_s4RuleVN, MEMORY[0x1E69E6F90]);
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

char *sub_1D79E529C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &unk_1EE0BE9C8, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E53DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BEA18, &type metadata for ArticleRecirculationConfig, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 1104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[1104 * v8])
    {
      memmove(v12, v13, 1104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D79E551C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D79E495C(0, &qword_1EE0BE850, sub_1D79E6DC8, MEMORY[0x1E69E6F90]);
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
    sub_1D79E6DC8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D79E56B8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1D79E6CE8(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D798C468(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1D79E57FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1D79A8148(255, a3, a4, a5);
    v6 = sub_1D7D3191C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

char *sub_1D79E5874(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &unk_1EE0BAE80, &type metadata for AnimationData, MEMORY[0x1E69E6F90]);
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

char *sub_1D79E5998(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79E495C(0, &unk_1EE0BAE08, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D79E5AC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E1A68, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
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

char *sub_1D79E5C10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BEA28, &_s12FilterOptionON, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1D79E5D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BEAB0, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D79E5E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EC9E1A38, &type metadata for TableOfContentsPDFCellViewModel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D79E5FB4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D79E495C(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D79E61A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7D3167C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7D3167C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D79E6BB0(0, &qword_1EE0BF1F0, &qword_1EE0BF050, 0x1E69DC708, sub_1D7992EFC);
          sub_1D79E6C0C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D7A67234(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D7992EFC(0, &qword_1EE0BF050);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79E6350(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7D3167C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7D3167C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D79E6BB0(0, &qword_1EE0BF200, &qword_1EE0BF070, &protocolRef_FCTagProviding, sub_1D798C3BC);
          sub_1D79E7010();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D7A67608(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D798C3BC(0, &qword_1EE0BF070);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79E64F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7D3167C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7D3167C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D79E6BB0(0, &qword_1EE0BB0B0, &qword_1EE0BECC0, 0x1E69B5578, sub_1D7992EFC);
          sub_1D79E6F8C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D7A67588(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D7992EFC(0, &qword_1EE0BECC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79E66A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7D3167C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7D3167C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D79E495C(0, &qword_1EE0BF3B0, type metadata accessor for EndOfArticleHeadlineModel, MEMORY[0x1E69E62F8]);
          sub_1D79E6EC8(&qword_1EC9E1A00, &qword_1EE0BF3B0, type metadata accessor for EndOfArticleHeadlineModel);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D7A67690(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EndOfArticleHeadlineModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79E6854(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7D3167C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7D3167C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D79E6BB0(0, &unk_1EE0BF1D0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding, sub_1D798C3BC);
          sub_1D79E6D44();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D7A67508(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D798C3BC(0, &qword_1EE0CBA60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79E69FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1D7D3167C();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7D3167C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x1E69D7680];
          sub_1D79E495C(0, &qword_1EC9E1A70, MEMORY[0x1E69D7680], MEMORY[0x1E69E62F8]);
          sub_1D79E6EC8(&qword_1EC9E1A78, &qword_1EC9E1A70, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_1D7A67718(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D7D29EBC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D79E6BB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D7D307BC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D79E6C0C()
{
  result = qword_1EC9E19D0;
  if (!qword_1EC9E19D0)
  {
    sub_1D79E6BB0(255, &qword_1EE0BF1F0, &qword_1EE0BF050, 0x1E69DC708, sub_1D7992EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E19D0);
  }

  return result;
}

void sub_1D79E6C90()
{
  if (!qword_1EE0BF180)
  {
    v0 = sub_1D7D30ACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF180);
    }
  }
}

void sub_1D79E6CE8(uint64_t a1, unint64_t *a2, unint64_t *a3)
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

unint64_t sub_1D79E6D44()
{
  result = qword_1EC9E1A10;
  if (!qword_1EC9E1A10)
  {
    sub_1D79E6BB0(255, &unk_1EE0BF1D0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding, sub_1D798C3BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1A10);
  }

  return result;
}

unint64_t sub_1D79E6E78()
{
  result = qword_1EE0BE790;
  if (!qword_1EE0BE790)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE0BE790);
  }

  return result;
}

uint64_t sub_1D79E6EC8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D79E495C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D79E6F2C()
{
  result = qword_1EE0BE7A8;
  if (!qword_1EE0BE7A8)
  {
    sub_1D7D2824C();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EE0BE7A8);
  }

  return result;
}

unint64_t sub_1D79E6F8C()
{
  result = qword_1EC9E1AA0;
  if (!qword_1EC9E1AA0)
  {
    sub_1D79E6BB0(255, &qword_1EE0BB0B0, &qword_1EE0BECC0, 0x1E69B5578, sub_1D7992EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1AA0);
  }

  return result;
}

unint64_t sub_1D79E7010()
{
  result = qword_1EC9E1AA8;
  if (!qword_1EC9E1AA8)
  {
    sub_1D79E6BB0(255, &qword_1EE0BF200, &qword_1EE0BF070, &protocolRef_FCTagProviding, sub_1D798C3BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1AA8);
  }

  return result;
}

void sub_1D79E7094()
{
  if (!qword_1EE0BAE40)
  {
    sub_1D79E47CC(255, &unk_1EE0BB2A0, &qword_1EE0BB2B0, MEMORY[0x1E69D7CA0], MEMORY[0x1E69E6720]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAE40);
    }
  }
}

uint64_t sub_1D79E7194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ArticleEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D79E732C()
{
  v0 = sub_1D7D2918C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1;
  sub_1D79E7550(0, &qword_1EE0BE960, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2917C();
  sub_1D7D2916C();
  v7 = v5;
  sub_1D79E74F8();
  sub_1D79E7550(0, &unk_1EE0BF2C0, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  sub_1D7D28C8C();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1D79E74F8()
{
  result = qword_1EE0C0380;
  if (!qword_1EE0C0380)
  {
    sub_1D7D2918C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0380);
  }

  return result;
}

void sub_1D79E7550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2918C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D79E75B0()
{
  v0 = sub_1D7D2918C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B229E8(&unk_1F529A290);
  sub_1D79E7550(0, &qword_1EE0BE960, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3C680;
  sub_1D7D2917C();
  sub_1D7D2916C();
  sub_1D7D2915C();
  v7[1] = v5;
  sub_1D79E74F8();
  sub_1D79E7550(0, &unk_1EE0BF2C0, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  sub_1D7D28C7C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t MoreFromIssueEndOfArticleFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MoreFromIssueEndOfArticleFeedGroup.formatGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreFromIssueEndOfArticleFeedGroup() + 20);
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MoreFromIssueEndOfArticleFeedGroup()
{
  result = qword_1EE0C2400;
  if (!qword_1EE0C2400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreFromIssueEndOfArticleFeedGroup.tag.getter()
{
  type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();

  return swift_unknownObjectRetain();
}

uint64_t MoreFromIssueEndOfArticleFeedGroup.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreFromIssueEndOfArticleFeedGroup() + 28);
  v4 = sub_1D7D2EA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static MoreFromIssueEndOfArticleFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t sub_1D79E7AEC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t sub_1D79E7B1C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D79E7B4C(uint64_t a1)
{
  v2 = sub_1D79E7E38(&unk_1EC9E1B10);

  return MEMORY[0x1EEE21E00](a1, v2);
}

void sub_1D79E7CD0()
{
  sub_1D7D2DE2C();
  if (v0 <= 0x3F)
  {
    sub_1D79E7D7C();
    if (v1 <= 0x3F)
    {
      sub_1D7D2EA6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D79E7D7C()
{
  if (!qword_1EE0BEFD0)
  {
    sub_1D79E7DD4();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEFD0);
    }
  }
}

unint64_t sub_1D79E7DD4()
{
  result = qword_1EE0BEFD8;
  if (!qword_1EE0BEFD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEFD8);
  }

  return result;
}

uint64_t sub_1D79E7E38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WeakZoomable.__allocating_init(_:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

id WeakZoomable.init(_:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

id WeakZoomable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeakZoomable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D79E815C(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong *a1];
  swift_unknownObjectRelease();
  return v3;
}

id sub_1D79E81C0(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [result *a3];
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

void *sub_1D79E827C(SEL *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D79E8338(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for ProxyAuthenticationKeyManager()
{
  result = qword_1EE0C4648;
  if (!qword_1EE0C4648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D79E84C8()
{
  sub_1D79EA464(319, qword_1EE0C71D8, type metadata accessor for ProxyAuthenticationKey, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D79E85AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = sub_1D7D2836C();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D7D2833C();
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79EA464(0, qword_1EE0C71D8, type metadata accessor for ProxyAuthenticationKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for ProxyAuthenticationKey();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28B0C();
  v23 = OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_key;
  swift_beginAccess();
  sub_1D79E8DEC(v2 + v23, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D79EA218(v17, qword_1EE0C71D8, type metadata accessor for ProxyAuthenticationKey);
  }

  else
  {
    sub_1D79E8EE0(v17, v22);
    sub_1D7D2832C();
    v24 = sub_1D7D282DC();
    (*(v7 + 8))(v10, v44);
    if (v24)
    {
      v25 = v41;
      sub_1D7D2835C();
      v26 = sub_1D7D2834C();
      v28 = v27;
      (*(v42 + 8))(v25, v43);
      sub_1D79E8F44(v22);
      v29 = (v3 + OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_session);
      *v29 = v26;
      v29[1] = v28;

      v30 = v40;
      (*(v19 + 56))(v40, 1, 1, v18);
      swift_beginAccess();
      sub_1D79E8FA0(v30, v3 + v23);
      swift_endAccess();
    }

    else
    {
      sub_1D79E8F44(v22);
    }
  }

  v31 = sub_1D7D28B1C();
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v39 - 2) = v3;
  sub_1D7D294BC();
  v33 = swift_allocObject();
  v35 = v45;
  v34 = v46;
  *(v33 + 16) = v45;
  *(v33 + 24) = v34;

  v36 = sub_1D7D2934C();
  sub_1D7D293AC();

  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v34;

  v38 = sub_1D7D2934C();
  sub_1D7D293DC();
}

uint64_t sub_1D79E8A9C()
{

  v0 = sub_1D7D28E0C();

  return v0;
}

uint64_t sub_1D79E8B2C(void *a1, uint64_t (*a2)(void, void, void, void))
{
  if (qword_1EC9DFD70 != -1)
  {
    swift_once();
  }

  v4 = sub_1D7D29AFC();
  __swift_project_value_buffer(v4, qword_1ECA0BAE8);
  v5 = a1;
  v6 = sub_1D7D29ADC();
  v7 = sub_1D7D30C4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    sub_1D79AC5C4();
    v11 = sub_1D7D303AC();
    v13 = sub_1D7B06D4C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D7987000, v6, v7, "An error occurred while fetching proxy authentication keys: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA7102E0](v9, -1, -1);
    MEMORY[0x1DA7102E0](v8, -1, -1);
  }

  return a2(0, 0, 0, 0);
}

void sub_1D79E8D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_1D7D3031C();
    if (a4)
    {
LABEL_3:
      v8 = sub_1D7D3031C();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

uint64_t sub_1D79E8DEC(uint64_t a1, uint64_t a2)
{
  sub_1D79EA464(0, qword_1EE0C71D8, type metadata accessor for ProxyAuthenticationKey, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79E8EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProxyAuthenticationKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79E8F44(uint64_t a1)
{
  v2 = type metadata accessor for ProxyAuthenticationKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79E8FA0(uint64_t a1, uint64_t a2)
{
  sub_1D79EA464(0, qword_1EE0C71D8, type metadata accessor for ProxyAuthenticationKey, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79E9034()
{
  swift_getObjectType();
  sub_1D79EA158();
  sub_1D7D294BC();
  v0 = sub_1D7D2934C();
  type metadata accessor for ProxyAuthenticationKey();
  v1 = sub_1D7D293BC();

  return v1;
}

uint64_t sub_1D79E90F0()
{
  sub_1D79EA464(0, &qword_1EE0BB3C8, sub_1D79EA158, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D79E9184()
{
  sub_1D79EA464(0, &qword_1EE0BB3F0, type metadata accessor for ProxyAuthenticationKey, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D79E921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_configurationManager);
  v12 = swift_allocObject();
  v12[2] = sub_1D79EA4C8;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v14[4] = sub_1D79EA500;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D79E9424;
  v14[3] = &block_descriptor_20;
  v13 = _Block_copy(v14);

  [v11 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_1D79E9354(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a3(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v8 = a2;
      v9 = a2;
      v10 = v8;
    }

    else
    {
      sub_1D79EA1C4();
      v10 = swift_allocError();
      v8 = v10;
      *v11 = 0;
      *(v11 + 8) = 2;
    }

    a5(v10);
  }
}

uint64_t sub_1D79E9424(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1D79E94A4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, char *a6)
{
  v63 = a6;
  v59 = a1;
  v60 = a2;
  v9 = MEMORY[0x1E69E6720];
  sub_1D79EA464(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v56 - v12;
  sub_1D79EA464(0, &qword_1EE0BDEC0, MEMORY[0x1E69681B8], v9);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v56 - v16;
  v18 = sub_1D7D280DC();
  v64 = *(v18 - 8);
  v65 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7D2824C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v62 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v56 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v56 - v32;
  v34 = [objc_opt_self() CAPIBaseURLForConfiguration_];
  if (v34)
  {
    v61 = a4;
    v35 = v34;
    sub_1D7D281EC();

    v36 = *(v23 + 32);
    (v36)(v33, v29, v22);
    sub_1D7D2807C();
    if ((*(v64 + 48))(v17, 1, v65) == 1)
    {
      sub_1D79EA218(v17, &qword_1EE0BDEC0, MEMORY[0x1E69681B8]);
      sub_1D79EA1C4();
      v37 = swift_allocError();
      *v38 = 1;
      *(v38 + 8) = 2;
      a3();
LABEL_9:
      (*(v23 + 8))(v33, v22);

      return;
    }

    (*(v64 + 32))(v21, v17, v65);
    MEMORY[0x1DA705B10](0x6B2F6465626D652FLL, 0xEA00000000007965);
    sub_1D7D2808C();
    if ((*(v23 + 48))(v13, 1, v22) == 1)
    {
      sub_1D79EA218(v13, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
      sub_1D79EA1C4();
      v37 = swift_allocError();
      *v41 = 1;
      *(v41 + 8) = 2;
      a3();
      (*(v64 + 8))(v21, v65);
      goto LABEL_9;
    }

    v36();
    v42 = v63;
    v58 = *&v63[OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_endpointConnection];
    v57 = sub_1D7D281BC();
    v43 = *MEMORY[0x1E69B56A0];
    v56 = *MEMORY[0x1E69B5680];
    v44 = *MEMORY[0x1E696A9C8];
    v45 = swift_allocObject();
    v46 = v61;
    v45[2] = a3;
    v45[3] = v46;
    v47 = v59;
    v48 = v60;
    v45[4] = v42;
    v45[5] = v47;
    v45[6] = v48;
    aBlock[4] = sub_1D79EA288;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79EA06C;
    aBlock[3] = &block_descriptor_0;
    v49 = _Block_copy(aBlock);
    v50 = v43;
    v51 = v56;

    v52 = v63;

    v53 = v57;
    LODWORD(v54) = v44;
    [v58 performHTTPRequestWithURL:v57 method:v50 data:0 contentType:v51 priority:1 requiresMescalSigning:0 callbackQueue:v54 completion:v49];
    _Block_release(v49);

    v55 = *(v23 + 8);
    v55(v62, v22);
    (*(v64 + 8))(v21, v65);
    v55(v33, v22);
  }

  else
  {
    sub_1D79EA1C4();
    v39 = swift_allocError();
    *v40 = 1;
    *(v40 + 8) = 2;
    a3();
  }
}

void sub_1D79E9B2C(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void), void (*a6)(char *, void, uint64_t, uint64_t), uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v54 = a8;
  sub_1D79EA464(0, qword_1EE0C71D8, type metadata accessor for ProxyAuthenticationKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v47 - v22;
  v24 = type metadata accessor for ProxyAuthenticationKey();
  MEMORY[0x1EEE9AC00](v24, v25);
  if (a4)
  {
    sub_1D79EA1C4();
    v29 = swift_allocError();
    *v30 = a4;
    *(v30 + 8) = 1;
    v31 = a4;
    v32 = a4;
    (a5)(v29);

    v33 = a4;
LABEL_5:

    return;
  }

  v51 = v19;
  v52 = a9;
  v34 = v54;
  v53 = a6;
  if (a2 >> 60 == 15)
  {
    sub_1D79EA1C4();
    v35 = swift_allocError();
    *v36 = 2;
    *(v36 + 8) = 2;
    a5();
    v33 = v35;
    goto LABEL_5;
  }

  if (a3)
  {
    v49 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v28;
    v37 = v26;
    sub_1D79EA38C(a1, a2);
    v38 = a3;
    if ([v38 statusCode] == 200)
    {
      sub_1D7D27F5C();
      swift_allocObject();
      sub_1D7D27F4C();
      sub_1D79EA3A0();
      v48 = a1;
      sub_1D7D27F3C();

      v53 = *(v50 + 56);
      v53(v23, 0, 1, v37);
      v44 = v49;
      sub_1D79E8EE0(v23, v49);
      sub_1D7D28B0C();
      v45 = v51;
      sub_1D79EA3F8(v44, v51);
      v53(v45, 0, 1, v37);
      v46 = OBJC_IVAR____TtC12NewsArticles29ProxyAuthenticationKeyManager_key;
      swift_beginAccess();
      sub_1D79E8FA0(v45, a7 + v46);
      swift_endAccess();
      sub_1D7D28B1C();
      v34(v44);
      sub_1D79EA2D0(v48, a2);

      sub_1D79E8F44(v44);
      return;
    }

    v41 = [v38 statusCode];
    sub_1D79EA1C4();
    v42 = swift_allocError();
    *v43 = v41;
    *(v43 + 8) = 0;
    a5();
  }

  else
  {
    sub_1D79EA1C4();
    v39 = swift_allocError();
    *v40 = 3;
    *(v40 + 8) = 2;
    sub_1D79EA338(a1, a2);
    (a5)(v39);
  }

  sub_1D79EA2D0(a1, a2);
}

uint64_t sub_1D79EA06C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D7D2827C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D79EA2D0(v6, v10);
}

unint64_t sub_1D79EA158()
{
  result = qword_1EE0BAFA8;
  if (!qword_1EE0BAFA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BAFA8);
  }

  return result;
}

unint64_t sub_1D79EA1C4()
{
  result = qword_1EC9E1BB8;
  if (!qword_1EC9E1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1BB8);
  }

  return result;
}

uint64_t sub_1D79EA218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D79EA464(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D79EA2D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D79EA2E4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D79EA2E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D79EA338(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D79EA38C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D79EA338(a1, a2);
  }

  return a1;
}

unint64_t sub_1D79EA3A0()
{
  result = qword_1EE0BD360;
  if (!qword_1EE0BD360)
  {
    type metadata accessor for ProxyAuthenticationKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BD360);
  }

  return result;
}

uint64_t sub_1D79EA3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProxyAuthenticationKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D79EA464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D79EA4C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles29ProxyAuthenticationKeyManagerC6Errors33_575492171AA326AD26415D0F29E3E0C8LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for EndOfArticleQuotaSatisfierFactory.AppConfigQuotaSatisfier.Validation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for EndOfArticleQuotaSatisfierFactory.AppConfigQuotaSatisfier.Validation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D79EA5B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1D79EA5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1D7994DC8();

  sub_1D7D294BC();
  v9 = sub_1D7D2934C();
  sub_1D79EAEB0();
  sub_1D7D293BC();

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D79EA4C8;
  *(v10 + 24) = v8;
  v11 = sub_1D7D2934C();
  sub_1D7D293CC();

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  v13 = sub_1D7D2934C();
  sub_1D7D293DC();
}

void *sub_1D79EA824(void **a1, void *a2)
{
  sub_1D79EAFE8(0, &qword_1EE0C04E0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = (v23 - v7);
  v9 = *a1;
  if (([v9 respondsToSelector_] & 1) != 0 && (v10 = objc_msgSend(v9, sel_userConcernConfigurationResourceId)) != 0)
  {
    v11 = v10;
    v12 = sub_1D7D3034C();
    v14 = v13;

    if (qword_1EC9DFD58 != -1)
    {
      swift_once();
    }

    sub_1D79EAFE8(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7D3B4D0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D79D6AE0();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;

    sub_1D7D30C6C();
    sub_1D7D29AAC();

    v16 = a2[7];
    v23[1] = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v16);
    sub_1D7D3095C();
    *v8 = v17;
    v18 = *MEMORY[0x1E69D63E0];
    v19 = sub_1D7D28B8C();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v8, v18, v19);
    (*(v20 + 56))(v8, 0, 1, v19);
    a2 = sub_1D7D2F65C();

    sub_1D79EB04C(v8);
  }

  else
  {
    sub_1D79EAF40();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1D79EAB28(id *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_1D7D2824C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v24 - v14;
  v16 = [*a1 fileURL];
  if (v16)
  {
    v17 = v16;
    sub_1D7D281EC();

    (*(v7 + 32))(v15, v10, v6);
    v18 = sub_1D7D2825C();
    if (!v3)
    {
      v22 = v18;
      v23 = v19;
      sub_1D79EAF94();
      sub_1D7D28A7C();
      v24[1] = v24[3];
      a3();
      sub_1D79EA2E4(v22, v23);
    }

    return (*(v7 + 8))(v15, v6);
  }

  else
  {
    sub_1D79EAF40();
    swift_allocError();
    *v21 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1D79EAD5C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79EADC8()
{
  sub_1D79EAE24();
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D79EAE24()
{
  if (!qword_1EC9E1BC0)
  {
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1BC0);
    }
  }
}

unint64_t sub_1D79EAEB0()
{
  result = qword_1EE0BF170;
  if (!qword_1EE0BF170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF170);
  }

  return result;
}

unint64_t sub_1D79EAF40()
{
  result = qword_1EC9E1BC8;
  if (!qword_1EC9E1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1BC8);
  }

  return result;
}

unint64_t sub_1D79EAF94()
{
  result = qword_1EC9E1BD0;
  if (!qword_1EC9E1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1BD0);
  }

  return result;
}

void sub_1D79EAFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D79EB04C(uint64_t a1)
{
  sub_1D79EAFE8(0, &qword_1EE0C04E0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D79EB0EC()
{
  result = qword_1EC9E1BD8;
  if (!qword_1EC9E1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1BD8);
  }

  return result;
}

id sub_1D79EB140(void *a1)
{
  v3 = *(*v1 + 16);
  sub_1D79EB1FC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3C670;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69B5358]);
  sub_1D79EB250();
  v6 = a1;
  v7 = sub_1D7D3062C();

  v8 = [v5 initWithContext:v3 issues:v7];

  return v8;
}

void sub_1D79EB1FC()
{
  if (!qword_1EE0BE7F0)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE7F0);
    }
  }
}

unint64_t sub_1D79EB250()
{
  result = qword_1EE0BED00;
  if (!qword_1EE0BED00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BED00);
  }

  return result;
}

uint64_t sub_1D79EB29C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79EB320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79EB968(0, &qword_1EE0BAEC8, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79EB914();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = 0;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *(v13 + *(type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData() + 20)) = 4;
    (*(v14 + 32))(v13, v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D79EB584()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D79EB5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

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

uint64_t sub_1D79EB6A0(uint64_t a1)
{
  v2 = sub_1D79EB914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D79EB6DC(uint64_t a1)
{
  v2 = sub_1D79EB914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D79EB718(void *a1)
{
  v3 = v1;
  sub_1D79EB968(0, &qword_1EC9E1BE0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79EB914();
  sub_1D7D31B1C();
  v12[15] = 0;
  sub_1D7D2F06C();
  sub_1D79EB9CC(&qword_1EC9E1BE8);
  sub_1D7D318BC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData() + 20));
    v12[13] = 1;
    sub_1D79EBA10();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D79EB914()
{
  result = qword_1EE0BB628;
  if (!qword_1EE0BB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB628);
  }

  return result;
}

void sub_1D79EB968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D79EB914();
    v7 = a3(a1, &type metadata for MoreFromIssueEndOfArticleFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D79EB9CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7D2F06C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D79EBA10()
{
  result = qword_1EE0BCED8[0];
  if (!qword_1EE0BCED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0BCED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFReplicaAssetType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PDFReplicaAssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D79EBBB8()
{
  result = qword_1EC9E1BF0;
  if (!qword_1EC9E1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1BF0);
  }

  return result;
}

unint64_t sub_1D79EBC10()
{
  result = qword_1EE0BB618;
  if (!qword_1EE0BB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB618);
  }

  return result;
}

unint64_t sub_1D79EBC68()
{
  result = qword_1EE0BB620;
  if (!qword_1EE0BB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB620);
  }

  return result;
}

uint64_t type metadata accessor for SaveArticleFeatureContext()
{
  result = qword_1EE0C5FC8;
  if (!qword_1EE0C5FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D79EBD30()
{
  result = sub_1D799621C();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D28A3C();
    if (v2 <= 0x3F)
    {
      result = sub_1D7D2ACCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D79EBDFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D79EBE44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D79EBEA8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v100 = a2;
  sub_1D79ECCD8(0, &qword_1EC9E1C68, MEMORY[0x1E69D7ED8]);
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v96 = &v84 - v7;
  v102 = type metadata accessor for TableOfContentsModel();
  MEMORY[0x1EEE9AC00](v102, v8);
  v10 = (&v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79ECB58();
  v12 = v11;
  v88 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v87 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79ECBEC();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  sub_1D79ECCB8(0);
  v18 = v17;
  v94 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v101 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79ECD98();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  sub_1D79ECCD8(0, &qword_1EC9E2740, MEMORY[0x1E69D87F8]);
  v92 = *(v23 - 8);
  v93 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v84 - v25;
  v27 = sub_1D79ECE64(&qword_1EC9E1C90, sub_1D79ECCB8);
  v28 = sub_1D79ECE64(&qword_1EC9E1C98, sub_1D79ECCB8);
  v95 = v18;
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], v18, v27, v28);
  v29 = sub_1D79ECABC();
  v30 = sub_1D79ECE64(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
  v91 = v26;
  v31 = v4;
  sub_1D7D2C7FC();
  v32 = *(v4 + 8);
  v33 = *(v4 + 16);
  v103[0] = *v4;
  v103[1] = v32;
  v104 = v33;
  sub_1D79ECEAC(v103[0]);
  v34 = sub_1D79ECE64(&qword_1EC9E1C78, sub_1D79ECB58);
  v35 = sub_1D79ECE64(&qword_1EC9E1C80, sub_1D79ECB58);
  v89 = v12;
  v36 = v34;
  v37 = v101;
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], v12, v36, v35);
  sub_1D7D2A42C();
  if (*(v4 + 16) == 1)
  {
    v90 = v29;
    v39 = *v4;
    v38 = *(v31 + 8);
    if (v38[2])
    {
      v40 = v38[5];
      v84 = v38[4];
      v85 = *(v31 + 64);
      v41 = type metadata accessor for TableOfContentsHeaderViewModel();
      v42 = (v10 + v41[11]);
      v86 = v30;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = objc_opt_self();
      sub_1D79ECEAC(v39);

      sub_1D79ECEAC(v39);
      v45 = [v44 bundleForClass_];
      v82 = 0x80000001D7D688B0;
      sub_1D7D2811C();

      v46 = sub_1D7D303CC();
      v48 = v47;

      *v42 = v46;
      v42[1] = v48;
      v49 = [v39 identifier];
      v50 = sub_1D7D3034C();
      v52 = v51;

      *v10 = v50;
      v10[1] = v52;
      v10[2] = v84;
      v10[3] = v40;
      v53 = [v39 coverDate];
      v54 = sub_1D7D3034C();
      v56 = v55;

      v57 = (v10 + v41[7]);
      *v57 = v54;
      v57[1] = v56;
      v58 = [v39 issueDescription];
      v59 = sub_1D7D3034C();
      v61 = v60;

      v62 = (v10 + v41[8]);
      *v62 = v59;
      v62[1] = v61;
      v63 = [objc_msgSend(v39 sourceChannel)];
      swift_unknownObjectRelease();
      v64 = sub_1D7D3034C();
      v66 = v65;

      v30 = v86;
      v67 = (v10 + v41[9]);
      *v67 = v64;
      v67[1] = v66;
      *(v10 + v41[10]) = v85;
      v68 = v39;
      sub_1D79ECEE4(v39);
      sub_1D7D3111C();

      swift_storeEnumTagMultiPayload();
      v69 = v87;
      sub_1D7D29EDC();
      v70 = v95;
      v71 = v101;
      sub_1D7D2A47C();
      v72 = (*(v88 + 8))(v69, v89);
      v74 = v38[2];
    }

    else
    {
      v75 = v39;

      v74 = 0;
      v70 = v95;
      v71 = v37;
    }

    v76 = v74 != 0;
    v77 = (2 * v74) | 1;
    v103[0] = 0;
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v84 - 4) = v103;
    *(&v84 - 3) = v31;
    v83 = v38;

    sub_1D7A2BBE4(sub_1D79ECF1C, (&v84 - 6), (v38 + 4), v76, v77);
    sub_1D7D2A46C();

    sub_1D79ECEE4(v39);

    v78 = v93;
    v79 = v91;
    sub_1D7D2C77C();
    v82 = v30;
    v80 = v96;
    sub_1D7D2B2AC();
    v100(v80);
    (*(v97 + 8))(v80, v98);
    (*(v94 + 8))(v71, v70);
    return (*(v92 + 8))(v79, v78);
  }

  else
  {
    result = sub_1D7D3160C();
    __break(1u);
  }

  return result;
}

void sub_1D79EC82C(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = type metadata accessor for TableOfContentsModel();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = a1[2];
  v14 = a1[4];
  v28 = a1[3];
  v29 = v14;
  v30 = *(a1 + 10);
  v15 = a1[1];
  v25 = *a1;
  v26 = v15;
  v27 = v13;
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;

    __swift_project_boxed_opaque_existential_1((a3 + 24), *(a3 + 48));
    sub_1D79ECF40(&v25, v24);
    v16 = sub_1D7D2F89C();

    v17 = *a2;
    [a4 coverImageAspectRatio];
    v18 = v28;
    v19 = v29;
    *(v12 + 2) = v27;
    *(v12 + 3) = v18;
    *(v12 + 4) = v19;
    v20 = v30;
    v21 = v26;
    *v12 = v25;
    *(v12 + 1) = v21;
    *(v12 + 10) = v20;
    *(v12 + 11) = v16;
    *(v12 + 12) = v17;
    *(v12 + 13) = v22;
    swift_storeEnumTagMultiPayload();
    sub_1D79ECE64(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
    sub_1D7D29EDC();
  }
}

uint64_t sub_1D79ECA24(uint64_t a1)
{
  v2 = sub_1D79ECF9C();

  return MEMORY[0x1EEE46F70](a1, v2);
}

unint64_t sub_1D79ECA64()
{
  result = qword_1EC9E1C60;
  if (!qword_1EC9E1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1C60);
  }

  return result;
}

unint64_t sub_1D79ECABC()
{
  result = qword_1EC9E8700;
  if (!qword_1EC9E8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8700);
  }

  return result;
}

void sub_1D79ECB58()
{
  if (!qword_1EC9E2760)
  {
    type metadata accessor for TableOfContentsModel();
    sub_1D79ECE64(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
    v0 = sub_1D7D29F0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2760);
    }
  }
}

void sub_1D79ECBEC()
{
  if (!qword_1EC9E1C70)
  {
    sub_1D79ECB58();
    sub_1D79ECE64(&qword_1EC9E1C78, sub_1D79ECB58);
    sub_1D79ECE64(&qword_1EC9E1C80, sub_1D79ECB58);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1C70);
    }
  }
}

void sub_1D79ECCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TableOfContentsSectionDescriptor;
    v8[1] = type metadata accessor for TableOfContentsModel();
    v8[2] = sub_1D79ECABC();
    v8[3] = sub_1D79ECE64(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D79ECD98()
{
  if (!qword_1EC9E1C88)
  {
    sub_1D79ECCB8(255);
    sub_1D79ECE64(&qword_1EC9E1C90, sub_1D79ECCB8);
    sub_1D79ECE64(&qword_1EC9E1C98, sub_1D79ECCB8);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1C88);
    }
  }
}

uint64_t sub_1D79ECE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79ECEAC(void *a1)
{
  v1 = a1;
}

uint64_t sub_1D79ECEE4(void *a1)
{
}

unint64_t sub_1D79ECF9C()
{
  result = qword_1EC9E21B0;
  if (!qword_1EC9E21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E21B0);
  }

  return result;
}

char *sub_1D79ECFF0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12NewsArticles26TableOfContentsPDFCellView_imageView;
  *&v4[v10] = [objc_allocWithZone(sub_1D7D2C86C()) initWithFrame_];
  v11 = OBJC_IVAR____TtC12NewsArticles26TableOfContentsPDFCellView_borderLayer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setAccessibilityIgnoresInvertColors_];
  v13 = [v12 layer];
  [v13 addSublayer_];

  [v12 addSubview_];
  return v12;
}

void sub_1D79ED290()
{
  sub_1D79ED31C(&qword_1EC9E1CB8);

  JUMPOUT(0x1DA70A0C0);
}

uint64_t sub_1D79ED31C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableOfContentsPDFCellView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for BarButtonItemAction()
{
  result = qword_1EC9E1CC0;
  if (!qword_1EC9E1CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D79ED3D0()
{
  sub_1D79ED4C8(319, &qword_1EC9E1CD0, sub_1D79ED47C);
  if (v0 <= 0x3F)
  {
    sub_1D79ED4C8(319, &qword_1EC9E1CD8, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1D79ED47C()
{
  result = qword_1EE0BF010;
  if (!qword_1EE0BF010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF010);
  }

  return result;
}

void sub_1D79ED4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ANFOverrides.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D79ED8F8();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  sub_1D7D2817C();
  v8 = v7;
  if (v7)
  {
    v9 = sub_1D7D3031C();

    v10 = SXSubscriptionStatusFromString(v9);
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 24) = v10;
  *(a2 + 32) = v8 == 0;
  sub_1D7D2817C();
  v12 = v11;
  if (v11)
  {
    v13 = sub_1D7D3031C();

    v14 = SXSubscriptionStatusFromString(v13);
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 40) = v14;
  *(a2 + 48) = v12 == 0;
  *(a2 + 56) = sub_1D79EDBB4();
  sub_1D7D2817C();
  v16 = v15;
  if (v15)
  {
    v17 = sub_1D7D3031C();

    v18 = SXViewingLocationFromString(v17);
  }

  else
  {
    v18 = 0;
  }

  *(a2 + 64) = v18;
  *(a2 + 72) = v16 == 0;
  v19 = sub_1D7D2817C();
  if (v20)
  {
    v21 = sub_1D79EEE0C(v19, v20);

    v22 = !v21;
  }

  else
  {
    v22 = 1;
  }

  *(a2 + 80) = 0;
  *(a2 + 88) = v22 & 1;
  sub_1D7D2817C();
  v24 = v23;
  if (v23)
  {
    v25 = sub_1D7D3031C();

    v26 = SXNewsletterSubscriptionStatusFromString(v25);
  }

  else
  {
    v26 = 0;
  }

  *(a2 + 96) = v26;
  *(a2 + 104) = v24 == 0;
  sub_1D7D2817C();
  v28 = v27;
  if (v27)
  {
    v29 = sub_1D7D3031C();

    v30 = SXOfferUpsellScenarioFromString(v29);
  }

  else
  {
    v30 = 0;
  }

  *(a2 + 112) = v30;
  *(a2 + 120) = v28 == 0;
  sub_1D7D2817C();
  v32 = v31;
  if (v31)
  {
    v33 = sub_1D7D3031C();

    v34 = SXSubscriptionActivationEligibilityFromString(v33);
  }

  else
  {
    v34 = 0;
  }

  *(a2 + 128) = v34;
  *(a2 + 136) = v32 == 0;
  *(a2 + 144) = sub_1D7D2817C();
  *(a2 + 152) = v35;
  *(a2 + 160) = sub_1D79EDF4C();
  v36 = sub_1D7D2817C();
  if (v37)
  {
    if (v36 == 0x6E69776F6C6C6F66 && v37 == 0xE900000000000067)
    {
      v38 = 1;
    }

    else
    {
      v38 = sub_1D7D3197C();
    }

    v39 = v38 & 1;
  }

  else
  {
    v39 = 2;
  }

  v40 = sub_1D7D2824C();
  result = (*(*(v40 - 8) + 8))(a1, v40);
  *(a2 + 168) = v39;
  return result;
}

void sub_1D79ED8F8()
{
  v0 = sub_1D7D2817C();
  if (v1)
  {
    v26 = v0;
    v27 = v1;
    v2 = sub_1D79EF194();
    v3 = MEMORY[0x1DA70EDE0](44, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v2);

    v4 = *(v3 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = (v3 + 56 + 32 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          swift_bridgeObjectRetain_n();

          __break(1u);
          return;
        }

        v9 = *(v7 - 3);
        v10 = *(v7 - 2);
        if (!((v10 ^ v9) >> 14))
        {
          goto LABEL_13;
        }

        v11 = *(v7 - 1);
        v12 = *v7;
        if ((*v7 & 0x1000000000000000) == 0)
        {
          break;
        }

        v23 = *(v7 - 2);
        v16 = *(v7 - 3);
        v17 = *(v7 - 1);

        v14 = sub_1D79EE400(v16, v23, v17, v12, 10);
        LOBYTE(v17) = v18;

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_13:
        ++v8;
        v7 += 4;
        if (v4 == v8)
        {
          goto LABEL_25;
        }
      }

      if ((v12 & 0x2000000000000000) != 0)
      {
        v26 = *(v7 - 1);
        v27 = v12 & 0xFFFFFFFFFFFFFFLL;
        v13 = &v26;
      }

      else if ((v11 & 0x1000000000000000) != 0)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = *(v7 - 3);
        v24 = *(v7 - 2);
        v19 = *(v7 - 1);
        v13 = sub_1D7D314FC();
        v11 = v19;
        v9 = v22;
        v10 = v24;
      }

      v14 = sub_1D79EF1E8(v13, v9, v10, v11, v12, 10);
      v25 = v15 & 1;

      if (v25)
      {
        goto LABEL_13;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D79E3D14(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      if (v21 >= v20 >> 1)
      {
        v6 = sub_1D79E3D14((v20 > 1), v21 + 1, 1, v6);
      }

      v5 = v8 + 1;
      *(v6 + 2) = v21 + 1;
      *&v6[8 * v21 + 32] = v14;
      if (v4 - 1 == v8)
      {
LABEL_25:

        return;
      }
    }
  }
}

id sub_1D79EDBB4()
{
  v0 = sub_1D7D2817C();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    v4 = v0 == 0x6C7878785F7861 && v1 == 0xE700000000000000;
    if (v4 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC20];
    }

    else if (v3 == 0x6C78785F7861 && v2 == 0xE600000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC28];
    }

    else if (v3 == 0x6C785F7861 && v2 == 0xE500000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC30];
    }

    else if (v3 == 1818196065 && v2 == 0xE400000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC38];
    }

    else if (v3 == 1834973281 && v2 == 0xE400000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC40];
    }

    else if (v3 == 1819834488 && v2 == 0xE400000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC50];
    }

    else if (v3 == 7108728 && v2 == 0xE300000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC58];
    }

    else if (v3 == 27768 && v2 == 0xE200000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC60];
    }

    else if (v3 == 108 && v2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC70];
    }

    else if (v3 == 109 && v2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC78];
    }

    else if (v3 == 115 && v2 == 0xE100000000000000 || (sub_1D7D3197C() & 1) != 0)
    {
      v5 = MEMORY[0x1E69DDC88];
    }

    else
    {
      v5 = MEMORY[0x1E69DDC68];
      if (v3 != 29560 || v2 != 0xE200000000000000)
      {
        v8 = sub_1D7D3197C();

        if ((v8 & 1) == 0)
        {
          v5 = MEMORY[0x1E69DDC90];
        }

        goto LABEL_9;
      }
    }

LABEL_9:
    v2 = *v5;
    v6 = *v5;
  }

  return v2;
}

uint64_t sub_1D79EDF4C()
{
  sub_1D7D2817C();
  if (!v0)
  {
    sub_1D7D2817C();
    if (!v1)
    {
      sub_1D7D2817C();
      if (!v2)
      {
        sub_1D7D2817C();
        if (!v3)
        {
          return 0;
        }
      }
    }
  }

  v4 = sub_1D79EF194();
  v5 = MEMORY[0x1DA70EDE0](44, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v6, 0);
    v7 = v21;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x1DA70DE40](v9, v10, v11, v12);
      v15 = v14;

      v17 = *(v21 + 16);
      v16 = *(v21 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D7A5BDC8((v16 > 1), v17 + 1, 1);
      }

      *(v21 + 16) = v17 + 1;
      v18 = v21 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1D7BDE0A4(v7);

  return v19;
}

uint64_t SXSubscriptionActivationEligibilityFromString(void *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  if (v1)
  {
    if ([v2 length] && (objc_msgSend(v3, "isEqualToString:", @"unknown") & 1) == 0)
    {
      if ([v3 isEqualToString:@"any"])
      {
        v1 = 2;
      }

      else if ([v3 isEqualToString:@"none"])
      {
        v1 = 1;
      }

      else if ([v3 isEqualToString:@"appleOneViaCarrier"])
      {
        v1 = 3;
      }

      else if ([v3 isEqualToString:@"newsPlusViaHardware"])
      {
        v1 = 4;
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t SXOfferUpsellScenarioFromString(void *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  if (v1)
  {
    if ([v2 length] && (objc_msgSend(v3, "isEqualToString:", @"undefined") & 1) == 0)
    {
      if ([v3 isEqualToString:@"unknown"])
      {
        v1 = 2;
      }

      else if ([v3 isEqualToString:@"news_plus"])
      {
        v1 = 3;
      }

      else if ([v3 isEqualToString:@"bundle_any"])
      {
        v1 = 4;
      }

      else if ([v3 isEqualToString:@"bundle_none"])
      {
        v1 = 5;
      }

      else if ([v3 isEqualToString:@"bundle_savings"])
      {
        v1 = 6;
      }

      else if ([v3 isEqualToString:@"bundle_price_reduction"])
      {
        v1 = 7;
      }

      else if ([v3 isEqualToString:@"bundle_best_value"])
      {
        v1 = 8;
      }

      else if ([v3 isEqualToString:@"bundle_suggestion"])
      {
        v1 = 9;
      }

      else
      {
        v1 = 1;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t SXNewsletterSubscriptionStatusFromString(void *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  if (v1)
  {
    if ([v2 length])
    {
      if ([v3 isEqualToString:@"unavailable"])
      {
        v1 = 2;
      }

      else if ([v3 isEqualToString:@"not_subscribed"])
      {
        v1 = 3;
      }

      else if ([v3 isEqualToString:@"non_personalized"])
      {
        v1 = 4;
      }

      else if ([v3 isEqualToString:@"personalized"])
      {
        v1 = 5;
      }

      else
      {
        v1 = 1;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

unsigned __int8 *sub_1D79EE400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1D79EF654();

  result = sub_1D7D304DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D79EE998();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D7D314FC();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D79EE998()
{
  v0 = sub_1D7D304EC();
  v4 = sub_1D79EEA18(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D79EEA18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D7D3131C();
    if (!v9 || (v10 = v9, v11 = sub_1D7B0718C(v9, 0), v12 = sub_1D79EEB70(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D7D303EC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D7D303EC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D7D314FC();
LABEL_4:

  return sub_1D7D303EC();
}

unint64_t sub_1D79EEB70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D79EED90(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D7D3048C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D7D314FC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D79EED90(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D7D3045C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D79EED90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D7D3049C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA70DED0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_1D79EEE0C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1D7D3144C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t SXViewingLocationFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"article"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"issue"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"issueTableOfContents"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SXSubscriptionStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"subscribed"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"notSubscribed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"trialEligible"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D79EF038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D79EF094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

_BYTE *sub_1D79EF114@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1D79EF194()
{
  result = qword_1EE0BF4D8;
  if (!qword_1EE0BF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF4D8);
  }

  return result;
}

uint64_t sub_1D79EF1E8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D79EED90(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D7D3047C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D79EED90(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D79EED90(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1D7D3047C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_1D79EF654()
{
  result = qword_1EC9E1CE0;
  if (!qword_1EC9E1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1CE0);
  }

  return result;
}

uint64_t static ArticleViewerFeatures.share.getter()
{
  sub_1D79EF6DC();

  return swift_initStaticObject();
}

void sub_1D79EF6DC()
{
  if (!qword_1EE0C8870)
  {
    type metadata accessor for ArticleViewerShareFeatureContext(255);
    v0 = type metadata accessor for ArticleViewerFeature();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C8870);
    }
  }
}

unint64_t sub_1D79EF79C()
{
  result = type metadata accessor for ArticleViewerShareFeatureContext.Page(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2ACCC();
    if (v2 <= 0x3F)
    {
      result = sub_1D79EF838();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D79EF838()
{
  result = qword_1EE0C6868;
  if (!qword_1EE0C6868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C6868);
  }

  return result;
}

uint64_t sub_1D79EF898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerArticlePage(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1D79AD488);
}

uint64_t sub_1D79EF8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerArticlePage(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1D79AD5AC);
}

uint64_t sub_1D79EF960(uint64_t a1)
{
  result = type metadata accessor for ArticleViewerArticlePage(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1D79EFA04()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D79EFA60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    swift_unknownObjectRetain();
    v6 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v7 = [a1 isBundlePaid];
    }

    else
    {
      v7 = 0;
    }

    v12 = &off_1E84EC000;
    v13 = [a1 sourceChannel];
    if (v13)
    {
      v14 = [v13 identifier];
      swift_unknownObjectRelease();
      v15 = sub_1D7D3034C();
      v17 = v16;

      if (v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0;
      if (v6)
      {
LABEL_10:
        v18 = [v4 purchaseProvider];
        if (v17)
        {
          v19 = [v18 purchasedTagIDs];
          v20 = sub_1D7D309AC();

          LOBYTE(v19) = sub_1D7D053C8(v15, v17, v20);

          swift_unknownObjectRelease();
          if (v19)
          {

LABEL_40:
            swift_unknownObjectRelease();
            goto LABEL_41;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (!v7)
        {
          goto LABEL_37;
        }

LABEL_18:
        if (!v17)
        {
LABEL_42:
          v33 = [v4 canGetBundleSubscriptionToChannel_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v34 = sub_1D7D2EB1C();
          if (v33)
          {
            v35 = MEMORY[0x1E69B5DE0];
          }

          else
          {
            v35 = MEMORY[0x1E69B5DD8];
          }

          return (*(*(v34 - 8) + 104))(a2, *v35, v34);
        }

        v21 = [objc_msgSend(v4 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v21, v21 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        v39 = v37;
        v40 = v38;
        if (*(&v38 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v22 = v36;
            v23 = [v36 integerValue];
            if (v23 == -1)
            {

              v12 = &off_1E84EC000;
              goto LABEL_39;
            }

            v24 = v23;
            goto LABEL_28;
          }
        }

        else
        {
          sub_1D79F0014(&v39);
        }

        v22 = 0;
        v24 = 0;
LABEL_28:
        if (objc_getAssociatedObject(v21, ~v24))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        v39 = v37;
        v40 = v38;
        if (*(&v38 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v25 = v36;
            v26 = [v25 integerValue];

            v27 = v26 ^ v24;
            v12 = &off_1E84EC000;
            if (v27)
            {
LABEL_39:
              v28 = [objc_msgSend(v4 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v29 = [v28 bundleChannelIDs];

              v30 = sub_1D7D3031C();
              LODWORD(v28) = [v29 containsObject_];

              if (v28)
              {
                goto LABEL_40;
              }

              goto LABEL_42;
            }

            goto LABEL_37;
          }
        }

        else
        {
          sub_1D79F0014(&v39);
        }

        v12 = &off_1E84EC000;
        if (v24)
        {
          goto LABEL_39;
        }

LABEL_37:

        goto LABEL_42;
      }
    }

    if ((v7 & 1) == 0)
    {
      swift_unknownObjectRelease();

LABEL_41:
      v31 = *MEMORY[0x1E69B5DE8];
      v32 = sub_1D7D2EB1C();
      return (*(*(v32 - 8) + 104))(a2, v31, v32);
    }

    goto LABEL_18;
  }

  v8 = *MEMORY[0x1E69B5DE8];
  v9 = sub_1D7D2EB1C();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t sub_1D79EFFB8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D79F0014(uint64_t a1)
{
  sub_1D79F0070();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D79F0070()
{
  if (!qword_1EE0BE7A0)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE7A0);
    }
  }
}

double sub_1D79F00C4()
{
  sub_1D7D2828C();
  v1 = v0[1];
  v3 = v0[2] + (v2 - *v0) * v0[3];
  if (v3 >= v1)
  {
    v4 = v0[1];
  }

  else
  {
    v4 = v3;
  }

  result = 0.0;
  if (v4 < 0.0)
  {
    if (v1 <= 0.0)
    {
      return result;
    }

    v6 = fmin(0.0 / v1, 1.0);
    goto LABEL_9;
  }

  if (v1 > 0.0)
  {
    v6 = v4 / v1;
    result = 1.0;
    if (v6 < 1.0)
    {
LABEL_9:
      result = 0.0;
      if (v6 >= 0.0)
      {
        return v6;
      }
    }
  }

  return result;
}

void sub_1D79F0140(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1D7D30F0C();
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v120 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___NANowPlayingTimeControl_slider;
  v15 = type metadata accessor for SliderView();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel;
  *&v5[v16] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v17 = OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v18 = &v5[OBJC_IVAR___NANowPlayingTimeControl_scrubbingDidChangeHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v5[OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR___NANowPlayingTimeControl_elapsedTrackColor;
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  v23 = [v22 colorWithAlphaComponent_];

  *&v5[v20] = v23;
  v24 = OBJC_IVAR___NANowPlayingTimeControl_remainingTrackColor;
  *&v5[v24] = [v21 systemFillColor];
  v25 = OBJC_IVAR___NANowPlayingTimeControl_trackingTrackColor;
  *&v5[v25] = [v21 tintColor];
  v26 = OBJC_IVAR___NANowPlayingTimeControl_timeLabelTextColor;
  *&v5[v26] = [v21 labelColor];
  v27 = OBJC_IVAR___NANowPlayingTimeControl_timeLabelTrackingTextColor;
  *&v5[v27] = [v21 tintColor];
  v5[OBJC_IVAR___NANowPlayingTimeControl__tracking] = 0;
  v28 = &v5[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 2;
  *&v5[OBJC_IVAR___NANowPlayingTimeControl_backgroundObserver] = 0;
  *&v5[OBJC_IVAR___NANowPlayingTimeControl_foregroundObserver] = 0;
  *&v5[OBJC_IVAR___NANowPlayingTimeControl_displayLink] = 0;
  v5[OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded] = 0;
  v29 = OBJC_IVAR___NANowPlayingTimeControl_timeFormatter;
  *&v5[v29] = [objc_allocWithZone(NATimeFormatter) init];
  v30 = OBJC_IVAR___NANowPlayingTimeControl_accessibilityTimeFormatter;
  v31 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v31 setAllowedUnits_];
  [v31 setZeroFormattingBehavior_];
  [v31 setUnitsStyle_];
  *&v5[v30] = v31;
  *&v5[OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___elapsedTimeLabelBaselineConstraint] = 0;
  *&v5[OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___remainingTimeLabelBaselineConstraint] = 0;
  v125.receiver = v5;
  v125.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v125, sel_initWithFrame_, a1, a2, a3, a4);
  v33 = *MEMORY[0x1E69DDC38];
  v34 = v32;
  [v34 setMaximumContentSizeCategory_];
  v35 = v34;
  [v35 setSemanticContentAttribute_];
  v36 = OBJC_IVAR___NANowPlayingTimeControl_slider;
  v124.receiver = *&v35[OBJC_IVAR___NANowPlayingTimeControl_slider];
  v124.super_class = v15;
  v37 = v124.receiver;
  objc_msgSendSuper2(&v124, sel_setSemanticContentAttribute_, 1);
  v38 = *&v37[OBJC_IVAR____TtC12NewsArticles10SliderView_stackView];
  v123.receiver = v37;
  v123.super_class = v15;
  [v38 setSemanticContentAttribute_];

  v39 = *&v35[v36];
  v40 = sub_1D7D2499C();

  [v35 addGestureRecognizer_];
  v41 = *&v35[v36];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = &v41[OBJC_IVAR____TtC12NewsArticles10SliderView_valueChangedHandler];
  v44 = *&v41[OBJC_IVAR____TtC12NewsArticles10SliderView_valueChangedHandler];
  *v43 = sub_1D79F3B48;
  v43[1] = v42;
  v45 = v35;
  v46 = v41;

  sub_1D79AD740(v44);

  v47 = [objc_opt_self() displayLinkWithTarget:v45 selector:sel_displayLinkFired_];

  v48 = OBJC_IVAR___NANowPlayingTimeControl_displayLink;
  v49 = *&v45[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
  *&v45[OBJC_IVAR___NANowPlayingTimeControl_displayLink] = v47;

  v50 = *&v45[v48];
  if (v50)
  {
    v51 = objc_opt_self();
    v52 = v50;
    v53 = [v51 mainRunLoop];
    [v52 addToRunLoop:v53 forMode:*MEMORY[0x1E695DA28]];

    v54 = *&v45[v48];
    if (v54)
    {
      [v54 setPaused_];
      v55 = *&v45[v48];
      if (v55)
      {
        [v55 setPreferredFramesPerSecond_];
      }
    }
  }

  sub_1D79F3B50(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3D410;
  v57 = *&v35[v36];
  *(inited + 32) = v57;
  v119 = OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel;
  v58 = *&v45[OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel];
  *(inited + 40) = v58;
  v59 = OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel;
  v60 = *&v45[OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel];
  *(inited + 48) = v60;
  v61 = inited & 0xC000000000000001;
  v62 = v57;
  v63 = v58;
  v64 = v60;
  if ((inited & 0xC000000000000001) != 0)
  {
    v65 = MEMORY[0x1DA70EF00](0, inited);
  }

  else
  {
    v65 = v62;
  }

  v66 = v65;
  [v65 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 addSubview_];

  if (v61)
  {
    v67 = MEMORY[0x1DA70EF00](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_21;
    }

    v67 = *(inited + 40);
  }

  v68 = v67;
  [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 addSubview_];

  v118 = v59;
  if (!v61)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v69 = *(inited + 48);
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return;
  }

  v69 = MEMORY[0x1DA70EF00](2, inited);
LABEL_15:
  v70 = v69;

  [v70 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 addSubview_];

  v117 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1D7D3D420;
  v72 = [*(*&v35[v36] + OBJC_IVAR____TtC12NewsArticles10SliderView_trackLayoutGuide) topAnchor];
  v73 = [v45 topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:10.0];

  *(v71 + 32) = v74;
  v75 = [*(*&v35[v36] + OBJC_IVAR____TtC12NewsArticles10SliderView_trackLayoutGuide) leadingAnchor];
  v76 = [v45 leadingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v71 + 40) = v77;
  v78 = [*(*&v35[v36] + OBJC_IVAR____TtC12NewsArticles10SliderView_trackLayoutGuide) trailingAnchor];
  v79 = [v45 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v71 + 48) = v80;
  v81 = v119;
  v82 = [*&v45[v119] leadingAnchor];
  v83 = [v45 leadingAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v71 + 56) = v84;
  *(v71 + 64) = sub_1D79F3014(&OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___elapsedTimeLabelBaselineConstraint, &OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel);
  v85 = [*&v45[v81] bottomAnchor];
  v86 = [v45 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v71 + 72) = v87;
  v88 = v118;
  v89 = [*&v45[v118] trailingAnchor];
  v90 = [v45 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v71 + 80) = v91;
  v92 = *&v45[OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___elapsedTimeLabelBaselineConstraint];
  *(v71 + 88) = v92;
  v93 = *&v45[v88];
  v94 = v92;
  v95 = [v93 bottomAnchor];
  v96 = [v45 bottomAnchor];

  v97 = [v95 constraintEqualToAnchor_];
  *(v71 + 96) = v97;
  sub_1D79F3BA0();
  v98 = sub_1D7D3062C();

  [v117 activateConstraints_];

  v99 = objc_opt_self();
  v100 = [v99 defaultCenter];
  v101 = v120;
  sub_1D7D30F1C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D79F3BF4();
  v102 = v122;
  v103 = sub_1D7D2CA1C();

  v104 = *(v121 + 8);
  v104(v101, v102);
  *&v45[OBJC_IVAR___NANowPlayingTimeControl_backgroundObserver] = v103;

  v105 = [v99 defaultCenter];
  sub_1D7D30F1C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = sub_1D7D2CA1C();

  v104(v101, v102);
  *&v45[OBJC_IVAR___NANowPlayingTimeControl_foregroundObserver] = v106;

  sub_1D79F3C54();
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1D7D3B4D0;
  v108 = sub_1D7D2CA0C();
  v109 = MEMORY[0x1E69DC2B0];
  *(v107 + 32) = v108;
  *(v107 + 40) = v109;
  MEMORY[0x1DA70EB40](v107, sel_updateFonts);
  swift_unknownObjectRelease();

  sub_1D79F15D8();
  [v45 setIsAccessibilityElement_];
  v110 = sub_1D7D3062C();
  [v45 setAccessibilityElements_];

  v111 = *MEMORY[0x1E69DD9A8];
  v112 = [v45 accessibilityTraits];
  if ((v111 & ~v112) != 0)
  {
    v113 = v111;
  }

  else
  {
    v113 = 0;
  }

  [v45 setAccessibilityTraits_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v115 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v116 = sub_1D7D3031C();

  [v45 setAccessibilityLabel_];
}

void sub_1D79F0EF4(char a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR___NANowPlayingTimeControl__tracking;
    if (*(Strong + OBJC_IVAR___NANowPlayingTimeControl__tracking) != (a1 & 1))
    {
      *(Strong + OBJC_IVAR___NANowPlayingTimeControl__tracking) = a1 & 1;
      sub_1D79F1D0C();
      if (*(*&v5[OBJC_IVAR___NANowPlayingTimeControl_slider] + OBJC_IVAR____TtC12NewsArticles10SliderView_isTracking) == 1)
      {
        v7 = qword_1EC9E0070;
        v8 = v5;
        if (v7 != -1)
        {
          swift_once();
        }

        v10 = *byte_1ECA0BD00;
        v9 = *&byte_1ECA0BD00[16];
        v11 = *&byte_1ECA0BD00[32];
      }

      else
      {
        v12 = v5;
        v9 = xmmword_1D7D3D430;
        v10 = xmmword_1D7D3D440;
        v11 = 0uLL;
      }

      v24 = v10;
      v25 = v9;
      v26 = v11;
      [v5 setTransform_];

      v13 = *&v5[OBJC_IVAR___NANowPlayingTimeControl_scrubbingDidChangeHandler];
      if (v13)
      {

        v13(a1 & 1);
        sub_1D79AD740(v13);
      }
    }

    v14 = &v5[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot];
    swift_beginAccess();
    v15 = v14[1];
    v16 = *(v14 + 32);
    if (v16 == 2)
    {
      v17 = v14[2];
      v18 = 0.0;
    }

    else
    {
      v19 = v14[1];
      if (v15 * a2 < v15)
      {
        v19 = v15 * a2;
      }

      if (v19 < 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v19;
      }

      v17 = v18;
    }

    v20 = *v14;
    v21 = *(v14 + 3);
    v22 = *&v5[OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler];
    if (v22)
    {
      v23 = v5[v6];

      v22(v23, v18);
      sub_1D79AD740(v22);
    }

    *&v24 = v20;
    *(&v24 + 1) = v15;
    *&v25 = v17;
    *(&v25 + 1) = v21;
    LOBYTE(v26) = v16;
    sub_1D79F1134(&v24);
  }
}

void sub_1D79F1134(uint64_t a1)
{
  if (*(a1 + 32) == 2)
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *a1;
  v4 = *(a1 + 8);
  sub_1D7D2828C();
  v7 = v3 + v2 * (v6 - v5);
  if (v7 >= v4)
  {
    v7 = v4;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v4 - v3;
  if (v4 - v3 >= v4)
  {
    v8 = v4;
  }

  v9 = v8 < 0.0 ? 0.0 : v8;
  if (v9 <= 0.0 && v7 <= 0.0)
  {
LABEL_13:
    v10 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    sub_1D7D2811C();

    v14 = sub_1D7D3031C();

    [v10 setText_];

    v15 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel);
    v16 = [v12 bundleForClass_];
    sub_1D7D2811C();

    v23 = sub_1D7D3031C();

    [v15 setText_];
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel);
    v18 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_timeFormatter);
    v19 = [v18 formatElapsedDuration_];
    if (!v19)
    {
      sub_1D7D3034C();
      v19 = sub_1D7D3031C();
    }

    [v17 setText_];

    v20 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel);
    v21 = [v18 formatRemainingDuration_];
    if (!v21)
    {
      sub_1D7D3034C();
      v24 = sub_1D7D3031C();

      v21 = v24;
    }

    v23 = v21;
    [v20 setText_];
  }
}

void sub_1D79F1418()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded) = 1;
    v2 = *(Strong + OBJC_IVAR___NANowPlayingTimeControl_displayLink);
    if (v2)
    {
      [v2 setPaused_];
    }
  }
}

void sub_1D79F1498()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded;
    *(Strong + OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded) = 0;
    v3 = *(Strong + OBJC_IVAR___NANowPlayingTimeControl_displayLink);
    if (v3)
    {
      v4 = v3;
      v5 = [v1 window];
      v10 = !v5 || (v5, v6 = type metadata accessor for NowPlayingTimeControl(), v12.receiver = v1, v12.super_class = v6, (objc_msgSendSuper2(&v12, sel_isHidden) & 1) != 0) || (v11.receiver = v1, v11.super_class = v6, objc_msgSendSuper2(&v11, sel_alpha), v7 <= 0.0) || (v1[v2] & 1) != 0 || (v8 = &v1[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot], swift_beginAccess(), v9 = *(v8 + 32), v9 == 2) || (v9 & 1) != 0 || v8[3] == 0.0;
      [v4 setPaused_];
    }

    else
    {
      v4 = Strong;
    }
  }
}

void sub_1D79F15D8()
{
  v1 = [objc_opt_self() defaultMetrics];
  v2 = [v0 traitCollection];
  [v1 scaledValueForValue:v2 compatibleWithTraitCollection:11.0];
  v4 = v3;

  v5 = [objc_opt_self() monospacedDigitSystemFontOfSize:v4 weight:*MEMORY[0x1E69DB970]];
  v6 = *&v0[OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel];
  v11 = v5;
  [v6 setFont_];
  [*&v0[OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel] setFont_];

  [v11 ascender];
  v8 = 22.0 - v7;
  v9 = sub_1D79F3014(&OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___elapsedTimeLabelBaselineConstraint, &OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel);
  [v9 setConstant_];

  v10 = sub_1D79F3014(&OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___remainingTimeLabelBaselineConstraint, &OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel);
  [v10 setConstant_];

  [v0 invalidateIntrinsicContentSize];
  [v0 setNeedsUpdateConstraints];
  [v0 setNeedsLayout];
}

id sub_1D79F17E4()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D79F1AC8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_1D79F1C44(char *a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v7 = *&a1[*a4];
  *&a1[*a4] = a3;
  v8 = a3;
  v9 = a1;

  v10 = *&v9[OBJC_IVAR___NANowPlayingTimeControl_slider];
  v11 = *a5;
  v12 = *(v10 + *a5);
  *(v10 + v11) = v8;
  v13 = v8;

  sub_1D7D24E00();
}

id sub_1D79F1D0C()
{
  v1 = OBJC_IVAR___NANowPlayingTimeControl__tracking;
  if (*(v0 + OBJC_IVAR___NANowPlayingTimeControl__tracking))
  {
    v2 = &OBJC_IVAR___NANowPlayingTimeControl_timeLabelTrackingTextColor;
  }

  else
  {
    v2 = &OBJC_IVAR___NANowPlayingTimeControl_timeLabelTextColor;
  }

  [*(v0 + OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel) setTextColor_];
  v3 = *(v0 + OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel);
  if (*(v0 + v1))
  {
    v4 = &OBJC_IVAR___NANowPlayingTimeControl_timeLabelTrackingTextColor;
  }

  else
  {
    v4 = &OBJC_IVAR___NANowPlayingTimeControl_timeLabelTextColor;
  }

  v5 = *(v0 + *v4);

  return [v3 setTextColor_];
}

void sub_1D79F1DCC(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *&a1[*a4];
  *&a1[*a4] = a3;
  v6 = a3;
  v7 = a1;

  sub_1D79F1D0C();
}

void sub_1D79F1ED0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v19.receiver = v2;
  v19.super_class = ObjectType;
  if (objc_msgSendSuper2(&v19, sel_isHidden) != v3)
  {
    v5 = *&v2[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
    if (v5)
    {
      v6 = v5;
      v7 = [v2 window];
      v11 = !v7 || (v7, v17.receiver = v2, v17.super_class = ObjectType, (objc_msgSendSuper2(&v17, sel_isHidden) & 1) != 0) || (v16.receiver = v2, v16.super_class = ObjectType, objc_msgSendSuper2(&v16, sel_alpha), v8 <= 0.0) || (v2[OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded] & 1) != 0 || (v9 = &v2[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot], swift_beginAccess(), v10 = *(v9 + 32), v10 == 2) || (v10 & 1) != 0 || v9[3] == 0.0;
      [v6 setPaused_];
    }

    v12 = *&v2[OBJC_IVAR___NANowPlayingTimeControl_slider];
    v18.receiver = v2;
    v18.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v18, sel_isHidden);
    v14 = OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled;
    *(v12 + OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled) = v13 ^ 1;
    v15 = sub_1D7D2499C();
    [v15 setEnabled_];
  }
}

void sub_1D79F2120(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_alpha);
  if (v5 != a1)
  {
    v6 = *&v1[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
    if (v6)
    {
      v7 = v6;
      v8 = [v1 window];
      v12 = !v8 || (v8, v18.receiver = v1, v18.super_class = ObjectType, (objc_msgSendSuper2(&v18, sel_isHidden) & 1) != 0) || (v17.receiver = v1, v17.super_class = ObjectType, objc_msgSendSuper2(&v17, sel_alpha), v9 <= 0.0) || (v1[OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded] & 1) != 0 || (v10 = &v1[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot], swift_beginAccess(), v11 = *(v10 + 32), v11 == 2) || (v11 & 1) != 0 || v10[3] == 0.0;
      [v7 setPaused_];
    }

    v13 = *&v1[OBJC_IVAR___NANowPlayingTimeControl_slider];
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, sel_alpha);
    v15 = OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled;
    *(v13 + OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled) = v14 > 0.0;
    v16 = sub_1D7D2499C();
    [v16 setEnabled_];
  }
}

void sub_1D79F22AC()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  v2 = *&v0[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 window];
    v8 = !v4 || (v4, v10.receiver = v0, v10.super_class = ObjectType, (objc_msgSendSuper2(&v10, sel_isHidden) & 1) != 0) || (v9.receiver = v0, v9.super_class = ObjectType, objc_msgSendSuper2(&v9, sel_alpha), v5 <= 0.0) || (v0[OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded] & 1) != 0 || (v6 = &v0[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot], swift_beginAccess(), v7 = *(v6 + 32), v7 == 2) || (v7 & 1) != 0 || v6[3] == 0.0;
    [v3 setPaused_];
  }
}

id sub_1D79F2478(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1D79F25E4()
{
  v1 = v0 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot;
  swift_beginAccess();
  if (*(v1 + 32) == 2)
  {
    return 0;
  }

  v3 = *(v1 + 8);
  v4 = *(v0 + OBJC_IVAR___NANowPlayingTimeControl_accessibilityTimeFormatter);
  result = [v4 stringFromTimeInterval_];
  if (result)
  {
    v5 = result;
    v6 = sub_1D7D3034C();
    v8 = v7;

    v9 = [v4 stringFromTimeInterval_];
    if (!v9)
    {

      return 0;
    }

    v10 = v9;
    v11 = sub_1D7D3034C();
    v13 = v12;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    sub_1D79F3AB0();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7D3B4E0;
    v17 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1D79D6AE0();
    *(v16 + 32) = v6;
    *(v16 + 40) = v8;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 64) = v18;
    *(v16 + 72) = v11;
    *(v16 + 80) = v13;
    v19 = sub_1D7D3037C();

    return v19;
  }

  return result;
}

void sub_1D79F2864()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot);
  swift_beginAccess();
  v3 = *(v2 + 32);
  if (v3 != 2)
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = *(v2 + 3);
    v7 = *(v2 + 2);
    v15 = *v2;
    v16 = v5;
    v17 = v7;
    v18 = v6;
    v8 = v3 & 1;
    v19 = v3 & 1;
    v9 = (sub_1D79F00C4() + 0.05) * v5;
    if (v9 >= v5)
    {
      v9 = v5;
    }

    if (v9 < 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler);
    if (v11)
    {
      v12 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl__tracking);

      v11(v12, v10);
      sub_1D79AD740(v11);
    }

    *v13 = v4;
    *&v13[1] = v5;
    *&v13[2] = v10;
    v13[3] = v6;
    v14 = v8;
    sub_1D79F1134(v13);
  }
}

void sub_1D79F29D4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot);
  swift_beginAccess();
  v3 = *(v2 + 32);
  if (v3 != 2)
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = *(v2 + 3);
    v7 = *(v2 + 2);
    v15 = *v2;
    v16 = v5;
    v17 = v7;
    v18 = v6;
    v8 = v3 & 1;
    v19 = v3 & 1;
    v9 = (sub_1D79F00C4() + -0.05) * v5;
    if (v9 >= v5)
    {
      v9 = v5;
    }

    if (v9 < 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler);
    if (v11)
    {
      v12 = *(v1 + OBJC_IVAR___NANowPlayingTimeControl__tracking);

      v11(v12, v10);
      sub_1D79AD740(v11);
    }

    *v13 = v4;
    *&v13[1] = v5;
    *&v13[2] = v10;
    v13[3] = v6;
    v14 = v8;
    sub_1D79F1134(v13);
  }
}

void sub_1D79F2B44(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot];
  swift_beginAccess();
  v5[32] = *(a1 + 32);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = *&v2[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
  if (v7)
  {
    v8 = v7;
    v9 = [v2 window];
    v12 = !v9 || (v9, v14.receiver = v2, v14.super_class = ObjectType, (objc_msgSendSuper2(&v14, sel_isHidden) & 1) != 0) || (v13.receiver = v2, v13.super_class = ObjectType, objc_msgSendSuper2(&v13, sel_alpha), v10 <= 0.0) || (v2[OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded] & 1) != 0 || (v11 = v5[32], v11 == 2) || (v11 & 1) != 0 || *(v5 + 3) == 0.0;
    [v8 setPaused_];
  }
}

void (*sub_1D79F2C68(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot;
  *(v4 + 64) = ObjectType;
  *(v4 + 72) = v6;
  swift_beginAccess();
  return sub_1D79F2D00;
}

void sub_1D79F2D00(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 56);
    v5 = *&v4[OBJC_IVAR___NANowPlayingTimeControl_displayLink];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 window];
      v12 = !v7 || (v13 = *(v3 + 56), v7, *(v3 + 24) = v13, (objc_msgSendSuper2((v3 + 24), sel_isHidden) & 1) != 0) || (*(v3 + 40) = *(v3 + 56), objc_msgSendSuper2((v3 + 40), sel_alpha), v8 <= 0.0) || (v9 = *(v3 + 56), (*(v9 + OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded) & 1) != 0) || (v10 = v9 + *(v3 + 72), v11 = *(v10 + 32), v11 == 2) || (v11 & 1) != 0 || *(v10 + 24) == 0.0;
      [v6 setPaused_];
    }
  }

  free(v3);
}

id sub_1D79F2E28()
{
  v1 = *(v0 + OBJC_IVAR___NANowPlayingTimeControl_slider);
  v2 = v0 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v2 + 32) != 2)
  {
    v3 = sub_1D79F00C4();
  }

  result = swift_endAccess();
  if (v3 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  if (v5 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = OBJC_IVAR____TtC12NewsArticles10SliderView_value;
  if (v6 != *&v1[OBJC_IVAR____TtC12NewsArticles10SliderView_value])
  {
    v8 = sub_1D7D24D38();
    [v1 bounds];
    [v8 setConstant_];

    result = [v1 layoutIfNeeded];
    *&v1[v7] = v6;
  }

  return result;
}

id sub_1D79F3014(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) topAnchor];
    v7 = [*(v2 + OBJC_IVAR___NANowPlayingTimeControl_slider) bottomAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:0.0];

    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D79F3164(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D79F31B8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void sub_1D79F3210()
{
  v1 = OBJC_IVAR___NANowPlayingTimeControl_slider;
  type metadata accessor for SliderView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR___NANowPlayingTimeControl_elapsedTimeLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR___NANowPlayingTimeControl_remainingTimeLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = (v0 + OBJC_IVAR___NANowPlayingTimeControl_scrubbingDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR___NANowPlayingTimeControl_elapsedTrackColor;
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v8 colorWithAlphaComponent_];

  *(v0 + v6) = v9;
  v10 = OBJC_IVAR___NANowPlayingTimeControl_remainingTrackColor;
  *(v0 + v10) = [v7 systemFillColor];
  v11 = OBJC_IVAR___NANowPlayingTimeControl_trackingTrackColor;
  *(v0 + v11) = [v7 tintColor];
  v12 = OBJC_IVAR___NANowPlayingTimeControl_timeLabelTextColor;
  *(v0 + v12) = [v7 labelColor];
  v13 = OBJC_IVAR___NANowPlayingTimeControl_timeLabelTrackingTextColor;
  *(v0 + v13) = [v7 tintColor];
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl__tracking) = 0;
  v14 = v0 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 2;
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl_backgroundObserver) = 0;
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl_foregroundObserver) = 0;
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl_displayLink) = 0;
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl_isBackgrounded) = 0;
  v15 = OBJC_IVAR___NANowPlayingTimeControl_timeFormatter;
  *(v0 + v15) = [objc_allocWithZone(NATimeFormatter) init];
  v16 = OBJC_IVAR___NANowPlayingTimeControl_accessibilityTimeFormatter;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v17 setAllowedUnits_];
  [v17 setZeroFormattingBehavior_];
  [v17 setUnitsStyle_];
  *(v0 + v16) = v17;
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___elapsedTimeLabelBaselineConstraint) = 0;
  *(v0 + OBJC_IVAR___NANowPlayingTimeControl____lazy_storage___remainingTimeLabelBaselineConstraint) = 0;
  sub_1D7D3160C();
  __break(1u);
}

id sub_1D79F34CC()
{
  v1 = (v0 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot);
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2 != 2 && (*(v0 + OBJC_IVAR___NANowPlayingTimeControl__tracking) & 1) == 0)
  {
    v11 = *v1;
    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    sub_1D7D2828C();
    v7 = v6;
    v8 = vabdd_f64(v6, *&v11);
    if (COERCE_DOUBLE(v4 & 0x7FFFFFFFFFFFFFFFLL) <= 1.0)
    {
      if (v8 < 1.0)
      {
        return sub_1D79F2E28();
      }
    }

    else if (1.0 / COERCE_DOUBLE(v4 & 0x7FFFFFFFFFFFFFFFLL) > v8)
    {
      return sub_1D79F2E28();
    }

    v10 = sub_1D79F2C68(&v12);
    if (*(v9 + 32) != 2)
    {
      *v9 = v7;
    }

    v10(&v12, 0);
    v12 = v11;
    v13 = v5;
    v14 = v4;
    v15 = v2 & 1;
    sub_1D79F1134(&v12);
    return sub_1D79F2E28();
  }

  result = *(v0 + OBJC_IVAR___NANowPlayingTimeControl_displayLink);
  if (result)
  {
    return [result setPaused_];
  }

  return result;
}

void sub_1D79F3604(int a1, double a2, double a3, double a4)
{
  v5 = v4;
  v45 = a1;
  v9 = sub_1D7D29AFC();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - v15;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE0C05E8;
  sub_1D7D29B0C();
  v18 = sub_1D7D29ADC();
  v19 = sub_1D7D30C6C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v44 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    *&v50 = v22;
    *v21 = 136446466;
    *v48 = a2;
    sub_1D79F3A5C();
    v23 = sub_1D7D3026C();
    v25 = sub_1D7B06D4C(v23, v24, &v50);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *v48 = a3;
    v26 = sub_1D7D3026C();
    v28 = sub_1D7B06D4C(v26, v27, &v50);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_1D7987000, v18, v19, "NowPlayingTimeControl setCurrentTime(%{public}s, duration: %{public}s)", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7102E0](v22, -1, -1);
    v29 = v21;
    v5 = v44;
    MEMORY[0x1DA7102E0](v29, -1, -1);
  }

  v30 = *(v46 + 8);
  v30(v16, v47);
  v31 = (v5 + OBJC_IVAR___NANowPlayingTimeControl_durationSnapshot);
  swift_beginAccess();
  v32 = *v31;
  v43 = v31[1];
  v44 = v32;
  v33 = *(v31 + 32);
  sub_1D7D29B0C();
  v34 = sub_1D7D29ADC();
  v35 = sub_1D7D30C6C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v48[0] = v37;
    *v36 = 136446210;
    v50 = v44;
    v51 = v43;
    v52 = v33;
    sub_1D79F3B50(0, qword_1EE0BD618, &type metadata for ItemDurationSnapshot, MEMORY[0x1E69E6720]);
    v38 = sub_1D7D312FC();
    v40 = sub_1D7B06D4C(v38, v39, v48);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1D7987000, v34, v35, "NowPlayingTimeControl setCurrentTime previous snapshot: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1DA7102E0](v37, -1, -1);
    MEMORY[0x1DA7102E0](v36, -1, -1);
  }

  v30(v12, v47);
  sub_1D7D2828C();
  *&v50 = v41;
  *(&v50 + 1) = a3;
  *&v51 = a2;
  *(&v51 + 1) = a4;
  v52 = v45 & 1;
  sub_1D79F2B44(&v50);
  if ((*(v5 + OBJC_IVAR___NANowPlayingTimeControl__tracking) & 1) == 0)
  {
    sub_1D79F2E28();
    v42 = v31[1];
    v48[0] = *v31;
    v48[1] = v42;
    v49 = *(v31 + 32);
    sub_1D79F1134(v48);
  }
}

unint64_t sub_1D79F3A5C()
{
  result = qword_1EE0BB128;
  if (!qword_1EE0BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB128);
  }

  return result;
}

void sub_1D79F3AB0()
{
  if (!qword_1EE0BE810)
  {
    sub_1D798F168(255, &qword_1EE0BE7B0);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE810);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D79F3B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D79F3BA0()
{
  result = qword_1EE0BAFB0;
  if (!qword_1EE0BAFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BAFB0);
  }

  return result;
}

unint64_t sub_1D79F3BF4()
{
  result = qword_1EE0BAFA0;
  if (!qword_1EE0BAFA0)
  {
    sub_1D7D30F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BAFA0);
  }

  return result;
}

void sub_1D79F3C54()
{
  if (!qword_1EE0BE900)
  {
    sub_1D79F3CAC();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE900);
    }
  }
}

unint64_t sub_1D79F3CAC()
{
  result = qword_1EE0BFC20;
  if (!qword_1EE0BFC20)
  {
    sub_1D798F168(255, &unk_1EE0BFC30);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE0BFC20);
  }

  return result;
}

id sub_1D79F3D08()
{
  v1 = v0;
  sub_1D79F470C(0, &unk_1EE0BF5A0, MEMORY[0x1E69B65A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v41 - v4;
  v6 = sub_1D7D2F27C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D3003C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 component];
  if (result)
  {
    v50 = &unk_1F532DE30;
    v18 = swift_dynamicCastObjCProtocolConditional();
    if (!v18)
    {
      return swift_unknownObjectRelease();
    }

    v19 = v18;
    v46 = v12;
    v47 = v11;
    v48 = v7;
    v49 = v6;
    v20 = [v1 contentView];
    v21 = *&v1[OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_articleThumbnailView];
    [v20 addSubview_];

    v22 = [v1 contentView];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [v21 setFrame_];
    [v21 layoutIfNeeded];
    v31 = *&v1[OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_linkedContentProvider];
    v32 = [v19 articleIdentifier];
    if (!v32)
    {
      sub_1D7D3034C();
      v32 = sub_1D7D3031C();
    }

    v33 = [v31 headlineForIdentifier_];

    if (v33)
    {
      v34 = [v1 contentView];
      [v34 bounds];

      if ([v19 showLayeredThumbnail])
      {
        UIAccessibilityIsReduceMotionEnabled();
      }

      sub_1D7D3002C();
      swift_getObjectType();
      sub_1D7D30EFC();
      if ([v19 showLayeredThumbnail])
      {
        if (!UIAccessibilityIsReduceMotionEnabled())
        {
          sub_1D79F470C(0, &qword_1EC9E1E18, MEMORY[0x1E69B6480], MEMORY[0x1E69E6F90]);
          v45 = sub_1D7D2F88C();
          v35 = *(v45 - 8);
          v44 = *(v35 + 72);
          v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_1D7D3B4E0;
          v42 = v37 + v36;
          v43 = v21;
          v38 = *(v35 + 104);
          v39 = v45;
          v38();
          (v38)(v42 + v44, *MEMORY[0x1E69B6470], v39);
        }
      }

      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_articleThumbnailViewRenderer], *&v1[OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_articleThumbnailViewRenderer + 24]);
      v40 = sub_1D7D2FB6C();
      (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
      sub_1D7D2FEBC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1D79F4680(v5);
      (*(v48 + 8))(v10, v49);
      return (*(v46 + 8))(v16, v47);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1D79F431C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_discardContents);
  result = [v0 component];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2)
    {
      v3 = [v2 articleIdentifier];
      sub_1D7D3034C();

      sub_1D7D2F66C();
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1D79F444C(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  result = objc_msgSendSuper2(&v9, sel_presentComponentWithChanges_, a1 & 0x10101);
  if (a1)
  {
    v8.receiver = v2;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_discardContents);
    if ([v2 component])
    {
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v7 = [v6 articleIdentifier];
        sub_1D7D3034C();

        sub_1D7D2F66C();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return [v2 renderContentsIfNeeded];
  }

  return result;
}

uint64_t sub_1D79F4680(uint64_t a1)
{
  sub_1D79F470C(0, &unk_1EE0BF5A0, MEMORY[0x1E69B65A0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D79F470C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s12NewsArticles22ArticleViewerBlueprintO0C4ItemV6TraitsO9hashValueSivg_0()
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](0);
  return sub_1D7D31ABC();
}

uint64_t sub_1D79F480C()
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](0);
  return sub_1D7D31ABC();
}

uint64_t sub_1D79F484C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 identifier];
  sub_1D7D3034C();

  sub_1D7D2930C();

  v9 = v19;
  if (v19 == 255)
  {
    v13 = sub_1D7D2927C();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v4;
    v14[4] = a2;
    v14[5] = a3;

    v15 = a1;

    v16 = sub_1D7D2949C();

    return v16;
  }

  else
  {
    v10 = v18;
    if (a3)
    {
      v17 = v18;
      v11 = v18;
      sub_1D79ECEAC(v18);
      Issue.with(feedItemIdentifier:)(a2, a3, &v18);
      sub_1D79F5950(v11, *(&v11 + 1), v9);
      sub_1D79ECEE4(v17);
      v10 = v18;
      v9 = v19;
    }

    v18 = v10;
    v19 = v9 & 1;
    sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D79F4A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 type];
  if (v7 == 1)
  {
    MEMORY[0x1EEE9AC00](1, v8);
    sub_1D79F5AE8(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    sub_1D7D294BC();
    *(swift_allocObject() + 16) = a1;
    v17 = a1;
    v15 = sub_1D7D2934C();
    type metadata accessor for IssueManager();
    v16 = sub_1D7D293BC();

    goto LABEL_5;
  }

  if (!v7)
  {
    MEMORY[0x1EEE9AC00](0, v8);
    sub_1D79F5AE8(v9, &qword_1EE0BB0E0, &type metadata for ANFIssuePage, MEMORY[0x1E69E62F8]);
    sub_1D7D294BC();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a3;
    v10[4] = a4;

    v11 = a1;
    v12 = sub_1D7D2934C();
    type metadata accessor for IssueManager();
    sub_1D7D293BC();

    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a3;
    v13[4] = a4;
    v14 = v11;

    v15 = sub_1D7D2934C();
    v16 = sub_1D7D2945C();

LABEL_5:

    return v16;
  }

  sub_1D79F5968();
  swift_allocError();
  sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D293FC();
}

uint64_t sub_1D79F4D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  sub_1D7D2930C();

  if (v13 == 255)
  {
    v7 = sub_1D7D2927C();
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    sub_1D79EB250();

    sub_1D7D2949C();

    v9 = sub_1D7D2934C();
    sub_1D7D293BC();

    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;

    v11 = sub_1D7D2934C();
    v12 = sub_1D7D293BC();

    return v12;
  }

  else
  {
    sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D79F4FD4(void **a1)
{
  v1 = *a1;

  sub_1D79ECEAC(v1);
  sub_1D7D2931C();
  sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D79ECEAC(v1);
  return sub_1D7D2940C();
}

uint64_t sub_1D79F50A8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*a1 + 16))
  {
    v4 = a3;

    v5 = [v4 identifier];
    sub_1D7D3034C();

    v6 = v4;

    sub_1D7D2931C();
    sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D79F5AE8(0, &qword_1EE0BF320, &type metadata for Article, MEMORY[0x1E69E62F8]);
    sub_1D7D294BC();
    *(swift_allocObject() + 16) = a3;
    v8 = a3;
    v9 = sub_1D7D2934C();
    type metadata accessor for IssueManager();
    v10 = sub_1D7D293BC();

    return v10;
  }
}

uint64_t sub_1D79F52B0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D79F5AE8(0, &qword_1EE0BF320, &type metadata for Article, MEMORY[0x1E69E62F8]);
  sub_1D7D294BC();
  *(swift_allocObject() + 16) = a3;
  v4 = a3;
  v5 = sub_1D7D2934C();
  type metadata accessor for IssueManager();
  v6 = sub_1D7D293BC();

  return v6;
}

uint64_t sub_1D79F53C8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BEDC(0, v5, 0);
    v6 = v41;
    v7 = (v4 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v39 = v7[2];
      v40 = v10;
      v37 = v8;
      v38 = v9;
      sub_1D79F5B54(&v37, &v28);
      v41 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D7A5BEDC((v11 > 1), v12 + 1, 1);
        v6 = v41;
      }

      v28 = v37;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      sub_1D79F5BB0(&v28);
      *(v6 + 16) = v12 + 1;
      v13 = (v6 + 160 * v12);
      v14 = v29;
      v13[2] = v28;
      v13[3] = v14;
      v15 = v30;
      v16 = v31;
      v17 = v33;
      v13[6] = v32;
      v13[7] = v17;
      v13[4] = v15;
      v13[5] = v16;
      v18 = v34;
      v19 = v35;
      v20 = v36[0];
      *(v13 + 169) = *(v36 + 9);
      v13[9] = v19;
      v13[10] = v20;
      v13[8] = v18;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  v21 = a3;
  v22 = [v21 identifier];
  v23 = sub_1D7D3034C();
  v25 = v24;

  *&v28 = a3;
  *(&v28 + 1) = v6;
  LOBYTE(v29) = 0;
  *&v37 = v23;
  *(&v37 + 1) = v25;
  v26 = v21;

  sub_1D7D2931C();
  *&v28 = a3;
  *(&v28 + 1) = v6;
  LOBYTE(v29) = 0;
  sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D79F55B0(int a1, id a2)
{
  if ([a2 type] == 1)
  {
    MEMORY[0x1EEE9AC00](1, v2);
    sub_1D79F5D34();
    sub_1D7D294BC();
    v3 = sub_1D7D2934C();
    sub_1D79F5AE8(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    v4 = sub_1D7D2939C();

    return v4;
  }

  else
  {
    sub_1D79F5C48();
    swift_allocError();
    *v6 = 3;
    sub_1D79F5C9C();
    swift_allocObject();
    return sub_1D7D293FC();
  }
}

uint64_t sub_1D79F5710(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  v5 = [v4 identifier];
  sub_1D7D3034C();

  v6 = v4;

  sub_1D7D2931C();
  sub_1D79F5AE8(0, &qword_1EE0BB3E0, &type metadata for Issue, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D79F580C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

void *sub_1D79F5950(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D79ECEE4(a1);
  }

  return a1;
}

unint64_t sub_1D79F5968()
{
  result = qword_1EC9E1E20;
  if (!qword_1EC9E1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E20);
  }

  return result;
}

uint64_t sub_1D79F59F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + 136), *(v0[2] + 160));
  return sub_1D7A09FC8(v1, v2, v3);
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D79F5AE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D79F5BB8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 56), *(*(v0 + 16) + 80));
  v1 = off_1F529D4F8[0];
  type metadata accessor for IssueArticleService();
  return v1();
}

unint64_t sub_1D79F5C48()
{
  result = qword_1EC9E1E28;
  if (!qword_1EC9E1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E28);
  }

  return result;
}

void sub_1D79F5C9C()
{
  if (!qword_1EC9E1E30)
  {
    sub_1D79F5AE8(255, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1E30);
    }
  }
}

unint64_t sub_1D79F5D34()
{
  result = qword_1EC9E1E38;
  if (!qword_1EC9E1E38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E1E38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IssueManager.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IssueManager.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1D79F5E7C()
{
  result = qword_1EC9E1E40;
  if (!qword_1EC9E1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E40);
  }

  return result;
}

uint64_t ArticleViewerFeature.identifier.getter()
{
  v0 = sub_1D79F6204();

  return v0;
}

uint64_t ArticleViewerFeature.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D79F5FC8()
{
  v0 = sub_1D79F6204();

  return v0;
}

void *sub_1D79F6014@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D79F6040@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t static ContextArticleViewerFeature.== infix(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D7D28CBC();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v3 == sub_1D7D28CBC() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D79F6148(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D7D28CBC();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v3 == sub_1D7D28CBC() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D79F620C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D79F624C()
{
  result = qword_1EC9E1E48;
  if (!qword_1EC9E1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E48);
  }

  return result;
}

unint64_t sub_1D79F62A4()
{
  result = qword_1EC9E1E50;
  if (!qword_1EC9E1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E50);
  }

  return result;
}

unint64_t sub_1D79F62FC()
{
  result = qword_1EC9E1E58;
  if (!qword_1EC9E1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E58);
  }

  return result;
}

unint64_t sub_1D79F6354()
{
  result = qword_1EC9E1E60;
  if (!qword_1EC9E1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1E60);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D79F6448(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D79F6490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFReplicaPageOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PDFReplicaPageOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D79F657C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D79F65C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}