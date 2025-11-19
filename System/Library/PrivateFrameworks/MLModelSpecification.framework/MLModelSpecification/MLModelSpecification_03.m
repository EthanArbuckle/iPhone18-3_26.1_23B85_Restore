uint64_t sub_257486F50(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25748707C((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25748707C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_257743994() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *(v14 + 1);
    *v7 = *v14;
    *(v7 + 1) = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_29:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v19 = *(v11 - 4) == *(v6 - 4) && *(v11 - 3) == *(v6 - 3);
    if (!v19 && (sub_257743994() & 1) != 0)
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v21 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 32)
    {
      v20 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v20;
    }

    v11 -= 32;
  }

LABEL_46:
  v22 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v22])
  {
    memmove(v6, v4, 32 * v22);
  }

  return 1;
}

uint64_t sub_257487240()
{
  OUTLINED_FUNCTION_267();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_257487298(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2574872AC(result, a2, a3);
  }

  return result;
}

uint64_t sub_2574872AC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 5)
  {
    return sub_257486740(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_2574872D0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2574872E4(result, a2, a3);
  }

  return result;
}

uint64_t sub_2574872E4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 5)
  {
    return sub_257486798(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_257487308()
{
  OUTLINED_FUNCTION_267();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_257479298();
}

void OUTLINED_FUNCTION_56()
{
  *v1 = v0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = v0;
  v1[4] = v0;
  v1[5] = v0;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = v0;
}

__n128 OUTLINED_FUNCTION_57()
{
  *(v2 + 16) = v1;
  v4 = v2 + 48 * v0;
  result = *(v3 - 192);
  v6 = *(v3 - 160);
  *(v4 + 48) = *(v3 - 176);
  *(v4 + 64) = v6;
  *(v4 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_59@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 192);
  v3 = *(v1 - 160);
  *(a1 + 48) = *(v1 - 176);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = a1;
  v4 = v1 + *(v2 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_74()
{
  v3 = *(v2 - 104);
  v4 = *(v0 + 80);
  *(v2 - 144) = v1;
  v5 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_75@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v2;
  *(v4 - 120) = v1;
  *(v4 - 104) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_81()
{
  v2 = *(v0 - 96);

  return sub_2574792EC();
}

void OUTLINED_FUNCTION_83()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_86()
{
  *v2 = v0;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = v0;
  v2[4] = v0;
  v2[5] = v0;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = v0;
  v4 = v2 + *(v1 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_87@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = a1;
  v4 = v1 + *(v2 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_88(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v15 - 134) = v14;
  *(v15 - 133) = a8;
  *(v15 - 132) = a7;
  *(v15 - 131) = a6;
  *(v15 - 130) = v8;
  *(v15 - 129) = a5;
  *(v15 - 128) = a4;
  *(v15 - 127) = a2;
  *(v15 - 126) = v13;
  *(v15 - 125) = a1;
  *(v15 - 124) = v12;
  *(v15 - 123) = v11;
  *(v15 - 122) = v10;
  *(v15 - 121) = v9;

  return memcmp((v15 - 120), (v15 - 134), a3);
}

void OUTLINED_FUNCTION_136()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_140()
{

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_257743644();
}

_OWORD *OUTLINED_FUNCTION_146@<X0>(uint64_t a1@<X8>)
{
  result = sub_25748396C((v2 - 144), (a1 + 16));
  v4 = *(v1 + 24);
  v5 = *(v1 + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_149()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

void OUTLINED_FUNCTION_150()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_154()
{
  v5 = v1;
  v6 = *(v3 - 208);

  return sub_257483094(v5, v2, v0, (v3 - 120));
}

uint64_t OUTLINED_FUNCTION_164()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_168@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = a1;
  v4 = v1 + *(v2 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = a1;
  v4 = v1 + *(v2 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_170@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = a1;
  v4 = v1 + *(v2 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_171()
{

  sub_257469BAC();
}

uint64_t OUTLINED_FUNCTION_175()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 256);
  *(a1 + 32) = 1701869908;
  *(a1 + 40) = 0xE400000000000000;

  return type metadata accessor for Proto_FeatureDescription(0);
}

void OUTLINED_FUNCTION_184()
{
  *(v1 - 104) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_187()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_192()
{

  return sub_257743644();
}

void OUTLINED_FUNCTION_199()
{
  *(v0 + 448) = 34;
  *(v0 + 456) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_200()
{
  *(v3 - 114) = v1;
  *(v3 - 113) = HIBYTE(v0);
  *(v3 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_203(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  *(v15 - 150) = v14;
  *(v15 - 149) = a6;
  *(v15 - 148) = a5;
  *(v15 - 147) = a7;
  *(v15 - 146) = v7;
  *(v15 - 145) = a3;
  *(v15 - 144) = a2;
  *(v15 - 143) = a1;
  *(v15 - 142) = a4;
  *(v15 - 141) = v12;
  *(v15 - 140) = v11;
  *(v15 - 139) = v10;
  *(v15 - 138) = v9;
  *(v15 - 137) = v8;
  return v13;
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1)
{
  if (a1 >= v1 - *(v2 - 256))
  {
    v3 = v1 - *(v2 - 256);
  }

  return v2 - 120;
}

uint64_t OUTLINED_FUNCTION_214()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_257487308();
}

void OUTLINED_FUNCTION_221()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_260()
{

  return sub_257743644();
}

void OUTLINED_FUNCTION_285(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = 2;
}

uint64_t OUTLINED_FUNCTION_286(uint64_t a1)
{
  sub_257466F40(a1, 0, 3);
}

uint64_t OUTLINED_FUNCTION_291(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 - 112) = v1;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_296()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_297()
{
  v2 = *(v0 - 96);

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_299()
{
  *v1 = v2;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = v2;
  v4 = v1 + *(v0 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_300(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = v1 + *(v2 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_301@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_303()
{
  v3 = *(*(v2 - 104) + 48);
  result = v1 + *(v0 + 20);
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_312(uint64_t a1, uint64_t a2, char a3)
{
  sub_257466F40(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_315(int64_t a1)
{
  if (a1 >= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = a1;
  }

  return memcmp((v3 - 120), v1, v5);
}

void OUTLINED_FUNCTION_316()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_319@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1)
{
  *(v2 + 64) = a1;
  v4 = v2 + *(v1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_327()
{

  sub_257505F58();
}

uint64_t OUTLINED_FUNCTION_330(uint64_t result)
{
  *v1 = result;
  *(result + 40) = v2;
  return result;
}

void OUTLINED_FUNCTION_331()
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = (v2 + 16 * v0);
  v6 = *v4;
  v5 = v4[1];
}

uint64_t OUTLINED_FUNCTION_341@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 120) = a3;
  *(v3 - 144) = result;
  *(v3 - 136) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_343()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_351()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_352()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_353()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_354()
{
  result = *v1;
  v3 = *v0;
  return result;
}

__n128 *OUTLINED_FUNCTION_356(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957515;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_370(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_371(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void OUTLINED_FUNCTION_378()
{

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_380()
{
}

uint64_t OUTLINED_FUNCTION_381()
{
  v2 = *(*(v0 - 96) + 24);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_382()
{
  v2 = *(v0 - 88);

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_383(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for Proto_ModelDescription(0);
}

uint64_t OUTLINED_FUNCTION_384@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v3 - 264);
  v6 = *(v3 - 256);

  return sub_257483094(a1, v2, v5, a2);
}

uint64_t OUTLINED_FUNCTION_385()
{

  return sub_257483824();
}

uint64_t OUTLINED_FUNCTION_386()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 144);

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_387(uint64_t a1)
{
  *(v1 + 56) = a1;

  return type metadata accessor for Proto_Model(0);
}

uint64_t OUTLINED_FUNCTION_388()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_389()
{

  return sub_257483824();
}

uint64_t OUTLINED_FUNCTION_390()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_391(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_2577431B4();
}

void OUTLINED_FUNCTION_394()
{
  v2 = *(v0 - 128);
  v1 = *(v0 - 120);
  v3 = *(v0 - 136);
}

void OUTLINED_FUNCTION_397()
{
  v1 = *(v0 - 152);
  v2 = *(v0 - 320);
  v3 = *(v0 - 176);
}

void OUTLINED_FUNCTION_403(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_407(uint64_t result)
{
  v4 = *(result + 48);
  v5 = *(v3 - 104);
  *v5 = v2;
  v5[1] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_413(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = *(v4 - 112);

  return sub_2574FE460();
}

void OUTLINED_FUNCTION_420(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  v6 = *(v3 + 120);
}

void OUTLINED_FUNCTION_423()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_428()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_429()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_430()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_431()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_432()
{
  *(v1 - 264) = v0;

  return sub_257742F84();
}

uint64_t OUTLINED_FUNCTION_435()
{
  v2 = *(v0 + 52);

  return type metadata accessor for Proto_Metadata(0);
}

uint64_t OUTLINED_FUNCTION_436()
{
  v3 = v1 + *(v0 + 48);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_437()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_438()
{
  v2 = *(v0 + 52);

  return type metadata accessor for Proto_Metadata(0);
}

uint64_t OUTLINED_FUNCTION_439()
{

  return sub_2574792EC();
}

uint64_t OUTLINED_FUNCTION_440()
{
  v2 = *(v0 + 52);

  return type metadata accessor for Proto_Metadata(0);
}

uint64_t OUTLINED_FUNCTION_441()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_442()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_443()
{

  return sub_257483824();
}

uint64_t OUTLINED_FUNCTION_444()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_445()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_447()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_448(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_2574897E0@<X0>(uint64_t a1@<X8>)
{
  v1157 = a1;
  v1 = type metadata accessor for NeuralNetwork.Layer.CustomParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v1156 = v5;
  v6 = OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v1155 = v11;
  v12 = OUTLINED_FUNCTION_153();
  v13 = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v1154 = v17;
  v18 = OUTLINED_FUNCTION_153();
  v19 = type metadata accessor for NeuralNetwork.Layer.TopKParameters(v18);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v1153 = v23;
  v24 = OUTLINED_FUNCTION_153();
  v25 = type metadata accessor for NeuralNetwork.Layer.OneHotParameters(v24);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_1();
  v1152 = v29;
  v30 = OUTLINED_FUNCTION_153();
  v31 = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters(v30);
  v32 = OUTLINED_FUNCTION_13(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v1151 = v35;
  v36 = OUTLINED_FUNCTION_153();
  v37 = type metadata accessor for NeuralNetwork.Layer.BiasParameters(v36);
  v38 = OUTLINED_FUNCTION_13(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v1150 = v41;
  v42 = OUTLINED_FUNCTION_153();
  v43 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters(v42);
  v44 = OUTLINED_FUNCTION_13(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_1();
  v1149 = v47;
  v48 = OUTLINED_FUNCTION_153();
  v49 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters(v48);
  v50 = OUTLINED_FUNCTION_13(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_1();
  v1148 = v53;
  v54 = OUTLINED_FUNCTION_153();
  v55 = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters(v54);
  v56 = OUTLINED_FUNCTION_13(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_1();
  v1147 = v59;
  v60 = OUTLINED_FUNCTION_153();
  v61 = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters(v60);
  v62 = OUTLINED_FUNCTION_13(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_1();
  v1146 = v65;
  v66 = OUTLINED_FUNCTION_153();
  v67 = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters(v66);
  v68 = OUTLINED_FUNCTION_13(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_1();
  v1145 = v71;
  v72 = OUTLINED_FUNCTION_153();
  v73 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters(v72);
  v74 = OUTLINED_FUNCTION_13(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_1();
  v1144 = v77;
  v78 = OUTLINED_FUNCTION_153();
  v79 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters(v78);
  v80 = OUTLINED_FUNCTION_13(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_12_1();
  v1143 = v83;
  v84 = OUTLINED_FUNCTION_153();
  v85 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters(v84);
  v86 = OUTLINED_FUNCTION_13(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_1();
  v1142 = v89;
  v90 = OUTLINED_FUNCTION_153();
  v91 = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters(v90);
  v92 = OUTLINED_FUNCTION_13(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_12_1();
  v1141 = v95;
  v96 = OUTLINED_FUNCTION_153();
  v97 = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters(v96);
  v98 = OUTLINED_FUNCTION_13(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_12_1();
  v1140 = v101;
  v102 = OUTLINED_FUNCTION_153();
  v103 = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters(v102);
  v104 = OUTLINED_FUNCTION_13(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_12_1();
  v1139 = v107;
  v108 = OUTLINED_FUNCTION_153();
  v109 = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters(v108);
  v110 = OUTLINED_FUNCTION_13(v109);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_12_1();
  v1138 = v113;
  v114 = OUTLINED_FUNCTION_153();
  v115 = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters(v114);
  v116 = OUTLINED_FUNCTION_13(v115);
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_12_1();
  v120 = OUTLINED_FUNCTION_38_0(v119);
  v121 = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters(v120);
  v122 = OUTLINED_FUNCTION_13(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_12_1();
  v126 = OUTLINED_FUNCTION_38_0(v125);
  v127 = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters(v126);
  v128 = OUTLINED_FUNCTION_13(v127);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_12_1();
  v132 = OUTLINED_FUNCTION_38_0(v131);
  v133 = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters(v132);
  v134 = OUTLINED_FUNCTION_13(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_12_1();
  v138 = OUTLINED_FUNCTION_38_0(v137);
  v139 = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters(v138);
  v140 = OUTLINED_FUNCTION_13(v139);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_12_1();
  v144 = OUTLINED_FUNCTION_38_0(v143);
  v145 = type metadata accessor for NeuralNetwork.Layer.LessThanParameters(v144);
  v146 = OUTLINED_FUNCTION_13(v145);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_12_1();
  v150 = OUTLINED_FUNCTION_38_0(v149);
  v151 = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters(v150);
  v152 = OUTLINED_FUNCTION_13(v151);
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_12_1();
  v156 = OUTLINED_FUNCTION_38_0(v155);
  v157 = type metadata accessor for NeuralNetwork.Layer.EqualParameters(v156);
  v158 = OUTLINED_FUNCTION_13(v157);
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_12_1();
  v162 = OUTLINED_FUNCTION_38_0(v161);
  v163 = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters(v162);
  v164 = OUTLINED_FUNCTION_13(v163);
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_12_1();
  v168 = OUTLINED_FUNCTION_38_0(v167);
  v169 = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters(v168);
  v170 = OUTLINED_FUNCTION_13(v169);
  v172 = *(v171 + 64);
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_12_1();
  v174 = OUTLINED_FUNCTION_38_0(v173);
  v175 = type metadata accessor for NeuralNetwork.Layer.LoopContinueParameters(v174);
  v176 = OUTLINED_FUNCTION_13(v175);
  v178 = *(v177 + 64);
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_12_1();
  v180 = OUTLINED_FUNCTION_38_0(v179);
  v181 = type metadata accessor for NeuralNetwork.Layer.LoopBreakParameters(v180);
  v182 = OUTLINED_FUNCTION_13(v181);
  v184 = *(v183 + 64);
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_12_1();
  v186 = OUTLINED_FUNCTION_38_0(v185);
  v187 = type metadata accessor for NeuralNetwork.Layer.LoopParameters(v186);
  v188 = OUTLINED_FUNCTION_13(v187);
  v190 = *(v189 + 64);
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_12_1();
  v192 = OUTLINED_FUNCTION_38_0(v191);
  v193 = type metadata accessor for NeuralNetwork.Layer.CopyParameters(v192);
  v194 = OUTLINED_FUNCTION_13(v193);
  v196 = *(v195 + 64);
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v197);
  v198 = type metadata accessor for NeuralNetwork.Layer.BranchParameters();
  v199 = OUTLINED_FUNCTION_13(v198);
  v201 = *(v200 + 64);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_12_1();
  v203 = OUTLINED_FUNCTION_38_0(v202);
  v204 = type metadata accessor for NeuralNetwork.Layer.WhereBroadcastableParameters(v203);
  v205 = OUTLINED_FUNCTION_13(v204);
  v207 = *(v206 + 64);
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_12_1();
  v209 = OUTLINED_FUNCTION_38_0(v208);
  v210 = type metadata accessor for NeuralNetwork.Layer.WhereNonZeroParameters(v209);
  v211 = OUTLINED_FUNCTION_13(v210);
  v213 = *(v212 + 64);
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_12_1();
  v215 = OUTLINED_FUNCTION_38_0(v214);
  v216 = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters(v215);
  v217 = OUTLINED_FUNCTION_13(v216);
  v219 = *(v218 + 64);
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_12_1();
  v221 = OUTLINED_FUNCTION_38_0(v220);
  v222 = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters(v221);
  v223 = OUTLINED_FUNCTION_13(v222);
  v225 = *(v224 + 64);
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_12_1();
  v227 = OUTLINED_FUNCTION_38_0(v226);
  v228 = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters(v227);
  v229 = OUTLINED_FUNCTION_13(v228);
  v231 = *(v230 + 64);
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_12_1();
  v233 = OUTLINED_FUNCTION_38_0(v232);
  v234 = type metadata accessor for NeuralNetwork.Layer.MaxBroadcastableParameters(v233);
  v235 = OUTLINED_FUNCTION_13(v234);
  v237 = *(v236 + 64);
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_12_1();
  v239 = OUTLINED_FUNCTION_38_0(v238);
  v240 = type metadata accessor for NeuralNetwork.Layer.MinBroadcastableParameters(v239);
  v241 = OUTLINED_FUNCTION_13(v240);
  v243 = *(v242 + 64);
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_12_1();
  v245 = OUTLINED_FUNCTION_38_0(v244);
  v246 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters(v245);
  v247 = OUTLINED_FUNCTION_13(v246);
  v249 = *(v248 + 64);
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_12_1();
  v251 = OUTLINED_FUNCTION_38_0(v250);
  v252 = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters(v251);
  v253 = OUTLINED_FUNCTION_13(v252);
  v255 = *(v254 + 64);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_12_1();
  v257 = OUTLINED_FUNCTION_38_0(v256);
  v258 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters(v257);
  v259 = OUTLINED_FUNCTION_13(v258);
  v261 = *(v260 + 64);
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_12_1();
  v263 = OUTLINED_FUNCTION_38_0(v262);
  v264 = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters(v263);
  v265 = OUTLINED_FUNCTION_13(v264);
  v267 = *(v266 + 64);
  MEMORY[0x28223BE20](v265);
  OUTLINED_FUNCTION_12_1();
  v269 = OUTLINED_FUNCTION_38_0(v268);
  v270 = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters(v269);
  v271 = OUTLINED_FUNCTION_13(v270);
  v273 = *(v272 + 64);
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_12_1();
  v275 = OUTLINED_FUNCTION_38_0(v274);
  v276 = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters(v275);
  v277 = OUTLINED_FUNCTION_13(v276);
  v279 = *(v278 + 64);
  MEMORY[0x28223BE20](v277);
  OUTLINED_FUNCTION_12_1();
  v281 = OUTLINED_FUNCTION_38_0(v280);
  v282 = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters(v281);
  v283 = OUTLINED_FUNCTION_13(v282);
  v285 = *(v284 + 64);
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_12_1();
  v287 = OUTLINED_FUNCTION_38_0(v286);
  v288 = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters(v287);
  v289 = OUTLINED_FUNCTION_13(v288);
  v291 = *(v290 + 64);
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_12_1();
  v293 = OUTLINED_FUNCTION_38_0(v292);
  v294 = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters(v293);
  v295 = OUTLINED_FUNCTION_13(v294);
  v297 = *(v296 + 64);
  MEMORY[0x28223BE20](v295);
  OUTLINED_FUNCTION_12_1();
  v299 = OUTLINED_FUNCTION_38_0(v298);
  v300 = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters(v299);
  v301 = OUTLINED_FUNCTION_13(v300);
  v303 = *(v302 + 64);
  MEMORY[0x28223BE20](v301);
  OUTLINED_FUNCTION_12_1();
  v305 = OUTLINED_FUNCTION_38_0(v304);
  v306 = type metadata accessor for NeuralNetwork.Layer.ReduceParameters(v305);
  v307 = OUTLINED_FUNCTION_13(v306);
  v309 = *(v308 + 64);
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_12_1();
  v311 = OUTLINED_FUNCTION_38_0(v310);
  v312 = type metadata accessor for NeuralNetwork.Layer.AverageParameters(v311);
  v313 = OUTLINED_FUNCTION_13(v312);
  v315 = *(v314 + 64);
  MEMORY[0x28223BE20](v313);
  OUTLINED_FUNCTION_12_1();
  v317 = OUTLINED_FUNCTION_38_0(v316);
  v318 = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters(v317);
  v319 = OUTLINED_FUNCTION_13(v318);
  v321 = *(v320 + 64);
  MEMORY[0x28223BE20](v319);
  OUTLINED_FUNCTION_12_1();
  v323 = OUTLINED_FUNCTION_38_0(v322);
  v324 = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters(v323);
  v325 = OUTLINED_FUNCTION_13(v324);
  v327 = *(v326 + 64);
  MEMORY[0x28223BE20](v325);
  OUTLINED_FUNCTION_12_1();
  v329 = OUTLINED_FUNCTION_38_0(v328);
  v330 = type metadata accessor for NeuralNetwork.Layer.CropParameters(v329);
  v331 = OUTLINED_FUNCTION_13(v330);
  v333 = *(v332 + 64);
  MEMORY[0x28223BE20](v331);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v334);
  v335 = type metadata accessor for NeuralNetwork.Layer.GRUParameters();
  v336 = OUTLINED_FUNCTION_13(v335);
  v338 = *(v337 + 64);
  MEMORY[0x28223BE20](v336);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v339);
  v340 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters();
  v341 = OUTLINED_FUNCTION_13(v340);
  v343 = *(v342 + 64);
  MEMORY[0x28223BE20](v341);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v344);
  v345 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters();
  v346 = OUTLINED_FUNCTION_13(v345);
  v348 = *(v347 + 64);
  MEMORY[0x28223BE20](v346);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v349);
  v350 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters();
  v351 = OUTLINED_FUNCTION_13(v350);
  v353 = *(v352 + 64);
  MEMORY[0x28223BE20](v351);
  OUTLINED_FUNCTION_12_1();
  v355 = OUTLINED_FUNCTION_38_0(v354);
  v356 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters(v355);
  v357 = OUTLINED_FUNCTION_13(v356);
  v359 = *(v358 + 64);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_12_1();
  v361 = OUTLINED_FUNCTION_38_0(v360);
  v362 = type metadata accessor for NeuralNetwork.Layer.LRNParameters(v361);
  v363 = OUTLINED_FUNCTION_13(v362);
  v365 = *(v364 + 64);
  MEMORY[0x28223BE20](v363);
  OUTLINED_FUNCTION_12_1();
  v367 = OUTLINED_FUNCTION_38_0(v366);
  v368 = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters(v367);
  v369 = OUTLINED_FUNCTION_13(v368);
  v371 = *(v370 + 64);
  MEMORY[0x28223BE20](v369);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v372);
  v373 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters();
  v374 = OUTLINED_FUNCTION_13(v373);
  v376 = *(v375 + 64);
  MEMORY[0x28223BE20](v374);
  OUTLINED_FUNCTION_12_1();
  v378 = OUTLINED_FUNCTION_38_0(v377);
  v379 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters(v378);
  v380 = OUTLINED_FUNCTION_13(v379);
  v382 = *(v381 + 64);
  MEMORY[0x28223BE20](v380);
  OUTLINED_FUNCTION_12_1();
  v384 = OUTLINED_FUNCTION_38_0(v383);
  v385 = type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters(v384);
  v386 = OUTLINED_FUNCTION_13(v385);
  v388 = *(v387 + 64);
  MEMORY[0x28223BE20](v386);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v389);
  v390 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters();
  v391 = OUTLINED_FUNCTION_13(v390);
  v393 = *(v392 + 64);
  MEMORY[0x28223BE20](v391);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v394);
  v395 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters();
  v396 = OUTLINED_FUNCTION_13(v395);
  v398 = *(v397 + 64);
  MEMORY[0x28223BE20](v396);
  OUTLINED_FUNCTION_12_1();
  v400 = OUTLINED_FUNCTION_38_0(v399);
  v401 = type metadata accessor for NeuralNetwork.Layer.BroadcastableFloorDivParameters(v400);
  v402 = OUTLINED_FUNCTION_13(v401);
  v404 = *(v403 + 64);
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_12_1();
  v406 = OUTLINED_FUNCTION_38_0(v405);
  v407 = type metadata accessor for NeuralNetwork.Layer.BroadcastablePowParameters(v406);
  v408 = OUTLINED_FUNCTION_13(v407);
  v410 = *(v409 + 64);
  MEMORY[0x28223BE20](v408);
  OUTLINED_FUNCTION_12_1();
  v412 = OUTLINED_FUNCTION_38_0(v411);
  v413 = type metadata accessor for NeuralNetwork.Layer.BroadcastableModParameters(v412);
  v414 = OUTLINED_FUNCTION_13(v413);
  v416 = *(v415 + 64);
  MEMORY[0x28223BE20](v414);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v417);
  v418 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters();
  v419 = OUTLINED_FUNCTION_13(v418);
  v421 = *(v420 + 64);
  MEMORY[0x28223BE20](v419);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v422);
  v423 = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters();
  v424 = OUTLINED_FUNCTION_13(v423);
  v426 = *(v425 + 64);
  MEMORY[0x28223BE20](v424);
  OUTLINED_FUNCTION_12_1();
  v428 = OUTLINED_FUNCTION_38_0(v427);
  v429 = type metadata accessor for NeuralNetwork.Layer.BroadcastableDivideParameters(v428);
  v430 = OUTLINED_FUNCTION_13(v429);
  v432 = *(v431 + 64);
  MEMORY[0x28223BE20](v430);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v433);
  v434 = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters();
  v435 = OUTLINED_FUNCTION_13(v434);
  v437 = *(v436 + 64);
  MEMORY[0x28223BE20](v435);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v438);
  v439 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters();
  v440 = OUTLINED_FUNCTION_13(v439);
  v442 = *(v441 + 64);
  MEMORY[0x28223BE20](v440);
  OUTLINED_FUNCTION_12_1();
  v444 = OUTLINED_FUNCTION_38_0(v443);
  v445 = type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters(v444);
  v446 = OUTLINED_FUNCTION_13(v445);
  v448 = *(v447 + 64);
  MEMORY[0x28223BE20](v446);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v449);
  v450 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters();
  v451 = OUTLINED_FUNCTION_13(v450);
  v453 = *(v452 + 64);
  MEMORY[0x28223BE20](v451);
  OUTLINED_FUNCTION_12_1();
  v455 = OUTLINED_FUNCTION_38_0(v454);
  v456 = type metadata accessor for NeuralNetwork.Layer.AddParameters(v455);
  v457 = OUTLINED_FUNCTION_13(v456);
  v459 = *(v458 + 64);
  MEMORY[0x28223BE20](v457);
  OUTLINED_FUNCTION_12_1();
  v461 = OUTLINED_FUNCTION_38_0(v460);
  v462 = type metadata accessor for NeuralNetwork.Layer.GlobalPool3DParameters(v461);
  v463 = OUTLINED_FUNCTION_13(v462);
  v465 = *(v464 + 64);
  MEMORY[0x28223BE20](v463);
  OUTLINED_FUNCTION_12_1();
  v467 = OUTLINED_FUNCTION_38_0(v466);
  v468 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters(v467);
  v469 = OUTLINED_FUNCTION_13(v468);
  v471 = *(v470 + 64);
  MEMORY[0x28223BE20](v469);
  OUTLINED_FUNCTION_12_1();
  v473 = OUTLINED_FUNCTION_38_0(v472);
  v474 = type metadata accessor for NeuralNetwork.Layer.PoolParameters(v473);
  v475 = OUTLINED_FUNCTION_13(v474);
  v477 = *(v476 + 64);
  MEMORY[0x28223BE20](v475);
  OUTLINED_FUNCTION_12_1();
  v479 = OUTLINED_FUNCTION_38_0(v478);
  v480 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters(v479);
  v481 = OUTLINED_FUNCTION_13(v480);
  v483 = *(v482 + 64);
  MEMORY[0x28223BE20](v481);
  OUTLINED_FUNCTION_12_1();
  v485 = OUTLINED_FUNCTION_38_0(v484);
  v486 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(v485);
  v487 = OUTLINED_FUNCTION_13(v486);
  v489 = *(v488 + 64);
  MEMORY[0x28223BE20](v487);
  OUTLINED_FUNCTION_12_1();
  v491 = OUTLINED_FUNCTION_38_0(v490);
  v492 = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters(v491);
  v493 = OUTLINED_FUNCTION_13(v492);
  v495 = *(v494 + 64);
  MEMORY[0x28223BE20](v493);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v496);
  v497 = type metadata accessor for NeuralNetwork.Layer.GELUParameters();
  v498 = OUTLINED_FUNCTION_13(v497);
  v500 = *(v499 + 64);
  MEMORY[0x28223BE20](v498);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v501);
  v1072 = type metadata accessor for NeuralNetwork.Layer.ClipParameters();
  v502 = OUTLINED_FUNCTION_4(v1072);
  v504 = *(v503 + 64);
  MEMORY[0x28223BE20](v502);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v505);
  v506 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters();
  v507 = OUTLINED_FUNCTION_13(v506);
  v509 = *(v508 + 64);
  MEMORY[0x28223BE20](v507);
  OUTLINED_FUNCTION_12_1();
  v511 = OUTLINED_FUNCTION_38_0(v510);
  v512 = type metadata accessor for NeuralNetwork.Layer.Activation(v511);
  v513 = OUTLINED_FUNCTION_13(v512);
  v515 = *(v514 + 64);
  MEMORY[0x28223BE20](v513);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v516);
  v517 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters();
  v518 = OUTLINED_FUNCTION_13(v517);
  v520 = *(v519 + 64);
  MEMORY[0x28223BE20](v518);
  OUTLINED_FUNCTION_12_1();
  v522 = OUTLINED_FUNCTION_38_0(v521);
  v523 = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters(v522);
  v524 = OUTLINED_FUNCTION_13(v523);
  v526 = *(v525 + 64);
  MEMORY[0x28223BE20](v524);
  OUTLINED_FUNCTION_12_1();
  v528 = OUTLINED_FUNCTION_38_0(v527);
  v529 = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters(v528);
  v530 = OUTLINED_FUNCTION_13(v529);
  v532 = *(v531 + 64);
  MEMORY[0x28223BE20](v530);
  OUTLINED_FUNCTION_12_1();
  v534 = OUTLINED_FUNCTION_38_0(v533);
  v535 = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters(v534);
  v536 = OUTLINED_FUNCTION_13(v535);
  v538 = *(v537 + 64);
  MEMORY[0x28223BE20](v536);
  OUTLINED_FUNCTION_12_1();
  v540 = OUTLINED_FUNCTION_38_0(v539);
  v541 = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters(v540);
  v542 = OUTLINED_FUNCTION_13(v541);
  v544 = *(v543 + 64);
  MEMORY[0x28223BE20](v542);
  OUTLINED_FUNCTION_12_1();
  v546 = OUTLINED_FUNCTION_38_0(v545);
  v547 = type metadata accessor for NeuralNetwork.Layer.SliceParameters(v546);
  v548 = OUTLINED_FUNCTION_13(v547);
  v550 = *(v549 + 64);
  MEMORY[0x28223BE20](v548);
  OUTLINED_FUNCTION_12_1();
  v552 = OUTLINED_FUNCTION_38_0(v551);
  v553 = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters(v552);
  v554 = OUTLINED_FUNCTION_13(v553);
  v556 = *(v555 + 64);
  MEMORY[0x28223BE20](v554);
  OUTLINED_FUNCTION_12_1();
  v558 = OUTLINED_FUNCTION_38_0(v557);
  v559 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters(v558);
  v560 = OUTLINED_FUNCTION_13(v559);
  v562 = *(v561 + 64);
  MEMORY[0x28223BE20](v560);
  OUTLINED_FUNCTION_12_1();
  v564 = OUTLINED_FUNCTION_38_0(v563);
  v565 = type metadata accessor for NeuralNetwork.Layer.ScatterParameters(v564);
  v566 = OUTLINED_FUNCTION_13(v565);
  v568 = *(v567 + 64);
  MEMORY[0x28223BE20](v566);
  OUTLINED_FUNCTION_12_1();
  v570 = OUTLINED_FUNCTION_38_0(v569);
  v571 = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters(v570);
  v572 = OUTLINED_FUNCTION_13(v571);
  v574 = *(v573 + 64);
  MEMORY[0x28223BE20](v572);
  OUTLINED_FUNCTION_12_1();
  v576 = OUTLINED_FUNCTION_38_0(v575);
  v577 = type metadata accessor for NeuralNetwork.Layer.GatherNDParameters(v576);
  v578 = OUTLINED_FUNCTION_13(v577);
  v580 = *(v579 + 64);
  MEMORY[0x28223BE20](v578);
  OUTLINED_FUNCTION_12_1();
  v582 = OUTLINED_FUNCTION_38_0(v581);
  v583 = type metadata accessor for NeuralNetwork.Layer.GatherParameters(v582);
  v584 = OUTLINED_FUNCTION_13(v583);
  v586 = *(v585 + 64);
  MEMORY[0x28223BE20](v584);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v587);
  v588 = type metadata accessor for NeuralNetwork.Layer.StackParameters();
  v589 = OUTLINED_FUNCTION_13(v588);
  v591 = *(v590 + 64);
  MEMORY[0x28223BE20](v589);
  OUTLINED_FUNCTION_12_1();
  v593 = OUTLINED_FUNCTION_38_0(v592);
  v594 = type metadata accessor for NeuralNetwork.Layer.ReshapeDynamicParameters(v593);
  v595 = OUTLINED_FUNCTION_13(v594);
  v597 = *(v596 + 64);
  MEMORY[0x28223BE20](v595);
  OUTLINED_FUNCTION_12_1();
  v599 = OUTLINED_FUNCTION_38_0(v598);
  v600 = type metadata accessor for NeuralNetwork.Layer.ReshapeLikeParameters(v599);
  v601 = OUTLINED_FUNCTION_13(v600);
  v603 = *(v602 + 64);
  MEMORY[0x28223BE20](v601);
  OUTLINED_FUNCTION_12_1();
  v605 = OUTLINED_FUNCTION_38_0(v604);
  v606 = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters(v605);
  v607 = OUTLINED_FUNCTION_13(v606);
  v609 = *(v608 + 64);
  MEMORY[0x28223BE20](v607);
  OUTLINED_FUNCTION_12_1();
  v611 = OUTLINED_FUNCTION_38_0(v610);
  v612 = type metadata accessor for NeuralNetwork.Layer.BroadcastToDynamicParameters(v611);
  v613 = OUTLINED_FUNCTION_13(v612);
  v615 = *(v614 + 64);
  MEMORY[0x28223BE20](v613);
  OUTLINED_FUNCTION_12_1();
  v617 = OUTLINED_FUNCTION_38_0(v616);
  v618 = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters(v617);
  v619 = OUTLINED_FUNCTION_13(v618);
  v621 = *(v620 + 64);
  MEMORY[0x28223BE20](v619);
  OUTLINED_FUNCTION_12_1();
  v623 = OUTLINED_FUNCTION_38_0(v622);
  v624 = type metadata accessor for NeuralNetwork.Layer.BroadcastToLikeParameters(v623);
  v625 = OUTLINED_FUNCTION_13(v624);
  v627 = *(v626 + 64);
  MEMORY[0x28223BE20](v625);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v628);
  v629 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters();
  v630 = OUTLINED_FUNCTION_13(v629);
  v632 = *(v631 + 64);
  MEMORY[0x28223BE20](v630);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v633);
  v634 = type metadata accessor for NeuralNetwork.Layer.PermuteParameters();
  v635 = OUTLINED_FUNCTION_13(v634);
  v637 = *(v636 + 64);
  MEMORY[0x28223BE20](v635);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v638);
  v639 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters();
  v640 = OUTLINED_FUNCTION_13(v639);
  v642 = *(v641 + 64);
  MEMORY[0x28223BE20](v640);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v643);
  v644 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters();
  v645 = OUTLINED_FUNCTION_13(v644);
  v647 = *(v646 + 64);
  MEMORY[0x28223BE20](v645);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v648);
  v649 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters();
  v650 = OUTLINED_FUNCTION_13(v649);
  v652 = *(v651 + 64);
  MEMORY[0x28223BE20](v650);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v653);
  v654 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters();
  v655 = OUTLINED_FUNCTION_13(v654);
  v657 = *(v656 + 64);
  MEMORY[0x28223BE20](v655);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v658);
  v659 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters();
  v660 = OUTLINED_FUNCTION_13(v659);
  v662 = *(v661 + 64);
  MEMORY[0x28223BE20](v660);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v663);
  v664 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters();
  v665 = OUTLINED_FUNCTION_13(v664);
  v667 = *(v666 + 64);
  MEMORY[0x28223BE20](v665);
  OUTLINED_FUNCTION_12_1();
  v669 = OUTLINED_FUNCTION_38_0(v668);
  v670 = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters(v669);
  v671 = OUTLINED_FUNCTION_13(v670);
  v673 = *(v672 + 64);
  MEMORY[0x28223BE20](v671);
  OUTLINED_FUNCTION_12_1();
  v675 = OUTLINED_FUNCTION_38_0(v674);
  v676 = type metadata accessor for NeuralNetwork.Layer.ReverseParameters(v675);
  v677 = OUTLINED_FUNCTION_13(v676);
  v679 = *(v678 + 64);
  MEMORY[0x28223BE20](v677);
  OUTLINED_FUNCTION_12_1();
  v681 = OUTLINED_FUNCTION_38_0(v680);
  v682 = type metadata accessor for NeuralNetwork.Layer.TileParameters(v681);
  v683 = OUTLINED_FUNCTION_13(v682);
  v685 = *(v684 + 64);
  MEMORY[0x28223BE20](v683);
  OUTLINED_FUNCTION_12_1();
  v687 = OUTLINED_FUNCTION_38_0(v686);
  v688 = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters(v687);
  v689 = OUTLINED_FUNCTION_13(v688);
  v691 = *(v690 + 64);
  MEMORY[0x28223BE20](v689);
  OUTLINED_FUNCTION_12_1();
  v693 = OUTLINED_FUNCTION_38_0(v692);
  v694 = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters(v693);
  v695 = OUTLINED_FUNCTION_13(v694);
  v697 = *(v696 + 64);
  MEMORY[0x28223BE20](v695);
  OUTLINED_FUNCTION_12_1();
  v699 = OUTLINED_FUNCTION_38_0(v698);
  v700 = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters(v699);
  v701 = OUTLINED_FUNCTION_13(v700);
  v703 = *(v702 + 64);
  MEMORY[0x28223BE20](v701);
  OUTLINED_FUNCTION_12_1();
  v705 = OUTLINED_FUNCTION_38_0(v704);
  v706 = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters(v705);
  v707 = OUTLINED_FUNCTION_13(v706);
  v709 = *(v708 + 64);
  MEMORY[0x28223BE20](v707);
  OUTLINED_FUNCTION_12_1();
  v711 = OUTLINED_FUNCTION_38_0(v710);
  v712 = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters(v711);
  v713 = OUTLINED_FUNCTION_13(v712);
  v715 = *(v714 + 64);
  MEMORY[0x28223BE20](v713);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v716);
  v717 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters();
  v718 = OUTLINED_FUNCTION_13(v717);
  v720 = *(v719 + 64);
  MEMORY[0x28223BE20](v718);
  OUTLINED_FUNCTION_12_1();
  v722 = OUTLINED_FUNCTION_38_0(v721);
  v723 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(v722);
  v724 = OUTLINED_FUNCTION_13(v723);
  v726 = *(v725 + 64);
  MEMORY[0x28223BE20](v724);
  OUTLINED_FUNCTION_3();
  v729 = v728 - v727;
  v730 = type metadata accessor for NeuralNetwork.Layer.SplitParameters(0);
  v731 = OUTLINED_FUNCTION_13(v730);
  v733 = *(v732 + 64);
  MEMORY[0x28223BE20](v731);
  OUTLINED_FUNCTION_3();
  v736 = v735 - v734;
  v737 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters();
  v738 = OUTLINED_FUNCTION_13(v737);
  v740 = *(v739 + 64);
  MEMORY[0x28223BE20](v738);
  OUTLINED_FUNCTION_3();
  v743 = v742 - v741;
  v744 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters();
  v745 = OUTLINED_FUNCTION_13(v744);
  v747 = *(v746 + 64);
  MEMORY[0x28223BE20](v745);
  OUTLINED_FUNCTION_3();
  v750 = v749 - v748;
  v751 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters();
  v752 = OUTLINED_FUNCTION_13(v751);
  v754 = *(v753 + 64);
  MEMORY[0x28223BE20](v752);
  OUTLINED_FUNCTION_3();
  v757 = v756 - v755;
  v758 = type metadata accessor for NeuralNetwork.Layer.PadParameters(0);
  v759 = OUTLINED_FUNCTION_13(v758);
  v761 = *(v760 + 64);
  MEMORY[0x28223BE20](v759);
  OUTLINED_FUNCTION_3();
  v764 = v763 - v762;
  v765 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters(0);
  v766 = OUTLINED_FUNCTION_13(v765);
  v768 = *(v767 + 64);
  MEMORY[0x28223BE20](v766);
  OUTLINED_FUNCTION_3();
  v771 = v770 - v769;
  v772 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters(0);
  v773 = OUTLINED_FUNCTION_13(v772);
  v775 = *(v774 + 64);
  MEMORY[0x28223BE20](v773);
  OUTLINED_FUNCTION_3();
  v778 = v777 - v776;
  v779 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v780 = OUTLINED_FUNCTION_4(v779);
  v782 = *(v781 + 64);
  MEMORY[0x28223BE20](v780);
  OUTLINED_FUNCTION_3();
  v785 = v784 - v783;
  v786 = OUTLINED_FUNCTION_19_1();
  sub_25749773C(v786, v785, v787);
  v1158 = v785;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v818 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v818, v771, v819);
      OUTLINED_FUNCTION_30_1(v771, v820, type metadata accessor for Proto_LoadConstantNDLayerParams);
      break;
    case 2u:
      v830 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v830, v764, v831);
      OUTLINED_FUNCTION_30_1(v764, v832, type metadata accessor for Proto_PaddingLayerParams);
      break;
    case 3u:
      v1039 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v1039, v757, v1040);
      OUTLINED_FUNCTION_30_1(v757, v1041, type metadata accessor for Proto_ConstantPaddingLayerParams);
      break;
    case 4u:
      v927 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v927, v750, v928);
      OUTLINED_FUNCTION_30_1(v750, v929, type metadata accessor for Proto_ConcatLayerParams);
      break;
    case 5u:
      v835 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v835, v743, v836);
      OUTLINED_FUNCTION_30_1(v743, v837, type metadata accessor for Proto_ConcatNDLayerParams);
      break;
    case 6u:
      v848 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v848, v736, v849);
      OUTLINED_FUNCTION_8_1();
      break;
    case 7u:
      v930 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v930, v729, v931);
      OUTLINED_FUNCTION_30_1(v729, v932, type metadata accessor for Proto_SplitNDLayerParams);
      break;
    case 8u:
      v797 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v797, v798, v1065);
      OUTLINED_FUNCTION_8_1();
      break;
    case 9u:
      v883 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v883, v884, v1066);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0xAu:
      v799 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v799, v800, v1067);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0xBu:
      v1054 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1054, v1055, v1068);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0xCu:
      v999 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v999, v1000, v1069);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0xDu:
      v961 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v961, v962, v1073);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0xEu:
      v852 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v852, v853, &v1072);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0xFu:
      v1021 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1021, v1022, &v1070);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x10u:
      v1052 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1052, v1053, v1071);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x11u:
      v1062 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1062, v1063, v1074);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x12u:
      v881 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v881, v882, v1075);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x13u:
      v803 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v803, v804, v1076);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x14u:
      v811 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v811, v812, v1077);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x15u:
      v1007 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1007, v1008, v1078);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x16u:
      v891 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v891, v892, v1079);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x17u:
      v1046 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1046, v1047, v1080);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x18u:
      v1058 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1058, v1059, v1081);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x19u:
      v795 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v795, v796, v1082);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x1Au:
      v791 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v791, v792, v1083);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x1Bu:
      v893 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v893, v894, v1084);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x1Cu:
      v907 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v907, v908, v1085);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x1Du:
      v965 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v965, v966, v1086);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x1Eu:
      v919 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v919, v920, v1087);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x1Fu:
      v963 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v963, v964, v1088);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x20u:
      v933 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v933, v934, v1089);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x21u:
      v1013 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1013, v1014, v1090);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x22u:
      v793 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v793, v794, v1091);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x23u:
      v805 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v805, v806, v1092);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x24u:
      v911 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v911, v912, v1093);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x25u:
      v823 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v823, v824, v1094);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x26u:
      v973 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v973, v974, v1095);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x27u:
      v977 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v977, v978, v1096);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x28u:
      v903 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v903, v904, v1097);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x29u:
      v991 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v991, v992, v1098);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x2Au:
      v971 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v971, v972, v1099);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x2Bu:
      v850 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v850, v851, v1100);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x2Cu:
      OUTLINED_FUNCTION_12_2();
      sub_2574977F4(v1158, v1070, v856);
      v857 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      __swift_storeEnumTagSinglePayload(v1157, 1, 1, v857);
      v858 = v1157 + *(type metadata accessor for Proto_ActivationParams(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574695E4(v1157, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      sub_25749779C(v1070, type metadata accessor for NeuralNetwork.Layer.Activation);
      __swift_storeEnumTagSinglePayload(v1157, 0, 1, v857);
      break;
    case 0x2Du:
      v975 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v975, v976, v1101);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x2Eu:
      v1001 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1001, v1002, v1102);
      v1003 = *(v1072 + 24);
      OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_30_1(v736 + v1004, v1005, v1006);
      break;
    case 0x2Fu:
      v801 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v801, v802, v1103);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x30u:
      v809 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v809, v810, v1104);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x31u:
      v854 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v854, v855, v1105);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x32u:
      v869 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v869, v870, v1106);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x33u:
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_33_0(v1158, v817, v1107);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x34u:
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_33_0(v1158, v827, v1108);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x35u:
      v1027 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1027, v1028, v1109);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x36u:
      v1031 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1031, v1032, v1110);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x37u:
      v846 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v846, v847, v1111);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x38u:
      v1035 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1035, v1036, v1112);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x39u:
      v1044 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1044, v1045, v1113);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x3Au:
      v1060 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1060, v1061, v1114);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x3Bu:
      v939 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v939, v940, v1115);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x3Cu:
      v1056 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1056, v1057, v1116);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x3Du:
      v825 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v825, v826, v1117);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x3Eu:
      v1042 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1042, v1043, v1118);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x3Fu:
      v943 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v943, v944, v1119);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x40u:
      v838 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v838, v839, v1120);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x41u:
      v937 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v937, v938, v1121);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x42u:
      v815 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v815, v816, v1122);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x43u:
      v1048 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1048, v1049, v1123);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x44u:
      v1050 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1050, v1051, v1124);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x45u:
      v842 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v842, v843, v1125);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x46u:
      v1023 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1023, v1024, v1126);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x47u:
      v969 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v969, v970, v1127);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x48u:
      v967 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v967, v968, v1128);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x49u:
      v807 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v807, v808, v1129);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x4Au:
      v813 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v813, v814, v1130);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x4Bu:
      v909 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v909, v910, v1131);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x4Cu:
      v913 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v913, v914, v1132);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x4Du:
      v861 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v861, v862, v1133);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x4Eu:
      v821 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v821, v822, v1134);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x4Fu:
      v1033 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1033, v1034, v1135);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x50u:
      v833 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v833, v834, v1136);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x51u:
      v947 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v947, v948, v1137);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x52u:
      v875 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v875, v876, &v1138);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x53u:
      v1025 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1025, v1026, &v1139);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x54u:
      v1019 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1019, v1020, &v1140);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x55u:
      v1009 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1009, v1010, &v1141);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x56u:
      v863 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v863, v864, &v1142);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x57u:
      v828 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v828, v829, &v1143);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x58u:
      v885 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v885, v886, &v1144);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x59u:
      v1037 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1037, v1038, &v1145);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x5Au:
      v895 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v895, v896, &v1146);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x5Bu:
      v859 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v859, v860, &v1147);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x5Cu:
      v951 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v951, v952, &v1148);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x5Du:
      v923 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v923, v924, &v1149);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x5Eu:
      v935 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v935, v936, &v1150);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x5Fu:
      v953 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v953, v954, &v1151);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x60u:
      v949 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v949, v950, &v1152);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x61u:
      v921 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v921, v922, &v1153);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x62u:
      v985 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v985, v986, &v1154);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x63u:
      v905 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v905, v906, &v1155);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x64u:
      v981 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v981, v982, &v1156);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x65u:
      v873 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v873, v874, &v1157);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x66u:
      v1011 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1011, v1012, &v1158);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x67u:
      v997 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v997, v998, v1159);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x68u:
      v867 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v867, v868, &v1160);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x69u:
      v1015 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1015, v1016, &v1161);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x6Au:
      v1029 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1029, v1030, &v1162);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x6Bu:
      v840 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v840, v841, &v1163);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x6Cu:
      v915 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v915, v916, &v1164);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x6Du:
      v901 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v901, v902, &v1165);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x6Eu:
      v871 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v871, v872, &v1166);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x6Fu:
      v1017 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v1017, v1018, &v1167);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x70u:
      v959 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v959, v960, &v1168);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x71u:
      v897 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33_0(v897, v898, &v1169);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x72u:
      v844 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v844, v1138, v845);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x73u:
      v983 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v983, v1139, v984);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x74u:
      v945 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v945, v1140, v946);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x75u:
      v917 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v917, v1141, v918);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x76u:
      v979 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v979, v1142, v980);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x77u:
      v993 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v993, v1143, v994);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x78u:
      v865 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v865, v1144, v866);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x79u:
      v879 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v879, v1151, v880);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x7Au:
      v877 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v877, v1145, v878);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x7Bu:
      v889 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v889, v1146, v890);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x7Cu:
      v899 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v899, v1147, v900);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x7Du:
      v957 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v957, v1148, v958);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x7Eu:
      v941 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v941, v1149, v942);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x7Fu:
      v955 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v955, v1150, v956);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x80u:
      v989 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v989, v1152, v990);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x81u:
      v987 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v987, v1153, v988);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x82u:
      v887 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v887, v1154, v888);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x83u:
      v995 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v995, v1155, v996);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x84u:
      v925 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v925, v1156, v926);
      OUTLINED_FUNCTION_8_1();
      break;
    case 0x85u:
    case 0x86u:
    case 0x87u:
    case 0x88u:
    case 0x89u:
    case 0x8Au:
    case 0x8Bu:
    case 0x8Cu:
    case 0x8Du:
    case 0x8Eu:
    case 0x8Fu:
    case 0x90u:
    case 0x91u:
    case 0x92u:
    case 0x93u:
    case 0x94u:
    case 0x95u:
    case 0x96u:
    case 0x97u:
    case 0x98u:
    case 0x99u:
    case 0x9Au:
    case 0x9Bu:
    case 0x9Cu:
    case 0x9Du:
      OUTLINED_FUNCTION_36_0();
      break;
    default:
      v788 = OUTLINED_FUNCTION_19_1();
      sub_2574977F4(v788, v778, v789);
      OUTLINED_FUNCTION_30_1(v778, v790, type metadata accessor for Proto_LoadConstantLayerParams);
      break;
  }

  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v1908 = a1;
  v1909 = a2;
  v2 = type metadata accessor for NeuralNetwork.Layer.CustomParameters(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v7 = OUTLINED_FUNCTION_38_0(v6);
  v8 = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v19 = OUTLINED_FUNCTION_38_0(v18);
  v20 = type metadata accessor for NeuralNetwork.Layer.TopKParameters(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v25 = OUTLINED_FUNCTION_38_0(v24);
  v26 = type metadata accessor for NeuralNetwork.Layer.OneHotParameters(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v31 = OUTLINED_FUNCTION_38_0(v30);
  v32 = type metadata accessor for NeuralNetwork.Layer.BiasParameters(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  v37 = OUTLINED_FUNCTION_38_0(v36);
  v38 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters(v37);
  v39 = OUTLINED_FUNCTION_13(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  v43 = OUTLINED_FUNCTION_38_0(v42);
  v44 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters(v43);
  v45 = OUTLINED_FUNCTION_13(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v49 = OUTLINED_FUNCTION_38_0(v48);
  v50 = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters(v49);
  v51 = OUTLINED_FUNCTION_13(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_1();
  v55 = OUTLINED_FUNCTION_38_0(v54);
  v56 = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters(v55);
  v57 = OUTLINED_FUNCTION_13(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_12_1();
  v61 = OUTLINED_FUNCTION_38_0(v60);
  v62 = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters(v61);
  v63 = OUTLINED_FUNCTION_13(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_1();
  v67 = OUTLINED_FUNCTION_38_0(v66);
  v68 = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters(v67);
  v69 = OUTLINED_FUNCTION_13(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_1();
  v73 = OUTLINED_FUNCTION_38_0(v72);
  v74 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters(v73);
  v75 = OUTLINED_FUNCTION_13(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_12_1();
  v79 = OUTLINED_FUNCTION_38_0(v78);
  v80 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters(v79);
  v81 = OUTLINED_FUNCTION_13(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_12_1();
  v85 = OUTLINED_FUNCTION_38_0(v84);
  v86 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters(v85);
  v87 = OUTLINED_FUNCTION_13(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_12_1();
  v91 = OUTLINED_FUNCTION_38_0(v90);
  v92 = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters(v91);
  v93 = OUTLINED_FUNCTION_13(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_12_1();
  v97 = OUTLINED_FUNCTION_38_0(v96);
  v98 = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters(v97);
  v99 = OUTLINED_FUNCTION_13(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12_1();
  v103 = OUTLINED_FUNCTION_38_0(v102);
  v104 = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters(v103);
  v105 = OUTLINED_FUNCTION_13(v104);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_12_1();
  v109 = OUTLINED_FUNCTION_38_0(v108);
  v110 = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters(v109);
  v111 = OUTLINED_FUNCTION_13(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_12_1();
  v115 = OUTLINED_FUNCTION_38_0(v114);
  v116 = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters(v115);
  v117 = OUTLINED_FUNCTION_13(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_12_1();
  v121 = OUTLINED_FUNCTION_38_0(v120);
  v122 = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters(v121);
  v123 = OUTLINED_FUNCTION_13(v122);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_12_1();
  v127 = OUTLINED_FUNCTION_38_0(v126);
  v128 = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters(v127);
  v129 = OUTLINED_FUNCTION_13(v128);
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_12_1();
  v133 = OUTLINED_FUNCTION_38_0(v132);
  v134 = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters(v133);
  v135 = OUTLINED_FUNCTION_13(v134);
  v137 = *(v136 + 64);
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_12_1();
  v139 = OUTLINED_FUNCTION_38_0(v138);
  v140 = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters(v139);
  v141 = OUTLINED_FUNCTION_13(v140);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_12_1();
  v145 = OUTLINED_FUNCTION_38_0(v144);
  v146 = type metadata accessor for NeuralNetwork.Layer.LessThanParameters(v145);
  v147 = OUTLINED_FUNCTION_13(v146);
  v149 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_12_1();
  v151 = OUTLINED_FUNCTION_38_0(v150);
  v152 = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters(v151);
  v153 = OUTLINED_FUNCTION_13(v152);
  v155 = *(v154 + 64);
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_12_1();
  v157 = OUTLINED_FUNCTION_38_0(v156);
  v158 = type metadata accessor for NeuralNetwork.Layer.EqualParameters(v157);
  v159 = OUTLINED_FUNCTION_13(v158);
  v161 = *(v160 + 64);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_12_1();
  v163 = OUTLINED_FUNCTION_38_0(v162);
  v164 = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters(v163);
  v165 = OUTLINED_FUNCTION_13(v164);
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_12_1();
  v169 = OUTLINED_FUNCTION_38_0(v168);
  v170 = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters(v169);
  v171 = OUTLINED_FUNCTION_13(v170);
  v173 = *(v172 + 64);
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_12_1();
  v175 = OUTLINED_FUNCTION_38_0(v174);
  v176 = type metadata accessor for NeuralNetwork.Layer.LoopContinueParameters(v175);
  v177 = OUTLINED_FUNCTION_13(v176);
  v179 = *(v178 + 64);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_12_1();
  v181 = OUTLINED_FUNCTION_38_0(v180);
  v182 = type metadata accessor for NeuralNetwork.Layer.LoopBreakParameters(v181);
  v183 = OUTLINED_FUNCTION_13(v182);
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_12_1();
  v187 = OUTLINED_FUNCTION_38_0(v186);
  v188 = type metadata accessor for NeuralNetwork.Layer.LoopParameters(v187);
  v189 = OUTLINED_FUNCTION_13(v188);
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_12_1();
  v193 = OUTLINED_FUNCTION_38_0(v192);
  v194 = type metadata accessor for NeuralNetwork.Layer.CopyParameters(v193);
  v195 = OUTLINED_FUNCTION_13(v194);
  v197 = *(v196 + 64);
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v198);
  v199 = type metadata accessor for NeuralNetwork.Layer.BranchParameters();
  v200 = OUTLINED_FUNCTION_13(v199);
  v202 = *(v201 + 64);
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_12_1();
  v204 = OUTLINED_FUNCTION_38_0(v203);
  v205 = type metadata accessor for NeuralNetwork.Layer.WhereBroadcastableParameters(v204);
  v206 = OUTLINED_FUNCTION_13(v205);
  v208 = *(v207 + 64);
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_12_1();
  v210 = OUTLINED_FUNCTION_38_0(v209);
  v211 = type metadata accessor for NeuralNetwork.Layer.WhereNonZeroParameters(v210);
  v212 = OUTLINED_FUNCTION_13(v211);
  v214 = *(v213 + 64);
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_12_1();
  v216 = OUTLINED_FUNCTION_38_0(v215);
  v217 = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters(v216);
  v218 = OUTLINED_FUNCTION_13(v217);
  v220 = *(v219 + 64);
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_12_1();
  v222 = OUTLINED_FUNCTION_38_0(v221);
  v223 = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters(v222);
  v224 = OUTLINED_FUNCTION_13(v223);
  v226 = *(v225 + 64);
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_12_1();
  v228 = OUTLINED_FUNCTION_38_0(v227);
  v229 = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters(v228);
  v230 = OUTLINED_FUNCTION_13(v229);
  v232 = *(v231 + 64);
  MEMORY[0x28223BE20](v230);
  OUTLINED_FUNCTION_12_1();
  v234 = OUTLINED_FUNCTION_38_0(v233);
  v235 = type metadata accessor for NeuralNetwork.Layer.MaxBroadcastableParameters(v234);
  v236 = OUTLINED_FUNCTION_13(v235);
  v238 = *(v237 + 64);
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_12_1();
  v240 = OUTLINED_FUNCTION_38_0(v239);
  v241 = type metadata accessor for NeuralNetwork.Layer.MinBroadcastableParameters(v240);
  v242 = OUTLINED_FUNCTION_13(v241);
  v244 = *(v243 + 64);
  MEMORY[0x28223BE20](v242);
  OUTLINED_FUNCTION_12_1();
  v246 = OUTLINED_FUNCTION_38_0(v245);
  v247 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters(v246);
  v248 = OUTLINED_FUNCTION_13(v247);
  v250 = *(v249 + 64);
  MEMORY[0x28223BE20](v248);
  OUTLINED_FUNCTION_12_1();
  v252 = OUTLINED_FUNCTION_38_0(v251);
  v253 = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters(v252);
  v254 = OUTLINED_FUNCTION_13(v253);
  v256 = *(v255 + 64);
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_12_1();
  v258 = OUTLINED_FUNCTION_38_0(v257);
  v259 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters(v258);
  v260 = OUTLINED_FUNCTION_13(v259);
  v262 = *(v261 + 64);
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_12_1();
  v264 = OUTLINED_FUNCTION_38_0(v263);
  v265 = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters(v264);
  v266 = OUTLINED_FUNCTION_13(v265);
  v268 = *(v267 + 64);
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_12_1();
  v270 = OUTLINED_FUNCTION_38_0(v269);
  v271 = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters(v270);
  v272 = OUTLINED_FUNCTION_13(v271);
  v274 = *(v273 + 64);
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_12_1();
  v276 = OUTLINED_FUNCTION_38_0(v275);
  v277 = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters(v276);
  v278 = OUTLINED_FUNCTION_13(v277);
  v280 = *(v279 + 64);
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_12_1();
  v282 = OUTLINED_FUNCTION_38_0(v281);
  v283 = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters(v282);
  v284 = OUTLINED_FUNCTION_13(v283);
  v286 = *(v285 + 64);
  MEMORY[0x28223BE20](v284);
  OUTLINED_FUNCTION_12_1();
  v288 = OUTLINED_FUNCTION_38_0(v287);
  v289 = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters(v288);
  v290 = OUTLINED_FUNCTION_13(v289);
  v292 = *(v291 + 64);
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_12_1();
  v294 = OUTLINED_FUNCTION_38_0(v293);
  v295 = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters(v294);
  v296 = OUTLINED_FUNCTION_13(v295);
  v298 = *(v297 + 64);
  MEMORY[0x28223BE20](v296);
  OUTLINED_FUNCTION_12_1();
  v300 = OUTLINED_FUNCTION_38_0(v299);
  v301 = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters(v300);
  v302 = OUTLINED_FUNCTION_13(v301);
  v304 = *(v303 + 64);
  MEMORY[0x28223BE20](v302);
  OUTLINED_FUNCTION_12_1();
  v306 = OUTLINED_FUNCTION_38_0(v305);
  v307 = type metadata accessor for NeuralNetwork.Layer.ReduceParameters(v306);
  v308 = OUTLINED_FUNCTION_13(v307);
  v310 = *(v309 + 64);
  MEMORY[0x28223BE20](v308);
  OUTLINED_FUNCTION_12_1();
  v312 = OUTLINED_FUNCTION_38_0(v311);
  v313 = type metadata accessor for NeuralNetwork.Layer.AverageParameters(v312);
  v314 = OUTLINED_FUNCTION_13(v313);
  v316 = *(v315 + 64);
  MEMORY[0x28223BE20](v314);
  OUTLINED_FUNCTION_12_1();
  v318 = OUTLINED_FUNCTION_38_0(v317);
  v319 = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters(v318);
  v320 = OUTLINED_FUNCTION_13(v319);
  v322 = *(v321 + 64);
  MEMORY[0x28223BE20](v320);
  OUTLINED_FUNCTION_12_1();
  v324 = OUTLINED_FUNCTION_38_0(v323);
  v325 = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters(v324);
  v326 = OUTLINED_FUNCTION_13(v325);
  v328 = *(v327 + 64);
  MEMORY[0x28223BE20](v326);
  OUTLINED_FUNCTION_12_1();
  v330 = OUTLINED_FUNCTION_38_0(v329);
  v331 = type metadata accessor for NeuralNetwork.Layer.CropParameters(v330);
  v332 = OUTLINED_FUNCTION_13(v331);
  v334 = *(v333 + 64);
  MEMORY[0x28223BE20](v332);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v335);
  v336 = type metadata accessor for NeuralNetwork.Layer.GRUParameters();
  v337 = OUTLINED_FUNCTION_13(v336);
  v339 = *(v338 + 64);
  MEMORY[0x28223BE20](v337);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v340);
  v341 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters();
  v342 = OUTLINED_FUNCTION_13(v341);
  v344 = *(v343 + 64);
  MEMORY[0x28223BE20](v342);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v345);
  v346 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters();
  v347 = OUTLINED_FUNCTION_13(v346);
  v349 = *(v348 + 64);
  MEMORY[0x28223BE20](v347);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v350);
  v351 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters();
  v352 = OUTLINED_FUNCTION_13(v351);
  v354 = *(v353 + 64);
  MEMORY[0x28223BE20](v352);
  OUTLINED_FUNCTION_12_1();
  v356 = OUTLINED_FUNCTION_38_0(v355);
  v357 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters(v356);
  v358 = OUTLINED_FUNCTION_13(v357);
  v360 = *(v359 + 64);
  MEMORY[0x28223BE20](v358);
  OUTLINED_FUNCTION_12_1();
  v362 = OUTLINED_FUNCTION_38_0(v361);
  v363 = type metadata accessor for NeuralNetwork.Layer.LRNParameters(v362);
  v364 = OUTLINED_FUNCTION_13(v363);
  v366 = *(v365 + 64);
  MEMORY[0x28223BE20](v364);
  OUTLINED_FUNCTION_12_1();
  v368 = OUTLINED_FUNCTION_38_0(v367);
  v369 = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters(v368);
  v370 = OUTLINED_FUNCTION_13(v369);
  v372 = *(v371 + 64);
  MEMORY[0x28223BE20](v370);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v373);
  v374 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters();
  v375 = OUTLINED_FUNCTION_13(v374);
  v377 = *(v376 + 64);
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_12_1();
  v379 = OUTLINED_FUNCTION_38_0(v378);
  v380 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters(v379);
  v381 = OUTLINED_FUNCTION_13(v380);
  v383 = *(v382 + 64);
  MEMORY[0x28223BE20](v381);
  OUTLINED_FUNCTION_12_1();
  v385 = OUTLINED_FUNCTION_38_0(v384);
  v386 = type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters(v385);
  v387 = OUTLINED_FUNCTION_13(v386);
  v389 = *(v388 + 64);
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v390);
  v391 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters();
  v392 = OUTLINED_FUNCTION_13(v391);
  v394 = *(v393 + 64);
  MEMORY[0x28223BE20](v392);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v395);
  v396 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters();
  v397 = OUTLINED_FUNCTION_13(v396);
  v399 = *(v398 + 64);
  MEMORY[0x28223BE20](v397);
  OUTLINED_FUNCTION_12_1();
  v401 = OUTLINED_FUNCTION_38_0(v400);
  v402 = type metadata accessor for NeuralNetwork.Layer.BroadcastableFloorDivParameters(v401);
  v403 = OUTLINED_FUNCTION_13(v402);
  v405 = *(v404 + 64);
  MEMORY[0x28223BE20](v403);
  OUTLINED_FUNCTION_12_1();
  v407 = OUTLINED_FUNCTION_38_0(v406);
  v408 = type metadata accessor for NeuralNetwork.Layer.BroadcastablePowParameters(v407);
  v409 = OUTLINED_FUNCTION_13(v408);
  v411 = *(v410 + 64);
  MEMORY[0x28223BE20](v409);
  OUTLINED_FUNCTION_12_1();
  v413 = OUTLINED_FUNCTION_38_0(v412);
  v414 = type metadata accessor for NeuralNetwork.Layer.BroadcastableModParameters(v413);
  v415 = OUTLINED_FUNCTION_13(v414);
  v417 = *(v416 + 64);
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v418);
  v419 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters();
  v420 = OUTLINED_FUNCTION_13(v419);
  v422 = *(v421 + 64);
  MEMORY[0x28223BE20](v420);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v423);
  v424 = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters();
  v425 = OUTLINED_FUNCTION_13(v424);
  v427 = *(v426 + 64);
  MEMORY[0x28223BE20](v425);
  OUTLINED_FUNCTION_12_1();
  v429 = OUTLINED_FUNCTION_38_0(v428);
  v430 = type metadata accessor for NeuralNetwork.Layer.BroadcastableDivideParameters(v429);
  v431 = OUTLINED_FUNCTION_13(v430);
  v433 = *(v432 + 64);
  MEMORY[0x28223BE20](v431);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v434);
  v435 = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters();
  v436 = OUTLINED_FUNCTION_13(v435);
  v438 = *(v437 + 64);
  MEMORY[0x28223BE20](v436);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v439);
  v440 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters();
  v441 = OUTLINED_FUNCTION_13(v440);
  v443 = *(v442 + 64);
  MEMORY[0x28223BE20](v441);
  OUTLINED_FUNCTION_12_1();
  v445 = OUTLINED_FUNCTION_38_0(v444);
  v446 = type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters(v445);
  v447 = OUTLINED_FUNCTION_13(v446);
  v449 = *(v448 + 64);
  MEMORY[0x28223BE20](v447);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v450);
  v451 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters();
  v452 = OUTLINED_FUNCTION_13(v451);
  v454 = *(v453 + 64);
  MEMORY[0x28223BE20](v452);
  OUTLINED_FUNCTION_12_1();
  v456 = OUTLINED_FUNCTION_38_0(v455);
  v457 = type metadata accessor for NeuralNetwork.Layer.AddParameters(v456);
  v458 = OUTLINED_FUNCTION_13(v457);
  v460 = *(v459 + 64);
  MEMORY[0x28223BE20](v458);
  OUTLINED_FUNCTION_12_1();
  v462 = OUTLINED_FUNCTION_38_0(v461);
  v463 = type metadata accessor for NeuralNetwork.Layer.GlobalPool3DParameters(v462);
  v464 = OUTLINED_FUNCTION_13(v463);
  v466 = *(v465 + 64);
  MEMORY[0x28223BE20](v464);
  OUTLINED_FUNCTION_12_1();
  v468 = OUTLINED_FUNCTION_38_0(v467);
  v469 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters(v468);
  v470 = OUTLINED_FUNCTION_13(v469);
  v472 = *(v471 + 64);
  MEMORY[0x28223BE20](v470);
  OUTLINED_FUNCTION_12_1();
  v474 = OUTLINED_FUNCTION_38_0(v473);
  v475 = type metadata accessor for NeuralNetwork.Layer.PoolParameters(v474);
  v476 = OUTLINED_FUNCTION_13(v475);
  v478 = *(v477 + 64);
  MEMORY[0x28223BE20](v476);
  OUTLINED_FUNCTION_12_1();
  v480 = OUTLINED_FUNCTION_38_0(v479);
  v481 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters(v480);
  v482 = OUTLINED_FUNCTION_13(v481);
  v484 = *(v483 + 64);
  MEMORY[0x28223BE20](v482);
  OUTLINED_FUNCTION_12_1();
  v486 = OUTLINED_FUNCTION_38_0(v485);
  v487 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(v486);
  v488 = OUTLINED_FUNCTION_13(v487);
  v490 = *(v489 + 64);
  MEMORY[0x28223BE20](v488);
  OUTLINED_FUNCTION_12_1();
  v492 = OUTLINED_FUNCTION_38_0(v491);
  v493 = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters(v492);
  v494 = OUTLINED_FUNCTION_13(v493);
  v496 = *(v495 + 64);
  MEMORY[0x28223BE20](v494);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v497);
  v498 = type metadata accessor for NeuralNetwork.Layer.GELUParameters();
  v499 = OUTLINED_FUNCTION_13(v498);
  v501 = *(v500 + 64);
  MEMORY[0x28223BE20](v499);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v502);
  v503 = type metadata accessor for NeuralNetwork.Layer.ClipParameters();
  v504 = OUTLINED_FUNCTION_13(v503);
  v506 = *(v505 + 64);
  MEMORY[0x28223BE20](v504);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v507);
  v508 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters();
  v509 = OUTLINED_FUNCTION_13(v508);
  v511 = *(v510 + 64);
  MEMORY[0x28223BE20](v509);
  OUTLINED_FUNCTION_12_1();
  v513 = OUTLINED_FUNCTION_38_0(v512);
  v514 = type metadata accessor for NeuralNetwork.Layer.Activation(v513);
  v515 = OUTLINED_FUNCTION_13(v514);
  v517 = *(v516 + 64);
  MEMORY[0x28223BE20](v515);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v518);
  v519 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters();
  v520 = OUTLINED_FUNCTION_13(v519);
  v522 = *(v521 + 64);
  MEMORY[0x28223BE20](v520);
  OUTLINED_FUNCTION_12_1();
  v524 = OUTLINED_FUNCTION_38_0(v523);
  v525 = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters(v524);
  v526 = OUTLINED_FUNCTION_13(v525);
  v528 = *(v527 + 64);
  MEMORY[0x28223BE20](v526);
  OUTLINED_FUNCTION_12_1();
  v530 = OUTLINED_FUNCTION_38_0(v529);
  v531 = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters(v530);
  v532 = OUTLINED_FUNCTION_13(v531);
  v534 = *(v533 + 64);
  MEMORY[0x28223BE20](v532);
  OUTLINED_FUNCTION_12_1();
  v536 = OUTLINED_FUNCTION_38_0(v535);
  v537 = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters(v536);
  v538 = OUTLINED_FUNCTION_13(v537);
  v540 = *(v539 + 64);
  MEMORY[0x28223BE20](v538);
  OUTLINED_FUNCTION_12_1();
  v542 = OUTLINED_FUNCTION_38_0(v541);
  v543 = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters(v542);
  v544 = OUTLINED_FUNCTION_13(v543);
  v546 = *(v545 + 64);
  MEMORY[0x28223BE20](v544);
  OUTLINED_FUNCTION_12_1();
  v548 = OUTLINED_FUNCTION_38_0(v547);
  v549 = type metadata accessor for NeuralNetwork.Layer.SliceParameters(v548);
  v550 = OUTLINED_FUNCTION_13(v549);
  v552 = *(v551 + 64);
  MEMORY[0x28223BE20](v550);
  OUTLINED_FUNCTION_12_1();
  v554 = OUTLINED_FUNCTION_38_0(v553);
  v555 = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters(v554);
  v556 = OUTLINED_FUNCTION_13(v555);
  v558 = *(v557 + 64);
  MEMORY[0x28223BE20](v556);
  OUTLINED_FUNCTION_12_1();
  v560 = OUTLINED_FUNCTION_38_0(v559);
  v561 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters(v560);
  v562 = OUTLINED_FUNCTION_13(v561);
  v564 = *(v563 + 64);
  MEMORY[0x28223BE20](v562);
  OUTLINED_FUNCTION_12_1();
  v566 = OUTLINED_FUNCTION_38_0(v565);
  v567 = type metadata accessor for NeuralNetwork.Layer.ScatterParameters(v566);
  v568 = OUTLINED_FUNCTION_13(v567);
  v570 = *(v569 + 64);
  MEMORY[0x28223BE20](v568);
  OUTLINED_FUNCTION_12_1();
  v572 = OUTLINED_FUNCTION_38_0(v571);
  v573 = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters(v572);
  v574 = OUTLINED_FUNCTION_13(v573);
  v576 = *(v575 + 64);
  MEMORY[0x28223BE20](v574);
  OUTLINED_FUNCTION_12_1();
  v578 = OUTLINED_FUNCTION_38_0(v577);
  v579 = type metadata accessor for NeuralNetwork.Layer.GatherNDParameters(v578);
  v580 = OUTLINED_FUNCTION_13(v579);
  v582 = *(v581 + 64);
  MEMORY[0x28223BE20](v580);
  OUTLINED_FUNCTION_12_1();
  v584 = OUTLINED_FUNCTION_38_0(v583);
  v585 = type metadata accessor for NeuralNetwork.Layer.GatherParameters(v584);
  v586 = OUTLINED_FUNCTION_13(v585);
  v588 = *(v587 + 64);
  MEMORY[0x28223BE20](v586);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v589);
  v590 = type metadata accessor for NeuralNetwork.Layer.StackParameters();
  v591 = OUTLINED_FUNCTION_13(v590);
  v593 = *(v592 + 64);
  MEMORY[0x28223BE20](v591);
  OUTLINED_FUNCTION_12_1();
  v595 = OUTLINED_FUNCTION_38_0(v594);
  v596 = type metadata accessor for NeuralNetwork.Layer.ReshapeDynamicParameters(v595);
  v597 = OUTLINED_FUNCTION_13(v596);
  v599 = *(v598 + 64);
  MEMORY[0x28223BE20](v597);
  OUTLINED_FUNCTION_12_1();
  v601 = OUTLINED_FUNCTION_38_0(v600);
  v602 = type metadata accessor for NeuralNetwork.Layer.ReshapeLikeParameters(v601);
  v603 = OUTLINED_FUNCTION_13(v602);
  v605 = *(v604 + 64);
  MEMORY[0x28223BE20](v603);
  OUTLINED_FUNCTION_12_1();
  v607 = OUTLINED_FUNCTION_38_0(v606);
  v608 = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters(v607);
  v609 = OUTLINED_FUNCTION_13(v608);
  v611 = *(v610 + 64);
  MEMORY[0x28223BE20](v609);
  OUTLINED_FUNCTION_12_1();
  v613 = OUTLINED_FUNCTION_38_0(v612);
  v614 = type metadata accessor for NeuralNetwork.Layer.BroadcastToDynamicParameters(v613);
  v615 = OUTLINED_FUNCTION_13(v614);
  v617 = *(v616 + 64);
  MEMORY[0x28223BE20](v615);
  OUTLINED_FUNCTION_12_1();
  v619 = OUTLINED_FUNCTION_38_0(v618);
  v620 = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters(v619);
  v621 = OUTLINED_FUNCTION_13(v620);
  v623 = *(v622 + 64);
  MEMORY[0x28223BE20](v621);
  OUTLINED_FUNCTION_12_1();
  v625 = OUTLINED_FUNCTION_38_0(v624);
  v626 = type metadata accessor for NeuralNetwork.Layer.BroadcastToLikeParameters(v625);
  v627 = OUTLINED_FUNCTION_13(v626);
  v629 = *(v628 + 64);
  MEMORY[0x28223BE20](v627);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v630);
  v631 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters();
  v632 = OUTLINED_FUNCTION_13(v631);
  v634 = *(v633 + 64);
  MEMORY[0x28223BE20](v632);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v635);
  v636 = type metadata accessor for NeuralNetwork.Layer.PermuteParameters();
  v637 = OUTLINED_FUNCTION_13(v636);
  v639 = *(v638 + 64);
  MEMORY[0x28223BE20](v637);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v640);
  v641 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters();
  v642 = OUTLINED_FUNCTION_13(v641);
  v644 = *(v643 + 64);
  MEMORY[0x28223BE20](v642);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v645);
  v646 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters();
  v647 = OUTLINED_FUNCTION_13(v646);
  v649 = *(v648 + 64);
  MEMORY[0x28223BE20](v647);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v650);
  v651 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters();
  v652 = OUTLINED_FUNCTION_13(v651);
  v654 = *(v653 + 64);
  MEMORY[0x28223BE20](v652);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v655);
  v656 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters();
  v657 = OUTLINED_FUNCTION_13(v656);
  v659 = *(v658 + 64);
  MEMORY[0x28223BE20](v657);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v660);
  v661 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters();
  v662 = OUTLINED_FUNCTION_13(v661);
  v664 = *(v663 + 64);
  MEMORY[0x28223BE20](v662);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v665);
  v666 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters();
  v667 = OUTLINED_FUNCTION_13(v666);
  v669 = *(v668 + 64);
  MEMORY[0x28223BE20](v667);
  OUTLINED_FUNCTION_12_1();
  v671 = OUTLINED_FUNCTION_38_0(v670);
  v672 = type metadata accessor for NeuralNetwork.Layer.TileParameters(v671);
  v673 = OUTLINED_FUNCTION_13(v672);
  v675 = *(v674 + 64);
  MEMORY[0x28223BE20](v673);
  OUTLINED_FUNCTION_12_1();
  v677 = OUTLINED_FUNCTION_38_0(v676);
  v678 = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters(v677);
  v679 = OUTLINED_FUNCTION_13(v678);
  v681 = *(v680 + 64);
  MEMORY[0x28223BE20](v679);
  OUTLINED_FUNCTION_12_1();
  v683 = OUTLINED_FUNCTION_38_0(v682);
  v684 = type metadata accessor for NeuralNetwork.Layer.ReverseParameters(v683);
  v685 = OUTLINED_FUNCTION_13(v684);
  v687 = *(v686 + 64);
  MEMORY[0x28223BE20](v685);
  OUTLINED_FUNCTION_12_1();
  v689 = OUTLINED_FUNCTION_38_0(v688);
  v690 = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters(v689);
  v691 = OUTLINED_FUNCTION_13(v690);
  v693 = *(v692 + 64);
  MEMORY[0x28223BE20](v691);
  OUTLINED_FUNCTION_12_1();
  v695 = OUTLINED_FUNCTION_38_0(v694);
  v696 = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters(v695);
  v697 = OUTLINED_FUNCTION_13(v696);
  v699 = *(v698 + 64);
  MEMORY[0x28223BE20](v697);
  OUTLINED_FUNCTION_12_1();
  v701 = OUTLINED_FUNCTION_38_0(v700);
  v702 = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters(v701);
  v703 = OUTLINED_FUNCTION_13(v702);
  v705 = *(v704 + 64);
  MEMORY[0x28223BE20](v703);
  OUTLINED_FUNCTION_12_1();
  v707 = OUTLINED_FUNCTION_38_0(v706);
  v708 = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters(v707);
  v709 = OUTLINED_FUNCTION_13(v708);
  v711 = *(v710 + 64);
  MEMORY[0x28223BE20](v709);
  OUTLINED_FUNCTION_12_1();
  v713 = OUTLINED_FUNCTION_38_0(v712);
  v714 = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters(v713);
  v715 = OUTLINED_FUNCTION_13(v714);
  v717 = *(v716 + 64);
  MEMORY[0x28223BE20](v715);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v718);
  v719 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters();
  v720 = OUTLINED_FUNCTION_13(v719);
  v722 = *(v721 + 64);
  MEMORY[0x28223BE20](v720);
  OUTLINED_FUNCTION_12_1();
  v724 = OUTLINED_FUNCTION_38_0(v723);
  v725 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(v724);
  v726 = OUTLINED_FUNCTION_13(v725);
  v728 = *(v727 + 64);
  MEMORY[0x28223BE20](v726);
  OUTLINED_FUNCTION_12_1();
  v730 = OUTLINED_FUNCTION_38_0(v729);
  v731 = type metadata accessor for NeuralNetwork.Layer.SplitParameters(v730);
  v732 = OUTLINED_FUNCTION_13(v731);
  v734 = *(v733 + 64);
  MEMORY[0x28223BE20](v732);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v735);
  v736 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters();
  v737 = OUTLINED_FUNCTION_13(v736);
  v739 = *(v738 + 64);
  MEMORY[0x28223BE20](v737);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v740);
  v741 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters();
  v742 = OUTLINED_FUNCTION_13(v741);
  v744 = *(v743 + 64);
  MEMORY[0x28223BE20](v742);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v745);
  v746 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters();
  v747 = OUTLINED_FUNCTION_13(v746);
  v749 = *(v748 + 64);
  MEMORY[0x28223BE20](v747);
  OUTLINED_FUNCTION_12_1();
  v751 = OUTLINED_FUNCTION_38_0(v750);
  v752 = type metadata accessor for NeuralNetwork.Layer.PadParameters(v751);
  v753 = OUTLINED_FUNCTION_13(v752);
  v755 = *(v754 + 64);
  MEMORY[0x28223BE20](v753);
  OUTLINED_FUNCTION_12_1();
  v757 = OUTLINED_FUNCTION_38_0(v756);
  v758 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters(v757);
  v759 = OUTLINED_FUNCTION_13(v758);
  v761 = *(v760 + 64);
  MEMORY[0x28223BE20](v759);
  OUTLINED_FUNCTION_12_1();
  v763 = OUTLINED_FUNCTION_38_0(v762);
  v764 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters(v763);
  v765 = OUTLINED_FUNCTION_13(v764);
  v767 = *(v766 + 64);
  MEMORY[0x28223BE20](v765);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v768);
  v1907 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v769 = OUTLINED_FUNCTION_4(v1907);
  v771 = *(v770 + 64);
  MEMORY[0x28223BE20](v769);
  OUTLINED_FUNCTION_11();
  v1906 = (v772 - v773);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v774);
  OUTLINED_FUNCTION_167();
  v1905 = v775;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v776);
  OUTLINED_FUNCTION_167();
  v1904 = v777;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v778);
  OUTLINED_FUNCTION_167();
  v1903 = v779;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v780);
  OUTLINED_FUNCTION_167();
  v1902 = v781;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v782);
  OUTLINED_FUNCTION_167();
  v1901 = v783;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v784);
  OUTLINED_FUNCTION_167();
  v1900 = v785;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v786);
  OUTLINED_FUNCTION_167();
  v1899 = v787;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v788);
  OUTLINED_FUNCTION_167();
  v1898 = v789;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v790);
  OUTLINED_FUNCTION_167();
  v1897 = v791;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v792);
  OUTLINED_FUNCTION_167();
  v1896 = v793;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v794);
  OUTLINED_FUNCTION_167();
  v1895 = v795;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v796);
  OUTLINED_FUNCTION_167();
  v1894 = v797;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v798);
  OUTLINED_FUNCTION_167();
  v1893 = v799;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v800);
  OUTLINED_FUNCTION_167();
  v1892 = v801;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v802);
  OUTLINED_FUNCTION_167();
  v1891 = v803;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v804);
  OUTLINED_FUNCTION_167();
  v1890 = v805;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v806);
  OUTLINED_FUNCTION_167();
  v1889 = v807;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v808);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v809);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v810);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v811);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v812);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v813);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v814);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v815);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v816);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v817);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v818);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v819);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v820);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v821);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v822);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v823);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v824);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v825);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v826);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v827);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v828);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v829);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v830);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v831);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v832);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v833);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v834);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v835);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v836);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v837);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v838);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v839);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v840);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v841);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v842);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v843);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v844);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v845);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v846);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v847);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v848);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v849);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v850);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v851);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v852);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v853);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v854);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v855);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v856);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v857);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v858);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v859);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v860);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v861);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v862);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v863);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v864);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v865);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v866);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v867);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v868);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v869);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v870);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v871);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v872);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v873);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v874);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v875);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v876);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v877);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v878);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v879);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v880);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v881);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v882);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v883);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v884);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v885);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v886);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v887);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v888);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v889);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v890);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v891);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v892);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v893);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v894);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v895);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v896);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v897);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v898);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v899);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v900);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v901);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v902);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v903);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v904);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v905);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v906);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v907);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v908);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v909);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v910);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v911);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v912);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v913);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v914);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v915);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  v917 = MEMORY[0x28223BE20](v916);
  v919 = &v1679 - v918;
  v920 = MEMORY[0x28223BE20](v917);
  v922 = &v1679 - v921;
  v923 = MEMORY[0x28223BE20](v920);
  v925 = &v1679 - v924;
  v926 = MEMORY[0x28223BE20](v923);
  v928 = &v1679 - v927;
  v929 = MEMORY[0x28223BE20](v926);
  v931 = &v1679 - v930;
  v932 = MEMORY[0x28223BE20](v929);
  v934 = &v1679 - v933;
  MEMORY[0x28223BE20](v932);
  v936 = &v1679 - v935;
  v937 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A080, &qword_257744BB0);
  v938 = OUTLINED_FUNCTION_13(v937);
  v940 = *(v939 + 64);
  v941 = MEMORY[0x28223BE20](v938);
  v943 = &v1679 - v942;
  v944 = *(v941 + 56);
  sub_25749773C(v1908, &v1679 - v942, type metadata accessor for NeuralNetwork.Layer.Kind);
  v1908 = v944;
  sub_25749773C(v1909, &v943[v944], type metadata accessor for NeuralNetwork.Layer.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v1030 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v1030, v934, v1031);
      if (OUTLINED_FUNCTION_17_1() == 1)
      {
        v1032 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1032, v1033, v1682);
        v955 = static NeuralNetwork.Layer.ConstantNDParameters.== infix(_:_:)(v934, v919);
        v1034 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters;
        sub_25749779C(v919, type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters);
        v1035 = v934;
        goto LABEL_319;
      }

      v947 = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters;
      v948 = v934;
      goto LABEL_454;
    case 2u:
      v1062 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v1062, v931, v1063);
      if (OUTLINED_FUNCTION_17_1() == 2)
      {
        v1064 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1064, v1065, v1683);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.PadParameters.== infix(_:_:)();
        v955 = v1066;
        v956 = type metadata accessor for NeuralNetwork.Layer.PadParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.PadParameters;
      goto LABEL_453;
    case 3u:
      v1611 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v1611, v928, v1612);
      if (OUTLINED_FUNCTION_17_1() == 3)
      {
        v1613 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1613, v1614, v1684);
        v955 = static NeuralNetwork.Layer.ConstantPadParameters.== infix(_:_:)(v928, v919);
        v1034 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters;
        sub_25749779C(v919, type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters);
        v1035 = v928;
        goto LABEL_319;
      }

      v947 = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters;
      v948 = v928;
      goto LABEL_454;
    case 4u:
      v1321 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v1321, v925, v1322);
      if (OUTLINED_FUNCTION_17_1() == 4)
      {
        v1323 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1323, v1324, v1685);
        v955 = static NeuralNetwork.Layer.ConcatenateParameters.== infix(_:_:)(v925, v919);
        v1034 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters;
        sub_25749779C(v919, type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters);
        v1035 = v925;
        goto LABEL_319;
      }

      v947 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters;
      v948 = v925;
      goto LABEL_454;
    case 5u:
      v1072 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v1072, v922, v1073);
      if (OUTLINED_FUNCTION_17_1() == 5)
      {
        v1074 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1074, v1075, v1686);
        v955 = static NeuralNetwork.Layer.ConcatenateNDParameters.== infix(_:_:)(v922, v919);
        v1034 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters;
        sub_25749779C(v919, type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters);
        v1035 = v922;
        goto LABEL_319;
      }

      v947 = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters;
      v948 = v922;
      goto LABEL_454;
    case 6u:
      v1105 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v1105, v919, v1106);
      if (OUTLINED_FUNCTION_17_1() == 6)
      {
        v1107 = OUTLINED_FUNCTION_20_1();
        v1108 = v1681;
        sub_2574977F4(v1107, v1681, v1109);
        v955 = static NeuralNetwork.Layer.SplitParameters.== infix(_:_:)(v919, v1108);
        v1034 = type metadata accessor for NeuralNetwork.Layer.SplitParameters;
        sub_25749779C(v1108, type metadata accessor for NeuralNetwork.Layer.SplitParameters);
        v1035 = v919;
        goto LABEL_319;
      }

      v947 = type metadata accessor for NeuralNetwork.Layer.SplitParameters;
      v948 = v919;
      goto LABEL_454;
    case 7u:
      v1325 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1325, v1326, v1813);
      if (OUTLINED_FUNCTION_17_1() == 7)
      {
        v1327 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1327, v1328, v1687);
        v1329 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SplitNDParameters.== infix(_:_:)(v1329, v1330);
        v956 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters;
      goto LABEL_453;
    case 8u:
      v968 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v968, v969, v1814);
      if (OUTLINED_FUNCTION_17_1() == 8)
      {
        v970 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v970, v971, v1688);
        v972 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.UpsampleParameters.== infix(_:_:)(v972, v973);
        sub_25749779C(v919, type metadata accessor for NeuralNetwork.Layer.UpsampleParameters);
        sub_25749779C(v931, type metadata accessor for NeuralNetwork.Layer.UpsampleParameters);
        OUTLINED_FUNCTION_1_2();
        v975 = v943;
        goto LABEL_320;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters;
      goto LABEL_453;
    case 9u:
      v1199 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1199, v1200, v1815);
      if (OUTLINED_FUNCTION_17_1() == 9)
      {
        v1201 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1201, v1202, v1689);
        v1203 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.FillLikeParameters.== infix(_:_:)(v1203, v1204);
        v956 = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters;
      goto LABEL_453;
    case 0xAu:
      v976 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v976, v977, v1816);
      if (OUTLINED_FUNCTION_17_1() == 10)
      {
        v978 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v978, v979, v1690);
        v980 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.FillStaticParameters.== infix(_:_:)(v980, v981);
        v956 = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters;
      goto LABEL_453;
    case 0xBu:
      v1646 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1646, v1647, v1817);
      if (OUTLINED_FUNCTION_17_1() == 11)
      {
        v1648 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1648, v1649, v1691);
        v1650 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.FillDynamicParameters.== infix(_:_:)(v1650, v1651);
        v956 = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters;
      goto LABEL_453;
    case 0xCu:
      v1513 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1513, v1514, v1818);
      if (OUTLINED_FUNCTION_17_1() == 12)
      {
        v1515 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1515, v1516, v1692);
        v1517 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SequenceRepeatParameters.== infix(_:_:)(v1517, v1518);
        v956 = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters;
      goto LABEL_453;
    case 0xDu:
      v1406 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1406, v1407, v1819);
      if (OUTLINED_FUNCTION_17_1() == 13)
      {
        v1408 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1408, v1409, v1693);
        v1410 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReverseSequenceParameters.== infix(_:_:)(v1410, v1411);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters;
      goto LABEL_453;
    case 0xEu:
      v1115 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1115, v1116, v1820);
      if (OUTLINED_FUNCTION_17_1() == 14)
      {
        v1117 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1117, v1118, v1694);
        v1119 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReverseParameters.== infix(_:_:)(v1119, v1120);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReverseParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReverseParameters;
      goto LABEL_453;
    case 0xFu:
      v1564 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1564, v1565, v1821);
      if (OUTLINED_FUNCTION_17_1() == 15)
      {
        v1566 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1566, v1567, v1695);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReorganizeDataParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters;
      goto LABEL_453;
    case 0x10u:
      v1640 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1640, v1641, v1822);
      if (OUTLINED_FUNCTION_17_1() == 16)
      {
        v1642 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1642, v1643, v1696);
        v1644 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.TileParameters.== infix(_:_:)(v1644, v1645);
        v956 = type metadata accessor for NeuralNetwork.Layer.TileParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.TileParameters;
      goto LABEL_453;
    case 0x11u:
      v1667 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1667, v1668, v1823);
      if (OUTLINED_FUNCTION_17_1() == 17)
      {
        v1669 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1669, v1670, v1697);
        v1671 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SqueezeParameters.== infix(_:_:)(v1671, v1672);
        v956 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters;
      goto LABEL_453;
    case 0x12u:
      v1193 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1193, v1194, v1824);
      if (OUTLINED_FUNCTION_17_1() == 18)
      {
        v1195 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1195, v1196, v1698);
        v1197 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ExpandDimensionsParameters.== infix(_:_:)(v1197, v1198);
        v956 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters;
      goto LABEL_453;
    case 0x13u:
      v988 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v988, v989, v1825);
      if (OUTLINED_FUNCTION_17_1() == 19)
      {
        v990 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v990, v991, v1699);
        v992 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.FlattenParameters.== infix(_:_:)(v992, v993);
        v956 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters;
      goto LABEL_453;
    case 0x14u:
      v1010 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1010, v1011, v1826);
      if (OUTLINED_FUNCTION_17_1() == 20)
      {
        v1012 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1012, v1013, v1700);
        v1014 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReshapeParameters.== infix(_:_:)(v1014, v1015);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters;
      goto LABEL_453;
    case 0x15u:
      v1525 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1525, v1526, v1827);
      if (OUTLINED_FUNCTION_17_1() == 21)
      {
        v1527 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1527, v1528, v1701);
        v1529 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReshapeStaticParameters.== infix(_:_:)(v1529, v1530);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters;
      goto LABEL_453;
    case 0x16u:
      v1223 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1223, v1224, v1828);
      if (OUTLINED_FUNCTION_17_1() == 22)
      {
        v1225 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1225, v1226, v1702);
        v1227 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RankPreservingReshapeParameters.== infix(_:_:)(v1227, v1228);
        v956 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters;
      goto LABEL_453;
    case 0x17u:
      v1624 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1624, v1625, v1829);
      if (OUTLINED_FUNCTION_17_1() == 23)
      {
        v1626 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1626, v1627, v1703);
        v1628 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.PermuteParameters.== infix(_:_:)(v1628, v1629);
        v956 = type metadata accessor for NeuralNetwork.Layer.PermuteParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.PermuteParameters;
      goto LABEL_453;
    case 0x18u:
      v1657 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1657, v1658, v1830);
      if (OUTLINED_FUNCTION_17_1() == 24)
      {
        v1659 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1659, v1660, v1704);
        v1661 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.TransposeParameters.== infix(_:_:)(v1661, v1662);
        v956 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters;
      goto LABEL_453;
    case 0x19u:
      v963 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v963, v964, v1831);
      if (OUTLINED_FUNCTION_17_1() == 25)
      {
        v965 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v965, v966, v1705);
        v967 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastToLikeParameters.== infix(_:_:)(v967);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastToLikeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastToLikeParameters;
      goto LABEL_453;
    case 0x1Au:
      v949 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v949, v950, v1832);
      if (OUTLINED_FUNCTION_17_1() == 26)
      {
        v951 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v951, v952, v1706);
        v953 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastToStaticParameters.== infix(_:_:)(v953, v954);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters;
      goto LABEL_453;
    case 0x1Bu:
      v1229 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1229, v1230, v1833);
      if (OUTLINED_FUNCTION_17_1() == 27)
      {
        v1231 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1231, v1232, v1707);
        v1233 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastToDynamicParameters.== infix(_:_:)(v1233);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastToDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastToDynamicParameters;
      goto LABEL_453;
    case 0x1Cu:
      v1269 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1269, v1270, v1834);
      if (OUTLINED_FUNCTION_17_1() == 28)
      {
        v1271 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1271, v1272, v1708);
        v1273 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.FlattenTo2DParameters.== infix(_:_:)(v1273, v1274);
        v956 = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters;
      goto LABEL_453;
    case 0x1Du:
      v1418 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1418, v1419, v1835);
      if (OUTLINED_FUNCTION_17_1() == 29)
      {
        v1420 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1420, v1421, v1709);
        v1422 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReshapeLikeParameters.== infix(_:_:)(v1422);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReshapeLikeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReshapeLikeParameters;
      goto LABEL_453;
    case 0x1Eu:
      v1301 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1301, v1302, v1836);
      if (OUTLINED_FUNCTION_17_1() == 30)
      {
        v1303 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1303, v1304, v1710);
        v1305 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReshapeDynamicParameters.== infix(_:_:)(v1305);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReshapeDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReshapeDynamicParameters;
      goto LABEL_453;
    case 0x1Fu:
      v1412 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1412, v1413, v1837);
      if (OUTLINED_FUNCTION_17_1() == 31)
      {
        v1414 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1414, v1415, v1711);
        v1416 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.StackParameters.== infix(_:_:)(v1416, v1417);
        v956 = type metadata accessor for NeuralNetwork.Layer.StackParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.StackParameters;
      goto LABEL_453;
    case 0x20u:
      v1331 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1331, v1332, v1838);
      if (OUTLINED_FUNCTION_17_1() == 32)
      {
        v1333 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1333, v1334, v1712);
        v1335 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GatherParameters.== infix(_:_:)(v1335, v1336);
        v956 = type metadata accessor for NeuralNetwork.Layer.GatherParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GatherParameters;
      goto LABEL_453;
    case 0x21u:
      v1542 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1542, v1543, v1839);
      if (OUTLINED_FUNCTION_17_1() == 33)
      {
        v1544 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1544, v1545, v1713);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GatherNDParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.GatherNDParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GatherNDParameters;
      goto LABEL_453;
    case 0x22u:
      v957 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v957, v958, v1840);
      if (OUTLINED_FUNCTION_17_1() == 34)
      {
        v959 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v959, v960, v1714);
        v961 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GatherAlongAxisParameters.== infix(_:_:)(v961, v962);
        v956 = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters;
      goto LABEL_453;
    case 0x23u:
      v994 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v994, v995, v1841);
      if (OUTLINED_FUNCTION_17_1() == 35)
      {
        v996 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v996, v997, v1715);
        v998 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ScatterParameters.== infix(_:_:)(v998);
        v956 = type metadata accessor for NeuralNetwork.Layer.ScatterParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ScatterParameters;
      goto LABEL_453;
    case 0x24u:
      v1280 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1280, v1281, v1842);
      if (OUTLINED_FUNCTION_17_1() == 36)
      {
        v1282 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1282, v1283, v1716);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ScatterNDParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters;
      goto LABEL_453;
    case 0x25u:
      v1041 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1041, v1042, v1843);
      if (OUTLINED_FUNCTION_17_1() == 37)
      {
        v1043 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1043, v1044, v1717);
        v1045 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ScatterAlongAxisParameters.== infix(_:_:)(v1045, v1046);
        v956 = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters;
      goto LABEL_453;
    case 0x26u:
      v1440 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1440, v1441, v1844);
      if (OUTLINED_FUNCTION_17_1() == 38)
      {
        v1442 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1442, v1443, v1718);
        v1444 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SliceParameters.== infix(_:_:)(v1444, v1445);
        v956 = type metadata accessor for NeuralNetwork.Layer.SliceParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SliceParameters;
      goto LABEL_453;
    case 0x27u:
      v1450 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1450, v1451, v1845);
      if (OUTLINED_FUNCTION_17_1() == 39)
      {
        v1452 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1452, v1453, v1719);
        v1454 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SliceStaticParameters.== infix(_:_:)(v1454, v1455);
        v956 = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters;
      goto LABEL_453;
    case 0x28u:
      v1258 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1258, v1259, v1846);
      if (OUTLINED_FUNCTION_17_1() == 40)
      {
        v1260 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1260, v1261, v1720);
        v1262 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SliceDynamicParameters.== infix(_:_:)(v1262, v1263);
        v956 = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters;
      goto LABEL_453;
    case 0x29u:
      v1490 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1490, v1491, v1847);
      if (OUTLINED_FUNCTION_17_1() == 41)
      {
        v1492 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1492, v1493, v1721);
        v1494 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SliceBySizeParameters.== infix(_:_:)(v1494, v1495);
        v956 = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters;
      goto LABEL_453;
    case 0x2Au:
      v1434 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1434, v1435, v1848);
      if (OUTLINED_FUNCTION_17_1() == 42)
      {
        v1436 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1436, v1437, v1722);
        v1438 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SlidingWindowsParameters.== infix(_:_:)(v1438, v1439);
        v956 = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters;
      goto LABEL_453;
    case 0x2Bu:
      v1110 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1110, v1111, v1849);
      if (OUTLINED_FUNCTION_17_1() == 43)
      {
        v1112 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1112, v1113, v1723);
        v1114 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.InnerProductParameters.== infix(_:_:)(v1114);
        v956 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters;
      goto LABEL_453;
    case 0x2Cu:
      v1126 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1126, v1127, v1850);
      if (OUTLINED_FUNCTION_17_1() == 44)
      {
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_31_1(type metadata accessor for NeuralNetwork.Layer.Kind + v943, v1128, v1724);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.Activation.== infix(_:_:)();
        v955 = v1129;
        v956 = type metadata accessor for NeuralNetwork.Layer.Activation;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.Activation;
      goto LABEL_453;
    case 0x2Du:
      v1446 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1446, v1447, v1851);
      if (OUTLINED_FUNCTION_17_1() == 45)
      {
        v1448 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1448, v1449, v1725);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.UnaryFunctionParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters;
      goto LABEL_453;
    case 0x2Eu:
      v1519 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1519, v1520, v1852);
      if (OUTLINED_FUNCTION_17_1() == 46)
      {
        v1521 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1521, v1522, v1726);
        v1523 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ClipParameters.== infix(_:_:)(v1523, v1524);
        v956 = type metadata accessor for NeuralNetwork.Layer.ClipParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ClipParameters;
      goto LABEL_453;
    case 0x2Fu:
      v982 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v982, v983, v1853);
      if (OUTLINED_FUNCTION_17_1() == 47)
      {
        v984 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v984, v985, v1727);
        v986 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GELUParameters.== infix(_:_:)(v986, v987);
        v956 = type metadata accessor for NeuralNetwork.Layer.GELUParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GELUParameters;
      goto LABEL_453;
    case 0x30u:
      v1004 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1004, v1005, v1854);
      if (OUTLINED_FUNCTION_17_1() == 48)
      {
        v1006 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1006, v1007, v1728);
        v1008 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ClampedReluParameters.== infix(_:_:)(v1008, v1009);
        v956 = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters;
      goto LABEL_453;
    case 0x31u:
      v1121 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1121, v1122, v1855);
      if (OUTLINED_FUNCTION_17_1() == 49)
      {
        v1123 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1123, v1124, v1729);
        v1125 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ConvolutionParameters.== infix(_:_:)(v1125);
        v956 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters;
      goto LABEL_453;
    case 0x32u:
      v1159 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1159, v1160, v1856);
      if (OUTLINED_FUNCTION_17_1() == 50)
      {
        v1161 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1161, v1162, v1730);
        v1163 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.Convolution3DParameters.== infix(_:_:)(v1163);
        v956 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters;
      goto LABEL_453;
    case 0x33u:
      v1026 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1026, v1027, v1857);
      if (OUTLINED_FUNCTION_17_1() == 51)
      {
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_31_1(type metadata accessor for NeuralNetwork.Layer.Kind + v943, v1028, v1731);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.PoolParameters.== infix(_:_:)();
        v955 = v1029;
        v956 = type metadata accessor for NeuralNetwork.Layer.PoolParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.PoolParameters;
      goto LABEL_453;
    case 0x34u:
      v1053 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1053, v1054, v1858);
      if (OUTLINED_FUNCTION_17_1() == 52)
      {
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_31_1(type metadata accessor for NeuralNetwork.Layer.Kind + v943, v1055, v1732);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.Pool3DParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters;
      goto LABEL_453;
    case 0x35u:
      v1580 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1580, v1581, v1859);
      if (OUTLINED_FUNCTION_17_1() == 53)
      {
        v1582 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1582, v1583, v1733);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GlobalPool3DParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.GlobalPool3DParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GlobalPool3DParameters;
      goto LABEL_453;
    case 0x36u:
      v1590 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1590, v1591, v1860);
      if (OUTLINED_FUNCTION_17_1() == 54)
      {
        v1592 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1592, v1593, v1734);
        v1594 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.AddParameters.== infix(_:_:)(v1594, v1595);
        v956 = type metadata accessor for NeuralNetwork.Layer.AddParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.AddParameters;
      goto LABEL_453;
    case 0x37u:
      v1099 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1099, v1100, v1861);
      if (OUTLINED_FUNCTION_17_1() == 55)
      {
        v1101 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1101, v1102, v1735);
        v1103 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.MultiplyParameters.== infix(_:_:)(v1103, v1104);
        v956 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters;
      goto LABEL_453;
    case 0x38u:
      v1601 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1601, v1602, v1862);
      if (OUTLINED_FUNCTION_17_1() == 56)
      {
        v1603 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1603, v1604, v1736);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastableAddParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters;
      goto LABEL_453;
    case 0x39u:
      v1620 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1620, v1621, v1863);
      if (OUTLINED_FUNCTION_17_1() == 57)
      {
        v1622 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1622, v1623, v1737);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastableSubtractParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters;
      goto LABEL_453;
    case 0x3Au:
      v1663 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1663, v1664, v1864);
      if (OUTLINED_FUNCTION_17_1() == 58)
      {
        v1665 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1665, v1666, v1738);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastableMultiplyParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters;
      goto LABEL_453;
    case 0x3Bu:
      v1348 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1348, v1349, v1865);
      if (OUTLINED_FUNCTION_17_1() == 59)
      {
        v1350 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1350, v1351, v1739);
        v1352 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastableDivideParameters.== infix(_:_:)(v1352);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastableDivideParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastableDivideParameters;
      goto LABEL_453;
    case 0x3Cu:
      v1652 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1652, v1653, v1866);
      if (OUTLINED_FUNCTION_17_1() == 60)
      {
        v1654 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1654, v1655, v1740);
        v1656 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.== infix(_:_:)(v1656);
        v956 = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters;
      goto LABEL_453;
    case 0x3Du:
      v1047 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1047, v1048, v1867);
      if (OUTLINED_FUNCTION_17_1() == 61)
      {
        v1049 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1049, v1050, v1741);
        v1051 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.DotProductParameters.== infix(_:_:)(v1051, v1052);
        v956 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters;
      goto LABEL_453;
    case 0x3Eu:
      v1615 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1615, v1616, v1868);
      if (OUTLINED_FUNCTION_17_1() == 62)
      {
        v1617 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1617, v1618, v1742);
        v1619 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastableModParameters.== infix(_:_:)(v1619);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastableModParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastableModParameters;
      goto LABEL_453;
    case 0x3Fu:
      v1358 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1358, v1359, v1869);
      if (OUTLINED_FUNCTION_17_1() == 63)
      {
        v1360 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1360, v1361, v1743);
        v1362 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastablePowParameters.== infix(_:_:)(v1362);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastablePowParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastablePowParameters;
      goto LABEL_453;
    case 0x40u:
      v1076 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1076, v1077, v1870);
      if (OUTLINED_FUNCTION_17_1() == 64)
      {
        v1078 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1078, v1079, v1744);
        v1080 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BroadcastableFloorDivParameters.== infix(_:_:)(v1080);
        v956 = type metadata accessor for NeuralNetwork.Layer.BroadcastableFloorDivParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BroadcastableFloorDivParameters;
      goto LABEL_453;
    case 0x41u:
      v1343 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1343, v1344, v1871);
      if (OUTLINED_FUNCTION_17_1() == 65)
      {
        v1345 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1345, v1346, v1745);
        v1347 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ScaleParameters.== infix(_:_:)(v1347);
        v956 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ScaleParameters;
      goto LABEL_453;
    case 0x42u:
      v1021 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1021, v1022, v1872);
      if (OUTLINED_FUNCTION_17_1() == 66)
      {
        v1023 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1023, v1024, v1746);
        v1025 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BatchNormalizeParameters.== infix(_:_:)(v1025);
        v956 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters;
      goto LABEL_453;
    case 0x43u:
      v1630 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1630, v1631, v1873);
      if (OUTLINED_FUNCTION_17_1() == 67)
      {
        v1632 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1632, v1633, v1747);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SoftmaxParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters;
      goto LABEL_453;
    case 0x44u:
      v1634 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1634, v1635, v1874);
      if (OUTLINED_FUNCTION_17_1() == 68)
      {
        v1636 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1636, v1637, v1748);
        v1638 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SoftmaxNDParameters.== infix(_:_:)(v1638, v1639);
        v956 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters;
      goto LABEL_453;
    case 0x45u:
      v1087 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1087, v1088, v1875);
      if (OUTLINED_FUNCTION_17_1() == 69)
      {
        v1089 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1089, v1090, v1749);
        v1091 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.MeanVarianceNormalizeParameters.== infix(_:_:)(v1091, v1092);
        v956 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters;
      goto LABEL_453;
    case 0x46u:
      v1568 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1568, v1569, v1876);
      if (OUTLINED_FUNCTION_17_1() == 70)
      {
        v1570 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1570, v1571, v1750);
        v1572 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.L2NormalizeParameters.== infix(_:_:)(v1572, v1573);
        v956 = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters;
      goto LABEL_453;
    case 0x47u:
      v1428 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1428, v1429, v1877);
      if (OUTLINED_FUNCTION_17_1() == 71)
      {
        v1430 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1430, v1431, v1751);
        v1432 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LRNParameters.== infix(_:_:)(v1432, v1433);
        v956 = type metadata accessor for NeuralNetwork.Layer.LRNParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LRNParameters;
      goto LABEL_453;
    case 0x48u:
      v1423 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1423, v1424, v1878);
      if (OUTLINED_FUNCTION_17_1() == 72)
      {
        v1425 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1425, v1426, v1752);
        v1427 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LayerNormalizeParameters.== infix(_:_:)(v1427);
        v956 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters;
      goto LABEL_453;
    case 0x49u:
      v999 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v999, v1000, v1879);
      if (OUTLINED_FUNCTION_17_1() == 73)
      {
        v1001 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1001, v1002, v1753);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.UnidirectionalLSTMParameters.== infix(_:_:)();
        v955 = v1003;
        v956 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters;
      goto LABEL_453;
    case 0x4Au:
      v1016 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1016, v1017, v1880);
      if (OUTLINED_FUNCTION_17_1() == 74)
      {
        v1018 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1018, v1019, v1754);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.BidirectionalLSTMParameters.== infix(_:_:)();
        v955 = v1020;
        v956 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters;
      goto LABEL_453;
    case 0x4Bu:
      v1275 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1275, v1276, v1881);
      if (OUTLINED_FUNCTION_17_1() == 75)
      {
        v1277 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1277, v1278, v1755);
        v1279 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.SimpleRecurrentParameters.== infix(_:_:)(v1279);
        v956 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters;
      goto LABEL_453;
    case 0x4Cu:
      v1284 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1284, v1285, v1882);
      if (OUTLINED_FUNCTION_17_1() == 76)
      {
        v1286 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1286, v1287, v1756);
        v1288 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GRUParameters.== infix(_:_:)(v1288);
        v956 = type metadata accessor for NeuralNetwork.Layer.GRUParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GRUParameters;
      goto LABEL_453;
    case 0x4Du:
      v1136 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1136, v1137, v1883);
      if (OUTLINED_FUNCTION_17_1() == 77)
      {
        v1138 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1138, v1139, v1757);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.CropParameters.== infix(_:_:)();
        v955 = v1140;
        v956 = type metadata accessor for NeuralNetwork.Layer.CropParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.CropParameters;
      goto LABEL_453;
    case 0x4Eu:
      v1036 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1036, v1037, v1884);
      if (OUTLINED_FUNCTION_17_1() == 78)
      {
        v1038 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1038, v1039, v1758);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.ResizeBilinearParameters.== infix(_:_:)();
        v955 = v1040;
        v956 = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters;
      goto LABEL_453;
    case 0x4Fu:
      v1596 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1596, v1597, v1885);
      if (OUTLINED_FUNCTION_17_1() == 79)
      {
        v1598 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1598, v1599, v1759);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.CropResizeParameters.== infix(_:_:)();
        v955 = v1600;
        v956 = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters;
      goto LABEL_453;
    case 0x50u:
      v1067 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1067, v1068, v1886);
      if (OUTLINED_FUNCTION_17_1() == 80)
      {
        v1069 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1069, v1070, v1760);
        v1071 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.AverageParameters.== infix(_:_:)(v1071);
        v956 = type metadata accessor for NeuralNetwork.Layer.AverageParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.AverageParameters;
      goto LABEL_453;
    case 0x51u:
      v1369 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1369, v1370, v1887);
      if (OUTLINED_FUNCTION_17_1() == 81)
      {
        v1371 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1371, v1372, v1761);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceParameters;
      goto LABEL_453;
    case 0x52u:
      v1175 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1175, v1176, v1888);
      if (OUTLINED_FUNCTION_17_1() == 82)
      {
        v1177 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1177, v1178, v1762);
        v1179 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceL1Parameters.== infix(_:_:)(v1179, v1180);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters;
      goto LABEL_453;
    case 0x53u:
      v1574 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1574, v1575, &v1889);
      if (OUTLINED_FUNCTION_17_1() == 83)
      {
        v1576 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1576, v1577, v1763);
        v1578 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceL2Parameters.== infix(_:_:)(v1578, v1579);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters;
      goto LABEL_453;
    case 0x54u:
      v1558 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1558, v1559, &v1890);
      if (OUTLINED_FUNCTION_17_1() == 84)
      {
        v1560 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1560, v1561, v1764);
        v1562 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceMaxParameters.== infix(_:_:)(v1562, v1563);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters;
      goto LABEL_453;
    case 0x55u:
      v1531 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1531, v1532, &v1891);
      if (OUTLINED_FUNCTION_17_1() == 85)
      {
        v1533 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1533, v1534, v1765);
        v1535 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceMinParameters.== infix(_:_:)(v1535, v1536);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters;
      goto LABEL_453;
    case 0x56u:
      v1141 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1141, v1142, &v1892);
      if (OUTLINED_FUNCTION_17_1() == 86)
      {
        v1143 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1143, v1144, v1766);
        v1145 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceSumParameters.== infix(_:_:)(v1145, v1146);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters;
      goto LABEL_453;
    case 0x57u:
      v1056 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1056, v1057, &v1893);
      if (OUTLINED_FUNCTION_17_1() == 87)
      {
        v1058 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1058, v1059, v1767);
        v1060 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceProdParameters.== infix(_:_:)(v1060, v1061);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters;
      goto LABEL_453;
    case 0x58u:
      v1205 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1205, v1206, &v1894);
      if (OUTLINED_FUNCTION_17_1() == 88)
      {
        v1207 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1207, v1208, v1768);
        v1209 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceMeanParameters.== infix(_:_:)(v1209, v1210);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters;
      goto LABEL_453;
    case 0x59u:
      v1605 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1605, v1606, &v1895);
      if (OUTLINED_FUNCTION_17_1() == 89)
      {
        v1607 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1607, v1608, v1769);
        v1609 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceLogSumParameters.== infix(_:_:)(v1609, v1610);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters;
      goto LABEL_453;
    case 0x5Au:
      v1234 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1234, v1235, &v1896);
      if (OUTLINED_FUNCTION_17_1() == 90)
      {
        v1236 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1236, v1237, v1770);
        v1238 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceSumSquareParameters.== infix(_:_:)(v1238, v1239);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters;
      goto LABEL_453;
    case 0x5Bu:
      v1130 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1130, v1131, &v1897);
      if (OUTLINED_FUNCTION_17_1() == 91)
      {
        v1132 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1132, v1133, v1771);
        v1134 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ReduceLogSumExpParameters.== infix(_:_:)(v1134, v1135);
        v956 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters;
      goto LABEL_453;
    case 0x5Cu:
      v1379 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1379, v1380, &v1898);
      if (OUTLINED_FUNCTION_17_1() == 92)
      {
        v1381 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1381, v1382, v1772);
        v1383 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.MinBroadcastableParameters.== infix(_:_:)(v1383);
        v956 = type metadata accessor for NeuralNetwork.Layer.MinBroadcastableParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.MinBroadcastableParameters;
      goto LABEL_453;
    case 0x5Du:
      v1311 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1311, v1312, &v1899);
      if (OUTLINED_FUNCTION_17_1() == 93)
      {
        v1313 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1313, v1314, v1773);
        v1315 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.MaxBroadcastableParameters.== infix(_:_:)(v1315);
        v956 = type metadata accessor for NeuralNetwork.Layer.MaxBroadcastableParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.MaxBroadcastableParameters;
      goto LABEL_453;
    case 0x5Eu:
      v1337 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1337, v1338, &v1900);
      if (OUTLINED_FUNCTION_17_1() == 94)
      {
        v1339 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1339, v1340, v1774);
        v1341 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.CumulativeSumParameters.== infix(_:_:)(v1341, v1342);
        v956 = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters;
      goto LABEL_453;
    case 0x5Fu:
      v1384 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1384, v1385, &v1901);
      if (OUTLINED_FUNCTION_17_1() == 95)
      {
        v1386 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1386, v1387, v1775);
        v1388 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ArgMinParameters.== infix(_:_:)(v1388, v1389);
        v956 = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters;
      goto LABEL_453;
    case 0x60u:
      v1373 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1373, v1374, &v1902);
      if (OUTLINED_FUNCTION_17_1() == 96)
      {
        v1375 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1375, v1376, v1776);
        v1377 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ArgMaxParameters.== infix(_:_:)(v1377, v1378);
        v956 = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters;
      goto LABEL_453;
    case 0x61u:
      v1306 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1306, v1307, &v1903);
      if (OUTLINED_FUNCTION_17_1() == 97)
      {
        v1308 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1308, v1309, v1777);
        v1310 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.WhereNonZeroParameters.== infix(_:_:)(v1310);
        v956 = type metadata accessor for NeuralNetwork.Layer.WhereNonZeroParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.WhereNonZeroParameters;
      goto LABEL_453;
    case 0x62u:
      v1472 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1472, v1473, &v1904);
      if (OUTLINED_FUNCTION_17_1() == 98)
      {
        v1474 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1474, v1475, v1778);
        v1476 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.WhereBroadcastableParameters.== infix(_:_:)(v1476);
        v956 = type metadata accessor for NeuralNetwork.Layer.WhereBroadcastableParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.WhereBroadcastableParameters;
      goto LABEL_453;
    case 0x63u:
      v1264 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1264, v1265, &v1905);
      if (OUTLINED_FUNCTION_17_1() == 99)
      {
        v1266 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1266, v1267, v1779);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.BranchParameters.== infix(_:_:)();
        v955 = v1268;
        v956 = type metadata accessor for NeuralNetwork.Layer.BranchParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BranchParameters;
      goto LABEL_453;
    case 0x64u:
      v1462 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1462, v1463, &v1906);
      if (OUTLINED_FUNCTION_17_1() == 100)
      {
        v1464 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1464, v1465, v1780);
        OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.CopyParameters.== infix(_:_:)();
        v956 = type metadata accessor for NeuralNetwork.Layer.CopyParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.CopyParameters;
      goto LABEL_453;
    case 0x65u:
      v1170 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1170, v1171, &v1907);
      if (OUTLINED_FUNCTION_17_1() == 101)
      {
        v1172 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1172, v1173, v1781);
        OUTLINED_FUNCTION_360();
        static NeuralNetwork.Layer.LoopParameters.== infix(_:_:)();
        v955 = v1174;
        v956 = type metadata accessor for NeuralNetwork.Layer.LoopParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LoopParameters;
      goto LABEL_453;
    case 0x66u:
      v1537 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1537, v1538, &v1908);
      if (OUTLINED_FUNCTION_17_1() == 102)
      {
        v1539 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1539, v1540, v1782);
        v1541 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LoopBreakParameters.== infix(_:_:)(v1541);
        v956 = type metadata accessor for NeuralNetwork.Layer.LoopBreakParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LoopBreakParameters;
      goto LABEL_453;
    case 0x67u:
      v1508 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1508, v1509, &v1909);
      if (OUTLINED_FUNCTION_17_1() == 103)
      {
        v1510 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1510, v1511, v1783);
        v1512 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LoopContinueParameters.== infix(_:_:)(v1512);
        v956 = type metadata accessor for NeuralNetwork.Layer.LoopContinueParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LoopContinueParameters;
      goto LABEL_453;
    case 0x68u:
      v1153 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1153, v1154, v1910);
      if (OUTLINED_FUNCTION_17_1() == 104)
      {
        v1155 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1155, v1156, v1784);
        v1157 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RangeStaticParameters.== infix(_:_:)(v1157, v1158);
        v956 = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters;
      goto LABEL_453;
    case 0x69u:
      v1546 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1546, v1547, &v1911);
      if (OUTLINED_FUNCTION_17_1() == 105)
      {
        v1548 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1548, v1549, v1785);
        v1550 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RangeDynamicParameters.== infix(_:_:)(v1550, v1551);
        v956 = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters;
      goto LABEL_453;
    case 0x6Au:
      v1584 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1584, v1585, &v1912);
      if (OUTLINED_FUNCTION_17_1() == 106)
      {
        v1586 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1586, v1587, v1786);
        v1588 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.EqualParameters.== infix(_:_:)(v1588, v1589);
        v956 = type metadata accessor for NeuralNetwork.Layer.EqualParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.EqualParameters;
      goto LABEL_453;
    case 0x6Bu:
      v1081 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1081, v1082, &v1913);
      if (OUTLINED_FUNCTION_17_1() == 107)
      {
        v1083 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1083, v1084, v1787);
        v1085 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.NotEqualParameters.== infix(_:_:)(v1085, v1086);
        v956 = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters;
      goto LABEL_453;
    case 0x6Cu:
      v1289 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1289, v1290, &v1914);
      if (OUTLINED_FUNCTION_17_1() == 108)
      {
        v1291 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1291, v1292, v1788);
        v1293 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LessThanParameters.== infix(_:_:)(v1293, v1294);
        v956 = type metadata accessor for NeuralNetwork.Layer.LessThanParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LessThanParameters;
      goto LABEL_453;
    case 0x6Du:
      v1252 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1252, v1253, &v1915);
      if (OUTLINED_FUNCTION_17_1() == 109)
      {
        v1254 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1254, v1255, v1789);
        v1256 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LessEqualParameters.== infix(_:_:)(v1256, v1257);
        v956 = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters;
      goto LABEL_453;
    case 0x6Eu:
      v1164 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1164, v1165, &v1916);
      if (OUTLINED_FUNCTION_17_1() == 110)
      {
        v1166 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1166, v1167, v1790);
        v1168 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GreaterThanParameters.== infix(_:_:)(v1168, v1169);
        v956 = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters;
      goto LABEL_453;
    case 0x6Fu:
      v1552 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1552, v1553, &v1917);
      if (OUTLINED_FUNCTION_17_1() == 111)
      {
        v1554 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1554, v1555, v1791);
        v1556 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.GreaterEqualParameters.== infix(_:_:)(v1556, v1557);
        v956 = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters;
      goto LABEL_453;
    case 0x70u:
      v1400 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1400, v1401, &v1918);
      if (OUTLINED_FUNCTION_17_1() == 112)
      {
        v1402 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1402, v1403, v1792);
        v1404 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomNormalLikeParameters.== infix(_:_:)(v1404, v1405);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters;
      goto LABEL_453;
    case 0x71u:
      v1240 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1240, v1241, &v1919);
      if (OUTLINED_FUNCTION_17_1() == 113)
      {
        v1242 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1242, v1243, v1793);
        v1244 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomNormalStaticParameters.== infix(_:_:)(v1244, v1245);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters;
      goto LABEL_453;
    case 0x72u:
      v1093 = OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_32_2(v1093, v1094, &v1920);
      if (OUTLINED_FUNCTION_17_1() == 114)
      {
        v1095 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1095, v1096, v1794);
        v1097 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomNormalDynamicParameters.== infix(_:_:)(v1097, v1098);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters;
      goto LABEL_453;
    case 0x73u:
      v1466 = OUTLINED_FUNCTION_0_2();
      v931 = v1889;
      sub_25749773C(v1466, v1889, v1467);
      if (OUTLINED_FUNCTION_17_1() == 115)
      {
        v1468 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1468, v1469, v1795);
        v1470 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomUniformLikeParameters.== infix(_:_:)(v1470, v1471);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters;
      goto LABEL_453;
    case 0x74u:
      v1363 = OUTLINED_FUNCTION_0_2();
      v931 = v1890;
      sub_25749773C(v1363, v1890, v1364);
      if (OUTLINED_FUNCTION_17_1() == 116)
      {
        v1365 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1365, v1366, v1796);
        v1367 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomUniformStaticParameters.== infix(_:_:)(v1367, v1368);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters;
      goto LABEL_453;
    case 0x75u:
      v1295 = OUTLINED_FUNCTION_0_2();
      v931 = v1891;
      sub_25749773C(v1295, v1891, v1296);
      if (OUTLINED_FUNCTION_17_1() == 117)
      {
        v1297 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1297, v1298, v1797);
        v1299 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomUniformDynamicParameters.== infix(_:_:)(v1299, v1300);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters;
      goto LABEL_453;
    case 0x76u:
      v1456 = OUTLINED_FUNCTION_0_2();
      v931 = v1892;
      sub_25749773C(v1456, v1892, v1457);
      if (OUTLINED_FUNCTION_17_1() == 118)
      {
        v1458 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1458, v1459, v1798);
        v1460 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomBernoulliLikeParameters.== infix(_:_:)(v1460, v1461);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters;
      goto LABEL_453;
    case 0x77u:
      v1496 = OUTLINED_FUNCTION_0_2();
      v931 = v1893;
      sub_25749773C(v1496, v1893, v1497);
      if (OUTLINED_FUNCTION_17_1() == 119)
      {
        v1498 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1498, v1499, v1799);
        v1500 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomBernoulliStaticParameters.== infix(_:_:)(v1500, v1501);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters;
      goto LABEL_453;
    case 0x78u:
      v1147 = OUTLINED_FUNCTION_0_2();
      v931 = v1894;
      sub_25749773C(v1147, v1894, v1148);
      if (OUTLINED_FUNCTION_17_1() == 120)
      {
        v1149 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1149, v1150, v1800);
        v1151 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.RandomBernoulliDynamicParameters.== infix(_:_:)(v1151, v1152);
        v956 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters;
      goto LABEL_453;
    case 0x79u:
      v1187 = OUTLINED_FUNCTION_0_2();
      v931 = v1895;
      sub_25749773C(v1187, v1895, v1188);
      if (OUTLINED_FUNCTION_17_1() == 121)
      {
        v1189 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1189, v1190, v1801);
        v1191 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.CategoricalDistributionParameters.== infix(_:_:)(v1191, v1192);
        v956 = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters;
      goto LABEL_453;
    case 0x7Au:
      v1181 = OUTLINED_FUNCTION_0_2();
      v931 = v1896;
      sub_25749773C(v1181, v1896, v1182);
      if (OUTLINED_FUNCTION_17_1() == 122)
      {
        v1183 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1183, v1184, v1802);
        v1185 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.MatrixBandPartParameters.== infix(_:_:)(v1185, v1186);
        v956 = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters;
      goto LABEL_453;
    case 0x7Bu:
      v1217 = OUTLINED_FUNCTION_0_2();
      v931 = v1897;
      sub_25749773C(v1217, v1897, v1218);
      if (OUTLINED_FUNCTION_17_1() == 123)
      {
        v1219 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1219, v1220, v1803);
        v1221 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.LowerTriangularParameters.== infix(_:_:)(v1221, v1222);
        v956 = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters;
      goto LABEL_453;
    case 0x7Cu:
      v1246 = OUTLINED_FUNCTION_0_2();
      v931 = v1898;
      sub_25749773C(v1246, v1898, v1247);
      if (OUTLINED_FUNCTION_17_1() == 124)
      {
        v1248 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1248, v1249, v1804);
        v1250 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.UpperTriangularParameters.== infix(_:_:)(v1250, v1251);
        v956 = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters;
      goto LABEL_453;
    case 0x7Du:
      v1395 = OUTLINED_FUNCTION_0_2();
      v931 = v1899;
      sub_25749773C(v1395, v1899, v1396);
      if (OUTLINED_FUNCTION_17_1() == 125)
      {
        v1397 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1397, v1398, v1805);
        v1399 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.EmbeddingParameters.== infix(_:_:)(v1399);
        v956 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters;
      goto LABEL_453;
    case 0x7Eu:
      v1353 = OUTLINED_FUNCTION_0_2();
      v931 = v1900;
      sub_25749773C(v1353, v1900, v1354);
      if (OUTLINED_FUNCTION_17_1() == 126)
      {
        v1355 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1355, v1356, v1806);
        v1357 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.EmbeddingNDParameters.== infix(_:_:)(v1357);
        v956 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters;
      goto LABEL_453;
    case 0x7Fu:
      v1390 = OUTLINED_FUNCTION_0_2();
      v931 = v1901;
      sub_25749773C(v1390, v1901, v1391);
      if (OUTLINED_FUNCTION_17_1() == 127)
      {
        v1392 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1392, v1393, v1807);
        v1394 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.BiasParameters.== infix(_:_:)(v1394);
        v956 = type metadata accessor for NeuralNetwork.Layer.BiasParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.BiasParameters;
      goto LABEL_453;
    case 0x80u:
      v1484 = OUTLINED_FUNCTION_0_2();
      v931 = v1902;
      sub_25749773C(v1484, v1902, v1485);
      if (OUTLINED_FUNCTION_17_1() == 128)
      {
        v1486 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1486, v1487, v1808);
        v1488 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.OneHotParameters.== infix(_:_:)(v1488, v1489);
        v956 = type metadata accessor for NeuralNetwork.Layer.OneHotParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.OneHotParameters;
      goto LABEL_453;
    case 0x81u:
      v1478 = OUTLINED_FUNCTION_0_2();
      v931 = v1903;
      sub_25749773C(v1478, v1903, v1479);
      if (OUTLINED_FUNCTION_17_1() == 129)
      {
        v1480 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1480, v1481, v1809);
        v1482 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.TopKParameters.== infix(_:_:)(v1482, v1483);
        v956 = type metadata accessor for NeuralNetwork.Layer.TopKParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.TopKParameters;
      goto LABEL_453;
    case 0x82u:
      v1211 = OUTLINED_FUNCTION_0_2();
      v931 = v1904;
      sub_25749773C(v1211, v1904, v1212);
      if (OUTLINED_FUNCTION_17_1() == 130)
      {
        v1213 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1213, v1214, v1810);
        v1215 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.ArgSortParameters.== infix(_:_:)(v1215, v1216);
        v956 = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters;
      goto LABEL_453;
    case 0x83u:
      v1502 = OUTLINED_FUNCTION_0_2();
      v931 = v1905;
      sub_25749773C(v1502, v1905, v1503);
      if (OUTLINED_FUNCTION_17_1() == 131)
      {
        v1504 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1504, v1505, v1811);
        v1506 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.NonMaximumSuppressionParameters.== infix(_:_:)(v1506, v1507);
        v956 = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters;
        goto LABEL_318;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters;
      goto LABEL_453;
    case 0x84u:
      v1316 = OUTLINED_FUNCTION_0_2();
      v931 = v1906;
      sub_25749773C(v1316, v1906, v1317);
      if (OUTLINED_FUNCTION_17_1() == 132)
      {
        v1318 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_31_1(v1318, v1319, v1812);
        v1320 = OUTLINED_FUNCTION_360();
        v955 = static NeuralNetwork.Layer.CustomParameters.== infix(_:_:)(v1320);
        v956 = type metadata accessor for NeuralNetwork.Layer.CustomParameters;
LABEL_318:
        v1034 = v956;
        sub_25749779C(v919, v956);
        v1035 = v931;
        goto LABEL_319;
      }

      v1673 = type metadata accessor for NeuralNetwork.Layer.CustomParameters;
