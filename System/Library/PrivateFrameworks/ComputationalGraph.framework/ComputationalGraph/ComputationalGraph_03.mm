uint64_t sub_1C6E1EC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E1EC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C6E1ED14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph29FeaturePreprocessingContainerC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_1C6E1EDB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6E1EE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6E1EE78(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
  }

  return result;
}

uint64_t sub_1C6E1EEB8(uint64_t a1)
{
  v2 = sub_1C6E34EEC(*(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input), *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input + 8), a1);
  v37 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 96);
  v38 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 112);
  *v39 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 128);
  *&v39[13] = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 141);
  v33 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 32);
  v34 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 48);
  v35 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 64);
  v36 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 80);
  v31 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer);
  v32 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 16);
  v3 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_codesLength);
  v5 = sub_1C6E95554(v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE83C0;
  v7 = *(v5 + 16);
  *(v6 + 32) = sub_1C6EE4E30();
  *(v6 + 40) = sub_1C6EE4E30();
  v8 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v9 = sub_1C6E35C78(v6, 131104);
  v27 = v3;
  v30 = *(v5 + 16);
  if (v30)
  {
    v10 = 0;
    v28 = v5;
    v29 = v5 + 32;
    while (v10 < *(v5 + 16))
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v4)
      {
        v11 = *(v29 + 8 * v10);
        if (v4 > *(v11 + 16))
        {
          goto LABEL_15;
        }

        v12 = *(v29 + 8 * v10);

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1C6EE83C0;
          *(v15 + 32) = sub_1C6EE4E30();
          *(v15 + 40) = sub_1C6EE4E30();
          v16 = *(v11 + 4 * v13 + 32);
          v17 = sub_1C6EE5550();
          sub_1C6E1F61C();
          v18 = sub_1C6EE4C90();

          [v9 setObject:v17 forKeyedSubscript:v18];

          v13 = v14;
        }

        while (v4 != v14);

        v5 = v28;
      }

      if (++v10 == v30)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    swift_once();
    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v25 = swift_allocObject();
    *(v25 + 16) = v9[89];
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C6DF10E0();
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    sub_1C6EE4730();

    return MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C70, &unk_1C6EE8400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6EE6590;
    v20 = *(v27 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output + 8);
    *(inited + 32) = *(v27 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output);
    *(inited + 40) = v20;
    *(inited + 48) = v9;

    v21 = v9;
    v22 = sub_1C6E0BB74(inited);
    swift_setDeallocating();
    sub_1C6E1F6C8(inited + 32, &qword_1EC1F7C78, &unk_1C6EE91B0);
    sub_1C6E2AAA8(v22);
    v24 = v23;
  }

  return v24;
}

uint64_t sub_1C6E1F2E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 96);
  v6[7] = v1;
  v7[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 128);
  *(v7 + 13) = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 141);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer);
  v6[1] = v4;
  sub_1C6E1F5C8(v6);
  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  return sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
}

uint64_t sub_1C6E1F38C()
{
  v1 = v0[3];

  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E1F6C8(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 96);
  v9[7] = v2;
  v10[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 128);
  *(v10 + 13) = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 141);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 32);
  v9[3] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer);
  v9[1] = v5;

  sub_1C6E1F5C8(v9);
  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WordPieceModelContainer()
{
  result = qword_1EC1F7C60;
  if (!qword_1EC1F7C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E1F51C()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C6E1F61C()
{
  result = qword_1EDEF6758;
  if (!qword_1EDEF6758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6758);
  }

  return result;
}

uint64_t sub_1C6E1F668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E1F6C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E1F728(uint64_t a1)
{
  v2 = v1;
  v43 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C6E15B30(0, v8, 0);
    v9 = v42;
    v39 = v5 + 32;
    v10 = (a1 + 40);
    v36 = v5;
    v37 = v4;
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *v10 >> 62;
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          memset(v41, 0, 14);
          v14 = v41;
          goto LABEL_20;
        }

        v38 = v9;
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);

        v17 = sub_1C6EE3F90();
        if (v17)
        {
          v18 = sub_1C6EE3FC0();
          if (__OFSUB__(v16, v18))
          {
            goto LABEL_39;
          }

          v19 = v15;
          v20 = v2;
          v17 += v16 - v18;
          v21 = v19 - v16;
          if (__OFSUB__(v19, v16))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v27 = v15;
          v20 = v2;
          v21 = v27 - v16;
          if (__OFSUB__(v27, v16))
          {
            goto LABEL_38;
          }
        }

        v9 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v28 = sub_1C6EE3FB0();
        if (v28 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v28;
        }
      }

      else
      {
        if (!v13)
        {
          v41[0] = *(v10 - 1);
          LOWORD(v41[1]) = v11;
          BYTE2(v41[1]) = BYTE2(v11);
          BYTE3(v41[1]) = BYTE3(v11);
          BYTE4(v41[1]) = BYTE4(v11);
          BYTE5(v41[1]) = BYTE5(v11);
          v14 = v41 + BYTE6(v11);
LABEL_20:
          sub_1C6E1FAE4(v41, v14, v12, v11);
          v25 = v12;
          v26 = v11;
          if (v2)
          {
            goto LABEL_35;
          }

          sub_1C6DF1134(v12, v11);
          goto LABEL_31;
        }

        v20 = v2;
        if (v12 >> 32 < v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v38 = v9;

        v17 = sub_1C6EE3F90();
        if (v17)
        {
          v22 = sub_1C6EE3FC0();
          if (__OFSUB__(v12, v22))
          {
            goto LABEL_40;
          }

          v17 += v12 - v22;
        }

        v9 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v23 = sub_1C6EE3FB0();
        if (v23 >= (v12 >> 32) - v12)
        {
          v24 = (v12 >> 32) - v12;
        }

        else
        {
          v24 = v23;
        }
      }

      v29 = v24 + v17;
      if (v17)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      sub_1C6E1FAE4(v17, v30, v12, v11);
      v2 = v20;
      v25 = v12;
      v26 = v11;
      if (v20)
      {
LABEL_35:
        sub_1C6DF1134(v25, v26);

        break;
      }

      sub_1C6DF1134(v12, v11);
      v4 = v37;
      v9 = v38;
      v5 = v36;
LABEL_31:
      v42 = v9;
      v32 = *(v9 + 16);
      v31 = *(v9 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C6E15B30(v31 > 1, v32 + 1, 1);
        v9 = v42;
      }

      v10 += 2;
      *(v9 + 16) = v32 + 1;
      (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, v40, v4);
      --v8;
    }

    while (v8);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1C6E1FAE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6B60;
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v8)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

LABEL_10:
  *(v7 + 32) = sub_1C6EE4E30();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE6B60;
  sub_1C6E20190(0, &qword_1EDEF6758, 0x1E696AD98);
  *(v9 + 32) = sub_1C6EE4F90();
  v10 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v11 = sub_1C6EE4C90();

  v12 = sub_1C6EE4C90();

  v22[0] = 0;
  v13 = [v10 initWithDataPointer:a1 shape:v11 dataType:65552 strides:v12 deallocator:0 error:v22];

  v14 = v22[0];
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6EE6B60;
    *(v15 + 32) = v13;
    sub_1C6E20190(0, &qword_1EDEF6788, 0x1E695FED0);
    v16 = v14;
    v17 = v13;
    v18 = sub_1C6EE4C90();

    v19 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v18 alongAxis:0 dataType:65568];

    sub_1C6EE4820();
  }

  else
  {
    v20 = v22[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6E1FDB0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
  inited = swift_initStackObject();
  v23 = xmmword_1C6EE6590;
  *(inited + 16) = xmmword_1C6EE6590;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_1C6E00D18(a1, a2);
  v14 = sub_1C6E1F728(inited);
  swift_setDeallocating();
  sub_1C6E200D8(inited + 32);
  if (v2)
  {
    return v10;
  }

  if (!*(v14 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v22[1] = 0;
  (*(v6 + 16))(v10, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v12, v10, v5);
  v15 = sub_1C6EE47F0();
  result = sub_1C6EE4810();
  if (result < v15)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v22[0] = v6;
    if (v15 == result)
    {
      v10 = MEMORY[0x1E69E7CC0];
LABEL_6:
      (*(v22[0] + 8))(v12, v5);
      return v10;
    }

    if (v15 < result)
    {
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
        v18 = swift_allocObject();
        *(v18 + 16) = v23;
        *(v18 + 32) = v15;
        sub_1C6E2012C();
        sub_1C6EE4830();

        v19 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C6ED95D8(0, *(v10 + 2) + 1, 1, v10);
        }

        v21 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v21 >= v20 >> 1)
        {
          v10 = sub_1C6ED95D8((v20 > 1), v21 + 1, 1, v10);
        }

        ++v15;
        *(v10 + 2) = v21 + 1;
        *&v10[4 * v21 + 32] = v19;
      }

      while (v17 != v15);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6E2012C()
{
  result = qword_1EDEF6868;
  if (!qword_1EDEF6868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6868);
  }

  return result;
}

uint64_t sub_1C6E20190(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C6E201D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  v10 = MEMORY[0x1E69E7CC8];
  v80 = MEMORY[0x1E69E7CC8];
  v11 = *(v9 + 16);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (i >= *(v9 + 16))
      {
        goto LABEL_33;
      }

      sub_1C6E00BFC(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v8);
      sub_1C6E207D0(&v80, v8, a1, v2);
      sub_1C6E20D64(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    }

    v10 = v80;
  }

  v13 = (*(**(v2 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_modelContainer) + 120))(v10);

  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v75 = OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_outputAliasMap;
  v76 = v13;
  v18 = (v15 + 63) >> 6;

  v8 = 0;
  v70 = MEMORY[0x1E69E7CC8];
  v71 = xmmword_1C6EE6590;
  v72 = v18;
  v73 = v13 + 64;
  v74 = v2;
  if (v17)
  {
    while (1)
    {
      v19 = v2;
LABEL_14:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = v21 | (v8 << 6);
      v23 = (*(v76 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v76 + 56) + 24 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v19 + v75);
      v31 = *(v30 + 16);

      sub_1C6E00CBC(v27, v28, v29);

      v77 = v27;
      v79 = v28;
      v78 = v29;
      sub_1C6E00CBC(v27, v28, v29);
      if (!v31 || (v32 = sub_1C6DEC784(v24, v25), (v33 & 1) == 0))
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v34 = swift_allocObject();
        *(v34 + 16) = v71;
        *(v34 + 56) = MEMORY[0x1E69E6158];
        *(v34 + 64) = sub_1C6DF10E0();
        *(v34 + 32) = v24;
        *(v34 + 40) = v25;
        sub_1C6EE4730();

        v35 = v77;
        v36 = v79;
        v37 = v78;
        sub_1C6E00C60(v77, v79, v78);

        sub_1C6E00C60(v35, v36, v37);
        v2 = v74;
        goto LABEL_19;
      }

      v38 = v32;

      v39 = (*(v30 + 56) + 16 * v38);
      v41 = *v39;
      v40 = v39[1];
      v42 = v77;
      v43 = v78;
      sub_1C6E00CBC(v77, v79, v78);

      v44 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v44;
      v46 = sub_1C6DEC784(v41, v40);
      v48 = *(v44 + 16);
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        goto LABEL_34;
      }

      v52 = *(v44 + 24);
      v69 = v41;
      if (v52 < v51)
      {
        break;
      }

      v2 = v74;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v60 = v46;
      v61 = v47;
      sub_1C6E09928();
      v46 = v60;
      v43 = v78;
      if (v61)
      {
LABEL_27:
        v54 = v46;

        v70 = v80;
        v55 = v80[7] + 24 * v54;
        v56 = *v55;
        v57 = *(v55 + 8);
        v58 = *(v55 + 16);
        v59 = v79;
        *v55 = v42;
        *(v55 + 8) = v59;
        *(v55 + 16) = v43;
        sub_1C6E00C60(v56, v57, v58);
        sub_1C6E00C60(v42, v59, v43);

        sub_1C6E00C60(v42, v59, v43);
        goto LABEL_19;
      }

LABEL_29:
      v62 = v80;
      v80[(v46 >> 6) + 8] |= 1 << v46;
      v63 = (v62[6] + 16 * v46);
      *v63 = v69;
      v63[1] = v40;
      v64 = v62[7] + 24 * v46;
      v65 = v79;
      *v64 = v42;
      *(v64 + 8) = v65;
      *(v64 + 16) = v43;
      sub_1C6E00C60(v42, v65, v43);

      sub_1C6E00C60(v42, v65, v43);
      v66 = v62[2];
      v50 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v50)
      {
        goto LABEL_35;
      }

      v70 = v62;
      v62[2] = v67;
LABEL_19:
      v18 = v72;
      v14 = v73;
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v70) = v47;
    sub_1C6E06D1C(v51, isUniquelyReferenced_nonNull_native);
    v46 = sub_1C6DEC784(v41, v40);
    v53 = v47 & 1;
    LOBYTE(v47) = v70;
    v2 = v74;
    if ((v70 & 1) != v53)
    {
      goto LABEL_36;
    }

LABEL_26:
    if (v47)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

LABEL_10:
  while (1)
  {
    v20 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v70;
    }

    v17 = *(v14 + 8 * v20);
    ++v8;
    if (v17)
    {
      v19 = v2;
      v8 = v20;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  sub_1C6E20D64(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  __break(1u);
LABEL_36:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E207D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  if (*(a3 + 16) && (v9 = sub_1C6DEC784(*a2, a2[1]), (v10 & 1) != 0))
  {
    v11 = *(a3 + 56) + 24 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(a4 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_inputAliasMap);
    v16 = *(v15 + 16);
    sub_1C6E00CBC(*v11, v13, v14);
    if (v16 && (v17 = sub_1C6DEC784(v5, v4), (v18 & 1) != 0))
    {
      v19 = (*(v15 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];

      v22 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *a1;
      sub_1C6E08DA4(v12, v13, v14, v20, v21, isUniquelyReferenced_nonNull_native);

      *a1 = v27;
    }

    else
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1C6EE6590;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1C6DF10E0();
      *(v26 + 32) = v5;
      *(v26 + 40) = v4;

      sub_1C6EE4730();

      return sub_1C6E00C60(v12, v13, v14);
    }
  }

  else
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C6EE6590;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C6DF10E0();
    *(v25 + 32) = v5;
    *(v25 + 40) = v4;

    sub_1C6EE4730();
  }

  return result;
}

void *sub_1C6E20AB0(void *a1, uint64_t (*a2)(uint64_t *, void *, uint64_t, uint64_t))
{
  v3 = *(v2 + *a1);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C6E03038(*(v3 + 16), 0);
  v7 = a2(&v9, v6 + 4, v4, v3);

  sub_1C6E20D5C();
  if (v7 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1C6E20B78()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_modelContainer);

  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_inputAliasMap);

  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_outputAliasMap);
}

uint64_t sub_1C6E20BC8()
{
  v1 = v0[3];

  sub_1C6E20D64(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E00DCC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_modelContainer);

  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_inputAliasMap);

  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_outputAliasMap);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AliasedModelContainer()
{
  result = qword_1EDEF8208;
  if (!qword_1EDEF8208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E20D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E20DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v5 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0) - 8);
  v6 = *(v5 + 72);
  v7 = (((*(v5 + 80) + 32) & ~*(v5 + 80)) + a1 + 32);
  while (1)
  {
    v8 = *(v7 - 1);
    if (*v7 != 1)
    {
      break;
    }

    result = 0;
    v11 = *(v7 - 4);
    v10 = *(v7 - 3);
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (v8 != 1)
        {
          return result;
        }

LABEL_24:
        if (!*(a2 + 16))
        {
          return 0;
        }

        v25 = *(v7 - 3);

        v26 = sub_1C6DEC784(v11, v10);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          return 0;
        }

        v29 = *(a2 + 56) + 24 * v26;
        v30 = (*(v29 + 8) >> 60) & 3;
        v31 = *(v29 + 16) ? 4 : 0;
        if ((v30 | v31) != 3)
        {
          return 0;
        }

        goto LABEL_4;
      }

      if (v8 != 2)
      {
        return result;
      }

      if (!*(a2 + 16))
      {
        return 0;
      }

      v39 = *(v7 - 3);

      v40 = sub_1C6DEC784(v11, v10);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        return 0;
      }

      v43 = *(a2 + 56) + 24 * v40;
      v44 = (*(v43 + 8) >> 60) & 3;
      v45 = *(v43 + 16) ? 4 : 0;
      if ((v44 | v45) != 1)
      {
        return 0;
      }
    }

    else if (v8 <= 5)
    {
      if (v8 != 4)
      {
        return result;
      }

      if (!*(a2 + 16))
      {
        return 0;
      }

      v32 = *(v7 - 3);

      v33 = sub_1C6DEC784(v11, v10);
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        return 0;
      }

      v36 = *(a2 + 56) + 24 * v33;
      v37 = (*(v36 + 8) >> 60) & 3;
      v38 = *(v36 + 16) ? 4 : 0;
      if (v37 | v38)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 6)
      {
        goto LABEL_24;
      }

      v12 = *(a2 + 16);
      v13 = *(v7 - 3);

      if (!v12)
      {
        goto LABEL_51;
      }

      v14 = sub_1C6DEC784(v11, v10);
      if ((v15 & 1) != 0 && ((v16 = *(a2 + 56) + 24 * v14, v17 = (*(v16 + 8) >> 60) & 3, !*(v16 + 16)) ? (v18 = 0) : (v18 = 4), (v17 | v18) == 4))
      {
      }

      else
      {
        if (!*(a2 + 16))
        {
          goto LABEL_51;
        }

        v19 = sub_1C6DEC784(v11, v10);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          return 0;
        }

        v22 = *(a2 + 56) + 24 * v19;
        v23 = (*(v22 + 8) >> 60) & 3;
        v24 = *(v22 + 16) ? 4 : 0;
        if ((v23 | v24) != 5)
        {
          return 0;
        }
      }
    }

LABEL_4:
    v7 += v6;
    if (!--v2)
    {
      return 1;
    }
  }

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4ED0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E6530];
  *(v46 + 16) = xmmword_1C6EE6590;
  v48 = MEMORY[0x1E69E65A8];
  *(v46 + 56) = v47;
  *(v46 + 64) = v48;
  *(v46 + 32) = v8;
  sub_1C6EE4730();
LABEL_51:

  return 0;
}

uint64_t sub_1C6E21148(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1C6E15B50(0, v1, 0);
  v2 = v37;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1C6EE50D0();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v30 = v3 + 72;
  v31 = v1;
  v32 = v9;
  v33 = v3 + 64;
  v34 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v35 = v8;
    v12 = *(v3 + 56);
    v13 = (*(v3 + 48) + 16 * v7);
    v14 = v13[1];
    v36 = *v13;
    v15 = v12 + 24 * v7;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    sub_1C6E00CBC(v16, v17, v18);

    sub_1C6E00CBC(v16, v17, v18);

    result = sub_1C6E00C60(v16, v17, v18);
    v20 = *(v37 + 16);
    v19 = *(v37 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      result = sub_1C6E15B50((v19 > 1), v20 + 1, 1);
      v21 = v20 + 1;
    }

    *(v37 + 16) = v21;
    v22 = v37 + 40 * v20;
    *(v22 + 32) = v36;
    *(v22 + 40) = v14;
    *(v22 + 48) = v16;
    *(v22 + 56) = v17;
    *(v22 + 64) = v18;
    v3 = v34;
    v10 = 1 << *(v34 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v33;
    v23 = *(v33 + 8 * v11);
    if ((v23 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v32;
    if (v32 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v7 & 0x3F));
    if (v24)
    {
      v10 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v11 << 6;
      v26 = v11 + 1;
      v27 = (v30 + 8 * v11);
      while (v26 < (v10 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1C6E2B8CC(v7, v32, 0);
          v10 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1C6E2B8CC(v7, v32, 0);
    }

LABEL_4:
    v8 = v35 + 1;
    v7 = v10;
    if (v35 + 1 == v31)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

double Features.subscript.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_1C6E0231C(*a1, a1[1]), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 24 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    *a2 = *v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;

    sub_1C6E00CBC(v8, v9, v10);
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1C6EE7FC0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t Features.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  if ((~v3 & 0x3000000000000000) != 0 || v4 != 255)
  {
    v8 = *a1;
    v9 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *v2;
    *v2 = 0x8000000000000000;
    sub_1C6E08F7C(v8, v3, v4 & 1, v6, v5, isUniquelyReferenced_nonNull_native);

    *v2 = v11[0];
  }

  else
  {
    sub_1C6E29064(*a2, a2[1], v11);

    return sub_1C6E0D408(v11[0], v11[1], v12);
  }

  return result;
}

void *Features.keys.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C6E0304C(v2, 0);
  v4 = sub_1C6E0AE6C(&v6, v3 + 4, v2, v1);

  sub_1C6E0D45C();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t FeatureKey.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static FeatureKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0();
  }
}

uint64_t sub_1C6E216B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6EE54B0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6E21744(uint64_t a1)
{
  v2 = sub_1C6E2AD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E21780(uint64_t a1)
{
  v2 = sub_1C6E2AD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C80, &qword_1C6EE8430);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD0C();
  sub_1C6EE55C0();
  sub_1C6EE5410();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FeatureKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C6EE4B30();
}

uint64_t FeatureKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6EE5580();
  sub_1C6EE4B30();
  return sub_1C6EE55A0();
}

uint64_t FeatureKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C90, &qword_1C6EE8438);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD0C();
  sub_1C6EE55B0();
  if (!v2)
  {
    v11 = sub_1C6EE53A0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6E21AD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C80, &qword_1C6EE8430);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD0C();
  sub_1C6EE55C0();
  sub_1C6EE5410();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C6E21C14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6EE5580();
  sub_1C6EE4B30();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E21C60()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C6EE4B30();
}

uint64_t sub_1C6E21C68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6EE5580();
  sub_1C6EE4B30();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E21CB0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6EE54B0();
  }
}