LABEL_453:
      v947 = v1673;
      v948 = v931;
      goto LABEL_454;
    case 0x85u:
      if (OUTLINED_FUNCTION_24_1() != 133)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x86u:
      if (OUTLINED_FUNCTION_24_1() == 134)
      {
        goto LABEL_245;
      }

      goto LABEL_455;
    case 0x87u:
      if (OUTLINED_FUNCTION_24_1() != 135)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x88u:
      if (OUTLINED_FUNCTION_24_1() != 136)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x89u:
      if (OUTLINED_FUNCTION_24_1() != 137)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x8Au:
      if (OUTLINED_FUNCTION_24_1() != 138)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x8Bu:
      if (OUTLINED_FUNCTION_24_1() != 139)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x8Cu:
      if (OUTLINED_FUNCTION_24_1() != 140)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x8Du:
      if (OUTLINED_FUNCTION_24_1() != 141)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x8Eu:
      if (OUTLINED_FUNCTION_24_1() != 142)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x8Fu:
      if (OUTLINED_FUNCTION_24_1() != 143)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x90u:
      if (OUTLINED_FUNCTION_24_1() != 144)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x91u:
      if (OUTLINED_FUNCTION_24_1() != 145)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x92u:
      if (OUTLINED_FUNCTION_24_1() != 146)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x93u:
      if (OUTLINED_FUNCTION_24_1() != 147)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x94u:
      if (OUTLINED_FUNCTION_24_1() != 148)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x95u:
      if (OUTLINED_FUNCTION_24_1() != 149)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x96u:
      if (OUTLINED_FUNCTION_24_1() != 150)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x97u:
      if (OUTLINED_FUNCTION_24_1() != 151)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x98u:
      if (OUTLINED_FUNCTION_24_1() != 152)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x99u:
      if (OUTLINED_FUNCTION_24_1() != 153)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x9Au:
      if (OUTLINED_FUNCTION_24_1() != 154)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x9Bu:
      if (OUTLINED_FUNCTION_24_1() != 155)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x9Cu:
      if (OUTLINED_FUNCTION_24_1() != 156)
      {
        goto LABEL_455;
      }

      goto LABEL_245;
    case 0x9Du:
      if (OUTLINED_FUNCTION_24_1() != 157)
      {
        goto LABEL_455;
      }

LABEL_245:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v943, v1477);
      v955 = 1;
      return v955 & 1;
    default:
      v945 = OUTLINED_FUNCTION_0_2();
      sub_25749773C(v945, v936, v946);
      if (OUTLINED_FUNCTION_17_1())
      {
        v947 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters;
        v948 = v936;
LABEL_454:
        sub_25749779C(v948, v947);
LABEL_455:
        sub_2574695E4(v943, &qword_27F87A080, &qword_257744BB0);
        v955 = 0;
      }

      else
      {
        v1675 = OUTLINED_FUNCTION_20_1();
        v1676 = v1680;
        sub_2574977F4(v1675, v1680, v1677);
        v1678 = static NeuralNetwork.Layer.ConstantParameters.== infix(_:_:)(v936, v1676);
        v1034 = type metadata accessor for NeuralNetwork.Layer.ConstantParameters;
        sub_25749779C(v1676, type metadata accessor for NeuralNetwork.Layer.ConstantParameters);
        v1035 = v936;
        v955 = v1678;
LABEL_319:
        sub_25749779C(v1035, v1034);
        OUTLINED_FUNCTION_1_2();
        v975 = v943;
LABEL_320:
        sub_25749779C(v975, v974);
      }

      return v955 & 1;
  }
}

uint64_t type metadata accessor for NeuralNetwork.Layer.Kind()
{
  result = qword_27F87A088;
  if (!qword_27F87A088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.Kind.name.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for NeuralNetwork.Layer.PoolParameters(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v147 - v22;
  v24 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = OUTLINED_FUNCTION_0_2();
  sub_25749773C(v31, v30, v32);
  v33 = 0x6570616853746567;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v33 = 6578544;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v55);
      return v33;
    case 3u:
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v138);
      return v33;
    case 4u:
    case 5u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v37);
      return 0x6E657461636E6F63;
    case 6u:
    case 7u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v34);
      return 0x74696C7073;
    case 8u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v42);
      return 0x656C706D61737075;
    case 9u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v76);
      return 0x656B694C6C6C6966;
    case 0xAu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v43);
      OUTLINED_FUNCTION_37_1();
      return 0x746174536C6C6966;
    case 0xBu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v141);
      return 0x616E79446C6C6966;
    case 0xCu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v124);
      return 0x6553746165706572;
    case 0xDu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v113);
      v33 = 0x737265766572;
      return v33 & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
    case 0xEu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v69);
      v33 = 0x737265766572;
      return v33 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0xFu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v133);
      return 0x696E6167726F6572;
    case 0x10u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v140);
      return 1701603700;
    case 0x11u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v39);
      v33 = 0x7A6565757173;
      return v33 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x12u:
    case 0x25u:
    case 0x38u:
    case 0x3Eu:
    case 0x3Fu:
    case 0x5Cu:
    case 0x5Du:
    case 0x70u:
      OUTLINED_FUNCTION_28_1();
      OUTLINED_FUNCTION_26_1();
      goto LABEL_139;
    case 0x13u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v44);
      return 0x6E657474616C66;
    case 0x14u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v48);
      OUTLINED_FUNCTION_29_1();
      return v33 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x15u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v125);
      OUTLINED_FUNCTION_29_1();
      return v33 & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
    case 0x16u:
    case 0x39u:
    case 0x3Au:
    case 0x3Cu:
    case 0x40u:
    case 0x45u:
    case 0x77u:
    case 0x83u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v142);
      return 0xD000000000000015;
    case 0x17u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v139);
      v33 = 0x74756D726570;
      return v33 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x18u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v144);
      OUTLINED_FUNCTION_35_1();
      return 0x736F70736E617274;
    case 0x19u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v41);
      return 0x73616364616F7262;
    case 0x1Au:
    case 0x4Au:
    case 0x73u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v109);
      OUTLINED_FUNCTION_34_1();
      return v110 | 1;
    case 0x1Bu:
    case 0x49u:
    case 0x62u:
    case 0x71u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v111);
      OUTLINED_FUNCTION_34_1();
      return v112 | 2;
    case 0x1Cu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v90);
      return 0x546E657474616C66;
    case 0x1Du:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v118);
      OUTLINED_FUNCTION_29_1();
      return 0x4C65616853746567;
    case 0x1Eu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v93);
      OUTLINED_FUNCTION_29_1();
      return 0x4465616853746567;
    case 0x1Fu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v117);
      return 0x6B63617473;
    case 0x20u:
    case 0x21u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v35);
      return 0x726568746167;
    case 0x22u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v40);
      return 0x6C41726568746167;
    case 0x23u:
    case 0x24u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v36);
      return 0x72657474616373;
    case 0x26u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v104);
      OUTLINED_FUNCTION_39_1();
      return v33 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x27u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v114);
      OUTLINED_FUNCTION_39_1();
      return v33 | 0x6174536500000000;
    case 0x28u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v80);
      OUTLINED_FUNCTION_39_1();
      return v33 | 0x6E79446500000000;
    case 0x29u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v119);
      OUTLINED_FUNCTION_39_1();
      return 0x5379426553746567;
    case 0x2Au:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v103);
      return 0x57676E6964696C73;
    case 0x2Bu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v58);
      return 0x6F725072656E6E69;
    case 0x2Cu:
      OUTLINED_FUNCTION_12_2();
      sub_2574977F4(v30, v23, v65);
      sub_25749773C(v23, v20, type metadata accessor for NeuralNetwork.Layer.Activation);
      v33 = 0x7261656E696CLL;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v33 = 1970038130;
          break;
        case 2u:
          OUTLINED_FUNCTION_35_1();
          v33 = 0x6C6552796B61656CLL;
          break;
        case 3u:
          v33 = 0x6C6F687365726874;
          break;
        case 4u:
          OUTLINED_FUNCTION_26_1();
          OUTLINED_FUNCTION_34_1();
          v33 = v145 | 1;
          break;
        case 5u:
          v33 = 1752064372;
          break;
        case 6u:
          OUTLINED_FUNCTION_37_1();
          v33 = 0x615464656C616373;
          break;
        case 7u:
          v33 = 0x64696F6D676973;
          break;
        case 8u:
          v33 = 0x4864696F6D676973;
          break;
        case 9u:
          v33 = 7695461;
          break;
        case 0xAu:
          v33 = 0x6E67697374666F73;
          break;
        case 0xBu:
          v33 = 0x73756C7074666F73;
          break;
        case 0xCu:
          OUTLINED_FUNCTION_26_1();
          OUTLINED_FUNCTION_34_1();
          v33 = v146 | 2;
          break;
        default:
          break;
      }

      sub_25749779C(v23, type metadata accessor for NeuralNetwork.Layer.Activation);
      v137 = v20;
      v136 = type metadata accessor for NeuralNetwork.Layer.Activation;
      goto LABEL_140;
    case 0x2Du:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v105);
      return 0x7972616E75;
    case 0x2Eu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v122);
      return 1885957219;
    case 0x2Fu:
      v33 = 1970038119;
      goto LABEL_42;
    case 0x30u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v45);
      return 0x526465706D616C63;
    case 0x31u:
    case 0x32u:
      v33 = 0x74756C6F766E6F63;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v62);
      return v33;
    case 0x33u:
      OUTLINED_FUNCTION_40_1();
      OUTLINED_FUNCTION_10_1();
      sub_2574977F4(v30, v13, v49);
      if (*(v13 + 8) == 1 && *v13)
      {
        if (*v13 == 1)
        {
          v33 = 0x5065676172657661;
        }

        else
        {
          v33 = 0x6E696C6F6F50316CLL;
        }
      }

      v136 = type metadata accessor for NeuralNetwork.Layer.PoolParameters;
      v137 = v13;
      goto LABEL_140;
    case 0x34u:
      OUTLINED_FUNCTION_9_1();
      sub_2574977F4(v30, v6, v53);
      if (*(v6 + 8) == 1)
      {
        if (*v6)
        {
          OUTLINED_FUNCTION_28_1();
          OUTLINED_FUNCTION_26_1();
        }

        else
        {
          OUTLINED_FUNCTION_40_1();
        }
      }

      else
      {
        v33 = 0x44336C6F6F70;
      }

      v136 = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters;
      v137 = v6;
      goto LABEL_140;
    case 0x35u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v132);
      return 0x6F506C61626F6C67;
    case 0x36u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v135);
      return 6579297;
    case 0x37u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v57);
      return 0x796C7069746C756DLL;
    case 0x3Bu:
    case 0x72u:
    case 0x74u:
    case 0x76u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v106);
      OUTLINED_FUNCTION_34_1();
      return v107 | 3;
    case 0x3Du:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v52);
      return 0x75646F7250746F64;
    case 0x41u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v94);
      v33 = 1818321779;
      return v33 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x42u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v46);
      v47 = 0x4E6863746162;
      return v47 & 0xFFFFFFFFFFFFLL | 0x726F000000000000;
    case 0x43u:
    case 0x44u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v38);
      return 0x78616D74666F73;
    case 0x46u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v129);
      return 0x6C616D726F4E326CLL;
    case 0x47u:
    case 0x78u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v101);
      OUTLINED_FUNCTION_34_1();
      return v102 | 6;
    case 0x48u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v100);
      v47 = 0x4E726579616CLL;
      return v47 & 0xFFFFFFFFFFFFLL | 0x726F000000000000;
    case 0x4Bu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v82);
      return 0x6552656C706D6973;
    case 0x4Cu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v83);
      return 7696999;
    case 0x4Du:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v60);
      return 1886351971;
    case 0x4Eu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v50);
      return 0x6942657A69736572;
    case 0x4Fu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v134);
      OUTLINED_FUNCTION_37_1();
      return 0x69736552706F7263;
    case 0x50u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v54);
      v33 = 0x676172657661;
      return v33 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x51u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v95);
      OUTLINED_FUNCTION_11_1();
      return v33;
    case 0x52u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v67);
      OUTLINED_FUNCTION_11_1();
      return 0x314C616853746567;
    case 0x53u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v130);
      OUTLINED_FUNCTION_11_1();
      return 0x324C616853746567;
    case 0x54u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v128);
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_11_1();
      return 0x614D616853746567;
    case 0x55u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v121);
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_11_1();
      return 0x694D616853746567;
    case 0x56u:
      OUTLINED_FUNCTION_11_1();
      v33 = 0x7553616853746567;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v61);
      OUTLINED_FUNCTION_35_1();
      return v33;
    case 0x57u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v51);
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_11_1();
      return 0x7250616853746567;
    case 0x58u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v72);
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_11_1();
      return 0x654D616853746567;
    case 0x59u:
    case 0x5Bu:
      OUTLINED_FUNCTION_11_1();
      v33 = 0x6F4C616853746567;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v59);
      return v33;
    case 0x5Au:
      OUTLINED_FUNCTION_11_1();
      v33 = 0x7553616853746567;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v77);
      return v33;
    case 0x5Eu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v91);
      return 0x6974616C756D7563;
    case 0x5Fu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v97);
      return 0x6E694D677261;
    case 0x60u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v96);
      return 0x78614D677261;
    case 0x61u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v87);
      return 0x6E6F4E6572656877;
    case 0x63u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v81);
      return 0x68636E617262;
    case 0x64u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v108);
      return 2037411683;
    case 0x65u:
      v33 = 1886351212;