BOOL sub_1C6E21CEC(uint64_t a1, uint64_t a2)
{
  v116[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_157:
    v22 = 1;
    goto LABEL_164;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_163;
  }

  v3 = 0;
  v111 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (2)
  {
    if (v7)
    {
      v9 = __clz(__rbit64(v7));
      v113 = (v7 - 1) & v7;
      goto LABEL_13;
    }

    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_167;
      }

      if (v3 >= v8)
      {
        goto LABEL_157;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v113 = (v11 - 1) & v11;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a1 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    v114 = v17;
    v20 = v17;
    v21 = v19;
    sub_1C6E00CBC(v18, v20, v19);
    v22 = v15 == 0;
    if (!v15)
    {
      goto LABEL_164;
    }

    v23 = sub_1C6E0231C(v14, v15);
    v25 = v24;

    v26 = v21;
    if ((v25 & 1) == 0)
    {
      goto LABEL_162;
    }

    v27 = *(v2 + 56) + 24 * v23;
    v29 = *v27;
    v28 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (v30)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    v32 = (v28 >> 60) & 3 | v31;
    if (v32 > 2)
    {
      if (v32 <= 4)
      {
        v47 = v32 == 3;
        v33 = (v114 >> 60) & 3;
        if (!v47)
        {
          if (v21)
          {
            v62 = 4;
          }

          else
          {
            v62 = 0;
          }

          if ((v62 | v33) != 4)
          {
            goto LABEL_159;
          }

          v63 = *(v29 + 16);
          if (v63 != *(v18 + 16))
          {
            goto LABEL_159;
          }

          if (v63)
          {
            if (v29 == v18)
            {
              v64 = v30;
              v65 = v28;

              v66 = v18;
            }

            else
            {
              v73 = (v29 + 32);
              v74 = (v18 + 32);
              do
              {
                if (*v73 != *v74)
                {
                  goto LABEL_158;
                }

                ++v73;
                ++v74;
                --v63;
              }

              while (v63);
              v64 = v30;
              v65 = v28;
              sub_1C6E00CBC(v29, v28, v30);
              v66 = v29;
            }
          }

          else
          {
            v64 = v30;
            v65 = v28;
          }

          sub_1C6E00C60(v66, v65, v64);
          v52 = v18;
          v70 = v114;
LABEL_138:
          sub_1C6E00C60(v52, v70, v26);
          a1 = v111;
          v2 = a2;
          v7 = v113;
          continue;
        }

        if (v21)
        {
          v34 = 4;
        }

        else
        {
          v34 = 0;
        }

        if ((v34 | v33) == 3)
        {
          v35 = v30;
          v36 = v28;
          sub_1C6E00CBC(v29, v28, v30);
          sub_1C6E00CBC(v29, v36, v35);
          sub_1C6E00CBC(v18, v114, v21);
          v109 = sub_1C6E597C0(v29, v18);
          sub_1C6E00C60(v18, v114, v21);
          sub_1C6E00C60(v29, v36, v35);
          sub_1C6E00C60(v29, v36, v35);
          sub_1C6E00C60(v18, v114, v21);
          a1 = v111;
          v2 = a2;
          v7 = v113;
          if (v109)
          {
            continue;
          }

          goto LABEL_164;
        }

LABEL_159:
        v98 = v30;
        v99 = v28;

        goto LABEL_160;
      }

      v37 = v114;
      if (v32 != 5)
      {
        if (v21)
        {
          v67 = 4;
        }

        else
        {
          v67 = 0;
        }

        if ((v67 | (v114 >> 60) & 3) == 6 && v18 == 0 && v114 == 0x2000000000000000)
        {
          sub_1C6E00C60(v29, v28, v30);
          v52 = 0;
          v70 = 0x2000000000000000;
          goto LABEL_138;
        }

        goto LABEL_161;
      }

      v43 = v28 & 0xCFFFFFFFFFFFFFFFLL;
      if (v21)
      {
        v44 = 4;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 | (v114 >> 60) & 3) == 5)
      {
        v45 = v28 >> 62;
        v46 = v114 >> 62;
        if (v28 >> 62 == 3)
        {
          if (v29)
          {
            v47 = 0;
          }

          else
          {
            v47 = v43 == 0xC000000000000000;
          }

          v48 = 0;
          v49 = v47 && v114 >> 62 == 3;
          if (v49 && !v18 && (v114 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
          {
            v50 = v30;
            v51 = v28;
            sub_1C6E00D18(0, 0xC000000000000000);
            sub_1C6E00C60(0, v51, v50);
            v52 = 0;
LABEL_137:
            v70 = v37;
            goto LABEL_138;
          }

          goto LABEL_119;
        }

        if (v45 <= 1)
        {
          if (!v45)
          {
            v48 = BYTE6(v28);
            goto LABEL_119;
          }

          LODWORD(v48) = HIDWORD(v29) - v29;
          if (!__OFSUB__(HIDWORD(v29), v29))
          {
            v48 = v48;
            goto LABEL_119;
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
        }

        if (v45 != 2)
        {
          v48 = 0;
          goto LABEL_119;
        }

        v76 = *(v29 + 16);
        v75 = *(v29 + 24);
        v77 = __OFSUB__(v75, v76);
        v48 = v75 - v76;
        if (v77)
        {
          goto LABEL_170;
        }

LABEL_119:
        if (v46 <= 1)
        {
          if (!v46)
          {
            v78 = BYTE6(v114);
            goto LABEL_128;
          }

          LODWORD(v78) = HIDWORD(v18) - v18;
          if (!__OFSUB__(HIDWORD(v18), v18))
          {
            v78 = v78;
            goto LABEL_128;
          }

LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (v46 == 2)
        {
          v80 = *(v18 + 16);
          v79 = *(v18 + 24);
          v77 = __OFSUB__(v79, v80);
          v78 = v79 - v80;
          if (v77)
          {
            goto LABEL_168;
          }

LABEL_128:
          if (v48 == v78)
          {
            if (v48 >= 1)
            {
              v110 = v114 & 0xCFFFFFFFFFFFFFFFLL;
              if (v45 > 1)
              {
                if (v45 != 2)
                {
                  memset(v116, 0, 14);
                  v95 = v30;
                  v96 = v28;
                  sub_1C6E00CBC(v29, v28, v30);
                  sub_1C6E00CBC(v29, v96, v95);
                  sub_1C6E00CBC(v18, v114, v26);
                  sub_1C6E6B0F4(v116, v18, v110, &v115);
                  sub_1C6E00C60(v18, v114, v26);
                  sub_1C6E00C60(v29, v96, v95);
                  sub_1C6E00C60(v29, v96, v95);
                  sub_1C6E00C60(v18, v114, v26);
                  a1 = v111;
                  v2 = a2;
                  v7 = v113;
                  if (v115)
                  {
                    continue;
                  }

                  goto LABEL_164;
                }

                v103 = *(v29 + 24);
                v105 = *(v29 + 16);
                v84 = v30;
                v108 = v28;
                sub_1C6E00CBC(v29, v28, v30);
                v106 = v29;
                v107 = v84;
                sub_1C6E00CBC(v29, v108, v84);
                sub_1C6E00CBC(v18, v114, v21);
                v85 = sub_1C6EE3F90();
                if (v85)
                {
                  v86 = v85;
                  v87 = sub_1C6EE3FC0();
                  v88 = v105;
                  if (__OFSUB__(v105, v87))
                  {
                    goto LABEL_173;
                  }

                  v102 = v105 - v87 + v86;
                }

                else
                {
                  v102 = 0;
                  v88 = v105;
                }

                if (__OFSUB__(v103, v88))
                {
                  goto LABEL_172;
                }

                sub_1C6EE3FB0();
                v97 = v102;
              }

              else
              {
                if (!v45)
                {
                  v116[0] = v29;
                  LOWORD(v116[1]) = v28;
                  BYTE2(v116[1]) = BYTE2(v28);
                  BYTE3(v116[1]) = BYTE3(v28);
                  BYTE4(v116[1]) = BYTE4(v28);
                  BYTE5(v116[1]) = BYTE5(v28);
                  v81 = v30;
                  v82 = v28;
                  sub_1C6E00CBC(v29, v28, v30);
                  sub_1C6E00CBC(v29, v82, v81);
                  sub_1C6E00CBC(v18, v114, v26);
                  sub_1C6E6B0F4(v116, v18, v110, &v115);
                  sub_1C6E00C60(v18, v114, v26);
                  sub_1C6E00C60(v29, v82, v81);
                  sub_1C6E00C60(v29, v82, v81);
                  sub_1C6E00C60(v18, v114, v26);
                  v83 = v115;
                  goto LABEL_155;
                }

                v104 = v29;
                if (v29 >> 32 < v29)
                {
                  goto LABEL_171;
                }

                v89 = v30;
                v90 = v28;
                sub_1C6E00CBC(v29, v28, v30);
                v106 = v29;
                v107 = v89;
                sub_1C6E00CBC(v29, v90, v89);
                sub_1C6E00CBC(v18, v114, v21);
                v91 = sub_1C6EE3F90();
                v108 = v90;
                if (v91)
                {
                  v92 = v91;
                  v93 = sub_1C6EE3FC0();
                  if (__OFSUB__(v104, v93))
                  {
                    goto LABEL_174;
                  }

                  v94 = v104 - v93 + v92;
                }

                else
                {
                  v94 = 0;
                }

                sub_1C6EE3FB0();
                v97 = v94;
              }

              sub_1C6E6B0F4(v97, v18, v110, v116);
              sub_1C6E00C60(v18, v114, v21);
              sub_1C6E00C60(v106, v108, v107);
              sub_1C6E00C60(v106, v108, v107);
              sub_1C6E00C60(v18, v114, v21);
              v83 = v116[0];
LABEL_155:
              a1 = v111;
              v2 = a2;
              v7 = v113;
              if (v83)
              {
                continue;
              }

              goto LABEL_164;
            }

            goto LABEL_134;
          }
        }

        else if (!v48)
        {
LABEL_134:
          v59 = v30;
          v60 = v28;
          sub_1C6E00D18(v29, v43);
LABEL_135:
          v61 = v29;
          goto LABEL_136;
        }
      }

      v98 = v30;
      v99 = v28;
      sub_1C6E00D18(v29, v43);
      goto LABEL_160;
    }

    break;
  }

  if (!v32)
  {
    v37 = v114;
    if (v21)
    {
      v53 = 4;
    }

    else
    {
      v53 = 0;
    }

    if (v53 | (v114 >> 60) & 3)
    {
      goto LABEL_159;
    }

    v54 = *(v29 + 16);
    if (v54 != *(v18 + 16))
    {
      goto LABEL_159;
    }

    if (v54)
    {
      if (v29 == v18)
      {
        goto LABEL_77;
      }

      v55 = (v29 + 32);
      v56 = (v18 + 32);
      do
      {
        if (*v55 != *v56)
        {
          goto LABEL_158;
        }

        ++v55;
        ++v56;
        --v54;
      }

      while (v54);
LABEL_106:
      v59 = v30;
      v60 = v28;
      sub_1C6E00CBC(v29, v28, v30);
      goto LABEL_135;
    }

LABEL_78:
    v59 = v30;
    v60 = v28;

LABEL_136:
    sub_1C6E00C60(v61, v60, v59);
    v52 = v18;
    goto LABEL_137;
  }

  v47 = v32 == 1;
  v37 = v114;
  v38 = (v114 >> 60) & 3;
  if (v47)
  {
    if (v21)
    {
      v39 = 4;
    }

    else
    {
      v39 = 0;
    }

    if ((v39 | v38) != 1)
    {
      goto LABEL_159;
    }

    v40 = *(v29 + 16);
    if (v40 != *(v18 + 16))
    {
      goto LABEL_159;
    }

    if (v40)
    {
      if (v29 == v18)
      {
        goto LABEL_77;
      }

      v41 = (v29 + 32);
      v42 = (v18 + 32);
      while (*v41 == *v42)
      {
        ++v41;
        ++v42;
        if (!--v40)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_158;
    }

    goto LABEL_78;
  }

  if (v21)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if ((v57 | v38) != 2)
  {
    goto LABEL_159;
  }

  v58 = *(v29 + 16);
  if (v58 != *(v18 + 16))
  {
    goto LABEL_159;
  }

  if (!v58)
  {
    goto LABEL_78;
  }

  if (v29 == v18)
  {
LABEL_77:
    v59 = v30;
    v60 = v28;

    v61 = v18;
    goto LABEL_136;
  }

  v71 = (v29 + 32);
  v72 = (v18 + 32);
  while (*v71 == *v72)
  {
    ++v71;
    ++v72;
    if (!--v58)
    {
      goto LABEL_106;
    }
  }

LABEL_158:
  v98 = v30;
  v99 = v28;
  sub_1C6E00CBC(v29, v28, v30);
LABEL_160:
  v28 = v99;
  v30 = v98;
LABEL_161:
  sub_1C6E00C60(v29, v28, v30);
LABEL_162:
  sub_1C6E00C60(v18, v114, v21);
LABEL_163:
  v22 = 0;
LABEL_164:
  v100 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1C6E227C4(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v4 = *(v91 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v74 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D20, &qword_1C6EE94E0);
  v11 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v74 - v12;
  v82 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v89 = *(v82 - 8);
  v14 = *(v89 + 64);
  v15 = MEMORY[0x1EEE9AC00](v82);
  v90 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D28, &qword_1C6EE8970);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v23);
  v84 = (&v74 - v27);
  v85 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v85 + 16))
  {
    return 0;
  }

  v28 = 0;
  v78 = a1;
  v29 = *(a1 + 64);
  v75 = a1 + 64;
  v76 = v10;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v88 = (v4 + 48);
  v34 = &qword_1C6EE7840;
  v79 = v25;
  v80 = v33;
  while (v32)
  {
    v87 = (v32 - 1) & v32;
    v38 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v44 = (*(v78 + 48) + 16 * v38);
    v46 = *v44;
    v45 = v44[1];
    v47 = v81;
    sub_1C6E2B79C(*(v78 + 56) + *(v89 + 72) * v38, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v49 = *(v48 + 48);
    *v25 = v46;
    v25[1] = v45;
    sub_1C6E2B804(v47, v25 + v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    (*(*(v48 - 8) + 56))(v25, 0, 1, v48);

    v41 = v84;
LABEL_18:
    sub_1C6E2B734(v25, v41, &qword_1EC1F7D28, &qword_1C6EE8970);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v51 = (*(*(v50 - 8) + 48))(v41, 1, v50);
    v86 = v51 == 1;
    if (v51 == 1)
    {
      return v86;
    }

    v52 = v34;
    v53 = v88;
    v54 = v13;
    v55 = v91;
    v56 = *(v50 + 48);
    v57 = *v41;
    v58 = v41[1];
    sub_1C6E2B804(v41 + v56, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v59 = v85;
    v60 = sub_1C6DEC784(v57, v58);
    v61 = v19;
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      goto LABEL_31;
    }

    v64 = v90;
    sub_1C6E2B79C(*(v59 + 56) + *(v89 + 72) * v60, v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v65 = *(v83 + 48);
    v13 = v54;
    v66 = v54;
    v34 = v52;
    sub_1C6E2B624(v64, v66, &qword_1EC1F7A98, v52);
    sub_1C6E2B624(v61, &v13[v65], &qword_1EC1F7A98, v52);
    v67 = *v53;
    v19 = v61;
    if ((*v53)(v13, 1, v55) == 1)
    {
      if (v67(&v13[v65], 1, v91) != 1)
      {
        goto LABEL_29;
      }

      v34 = v52;
      sub_1C6E2B68C(v13, &qword_1EC1F7A98, v52);
    }

    else
    {
      v68 = v13;
      v69 = v13;
      v70 = v76;
      sub_1C6E2B624(v68, v76, &qword_1EC1F7A98, v52);
      if (v67((v69 + v65), 1, v91) == 1)
      {
        sub_1C6E2B86C(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        v13 = v69;
        v19 = v61;
LABEL_29:
        sub_1C6E2B68C(v13, &qword_1EC1F7D20, &qword_1C6EE94E0);
LABEL_30:
        sub_1C6E2B86C(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        v61 = v19;
LABEL_31:
        sub_1C6E2B86C(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        return 0;
      }

      v71 = v77;
      sub_1C6E2B804(v69 + v65, v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v72 = sub_1C6EA1F6C(v70, v71);
      sub_1C6E2B86C(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6E2B86C(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6E2B68C(v69, &qword_1EC1F7A98, v52);
      v13 = v69;
      v19 = v61;
      if ((v72 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v35 = *(v82 + 20);
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v36 = v90;
    v37 = sub_1C6EE4A50();
    sub_1C6E2B86C(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    result = sub_1C6E2B86C(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v25 = v79;
    v33 = v80;
    v32 = v87;
    if ((v37 & 1) == 0)
    {
      return v86;
    }
  }

  if (v33 <= v28 + 1)
  {
    v39 = v28 + 1;
  }

  else
  {
    v39 = v33;
  }

  v40 = v39 - 1;
  v41 = v84;
  while (1)
  {
    v42 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v42 >= v33)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
      (*(*(v73 - 8) + 56))(v25, 1, 1, v73);
      v87 = 0;
      v28 = v40;
      goto LABEL_18;
    }

    v43 = *(v75 + 8 * v42);
    ++v28;
    if (v43)
    {
      v87 = (v43 - 1) & v43;
      v38 = __clz(__rbit64(v43)) | (v42 << 6);
      v28 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E23014(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1C6E023B8(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_1C6EE54B0();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E2313C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE43E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v116 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D50, &qword_1C6EE8998);
  v13 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v139 = &v116 - v14;
  v142 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v140 = *(v142 - 8);
  v15 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v133 = (&v116 - v20);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D60, &qword_1C6EE89A8);
  v21 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v141 = &v116 - v22;
  v143 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v23 = *(v143 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v128 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = (&v116 - v28);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v30 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v116 - v31;
  v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v145 = *(v32 - 8);
  v146 = v32;
  v33 = *(v145 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v148 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v147 = &v116 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v131 = &v116 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D78, &unk_1C6EE89C0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v43 = (&v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v41);
  v137 = (&v116 - v45);
  v144 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v144 + 16))
  {
    return 0;
  }

  v119 = v12;
  v117 = v8;
  v122 = v4;
  v46 = 0;
  v47 = *(a1 + 64);
  v120 = a1 + 64;
  v48 = 1 << *(a1 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v47;
  v51 = (v48 + 63) >> 6;
  v129 = (v23 + 48);
  v126 = (v140 + 48);
  v121 = (v5 + 48);
  v116 = (v5 + 32);
  v118 = (v5 + 8);
  v132 = v29;
  v123 = v51;
  v125 = a1;
  v124 = v43;
  v130 = v17;
  while (v50)
  {
    v54 = __clz(__rbit64(v50));
    v55 = (v50 - 1) & v50;
    v56 = v54 | (v46 << 6);
LABEL_18:
    v61 = (*(a1 + 48) + 16 * v56);
    v63 = *v61;
    v62 = v61[1];
    v64 = *(a1 + 56) + *(v145 + 72) * v56;
    v65 = v131;
    sub_1C6E2B79C(v64, v131, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
    v67 = *(v66 + 48);
    *v43 = v63;
    v43[1] = v62;
    sub_1C6E2B804(v65, v43 + v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    (*(*(v66 - 8) + 56))(v43, 0, 1, v66);

LABEL_19:
    v68 = v137;
    sub_1C6E2B734(v43, v137, &qword_1EC1F7D78, &unk_1C6EE89C0);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
    v70 = (*(*(v69 - 8) + 48))(v68, 1, v69) == 1;
    result = v70;
    if (v70)
    {
      return result;
    }

    LODWORD(v140) = v70;
    v71 = *(v69 + 48);
    v72 = v144;
    v73 = v68;
    v75 = *v68;
    v74 = v68[1];
    v76 = v147;
    sub_1C6E2B804(v73 + v71, v147, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v77 = sub_1C6DEC784(v75, v74);
    LOBYTE(v75) = v78;

    if ((v75 & 1) == 0)
    {
      goto LABEL_50;
    }

    v138 = v55;
    v79 = v148;
    sub_1C6E2B79C(*(v72 + 56) + *(v145 + 72) * v77, v148, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v80 = *(v146 + 20);
    v81 = v136;
    v82 = *(v135 + 48);
    sub_1C6E2B624(v79 + v80, v136, &qword_1EC1F7D68, &unk_1C6EE89B0);
    sub_1C6E2B624(v76 + v80, v81 + v82, &qword_1EC1F7D68, &unk_1C6EE89B0);
    v83 = *v129;
    v84 = v143;
    if ((*v129)(v81, 1, v143) == 1)
    {
      v85 = v83(v81 + v82, 1, v84);
      v86 = v130;
      v87 = v142;
      if (v85 != 1)
      {
        goto LABEL_40;
      }

      sub_1C6E2B68C(v81, &qword_1EC1F7D68, &unk_1C6EE89B0);
    }

    else
    {
      v88 = v132;
      sub_1C6E2B624(v81, v132, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v89 = v83(v81 + v82, 1, v84);
      v86 = v130;
      v87 = v142;
      if (v89 == 1)
      {
        sub_1C6E2B86C(v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_40:
        v114 = &qword_1EC1F7D70;
        v115 = &unk_1C6EF2EA0;
        goto LABEL_48;
      }

      v90 = v128;
      sub_1C6E2B804(v81 + v82, v128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if ((sub_1C6E227C4(*v88, *v90) & 1) == 0)
      {
        sub_1C6E2B86C(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E2B86C(v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v114 = &qword_1EC1F7D68;
        v115 = &unk_1C6EE89B0;
        goto LABEL_48;
      }

      v91 = *(v143 + 20);
      sub_1C6EE4430();
      sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v92 = sub_1C6EE4A50();
      sub_1C6E2B86C(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E2B86C(v132, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E2B68C(v81, &qword_1EC1F7D68, &unk_1C6EE89B0);
      if ((v92 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v93 = *(v146 + 24);
    v94 = *(v134 + 48);
    v81 = v141;
    sub_1C6E2B624(v148 + v93, v141, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v95 = v147;
    sub_1C6E2B624(v147 + v93, v81 + v94, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v96 = *v126;
    if ((*v126)(v81, 1, v87) == 1)
    {
      if (v96(v81 + v94, 1, v87) != 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v97 = v133;
      sub_1C6E2B624(v81, v133, &qword_1EC1F7D58, &qword_1C6EE89A0);
      if (v96(v81 + v94, 1, v87) == 1)
      {
        sub_1C6E2B86C(v97, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
LABEL_43:
        v114 = &qword_1EC1F7D60;
        v115 = &qword_1C6EE89A8;
        goto LABEL_48;
      }

      sub_1C6E2B804(v81 + v94, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      v98 = *(v87 + 24);
      v99 = *(v127 + 48);
      v100 = v139;
      sub_1C6E2B624(v97 + v98, v139, &qword_1EC1F7D48, &qword_1C6EE8990);
      sub_1C6E2B624(v86 + v98, v100 + v99, &qword_1EC1F7D48, &qword_1C6EE8990);
      v101 = *v121;
      v102 = v100;
      v103 = v122;
      if ((*v121)(v102, 1, v122) == 1)
      {
        if (v101(v139 + v99, 1, v103) != 1)
        {
          goto LABEL_45;
        }

        sub_1C6E2B68C(v139, &qword_1EC1F7D48, &qword_1C6EE8990);
        v104 = v133;
        v81 = v141;
        v95 = v147;
      }

      else
      {
        v105 = v139;
        v106 = v119;
        sub_1C6E2B624(v139, v119, &qword_1EC1F7D48, &qword_1C6EE8990);
        if (v101(v105 + v99, 1, v103) == 1)
        {
          (*v118)(v106, v103);
LABEL_45:
          sub_1C6E2B68C(v139, &qword_1EC1F7D50, &qword_1C6EE8998);
          v104 = v133;
          v81 = v141;
LABEL_46:
          sub_1C6E2B86C(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
LABEL_47:
          sub_1C6E2B86C(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
          v114 = &qword_1EC1F7D58;
          v115 = &qword_1C6EE89A0;
LABEL_48:
          sub_1C6E2B68C(v81, v114, v115);
LABEL_49:
          sub_1C6E2B86C(v148, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          v76 = v147;
LABEL_50:
          sub_1C6E2B86C(v76, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          return 0;
        }

        v107 = v117;
        (*v116)(v117, v105 + v99, v103);
        sub_1C6E2B6EC(&qword_1EC1F7D80, MEMORY[0x1E69AA900]);
        v108 = sub_1C6EE4A50();
        v109 = *v118;
        v110 = v107;
        v86 = v130;
        (*v118)(v110, v103);
        v109(v106, v103);
        sub_1C6E2B68C(v105, &qword_1EC1F7D48, &qword_1C6EE8990);
        v104 = v133;
        v81 = v141;
        v95 = v147;
        if ((v108 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (*v104 != *v86)
      {
        goto LABEL_46;
      }

      v111 = *(v142 + 20);
      sub_1C6EE4430();
      sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v112 = sub_1C6EE4A50();
      sub_1C6E2B86C(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      if ((v112 & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_1C6E2B86C(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    }

    sub_1C6E2B68C(v81, &qword_1EC1F7D58, &qword_1C6EE89A0);
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v52 = v148;
    v53 = sub_1C6EE4A50();
    sub_1C6E2B86C(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    sub_1C6E2B86C(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    a1 = v125;
    v43 = v124;
    v51 = v123;
    v50 = v138;
    result = v140;
    if ((v53 & 1) == 0)
    {
      return result;
    }
  }

  if (v51 <= v46 + 1)
  {
    v57 = v46 + 1;
  }

  else
  {
    v57 = v51;
  }

  v58 = v57 - 1;
  while (1)
  {
    v59 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v59 >= v51)
    {
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
      (*(*(v113 - 8) + 56))(v43, 1, 1, v113);
      v55 = 0;
      v46 = v58;
      goto LABEL_19;
    }

    v60 = *(v120 + 8 * v59);
    ++v46;
    if (v60)
    {
      v55 = (v60 - 1) & v60;
      v56 = __clz(__rbit64(v60)) | (v59 << 6);
      v46 = v59;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E24124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D38, &qword_1C6EE8980);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = (&v61 - v18);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v19 = 0;
  v20 = *(a1 + 64);
  v61 = a1 + 64;
  v62 = v4;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v63 = a1;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v30 = *(a1 + 56);
    v31 = (*(a1 + 48) + 16 * v25);
    v33 = *v31;
    v32 = v31[1];
    v34 = v65;
    sub_1C6E2B79C(v30 + *(v68 + 72) * v25, v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D40, &qword_1C6EE8988);
    v36 = *(v35 + 48);
    v37 = v67;
    *v67 = v33;
    v37[1] = v32;
    v38 = v37;
    sub_1C6E2B804(v34, v37 + v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);

LABEL_17:
    v39 = v38;
    v40 = v66;
    sub_1C6E2B734(v39, v66, &qword_1EC1F7D38, &qword_1C6EE8980);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D40, &qword_1C6EE8988);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = v8;
    v45 = v68;
    v46 = *(v41 + 48);
    v47 = v40;
    v48 = *v40;
    v49 = v40[1];
    sub_1C6E2B804(v47 + v46, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    v50 = sub_1C6DEC784(v48, v49);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_32;
    }

    v8 = v44;
    sub_1C6E2B79C(*(a2 + 56) + *(v45 + 72) * v50, v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    if (*v44 != *v11)
    {
      goto LABEL_31;
    }

    v53 = *(v44 + 1);
    v54 = *(v11 + 1);
    v55 = *(v53 + 16);
    if (v55 != *(v54 + 16))
    {
      goto LABEL_31;
    }

    if (v55 && v53 != v54)
    {
      v56 = (v53 + 32);
      v57 = (v54 + 32);
      while (*v56 == *v57)
      {
        ++v56;
        ++v57;
        if (!--v55)
        {
          goto LABEL_26;
        }
      }

LABEL_31:
      sub_1C6E2B86C(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
LABEL_32:
      sub_1C6E2B86C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
      return 0;
    }

LABEL_26:
    if ((sub_1C6E5B3BC(*(v44 + 2), *(v11 + 2)) & 1) == 0)
    {
      goto LABEL_31;
    }

    v58 = *(v62 + 28);
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v59 = sub_1C6EE4A50();
    sub_1C6E2B86C(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    result = sub_1C6E2B86C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    a1 = v63;
    v23 = v64;
    if ((v59 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D40, &qword_1C6EE8988);
      v38 = v67;
      (*(*(v60 - 8) + 56))(v67, 1, 1, v60);
      v64 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v29 = *(v61 + 8 * v28);
    ++v19;
    if (v29)
    {
      v64 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v19 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1C6E246EC(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1C6DEC784(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1C6EE54B0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E24890(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1C6DEC784(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E249C4(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v61);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v57 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D88, &qword_1C6EE89D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v63 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v63 + 16))
  {
    return 0;
  }

  v58 = a1;
  v59 = &v57 - v17;
  v62 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v57 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v25);
    v33 = *v31;
    v32 = v31[1];
    v34 = v60;
    sub_1C6E2B79C(*(v58 + 56) + *(v4 + 72) * v25, v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D90, &qword_1C6EE89D8);
    v36 = *(v35 + 48);
    v37 = v62;
    *v62 = v33;
    v37[1] = v32;
    v38 = v34;
    v28 = v37;
    sub_1C6E2B804(v38, v37 + v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);

LABEL_17:
    v39 = v28;
    v40 = v59;
    sub_1C6E2B734(v39, v59, &qword_1EC1F7D88, &qword_1C6EE89D0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D90, &qword_1C6EE89D8);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = v40;
    v45 = v8;
    v46 = *(v41 + 48);
    v47 = *v44;
    v48 = v44[1];
    sub_1C6E2B804(v44 + v46, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v49 = v47;
    v50 = v63;
    v51 = sub_1C6DEC784(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }

    v8 = v45;
    sub_1C6E2B79C(*(v50 + 56) + *(v4 + 72) * v51, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    if ((sub_1C6E227C4(*v45, *v11) & 1) == 0)
    {
      sub_1C6E2B86C(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_25:
      sub_1C6E2B86C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      return 0;
    }

    v54 = *(v61 + 20);
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v55 = sub_1C6EE4A50();
    sub_1C6E2B86C(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    result = sub_1C6E2B86C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v23 = v64;
    if ((v55 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v62;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D90, &qword_1C6EE89D8);
      (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
      v64 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v19;
    if (v30)
    {
      v64 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E24F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
  v5 = *(v4 - 8);
  v86 = v4;
  v87 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v72 - v10);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D98, &qword_1C6EE89E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  result = MEMORY[0x1EEE9AC00](v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v78 = (&v72 - v25);
  v79 = v26;
  v27 = 0;
  v28 = *(a1 + 64);
  v73 = a1 + 64;
  v74 = v20;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v72 = (v29 + 63) >> 6;
  v82 = v18;
  v76 = a1;
  v77 = a2;
  v75 = v12;
  while (v31)
  {
    v81 = (v31 - 1) & v31;
    v35 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_17:
    v40 = (*(a1 + 48) + 16 * v35);
    v41 = *v40;
    v42 = v40[1];
    sub_1C6E2B79C(*(a1 + 56) + *(v83 + 72) * v35, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA0, &unk_1C6EE89E8);
    v44 = *(v43 + 48);
    v45 = v79;
    *v79 = v41;
    v45[1] = v42;
    v46 = v45;
    sub_1C6E2B804(v20, v45 + v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);

    v18 = v82;
LABEL_18:
    v47 = v46;
    v48 = v78;
    sub_1C6E2B734(v47, v78, &qword_1EC1F7D98, &qword_1C6EE89E0);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA0, &unk_1C6EE89E8);
    v50 = (*(*(v49 - 8) + 48))(v48, 1, v49) == 1;
    result = v50;
    if (v50)
    {
      return result;
    }

    v80 = v50;
    v51 = *(v49 + 48);
    v52 = *v48;
    v53 = v48[1];
    sub_1C6E2B804(v48 + v51, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    v54 = v52;
    v55 = v77;
    v56 = sub_1C6DEC784(v54, v53);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_39;
    }

    v59 = *(v55 + 56) + *(v83 + 72) * v56;
    v60 = v84;
    result = sub_1C6E2B79C(v59, v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    v61 = *v60;
    v62 = *v18;
    v63 = *(v61 + 16);
    if (v63 != *(*v18 + 16))
    {
LABEL_38:
      sub_1C6E2B86C(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v18 = v82;
LABEL_39:
      sub_1C6E2B86C(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      return 0;
    }

    if (v63 && v61 != v62)
    {
      v64 = 0;
      v65 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v85 = v61 + v65;
      v66 = v62 + v65;
      while (v64 < *(v61 + 16))
      {
        v67 = *(v87 + 72) * v64;
        result = sub_1C6E2B79C(v85 + v67, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        if (v64 >= *(v62 + 16))
        {
          goto LABEL_44;
        }

        sub_1C6E2B79C(v66 + v67, v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        if ((*v11 != *v9 || v11[1] != v9[1]) && (sub_1C6EE54B0() & 1) == 0 || (v11[2] != v9[2] || v11[3] != v9[3]) && (sub_1C6EE54B0() & 1) == 0)
        {
          sub_1C6E2B86C(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
          sub_1C6E2B86C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
          goto LABEL_38;
        }

        v68 = *(v86 + 24);
        sub_1C6EE4430();
        sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v69 = sub_1C6EE4A50();
        sub_1C6E2B86C(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        result = sub_1C6E2B86C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        if ((v69 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v63 == ++v64)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_43;
    }

LABEL_6:
    v32 = *(v75 + 20);
    sub_1C6EE4430();
    sub_1C6E2B6EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v33 = v84;
    v18 = v82;
    v34 = sub_1C6EE4A50();
    sub_1C6E2B86C(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    sub_1C6E2B86C(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
    a1 = v76;
    v20 = v74;
    v31 = v81;
    result = v80;
    if ((v34 & 1) == 0)
    {
      return result;
    }
  }

  if (v72 <= v27 + 1)
  {
    v36 = v27 + 1;
  }

  else
  {
    v36 = v72;
  }

  v37 = v36 - 1;
  while (1)
  {
    v38 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v38 >= v72)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA0, &unk_1C6EE89E8);
      v71 = v79;
      (*(*(v70 - 8) + 56))(v79, 1, 1, v70);
      v81 = 0;
      v27 = v37;
      v46 = v71;
      goto LABEL_18;
    }

    v39 = *(v73 + 8 * v38);
    ++v27;
    if (v39)
    {
      v81 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) | (v38 << 6);
      v27 = v38;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1C6E256E8()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E2572C()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E2578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C616E7265746E69 && a2 == 0xEB0000000070614DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6EE54B0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6E25824(uint64_t a1)
{
  v2 = sub_1C6E2AD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E25860(uint64_t a1)
{
  v2 = sub_1C6E2AD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Features.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C98, &qword_1C6EE8440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD60();

  sub_1C6EE55C0();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7CA8, &qword_1C6EE8448);
  sub_1C6E2AE5C(&qword_1EC1F7CB0, sub_1C6E2ADB4, sub_1C6E2AE08);
  sub_1C6EE5440();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Features.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7CC8, &unk_1C6EE8450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E2AD60();
  sub_1C6EE55B0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7CA8, &qword_1C6EE8448);
    sub_1C6E2AE5C(&qword_1EC1F7CD0, sub_1C6E2AEEC, sub_1C6E2AF40);
    sub_1C6EE53D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void Features.init(dictionaryLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7850, &qword_1C6EE6A08);
    v4 = sub_1C6EE5340();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  sub_1C6E294C4(a1, 1, &v5);
  *a2 = v5;
}

void sub_1C6E25D0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7850, &qword_1C6EE6A08);
    v4 = sub_1C6EE5340();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  sub_1C6E294C4(a1, 1, &v5);
  *a2 = v5;
}

double sub_1C6E25DC4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v11 = *a1;
  v8[0] = v4;
  v8[1] = v5;

  Features.subscript.getter(v8, &v9);

  v6 = v10;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1C6E25E34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  sub_1C6E2AF94(v5, v6, v7);
  return sub_1C6E02074(v5, v6, v7, v3, v4);
}

void (*Features.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  *(v5 + 24) = v2;
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;
  v9 = *v2;
  if (*(v9 + 16))
  {
    swift_bridgeObjectRetain_n();
    v10 = sub_1C6E0231C(v8, v7);
    if (v11)
    {
      v12 = *(v9 + 56) + 24 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_1C6E00CBC(*v12, v14, v15);

      *v6 = v13;
      *(v6 + 8) = v14;
      *(v6 + 16) = v15;
    }

    else
    {

      *v6 = xmmword_1C6EE7FC0;
      *(v6 + 16) = -1;
    }
  }

  else
  {
    *v5 = xmmword_1C6EE7FC0;
    *(v5 + 16) = -1;
  }

  return sub_1C6E25FC0;
}

void sub_1C6E25FC0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v6 = (~v3 & 0x3000000000000000) == 0 && v4 == 255;
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 24);
  if (a2)
  {
    if (v6)
    {
      v10 = *(v2 + 24);
      sub_1C6E29064(*(v2 + 32), *(v2 + 40), &v21);

      sub_1C6E0D408(v21, v22, v23);
    }

    else
    {
      v15 = *v2;
      sub_1C6E2AF94(*v2, v3, v4);
      v16 = *v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v9;
      sub_1C6E08F7C(v15, v3, v4 & 1, v8, v7, isUniquelyReferenced_nonNull_native);

      *v9 = v21;
    }

    v12 = *v2;
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    goto LABEL_14;
  }

  if (v6)
  {
    v11 = *(v2 + 24);
    sub_1C6E29064(*(v2 + 32), *(v2 + 40), &v21);

    v12 = v21;
    v13 = v22;
    v14 = v23;
LABEL_14:
    sub_1C6E0D408(v12, v13, v14);
    goto LABEL_16;
  }

  v18 = *v2;
  v19 = *v9;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  sub_1C6E08F7C(v18, v3, v4 & 1, v8, v7, v20);

  *v9 = v21;
LABEL_16:

  free(v2);
}

void (*sub_1C6E26158(uint64_t **a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Features.subscript.modify(v4, a2);
  return sub_1C6E261D0;
}

void sub_1C6E261D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t static Features.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C6E0BDC4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

Swift::Void __swiftcall Features.update(_:override:isDefaultFeature:)(ComputationalGraph::Features _, Swift::Bool override, Swift::Bool isDefaultFeature)
{
  v3 = *_.internalMap._rawValue;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v58 = v3;

  v9 = 0;
  v56 = v8;
  while (v7)
  {
LABEL_11:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v9 << 6);
    v17 = (*(v58 + 48) + 16 * v16);
    v18 = v17[1];
    v60 = *v17;
    v19 = *(v58 + 56) + 24 * v16;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (override)
    {

      sub_1C6E00CBC(v20, v21, v22);
      goto LABEL_17;
    }

    v23 = *v59;
    v24 = *(*v59 + 16);

    sub_1C6E00CBC(v20, v21, v22);
    if (v24 && (v25 = sub_1C6E0231C(v60, v18), (v26 & 1) != 0))
    {
      v54 = v22;
      if (isDefaultFeature)
      {

        sub_1C6E00C60(v20, v21, v22);
      }

      else
      {
        v47 = *(v23 + 56) + 24 * v25;
        v53 = *v47;
        v51 = *(v47 + 8);
        v52 = *(v47 + 16);
        sub_1C6E00CBC(*v47, v51, v52);
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1C6EE65B0;
        sub_1C6EE52F0();
        *(v48 + 56) = MEMORY[0x1E69E6158];
        v49 = sub_1C6DF10E0();
        *(v48 + 64) = v49;
        *(v48 + 32) = 0;
        *(v48 + 40) = 0xE000000000000000;
        sub_1C6EE52F0();
        *(v48 + 96) = MEMORY[0x1E69E6158];
        *(v48 + 104) = v49;
        *(v48 + 72) = 0;
        *(v48 + 80) = 0xE000000000000000;
        sub_1C6EE52F0();
        *(v48 + 136) = MEMORY[0x1E69E6158];
        *(v48 + 144) = v49;
        *(v48 + 112) = 0;
        *(v48 + 120) = 0xE000000000000000;
        sub_1C6EE4730();
        sub_1C6E00C60(v53, v51, v52);

        sub_1C6E00C60(v20, v21, v54);
        v8 = v56;
      }
    }

    else
    {
LABEL_17:

      v27 = v20;
      v28 = v20;
      v29 = v21;
      v30 = v21;
      v31 = v22;
      sub_1C6E00CBC(v28, v30, v22);
      v32 = *v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v59;
      *v59 = 0x8000000000000000;
      v35 = sub_1C6E0231C(v60, v18);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_31;
      }

      v41 = v36;
      if (v34[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v35;
          sub_1C6E09AC0();
          v35 = v50;
        }
      }

      else
      {
        sub_1C6E06FFC(v40, isUniquelyReferenced_nonNull_native);
        v35 = sub_1C6E0231C(v60, v18);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_33;
        }
      }

      if (v41)
      {
        v10 = v34[7] + 24 * v35;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        *v10 = v27;
        *(v10 + 8) = v29;
        *(v10 + 16) = v31;
        sub_1C6E00C60(v11, v12, v13);
      }

      else
      {
        v34[(v35 >> 6) + 8] |= 1 << v35;
        v43 = (v34[6] + 16 * v35);
        *v43 = v60;
        v43[1] = v18;
        v44 = v34[7] + 24 * v35;
        *v44 = v27;
        *(v44 + 8) = v29;
        *(v44 + 16) = v31;
        v45 = v34[2];
        v39 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v39)
        {
          goto LABEL_32;
        }

        v34[2] = v46;
      }

      sub_1C6E00C60(v27, v29, v31);
      *v59 = v34;
      v8 = v56;
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1C6EE5500();
  __break(1u);
}

uint64_t sub_1C6E26748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1C6E0BDC4(MEMORY[0x1E69E7CC0]);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v41 = a1;

  v9 = 0;
  v39 = v8;
  v40 = v4;
  while (v7)
  {
LABEL_11:
    v15 = __clz(__rbit64(v7)) | (v9 << 6);
    v16 = (*(v41 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v41 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);

    sub_1C6E00CBC(v20, v21, v22);
    sub_1C6E00CBC(v20, v21, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1C6E0231C(v18, v17);
    v26 = v3[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_23;
    }

    v30 = v25;
    if (v3[3] < v29)
    {
      sub_1C6E06FFC(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1C6E0231C(v18, v17);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v36 = v24;
    sub_1C6E09AC0();
    v24 = v36;
    if (v30)
    {
LABEL_4:
      v10 = v3[7] + 24 * v24;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v10 = v20;
      *(v10 + 8) = v21;
      *(v10 + 16) = v22;
      sub_1C6E00C60(v11, v12, v13);

      goto LABEL_5;
    }

LABEL_17:
    v3[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v3[6] + 16 * v24);
    *v32 = v18;
    v32[1] = v17;
    v33 = v3[7] + 24 * v24;
    *v33 = v20;
    *(v33 + 8) = v21;
    *(v33 + 16) = v22;
    v34 = v3[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_24;
    }

    v3[2] = v35;
LABEL_5:
    v7 &= v7 - 1;

    sub_1C6E00C60(v20, v21, v22);
    v8 = v39;
    v4 = v40;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      *a2 = v3;
      return result;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E269D0(uint64_t a1, char a2, char a3)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v60 = v3;
  if (v6)
  {
LABEL_11:
    while (1)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v8 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = v16[1];
      v64 = *v16;
      v18 = *(a1 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (a2)
      {
        break;
      }

      v22 = *v63;
      v23 = *(*v63 + 16);

      sub_1C6E00CBC(v19, v20, v21);
      if (v23 && (v24 = sub_1C6DEC784(v64, v17), (v25 & 1) != 0))
      {
        if (a3)
        {

          v26 = v19;
          v27 = v20;
          v28 = v21;
        }

        else
        {
          v50 = *(v22 + 56) + 24 * v24;
          v56 = *v50;
          v58 = *(v50 + 8);
          v57 = *(v50 + 16);
          sub_1C6E00CBC(*v50, v58, v57);
          v51 = v21;
          if (qword_1EDEF8F80 != -1)
          {
            swift_once();
          }

          sub_1C6EE4EC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1C6EE65B0;
          *(v52 + 56) = MEMORY[0x1E69E6158];
          v53 = sub_1C6DF10E0();
          *(v52 + 64) = v53;
          *(v52 + 32) = v64;
          *(v52 + 40) = v17;

          sub_1C6EE52F0();
          *(v52 + 96) = MEMORY[0x1E69E6158];
          *(v52 + 104) = v53;
          *(v52 + 72) = 0;
          *(v52 + 80) = 0xE000000000000000;
          sub_1C6EE52F0();
          *(v52 + 136) = MEMORY[0x1E69E6158];
          *(v52 + 144) = v53;
          *(v52 + 112) = 0;
          *(v52 + 120) = 0xE000000000000000;
          sub_1C6EE4730();
          sub_1C6E00C60(v56, v58, v57);

          v26 = v19;
          v27 = v20;
          v28 = v51;
        }

        sub_1C6E00C60(v26, v27, v28);
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_17:
        v29 = v7;

        v30 = v19;
        v31 = v19;
        v32 = v20;
        v33 = v20;
        v34 = v21;
        sub_1C6E00CBC(v31, v33, v21);
        v35 = *v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *v63;
        v38 = sub_1C6DEC784(v64, v17);
        v40 = v37[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_33;
        }

        v44 = v39;
        if (v37[3] >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = v38;
            sub_1C6E09928();
            v38 = v54;
          }
        }

        else
        {
          sub_1C6E06D1C(v43, isUniquelyReferenced_nonNull_native);
          v38 = sub_1C6DEC784(v64, v17);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_35;
          }
        }

        if (v44)
        {
          v9 = v37[7] + 24 * v38;
          v10 = *v9;
          v11 = *(v9 + 8);
          v12 = *(v9 + 16);
          *v9 = v30;
          *(v9 + 8) = v32;
          *(v9 + 16) = v34;
          sub_1C6E00C60(v10, v11, v12);
        }

        else
        {
          v37[(v38 >> 6) + 8] |= 1 << v38;
          v46 = (v37[6] + 16 * v38);
          *v46 = v64;
          v46[1] = v17;
          v47 = v37[7] + 24 * v38;
          *v47 = v30;
          *(v47 + 8) = v32;
          *(v47 + 16) = v34;
          v48 = v37[2];
          v42 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v42)
          {
            goto LABEL_34;
          }

          v37[2] = v49;
        }

        sub_1C6E00C60(v30, v32, v34);
        *v63 = v37;
        v7 = v29;
        v3 = v60;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    sub_1C6E00CBC(v19, v20, v21);
    goto LABEL_17;
  }

LABEL_7:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E26E94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    sub_1C6EE4ED0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E6530];
    *(v9 + 16) = xmmword_1C6EE6590;
    v11 = MEMORY[0x1E69E65A8];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a3;
    sub_1C6EE4730();

    return 0;
  }

  result = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        goto LABEL_27;
      }

      if (!*(a5 + 16))
      {
        return 0;
      }

      v27 = a1;
      v29 = sub_1C6DEC784(a1, a2);
      if (v30)
      {
        v31 = *(a5 + 56) + 24 * v29;
        v32 = (*(v31 + 8) >> 60) & 3;
        v33 = *(v31 + 16) ? 4 : 0;
        if ((v32 | v33) == 4)
        {
          return 1;
        }
      }

      if (!*(a5 + 16))
      {
        return 0;
      }

      v34 = sub_1C6DEC784(v27, a2);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

      v36 = *(a5 + 56) + 24 * v34;
      v37 = (*(v36 + 8) >> 60) & 3;
      if (*(v36 + 16))
      {
        v38 = 4;
      }

      else
      {
        v38 = 0;
      }

      return (v37 | v38) == 5;
    }

    else
    {
      if (a3 != 4)
      {
        return result;
      }

      if (!*(a5 + 16))
      {
        return 0;
      }

      v12 = sub_1C6DEC784(a1, a2);
      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v14 = *(a5 + 56) + 24 * v12;
      v15 = (*(v14 + 8) >> 60) & 3;
      if (*(v14 + 16))
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }

      return (v15 | v16) == 0;
    }
  }

  else
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        return result;
      }

LABEL_27:
      if (*(a5 + 16))
      {
        v22 = sub_1C6DEC784(a1, a2);
        if (v23)
        {
          v24 = *(a5 + 56) + 24 * v22;
          v25 = (*(v24 + 8) >> 60) & 3;
          if (*(v24 + 16))
          {
            v26 = 4;
          }

          else
          {
            v26 = 0;
          }

          return (v25 | v26) == 3;
        }
      }

      return 0;
    }

    if (a3 != 2)
    {
      return result;
    }

    if (!*(a5 + 16))
    {
      return 0;
    }

    v17 = sub_1C6DEC784(a1, a2);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a5 + 56) + 24 * v17;
    v20 = (*(v19 + 8) >> 60) & 3;
    if (*(v19 + 16))
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    return (v20 | v21) == 1;
  }
}

uint64_t sub_1C6E27138(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1C6E2928C(a2);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_1C6E27180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = qword_1C6EE8A08[(a5 >> 60) & 3 | (4 * (a6 & 1u))];
  *(a1 + 32) = 1;
  return result;
}

uint64_t *ReadableFeatureStoreType.floatList(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
  {
    v10 = (v17 >> 60) & 3 | (4 * (v18 & 1));
    if (v10 <= 2)
    {
      if (!v10)
      {
        return v4;
      }

      if (v10 == 1)
      {
        v13 = 769;
      }

      else
      {
        v13 = 770;
      }
    }

    else
    {
      v11 = 768;
      if (v10 == 5)
      {
        v11 = 774;
      }

      v12 = 772;
      if (v10 != 3)
      {
        v12 = 773;
      }

      if (v10 <= 4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
    return v4;
  }

  sub_1C6E2AC54();
  swift_allocError();
  v4 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[3] = AssociatedTypeWitness;
  v4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  swift_willThrow();
  return v4;
}

uint64_t ReadableFeatureStoreType.floatListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) != 0 || v14 != 255)
  {
    v6 = (v13 >> 60) & 3 | (4 * (v14 & 1));
    if (v6 <= 2)
    {
      if (!v6)
      {
        return v3;
      }

      if (v6 == 1)
      {
        v9 = 769;
      }

      else
      {
        v9 = 770;
      }
    }

    else
    {
      v7 = 768;
      if (v6 == 5)
      {
        v7 = 774;
      }

      v8 = 772;
      if (v6 != 3)
      {
        v8 = 773;
      }

      if (v6 <= 4)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v3, v4, v5);
    return v3;
  }

  return 0;
}

uint64_t *ReadableFeatureStoreType.int32List(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
  {
    v10 = (v17 >> 60) & 3 | (4 * (v18 & 1));
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          return v4;
        }

        v13 = 258;
      }

      else
      {
        v13 = 259;
      }
    }

    else
    {
      v11 = 256;
      if (v10 == 5)
      {
        v11 = 262;
      }

      v12 = 260;
      if (v10 != 3)
      {
        v12 = 261;
      }

      if (v10 <= 4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v4 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4[3] = AssociatedTypeWitness;
    v4[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v4;
}

uint64_t ReadableFeatureStoreType.int32ListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    return 0;
  }

  v6 = (v13 >> 60) & 3 | (4 * (v14 & 1));
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        return v3;
      }

      v9 = 258;
    }

    else
    {
      v9 = 259;
    }
  }

  else
  {
    v7 = 256;
    if (v6 == 5)
    {
      v7 = 262;
    }

    v8 = 260;
    if (v6 != 3)
    {
      v8 = 261;
    }

    if (v6 <= 4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_1C6E16800();
  swift_allocError();
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;
  swift_willThrow();
  sub_1C6E0D408(v3, v4, v5);
  return v3;
}

uint64_t *ReadableFeatureStoreType.int64List(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
  {
    v10 = (v17 >> 60) & 3 | (4 * (v18 & 1));
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          return v4;
        }

        v13 = 513;
      }

      else
      {
        v13 = 515;
      }
    }

    else
    {
      v11 = 512;
      if (v10 == 5)
      {
        v11 = 518;
      }

      v12 = 516;
      if (v10 != 3)
      {
        v12 = 517;
      }

      if (v10 <= 4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    sub_1C6E16800();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v4 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4[3] = AssociatedTypeWitness;
    v4[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v4;
}

uint64_t ReadableFeatureStoreType.int64ListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    return 0;
  }

  v6 = (v13 >> 60) & 3 | (4 * (v14 & 1));
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return v3;
      }

      v9 = 513;
    }

    else
    {
      v9 = 515;
    }
  }

  else
  {
    v7 = 512;
    if (v6 == 5)
    {
      v7 = 518;
    }

    v8 = 516;
    if (v6 != 3)
    {
      v8 = 517;
    }

    if (v6 <= 4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_1C6E16800();
  swift_allocError();
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;
  swift_willThrow();
  sub_1C6E0D408(v3, v4, v5);
  return v3;
}

uint64_t *ReadableFeatureStoreType.bytesList(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v15);
  v4 = v15;
  v5 = v16;
  v6 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v10 = (v16 >> 60) & 3 | (4 * (v17 & 1));
    if (v10 <= 2)
    {
      v12 = 1025;
      if (v10 != 1)
      {
        v12 = 1026;
      }

      if (v10)
      {
        v11 = v12;
      }

      else
      {
        v11 = 1027;
      }
    }

    else if (v10 > 4)
    {
      if (v10 == 5)
      {
        v11 = 1030;
      }

      else
      {
        v11 = 1024;
      }
    }

    else
    {
      if (v10 == 3)
      {
        return v4;
      }

      v11 = 1029;
    }

    sub_1C6E16800();
    swift_allocError();
    *v13 = v11;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v4, v5, v6);
    return v4;
  }

  sub_1C6E2AC54();
  swift_allocError();
  v4 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[3] = AssociatedTypeWitness;
  v4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  swift_willThrow();
  return v4;
}

uint64_t ReadableFeatureStoreType.bytesListIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v11);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  if ((~v12 & 0x3000000000000000) != 0 || v13 != 255)
  {
    v6 = (v12 >> 60) & 3 | (4 * (v13 & 1));
    if (v6 <= 2)
    {
      v8 = 1025;
      if (v6 != 1)
      {
        v8 = 1026;
      }

      if (v6)
      {
        v7 = v8;
      }

      else
      {
        v7 = 1027;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        v7 = 1030;
      }

      else
      {
        v7 = 1024;
      }
    }

    else
    {
      if (v6 == 3)
      {
        return v3;
      }

      v7 = 1029;
    }

    sub_1C6E16800();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 3;
    swift_willThrow();
    sub_1C6E0D408(v3, v4, v5);
    return v3;
  }

  return 0;
}

uint64_t sub_1C6E27E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = (*(a3 + 24))(&v12);
  v7 = v13;
  v8 = v14;
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    return 0;
  }

  v10 = v12;
  v11 = a4(v6);
  result = sub_1C6E0D408(v10, v7, v8);
  if (!v4)
  {
    return v11;
  }

  return result;
}

float ReadableFeatureStoreType.float(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v14);
  v5 = v15;
  v6 = v16;
  if ((~v15 & 0x3000000000000000) != 0 || v16 != 255)
  {
    v11 = v14;
    v16 &= 1u;
    Feature.float.getter();
    v3 = v12;
    sub_1C6E0D408(v11, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v8 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8[3] = AssociatedTypeWitness;
    v8[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v3;
}

uint64_t ReadableFeatureStoreType.floatIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v13);
  v4 = v14;
  v5 = v15;
  v6 = (~v14 & 0x3000000000000000) == 0 && v15 == 255;
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    return v8 | (v7 << 32);
  }

  v9 = v13;
  Feature.float.getter();
  v11 = v10;
  result = sub_1C6E0D408(v9, v4, v5);
  if (!v3)
  {
    v8 = v11;
    return v8 | (v7 << 32);
  }

  return result;
}

uint64_t ReadableFeatureStoreType.int32(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12);
  v4 = v13;
  v5 = v14;
  if ((~v13 & 0x3000000000000000) != 0 || v14 != 255)
  {
    v10 = v12;
    v14 &= 1u;
    a1 = Feature.int32.getter();
    sub_1C6E0D408(v10, v4, v5);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v7 = v6;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7[3] = AssociatedTypeWitness;
    v7[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return a1;
}

uint64_t ReadableFeatureStoreType.int32IfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12);
  v4 = v13;
  v5 = v14;
  v6 = (~v13 & 0x3000000000000000) == 0 && v14 == 255;
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    return v8 | (v7 << 32);
  }

  v9 = v12;
  v10 = Feature.int32.getter();
  result = sub_1C6E0D408(v9, v4, v5);
  if (!v3)
  {
    v8 = v10;
    return v8 | (v7 << 32);
  }

  return result;
}

uint64_t sub_1C6E283E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = (*(a3 + 24))(&v15);
  v7 = v16;
  v8 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v13 = v15;
    v17 &= 1u;
    a1 = a4(v6);
    sub_1C6E0D408(v13, v7, v8);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v10 = v9;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10[3] = AssociatedTypeWitness;
    v10[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C6E28580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = (*(a3 + 24))(&v13);
  v7 = v14;
  v8 = v15;
  if ((~v14 & 0x3000000000000000) == 0 && v15 == 255)
  {
    return 0;
  }

  v10 = v13;
  v11 = a4(v6);
  result = sub_1C6E0D408(v10, v7, v8);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t *ReadableFeatureStoreType.bytes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v15);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  if ((~v16 & 0x3000000000000000) != 0 || v17 != 255)
  {
    v17 &= 1u;
    v9 = &v15;
    v12 = sub_1C6E17698();
    if (!v3)
    {
      v9 = v12;
      sub_1C6E00D18(v12, v13);
    }

    sub_1C6E0D408(v6, v5, v7);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v9 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9[3] = AssociatedTypeWitness;
    v9[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v9;
}

uint64_t ReadableFeatureStoreType.bytesIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v13;
  if ((~v12 & 0x3000000000000000) == 0 && v13 == 255)
  {
    return 0;
  }

  v8 = sub_1C6E17698();
  if (v3)
  {
    return sub_1C6E0D408(v5, v4, v6);
  }

  v10 = v8;
  sub_1C6E00D18(v8, v9);
  sub_1C6E0D408(v5, v4, v6);
  return v10;
}

uint64_t *ReadableFeatureStoreType.string(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6EE4AE0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  (*(a3 + 24))(&v21, a1, a2, a3);
  v10 = v21;
  v9 = v22;
  v11 = v23;
  if ((~v22 & 0x3000000000000000) != 0 || v23 != 255)
  {
    v23 &= 1u;
    v13 = &v21;
    v16 = sub_1C6E17698();
    if (v3)
    {
      sub_1C6E0D408(v10, v9, v11);
    }

    else
    {
      v19 = v16;
      v20 = v17;
      sub_1C6E00D18(v16, v17);
      sub_1C6EE4AD0();
      v13 = sub_1C6EE4AB0();
      sub_1C6E0D408(v10, v9, v11);
      sub_1C6DF1134(v19, v20);
    }
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v13 = v12;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13[3] = AssociatedTypeWitness;
    v13[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v13;
}

uint64_t ReadableFeatureStoreType.stringIfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6EE4AE0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  (*(a3 + 24))(&v18, a1, a2, a3);
  v10 = v18;
  v9 = v19;
  v11 = v20;
  if ((~v19 & 0x3000000000000000) == 0 && v20 == 255)
  {
    return 0;
  }

  v13 = sub_1C6E17698();
  if (v3)
  {
    return sub_1C6E0D408(v10, v9, v11);
  }

  v15 = v13;
  v16 = v14;
  sub_1C6E00D18(v13, v14);
  sub_1C6EE4AD0();
  v17 = sub_1C6EE4AB0();
  sub_1C6E0D408(v10, v9, v11);
  sub_1C6DF1134(v15, v16);
  return v17;
}

float ReadableFeatureStoreType.float16(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v14);
  v5 = v15;
  v6 = v16;
  if ((~v15 & 0x3000000000000000) != 0 || v16 != 255)
  {
    v11 = v14;
    v16 &= 1u;
    Feature.float16.getter();
    v3 = v12;
    sub_1C6E0D408(v11, v5, v6);
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v8 = v7;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8[3] = AssociatedTypeWitness;
    v8[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
    swift_willThrow();
  }

  return v3;
}

uint64_t ReadableFeatureStoreType.float16IfPresent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v12);
  v4 = v13;
  v5 = v14;
  v6 = (~v13 & 0x3000000000000000) == 0 && v14 == 255;
  v7 = v6;
  if (v6)
  {
    return (v7 << 16);
  }

  v8 = v12;
  Feature.float16.getter();
  v10 = v9;
  result = sub_1C6E0D408(v8, v4, v5);
  if (!v3)
  {
    return v10 | (v7 << 16);
  }

  return result;
}

uint64_t Features.diagnosticFormat.getter()
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6E21148(*v0);
  if (*(v6 + 16))
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
    v8 = sub_1C6EE5340();
    v6 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v14 = v8;
  sub_1C6E298C0(v6, 1, &v14);
  if (v1)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = v14;
    MEMORY[0x1EEE9AC00](v9);
    *(&v13 - 2) = v10;
    sub_1C6E2B6EC(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6EE4600();

    v11 = sub_1C6EE45C0();
    sub_1C6E2B86C(v5, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    return v11;
  }

  return result;
}

double sub_1C6E29064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C6E0231C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6E09AC0();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    sub_1C6ECDF70(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1C6EE7FC0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_1C6E29120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C6DEC784(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6E0A74C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v22 = *(v15 - 8);
    sub_1C6E2B804(v14 + *(v22 + 72) * v9, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    sub_1C6ECE140(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1C6E2928C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7720, &unk_1C6EE68D0);
  result = sub_1C6EE5320();
  v6 = result;
  v7 = 0;
  v33 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v29 = result + 64;
  v30 = result;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(v33 + 56);
      v20 = (*(v33 + 48) + 16 * v18);
      v21 = v20[1];
      v36 = *v20;
      v22 = (v19 + 24 * v18);
      LOBYTE(v19) = *(v22 + 16);
      v34 = *v22;
      v35 = v19;

      v23 = v31;
      sub_1C6E0F330(v31);
      v6 = v30;
      *(v29 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v24 = (v6[6] + 16 * v18);
      *v24 = v36;
      v24[1] = v21;
      result = sub_1C6E2B804(v23, v6[7] + *(v32 + 72) * v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v25 = v6[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v6[2] = v27;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6E294C4(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = *(a1 + 16);
  if (!v49)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);

  sub_1C6E00CBC(v9, v8, v10);
  if (!v7)
  {
    goto LABEL_24;
  }

  v51 = v10;
  v50 = a3;
  v11 = *a3;
  v13 = sub_1C6E0231C(v6, v7);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1C6E09AC0();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1C6E06FFC(v16, a2 & 1);
  v18 = *v50;
  v19 = sub_1C6E0231C(v6, v7);
  if ((v17 & 1) == (v20 & 1))
  {
    v13 = v19;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v23 = v50;
      v24 = *v50;
      *(*v50 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v25 = (v24[6] + 16 * v13);
      *v25 = v6;
      v25[1] = v7;
      v26 = v24[7] + 24 * v13;
      *v26 = v9;
      *(v26 + 8) = v8;
      *(v26 + 16) = v51;
      v27 = v24[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24[2] = v29;
      if (v49 != 1)
      {
        v30 = (a1 + 104);
        v31 = 1;
        while (v31 < *(a1 + 16))
        {
          v33 = *(v30 - 4);
          v32 = *(v30 - 3);
          v9 = *(v30 - 2);
          v8 = *(v30 - 1);
          v34 = *v30;

          sub_1C6E00CBC(v9, v8, v34);
          if (!v32)
          {
            goto LABEL_24;
          }

          v51 = v34;
          v35 = *v23;
          v36 = sub_1C6E0231C(v33, v32);
          v38 = *(v35 + 16);
          v39 = (v37 & 1) == 0;
          v28 = __OFADD__(v38, v39);
          v40 = v38 + v39;
          if (v28)
          {
            goto LABEL_26;
          }

          v41 = v37;
          if (*(v35 + 24) < v40)
          {
            sub_1C6E06FFC(v40, 1);
            v42 = *v50;
            v36 = sub_1C6E0231C(v33, v32);
            if ((v41 & 1) != (v43 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v41)
          {
            goto LABEL_10;
          }

          v23 = v50;
          v44 = *v50;
          *(*v50 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          v45 = (v44[6] + 16 * v36);
          *v45 = v33;
          v45[1] = v32;
          v46 = v44[7] + 24 * v36;
          *v46 = v9;
          *(v46 + 8) = v8;
          *(v46 + 16) = v51;
          v47 = v44[2];
          v28 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          ++v31;
          v44[2] = v48;
          v30 += 40;
          if (v49 == v31)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C6E00C60(v9, v8, v51);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1C6EE5500();
  __break(1u);
LABEL_29:
  sub_1C6EE51B0();
  MEMORY[0x1CCA57F60](0xD00000000000001BLL, 0x80000001C6EF8350);
  sub_1C6EE52F0();
  MEMORY[0x1CCA57F60](39, 0xE100000000000000);
  sub_1C6EE5300();
  __break(1u);
}

void sub_1C6E298C0(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = *(a1 + 16);
  if (!v49)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);

  sub_1C6E00CBC(v9, v8, v10);
  if (!v7)
  {
    goto LABEL_24;
  }

  v51 = v10;
  v50 = a3;
  v11 = *a3;
  v13 = sub_1C6DEC784(v6, v7);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1C6E09928();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1C6E06D1C(v16, a2 & 1);
  v18 = *v50;
  v19 = sub_1C6DEC784(v6, v7);
  if ((v17 & 1) == (v20 & 1))
  {
    v13 = v19;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v23 = v50;
      v24 = *v50;
      *(*v50 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v25 = (v24[6] + 16 * v13);
      *v25 = v6;
      v25[1] = v7;
      v26 = v24[7] + 24 * v13;
      *v26 = v9;
      *(v26 + 8) = v8;
      *(v26 + 16) = v51;
      v27 = v24[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24[2] = v29;
      if (v49 != 1)
      {
        v30 = (a1 + 104);
        v31 = 1;
        while (v31 < *(a1 + 16))
        {
          v33 = *(v30 - 4);
          v32 = *(v30 - 3);
          v9 = *(v30 - 2);
          v8 = *(v30 - 1);
          v34 = *v30;

          sub_1C6E00CBC(v9, v8, v34);
          if (!v32)
          {
            goto LABEL_24;
          }

          v51 = v34;
          v35 = *v23;
          v36 = sub_1C6DEC784(v33, v32);
          v38 = *(v35 + 16);
          v39 = (v37 & 1) == 0;
          v28 = __OFADD__(v38, v39);
          v40 = v38 + v39;
          if (v28)
          {
            goto LABEL_26;
          }

          v41 = v37;
          if (*(v35 + 24) < v40)
          {
            sub_1C6E06D1C(v40, 1);
            v42 = *v50;
            v36 = sub_1C6DEC784(v33, v32);
            if ((v41 & 1) != (v43 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v41)
          {
            goto LABEL_10;
          }

          v23 = v50;
          v44 = *v50;
          *(*v50 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          v45 = (v44[6] + 16 * v36);
          *v45 = v33;
          v45[1] = v32;
          v46 = v44[7] + 24 * v36;
          *v46 = v9;
          *(v46 + 8) = v8;
          *(v46 + 16) = v51;
          v47 = v44[2];
          v28 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          ++v31;
          v44[2] = v48;
          v30 += 40;
          if (v49 == v31)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C6E00C60(v9, v8, v51);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1C6EE5500();
  __break(1u);
LABEL_29:
  sub_1C6EE51B0();
  MEMORY[0x1CCA57F60](0xD00000000000001BLL, 0x80000001C6EF8350);
  sub_1C6EE52F0();
  MEMORY[0x1CCA57F60](39, 0xE100000000000000);
  sub_1C6EE5300();
  __break(1u);
}

uint64_t sub_1C6E29CBC(uint64_t *a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v61 - v23;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v71 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  result = sub_1C6EE5320();
  v30 = result;
  v31 = 0;
  v33 = v28 + 64;
  v32 = *(v28 + 64);
  v70 = v28;
  v34 = 1 << *(v28 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  v68 = result + 64;
  v69 = (v18 + 48);
  v66 = v24;
  v67 = v17;
  if ((v35 & v32) != 0)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_10:
      v41 = v38 | (v31 << 6);
      v42 = v71;
      v43 = *(v70 + 56);
      v44 = (*(v70 + 48) + 16 * v41);
      v45 = v44[1];
      v74 = *v44;
      sub_1C6E2B79C(v43 + *(v72 + 72) * v41, v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6E2B624(v42, v24, &qword_1EC1F7A98, &qword_1C6EE7840);

      sub_1C6E2B86C(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v46 = 1;
      result = (*v69)(v24, 1, v17);
      if (result == 1)
      {
        v47 = 0;
      }

      else
      {
        sub_1C6E2B804(v24, v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v60 = v62;
            sub_1C6E2B804(v73, v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v47 = *v60;

            result = sub_1C6E2B86C(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v46 = 0;
            v48 = 0x1000000000000000;
          }

          else
          {
            v56 = v61;
            sub_1C6E2B804(v73, v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v47 = *v56;

            result = sub_1C6E2B86C(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v48 = 0;
            v46 = 0;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v55 = v64;
            sub_1C6E2B804(v73, v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v47 = *v55;

            result = sub_1C6E2B86C(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v46 = 0;
            v48 = 0x3000000000000000;
          }

          else
          {
            v58 = v65;
            sub_1C6E2B804(v73, v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v47 = *v58;
            v59 = v58[1];
            sub_1C6E00D18(*v58, v59);
            result = sub_1C6E2B86C(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v48 = v59 | 0x1000000000000000;
            v46 = 1;
          }

          goto LABEL_13;
        }

        v57 = v63;
        sub_1C6E2B804(v73, v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v47 = *v57;

        result = sub_1C6E2B86C(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v46 = 0;
      }

      v48 = 0x2000000000000000;
LABEL_13:
      *(v68 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v49 = (v30[6] + 16 * v41);
      *v49 = v74;
      v49[1] = v45;
      v50 = v30[7] + 24 * v41;
      *v50 = v47;
      *(v50 + 8) = v48;
      *(v50 + 16) = v46;
      v51 = v30[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_27;
      }

      v30[2] = v53;
      v24 = v66;
      v17 = v67;
    }

    while (v36);
  }

  v39 = v31;
  while (1)
  {
    v31 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v31 >= v37)
    {
      return v30;
    }

    v40 = *(v33 + 8 * v31);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v36 = (v40 - 1) & v40;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C6E2A384(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v65 - v23;
  v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v75 = *(v24 - 8);
  v25 = *(v75 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v74 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v65 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  result = sub_1C6EE5320();
  v30 = result;
  v31 = 0;
  v77 = a1;
  v34 = *(a1 + 64);
  v33 = a1 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v72 = result + 64;
  v73 = (v18 + 48);
  v71 = v17;
  if ((v36 & v32) != 0)
  {
    do
    {
      v39 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
LABEL_10:
      v42 = v39 | (v31 << 6);
      v43 = *(v77 + 56);
      v44 = (*(v77 + 48) + 16 * v42);
      v45 = v44[1];
      v79 = *v44;
      v46 = v80;
      sub_1C6E2B79C(v43 + *(v75 + 72) * v42, v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v47 = v46;
      v48 = v74;
      sub_1C6E2B79C(v47, v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v49 = v76;
      sub_1C6E2B624(v48, v76, &qword_1EC1F7A98, &qword_1C6EE7840);

      sub_1C6E2B86C(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v50 = 1;
      if ((*v73)(v49, 1, v17) == 1)
      {
        v51 = 0;
      }

      else
      {
        sub_1C6E2B804(v49, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v64 = v67;
            sub_1C6E2B804(v78, v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v51 = *v64;

            sub_1C6E2B86C(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
            v50 = 0;
            v52 = 0x1000000000000000;
          }

          else
          {
            v60 = v66;
            sub_1C6E2B804(v78, v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v51 = *v60;

            sub_1C6E2B86C(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v52 = 0;
            v50 = 0;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v59 = v69;
            sub_1C6E2B804(v78, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v51 = *v59;

            sub_1C6E2B86C(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v50 = 0;
            v52 = 0x3000000000000000;
          }

          else
          {
            v62 = v70;
            sub_1C6E2B804(v78, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v51 = *v62;
            v63 = v62[1];
            sub_1C6E00D18(*v62, v63);
            sub_1C6E2B86C(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v52 = v63 | 0x1000000000000000;
            v50 = 1;
          }

          goto LABEL_13;
        }

        v61 = v68;
        sub_1C6E2B804(v78, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v51 = *v61;

        sub_1C6E2B86C(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v50 = 0;
      }

      v52 = 0x2000000000000000;
LABEL_13:
      result = sub_1C6E2B86C(v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      *(v72 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v53 = (v30[6] + 16 * v42);
      *v53 = v79;
      v53[1] = v45;
      v54 = v30[7] + 24 * v42;
      *v54 = v51;
      *(v54 + 8) = v52;
      *(v54 + 16) = v50;
      v55 = v30[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_27;
      }

      v30[2] = v57;
      v17 = v71;
    }

    while (v37);
  }

  v40 = v31;
  while (1)
  {
    v31 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v31 >= v38)
    {
      return v30;
    }

    v41 = *(v33 + 8 * v31);
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v37 = (v41 - 1) & v41;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1C6E2AAA8(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
  v4 = sub_1C6EE5320();
  v5 = v4;
  v6 = 0;
  v31 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v28 = v4 + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v31 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v31 + 56) + 8 * v17);

      sub_1C6E1423C(v21, &v29);
      if (v2)
      {
        break;
      }

      *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = (v5[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      v23 = v5[7] + 24 * v17;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      v5[2] = v27;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

unint64_t sub_1C6E2AC54()
{
  result = qword_1EDEF5F18;
  if (!qword_1EDEF5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F18);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1C6E2AD0C()
{
  result = qword_1EC1F7C88;
  if (!qword_1EC1F7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C88);
  }

  return result;
}

unint64_t sub_1C6E2AD60()
{
  result = qword_1EC1F7CA0;
  if (!qword_1EC1F7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CA0);
  }

  return result;
}

unint64_t sub_1C6E2ADB4()
{
  result = qword_1EC1F7CB8;
  if (!qword_1EC1F7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CB8);
  }

  return result;
}

unint64_t sub_1C6E2AE08()
{
  result = qword_1EC1F7CC0;
  if (!qword_1EC1F7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CC0);
  }

  return result;
}

uint64_t sub_1C6E2AE5C(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7CA8, &qword_1C6EE8448);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E2AEEC()
{
  result = qword_1EC1F7CD8;
  if (!qword_1EC1F7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CD8);
  }

  return result;
}

unint64_t sub_1C6E2AF40()
{
  result = qword_1EC1F7CE0;
  if (!qword_1EC1F7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CE0);
  }

  return result;
}

uint64_t sub_1C6E2AF94(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E00CBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C6E2AFBC(uint64_t *a1)
{
  v3 = sub_1C6E2928C(*(v1 + 16));
  v4 = *a1;

  *a1 = v3;
  return result;
}

unint64_t sub_1C6E2B008()
{
  result = qword_1EDEF8910;
  if (!qword_1EDEF8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8910);
  }

  return result;
}

unint64_t sub_1C6E2B05C(uint64_t a1)
{
  result = sub_1C6E2B084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C6E2B084()
{
  result = qword_1EC1F7CE8;
  if (!qword_1EC1F7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CE8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C6E2B0F4(uint64_t a1, int a2)
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

uint64_t sub_1C6E2B13C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6E2B188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6E2B1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E2B258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C6E2B2A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C6E2B328(unsigned int *a1, int a2)
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

_WORD *sub_1C6E2B378(_WORD *result, int a2, int a3)
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

unint64_t sub_1C6E2B418()
{
  result = qword_1EC1F7CF0;
  if (!qword_1EC1F7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CF0);
  }

  return result;
}

unint64_t sub_1C6E2B470()
{
  result = qword_1EC1F7CF8;
  if (!qword_1EC1F7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7CF8);
  }

  return result;
}

unint64_t sub_1C6E2B4C8()
{
  result = qword_1EC1F7D00;
  if (!qword_1EC1F7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D00);
  }

  return result;
}

unint64_t sub_1C6E2B520()
{
  result = qword_1EC1F7D08;
  if (!qword_1EC1F7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D08);
  }

  return result;
}

unint64_t sub_1C6E2B578()
{
  result = qword_1EC1F7D10;
  if (!qword_1EC1F7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D10);
  }

  return result;
}

unint64_t sub_1C6E2B5D0()
{
  result = qword_1EC1F7D18;
  if (!qword_1EC1F7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7D18);
  }

  return result;
}

uint64_t sub_1C6E2B624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E2B68C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E2B6EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E2B734(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E2B79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E2B804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E2B86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E2B8CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1C6E2B91C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[19] = *MEMORY[0x1E69E9840];
  v38[5] = a3;
  v38[6] = a4;
  v38[7] = a1;
  v38[8] = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v38, 0, 14);
      sub_1C6EE4170();
      v15 = sub_1C6EE4B10();

      v16 = sub_1C6EE4B10();
      v17 = setxattr((v15 + 32), (v16 + 32), v38, 0, 0, 0);

      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v38[0] = a1;
      LOWORD(v38[1]) = a2;
      BYTE2(v38[1]) = BYTE2(a2);
      BYTE3(v38[1]) = BYTE3(a2);
      BYTE4(v38[1]) = BYTE4(a2);
      BYTE5(v38[1]) = BYTE5(a2);
      v8 = BYTE6(a2);
      sub_1C6EE4170();
      v9 = sub_1C6EE4B10();

      v10 = sub_1C6EE4B10();
      v11 = setxattr((v9 + 32), (v10 + 32), v38, v8, 0, 0);

      if (v11 < 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v37 = *MEMORY[0x1E69E9840];
      return;
    }

    v12 = a1;
    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v14 = sub_1C6E2BEA8(v12, v13, sub_1C6E2BE84);
  if (v4)
  {
    goto LABEL_19;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C6EE65B0;
  v19 = sub_1C6EE4170();
  v21 = v20;
  v22 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1C6DF10E0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  *(v18 + 96) = v22;
  *(v18 + 104) = v23;
  *(v18 + 64) = v23;
  *(v18 + 72) = a3;
  *(v18 + 80) = a4;

  LODWORD(v38[0]) = MEMORY[0x1CCA57C40](v24);
  v25 = sub_1C6EE5460();
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  *(v18 + 112) = v25;
  *(v18 + 120) = v26;
  sub_1C6EE4730();

  v27 = *MEMORY[0x1E696A798];
  v28 = MEMORY[0x1CCA57C40]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DB0, &qword_1C6EE8A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6EE6590;
  v30 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C6EE4A90();
  *(inited + 40) = v31;
  v32 = MEMORY[0x1CCA57C40]();
  if (strerror(v32))
  {
    v33 = sub_1C6EE4B70();
    *(inited + 72) = v22;
    *(inited + 48) = v33;
    *(inited + 56) = v34;
    sub_1C6E0C2A0(inited);
    swift_setDeallocating();
    sub_1C6E2BF58(inited + 32);
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v36 = sub_1C6EE4990();

    [v35 initWithDomain:v27 code:v28 userInfo:v36];

    swift_willThrow();
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:

  __break(1u);
}

uint64_t sub_1C6E2BD80@<X0>(const void *a1@<X0>, size_t a2@<X5>, unint64_t a3@<X6>, int *a4@<X8>)
{
  result = sub_1C6EE4170();
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 != 2)
    {
      a2 = 0;
      goto LABEL_11;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    a2 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v9)
  {
    a2 = BYTE6(a3);
LABEL_11:
    v12 = sub_1C6EE4B10();

    v13 = sub_1C6EE4B10();
    v14 = setxattr((v12 + 32), (v13 + 32), a1, a2, 0, 0);

    *a4 = v14;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    a2 = HIDWORD(a2) - a2;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E2BE84@<X0>(const void *a1@<X0>, int *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1C6E2BD80(a1, v2[5], v2[6], a2);
}

void *sub_1C6E2BEA8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1C6EE3F90();
  v8 = result;
  if (result)
  {
    result = sub_1C6EE3FC0();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1C6EE3FB0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1C6E2BF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7798, &qword_1C6EE8A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6E2BFC0()
{
  result = qword_1EC1F7DB8;
  if (!qword_1EC1F7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7DB8);
  }

  return result;
}

uint64_t sub_1C6E2C014(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E2C064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C6E2C0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6E2C0D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy100_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C6E2C138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t sub_1C6E2C180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E2C1EC(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v89 = sub_1C6EE3F70();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v84 = v2;
  if (v11)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C6E2D5B0(v2, &v96);
    v98 = v13;
    sub_1C6E15A70(0, v11, 0);
    v14 = 0;
    v85 = a1 + 32;
    v15 = v98;
    LODWORD(v83) = *v2;
    v79 = *(v2 + 8);
    v82 = *(v79 + 16);
    v81 = (v4 + 8);
    v86 = v11;
    while (1)
    {
      v91 = v14;
      v16 = (v85 + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      if (v83)
      {
        v17 = sub_1C6EE4B00();
        v20 = v19;
      }

      else
      {

        v20 = v18;
      }

      v87 = v15;

      v21 = v82;
      v90 = v18;
      if (v82)
      {
        break;
      }

LABEL_21:
      v96 = v17;
      v97 = v20;

      v36 = v88;
      sub_1C6EE3F40();
      sub_1C6DF0C68();
      v37 = sub_1C6EE5000();
      v39 = v38;

      (*v81)(v36, v89);

      v40 = sub_1C6E00E34(v37, v39, *(v84 + 16), *(v84 + 24), *(v84 + 32), *(v84 + 40));

      v15 = v87;
      v98 = v87;
      v42 = *(v87 + 16);
      v41 = *(v87 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C6E15A70((v41 > 1), v42 + 1, 1);
        v15 = v98;
      }

      v14 = v91 + 1;
      *(v15 + 16) = v42 + 1;
      *(v15 + 8 * v42 + 32) = v40;
      if (v14 == v86)
      {
        v43 = v84;
        sub_1C6E2D700(v84);
        v12 = MEMORY[0x1E69E7CC0];
        v44 = *(v15 + 16);
        if (v44)
        {
          goto LABEL_25;
        }

LABEL_57:

        v46 = MEMORY[0x1E69E7CC0];
        goto LABEL_58;
      }
    }

    v22 = v79 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v23 = *(v80 + 72);
    while (1)
    {
      sub_1C6E2D5E8(v22, v10);
      if (v10[8] != 1)
      {
        goto LABEL_61;
      }

      if (*v10 > 1)
      {
        if (*v10 != 2)
        {
          goto LABEL_61;
        }

        v28 = *(v10 + 2);
        v29 = *(v10 + 3);
        if (v28 == 46 && v29 == 0xE100000000000000 || (v30 = *(v10 + 2), v31 = *(v10 + 3), (sub_1C6EE54B0() & 1) != 0))
        {
          v32 = *(v10 + 4);
          v33 = *(v10 + 5);

          sub_1C6EE4B40();
          v26 = sub_1C6EE4BD0();
          goto LABEL_18;
        }

        v96 = v17;
        v97 = v20;
        v94 = v28;
        v95 = v29;
        v35 = *(v10 + 5);
        v92 = *(v10 + 4);
        v93 = v35;
        sub_1C6DF0C68();
      }

      else
      {
        if (*v10 != 1)
        {
          goto LABEL_61;
        }

        v96 = v17;
        v97 = v20;
        v24 = *(v10 + 3);
        v94 = *(v10 + 2);
        v95 = v24;
        v25 = *(v10 + 5);
        v92 = *(v10 + 4);
        v93 = v25;
        sub_1C6DF0C68();
      }

      v26 = sub_1C6EE5010();
LABEL_18:
      v17 = v26;
      v34 = v27;

      v20 = v34;
      sub_1C6E2D6A0(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      v22 += v23;
      if (!--v21)
      {
        goto LABEL_21;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
  v43 = v2;
  v44 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v44)
  {
    goto LABEL_57;
  }

LABEL_25:
  v94 = v12;
  sub_1C6E15A70(0, v44, 0);
  v45 = 0;
  v46 = v94;
  v47 = *(v43 + 56);
  v81 = *(v43 + 48);
  v80 = v47;
  v48 = *(v43 + 64);
  v49 = *(v43 + 80);
  v50 = *(v43 + 88);
  v83 = v15 + 32;
  v51 = HIBYTE(v50) & 0xF;
  v90 = v50;
  v91 = v49;
  v52 = v49 & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v52;
  }

  v82 = v51;
  v10 = (v48 + 56);
  v87 = v15;
  v79 = v44;
  while (1)
  {
    if (v45 >= *(v15 + 16))
    {
      goto LABEL_60;
    }

    v53 = *(v83 + 8 * v45);
    v86 = v46;
    v85 = v45;
    if (v82)
    {
      break;
    }

    v72 = sub_1C6E32D3C(v71, v48, v81, v80);
LABEL_52:

    v46 = v86;
    v94 = v86;
    v74 = *(v86 + 16);
    v73 = *(v86 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_1C6E15A70((v73 > 1), v74 + 1, 1);
      v46 = v94;
    }

    v45 = v85 + 1;
    *(v46 + 16) = v74 + 1;
    *(v46 + 8 * v74 + 32) = v72;
    if (v45 == v44)
    {

      v43 = v84;
LABEL_58:
      sub_1C6EDB41C(v46, v78, *(v43 + 72), *(v43 + 96));
      v76 = v75;

      return v76;
    }
  }

  v54 = *(v53 + 16);
  if (!v54)
  {

    v57 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v72 = sub_1C6E32D3C(v57, v48, v81, v80);

    v44 = v79;
    goto LABEL_52;
  }

  v92 = MEMORY[0x1E69E7CC0];

  v89 = v53;
  sub_1C6E15A10(0, v54, 0);
  v55 = v89;
  v56 = 0;
  v57 = v92;
  v88 = (v89 + 32);
  while (v56 < *(v55 + 16))
  {
    if (*(v48 + 16))
    {
      v58 = &v88[16 * v56];
      v59 = *v58;
      v60 = *(v58 + 1);
      v61 = *(v48 + 40);
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v62 = sub_1C6EE55A0();
      v63 = -1 << *(v48 + 32);
      v64 = v62 & ~v63;
      if ((*&v10[(v64 >> 3) & 0xFFFFFFFFFFFFFF8] >> v64))
      {
        v65 = ~v63;
        while (1)
        {
          v66 = (*(v48 + 48) + 16 * v64);
          v67 = *v66 == v59 && v66[1] == v60;
          if (v67 || (sub_1C6EE54B0() & 1) != 0)
          {
            break;
          }

          v64 = (v64 + 1) & v65;
          if (((*&v10[(v64 >> 3) & 0xFFFFFFFFFFFFFF8] >> v64) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v55 = v89;
        goto LABEL_45;
      }

LABEL_42:

      v55 = v89;
    }

    v60 = v90;

    v59 = v91;
LABEL_45:
    v92 = v57;
    v69 = *(v57 + 16);
    v68 = *(v57 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_1C6E15A10((v68 > 1), v69 + 1, 1);
      v55 = v89;
      v57 = v92;
    }

    ++v56;
    *(v57 + 16) = v69 + 1;
    v70 = v57 + 16 * v69;
    *(v70 + 32) = v59;
    *(v70 + 40) = v60;
    if (v56 == v54)
    {
      v15 = v87;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  sub_1C6E2D64C();
  swift_allocError();
  swift_willThrow();

  sub_1C6E2D6A0(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C6E2CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v97 = a1;
  v85 = a3;
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v83[-v5];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v83[-v11];
  v90 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v88 = *(v90 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v98 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v83[-v16];
  v87 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v18 = *(v87 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v21 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v83[-v24];
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v83[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E2D480(v97 + v99[6], v25, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v31 = *(v27 + 48);
  if (v31(v25, 1, v26) == 1)
  {
    v32 = MEMORY[0x1E69E7CC0];
    *v30 = 0;
    *(v30 + 1) = v32;
    v33 = &v30[*(v26 + 24)];
    sub_1C6EE4420();
    v34 = *(v26 + 28);
    v35 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
    (*(*(v35 - 8) + 56))(&v30[v34], 1, 1, v35);
    if (v31(v25, 1, v26) != 1)
    {
      sub_1C6E2D4E8(v25, &qword_1EC1F7DD8, &qword_1C6EE8B68);
    }
  }

  else
  {
    sub_1C6E2D548(v25, v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  }

  v101 = *v30;
  v89 = *(v30 + 1);

  sub_1C6E2D6A0(v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  v36 = v97;
  sub_1C6E2D480(v97 + v99[7], v17, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v37 = *(v18 + 48);
  v38 = v87;
  v39 = v37(v17, 1, v87);
  v40 = v93;
  v41 = v91;
  if (v39 == 1)
  {
    sub_1C6EE4420();
    v42 = *(v38 + 20);
    v43 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
    (*(*(v43 - 8) + 56))(&v21[v42], 1, 1, v43);
    v44 = *(v38 + 24);
    v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
    (*(*(v45 - 8) + 56))(&v21[v44], 1, 1, v45);
    v46 = v37(v17, 1, v38);
    v47 = v94;
    v48 = v92;
    v49 = v98;
    if (v46 != 1)
    {
      sub_1C6E2D4E8(v17, &qword_1EC1F7DD0, &qword_1C6EE8B60);
    }
  }

  else
  {
    sub_1C6E2D548(v17, v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
    v47 = v94;
    v48 = v92;
    v49 = v98;
  }

  v92 = sub_1C6E011E0(v21);
  v94 = v50;
  v87 = v51;
  v84 = v52;
  sub_1C6E2D6A0(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E2D480(v36 + v99[8], v41, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  v53 = *(v88 + 48);
  v54 = v90;
  if (v53(v41, 1, v90) == 1)
  {
    sub_1C6EE4420();
    v55 = *(v54 + 20);
    v56 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
    (*(*(v56 - 8) + 56))(&v98[v55], 1, 1, v56);
    v57 = *(v54 + 24);
    v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
    v59 = &v98[v57];
    v49 = v98;
    (*(*(v58 - 8) + 56))(v59, 1, 1, v58);
    v60 = v53(v41, 1, v54);
    v61 = v95;
    if (v60 != 1)
    {
      sub_1C6E2D4E8(v41, &qword_1EC1F7DC8, &qword_1C6EE8B58);
    }
  }

  else
  {
    sub_1C6E2D548(v41, v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
    v61 = v95;
  }

  v62 = sub_1C6E33400(v49);
  v64 = v63;
  sub_1C6E2D6A0(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
  sub_1C6E2D480(v36 + v99[9], v47, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v65 = *(v48 + 48);
  if (v65(v47, 1, v40) == 1)
  {
    *v61 = 0;
    v61[1] = 0xE000000000000000;
    v61[2] = sub_1C6E0C3E4(MEMORY[0x1E69E7CC0]);
    v66 = v61 + *(v40 + 24);
    sub_1C6EE4420();
    v67 = *(v40 + 28);
    v68 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
    (*(*(v68 - 8) + 56))(v61 + v67, 1, 1, v68);
    if (v65(v47, 1, v40) != 1)
    {
      sub_1C6E2D4E8(v47, &qword_1EC1F7DC0, &qword_1C6EE8B50);
    }
  }

  else
  {
    sub_1C6E2D548(v47, v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  }

  v69 = v96;
  v73 = sub_1C6EDB618(v61);
  v74 = v61;
  if (v69)
  {
    sub_1C6E2D6A0(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  }

  else
  {
    v76 = v70;
    v77 = v71;
    v78 = v72;
    sub_1C6E2D6A0(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
    if (v86)
    {
      v79 = v86;
    }

    else
    {

      v79 = sub_1C6E0D44C(v80);
    }

    v81 = v84 & 1;
    v100 = v84 & 1;
    v82 = v85;
    *v85 = v101;
    *(v82 + 1) = v89;
    *(v82 + 2) = v92;
    *(v82 + 3) = v94;
    *(v82 + 4) = v87;
    v82[40] = v81;
    *(v82 + 6) = v62;
    *(v82 + 7) = v64;
    *(v82 + 8) = v79;
    *(v82 + 9) = v73;
    *(v82 + 10) = v76;
    *(v82 + 11) = v77;
    *(v82 + 24) = v78;
  }
}

uint64_t sub_1C6E2D480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E2D4E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E2D548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E2D5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6E2D64C()
{
  result = qword_1EC1F7DE0;
  if (!qword_1EC1F7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7DE0);
  }

  return result;
}

uint64_t sub_1C6E2D6A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ComputeServiceSettings.computeServiceDataSettings.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void ComputeServiceSettings.unloadPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ComputeServiceSettings.init(computeServiceDataSettings:storageMode:unloadPolicy:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 25) = v5;
  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceSettings.UnloadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ComputeServiceSettings.UnloadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6E2D86C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C6E2D89C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceSettings.StorageMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceSettings.StorageMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C6E2DA3C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E2DA80()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E2DAF4()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

id sub_1C6E2DB38(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (!*(a1 + 16) || (v6 = sub_1C6DEC784(*a2, *(a2 + 8)), (v7 & 1) == 0))
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C6EE6590;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1C6DF10E0();
    *(v14 + 32) = v3;
    *(v14 + 40) = v2;

    sub_1C6EE4730();

    return 0;
  }

  v8 = *(a1 + 56) + 24 * v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (*(a2 + 32) != 1)
  {
    goto LABEL_11;
  }

  v12 = *(a2 + 24);
  if (v12 <= 3)
  {
    if (v12 == 2)
    {
      v13 = 131104;
      goto LABEL_17;
    }

LABEL_11:
    sub_1C6E00CBC(v10, v9, v11);
    if (qword_1EDEF8F80 == -1)
    {
LABEL_12:
      sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C6EE6590;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C6DF10E0();
      *(v15 + 32) = v3;
      *(v15 + 40) = v2;

      sub_1C6EE4730();

      sub_1C6E00C60(v10, v9, v11);
      return 0;
    }

LABEL_21:
    swift_once();
    goto LABEL_12;
  }

  if ((v12 - 5) < 2)
  {
    goto LABEL_11;
  }

  if (v12 == 4)
  {
    v13 = 65568;
  }

  else
  {
    v13 = 65552;
  }

LABEL_17:
  v17 = *(a2 + 16);
  sub_1C6E00CBC(v10, v9, v11);
  v18 = sub_1C6E0E97C(v13, v17);
  if (!v18)
  {
    if (qword_1EDEF8F80 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v19 = v18;
  sub_1C6E00C60(v10, v9, v11);
  return v19;
}

uint64_t getEnumTagSinglePayload for DType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6E2E008()
{
  result = qword_1EC1F7DE8;
  if (!qword_1EC1F7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7DE8);
  }

  return result;
}

uint64_t sub_1C6E2E05C(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  v31 = *(v7 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v8 = 0;
  v30 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = MEMORY[0x1E69E7CC8];
  while (v8 < *(v7 + 16))
  {
    sub_1C6E00BFC(v30 + *(v3 + 72) * v8, v6);
    v12 = sub_1C6E2DB38(v32, v6);
    if (!v12)
    {
      goto LABEL_4;
    }

    v14 = *v6;
    v13 = v6[1];
    v15 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v9;
    v17 = sub_1C6DEC784(v14, v13);
    v19 = v9[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_20;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      sub_1C6E072DC(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1C6DEC784(v14, v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v9 = v33;
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v28 = v17;
    sub_1C6E09C58();
    v17 = v28;
    v9 = v33;
    if (v23)
    {
LABEL_3:
      v10 = v9[7];
      v11 = *(v10 + 8 * v17);
      *(v10 + 8 * v17) = v15;

      goto LABEL_4;
    }

LABEL_13:
    v9[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v9[6] + 16 * v17);
    *v25 = v14;
    v25[1] = v13;
    *(v9[7] + 8 * v17) = v15;

    v26 = v9[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v9[2] = v27;
LABEL_4:
    sub_1C6E2E408(v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v31 == ++v8)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E2E2E4()
{
  v1 = v0[3];

  sub_1C6E2E408(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E00DCC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TFModelContainer()
{
  result = qword_1EDEF8540;
  if (!qword_1EDEF8540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E2E408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E2E468(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1C6EE4E50();
  if (!v26)
  {
    return sub_1C6EE4CF0();
  }

  v48 = v26;
  v52 = sub_1C6EE52D0();
  v39 = sub_1C6EE52E0();
  sub_1C6EE5280();
  result = sub_1C6EE4E40();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1C6EE4E70();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1C6EE52C0();
      result = sub_1C6EE4E60();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E2E898(__int128 *a1, __int128 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = swift_allocObject();
  sub_1C6E2E900(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1C6E2E900(__int128 *a1, __int128 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v8 = *a4;
  sub_1C6DF30C8(a1, v5 + 16);
  sub_1C6DF30C8(a2, v5 + 56);
  *(v5 + 96) = a3;
  *(v5 + 104) = v8;
  sub_1C6DEDC4C(v8 != 2);
  return v5;
}

uint64_t sub_1C6E2E960()
{
  v1 = *(*v0 + 80);
  v2 = sub_1C6EE4FE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v26 - v6;
  v8 = *(v1 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v26 - v11;
  v13 = *(v0 + 104);
  if (v13 == 2)
  {
    v26 = v10;
    v14 = *(v0 + 96);
    v15 = sub_1C6DEDD3C(5);
    if (v15)
    {
      v16 = v15;
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C6EE6590;
      v18 = sub_1C6DF29EC();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1C6DF10E0();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      sub_1C6EE4EE0();
      sub_1C6EE4730();
    }

    else
    {
      v24 = *(v0 + 40);
      v25 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
      (*(v25 + 24))(v24, v25);
      if ((*(v8 + 48))(v7, 1, v1) == 1)
      {
        (*(v3 + 8))(v7, v26);
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EE0();
        sub_1C6EE4730();
        return 0;
      }

      else
      {
        (*(v8 + 32))(v12, v7, v1);
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EE0();
        sub_1C6EE4730();
        v16 = sub_1C6ECFF6C(v12);
        sub_1C6E2EE18(v16);
        (*(v8 + 8))(v12, v1);
      }
    }

    return v16;
  }

  else
  {
    v21 = *(v0 + 96);
    if (v13)
    {
      v22 = 31;
    }

    else
    {
      v22 = 13;
    }

    return sub_1C6DEDD3C(v22);
  }
}

uint64_t sub_1C6E2EE18(uint64_t *a1)
{
  v2 = sub_1C6ED1770();
  sub_1C6E3041C(v2, a1);

  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EE0();

  return sub_1C6EE4730();
}

uint64_t sub_1C6E2EFE0()
{
  v1[8] = v0;
  v2 = *v0;
  v1[9] = *v0;
  v3 = *(v2 + 80);
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_1C6EE48F0();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E2F140, 0, 0);
}

uint64_t sub_1C6E2F140()
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[8];
  v0[17] = qword_1EDEF66D0;
  sub_1C6EE4EE0();
  sub_1C6EE4730();
  sub_1C6EE48E0();
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v5 = *(v4 + 32);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1C6E2F2F0;
  v8 = v0[12];

  return v10(v8, v3, v4);
}

uint64_t sub_1C6E2F2F0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1C6E2F97C;
  }

  else
  {
    v3 = sub_1C6E2F404;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6E2F404()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v23 = v0[8];
  v24 = v0[19];
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6B40;
  v6 = *(v3 + 88);
  v0[5] = (*(v6 + 72))(v4, v6);
  v0[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
  v8 = sub_1C6EE4AF0();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C6DF10E0();
  v0[21] = v12;
  *(v5 + 64) = v12;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  *(v5 + 96) = v11;
  *(v5 + 104) = v12;
  v13 = *(v6 + 24);
  sub_1C6EE51C0();
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6E2FDF4(v23, v2);
  v0[22] = v14;
  if (v24)
  {
    v15 = v0[16];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_1C6E2FC3C();
    v16 = v0[15];
    v17 = v0[12];
    (*(v0[14] + 8))(v0[16], v0[13]);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v14;
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_1C6E2F674;
    v22 = v0[8];

    return sub_1C6E2FFA8(v20);
  }
}

uint64_t sub_1C6E2F674(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_1C6E2FA20;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v7 = sub_1C6E2F7A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1C6E2F7A0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v8 = sub_1C6EE48D0();
  v9 = *(v6 + 8);
  v9(v3, v5);
  result = sub_1C6EE48D0();
  v11 = v8 - result;
  v22 = v9;
  if (v1 == 1)
  {
    if (v8 >= result)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v8 < result)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v0 + 120);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = MEMORY[0x1E69E6438];
  *(v7 + 56) = MEMORY[0x1E69E63B0];
  *(v7 + 64) = v17;
  *(v7 + 32) = v11 / 1000000.0;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  (*(v15 + 8))(v14, v16);
  sub_1C6E2FC3C();
  v22(v13, v20);

  v18 = *(v0 + 8);
  v19 = *(v0 + 176);

  return v18(v19);
}

uint64_t sub_1C6E2F97C()
{
  v1 = v0[16];
  sub_1C6E2FC3C();
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  (*(v0[14] + 8))(v0[16], v0[13]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C6E2FA20()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  swift_getErrorValue();
  v7 = v0[2];
  v8 = v0[3];
  sub_1C6EE5480();
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6ED02E4();
  v9 = *(v0[8] + 96);
  sub_1C6ED0370();
  v10 = v0[24];
  v11 = v0[22];
  v12 = v0[16];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  sub_1C6E2FC3C();
  v20 = v0[24];
  v16 = v0[15];
  v17 = v0[12];
  (*(v0[14] + 8))(v0[16], v0[13]);

  v18 = v0[1];

  return v18();
}