LABEL_42:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v66);
      return v33;
    case 0x66u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v123);
      OUTLINED_FUNCTION_35_1();
      return 0x61657242706F6F6CLL;
    case 0x67u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v120);
      return 0x746E6F43706F6F6CLL;
    case 0x68u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v63);
      LODWORD(v33) = 1735287154;
      return v33 | 0x6174536500000000;
    case 0x69u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v126);
      LODWORD(v33) = 1735287154;
      return v33 | 0x6E79446500000000;
    case 0x6Au:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v131);
      return 0x6C61757165;
    case 0x6Bu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v56);
      return 0x6C61757145746F6ELL;
    case 0x6Cu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v84);
      return 0x6E6168547373656CLL;
    case 0x6Du:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v79);
      OUTLINED_FUNCTION_35_1();
      return 0x617571457373656CLL;
    case 0x6Eu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v64);
      return 0x5472657461657267;
    case 0x6Fu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v127);
      return 0x4572657461657267;
    case 0x75u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v85);
      OUTLINED_FUNCTION_34_1();
      return v86 | 4;
    case 0x79u:
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v70);
      OUTLINED_FUNCTION_34_1();
      return v71 | 7;
    case 0x7Au:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v68);
      return 0x614278697274616DLL;
    case 0x7Bu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v74);
      v75 = 1702326124;
      return v75 | 0x6972547200000000;
    case 0x7Cu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v78);
      v75 = 1701867637;
      return v75 | 0x6972547200000000;
    case 0x7Du:
      v33 = 0x6E69646465626D65;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v99);
      return v33;
    case 0x7Eu:
      v33 = 0x6E69646465626D65;
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v92);
      return v33;
    case 0x7Fu:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v98);
      return 1935763810;
    case 0x80u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v116);
      return 0x746F48656E6FLL;
    case 0x81u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v115);
      return 1265659764;
    case 0x82u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v73);
      return 0x74726F53677261;
    case 0x84u:
      OUTLINED_FUNCTION_1_2();
      sub_25749779C(v30, v89);
      return 0x6D6F74737563;
    case 0x85u:
      return v33;
    case 0x86u:
      return 1818846563;
    case 0x87u:
      return 0x726F6F6C66;
    case 0x88u:
      return 1852270963;
    case 0x89u:
      return 0x646E756F72;
    case 0x8Au:
      return 846231653;
    case 0x8Bu:
      return 7235955;
    case 0x8Cu:
      return 7565155;
    case 0x8Du:
      return 7233908;
    case 0x8Eu:
      return 1852404577;
    case 0x8Fu:
      return 1936679777;
    case 0x90u:
      return 1851880545;
    case 0x91u:
      return 1752066419;
    case 0x92u:
      return 1752395619;
    case 0x93u:
      return 1752064372;
    case 0x94u:
      v88 = 1852404577;
      goto LABEL_93;
    case 0x95u:
      v88 = 1936679777;
      goto LABEL_93;
    case 0x96u:
      v88 = 1851880545;
LABEL_93:
      v33 = v88 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 0x97u:
      v33 = 6713957;
      break;
    case 0x98u:
      v33 = 7889261;
      break;
    case 0x99u:
      v33 = 7235949;
      break;
    case 0x9Au:
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_27_1();
      v33 = 0x416C616853746567;
      break;
    case 0x9Bu:
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_27_1();
      v33 = 0x4F6C616853746567;
      break;
    case 0x9Cu:
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_27_1();
      v33 = 0x586C616853746567;
      break;
    case 0x9Du:
      OUTLINED_FUNCTION_27_1();
      v33 = 0x4E6C616853746567;
      break;
    default:
      OUTLINED_FUNCTION_41_1();
LABEL_139:
      OUTLINED_FUNCTION_1_2();
      v137 = v30;
LABEL_140:
      sub_25749779C(v137, v136);
      break;
  }

  return v33;
}

uint64_t sub_257496C8C()
{
  result = type metadata accessor for NeuralNetwork.Layer.ConstantParameters(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.Layer.ConstantNDParameters(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NeuralNetwork.Layer.PadParameters(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NeuralNetwork.Layer.ConstantPadParameters();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for NeuralNetwork.Layer.ConcatenateNDParameters();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for NeuralNetwork.Layer.SplitParameters(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for NeuralNetwork.Layer.UpsampleParameters();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for NeuralNetwork.Layer.FillLikeParameters(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for NeuralNetwork.Layer.FillStaticParameters(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for NeuralNetwork.Layer.FillDynamicParameters(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for NeuralNetwork.Layer.SequenceRepeatParameters(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for NeuralNetwork.Layer.ReverseSequenceParameters(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for NeuralNetwork.Layer.ReverseParameters(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for NeuralNetwork.Layer.ReorganizeDataParameters(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for NeuralNetwork.Layer.TileParameters(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters();
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters();
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for NeuralNetwork.Layer.FlattenParameters();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters();
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for NeuralNetwork.Layer.ReshapeStaticParameters();
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters();
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for NeuralNetwork.Layer.PermuteParameters();
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for NeuralNetwork.Layer.TransposeParameters();
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for NeuralNetwork.Layer.BroadcastToLikeParameters(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for NeuralNetwork.Layer.BroadcastToStaticParameters(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for NeuralNetwork.Layer.BroadcastToDynamicParameters(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for NeuralNetwork.Layer.FlattenTo2DParameters(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for NeuralNetwork.Layer.ReshapeLikeParameters(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for NeuralNetwork.Layer.ReshapeDynamicParameters(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for NeuralNetwork.Layer.StackParameters();
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for NeuralNetwork.Layer.GatherParameters(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for NeuralNetwork.Layer.GatherNDParameters(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for NeuralNetwork.Layer.GatherAlongAxisParameters(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for NeuralNetwork.Layer.ScatterParameters(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for NeuralNetwork.Layer.ScatterAlongAxisParameters(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for NeuralNetwork.Layer.SliceParameters(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for NeuralNetwork.Layer.SliceStaticParameters(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for NeuralNetwork.Layer.SliceDynamicParameters(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for NeuralNetwork.Layer.SliceBySizeParameters(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for NeuralNetwork.Layer.SlidingWindowsParameters(319);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters();
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for NeuralNetwork.Layer.Activation(319);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for NeuralNetwork.Layer.UnaryFunctionParameters();
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for NeuralNetwork.Layer.ClipParameters();
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for NeuralNetwork.Layer.GELUParameters();
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.ClampedReluParameters(319);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(319);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.Convolution3DParameters(319);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.PoolParameters(319);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.Pool3DParameters(319);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.GlobalPool3DParameters(319);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.AddParameters(319);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters();
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters(319);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.BroadcastableSubtractParameters();
                                                                                                                    if (v58 <= 0x3F)
                                                                                                                    {
                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.BroadcastableMultiplyParameters();
                                                                                                                      if (v59 <= 0x3F)
                                                                                                                      {
                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.BroadcastableDivideParameters(319);
                                                                                                                        if (v60 <= 0x3F)
                                                                                                                        {
                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters();
                                                                                                                          if (v61 <= 0x3F)
                                                                                                                          {
                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.DotProductParameters();
                                                                                                                            if (v62 <= 0x3F)
                                                                                                                            {
                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.BroadcastableModParameters(319);
                                                                                                                              if (v63 <= 0x3F)
                                                                                                                              {
                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.BroadcastablePowParameters(319);
                                                                                                                                if (v64 <= 0x3F)
                                                                                                                                {
                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.BroadcastableFloorDivParameters(319);
                                                                                                                                  if (v65 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.ScaleParameters();
                                                                                                                                    if (v66 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters();
                                                                                                                                      if (v67 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters(319);
                                                                                                                                        if (v68 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters(319);
                                                                                                                                          if (v69 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters();
                                                                                                                                            if (v70 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.L2NormalizeParameters(319);
                                                                                                                                              if (v71 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.LRNParameters(319);
                                                                                                                                                if (v72 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.LayerNormalizeParameters(319);
                                                                                                                                                  if (v73 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters();
                                                                                                                                                    if (v74 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters();
                                                                                                                                                      if (v75 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters();
                                                                                                                                                        if (v76 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.GRUParameters();
                                                                                                                                                          if (v77 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.CropParameters(319);
                                                                                                                                                            if (v78 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.ResizeBilinearParameters(319);
                                                                                                                                                              if (v79 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.CropResizeParameters(319);
                                                                                                                                                                if (v80 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.AverageParameters(319);
                                                                                                                                                                  if (v81 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.ReduceParameters(319);
                                                                                                                                                                    if (v82 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.ReduceL1Parameters(319);
                                                                                                                                                                      if (v83 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.ReduceL2Parameters(319);
                                                                                                                                                                        if (v84 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.ReduceMaxParameters(319);
                                                                                                                                                                          if (v85 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.ReduceMinParameters(319);
                                                                                                                                                                            if (v86 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.ReduceSumParameters(319);
                                                                                                                                                                              if (v87 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.ReduceProdParameters(319);
                                                                                                                                                                                if (v88 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.ReduceMeanParameters(319);
                                                                                                                                                                                  if (v89 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumParameters(319);
                                                                                                                                                                                    if (v90 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.ReduceSumSquareParameters(319);
                                                                                                                                                                                      if (v91 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.ReduceLogSumExpParameters(319);
                                                                                                                                                                                        if (v92 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.MinBroadcastableParameters(319);
                                                                                                                                                                                          if (v93 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.MaxBroadcastableParameters(319);
                                                                                                                                                                                            if (v94 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.CumulativeSumParameters(319);
                                                                                                                                                                                              if (v95 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.ArgMinParameters(319);
                                                                                                                                                                                                if (v96 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.ArgMaxParameters(319);
                                                                                                                                                                                                  if (v97 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.WhereNonZeroParameters(319);
                                                                                                                                                                                                    if (v98 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.WhereBroadcastableParameters(319);
                                                                                                                                                                                                      if (v99 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.BranchParameters();
                                                                                                                                                                                                        if (v100 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.CopyParameters(319);
                                                                                                                                                                                                          if (v101 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.LoopParameters(319);
                                                                                                                                                                                                            if (v102 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.LoopBreakParameters(319);
                                                                                                                                                                                                              if (v103 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.LoopContinueParameters(319);
                                                                                                                                                                                                                if (v104 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.RangeStaticParameters(319);
                                                                                                                                                                                                                  if (v105 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.RangeDynamicParameters(319);
                                                                                                                                                                                                                    if (v106 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.EqualParameters(319);
                                                                                                                                                                                                                      if (v107 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.NotEqualParameters(319);
                                                                                                                                                                                                                        if (v108 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.LessThanParameters(319);
                                                                                                                                                                                                                          if (v109 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.LessEqualParameters(319);
                                                                                                                                                                                                                            if (v110 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.GreaterThanParameters(319);
                                                                                                                                                                                                                              if (v111 <= 0x3F)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.GreaterEqualParameters(319);
                                                                                                                                                                                                                                if (v112 <= 0x3F)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.RandomNormalLikeParameters(319);
                                                                                                                                                                                                                                  if (v113 <= 0x3F)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.RandomNormalStaticParameters(319);
                                                                                                                                                                                                                                    if (v114 <= 0x3F)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.RandomNormalDynamicParameters(319);
                                                                                                                                                                                                                                      if (v115 <= 0x3F)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.RandomUniformLikeParameters(319);
                                                                                                                                                                                                                                        if (v116 <= 0x3F)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.RandomUniformStaticParameters(319);
                                                                                                                                                                                                                                          if (v117 <= 0x3F)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.RandomUniformDynamicParameters(319);
                                                                                                                                                                                                                                            if (v118 <= 0x3F)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliLikeParameters(319);
                                                                                                                                                                                                                                              if (v119 <= 0x3F)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliStaticParameters(319);
                                                                                                                                                                                                                                                if (v120 <= 0x3F)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.RandomBernoulliDynamicParameters(319);
                                                                                                                                                                                                                                                  if (v121 <= 0x3F)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.CategoricalDistributionParameters(319);
                                                                                                                                                                                                                                                    if (v122 <= 0x3F)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.MatrixBandPartParameters(319);
                                                                                                                                                                                                                                                      if (v123 <= 0x3F)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.LowerTriangularParameters(319);
                                                                                                                                                                                                                                                        if (v124 <= 0x3F)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.UpperTriangularParameters(319);
                                                                                                                                                                                                                                                          if (v125 <= 0x3F)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = type metadata accessor for NeuralNetwork.Layer.EmbeddingParameters(319);
                                                                                                                                                                                                                                                            if (v126 <= 0x3F)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = type metadata accessor for NeuralNetwork.Layer.EmbeddingNDParameters(319);
                                                                                                                                                                                                                                                              if (v127 <= 0x3F)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = type metadata accessor for NeuralNetwork.Layer.BiasParameters(319);
                                                                                                                                                                                                                                                                if (v128 <= 0x3F)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = type metadata accessor for NeuralNetwork.Layer.OneHotParameters(319);
                                                                                                                                                                                                                                                                  if (v129 <= 0x3F)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = type metadata accessor for NeuralNetwork.Layer.TopKParameters(319);
                                                                                                                                                                                                                                                                    if (v130 <= 0x3F)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = type metadata accessor for NeuralNetwork.Layer.ArgSortParameters(319);
                                                                                                                                                                                                                                                                      if (v131 <= 0x3F)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = type metadata accessor for NeuralNetwork.Layer.NonMaximumSuppressionParameters(319);
                                                                                                                                                                                                                                                                        if (v132 <= 0x3F)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = type metadata accessor for NeuralNetwork.Layer.CustomParameters(319);
                                                                                                                                                                                                                                                                          if (v133 <= 0x3F)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                                                                                                                                                                                                            return 0;
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
      }
    }
  }

  return result;
}

uint64_t sub_25749773C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25749779C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574977F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_25749779C(v0, type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer);
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v4 = *(v2 - 104);

  return sub_2574977F4(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_17_1()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  v3 = v0 + *(v1 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 104);

  return sub_2574977F4(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_31_1@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2574977F4(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_32_2@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_25749773C(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_33_0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2574977F4(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_36_0()
{
  v2 = *(v0 - 104);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_257497ABC()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v128 = v7 - v6;
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v127 = v14 - v13;
  v15 = OUTLINED_FUNCTION_153();
  v136 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v15);
  v16 = OUTLINED_FUNCTION_4(v136);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  v126 = v19;
  MEMORY[0x28223BE20](v20);
  v125 = &v121 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  v23 = OUTLINED_FUNCTION_13(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v135 = &v121 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E0, &qword_257773BE0);
  v28 = OUTLINED_FUNCTION_13(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_21_1();
  v31 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  v132 = v35;
  MEMORY[0x28223BE20](v36);
  v138 = &v121 - v37;
  v38 = OUTLINED_FUNCTION_153();
  v39 = type metadata accessor for NeuralNetwork.Preprocessor(v38);
  v40 = OUTLINED_FUNCTION_24(v39);
  v122 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v137 = (v45 - v44);
  OUTLINED_FUNCTION_153();
  v46 = type metadata accessor for NeuralNetwork.Layer();
  v47 = OUTLINED_FUNCTION_24(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  v130 = v53 - v52;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  v55 = OUTLINED_FUNCTION_28_2(inited, 24908);
  v56 = *(v55 + 16);
  v57 = MEMORY[0x277D84F90];
  v133 = v31;
  v134 = v1;
  v123 = inited;
  v124 = v0;
  if (v56)
  {
    v139 = MEMORY[0x277D84F90];
    sub_257484040(0, v56, 0);
    v58 = v139;
    v59 = *(v49 + 80);
    OUTLINED_FUNCTION_193();
    v121 = v55;
    v61 = v55 + v60;
    *&v129 = *(v49 + 72);
    do
    {
      v62 = OUTLINED_FUNCTION_2_3();
      v63 = v130;
      sub_2574999D0(v62, v130);
      sub_2576EDD44();
      v65 = v64;
      v67 = v66;
      v69 = v68;
      OUTLINED_FUNCTION_3_2();
      sub_257499A2C(v63, v70);
      v139 = v58;
      v72 = *(v58 + 16);
      v71 = *(v58 + 24);
      if (v72 >= v71 >> 1)
      {
        OUTLINED_FUNCTION_174(v71);
        OUTLINED_FUNCTION_310();
        sub_257484040(v74, v75, v76);
        v58 = v139;
      }

      *(v58 + 16) = v72 + 1;
      v73 = v58 + 24 * v72;
      *(v73 + 32) = v65;
      *(v73 + 40) = v67;
      *(v73 + 48) = v69;
      v61 += v129;
      --v56;
    }

    while (v56);

    inited = v123;
    v0 = v124;
    v31 = v133;
    v1 = v134;
    v57 = MEMORY[0x277D84F90];
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v58;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  strcpy((inited + 72), "Preprocessors");
  *(inited + 86) = -4864;
  v77 = NeuralNetwork.preprocessors.getter();
  v78 = *(v77 + 16);
  if (v78)
  {
    v141 = v57;
    sub_257484040(0, v78, 0);
    v79 = v141;
    v80 = *(v122 + 80);
    OUTLINED_FUNCTION_193();
    v121 = v77;
    v82 = v77 + v81;
    v130 = *(v83 + 72);
    v129 = xmmword_257743FF0;
    do
    {
      v84 = v137;
      sub_2574999D0(v82, v137);
      v85 = swift_initStackObject();
      *(v85 + 16) = v129;
      strcpy((v85 + 32), "Feature Name");
      *(v85 + 45) = 0;
      *(v85 + 46) = -5120;
      v86 = *v84;
      v87 = v84[1];
      v139 = 34;
      v140 = 0xE100000000000000;
      MEMORY[0x259C64E90](v86, v87);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      v88 = v140;
      *(v85 + 48) = v139;
      *(v85 + 56) = v88;
      *(v85 + 64) = 0;
      *(v85 + 72) = 1684957515;
      *(v85 + 80) = 0xE400000000000000;
      v89 = v84 + *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
      v90 = v135;
      sub_2574998F8(v89, v135);
      v91 = 1;
      if (__swift_getEnumTagSinglePayload(v90, 1, v136) != 1)
      {
        v92 = v125;
        sub_257499A84(v135, v125);
        v93 = v126;
        sub_2574999D0(v92, v126);
        swift_getEnumCaseMultiPayload();
        sub_257499A84(v93, v1);
        swift_storeEnumTagMultiPayload();
        sub_257499A2C(v92, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
        v91 = 0;
      }

      __swift_storeEnumTagSinglePayload(v1, v91, 1, v31);
      if (__swift_getEnumTagSinglePayload(v1, 1, v31) == 1)
      {
        v94 = v138;
        *(v138 + 8) = 0;
        v94[1] = 0;
        v95 = v94 + *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        *v94 = 1065353216;
        v94[4] = 0;
        swift_storeEnumTagMultiPayload();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v31);
        v97 = v132;
        if (EnumTagSinglePayload != 1)
        {
          sub_257499968(v1);
        }
      }

      else
      {
        v94 = v138;
        sub_257499A84(v1, v138);
        v97 = v132;
      }

      sub_2574999D0(v94, v97);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v98 = v128;
        sub_257499A84(v97, v128);
        v99 = sub_25749CDBC();
        v101 = v100;
        v103 = v102;
        v104 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration;
      }

      else
      {
        v98 = v127;
        sub_257499A84(v97, v127);
        v99 = sub_25749CC5C();
        v101 = v105;
        v103 = v106;
        v104 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration;
      }

      sub_257499A2C(v98, v104);
      sub_257499A2C(v138, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
      *(v85 + 88) = v99;
      *(v85 + 96) = v101;
      *(v85 + 104) = v103;
      v107 = sub_2576A6964(v85);
      v109 = v108;
      OUTLINED_FUNCTION_6_1();
      sub_257499A2C(v137, v110);
      v141 = v79;
      v112 = *(v79 + 16);
      v111 = *(v79 + 24);
      if (v112 >= v111 >> 1)
      {
        OUTLINED_FUNCTION_174(v111);
        OUTLINED_FUNCTION_310();
        sub_257484040(v114, v115, v116);
        v79 = v141;
      }

      *(v79 + 16) = v112 + 1;
      v113 = v79 + 24 * v112;
      *(v113 + 32) = v107;
      *(v113 + 40) = v109;
      *(v113 + 48) = 2;
      v82 += v130;
      --v78;
      v31 = v133;
      v1 = v134;
    }

    while (v78);

    inited = v123;
    v0 = v124;
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
  }

  *(inited + 88) = v79;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 0xD000000000000019;
  *(inited + 120) = 0x800000025777A070;
  if (*(v0 + 24) == 1)
  {
    v117 = vdup_n_s32(*(v0 + 16) == 0);
    v118.i64[0] = v117.u32[0];
    v118.i64[1] = v117.u32[1];
    v119 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v118, 0x3FuLL)), xmmword_257744E80, xmmword_257744E90);
  }

  else
  {
    v119 = xmmword_257744E80;
  }

  *(inited + 128) = v119;
  *(inited + 144) = 0;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x800000025777A090;
  v120 = 0x35206B6E6152;
  if (*(v0 + 40))
  {
    v120 = 0x34206B6E6152;
  }

  *(inited + 168) = v120;
  *(inited + 176) = 0xE600000000000000;
  *(inited + 184) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.layers.getter()
{
  v3 = type metadata accessor for NeuralNetwork.Layer();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *v0;
  v13 = *(*v0 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_2574841E8();
    v14 = v25;
    v15 = type metadata accessor for Proto_NeuralNetworkLayer(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_5_1();
      sub_2574999D0(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        OUTLINED_FUNCTION_310();
        sub_2574841E8();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_257499A84(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_257498560(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.layers.setter();
}

void NeuralNetwork.layers.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Layer();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_NeuralNetworkLayer(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v18 = *(v4 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574843E0();
    v19 = v32;
    v20 = *(v8 + 80);
    OUTLINED_FUNCTION_193();
    v22 = v4 + v21;
    v23 = *(v8 + 72);
    do
    {
      v24 = OUTLINED_FUNCTION_2_3();
      sub_2574999D0(v24, v1);
      OUTLINED_FUNCTION_5_1();
      sub_2574999D0(v1, v2);
      OUTLINED_FUNCTION_3_2();
      sub_257499A2C(v1, v25);
      OUTLINED_FUNCTION_27_2();
      if (v27)
      {
        OUTLINED_FUNCTION_13_1(v26);
        sub_2574843E0();
        v19 = v32;
      }

      *(v19 + 16) = v8;
      v28 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      v29 = *(v15 + 72);
      OUTLINED_FUNCTION_11_2();
      sub_257499A84(v2, v30);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v31 = *v0;

  *v0 = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.layers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.layers.getter();
  return sub_2574987A4;
}

uint64_t NeuralNetwork.preprocessors.getter()
{
  v3 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v0 + 8);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_257484240();
    v14 = v25;
    v15 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_4_1();
      sub_2574999D0(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        OUTLINED_FUNCTION_310();
        sub_257484240();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_257499A84(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_257498940(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.preprocessors.setter();
}

void NeuralNetwork.preprocessors.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v18 = *(v4 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484438();
    v19 = v31;
    v20 = *(v8 + 80);
    OUTLINED_FUNCTION_193();
    v22 = v4 + v21;
    v23 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_10_2();
      sub_2574999D0(v22, v1);
      OUTLINED_FUNCTION_4_1();
      sub_2574999D0(v1, v2);
      OUTLINED_FUNCTION_6_1();
      sub_257499A2C(v1, v24);
      OUTLINED_FUNCTION_27_2();
      if (v26)
      {
        OUTLINED_FUNCTION_13_1(v25);
        sub_257484438();
        v19 = v31;
      }

      *(v19 + 16) = v8;
      v27 = *(v15 + 80);
      OUTLINED_FUNCTION_193();
      v28 = *(v15 + 72);
      OUTLINED_FUNCTION_9_2();
      sub_257499A84(v2, v29);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 8);

  *(v0 + 8) = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.preprocessors.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.preprocessors.getter();
  return sub_257498B88;
}

uint64_t sub_257498BA0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void NeuralNetwork.arrayInputShapeMapping.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_18_2(a1);
}

unsigned __int8 *NeuralNetwork.arrayInputShapeMapping.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.arrayInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

uint64_t *sub_257498D04(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 8);
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.imageInputShapeMapping.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_257498D9C;
}

uint64_t *sub_257498D9C(uint64_t *result)
{
  v1 = *result;
  *(v1 + 32) = 1;
  *(v1 + 40) = 1;
  return result;
}

void NeuralNetwork.init(layers:preprocessors:)()
{
  OUTLINED_FUNCTION_31();
  v74 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for NeuralNetwork.Preprocessor(0);
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_78();
  v14 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v13);
  v15 = OUTLINED_FUNCTION_24(v14);
  v73 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  v19 = type metadata accessor for NeuralNetwork.Layer();
  v20 = OUTLINED_FUNCTION_24(v19);
  v72 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v27 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  v28 = OUTLINED_FUNCTION_24(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  v36 = type metadata accessor for Proto_NeuralNetwork(0);
  v37 = v6 + *(v36 + 32);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v38 = *(v36 + 36);
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  v40 = v6 + v38;
  v41 = v4;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, updated);
  v42 = *(v4 + 16);
  if (v42)
  {
    v69 = v10;
    v70 = v1;
    v71 = v6;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574843E0();
    v43 = v75;
    v44 = *(v72 + 80);
    OUTLINED_FUNCTION_193();
    v46 = v41 + v45;
    v48 = *(v47 + 72);
    do
    {
      v49 = OUTLINED_FUNCTION_2_3();
      sub_2574999D0(v49, v26);
      OUTLINED_FUNCTION_5_1();
      sub_2574999D0(v26, v35);
      OUTLINED_FUNCTION_3_2();
      sub_257499A2C(v26, v50);
      v75 = v43;
      v52 = *(v43 + 16);
      v51 = *(v43 + 24);
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v51);
        sub_2574843E0();
      }

      *(v43 + 16) = v52 + 1;
      v53 = *(v30 + 80);
      OUTLINED_FUNCTION_193();
      v54 = *(v30 + 72);
      OUTLINED_FUNCTION_11_2();
      sub_257499A84(v35, v55);
      v46 += v48;
      --v42;
    }

    while (v42);

    v1 = v70;
    v6 = v71;
    v10 = v69;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  *v6 = v43;
  v56 = *(v74 + 16);
  if (v56)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484438();
    v57 = v75;
    v58 = *(v10 + 80);
    OUTLINED_FUNCTION_193();
    v60 = v74 + v59;
    v61 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_10_2();
      sub_2574999D0(v60, v0);
      OUTLINED_FUNCTION_4_1();
      sub_2574999D0(v0, v1);
      OUTLINED_FUNCTION_6_1();
      sub_257499A2C(v0, v62);
      v63 = v1;
      v65 = *(v75 + 16);
      v64 = *(v75 + 24);
      if (v65 >= v64 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v64);
        sub_257484438();
      }

      *(v75 + 16) = v65 + 1;
      v66 = *(v73 + 80);
      OUTLINED_FUNCTION_193();
      v67 = *(v73 + 72);
      OUTLINED_FUNCTION_9_2();
      sub_257499A84(v63, v68);
      v60 += v61;
      --v56;
      v1 = v63;
    }

    while (v56);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  *(v6 + 8) = v57;
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v23 = sub_257743A84();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  v35 = type metadata accessor for NeuralNetwork();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  sub_2574999D0(v20, v40 - v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_257744E70;
  v42 = OUTLINED_FUNCTION_28_2(v41, 24940);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A098, &unk_257744EB0);
  *(v41 + 48) = v42;
  *(v41 + 72) = v43;
  strcpy((v41 + 80), "preprocessors");
  *(v41 + 94) = -4864;
  v44 = NeuralNetwork.preprocessors.getter();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0A0, &qword_257770100);
  *(v41 + 96) = v44;
  *(v41 + 120) = v45;
  *(v41 + 128) = 0xD000000000000016;
  *(v41 + 136) = 0x800000025777A030;
  *(v41 + 168) = &type metadata for NeuralNetwork.ArrayShapeMapping;
  v46 = *(v20 + 24) == 1 && *(v20 + 16) != 0;
  *(v41 + 144) = v46;
  *(v41 + 176) = 0xD000000000000016;
  *(v41 + 184) = 0x800000025777A050;
  *(v41 + 216) = &type metadata for NeuralNetwork.ImageShapeMapping;
  *(v41 + 192) = *(v20 + 40);
  v47 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v47);
  (*(v24 + 104))(v28, *MEMORY[0x277D84C38], v23);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for NeuralNetwork()
{
  result = qword_281537F88;
  if (!qword_281537F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_257499524()
{
  result = qword_27F87A0A8;
  if (!qword_27F87A0A8)
  {
    type metadata accessor for Proto_NeuralNetwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A0A8);
  }

  return result;
}

unint64_t sub_2574995B0()
{
  result = qword_27F87A0C0;
  if (!qword_27F87A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A0C0);
  }

  return result;
}

uint64_t sub_257499634(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25749968C()
{
  result = qword_27F87A0D8;
  if (!qword_27F87A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A0D8);
  }

  return result;
}

uint64_t sub_257499708()
{
  result = type metadata accessor for Proto_NeuralNetwork(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s18UpsampleParametersV13InterpolationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25749981C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2574998F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257499968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E0, &qword_257773BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2574999D0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257499A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257499A84(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

void OUTLINED_FUNCTION_24_2()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_27_2()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_28_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x737265790000;
  *(a1 + 40) = 0xE600000000000000;

  return NeuralNetwork.layers.getter();
}

uint64_t Package.ModelMetadata.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_205();
}

uint64_t Package.ModelMetadata.description.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Package.ModelMetadata.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_205();
}

uint64_t Package.ModelMetadata.version.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Package.ModelMetadata.author.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_205();
}

uint64_t Package.ModelMetadata.author.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Package.ModelMetadata.license.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_205();
}

uint64_t Package.ModelMetadata.license.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Package.ModelMetadata.creatorDefined.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Package.ModelMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  result = sub_2577435D4();
  a1[8] = result;
  return result;
}

uint64_t sub_257499F04()
{
  v0 = sub_257743914();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_257499F50(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25749A010@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_257499F04();
  *a2 = result;
  return result;
}

unint64_t sub_25749A040@<X0>(unint64_t *a1@<X8>)
{
  result = sub_257499F50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25749A074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257499F04();
  *a1 = result;
  return result;
}

uint64_t sub_25749A0B4(uint64_t a1)
{
  v2 = sub_25749A4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25749A0F0(uint64_t a1)
{
  v2 = sub_25749A4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void static Package.ModelMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v18 = a1[7];
  v19 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v16 = a2[8];
  v17 = a1[8];
  if (v12 || (sub_257743994() & 1) != 0)
  {
    v13 = v2 == v6 && v3 == v7;
    if (v13 || (sub_257743994() & 1) != 0)
    {
      v14 = v4 == v8 && v5 == v9;
      if (v14 || (sub_257743994() & 1) != 0)
      {
        v15 = v19 == v10 && v18 == v11;
        if (v15 || (sub_257743994() & 1) != 0)
        {

          sub_2574769AC(v17, v16);
        }
      }
    }
  }
}

uint64_t Package.ModelMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E8, &qword_257745160);
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v23 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v23[5] = v1[3];
  v23[6] = v14;
  v15 = v1[4];
  v23[3] = v1[5];
  v23[4] = v15;
  v16 = v1[6];
  v23[1] = v1[7];
  v23[2] = v16;
  v23[0] = v1[8];
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v17);
  sub_25749A4E4();
  sub_257743AC4();
  v28 = 0;
  OUTLINED_FUNCTION_3_3();
  if (!v2)
  {
    v27 = 1;
    OUTLINED_FUNCTION_3_3();
    v26 = 2;
    OUTLINED_FUNCTION_3_3();
    v25 = 3;
    OUTLINED_FUNCTION_3_3();
    v23[7] = v23[0];
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C00, &unk_2577443A0);
    sub_25749ACC8(&qword_27F87A0F8);
    sub_257743954();
  }

  return (*(v7 + 8))(v11, v21);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25749A4E4()
{
  result = qword_27F87A0F0;
  if (!qword_27F87A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A0F0);
  }

  return result;
}

uint64_t Package.ModelMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_257743694();
  sub_257743694();
  sub_257743694();
  sub_257743694();
  v10 = OUTLINED_FUNCTION_205();

  return sub_25749AB1C(v10, v11);
}

uint64_t Package.ModelMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_257743A14();
  sub_257743694();
  sub_257743694();
  sub_257743694();
  sub_257743694();
  sub_25749AB1C(v11, v9);
  return sub_257743A64();
}

uint64_t Package.ModelMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A100, &qword_257745168);
  v6 = OUTLINED_FUNCTION_63(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25749A4E4();
  sub_257743AB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28[0]) = 0;
  v10 = sub_257743924();
  v26 = v11;
  OUTLINED_FUNCTION_1_3(1);
  v12 = sub_257743924();
  v25 = v13;
  v22 = v12;
  OUTLINED_FUNCTION_1_3(2);
  v21 = sub_257743924();
  v24 = v14;
  OUTLINED_FUNCTION_1_3(3);
  v20 = sub_257743924();
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C00, &unk_2577443A0);
  v29 = 4;
  sub_25749ACC8(&qword_27F87A108);
  sub_257743934();
  v16 = OUTLINED_FUNCTION_0_3();
  v17(v16);
  v19 = v30;
  __src[0] = v10;
  __src[1] = v26;
  __src[2] = v22;
  __src[3] = v25;
  __src[4] = v21;
  __src[5] = v24;
  __src[6] = v20;
  __src[7] = v23;
  __src[8] = v30;
  memcpy(a2, __src, 0x48uLL);
  sub_25749AD34(__src, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = v10;
  v28[1] = v26;
  v28[2] = v22;
  v28[3] = v25;
  v28[4] = v21;
  v28[5] = v24;
  v28[6] = v20;
  v28[7] = v23;
  v28[8] = v19;
  return sub_25749AD6C(v28);
}

uint64_t sub_25749AA64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_257743A14();
  sub_257743694();
  sub_257743694();
  sub_257743694();
  sub_257743694();
  sub_25749AB1C(v11, v9);
  return sub_257743A64();
}

uint64_t sub_25749AB1C(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_257743694();

    sub_257743694();

    result = sub_257743A64();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x259C651F0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25749ACC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F879C00, &unk_2577443A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25749ADA0()
{
  result = qword_27F87A110;
  if (!qword_27F87A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A110);
  }

  return result;
}

uint64_t sub_25749ADFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25749AE3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13ModelMetadataV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13ModelMetadataV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25749B004()
{
  result = qword_27F87A118;
  if (!qword_27F87A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A118);
  }

  return result;
}

unint64_t sub_25749B05C()
{
  result = qword_27F87A120;
  if (!qword_27F87A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A120);
  }

  return result;
}

unint64_t sub_25749B0B4()
{
  result = qword_27F87A128;
  if (!qword_27F87A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A128);
  }

  return result;
}

void sub_25749B108(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  v8 = a2 + 64;
  v7 = *(a2 + 64);
  v9 = *(a2 + 32);
  OUTLINED_FUNCTION_2_4();
  v11 = v10 >> 6;
  if (v2)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_5_2();
      v15 = (v13 << 9) | (8 * v14);
      v16 = *(*(a2 + 48) + v15);
      v17 = *(*(a2 + 56) + v15);
      memcpy(__dst, a1, sizeof(__dst));
      MEMORY[0x259C651F0](v16);
      OUTLINED_FUNCTION_8_2();
      v5 ^= sub_257743A64();
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      MEMORY[0x259C651F0](0);
      return;
    }

    ++v6;
    if (*(v8 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_25749B204(const void *a1, uint64_t a2)
{
  v6 = a2 + 64;
  v5 = *(a2 + 64);
  v7 = *(a2 + 32);
  OUTLINED_FUNCTION_2_4();
  v9 = v8 >> 6;

  v11 = 0;
  v12 = 0;
  if (v2)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_5_2();
      v16 = v15 | (v14 << 6);
      v17 = (*(a2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(a2 + 56) + 8 * v16);
      memcpy(__dst, a1, sizeof(__dst));

      sub_257743694();

      OUTLINED_FUNCTION_8_2();
      v11 ^= sub_257743A64();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x259C651F0](0);
    }

    ++v12;
    if (*(v6 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_257743944();
}

void OUTLINED_FUNCTION_8_2()
{

  JUMPOUT(0x259C65220);
}

void NormalizerConfiguration.kind.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *NormalizerConfiguration.kind.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NormalizerConfiguration.kind.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

uint64_t *sub_25749B4B4(uint64_t *result)
{
  v1 = *result;
  *v1 = *(result + 8);
  *(v1 + 8) = 1;
  return result;
}

uint64_t NormalizerConfiguration.init(kind:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a2 + *(type metadata accessor for Proto_Normalizer() + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  *(a2 + 8) = 1;
  return result;
}

BOOL static NormalizerConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_Normalizer() + 20);
  sub_2577431B4();
  sub_25749B978(&qword_27F879B68, MEMORY[0x277D216C8]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NormalizerConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NormalizerConfiguration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_25749B8CC(v0, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 1684957547;
  *(v13 + 40) = 0xE400000000000000;
  *(v13 + 72) = &type metadata for NormalizerConfiguration.Kind;
  NormalizerConfiguration.kind.getter((v13 + 48));
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

MLModelSpecification::NormalizerConfiguration::Kind_optional __swiftcall NormalizerConfiguration.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25749B840@<X0>(uint64_t *a1@<X8>)
{
  result = NormalizerConfiguration.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NormalizerConfiguration()
{
  result = qword_281537AA0;
  if (!qword_281537AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25749B8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NormalizerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25749B978(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25749B9C4()
{
  result = qword_27F87A138;
  if (!qword_27F87A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A138);
  }

  return result;
}

uint64_t sub_25749BA40()
{
  result = type metadata accessor for Proto_Normalizer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NormalizerConfiguration.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NormalizerConfiguration.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}