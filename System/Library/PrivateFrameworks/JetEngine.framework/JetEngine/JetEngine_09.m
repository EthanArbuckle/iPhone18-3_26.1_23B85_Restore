uint64_t sub_1AB0E19EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0E1AA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0E1B68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0E1BB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0E1BF0()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0E1CEC()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0E1D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0E1D7C()
{
  v1 = type metadata accessor for JSIntentResult();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1AB45F244();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + *(v1 + 20);
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3 + *(v1 + 20));
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v6(v7 + *(v8 + 28), v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB0E1F00()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1AB0E1F6C()
{

  if (*(v0 + 56) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0E1FB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0E212C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0E2164()
{
  v1 = sub_1AB45F0A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AB0E2218()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E2250()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0E2290()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0E22C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0E2310()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0E2348()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1AB0E2398(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AB0E23B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E23E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0E2424@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 256);
  return result;
}

__n128 sub_1AB0E2494@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 264;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AB0E24F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 256);
  return result;
}

__n128 sub_1AB0E256C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 16) + 264;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AB0E25D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1AB0E2608()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1AB0E2640()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0E267C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E26BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0E26F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0E272C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0E276C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E28AC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t BrotliDecoderSetParameter(_DWORD *a1, int a2, int a3)
{
  if (*a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v4 = a1[193] & 0xFFFFFFDF | (32 * (a3 != 0));
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v4 = a1[193] & 0xFFFFFFEF | (16 * (a3 == 0));
  }

  a1[193] = v4;
  return 1;
}

void *BrotliDecoderCreateInstance(void *(*a1)(int a1, size_t size), void (*a2)(int a1, void *a2), uint64_t a3)
{
  v6 = (a1 | a2) != 0;
  if (a1 | a2)
  {
    result = 0;
    if (!a1 || !a2)
    {
      return result;
    }

    v8 = a1(a3, 5744);
  }

  else
  {
    v8 = malloc_type_malloc(0x1670uLL, 0x10F204064C86C75uLL);
  }

  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  if (BrotliDecoderStateInit(v8, a1, a2, a3))
  {
    return v9;
  }

  if (!v6)
  {
    free(v9);
    return 0;
  }

  result = 0;
  if (a1 && a2)
  {
    a2(a3, v9);
    return 0;
  }

  return result;
}

uint64_t BrotliDecoderDestroyInstance(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = *(result + 56);
    v2 = *(result + 64);
    BrotliDecoderStateCleanup(result);

    return v3(v2, v1);
  }

  return result;
}

uint64_t BrotliDecoderAttachDictionary(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    return 0;
  }

  v6 = *(a1 + 800);
  v7 = *v6;
  result = BrotliSharedDictionaryAttach(v6, a2, a3, a4);
  if (result)
  {
    v8 = *(a1 + 800);
    if (v7 >= *v8)
    {
      return 1;
    }

    else
    {
      while (!*a1)
      {
        v9 = &v8[2 * v7];
        v10 = *(v9 + 16);
        v11 = *(v9 + 1);
        result = *(a1 + 808);
        if (result)
        {
          v12 = *result;
          if (*result == 15)
          {
            return 0;
          }

          v13 = *(result + 4);
        }

        else
        {
          result = (*(a1 + 48))(*(a1 + 64), 480);
          if (!result)
          {
            return result;
          }

          v13 = 0;
          v12 = 0;
          *result = 0;
          *(result + 16) = 0;
          *(result + 216) = -1;
          *(result + 152) = 0;
          *(a1 + 808) = result;
        }

        *(result + 8 * v12 + 24) = v10;
        v14 = v12 + 1;
        v15 = v13 + v11;
        *result = v14;
        *(result + 4) = v15;
        *(result + 4 * v14 + 152) = v15;
        ++v7;
        v8 = *(a1 + 800);
        if (v7 >= *v8)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t BrotliDecoderDecompress(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, 512);
  v11 = v1;
  v12 = 0;
  v9 = *v2;
  v10 = v4;
  v8 = v5;
  result = BrotliDecoderStateInit(v13, 0, 0, 0);
  if (result)
  {
    v7 = BrotliDecoderDecompressStream(v13, &v11, &v10, &v9, &v8, &v12);
    *v3 = v12;
    BrotliDecoderStateCleanup(v13);
    return v7 == 1;
  }

  return result;
}

uint64_t BrotliDecoderDecompressStream(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t *a4, void **a5, size_t *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v12 = *a2;
  if (a6)
  {
    *a6 = *(a1 + 432);
  }

  if ((*(a1 + 128) & 0x80000000) != 0)
  {
    return 0;
  }

  if (*a4)
  {
    if (!a5 || !*a5)
    {
      v13 = v12 - *a2;

      return SaveErrorCode(a1, 0xFFFFFFEC, v13);
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *(a1 + 80);
  v155 = v12;
  if (v15)
  {
    v16 = (a1 + 72);
    *(a1 + 24) = a1 + 72;
    v17 = (a1 + 72 + v15);
    HuffmanCode = 2;
  }

  else
  {
    v16 = *a3;
    v15 = *a2;
    *(a1 + 24) = *a3;
    v17 = &v16[v15];
    HuffmanCode = 1;
  }

  if ((v15 - 28) >= 0xFFFFFFFFFFFFFFE3)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17 - 27;
  }

  *(a1 + 32) = v19;
  *(a1 + 40) = v17;
  v20 = a1 + 72;
  v156 = (a1 + 784);
  v157 = (a1 + 312);
  v153 = a1 + 208;
  v154 = (a1 + 816);
  v151 = a1 + 232;
  v152 = a1 + 184;
  v21 = (a1 + 848);
  v149 = a1 + 1080;
  v150 = a1 + 280;
  v146 = a1 + 864;
LABEL_19:
  while (2)
  {
    while (HuffmanCode != 1)
    {
      if (HuffmanCode != 2)
      {
        v136 = v155;
        if (*(a1 + 80))
        {
          *(a1 + 80) = 0;
        }

        else
        {
          v140 = *(a1 + 16);
          if (v140 > 7)
          {
            v141 = (*(a1 + 24) - (v140 >> 3));
          }

          else
          {
            v141 = *(a1 + 24);
          }

          v142 = *(a1 + 16) & 7;
          v143 = *(a1 + 8) & ~(-1 << v142);
          *(a1 + 16) = v142;
          *(a1 + 24) = v141;
          *(a1 + 8) = v143;
          *a2 = *(a1 + 40) - v141;
          *a3 = v141;
        }

        goto LABEL_227;
      }

      if (*(a1 + 136))
      {
        v22 = WriteRingBuffer(a1, v8, v7, v6, 1);
        if ((v22 & 0x80000000) != 0)
        {
          HuffmanCode = v22;
LABEL_226:
          v136 = v155;
          goto LABEL_227;
        }
      }

      v23 = *(a1 + 80);
      v24 = *(a1 + 24);
      if (!v23)
      {
        *a3 = v24;
        v137 = *(a1 + 40) - v24;
        *a2 = v137;
        if (!v137)
        {
LABEL_224:
          HuffmanCode = 2;
          goto LABEL_226;
        }

        v138 = 0;
        v136 = v155;
        do
        {
          *(v20 + v138) = *v24;
          v138 = *(a1 + 80) + 1;
          *(a1 + 80) = v138;
          v24 = (*a3 + 1);
          *a3 = v24;
        }

        while ((*a2)-- != 1);
        HuffmanCode = 2;
LABEL_227:
        v144 = v136 - *a2;
        v145 = a1;
        return SaveErrorCode(v145, HuffmanCode, v144);
      }

      if (v24 == *(a1 + 40))
      {
        *(a1 + 80) = 0;
        v32 = *a3;
        v33 = *a2;
        *(a1 + 24) = *a3;
        *(a1 + 40) = v32 + v33;
        if ((v33 - 28) <= 0xFFFFFFFFFFFFFFE2)
        {
          v32 = v32 + v33 - 27;
        }

        *(a1 + 32) = v32;
        HuffmanCode = 1;
      }

      else
      {
        if (!*a2)
        {
          goto LABEL_224;
        }

        *(v20 + v23) = **a3;
        v25 = *(a1 + 80);
        *(a1 + 80) = v25 + 1;
        v26 = v20 + v25 + 1;
        *(a1 + 40) = v26;
        v27 = v26 - 27;
        if ((v25 - 27) >= 0xFFFFFFFFFFFFFFE3)
        {
          v28 = a1 + 72;
        }

        else
        {
          v28 = v27;
        }

        *(a1 + 24) = v20;
        *(a1 + 32) = v28;
        ++*a3;
        --*a2;
        HuffmanCode = 1;
      }
    }

    switch(*a1)
    {
      case 0:
        v40 = BrotliWarmupBitReader((a1 + 8));
        HuffmanCode = 2;
        if (!v40)
        {
          continue;
        }

        v41 = *(a1 + 772);
        *(a1 + 772) = v41 & 0xFFFFFFDF;
        v42 = *(a1 + 8);
        v43 = *(a1 + 16);
        *(a1 + 8) = v42 >> 1;
        *(a1 + 16) = v43 - 1;
        if (v42)
        {
          v127 = (v42 >> 1) & 7;
          *(a1 + 8) = v42 >> 4;
          *(a1 + 16) = v43 - 4;
          if (v127)
          {
            v41 = (v41 & 0xFFFFF01F | (v127 << 6)) + 1088;
          }

          else
          {
            v133 = (v42 >> 4) & 7;
            *(a1 + 8) = v42 >> 7;
            *(a1 + 16) = v43 - 7;
            if (v133)
            {
              if (v133 == 1)
              {
                HuffmanCode = -13;
                if ((v41 & 0x20) == 0)
                {
                  continue;
                }

                *(a1 + 8) = v42 >> 8;
                *(a1 + 16) = v43 - 8;
                if ((v42 & 0x80) != 0)
                {
                  continue;
                }
              }

              else
              {
                v41 = v41 & 0xFFFFF01F | (v133 << 6) | 0x200;
              }
            }

            else
            {
              v41 = v41 & 0xFFFFF01F | 0x440;
            }
          }
        }

        else
        {
          v41 = v41 & 0xFFFFF01F | 0x400;
        }

        *(a1 + 772) = v41;
        if ((v41 & 0x20) == 0)
        {
          v31 = 2;
          goto LABEL_201;
        }

        HuffmanCode = 1;
        *a1 = 1;
        continue;
      case 1:
        v44 = *(a1 + 16);
        if (v44 >= 6)
        {
          v46 = *(a1 + 8);
        }

        else
        {
          v45 = *(a1 + 24);
          HuffmanCode = 2;
          if (v45 == *(a1 + 40))
          {
            continue;
          }

          v46 = (*v45 << v44) | *(a1 + 8);
          v44 |= 8uLL;
          *(a1 + 24) = v45 + 1;
        }

        *(a1 + 8) = v46 >> 6;
        *(a1 + 16) = v44 - 6;
        v39 = *(a1 + 772) & 0xFFFFF03F | ((v46 & 0x3F) << 6);
        *(a1 + 772) = v39;
        HuffmanCode = -13;
        if ((v46 & 0x3F) - 31 < 0xFFFFFFEB)
        {
          continue;
        }

        *a1 = 2;
LABEL_77:
        *(a1 + 92) = (1 << (v39 >> 6)) - 16;
        v54 = (*(a1 + 48))(*(a1 + 64), 12336);
        *(a1 + 256) = v54;
        HuffmanCode = -30;
        if (!v54)
        {
          continue;
        }

        *(a1 + 264) = v54 + 7584;
        *a1 = 3;
LABEL_79:
        BrotliDecoderStateMetablockBegin(a1);
        *a1 = 4;
LABEL_80:
        HuffmanCode = DecodeMetaBlockLength(a1, (a1 + 8));
        if (HuffmanCode != 1)
        {
          continue;
        }

        v55 = *(a1 + 772);
        if ((v55 & 6) == 0)
        {
          goto LABEL_88;
        }

        v56 = *(a1 + 16);
        v57 = v56 & 7;
        if ((v56 & 7) != 0)
        {
          v58 = *(a1 + 8);
          v56 &= 0xFFFFFFFFFFFFFFF8;
          *(a1 + 8) = v58 >> v57;
          *(a1 + 16) = v56;
          v57 = (v58 & ~(-1 << v57)) != 0;
        }

        if (v56 <= 0x3F)
        {
          *(a1 + 8) &= ~(-1 << v56);
        }

        HuffmanCode = -14;
        if (v57)
        {
          continue;
        }

        if ((v55 & 4) != 0)
        {
          *a1 = 12;
          v132 = *(a1 + 720);
          HuffmanCode = 1;
          if (v132)
          {
            v132(*(a1 + 736), *(a1 + 132));
            HuffmanCode = 1;
          }
        }

        else
        {
LABEL_88:
          if (!*(a1 + 132))
          {
            goto LABEL_200;
          }

          BrotliCalculateRingBufferSize(a1);
          if ((*(a1 + 772) & 2) != 0)
          {
            v31 = 11;
LABEL_201:
            *a1 = v31;
            HuffmanCode = 1;
          }

          else
          {
LABEL_90:
            v50 = 0;
            *(a1 + 864) = 0;
            *(a1 + 1040) = v149;
            *(a1 + 856) = 0;
            *(a1 + 848) = 0;
            *a1 = 18;
LABEL_91:
            HuffmanCode = DecodeVarLenUint8(a1, (a1 + 8), &v157[v50]);
            if (HuffmanCode == 1)
            {
              v35 = *(a1 + 4);
              v36 = v157[v35] + 1;
              v157[v35] = v36;
              if (v36 <= 1)
              {
                *(a1 + 4) = v35 + 1;
                HuffmanCode = 1;
                continue;
              }

              *a1 = 19;
LABEL_129:
              HuffmanCode = ReadHuffmanCode(v36 + 2, v36 + 2, (*(a1 + 256) + 2528 * v35), 0, a1);
              if (HuffmanCode == 1)
              {
                *a1 = 20;
LABEL_131:
                HuffmanCode = ReadHuffmanCode(26, 0x1AuLL, (*(a1 + 264) + 1584 * *(a1 + 4)), 0, a1);
                if (HuffmanCode == 1)
                {
                  *a1 = 21;
LABEL_133:
                  v86 = v8;
                  v87 = *(a1 + 4);
                  v88 = *(a1 + 264);
                  v158 = 0;
                  if (*(a1 + 764))
                  {
                    v89 = *(a1 + 304);
                  }

                  else
                  {
                    v90 = (v88 + 1584 * v87);
                    v91 = *(a1 + 16);
                    if (v91 >= 0xF)
                    {
                      v95 = *(a1 + 8);
LABEL_142:
                      v97 = &v90[4 * v95];
                      v98 = *v97;
                      if (v98 >= 9)
                      {
                        v91 -= 8;
                        v95 >>= 8;
                        v97 += 4 * (v95 & ~(-1 << (v98 - 8)) & 0x7F) + 4 * *(v97 + 1);
                        LODWORD(v98) = *v97;
                      }

                      *(a1 + 8) = v95 >> v98;
                      *(a1 + 16) = v91 - v98;
                      v89 = *(v97 + 1);
                    }

                    else
                    {
                      v92 = *(a1 + 40);
                      v93 = *(a1 + 24);
                      while (v93 != v92)
                      {
                        v94 = *v93++;
                        v95 = (v94 << v91) | *(a1 + 8);
                        v96 = v91 + 8;
                        *(a1 + 8) = v95;
                        *(a1 + 16) = v91 + 8;
                        *(a1 + 24) = v93;
                        v70 = v91 >= 7;
                        v91 += 8;
                        if (v70)
                        {
                          v91 = v96;
                          goto LABEL_142;
                        }
                      }

                      if (!SafeDecodeSymbol(v90, (a1 + 8), &v158))
                      {
LABEL_153:
                        HuffmanCode = 2;
                        v8 = v86;
                        continue;
                      }

                      v89 = v158;
                    }
                  }

                  v99 = (&_kBrotliPrefixCodeRanges + 4 * v89);
                  v100 = *(v99 + 2);
                  v101 = *v99;
                  v102 = *(a1 + 16);
                  if (v102 >= v100)
                  {
                    v106 = *(a1 + 8);
LABEL_151:
                    *(a1 + 8) = v106 >> v100;
                    *(a1 + 16) = v102 - v100;
                    *(v150 + 8 * v87) = (v106 & ~(-1 << v100)) + v101;
                    *(a1 + 764) = 0;
                    v107 = *(a1 + 4) + 1;
                    *a1 = 18;
                    *(a1 + 4) = v107;
                    HuffmanCode = 1;
                    v8 = v86;
                    continue;
                  }

                  v103 = *(a1 + 40);
                  v104 = *(a1 + 24);
                  while (v104 != v103)
                  {
                    v105 = *v104++;
                    v106 = (v105 << v102) | *(a1 + 8);
                    v102 += 8;
                    *(a1 + 8) = v106;
                    *(a1 + 16) = v102;
                    *(a1 + 24) = v104;
                    if (v102 >= v100)
                    {
                      goto LABEL_151;
                    }
                  }

                  *(a1 + 304) = v89;
                  *(a1 + 764) = 1;
                  goto LABEL_153;
                }
              }
            }
          }
        }

        continue;
      case 2:
        v39 = *(a1 + 772);
        goto LABEL_77;
      case 3:
        goto LABEL_79;
      case 4:
        goto LABEL_80;
      case 5:
        v47 = *(a1 + 16);
        if (v47 >= 6)
        {
          v49 = *(a1 + 8);
        }

        else
        {
          v48 = *(a1 + 24);
          HuffmanCode = 2;
          if (v48 == *(a1 + 40))
          {
            continue;
          }

          v49 = (*v48 << v47) | *(a1 + 8);
          v47 |= 8uLL;
          *(a1 + 24) = v48 + 1;
        }

        *(a1 + 8) = v49 >> 6;
        *(a1 + 16) = v47 - 6;
        *(a1 + 384) = v49 & 3;
        *(a1 + 392) = ((v49 >> 2) & 0xF) << (v49 & 3);
        v59 = (*(a1 + 48))(*(a1 + 64), *(a1 + 312));
        *(a1 + 792) = v59;
        HuffmanCode = -21;
        if (!v59)
        {
          continue;
        }

        LODWORD(i) = 0;
        *a1 = 6;
LABEL_97:
        v34 = *v157;
        if (i < *v157)
        {
          for (i = i; i < v34; ++i)
          {
            v60 = *(a1 + 16);
            if (v60 >= 2)
            {
              v62 = *(a1 + 8);
            }

            else
            {
              v61 = *(a1 + 24);
              if (v61 == *(a1 + 40))
              {
                *(a1 + 4) = i;
                HuffmanCode = 2;
                goto LABEL_19;
              }

              v62 = (*v61 << v60) | *(a1 + 8);
              v60 |= 8uLL;
              *(a1 + 24) = v61 + 1;
            }

            *(a1 + 8) = v62 >> 2;
            *(a1 + 16) = v60 - 2;
            *(*(a1 + 792) + i) = v62 & 3;
            v34 = *(a1 + 312);
          }
        }

        *a1 = 22;
LABEL_105:
        HuffmanCode = DecodeContextMap(v34 << 6, (a1 + 776), v156, a1);
        if (HuffmanCode != 1)
        {
          continue;
        }

        *v154 = 0u;
        v154[1] = 0u;
        v63 = *v157;
        if (*v157)
        {
          v64 = 0;
          v65 = *v156;
          v66 = *v156;
          do
          {
            v67 = 0;
            v68 = 0;
            do
            {
              v69 = v65[64 * v64];
              v68 |= (v66[v67 + 1] ^ v69 | v66[v67 + 2] ^ v69 | v65[v67 | (v64 << 6)] ^ v69 | v65[(v67 | (v64 << 6)) + 3] ^ v69);
              v70 = v67 >= 0x3C;
              v67 += 4;
            }

            while (!v70);
            if (!v68)
            {
              *(v154 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v64;
            }

            ++v64;
            v66 += 64;
          }

          while (v64 != v63);
        }

        *a1 = 23;
LABEL_115:
        v71 = *(a1 + 384);
        v72 = *(a1 + 392);
        v73 = v72 + 16;
        v74 = v71 + 1;
        if ((*(a1 + 772) & 0x20) != 0)
        {
          if (v72 > 0x7FFFFFFB)
          {
            v83 = -2147483636;
          }

          else
          {
            v77 = -1;
            v78 = -5;
            v79 = ((2147483644 - v72) >> v71) + 4;
            do
            {
              ++v77;
              v78 += 2;
              v80 = v79 > 3;
              v79 >>= 1;
            }

            while (v80);
            v81 = (((((2147483644 - v72) >> v71) + 4) >> v77) & 1) + v78;
            v82 = v72 + ((v81 << v71) | ~(-1 << v71)) + 17;
            v83 = v72 + 16;
            if (v81 != -1)
            {
              v83 = v82;
            }
          }

          v76 = v83;
          v75 = v73 + (62 << v74);
        }

        else
        {
          v75 = v73 + (24 << v74);
          v76 = v73 + (24 << v74);
        }

        HuffmanCode = DecodeContextMap(4 * *(a1 + 328), (a1 + 400), (a1 + 408), a1);
        if (HuffmanCode != 1)
        {
          continue;
        }

        v147 = v6;
        v148 = v7;
        v52 = v8;
        v53 = v152;
        v84 = BrotliDecoderHuffmanTreeGroupInit(a1, v152, 256, 256, *(a1 + 776));
        v85 = v84 & BrotliDecoderHuffmanTreeGroupInit(a1, v153, 704, 704, *(a1 + 320));
        if (v85 & BrotliDecoderHuffmanTreeGroupInit(a1, v151, v75, v76, *(a1 + 400)))
        {
          v51 = 0;
          *a1 = 24;
LABEL_156:
          if (*v21 == 1)
          {
            v108 = *(a1 + 2668);
          }

          else
          {
            v108 = 0;
            *(a1 + 2672) = *(v53 + 8);
            *(a1 + 2668) = 0;
            *(a1 + 848) = 1;
          }

          if (v108 >= *(v53 + 20))
          {
LABEL_164:
            *(a1 + 848) = 0;
            *(a1 + 4) = v51 + 1;
            HuffmanCode = 1;
            v8 = v52;
            v6 = v147;
            v7 = v148;
            if (v51 >= 2)
            {
              *a1 = 25;
LABEL_166:
              v113 = *(a1 + 344);
              v114 = *(a1 + 784);
              *(a1 + 168) = v114 + (v113 << 6);
              *(a1 + 272) = (*(v154 + ((v113 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> (v113 & 0x1F)) & 1;
              *(a1 + 416) = *(*(a1 + 184) + 8 * *(v114 + (v113 << 6)));
              *(a1 + 160) = &_kBrotliContextLookupTable + 512 * (*(*(a1 + 792) + v113) & 3);
              *(a1 + 176) = *(a1 + 408);
              *(a1 + 152) = **(a1 + 208);
              v115 = BrotliEnsureRingBuffer(a1);
              HuffmanCode = -27;
              if (v115)
              {
                v116 = *(a1 + 384);
                v117 = *(a1 + 392);
                v118 = *(a1 + 250);
                if (v117)
                {
                  v119 = 0;
                  do
                  {
                    *(v146 + v119) = 0;
                    v120 = v119 + 1;
                    *(v146 + 8 * v119 + 656) = v119 + 1;
                    v119 = v120;
                  }

                  while (v117 != v120);
                  v121 = v120 + 16;
                }

                else
                {
                  v121 = 16;
                }

                if (v121 < v118)
                {
                  v122 = 0;
                  v123 = v117 + 1;
                  v124 = 1;
                  do
                  {
                    v125 = v123 + ((((v122 + 2) << v124) - 4) << v116);
                    v126 = (1 << v116);
                    do
                    {
                      *(v21 + v121) = v124;
                      *&v21[2 * v121++ + 136] = v125++;
                      --v126;
                    }

                    while (v126);
                    v124 += v122;
                    v122 ^= 1uLL;
                  }

                  while (v121 < v118);
                }

                *a1 = 7;
LABEL_179:
                HuffmanCode = ProcessCommands(a1);
                if (HuffmanCode == 2)
                {
                  HuffmanCode = SafeProcessCommands(a1);
                }
              }
            }
          }

          else
          {
            v109 = *(a1 + 2672);
            while (1)
            {
              v158 = 0;
              v110 = ReadHuffmanCode(*(v53 + 16), *(v53 + 18), v109, &v158, a1);
              if (v110 != 1)
              {
                break;
              }

              v111 = *(a1 + 2672);
              v112 = *(a1 + 2668);
              *(*v53 + 8 * v112) = v111;
              v109 = (v111 + 4 * v158);
              *(a1 + 2672) = v109;
              *(a1 + 2668) = v112 + 1;
              if (v112 + 1 >= *(v53 + 20))
              {
                v51 = *(a1 + 4);
                goto LABEL_164;
              }
            }

            HuffmanCode = v110;
            v8 = v52;
            v6 = v147;
            v7 = v148;
          }

          continue;
        }

        v144 = v155 - *a2;
        v145 = a1;
        HuffmanCode = -22;
        return SaveErrorCode(v145, HuffmanCode, v144);
      case 6:
        LODWORD(i) = *(a1 + 4);
        goto LABEL_97;
      case 7:
      case 8:
      case 9:
      case 0xA:
        goto LABEL_179;
      case 0xB:
        HuffmanCode = CopyUncompressedBlockToOutput(v8, v7, v6, a1);
        if (HuffmanCode == 1)
        {
          *a1 = 14;
        }

        continue;
      case 0xC:
        v38 = SkipMetadataBlock(a1);
        HuffmanCode = 2;
        if (v38 != 1)
        {
          continue;
        }

        goto LABEL_200;
      case 0xD:
      case 0xF:
      case 0x10:
        HuffmanCode = WriteRingBuffer(a1, v8, v7, v6, 0);
        if (HuffmanCode != 1)
        {
          continue;
        }

        WrapRingBuffer(a1);
        if (*(a1 + 100) == 1 << (*(a1 + 772) >> 6))
        {
          *(a1 + 96) = *(a1 + 92);
        }

        if (*a1 == 16)
        {
          v31 = 10;
          goto LABEL_201;
        }

        if (*a1 != 15)
        {
          if (*(a1 + 4))
          {
            v31 = 8;
          }

          else if (*(a1 + 132))
          {
            v31 = 9;
          }

          else
          {
LABEL_200:
            v31 = 14;
          }

          goto LABEL_201;
        }

        v29 = *(a1 + 808);
        if (!v29 || *(v29 + 16) == *(v29 + 20) || (v30 = *(a1 + 88) + CopyFromCompoundDictionary(a1, *(a1 + 88)), *(a1 + 88) = v30, HuffmanCode = 1, v30 < *(a1 + 100)))
        {
          if (*(a1 + 132))
          {
            v31 = 7;
          }

          else
          {
            v31 = 14;
          }

          goto LABEL_201;
        }

        continue;
      case 0xE:
        HuffmanCode = -10;
        if ((*(a1 + 132) & 0x80000000) != 0)
        {
          continue;
        }

        BrotliDecoderStateCleanupAfterMetablock(a1);
        if ((*(a1 + 772) & 1) == 0)
        {
          v31 = 3;
          goto LABEL_201;
        }

        v128 = *(a1 + 16);
        v129 = v128 & 7;
        if ((v128 & 7) != 0)
        {
          v130 = *(a1 + 8);
          v128 &= 0xFFFFFFFFFFFFFFF8;
          *(a1 + 8) = v130 >> v129;
          *(a1 + 16) = v128;
          v129 = (v130 & ~(-1 << v129)) != 0;
        }

        if (v128 <= 0x3F)
        {
          *(a1 + 8) &= ~(-1 << v128);
        }

        HuffmanCode = -15;
        if ((v129 & 1) == 0)
        {
          if (!*(a1 + 80))
          {
            if (v128 > 7)
            {
              v131 = (*(a1 + 24) - (v128 >> 3));
            }

            else
            {
              v131 = *(a1 + 24);
            }

            v134 = v128 & 7;
            v135 = *(a1 + 8) & ~(-1 << v134);
            *(a1 + 16) = v134;
            *(a1 + 24) = v131;
            *(a1 + 8) = v135;
            *a2 = *(a1 + 40) - v131;
            *a3 = v131;
          }

          *a1 = 26;
LABEL_214:
          if (!*(a1 + 136) || (HuffmanCode = WriteRingBuffer(a1, v8, v7, v6, 1), HuffmanCode == 1))
          {
            v144 = v155 - *a2;
            v145 = a1;
            HuffmanCode = 1;
            return SaveErrorCode(v145, HuffmanCode, v144);
          }
        }

        continue;
      case 0x11:
        goto LABEL_90;
      case 0x12:
        v50 = *(a1 + 4);
        if (v50 < 3)
        {
          goto LABEL_91;
        }

        v31 = 5;
        goto LABEL_201;
      case 0x13:
        v35 = *(a1 + 4);
        v36 = v157[v35];
        goto LABEL_129;
      case 0x14:
        goto LABEL_131;
      case 0x15:
        goto LABEL_133;
      case 0x16:
        v34 = *v157;
        goto LABEL_105;
      case 0x17:
        goto LABEL_115;
      case 0x18:
        v147 = v6;
        v148 = v7;
        v51 = *(a1 + 4);
        if (v51)
        {
          v52 = v8;
          if (v51 == 2)
          {
            v53 = v151;
          }

          else
          {
            v53 = v153;
            if (v51 != 1)
            {
              v144 = v155 - *a2;
              v145 = a1;
              HuffmanCode = -31;
              return SaveErrorCode(v145, HuffmanCode, v144);
            }
          }
        }

        else
        {
          v52 = v8;
          v53 = v152;
        }

        goto LABEL_156;
      case 0x19:
        goto LABEL_166;
      case 0x1A:
        goto LABEL_214;
      default:
        continue;
    }
  }
}

uint64_t SaveErrorCode(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(a1 + 128) = a2;
  *(a1 + 744) += a3;
  if (*(a1 + 80) && *(a1 + 24) == *(a1 + 40))
  {
    *(a1 + 80) = 0;
  }

  if (a2 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

uint64_t WriteRingBuffer(uint64_t a1, size_t *a2, void **a3, size_t *a4, int a5)
{
  v5 = *(a1 + 100);
  if (*(a1 + 88) >= v5)
  {
    v6 = *(a1 + 100);
  }

  else
  {
    v6 = *(a1 + 88);
  }

  v7 = *(a1 + 432);
  v8 = *(a1 + 424) * v5 - v7;
  v9 = v8 + v6;
  v10 = *a2;
  if (*a2 >= v9)
  {
    v11 = v8 + v6;
  }

  else
  {
    v11 = *a2;
  }

  if ((*(a1 + 132) & 0x80000000) != 0)
  {
    return 4294967287;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v17 = (*(a1 + 136) + (v7 & *(a1 + 104)));
  if (!*a3)
  {
    *a3 = v17;
LABEL_13:
    v18 = v10;
    goto LABEL_14;
  }

  memcpy(*a3, v17, v11);
  *a3 = *a3 + v11;
  v18 = *a2;
LABEL_14:
  *a2 = v18 - v11;
  v20 = *(a1 + 432) + v11;
  *(a1 + 432) = v20;
  if (a4)
  {
    *a4 = v20;
  }

  v21 = *(a1 + 100);
  v22 = *(a1 + 772);
  v23 = 1 << (v22 >> 6);
  if (v10 >= v9)
  {
    if (v21 == v23)
    {
      v25 = *(a1 + 88);
      v26 = __OFSUB__(v25, v21);
      v27 = v25 - v21;
      if (v27 < 0 == v26)
      {
        *(a1 + 88) = v27;
        ++*(a1 + 424);
        *(a1 + 772) = v22 & 0xFFFFFFF7 | (8 * (v27 != 0));
      }
    }

    return 1;
  }

  else if (v21 != v23 && a5 == 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t DecodeMetaBlockLength(_DWORD *a1, unint64_t *a2)
{
  for (i = a1[188]; ; a1[188] = i)
  {
    v3 = 4294967265;
    if (i >= 2)
    {
      break;
    }

    if (i)
    {
      if (i != 1)
      {
        return v3;
      }
    }

    else
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = *a2;
        v7 = v5 - 1;
      }

      else
      {
        v8 = a2[2];
        if (v8 == a2[4])
        {
          return 2;
        }

        v6 = *a2 | *v8;
        a2[2] = (v8 + 1);
        v7 = 7;
      }

      *a2 = v6 >> 1;
      a2[1] = v7;
      v9 = a1[193] & 0xFFFFFFF8 | v6 & 1;
      a1[33] = 0;
      a1[193] = v9;
      if ((v6 & 1) == 0)
      {
        i = 2;
        continue;
      }

      a1[188] = 1;
    }

    v10 = a2[1];
    if (v10)
    {
      v11 = *a2;
      v4 = v10 - 1;
    }

    else
    {
      v12 = a2[2];
      if (v12 == a2[4])
      {
        return 2;
      }

      v11 = *a2 | *v12;
      a2[2] = (v12 + 1);
      v4 = 7;
    }

    *a2 = v11 >> 1;
    a2[1] = v4;
    if (v11)
    {
      goto LABEL_91;
    }

    a1[188] = 2;
LABEL_21:
    if (v4 >= 2)
    {
      v14 = *a2;
    }

    else
    {
      v13 = a2[2];
      if (v13 == a2[4])
      {
        return 2;
      }

      v14 = (*v13 << v4) | *a2;
      v4 |= 8uLL;
      a2[2] = (v13 + 1);
    }

    v15 = v14 & 3;
    *a2 = v14 >> 2;
    a2[1] = v4 - 2;
    v16 = a1[193] & 0xFFF00FFF | ((v14 & 3) << 12) | 0x4000;
    a1[193] = v16;
    a1[1] = 0;
    if (v15 != 3)
    {
      v18 = 0;
      a1[188] = 3;
      goto LABEL_38;
    }

    a1[193] = v16 | 4;
    i = 5;
  }

  if (i <= 2)
  {
    v4 = a2[1];
    goto LABEL_21;
  }

  if (i <= 4)
  {
    if (i == 3)
    {
      v18 = a1[1];
      v16 = a1[193];
LABEL_38:
      if (v18 < (v16 >> 12))
      {
        v19 = a2[1];
        v20 = 4 * v18;
        do
        {
          if (v19 >= 4)
          {
            v22 = *a2;
          }

          else
          {
            v21 = a2[2];
            if (v21 == a2[4])
            {
              goto LABEL_92;
            }

            v22 = (*v21 << v19) | *a2;
            v19 |= 8uLL;
            a2[2] = (v21 + 1);
          }

          v23 = v22 & 0xF;
          v19 -= 4;
          *a2 = v22 >> 4;
          a2[1] = v19;
          ++v18;
          v16 = a1[193];
          v24 = v18 == (v16 >> 12) && v18 >= 5;
          if (v24 && v23 == 0)
          {
            return 0xFFFFFFFFLL;
          }

          a1[33] |= v23 << v20;
          v20 += 4;
        }

        while (v18 < (v16 >> 12));
      }

      a1[188] = 4;
      if (v16)
      {
        goto LABEL_61;
      }
    }

    else if (a1[193])
    {
      goto LABEL_61;
    }

    v26 = a2[1];
    if (v26)
    {
      v27 = *a2;
      v28 = v26 - 1;
    }

    else
    {
      v32 = a2[2];
      if (v32 == a2[4])
      {
        return 2;
      }

      v27 = *a2 | *v32;
      a2[2] = (v32 + 1);
      v28 = 7;
    }

    *a2 = v27 >> 1;
    a2[1] = v28;
    a1[193] = a1[193] & 0xFFFFFFFD | (2 * (v27 & 1));
LABEL_61:
    v33 = a1[33] + 1;
LABEL_90:
    a1[33] = v33;
    goto LABEL_91;
  }

  if (i == 5)
  {
    v30 = a2[1];
    if (v30)
    {
      v31 = *a2;
      v29 = v30 - 1;
    }

    else
    {
      v34 = a2[2];
      if (v34 == a2[4])
      {
        return 2;
      }

      v31 = *a2 | *v34;
      a2[2] = (v34 + 1);
      v29 = 7;
    }

    *a2 = v31 >> 1;
    a2[1] = v29;
    if (v31)
    {
      return 4294967294;
    }

    a1[188] = 6;
    goto LABEL_67;
  }

  if (i == 6)
  {
    v29 = a2[1];
LABEL_67:
    if (v29 >= 2)
    {
      v36 = *a2;
LABEL_71:
      *a2 = v36 >> 2;
      a2[1] = v29 - 2;
      if ((v36 & 3) != 0)
      {
        v17 = a1[193] & 0xFFF00FFF | ((v36 & 3) << 12);
        a1[193] = v17;
        a1[188] = 7;
        goto LABEL_73;
      }

LABEL_91:
      a1[188] = 0;
      return 1;
    }

    v35 = a2[2];
    if (v35 != a2[4])
    {
      v36 = (*v35 << v29) | *a2;
      v29 |= 8uLL;
      a2[2] = (v35 + 1);
      goto LABEL_71;
    }

    return 2;
  }

  if (i != 7)
  {
    return v3;
  }

  v17 = a1[193];
LABEL_73:
  v18 = a1[1];
  if (v18 >= (v17 >> 12))
  {
    v46 = a1[33];
LABEL_89:
    v33 = v46 + 1;
    goto LABEL_90;
  }

  v37 = a2[1];
  v38 = 8 * v18;
  while (1)
  {
    if (v37 >= 8)
    {
      v40 = *a2;
    }

    else
    {
      v39 = a2[2];
      if (v39 == a2[4])
      {
LABEL_92:
        a1[1] = v18;
        return 2;
      }

      v40 = (*v39 << v37) | *a2;
      v37 |= 8uLL;
      a2[2] = (v39 + 1);
    }

    v41 = v40;
    v37 -= 8;
    *a2 = v40 >> 8;
    a2[1] = v37;
    ++v18;
    v42 = a1[193];
    v43 = v18 == (v42 >> 12) && v18 >= 2;
    if (v43 && v41 == 0)
    {
      return 4294967293;
    }

    v45 = (v42 >> 12);
    v46 = a1[33] | (v41 << v38);
    a1[33] = v46;
    v38 += 8;
    if (v18 >= v45)
    {
      goto LABEL_89;
    }
  }
}

uint64_t BrotliCalculateRingBufferSize(uint64_t result)
{
  v1 = *(result + 772);
  v2 = *(result + 100);
  if (v2)
  {
    v3 = *(result + 100);
  }

  else
  {
    v3 = 1024;
  }

  if ((v1 & 4) == 0)
  {
    v4 = 1 << (v1 >> 6);
    if (v2 != v4)
    {
      v5 = *(result + 136);
      if (v5)
      {
        LODWORD(v5) = *(result + 88);
      }

      v6 = *(result + 132) + v5;
      if (v3 <= v6)
      {
        v3 = v6;
      }

      if ((v1 & 0x10) != 0)
      {
        do
        {
          v7 = v4;
          v4 >>= 1;
        }

        while (v4 >= v3);
      }

      else
      {
        v7 = 1 << (v1 >> 6);
      }

      *(result + 768) = v7;
    }
  }

  return result;
}

uint64_t DecodeVarLenUint8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *(a1 + 760);
  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return 4294967265;
      }

      v4 = *a3;
      goto LABEL_19;
    }

    v5 = a2[1];
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = *a2;
      v5 = v6 - 1;
    }

    else
    {
      v9 = a2[2];
      if (v9 == a2[4])
      {
        return 2;
      }

      v7 = *a2 | *v9;
      a2[2] = (v9 + 1);
      v5 = 7;
    }

    *a2 = v7 >> 1;
    a2[1] = v5;
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      return 1;
    }
  }

  if (v5 >= 3)
  {
    v11 = *a2;
    goto LABEL_17;
  }

  v10 = a2[2];
  if (v10 == a2[4])
  {
    *(a1 + 760) = 1;
    return 2;
  }

  v11 = (*v10 << v5) | *a2;
  v5 |= 8uLL;
  a2[2] = (v10 + 1);
LABEL_17:
  *a2 = v11 >> 3;
  a2[1] = v5 - 3;
  v4 = v11 & 7;
  if ((v11 & 7) == 0)
  {
    v8 = 1;
    *a3 = 1;
LABEL_28:
    *(a1 + 760) = 0;
    return v8;
  }

  *a3 = v4;
LABEL_19:
  v12 = a2[1];
  if (v12 >= v4)
  {
    v16 = *a2;
LABEL_25:
    v17 = v16 & ~(-1 << v4);
    *a2 = v16 >> v4;
    a2[1] = v12 - v4;
    v8 = 1;
    *a3 = v17 + (1 << *a3);
    goto LABEL_28;
  }

  v13 = a2[4];
  v14 = a2[2];
  while (v14 != v13)
  {
    v15 = *v14++;
    v16 = (v15 << v12) | *a2;
    v12 += 8;
    *a2 = v16;
    a2[1] = v12;
    a2[2] = v14;
    if (v12 >= v4)
    {
      goto LABEL_25;
    }
  }

  v8 = 2;
  *(a1 + 760) = 2;
  return v8;
}

uint64_t ReadHuffmanCode(uint64_t a1, unint64_t a2, int *__src, void *a4, uint64_t a5)
{
  v9 = *(a5 + 856);
  v10 = a5 + 2634;
  v11 = (a5 + 2616);
  if (!v9)
  {
    v12 = *(a5 + 16);
    if (v12 >= 2)
    {
      v14 = *(a5 + 8);
    }

    else
    {
      v13 = *(a5 + 24);
      if (v13 == *(a5 + 40))
      {
        return 2;
      }

      v14 = (*v13 << v12) | *(a5 + 8);
      v12 |= 8uLL;
      *(a5 + 24) = v13 + 1;
    }

    *(a5 + 864) = v14 & 3;
    v15 = v12 - 2;
    *(a5 + 8) = v14 >> 2;
    *(a5 + 16) = v12 - 2;
    if ((v14 & 3) == 1)
    {
      goto LABEL_37;
    }

    *(a5 + 896) = xmmword_1AB465F70;
    *v10 = 0;
    *(a5 + 2642) = 0;
    *v11 = 0;
    *(a5 + 2624) = 0;
    *(a5 + 2632) = 0;
    v9 = 4;
    *(a5 + 856) = 4;
  }

  v16 = 4294967265;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return v16;
      }

      v23 = *(a5 + 864);
      v24 = *(a5 + 888);
      goto LABEL_42;
    }

    v15 = *(a5 + 16);
LABEL_37:
    if (v15 >= 2)
    {
      v39 = *(a5 + 8);
    }

    else
    {
      v38 = *(a5 + 24);
      if (v38 == *(a5 + 40))
      {
        v84 = 1;
        goto LABEL_109;
      }

      v39 = (*v38 << v15) | *(a5 + 8);
      v15 |= 8uLL;
      *(a5 + 24) = v38 + 1;
    }

    v23 = 0;
    v24 = v39 & 3;
    *(a5 + 888) = v24;
    *(a5 + 8) = v39 >> 2;
    *(a5 + 16) = v15 - 2;
    *(a5 + 864) = 0;
LABEL_42:
    v40 = 64 - __clz(a1 - 1);
    if (a1 == 1)
    {
      v40 = 0;
    }

    if (v23 <= v24)
    {
      v47 = ~(-1 << v40);
      v48 = *(a5 + 16);
      do
      {
        if (v48 >= v40)
        {
          v52 = *(a5 + 8);
        }

        else
        {
          v49 = *(a5 + 40);
          v50 = *(a5 + 24);
          do
          {
            if (v50 == v49)
            {
              *(a5 + 864) = v23;
              v16 = 2;
              *(a5 + 856) = 2;
              return v16;
            }

            v51 = *v50++;
            v52 = (v51 << v48) | *(a5 + 8);
            v48 += 8;
            *(a5 + 8) = v52;
            *(a5 + 16) = v48;
            *(a5 + 24) = v50;
          }

          while (v48 < v40);
        }

        v48 -= v40;
        *(a5 + 8) = v52 >> v40;
        *(a5 + 16) = v48;
        if ((v52 & v47) >= a2)
        {
          return 4294967292;
        }

        *(a5 + 1048 + 2 * v23++) = v52 & v47;
      }

      while (v23 <= v24);
    }

    if (!v24)
    {
      goto LABEL_114;
    }

    v41 = 0;
    v42 = (a5 + 1050);
    do
    {
      v43 = *(a5 + 1048 + 2 * v41++);
      v44 = v42;
      v45 = v41;
      do
      {
        v46 = *v44++;
        if (v43 == v46)
        {
          return 4294967291;
        }

        ++v45;
      }

      while (v45 <= v24);
      ++v42;
    }

    while (v41 != v24);
LABEL_17:
    if (v24 == 3)
    {
      v25 = *(a5 + 16);
      if (v25)
      {
        v26 = *(a5 + 8);
        v27 = v25 - 1;
      }

      else
      {
        v85 = *(a5 + 24);
        if (v85 == *(a5 + 40))
        {
          v84 = 3;
          goto LABEL_109;
        }

        v26 = *(a5 + 8) | *v85;
        *(a5 + 24) = v85 + 1;
        v27 = 7;
      }

      *(a5 + 8) = v26 >> 1;
      *(a5 + 16) = v27;
      v24 = (v26 & 1) + 3;
      *(a5 + 888) = v24;
    }

LABEL_114:
    v86 = BrotliBuildSimpleHuffmanTable(__src, 8, (a5 + 1048), v24);
    if (a4)
    {
      *a4 = v86;
    }

    goto LABEL_158;
  }

  if (v9 == 3)
  {
    v24 = *(a5 + 888);
    goto LABEL_17;
  }

  if (v9 != 4)
  {
    if (v9 != 5)
    {
      return v16;
    }

    __srca = __src;
    v116 = a4;
    v17 = *(a5 + 888);
    v18 = *(a5 + 896);
    v19 = *(a5 + 904);
    v20 = *(a5 + 880);
    v21 = *(a5 + 872);
    v22 = *(a5 + 1040);
LABEL_70:
    v58 = a5 + 2488;
    if (BrotliWarmupBitReader((a5 + 8)))
    {
      if (v17 >= a2 || !v19)
      {
LABEL_153:
        *(a5 + 904) = v19;
LABEL_154:
        if (v19)
        {
          return 4294967289;
        }

LABEL_156:
        v113 = BrotliBuildHuffmanTable(__srca, 8, *(a5 + 1040), v10);
        if (v116)
        {
          *v116 = v113;
        }

LABEL_158:
        *(a5 + 856) = 0;
        return 1;
      }

      v60 = *(a5 + 24);
      v59 = *(a5 + 32);
      while (v60 < v59)
      {
        v61 = *(a5 + 8);
        v62 = *(a5 + 16);
        if (v62 <= 0x20)
        {
          v63 = *v60++;
          v61 |= v63 << v62;
          v62 += 32;
          *(a5 + 24) = v60;
        }

        v64 = (a5 + 912 + 4 * (v61 & 0x1F));
        v65 = *v64;
        v66 = v62 - v65;
        v67 = v61 >> v65;
        *(a5 + 8) = v67;
        *(a5 + 16) = v66;
        v68 = *(v64 + 1);
        if (v68 > 0xF)
        {
          v69 = v68 == 16;
          if (v68 == 16)
          {
            v70 = 2;
          }

          else
          {
            v70 = 3;
          }

          v71 = v67 & ~(-1 << v70);
          if (v69)
          {
            v72 = v20;
          }

          else
          {
            v72 = 0;
          }

          *(a5 + 8) = v67 >> v70;
          *(a5 + 16) = v66 - v70;
          v73 = (v18 - 2) << v70;
          if (v18)
          {
            v74 = v18;
          }

          else
          {
            v74 = 0;
          }

          if (!v18)
          {
            v73 = 0;
          }

          v75 = v21 == v72;
          if (v21 == v72)
          {
            v76 = v74;
          }

          else
          {
            v21 = v72;
            v76 = 0;
          }

          if (v75)
          {
            v77 = v73;
          }

          else
          {
            v77 = 0;
          }

          v18 = v71 + v77 + 3;
          v78 = v18 - v76;
          v79 = v18 - v76 + v17;
          if (v79 > a2)
          {
            v19 = 0xFFFFFLL;
            goto LABEL_153;
          }

          if (v21)
          {
            v80 = *(v58 + 4 * v21);
            v81 = v77 + v71 - v76 + 3;
            v82 = 1 - v17;
            do
            {
              v83 = v17;
              *(v22 + 2 * v80) = v17++;
              --v82;
              v80 = v83;
              --v81;
            }

            while (v81);
            *(v58 + 4 * v21) = -v82;
            v19 -= v78 << (15 - v21);
            *(v10 + 2 * v21) += v78;
          }

          v17 = v79;
        }

        else
        {
          if (*(v64 + 1))
          {
            *(v22 + 2 * *(v58 + 4 * v68)) = v17;
            *(v58 + 4 * v68) = v17;
            v19 -= 0x8000uLL >> v68;
            ++*(v10 + 2 * v68);
            v20 = v68;
          }

          v18 = 0;
          ++v17;
        }

        if (v17 >= a2 || !v19)
        {
          goto LABEL_153;
        }
      }

      *(a5 + 888) = v17;
      *(a5 + 896) = v18;
      *(a5 + 880) = v20;
      *(a5 + 872) = v21;
      *(a5 + 904) = v19;
    }

    else
    {
      v17 = *(a5 + 888);
      v19 = *(a5 + 904);
    }

    if (v17 < a2)
    {
      v87 = 0;
      while (1)
      {
        if (!v19)
        {
          goto LABEL_156;
        }

        if (v87)
        {
          v88 = *(a5 + 24);
          if (v88 == *(a5 + 40))
          {
            return 2;
          }

          v89 = *(a5 + 16);
          v90 = v89 + 8;
          *(a5 + 8) |= *v88 << v89;
          *(a5 + 16) = v89 + 8;
          *(a5 + 24) = v88 + 1;
          if (v89 == -8)
          {
LABEL_125:
            v91 = 0;
            goto LABEL_126;
          }
        }

        else
        {
          v90 = *(a5 + 16);
          if (!v90)
          {
            goto LABEL_125;
          }
        }

        v91 = *(a5 + 8);
LABEL_126:
        v92 = (a5 + 912 + 4 * (v91 & 0x1F));
        v93 = *v92;
        if (v90 < v93)
        {
          goto LABEL_127;
        }

        v94 = *(v92 + 1);
        if (v94 <= 0xF)
        {
          *(a5 + 8) >>= v93;
          *(a5 + 16) = v90 - v93;
          v95 = *(a5 + 1040);
          *(a5 + 896) = 0;
          if (v94)
          {
            *(v95 + 2 * *(v58 + 4 * v94)) = v17;
            *(v58 + 4 * v94) = v17;
            *(a5 + 880) = v94;
            v19 -= 0x8000uLL >> v94;
            *(a5 + 904) = v19;
            ++*(v10 + 2 * v94);
          }

          v87 = 0;
          *(a5 + 888) = ++v17;
          goto LABEL_149;
        }

        v96 = v94 - 14;
        v97 = v94 - 14 + v93;
        v98 = v90 >= v97;
        v99 = v90 - v97;
        if (v98)
        {
          *(a5 + 8) >>= v97;
          *(a5 + 16) = v99;
          if (v94 == 16)
          {
            v100 = *(a5 + 880);
            v101 = 2;
          }

          else
          {
            v100 = 0;
            v101 = 3;
          }

          if (*(a5 + 872) == v100)
          {
            v102 = *(a5 + 896);
            if (v102)
            {
              v103 = (v102 - 2) << v101;
            }

            else
            {
              v103 = 0;
            }
          }

          else
          {
            v103 = 0;
            v102 = 0;
            *(a5 + 872) = v100;
          }

          v104 = (v91 >> v93) & ~(-1 << v96);
          v105 = *(a5 + 1040);
          v106 = v104 + v103 + 3;
          *(a5 + 896) = v106;
          v107 = v106 - v102;
          v108 = v106 - v102 + v17;
          if (v108 > a2)
          {
            *(a5 + 888) = a2;
            *(a5 + 904) = 0xFFFFFLL;
            return 4294967289;
          }

          if (v100)
          {
            v109 = *(v58 + 4 * v100);
            v110 = v103 + v104 - v102 + 3;
            v111 = 1 - v17;
            do
            {
              v112 = v17;
              *(v105 + 2 * v109) = v17++;
              --v111;
              v109 = v112;
              --v110;
            }

            while (v110);
            v87 = 0;
            *(a5 + 888) = v108;
            *(v58 + 4 * v100) = -v111;
            v19 -= v107 << (15 - v100);
            *(a5 + 904) = v19;
            *(v10 + 2 * v100) += v107;
          }

          else
          {
            v87 = 0;
            *(a5 + 888) = v108;
          }

          v17 = v108;
        }

        else
        {
LABEL_127:
          v87 = 1;
        }

LABEL_149:
        if (v17 >= a2)
        {
          goto LABEL_154;
        }
      }
    }

    goto LABEL_154;
  }

  v28 = *(a5 + 896);
  v29 = *(a5 + 904);
  v30 = *(a5 + 864);
  if (v30 > 0x11)
  {
LABEL_63:
    if (v28 != 1 && v29)
    {
      return 4294967290;
    }

    __srca = __src;
    v116 = a4;
    BrotliBuildCodeLengthsHuffmanTable(a5 + 912, v11, v10);
    v53 = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v54 = (a5 + 2488);
    v22 = *(a5 + 1040);
    *&v55 = -1;
    *(&v55 + 1) = -1;
    do
    {
      v56 = vdupq_n_s32(v53);
      v57 = vorrq_s8(v56, xmmword_1AB465F30);
      *v54 = v57;
      v54[1] = vorrq_s8(v56, xmmword_1AB465F40);
      v54 += 2;
      *(v22 + 2 * v57.i32[0]) = v55;
      v53 += 8;
    }

    while (v53 != 16);
    v21 = 0;
    v18 = 0;
    v17 = 0;
    *(a5 + 872) = 0;
    *(a5 + 880) = xmmword_1AB465F50;
    *(a5 + 896) = xmmword_1AB465F60;
    *(a5 + 856) = 5;
    v19 = 0x8000;
    v20 = 8;
    goto LABEL_70;
  }

  v31 = *(a5 + 16);
  while (1)
  {
    v32 = kCodeLengthCodeOrder[v30];
    if (v31 >= 4)
    {
      v34 = *(a5 + 8);
      goto LABEL_26;
    }

    v33 = *(a5 + 24);
    if (v33 == *(a5 + 40))
    {
      break;
    }

    v34 = (*v33 << v31) | *(a5 + 8);
    v31 |= 8uLL;
    *(a5 + 24) = v33 + 1;
LABEL_26:
    v35 = v34 & 0xF;
    v36 = kCodeLengthPrefixLength[v35];
LABEL_27:
    v37 = kCodeLengthPrefixValue[v35];
    v31 -= v36;
    *(a5 + 8) = v34 >> v36;
    *(a5 + 16) = v31;
    *(v11 + v32) = v37;
    if (((0x1111uLL >> v35) & 1) != 0 || (v29 -= 0x20u >> v37, ++v28, ++*(v10 + 2 * v37), (v29 - 33) >= 0xFFFFFFFFFFFFFFE0))
    {
      if (++v30 != 18)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

  if (v31)
  {
    v35 = *(a5 + 8) & 0xFLL;
  }

  else
  {
    v35 = 0;
  }

  v36 = kCodeLengthPrefixLength[v35];
  if (v31 >= v36)
  {
    v34 = *(a5 + 8);
    goto LABEL_27;
  }

  *(a5 + 864) = v30;
  *(a5 + 896) = v28;
  *(a5 + 904) = v29;
  v84 = 4;
LABEL_109:
  *(a5 + 856) = v84;
  return 2;
}

uint64_t CopyUncompressedBlockToOutput(size_t *a1, void **a2, size_t *a3, uint64_t a4)
{
  if (!BrotliEnsureRingBuffer(a4))
  {
    return 4294967270;
  }

  for (i = *(a4 + 756); ; i = 0)
  {
    do
    {
      if (i == 1)
      {
        goto LABEL_29;
      }
    }

    while (i);
    v9 = *(a4 + 16);
    v10 = *(a4 + 40) - *(a4 + 24);
    if (v10 <= 0x40000000)
    {
      v11 = (v9 >> 3) + v10;
    }

    else
    {
      v11 = 0x40000000;
    }

    if (*(a4 + 132) < v11)
    {
      v11 = *(a4 + 132);
    }

    v12 = *(a4 + 88);
    v13 = *(a4 + 100);
    if (v12 + v11 <= v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13 - v12;
    }

    v15 = (*(a4 + 136) + v12);
    v16 = v14;
    v17 = v14 != 0;
    if (v9 >= 8 && v14)
    {
      v18 = *(a4 + 8);
      v19 = v16;
      do
      {
        v20 = v19;
        *v15++ = v18;
        v9 = *(a4 + 16) - 8;
        v18 = *(a4 + 8) >> 8;
        *(a4 + 8) = v18;
        *(a4 + 16) = v9;
        v17 = --v19 != 0;
      }

      while (v9 >= 8 && v20 != 1);
    }

    else
    {
      v19 = v14;
    }

    if (v9 <= 0x3F)
    {
      *(a4 + 8) &= ~(-1 << v9);
    }

    if (v17)
    {
      memcpy(v15, *(a4 + 24), v19);
      *(a4 + 24) += v19;
    }

    v22 = *(a4 + 88) + v16;
    *(a4 + 88) = v22;
    v23 = *(a4 + 132);
    *(a4 + 132) = v23 - v16;
    if (v22 < 1 << (*(a4 + 772) >> 6))
    {
      break;
    }

    *(a4 + 756) = 1;
LABEL_29:
    result = WriteRingBuffer(a4, a1, a2, a3, 0);
    if (result != 1)
    {
      return result;
    }

    if (*(a4 + 100) == 1 << (*(a4 + 772) >> 6))
    {
      *(a4 + 96) = *(a4 + 92);
    }

    *(a4 + 756) = 0;
  }

  if (v23 == v16)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t SkipMetadataBlock(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 132);
  if (!v1)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (v3 >= 8)
  {
    v4 = v3 >> 3;
    if (v3 >> 3 >= v1)
    {
      v4 = *(a1 + 132);
    }

    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 8);
      v7 = v18;
      v8 = v4;
      do
      {
        *v7++ = v6;
        v3 -= 8;
        v6 >>= 8;
        v9 = v8 - 1;
        v4 = v8 != 1;
        if (v3 < 8)
        {
          break;
        }

        --v8;
      }

      while (v8);
      *(a1 + 8) = v6;
      *(a1 + 16) = v3;
    }

    else
    {
      v9 = 0;
      v7 = v18;
    }

    if (v3 <= 0x3F)
    {
      *(a1 + 8) &= ~(-1 << v3);
    }

    if (v4)
    {
      v10 = *(a1 + 24);
      memcpy(v7, v10, v9);
      *(a1 + 24) = &v10[v9];
    }

    v11 = *(a1 + 728);
    if (v11)
    {
      v11(*(a1 + 736), v18, v5);
      v1 = *(a1 + 132);
    }

    v1 -= v5;
    *(a1 + 132) = v1;
    if (!v1)
    {
      return 1;
    }
  }

  v12 = *(a1 + 24);
  v13 = *(a1 + 40) - v12;
  v14 = 0x40000000;
  if (v13 <= 0x40000000)
  {
    v14 = (*(a1 + 16) >> 3) + v13;
  }

  v15 = v1 >= v14 ? v14 : v1;
  if (v15 < 1)
  {
    return 2;
  }

  v16 = *(a1 + 728);
  if (v16)
  {
    v16(*(a1 + 736));
    v12 = *(a1 + 24);
    v1 = *(a1 + 132);
  }

  *(a1 + 24) = v12 + v15;
  *(a1 + 132) = v1 - v15;
  if (v1 != v15)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t DecodeContextMap(size_t a1, unint64_t *a2, unsigned __int8 **a3, uint64_t a4)
{
  v8 = *(a4 + 852);
  result = 4294967265;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }
    }

    else
    {
      result = DecodeVarLenUint8(a4, (a4 + 8), a2);
      if (result != 1)
      {
        return result;
      }

      ++*a2;
      *(a4 + 2680) = 0;
      v15 = (*(a4 + 48))(*(a4 + 64), a1);
      *a3 = v15;
      if (!v15)
      {
        return 4294967271;
      }

      if (*a2 <= 1)
      {
        bzero(v15, a1);
        return 1;
      }

      *(a4 + 852) = 1;
    }

    v11 = *(a4 + 16);
    if (v11 >= 5)
    {
      v13 = *(a4 + 8);
    }

    else
    {
      v12 = *(a4 + 24);
      if (v12 == *(a4 + 40))
      {
        return 2;
      }

      v13 = (*v12 << v11) | *(a4 + 8);
      v11 |= 8uLL;
      *(a4 + 24) = v12 + 1;
    }

    v16 = -5;
    if ((v13 & 1) == 0)
    {
      v16 = -1;
    }

    v17 = 5;
    if ((v13 & 1) == 0)
    {
      v17 = 1;
    }

    v14 = ((v13 << 63) >> 63) & (((v13 >> 1) & 0xF) + 1);
    *(a4 + 2688) = v14;
    *(a4 + 8) = v13 >> v17;
    *(a4 + 16) = v11 + v16;
    *(a4 + 852) = 2;
    goto LABEL_22;
  }

  if (v8 == 2)
  {
    v14 = *(a4 + 2688);
LABEL_22:
    result = ReadHuffmanCode(v14 + *a2, v14 + *a2, (a4 + 2704), 0, a4);
    if (result != 1)
    {
      return result;
    }

    v10 = 0xFFFFLL;
    *(a4 + 2696) = 0xFFFFLL;
    *(a4 + 852) = 3;
    goto LABEL_24;
  }

  if (v8 == 4)
  {
    goto LABEL_26;
  }

  if (v8 != 3)
  {
    return result;
  }

  v10 = *(a4 + 2696);
LABEL_24:
  v18 = *(a4 + 2680);
  v19 = *(a4 + 2688);
  v20 = *a3;
  v42 = v10;
  v21 = v10 != 0xFFFF;
  if (v18 >= a1 && v10 == 0xFFFF)
  {
LABEL_26:
    v22 = *(a4 + 16);
    if (v22)
    {
      v23 = *(a4 + 8);
      v24 = v22 - 1;
    }

    else
    {
      v40 = *(a4 + 24);
      if (v40 == *(a4 + 40))
      {
        result = 2;
        v41 = 4;
LABEL_61:
        *(a4 + 852) = v41;
        return result;
      }

      v23 = *(a4 + 8) | *v40;
      *(a4 + 24) = v40 + 1;
      v24 = 7;
    }

    *(a4 + 8) = v23 >> 1;
    *(a4 + 16) = v24;
    if (v23)
    {
      InverseMoveToFrontTransform(*a3, a1, a4);
    }

    v41 = 0;
    result = 1;
    goto LABEL_61;
  }

  while (1)
  {
    v25 = *(a4 + 16);
    if (!v21)
    {
      if (v25 >= 0xF)
      {
        v29 = *(a4 + 8);
LABEL_36:
        v32 = (a4 + 2704 + 4 * v29);
        v33 = *v32;
        if (v33 >= 9)
        {
          v25 -= 8;
          v29 >>= 8;
          v32 += 4 * (v29 & ~(-1 << (v33 - 8)) & 0x7F) + 4 * *(v32 + 1);
          LODWORD(v33) = *v32;
        }

        *(a4 + 8) = v29 >> v33;
        *(a4 + 16) = v25 - v33;
        v10 = *(v32 + 1);
        v42 = v10;
        if (!v10)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v26 = *(a4 + 40);
        v27 = *(a4 + 24);
        while (v27 != v26)
        {
          v28 = *v27++;
          v29 = (v28 << v25) | *(a4 + 8);
          v30 = v25 + 8;
          *(a4 + 8) = v29;
          *(a4 + 16) = v25 + 8;
          *(a4 + 24) = v27;
          v31 = v25 >= 7;
          v25 += 8;
          if (v31)
          {
            v25 = v30;
            goto LABEL_36;
          }
        }

        if (!SafeDecodeSymbol((a4 + 2704), (a4 + 8), &v42))
        {
          v10 = 0xFFFFLL;
          goto LABEL_67;
        }

        v10 = v42;
        if (!v42)
        {
LABEL_52:
          v20[v18] = 0;
          goto LABEL_53;
        }
      }

      if (v10 > v19)
      {
        v20[v18] = v10 - v19;
LABEL_53:
        ++v18;
        goto LABEL_54;
      }

      v25 = *(a4 + 16);
    }

    if (v25 < v10)
    {
      break;
    }

    v37 = *(a4 + 8);
LABEL_48:
    *(a4 + 8) = v37 >> v10;
    *(a4 + 16) = v25 - v10;
    v38 = (v37 & ~(-1 << v10)) + (1 << v10);
    v39 = v38 + v18;
    if (v38 + v18 > a1)
    {
      return 4294967288;
    }

    bzero(&v20[v18], v38);
    v18 = v39;
LABEL_54:
    v21 = 0;
    if (v18 >= a1)
    {
      goto LABEL_26;
    }
  }

  v34 = *(a4 + 40);
  v35 = *(a4 + 24);
  while (v35 != v34)
  {
    v36 = *v35++;
    v37 = (v36 << v25) | *(a4 + 8);
    v25 += 8;
    *(a4 + 8) = v37;
    *(a4 + 16) = v25;
    *(a4 + 24) = v35;
    if (v25 >= v10)
    {
      goto LABEL_48;
    }
  }

LABEL_67:
  *(a4 + 2696) = v10;
  *(a4 + 2680) = v18;
  return 2;
}

uint64_t BrotliEnsureRingBuffer(uint64_t a1)
{
  v1 = *(a1 + 768);
  if (*(a1 + 100) == v1)
  {
    return 1;
  }

  v4 = *(a1 + 136);
  result = (*(a1 + 48))(*(a1 + 64), v1 + 542);
  *(a1 + 136) = result;
  if (result)
  {
    *(result + *(a1 + 768) - 2) = 0;
    *(*(a1 + 136) + *(a1 + 768) - 1) = 0;
    if (v4)
    {
      memcpy(*(a1 + 136), v4, *(a1 + 88));
      (*(a1 + 56))(*(a1 + 64), v4);
    }

    v5 = *(a1 + 768);
    *(a1 + 100) = v5;
    *(a1 + 104) = v5 - 1;
    *(a1 + 144) = *(a1 + 136) + v5;
    return 1;
  }

  else
  {
    *(a1 + 136) = v4;
  }

  return result;
}

uint64_t ProcessCommands(uint64_t a1)
{
  v2 = *(a1 + 88);
  LODWORD(v3) = *(a1 + 4);
  v4 = *(a1 + 808);
  if (v4)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 24) < *(a1 + 32))
  {
    BrotliWarmupBitReader((a1 + 8));
    v6 = *a1;
    result = 4294967265;
    if (*a1 > 8)
    {
      if (v6 == 9)
      {
        goto LABEL_15;
      }

      if (v6 == 10)
      {
        v8 = v2;
        goto LABEL_74;
      }

      return result;
    }

    if (v6 == 7)
    {
      goto LABEL_101;
    }

    if (v6 != 8)
    {
      return result;
    }

LABEL_113:
    while (1)
    {
      v83 = v2;
      if (*(a1 + 272))
      {
        break;
      }

      v87 = 0;
      v105 = *(a1 + 136);
      v91 = v2;
      v106 = *(a1 + 104);
      v107 = *(v105 + (v106 & (v2 - 1)));
      v108 = *(v105 + (v106 & (v2 - 2)));
      v109 = v2;
      while (1)
      {
        v110 = *(a1 + 24);
        if (v110 >= *(a1 + 32))
        {
          goto LABEL_140;
        }

        if (!*(a1 + 280))
        {
          break;
        }

        v111 = *(*(a1 + 184) + 8 * *(*(a1 + 168) + (*(*(a1 + 160) + v108 + 256) | *(*(a1 + 160) + v107))));
        v112 = *(a1 + 8);
        v113 = *(a1 + 16);
        if (v113 <= 0x10)
        {
          v112 |= *v110 << v113;
          v113 += 48;
          *(a1 + 24) = v110 + 6;
        }

        v114 = (v111 + 4 * v112);
        v115 = *v114;
        if (v115 >= 9)
        {
          v113 -= 8;
          v112 >>= 8;
          v114 += 4 * (v112 & ~(-1 << (v115 - 8))) + 4 * *(v114 + 1);
          LODWORD(v115) = *v114;
        }

        *(a1 + 8) = v112 >> v115;
        *(a1 + 16) = v113 - v115;
        v116 = v114[2];
        *(*(a1 + 136) + v83 + v87) = v116;
        --*(a1 + 280);
        v2 = *(a1 + 100);
        if (v109 + v87 + 1 == v2)
        {
LABEL_144:
          *a1 = 13;
          LODWORD(v3) = ~v87 + v3;
LABEL_96:
          result = 1;
          goto LABEL_13;
        }

        ++v87;
        v108 = v107;
        v107 = v116;
        if (v3 == v87)
        {
LABEL_141:
          v2 = v83 + v87;
          if (*(a1 + 132) <= 0)
          {
            LODWORD(v3) = 0;
LABEL_90:
            v65 = 14;
            goto LABEL_95;
          }

LABEL_15:
          v9 = v2;
          v10 = *(a1 + 712);
          if ((v10 & 0x80000000) == 0)
          {
            v11 = v10 == 0;
            *(a1 + 276) = v11;
            v12 = *(a1 + 108) - 1;
            *(a1 + 108) = v12;
            v13 = *(a1 + 4 * (v12 & 3) + 112);
            goto LABEL_37;
          }

          if (!*(a1 + 296))
          {
            DecodeDistanceBlockSwitch(a1);
          }

          v14 = *(*(a1 + 232) + 8 * *(a1 + 716));
          v15 = *(a1 + 8);
          v16 = *(a1 + 16);
          if (v16 <= 0x10)
          {
            v17 = *(a1 + 24);
            v15 |= *v17 << v16;
            v16 += 48;
            *(a1 + 24) = v17 + 6;
          }

          v18 = (v14 + 4 * v15);
          v19 = *v18;
          if (v19 >= 9)
          {
            v16 -= 8;
            v15 >>= 8;
            v18 += 4 * (v15 & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
            LODWORD(v19) = *v18;
          }

          v20 = v19;
          v21 = v16 - v19;
          v22 = v15 >> v20;
          *(a1 + 8) = v15 >> v20;
          *(a1 + 16) = v21;
          v23 = *(v18 + 1);
          --*(a1 + 296);
          *(a1 + 276) = 0;
          if (v23 > 0xF)
          {
            v25 = *(a1 + 848 + v23);
            if (v21 <= 0x20)
            {
              v26 = *(a1 + 24);
              v27 = *v26 << v21;
              v21 += 32;
              v22 |= v27;
              *(a1 + 24) = v26 + 1;
            }

            v11 = 0;
            *(a1 + 8) = v22 >> v25;
            *(a1 + 16) = v21 - v25;
            v13 = ((v22 & ~(-1 << v25)) << *(a1 + 384)) + *(a1 + 8 * v23 + 1392);
          }

          else
          {
            *(a1 + 712) = v23;
            if (v23 <= 3)
            {
              v11 = 1u >> v23;
              *(a1 + 276) = 1u >> v23;
              v24 = *(a1 + 108);
              v13 = *(a1 + 4 * ((v24 + ~v23) & 3) + 112);
              *(a1 + 712) = v13;
              *(a1 + 108) = v24 - v11;
LABEL_38:
              v30 = *(a1 + 92);
              v31 = *(a1 + 96);
              if (v31 != v30)
              {
                if (v2 >= v30)
                {
                  v31 = *(a1 + 92);
                }

                else
                {
                  v31 = v2;
                }

                *(a1 + 96) = v31;
              }

              v3 = *(a1 + 708);
              v32 = v13 - v31;
              if (v13 > v31)
              {
                if (v13 > 2147483644)
                {
                  return 4294967280;
                }

                if (v5 >= v32)
                {
                  if (InitializeCompoundDictionaryCopy(a1, v5 - v32, *(a1 + 708)))
                  {
                    v2 += CopyFromCompoundDictionary(a1, v2);
                    goto LABEL_88;
                  }

                  return 4294967278;
                }

                if ((v3 - 4) > 0x1B)
                {
                  return 4294967284;
                }

                v33 = 0;
                v34 = *(a1 + 800);
                if (*(v34 + 248))
                {
                  v33 = *(v34 + (*(*(a1 + 160) + *(*(a1 + 136) + (*(a1 + 104) & (v2 - 2))) + 256) | *(*(a1 + 160) + *(*(a1 + 136) + (*(a1 + 104) & (v2 - 1))))) + 252);
                }

                v35 = v34 + 8 * v33;
                v36 = *(v35 + 320);
                v37 = *(v35 + 832);
                LODWORD(v35) = *(v36 + 4 * v3 + 32);
                v38 = *(v36 + v3);
                v39 = v13 - v5 + ~v31;
                v40 = v39 >> v38;
                *(a1 + 108) += v11;
                v41 = v35 + (v39 & ~(-1 << v38)) * v3;
                v42 = *(v37 + 24);
                if (v39 >> v38 < v42 && *(v36 + v3) || (v43 = *(v34 + 316), v43 < 2))
                {
LABEL_58:
                  v45 = v36;
                  goto LABEL_59;
                }

                v44 = v39 - v42 * ((1 << v38) & 0xFFFFFFFE);
                while (1)
                {
                  if (v33)
                  {
                    v45 = *(v34 + 320);
                    v46 = *(v45 + v3);
                    if (v46)
                    {
                      v47 = *(*(v34 + 832) + 24) * ((1 << v46) & 0xFFFFFFFE);
                      v48 = __OFSUB__(v44, v47);
                      v49 = v44 - v47;
                      if (v49 < 0 != v48)
                      {
                        v40 = v44 >> v46;
                        v41 = *(v45 + 4 * v3 + 32) + (v44 & ~(-1 << v46)) * v3;
                        v37 = *(v34 + 832);
LABEL_59:
                        if (!*(v45 + v3))
                        {
                          return 4294967284;
                        }

                        v50 = *(v45 + 168);
                        if (!v50)
                        {
                          return 4294967277;
                        }

                        if (v40 >= *(v37 + 24))
                        {
                          return 4294967285;
                        }

                        v51 = (v50 + v41);
                        v52 = (*(a1 + 136) + v2);
                        if (v40 == *(v37 + 48))
                        {
                          memcpy(v52, v51, v3);
                          v53 = v3;
                          goto LABEL_87;
                        }

                        v53 = BrotliTransformDictionaryWord(v52, v51, v3, v37, v40);
                        if (!v53 && *(a1 + 712) < 121)
                        {
                          return 4294967285;
                        }

LABEL_87:
                        v2 += v53;
                        *(a1 + 132) -= v53;
LABEL_88:
                        if (v2 >= *(a1 + 100))
                        {
                          v65 = 15;
                          goto LABEL_95;
                        }

LABEL_89:
                        if (*(a1 + 132) <= 0)
                        {
                          goto LABEL_90;
                        }

                        while (1)
                        {
LABEL_101:
                          v66 = *(a1 + 24);
                          if (v66 >= *(a1 + 32))
                          {
                            *a1 = 7;
                            goto LABEL_12;
                          }

                          v67 = *(a1 + 288);
                          if (v67)
                          {
                            break;
                          }

                          DecodeCommandBlockSwitch(a1);
                        }

                        v68 = *(a1 + 152);
                        v70 = *(a1 + 8);
                        v69 = *(a1 + 16);
                        if (v69 <= 0x10)
                        {
                          v71 = *v66;
                          v66 = (v66 + 6);
                          v70 |= v71 << v69;
                          v69 += 48;
                          *(a1 + 24) = v66;
                        }

                        v72 = (v68 + 4 * v70);
                        v73 = *v72;
                        if (v73 >= 9)
                        {
                          v69 -= 8;
                          v70 >>= 8;
                          v72 += 4 * (v70 & ~(-1 << (v73 - 8))) + 4 * *(v72 + 1);
                          LODWORD(v73) = *v72;
                        }

                        v74 = v69 - v73;
                        v75 = v70 >> v73;
                        *(a1 + 8) = v75;
                        *(a1 + 16) = v74;
                        v76 = &kCmdLut + 8 * *(v72 + 1);
                        v77 = *v76;
                        v78 = v76[1];
                        v79 = v76[3];
                        *(a1 + 712) = v76[2];
                        *(a1 + 276) = v79;
                        v80 = *(v76 + 2);
                        v81 = *(v76 + 3);
                        *(a1 + 716) = *(*(a1 + 176) + v79);
                        if (v77)
                        {
                          if (v74 <= 0x20)
                          {
                            v117 = *v66++;
                            v75 |= v117 << v74;
                            v74 += 32;
                            *(a1 + 24) = v66;
                          }

                          v82 = v75 & ~(-1 << v77);
                          v74 -= v77;
                          v75 >>= v77;
                          *(a1 + 8) = v75;
                          *(a1 + 16) = v74;
                        }

                        else
                        {
                          v82 = 0;
                        }

                        if (v74 <= 0x20)
                        {
                          v75 |= *v66 << v74;
                          v74 += 32;
                          *(a1 + 24) = v66 + 1;
                        }

                        *(a1 + 8) = v75 >> v78;
                        *(a1 + 16) = v74 - v78;
                        *(a1 + 708) = (v75 & ~(-1 << v78)) + v81;
                        *(a1 + 288) = v67 - 1;
                        LODWORD(v3) = v82 + v80;
                        if (v82 + v80)
                        {
                          *(a1 + 132) -= v3;
                          goto LABEL_113;
                        }

                        goto LABEL_15;
                      }

                      v44 = v49;
                    }
                  }

                  v34 += 8;
                  --v33;
                  if (!--v43)
                  {
                    goto LABEL_58;
                  }
                }
              }

              v54 = *(a1 + 108);
              v55 = *(a1 + 104) & (v2 - v13);
              v56 = *(a1 + 136);
              v8 = v2;
              v57 = (v56 + v2);
              v58 = (v56 + v55);
              v2 += v3;
              *(a1 + 4 * (v54 & 3) + 112) = v13;
              *(a1 + 108) = v54 + 1;
              *(a1 + 132) -= v3;
              *v57 = *v58;
              if (v55 + v3 <= v9 || v2 <= v55)
              {
                v60 = *(a1 + 100);
                if (v2 < v60 && v55 + v3 < v60)
                {
                  if (v3 >= 17)
                  {
                    if (v3 < 0x21)
                    {
                      v57[1] = v58[1];
                    }

                    else
                    {
                      memcpy(v57 + 1, v58 + 1, (v3 - 16));
                    }
                  }

                  goto LABEL_89;
                }
              }

              v2 = v9;
LABEL_74:
              v62 = -v8;
              v63 = v2 - *(a1 + 100);
              do
              {
                v48 = __OFSUB__(v3, 1);
                LODWORD(v3) = v3 - 1;
                if (((v3 & 0x80000000) != 0) != v48)
                {
                  v2 = -v62;
                  goto LABEL_89;
                }

                *(*(a1 + 136) + v8) = *(*(a1 + 136) + ((v8 - *(a1 + 712)) & *(a1 + 104)));
                ++v8;
                --v62;
              }

              while (!__CFADD__(v63++, 1));
              v2 = -v62;
              v65 = 16;
LABEL_95:
              *a1 = v65;
              goto LABEL_96;
            }

            v11 = 0;
            if (v23 >= 0xA)
            {
              v28 = -10;
            }

            else
            {
              v28 = -4;
            }

            if (v23 >= 0xA)
            {
              v29 = 2;
            }

            else
            {
              v29 = 3;
            }

            v13 = ((0x605142u >> (4 * (v28 + v23))) & 7) + *(a1 + 4 * ((*(a1 + 108) + v29) & 3) + 112) - 3;
            if (v13 < 1)
            {
              v13 = 0x7FFFFFFF;
            }
          }

LABEL_37:
          *(a1 + 712) = v13;
          goto LABEL_38;
        }
      }

LABEL_139:
      v2 = v91 + v87;
      LODWORD(v3) = v3 - v87;
      DecodeLiteralBlockSwitch(a1);
    }

    v85 = *(a1 + 8);
    v84 = *(a1 + 16);
    if (v84 <= 8)
    {
      v86 = *(a1 + 24);
      v85 |= *v86 << v84;
      *(a1 + 8) = v85;
      *(a1 + 16) = v84 + 56;
      *(a1 + 24) = v86 + 7;
    }

    v87 = 0;
    v88 = (*(a1 + 416) + 4 * v85);
    v89 = *v88;
    v90 = *(v88 + 1);
    v91 = v2;
    v92 = v2;
    while (1)
    {
      v93 = *(a1 + 24);
      if (v93 >= *(a1 + 32))
      {
        break;
      }

      if (!*(a1 + 280))
      {
        goto LABEL_139;
      }

      v94 = *(a1 + 416);
      v95 = *(a1 + 16);
      if (v89 >= 9)
      {
        v100 = *(a1 + 8);
        if (v95 <= 0x10)
        {
          v101 = *v93;
          v93 = (v93 + 6);
          v100 |= v101 << v95;
          v95 += 48;
          *(a1 + 24) = v93;
        }

        v102 = v94 + 4 * v100;
        v103 = v100 >> 8;
        v90 = v102 + 4 * v90 + 4 * (v103 & ~(-1 << (v89 - 8)));
        v104 = *v90;
        v96 = v95 - v104 - 8;
        v97 = v103 >> v104;
        *(a1 + 8) = v97;
        *(a1 + 16) = v96;
        LOWORD(v90) = *(v90 + 2);
      }

      else
      {
        v96 = v95 - v89;
        v97 = *(a1 + 8) >> v89;
        *(a1 + 8) = v97;
        *(a1 + 16) = v96;
      }

      if (v96 <= 8)
      {
        v97 |= *v93 << v96;
        *(a1 + 8) = v97;
        *(a1 + 16) = v96 + 56;
        *(a1 + 24) = v93 + 7;
      }

      v98 = v90;
      v99 = (v94 + 4 * v97);
      v89 = *v99;
      v90 = *(v99 + 1);
      *(*(a1 + 136) + v83 + v87) = v98;
      --*(a1 + 280);
      v2 = *(a1 + 100);
      if (v92 + v87 + 1 == v2)
      {
        goto LABEL_144;
      }

      if (v3 == ++v87)
      {
        goto LABEL_141;
      }
    }

LABEL_140:
    v2 = v83 + v87;
    *a1 = 8;
    LODWORD(v3) = v3 - v87;
  }

LABEL_12:
  result = 2;
LABEL_13:
  *(a1 + 88) = v2;
  *(a1 + 4) = v3;
  return result;
}

uint64_t SafeProcessCommands(uint64_t a1)
{
  v2 = *(a1 + 88);
  LODWORD(v3) = *(a1 + 4);
  v4 = *(a1 + 808);
  if (v4)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *a1;
  result = 4294967265;
  if (v6 > 8)
  {
    if (v6 == 9)
    {
      goto LABEL_91;
    }

    if (v6 != 10)
    {
      return result;
    }

    v8 = v2;
LABEL_11:
    v9 = -v8;
    v10 = v2 - *(a1 + 100);
    while (1)
    {
      v11 = __OFSUB__(v3, 1);
      LODWORD(v3) = v3 - 1;
      if (((v3 & 0x80000000) != 0) != v11)
      {
        break;
      }

      *(*(a1 + 136) + v8) = *(*(a1 + 136) + ((v8 - *(a1 + 712)) & *(a1 + 104)));
      ++v8;
      --v9;
      v12 = __CFADD__(v10++, 1);
      if (v12)
      {
        v2 = -v9;
        v13 = 16;
        goto LABEL_182;
      }
    }

    v2 = -v9;
    if (*(a1 + 132) > 0)
    {
      goto LABEL_18;
    }

    v13 = 14;
LABEL_182:
    *a1 = v13;
    goto LABEL_183;
  }

  if (v6 == 7)
  {
    goto LABEL_18;
  }

  if (v6 != 8)
  {
    return result;
  }

LABEL_49:
  LODWORD(v46) = v2;
  while (1)
  {
    *a1 = 8;
    if (!*(a1 + 272))
    {
      break;
    }

    v46 = v46;
    v47 = *(a1 + 280);
    while (v47)
    {
      v131 = 0;
      v48 = *(a1 + 416);
      v49 = *(a1 + 16);
      if (v49 >= 0xF)
      {
        v53 = *(a1 + 8);
LABEL_60:
        v55 = &v48[4 * v53];
        v56 = *v55;
        if (v56 >= 9)
        {
          v49 -= 8;
          v53 >>= 8;
          v55 += 4 * (v53 & ~(-1 << (v56 - 8)) & 0x7F) + 4 * *(v55 + 1);
          LODWORD(v56) = *v55;
        }

        *(a1 + 8) = v53 >> v56;
        *(a1 + 16) = v49 - v56;
        v57 = *(v55 + 1);
      }

      else
      {
        v50 = *(a1 + 40);
        v51 = *(a1 + 24);
        while (v51 != v50)
        {
          v52 = *v51++;
          v53 = (v52 << v49) | *(a1 + 8);
          v54 = v49 + 8;
          *(a1 + 8) = v53;
          *(a1 + 16) = v49 + 8;
          *(a1 + 24) = v51;
          v12 = v49 >= 7;
          v49 += 8;
          if (v12)
          {
            v49 = v54;
            goto LABEL_60;
          }
        }

        if (!SafeDecodeSymbol(v48, (a1 + 8), &v131))
        {
          goto LABEL_86;
        }

        LOBYTE(v57) = v131;
      }

      *(*(a1 + 136) + v46) = v57;
      v47 = *(a1 + 280) - 1;
      *(a1 + 280) = v47;
      ++v46;
      v2 = *(a1 + 100);
      if (v2 == v46)
      {
        goto LABEL_184;
      }

      LODWORD(v3) = v3 - 1;
      if (!v3)
      {
        goto LABEL_88;
      }
    }

LABEL_85:
    if (!SafeDecodeLiteralBlockSwitch(a1))
    {
LABEL_86:
      result = 2;
      goto LABEL_87;
    }
  }

  v58 = *(a1 + 136);
  v46 = v46;
  v59 = *(a1 + 104);
  v60 = *(v58 + (v59 & (v46 - 1)));
  v61 = *(v58 + (v59 & (v46 - 2)));
  v62 = *(a1 + 280);
  do
  {
    if (!v62)
    {
      goto LABEL_85;
    }

    v63 = *(*(a1 + 184) + 8 * *(*(a1 + 168) + (*(*(a1 + 160) + v61 + 256) | *(*(a1 + 160) + v60))));
    v131 = 0;
    v64 = *(a1 + 16);
    if (v64 >= 0xF)
    {
      v68 = *(a1 + 8);
LABEL_77:
      v70 = &v63[4 * v68];
      v71 = *v70;
      if (v71 >= 9)
      {
        v64 -= 8;
        v68 >>= 8;
        v70 += 4 * (v68 & ~(-1 << (v71 - 8)) & 0x7F) + 4 * *(v70 + 1);
        LODWORD(v71) = *v70;
      }

      *(a1 + 8) = v68 >> v71;
      *(a1 + 16) = v64 - v71;
      v72 = v70[2];
    }

    else
    {
      v65 = *(a1 + 40);
      v66 = *(a1 + 24);
      while (v66 != v65)
      {
        v67 = *v66++;
        v68 = (v67 << v64) | *(a1 + 8);
        v69 = v64 + 8;
        *(a1 + 8) = v68;
        *(a1 + 16) = v64 + 8;
        *(a1 + 24) = v66;
        v12 = v64 >= 7;
        v64 += 8;
        if (v12)
        {
          v64 = v69;
          goto LABEL_77;
        }
      }

      if (!SafeDecodeSymbol(v63, (a1 + 8), &v131))
      {
        goto LABEL_86;
      }

      v72 = v131;
    }

    *(*(a1 + 136) + v46) = v72;
    v62 = *(a1 + 280) - 1;
    *(a1 + 280) = v62;
    ++v46;
    v2 = *(a1 + 100);
    if (v2 == v46)
    {
LABEL_184:
      *a1 = 13;
      LODWORD(v3) = v3 - 1;
LABEL_183:
      result = 1;
      goto LABEL_175;
    }

    v61 = v60;
    v60 = v72;
    LODWORD(v3) = v3 - 1;
  }

  while (v3);
LABEL_88:
  if (*(a1 + 132) <= 0)
  {
    LODWORD(v3) = 0;
    *a1 = 14;
    result = 1;
LABEL_87:
    v2 = v46;
LABEL_175:
    *(a1 + 88) = v2;
    *(a1 + 4) = v3;
    return result;
  }

  LODWORD(v3) = 0;
  v2 = v46;
  while (1)
  {
LABEL_91:
    *a1 = 9;
    v73 = *(a1 + 712);
    if (v73 < 0)
    {
      if (!*(a1 + 296) && !SafeDecodeDistanceBlockSwitch(a1))
      {
        goto LABEL_174;
      }

      v77 = a1 + 848;
      v131 = 0;
      v78 = *(*(a1 + 232) + 8 * *(a1 + 716));
      v15 = *(a1 + 8);
      v14 = *(a1 + 16);
      v16 = *(a1 + 24);
      v79 = *(a1 + 40);
      v18 = &v79[-v16];
      v80 = v14;
      v81 = v15;
      if (v14 > 0xE)
      {
LABEL_99:
        v85 = &v78[4 * v81];
        v86 = *v85;
        if (v86 >= 9)
        {
          v80 -= 8;
          v81 >>= 8;
          v85 += 4 * (v81 & ~(-1 << (v86 - 8)) & 0x7F) + 4 * *(v85 + 1);
          LODWORD(v86) = *v85;
        }

        *(a1 + 8) = v81 >> v86;
        *(a1 + 16) = v80 - v86;
        v87 = *(v85 + 1);
      }

      else
      {
        v81 = *(a1 + 8);
        v82 = *(a1 + 24);
        v83 = *(a1 + 16);
        while (v82 != v79)
        {
          v84 = *v82++;
          v81 |= v84 << v83;
          v80 = v83 + 8;
          *(a1 + 8) = v81;
          *(a1 + 16) = v83 + 8;
          *(a1 + 24) = v82;
          v12 = v83 >= 7;
          v83 += 8;
          if (v12)
          {
            goto LABEL_99;
          }
        }

        if (!SafeDecodeSymbol(v78, (a1 + 8), &v131))
        {
          goto LABEL_174;
        }

        v87 = v131;
      }

      v88 = *(a1 + 296);
      *(a1 + 296) = v88 - 1;
      *(a1 + 276) = 0;
      if ((v87 & 0xFFFFFFF0) != 0)
      {
        v89 = 0;
        v90 = *(v77 + v87);
        if (*(v77 + v87))
        {
          v91 = *(a1 + 16);
          if (v91 < v90)
          {
            v92 = *(a1 + 40);
            v93 = *(a1 + 24);
            while (v93 != v92)
            {
              v94 = *v93++;
              v95 = (v94 << v91) | *(a1 + 8);
              v91 += 8;
              *(a1 + 8) = v95;
              *(a1 + 16) = v91;
              *(a1 + 24) = v93;
              if (v91 >= v90)
              {
                goto LABEL_114;
              }
            }

            *(a1 + 296) = v88;
LABEL_171:
            *(a1 + 8) = v15;
            *(a1 + 16) = v14;
            *(a1 + 40) = &v18[v16];
            v130 = &v18[v16 - 27];
            if ((v18 - 28) >= 0xFFFFFFFFFFFFFFE3)
            {
              v130 = v16;
            }

            *(a1 + 24) = v16;
            *(a1 + 32) = v130;
LABEL_174:
            result = 2;
            goto LABEL_175;
          }

          v95 = *(a1 + 8);
LABEL_114:
          v89 = v95 & ~(-1 << v90);
          *(a1 + 8) = v95 >> v90;
          *(a1 + 16) = v91 - v90;
        }

        v74 = 0;
        v76 = (v89 << *(a1 + 384)) + *(a1 + 8 * v87 + 1392);
      }

      else
      {
        *(a1 + 712) = v87;
        if (v87 <= 3)
        {
          v74 = 1u >> v87;
          *(a1 + 276) = 1u >> v87;
          v96 = *(a1 + 108);
          v76 = *(a1 + 4 * ((v96 + ~v87) & 3) + 112);
          *(a1 + 712) = v76;
          *(a1 + 108) = v96 - v74;
          goto LABEL_125;
        }

        v74 = 0;
        if (v87 >= 0xA)
        {
          v97 = 10;
        }

        else
        {
          v97 = 3;
        }

        if (v87 >= 0xA)
        {
          v98 = -10;
        }

        else
        {
          v98 = -4;
        }

        v76 = ((0x605142u >> (4 * (v98 + v87))) & 7) + *(a1 + 4 * ((*(a1 + 108) + v97) & 3) + 112) - 3;
        if (v76 < 1)
        {
          v76 = 0x7FFFFFFF;
        }
      }
    }

    else
    {
      v74 = v73 == 0;
      *(a1 + 276) = v74;
      v75 = *(a1 + 108) - 1;
      *(a1 + 108) = v75;
      v76 = *(a1 + 4 * (v75 & 3) + 112);
    }

    *(a1 + 712) = v76;
LABEL_125:
    v99 = *(a1 + 92);
    v100 = *(a1 + 96);
    if (v100 != v99)
    {
      if (v2 >= v99)
      {
        v100 = *(a1 + 92);
      }

      else
      {
        v100 = v2;
      }

      *(a1 + 96) = v100;
    }

    v3 = *(a1 + 708);
    v101 = v76 - v100;
    if (v76 > v100)
    {
      break;
    }

    v122 = *(a1 + 108);
    v123 = *(a1 + 104) & (v2 - v76);
    v124 = *(a1 + 136);
    v8 = v2;
    v125 = (v124 + v2);
    v126 = (v124 + v123);
    v127 = v3 + v2;
    *(a1 + 4 * (v122 & 3) + 112) = v76;
    *(a1 + 108) = v122 + 1;
    *(a1 + 132) -= v3;
    *v125 = *v126;
    if (v123 + v3 > v2 && v127 > v123)
    {
      goto LABEL_11;
    }

    v129 = *(a1 + 100);
    if (v127 >= v129 || v123 + v3 >= v129)
    {
      goto LABEL_11;
    }

    if (v3 >= 17)
    {
      if (v3 < 0x21)
      {
        v125[1] = v126[1];
      }

      else
      {
        memcpy(v125 + 1, v126 + 1, (v3 - 16));
      }
    }

LABEL_168:
    if (*(a1 + 132) <= 0)
    {
      *a1 = 14;
      result = 1;
      v2 = v127;
      goto LABEL_175;
    }

    v2 = v127;
LABEL_18:
    while (1)
    {
      *a1 = 7;
      if (*(a1 + 288))
      {
        break;
      }

      if (!SafeDecodeCommandBlockSwitch(a1))
      {
        goto LABEL_174;
      }
    }

    v131 = 0;
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    v18 = &v17[-v16];
    v19 = *(a1 + 152);
    v20 = v14;
    v21 = v15;
    if (v14 > 0xE)
    {
LABEL_26:
      v25 = &v19[4 * v21];
      v26 = *v25;
      if (v26 >= 9)
      {
        v20 -= 8;
        v21 >>= 8;
        v25 += 4 * (v21 & ~(-1 << (v26 - 8)) & 0x7F) + 4 * *(v25 + 1);
        LODWORD(v26) = *v25;
      }

      *(a1 + 8) = v21 >> v26;
      *(a1 + 16) = v20 - v26;
      v27 = *(v25 + 1);
      v131 = v27;
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *(a1 + 24);
      v23 = *(a1 + 16);
      while (v22 != v17)
      {
        v24 = *v22++;
        v21 |= v24 << v23;
        v20 = v23 + 8;
        *(a1 + 8) = v21;
        *(a1 + 16) = v23 + 8;
        *(a1 + 24) = v22;
        v12 = v23 >= 7;
        v23 += 8;
        if (v12)
        {
          goto LABEL_26;
        }
      }

      if (!SafeDecodeSymbol(v19, (a1 + 8), &v131))
      {
        goto LABEL_174;
      }

      v27 = v131;
    }

    v28 = 0;
    v29 = &kCmdLut + 8 * v27;
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    LODWORD(v3) = *(v29 + 2);
    v34 = *(v29 + 3);
    *(a1 + 712) = v32;
    *(a1 + 276) = v33;
    *(a1 + 716) = *(*(a1 + 176) + v33);
    if (v30)
    {
      v35 = *(a1 + 16);
      if (v35 < v30)
      {
        v36 = *(a1 + 40);
        v37 = *(a1 + 24);
        while (v37 != v36)
        {
          v38 = *v37++;
          v39 = (v38 << v35) | *(a1 + 8);
          v35 += 8;
          *(a1 + 8) = v39;
          *(a1 + 16) = v35;
          *(a1 + 24) = v37;
          if (v35 >= v30)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_171;
      }

      v39 = *(a1 + 8);
LABEL_38:
      v28 = v39 & ~(-1 << v30);
      *(a1 + 8) = v39 >> v30;
      *(a1 + 16) = v35 - v30;
    }

    v40 = 0;
    if (v31)
    {
      v41 = *(a1 + 16);
      if (v41 < v31)
      {
        v42 = *(a1 + 40);
        v43 = *(a1 + 24);
        while (v43 != v42)
        {
          v44 = *v43++;
          v45 = (v44 << v41) | *(a1 + 8);
          v41 += 8;
          *(a1 + 8) = v45;
          *(a1 + 16) = v41;
          *(a1 + 24) = v43;
          if (v41 >= v31)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_171;
      }

      v45 = *(a1 + 8);
LABEL_46:
      v40 = v45 & ~(-1 << v31);
      *(a1 + 8) = v45 >> v31;
      *(a1 + 16) = v41 - v31;
    }

    *(a1 + 708) = v40 + v34;
    --*(a1 + 288);
    if (v28 + v3)
    {
      *(a1 + 132) -= v28 + v3;
      LODWORD(v3) = v28 + v3;
      goto LABEL_49;
    }

    LODWORD(v3) = 0;
  }

  if (v76 > 2147483644)
  {
    return 4294967280;
  }

  if (v5 >= v101)
  {
    if (InitializeCompoundDictionaryCopy(a1, v5 - v101, *(a1 + 708)))
    {
      v2 += CopyFromCompoundDictionary(a1, v2);
      goto LABEL_166;
    }

    return 4294967278;
  }

  if ((v3 - 4) > 0x1B)
  {
    return 4294967284;
  }

  v102 = 0;
  v103 = *(a1 + 800);
  if (*(v103 + 248))
  {
    v102 = *(v103 + (*(*(a1 + 160) + *(*(a1 + 136) + (*(a1 + 104) & (v2 - 2))) + 256) | *(*(a1 + 160) + *(*(a1 + 136) + (*(a1 + 104) & (v2 - 1))))) + 252);
  }

  v104 = v103 + 8 * v102;
  v105 = *(v104 + 320);
  v106 = *(v104 + 832);
  LODWORD(v104) = *(v105 + 4 * v3 + 32);
  v107 = *(v105 + v3);
  v108 = v76 - v5 + ~v100;
  v109 = v108 >> v107;
  *(a1 + 108) += v74;
  v110 = v104 + (v108 & ~(-1 << v107)) * v3;
  v111 = *(v106 + 24);
  if (v108 >> v107 < v111 && *(v105 + v3) || (v112 = *(v103 + 316), v112 < 2))
  {
LABEL_145:
    v114 = v105;
    goto LABEL_146;
  }

  v113 = v108 - v111 * ((1 << v107) & 0xFFFFFFFE);
  while (2)
  {
    if (!v102 || (v114 = *(v103 + 320), (v115 = *(v114 + v3)) == 0))
    {
LABEL_144:
      v103 += 8;
      --v102;
      if (!--v112)
      {
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  v116 = *(*(v103 + 832) + 24) * ((1 << v115) & 0xFFFFFFFE);
  v11 = __OFSUB__(v113, v116);
  v117 = v113 - v116;
  if (v117 < 0 == v11)
  {
    v113 = v117;
    goto LABEL_144;
  }

  v109 = v113 >> v115;
  v110 = *(v114 + 4 * v3 + 32) + (v113 & ~(-1 << v115)) * v3;
  v106 = *(v103 + 832);
LABEL_146:
  if (!*(v114 + v3))
  {
    return 4294967284;
  }

  v118 = *(v114 + 168);
  if (!v118)
  {
    return 4294967277;
  }

  if (v109 < *(v106 + 24))
  {
    v119 = (v118 + v110);
    v120 = (*(a1 + 136) + v2);
    if (v109 == *(v106 + 48))
    {
      memcpy(v120, v119, v3);
      v121 = v3;
      goto LABEL_165;
    }

    v121 = BrotliTransformDictionaryWord(v120, v119, v3, v106, v109);
    if (v121 || *(a1 + 712) >= 121)
    {
LABEL_165:
      v2 += v121;
      *(a1 + 132) -= v121;
LABEL_166:
      if (v2 < *(a1 + 100))
      {
        v127 = v2;
        goto LABEL_168;
      }

      v13 = 15;
      goto LABEL_182;
    }
  }

  return 4294967285;
}

void **WrapRingBuffer(void **result)
{
  if ((*(result + 772) & 8) != 0)
  {
    v1 = result;
    result = memcpy(result[17], v1[18], *(v1 + 22));
    *(v1 + 193) &= ~8u;
  }

  return result;
}

uint64_t CopyFromCompoundDictionary(uint64_t a1, int a2)
{
  v4 = *(a1 + 808);
  v5 = v4[5];
  v6 = a2;
  do
  {
    v7 = v4[4] - v5;
    if (!v7)
    {
      break;
    }

    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[v8 + 39] - (v9 + v4[v8 + 38]);
    if (v7 >= v10)
    {
      v7 = v4[v8 + 39] - (v9 + v4[v8 + 38]);
    }

    v11 = v7 >= *(a1 + 100) - v6 ? *(a1 + 100) - v6 : v7;
    memcpy((*(a1 + 136) + v6), (*&v4[2 * v8 + 6] + v9), v11);
    v4[3] += v11;
    v5 = v4[5] + v11;
    v4[5] = v5;
    if (v11 == v10)
    {
      *(v4 + 1) = (v4[2] + 1);
    }

    v6 += v11;
  }

  while (v6 != *(a1 + 100));
  return (v6 - a2);
}

void *BrotliDecoderTakeOutput(uint64_t a1, size_t *a2)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0x1000000;
  }

  v7 = v3;
  v8 = 0;
  if (*(a1 + 136) && (*(a1 + 128) & 0x80000000) == 0)
  {
    WrapRingBuffer(a1);
    v5 = WriteRingBuffer(a1, &v7, &v8, 0, 1);
    if ((v5 & 0xFFFFFFFD) == 1)
    {
      result = v8;
      *a2 = v3 - v7;
      return result;
    }

    if ((v5 & 0x80000000) != 0)
    {
      SaveErrorCode(a1, v5, 0);
    }
  }

  result = 0;
  *a2 = 0;
  return result;
}

BOOL BrotliDecoderIsFinished(uint64_t a1)
{
  if (*a1 != 26)
  {
    return 0;
  }

  if ((*(a1 + 128) & 0x80000000) != 0 || !*(a1 + 136))
  {
    return 1;
  }

  return *(a1 + 88) - *(a1 + 432) + *(a1 + 424) * *(a1 + 100) == 0;
}

const char *BrotliDecoderErrorString(int a1)
{
  if ((a1 + 31) > 0x22)
  {
    return "INVALID";
  }

  else
  {
    return off_1E794A6E0[a1 + 31];
  }
}

void *BrotliDecoderSetMetadataCallbacks(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[90] = a2;
  result[91] = a3;
  result[92] = a4;
  return result;
}

uint64_t SafeDecodeSymbol(unsigned __int8 *a1, unint64_t *a2, void *a3)
{
  v3 = a2[1];
  if (!v3)
  {
    if (!*a1)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v4 = *a2;
  a1 += 4 * *a2;
  v5 = *a1;
  if (v5 <= 8)
  {
    if (v3 >= v5)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 < 9)
  {
    return 0;
  }

  a1 += 4 * *(a1 + 1) + (((v4 & ~(-1 << v5)) >> 6) & 0x1FFFFFFFFFFFFFCLL);
  v6 = *a1;
  if (v3 - 8 < v6)
  {
    return 0;
  }

  v5 = v6 + 8;
LABEL_11:
  *a2 = v4 >> v5;
  a2[1] = v3 - v5;
LABEL_12:
  *a3 = *(a1 + 1);
  return 1;
}

unsigned __int8 *InverseMoveToFrontTransform(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 440);
  v8 = (a3 + 452);
  *(a3 + 452) = 50462976;
  v9 = 2;
  if ((v7 + 1) > 2)
  {
    v9 = v7 + 1;
  }

  v10 = (v9 + 2) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = vdupq_n_s64(v9 - 2);
  v12 = xmmword_1AB465F80;
  v13 = a3 + 468;
  v14.i64[0] = 0x404040404040404;
  v14.i64[1] = 0x404040404040404;
  v15.i64[0] = 0x1010101010101010;
  v15.i64[1] = 0x1010101010101010;
  do
  {
    v16 = vdupq_n_s64(v6);
    v17 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v16, xmmword_1AB465FA0)));
    v18 = vaddq_s32(v12, v14);
    if (vuzp1_s16(v17, *v11.i8).u8[0])
    {
      *(v13 - 12) = v18.i32[0];
    }

    if (vuzp1_s16(v17, *&v11).i8[2])
    {
      *(v13 - 8) = v18.i32[1];
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v16, xmmword_1AB465F90)))).i32[1])
    {
      *(v13 - 4) = v18.i64[1];
    }

    v6 += 4;
    v12 = vaddq_s32(v12, v15);
    v13 += 16;
  }

  while (v10 != v6);
  if (a2)
  {
    v19 = 0;
    do
    {
      v20 = *v5;
      v21 = v8[v20];
      *v5++ = v21;
      *(a3 + 451) = v21;
      result = memmove(v8, (a3 + 451), v20 + 1);
      v19 |= v20;
      --v4;
    }

    while (v4);
    v22 = v19 >> 2;
  }

  else
  {
    v22 = 0;
  }

  *(a3 + 440) = v22;
  return result;
}

uint64_t SafeDecodeCommandBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 264);
  v4 = (*(a1 + 256) + 2528);
  v40 = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  if (v5 > 0xE)
  {
LABEL_7:
    v15 = &v4[4 * v10];
    v16 = *v15;
    if (v16 >= 9)
    {
      v9 -= 8;
      v10 >>= 8;
      v15 += 4 * (v10 & ~(-1 << (v16 - 8)) & 0x7F) + 4 * *(v15 + 1);
      LODWORD(v16) = *v15;
    }

    *(a1 + 8) = v10 >> v16;
    *(a1 + 16) = v9 - v16;
    v40 = *(v15 + 1);
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    while (v11 != v8)
    {
      v13 = *v11++;
      v10 |= v13 << v12;
      v9 = v12 + 8;
      *(a1 + 8) = v10;
      *(a1 + 16) = v12 + 8;
      *(a1 + 24) = v11;
      v14 = v12 >= 7;
      v12 += 8;
      if (v14)
      {
        goto LABEL_7;
      }
    }

    if (!SafeDecodeSymbol(v4, (a1 + 8), &v40))
    {
      return 0;
    }
  }

  v41 = 0;
  if (*(a1 + 764))
  {
    v17 = *(a1 + 304);
  }

  else
  {
    v18 = (v3 + 1584);
    v19 = *(a1 + 16);
    if (v19 >= 0xF)
    {
      v23 = *(a1 + 8);
LABEL_21:
      v25 = &v18[4 * v23];
      v26 = *v25;
      if (v26 >= 9)
      {
        v19 -= 8;
        v23 >>= 8;
        v25 += 4 * (v23 & ~(-1 << (v26 - 8)) & 0x7F) + 4 * *(v25 + 1);
        LODWORD(v26) = *v25;
      }

      *(a1 + 8) = v23 >> v26;
      *(a1 + 16) = v19 - v26;
      v17 = *(v25 + 1);
    }

    else
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      while (v21 != v20)
      {
        v22 = *v21++;
        v23 = (v22 << v19) | *(a1 + 8);
        v24 = v19 + 8;
        *(a1 + 8) = v23;
        *(a1 + 16) = v19 + 8;
        *(a1 + 24) = v21;
        v14 = v19 >= 7;
        v19 += 8;
        if (v14)
        {
          v19 = v24;
          goto LABEL_21;
        }
      }

      if (!SafeDecodeSymbol(v18, (a1 + 8), &v41))
      {
        goto LABEL_34;
      }

      v17 = v41;
    }
  }

  v27 = (&_kBrotliPrefixCodeRanges + 4 * v17);
  v28 = *(v27 + 2);
  v29 = *v27;
  v30 = *(a1 + 16);
  if (v30 < v28)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    while (v32 != v31)
    {
      v33 = *v32++;
      v34 = (v33 << v30) | *(a1 + 8);
      v30 += 8;
      *(a1 + 8) = v34;
      *(a1 + 16) = v30;
      *(a1 + 24) = v32;
      if (v30 >= v28)
      {
        goto LABEL_30;
      }
    }

    *(a1 + 304) = v17;
LABEL_34:
    *(a1 + 764) = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 40) = v8;
    if ((v8 - v7 - 28) >= 0xFFFFFFFFFFFFFFE3)
    {
      v36 = v7;
    }

    else
    {
      v36 = v8 - 27;
    }

    *(a1 + 24) = v7;
    *(a1 + 32) = v36;
    return 0;
  }

  v34 = *(a1 + 8);
LABEL_30:
  *(a1 + 8) = v34 >> v28;
  *(a1 + 16) = v30 - v28;
  *(a1 + 288) = (v34 & ~(-1 << v28)) + v29;
  *(a1 + 764) = 0;
  if (v40)
  {
    if (v40 == 1)
    {
      v35 = *(a1 + 360) + 1;
    }

    else
    {
      v35 = v40 - 2;
    }
  }

  else
  {
    v35 = *(a1 + 352);
  }

  if (v35 >= v1)
  {
    v38 = v1;
  }

  else
  {
    v38 = 0;
  }

  v39 = v35 - v38;
  *(a1 + 352) = *(a1 + 360);
  *(a1 + 360) = v39;
  *(a1 + 152) = *(*(a1 + 208) + 8 * v39);
  return 1;
}

void *DecodeCommandBlockSwitch(void *result)
{
  v1 = result[40];
  if (v1 >= 2)
  {
    v2 = result[32] + 2528;
    v3 = result[1];
    v4 = result[2];
    if (v4 <= 0x10)
    {
      v5 = result[3];
      v3 |= *v5 << v4;
      v4 += 48;
      result[3] = v5 + 6;
    }

    v6 = (v2 + 4 * v3);
    v7 = *v6;
    if (v7 >= 9)
    {
      v4 -= 8;
      v3 >>= 8;
      v6 += 4 * (v3 & ~(-1 << (v7 - 8))) + 4 * *(v6 + 1);
      LODWORD(v7) = *v6;
    }

    v8 = v7;
    v9 = result[33] + 1584;
    v10 = v4 - v8;
    v11 = v3 >> v8;
    result[1] = v3 >> v8;
    result[2] = v10;
    v12 = *(v6 + 1);
    if (v10 <= 0x10)
    {
      v13 = result[3];
      v11 |= *v13 << v10;
      v10 += 48;
      result[3] = v13 + 6;
    }

    v14 = (v9 + 4 * v11);
    v15 = *v14;
    if (v15 >= 9)
    {
      v10 -= 8;
      v11 >>= 8;
      v14 += 4 * (v11 & ~(-1 << (v15 - 8))) + 4 * *(v14 + 1);
      LODWORD(v15) = *v14;
    }

    v16 = v10 - v15;
    v17 = v11 >> v15;
    result[1] = v17;
    result[2] = v16;
    v18 = (&_kBrotliPrefixCodeRanges + 4 * *(v14 + 1));
    v19 = *(v18 + 2);
    v20 = *v18;
    if (v16 <= 0x20)
    {
      v21 = result[3];
      v17 |= *v21 << v16;
      v16 += 32;
      result[3] = v21 + 1;
    }

    result[1] = v17 >> v19;
    result[2] = v16 - v19;
    result[36] = (v17 & ~(-1 << v19)) + v20;
    if (v12)
    {
      if (v12 == 1)
      {
        v22 = result[45] + 1;
      }

      else
      {
        v22 = v12 - 2;
      }
    }

    else
    {
      v22 = result[44];
    }

    if (v22 < v1)
    {
      v1 = 0;
    }

    v23 = v22 - v1;
    result[44] = result[45];
    result[45] = v23;
    result[19] = *(result[26] + 8 * v23);
  }

  return result;
}

uint64_t SafeDecodeDistanceBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 264);
  v4 = (*(a1 + 256) + 5056);
  v41 = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  if (v5 > 0xE)
  {
LABEL_7:
    v15 = &v4[4 * v10];
    v16 = *v15;
    if (v16 >= 9)
    {
      v9 -= 8;
      v10 >>= 8;
      v15 += 4 * (v10 & ~(-1 << (v16 - 8)) & 0x7F) + 4 * *(v15 + 1);
      LODWORD(v16) = *v15;
    }

    *(a1 + 8) = v10 >> v16;
    *(a1 + 16) = v9 - v16;
    v41 = *(v15 + 1);
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    while (v11 != v8)
    {
      v13 = *v11++;
      v10 |= v13 << v12;
      v9 = v12 + 8;
      *(a1 + 8) = v10;
      *(a1 + 16) = v12 + 8;
      *(a1 + 24) = v11;
      v14 = v12 >= 7;
      v12 += 8;
      if (v14)
      {
        goto LABEL_7;
      }
    }

    if (!SafeDecodeSymbol(v4, (a1 + 8), &v41))
    {
      return 0;
    }
  }

  v42 = 0;
  if (*(a1 + 764))
  {
    v17 = *(a1 + 304);
  }

  else
  {
    v18 = (v3 + 3168);
    v19 = *(a1 + 16);
    if (v19 >= 0xF)
    {
      v23 = *(a1 + 8);
LABEL_21:
      v25 = &v18[4 * v23];
      v26 = *v25;
      if (v26 >= 9)
      {
        v19 -= 8;
        v23 >>= 8;
        v25 += 4 * (v23 & ~(-1 << (v26 - 8)) & 0x7F) + 4 * *(v25 + 1);
        LODWORD(v26) = *v25;
      }

      *(a1 + 8) = v23 >> v26;
      *(a1 + 16) = v19 - v26;
      v17 = *(v25 + 1);
    }

    else
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      while (v21 != v20)
      {
        v22 = *v21++;
        v23 = (v22 << v19) | *(a1 + 8);
        v24 = v19 + 8;
        *(a1 + 8) = v23;
        *(a1 + 16) = v19 + 8;
        *(a1 + 24) = v21;
        v14 = v19 >= 7;
        v19 += 8;
        if (v14)
        {
          v19 = v24;
          goto LABEL_21;
        }
      }

      if (!SafeDecodeSymbol(v18, (a1 + 8), &v42))
      {
        goto LABEL_34;
      }

      v17 = v42;
    }
  }

  v27 = (&_kBrotliPrefixCodeRanges + 4 * v17);
  v28 = *(v27 + 2);
  v29 = *v27;
  v30 = *(a1 + 16);
  if (v30 < v28)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    while (v32 != v31)
    {
      v33 = *v32++;
      v34 = (v33 << v30) | *(a1 + 8);
      v30 += 8;
      *(a1 + 8) = v34;
      *(a1 + 16) = v30;
      *(a1 + 24) = v32;
      if (v30 >= v28)
      {
        goto LABEL_30;
      }
    }

    *(a1 + 304) = v17;
LABEL_34:
    *(a1 + 764) = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 40) = v8;
    if ((v8 - v7 - 28) >= 0xFFFFFFFFFFFFFFE3)
    {
      v36 = v7;
    }

    else
    {
      v36 = v8 - 27;
    }

    *(a1 + 24) = v7;
    *(a1 + 32) = v36;
    return 0;
  }

  v34 = *(a1 + 8);
LABEL_30:
  *(a1 + 8) = v34 >> v28;
  *(a1 + 16) = v30 - v28;
  *(a1 + 296) = (v34 & ~(-1 << v28)) + v29;
  *(a1 + 764) = 0;
  if (v41)
  {
    if (v41 == 1)
    {
      v35 = *(a1 + 376) + 1;
    }

    else
    {
      v35 = v41 - 2;
    }
  }

  else
  {
    v35 = *(a1 + 368);
  }

  if (v35 >= v1)
  {
    v38 = v1;
  }

  else
  {
    v38 = 0;
  }

  v39 = v35 - v38;
  *(a1 + 368) = *(a1 + 376);
  *(a1 + 376) = v39;
  v40 = *(a1 + 408) + 4 * v39;
  *(a1 + 176) = v40;
  *(a1 + 716) = *(v40 + *(a1 + 276));
  return 1;
}

uint64_t DecodeDistanceBlockSwitch(uint64_t result)
{
  v1 = *(result + 328);
  if (v1 >= 2)
  {
    v2 = *(result + 256) + 5056;
    v3 = *(result + 8);
    v4 = *(result + 16);
    if (v4 <= 0x10)
    {
      v5 = *(result + 24);
      v3 |= *v5 << v4;
      v4 += 48;
      *(result + 24) = v5 + 6;
    }

    v6 = (v2 + 4 * v3);
    v7 = *v6;
    if (v7 >= 9)
    {
      v4 -= 8;
      v3 >>= 8;
      v6 += 4 * (v3 & ~(-1 << (v7 - 8))) + 4 * *(v6 + 1);
      LODWORD(v7) = *v6;
    }

    v8 = v7;
    v9 = *(result + 264) + 3168;
    v10 = v4 - v8;
    v11 = v3 >> v8;
    *(result + 8) = v3 >> v8;
    *(result + 16) = v10;
    v12 = *(v6 + 1);
    if (v10 <= 0x10)
    {
      v13 = *(result + 24);
      v11 |= *v13 << v10;
      v10 += 48;
      *(result + 24) = v13 + 6;
    }

    v14 = (v9 + 4 * v11);
    v15 = *v14;
    if (v15 >= 9)
    {
      v10 -= 8;
      v11 >>= 8;
      v14 += 4 * (v11 & ~(-1 << (v15 - 8))) + 4 * *(v14 + 1);
      LODWORD(v15) = *v14;
    }

    v16 = v10 - v15;
    v17 = v11 >> v15;
    *(result + 8) = v17;
    *(result + 16) = v16;
    v18 = (&_kBrotliPrefixCodeRanges + 4 * *(v14 + 1));
    v19 = *(v18 + 2);
    v20 = *v18;
    if (v16 <= 0x20)
    {
      v21 = *(result + 24);
      v17 |= *v21 << v16;
      v16 += 32;
      *(result + 24) = v21 + 1;
    }

    *(result + 8) = v17 >> v19;
    *(result + 16) = v16 - v19;
    *(result + 296) = (v17 & ~(-1 << v19)) + v20;
    if (v12)
    {
      if (v12 == 1)
      {
        v22 = *(result + 376) + 1;
      }

      else
      {
        v22 = v12 - 2;
      }
    }

    else
    {
      v22 = *(result + 368);
    }

    if (v22 < v1)
    {
      v1 = 0;
    }

    v23 = v22 - v1;
    *(result + 368) = *(result + 376);
    *(result + 376) = v23;
    v24 = *(result + 408) + 4 * v23;
    *(result + 176) = v24;
    *(result + 716) = *(v24 + *(result + 276));
  }

  return result;
}

uint64_t InitializeCompoundDictionaryCopy(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 808);
  v4 = v3[54];
  if (v4 == -1)
  {
    v5 = v3[1];
    v6 = 32 - __clz(v5 - 1);
    if (v6 <= 8)
    {
      v6 = 8;
    }

    v4 = v6 - 8;
    v3[54] = v4;
    if (v5 >= 1)
    {
      v7 = 0;
      for (i = 0; i < v5; i += 1 << v4)
      {
        v9 = &v3[v7-- + 39];
        do
        {
          v10 = *v9++;
          ++v7;
        }

        while (v10 < i);
        *(v3 + (i >> v4) + 220) = v7;
      }
    }
  }

  v11 = *(v3 + (a2 >> v4) + 220);
  v12 = v11 - 1;
  v13 = &v3[v11 + 39];
  do
  {
    v14 = *v13++;
    ++v12;
  }

  while (v14 <= a2);
  if (v3[1] < a3 + a2)
  {
    return 0;
  }

  v16 = *(a1 + 108);
  *(a1 + 4 * (v16 & 3) + 112) = *(a1 + 712);
  *(a1 + 108) = v16 + 1;
  *(a1 + 132) -= a3;
  v17 = a2 - v3[v12 + 38];
  v3[2] = v12;
  v3[3] = v17;
  v3[4] = a3;
  v3[5] = 0;
  return 1;
}

uint64_t SafeDecodeLiteralBlockSwitch(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 256);
  v4 = *(a1 + 264);
  v40 = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  if (v5 > 0xE)
  {
LABEL_7:
    v15 = &v3[4 * v10];
    v16 = *v15;
    if (v16 >= 9)
    {
      v9 -= 8;
      v10 >>= 8;
      v15 += 4 * (v10 & ~(-1 << (v16 - 8)) & 0x7F) + 4 * *(v15 + 1);
      LODWORD(v16) = *v15;
    }

    *(a1 + 8) = v10 >> v16;
    *(a1 + 16) = v9 - v16;
    v40 = *(v15 + 1);
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    while (v11 != v8)
    {
      v13 = *v11++;
      v10 |= v13 << v12;
      v9 = v12 + 8;
      *(a1 + 8) = v10;
      *(a1 + 16) = v12 + 8;
      *(a1 + 24) = v11;
      v14 = v12 >= 7;
      v12 += 8;
      if (v14)
      {
        goto LABEL_7;
      }
    }

    if (!SafeDecodeSymbol(v3, (a1 + 8), &v40))
    {
      return 0;
    }
  }

  v41 = 0;
  if (*(a1 + 764))
  {
    v17 = *(a1 + 304);
  }

  else
  {
    v18 = *(a1 + 16);
    if (v18 >= 0xF)
    {
      v22 = *(a1 + 8);
LABEL_21:
      v24 = &v4[4 * v22];
      v25 = *v24;
      if (v25 >= 9)
      {
        v18 -= 8;
        v22 >>= 8;
        v24 += 4 * (v22 & ~(-1 << (v25 - 8)) & 0x7F) + 4 * *(v24 + 1);
        LODWORD(v25) = *v24;
      }

      *(a1 + 8) = v22 >> v25;
      *(a1 + 16) = v18 - v25;
      v17 = *(v24 + 1);
    }

    else
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 24);
      while (v20 != v19)
      {
        v21 = *v20++;
        v22 = (v21 << v18) | *(a1 + 8);
        v23 = v18 + 8;
        *(a1 + 8) = v22;
        *(a1 + 16) = v18 + 8;
        *(a1 + 24) = v20;
        v14 = v18 >= 7;
        v18 += 8;
        if (v14)
        {
          v18 = v23;
          goto LABEL_21;
        }
      }

      if (!SafeDecodeSymbol(v4, (a1 + 8), &v41))
      {
        goto LABEL_34;
      }

      v17 = v41;
    }
  }

  v26 = (&_kBrotliPrefixCodeRanges + 4 * v17);
  v27 = *(v26 + 2);
  v28 = *v26;
  v29 = *(a1 + 16);
  if (v29 < v27)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    while (v31 != v30)
    {
      v32 = *v31++;
      v33 = (v32 << v29) | *(a1 + 8);
      v29 += 8;
      *(a1 + 8) = v33;
      *(a1 + 16) = v29;
      *(a1 + 24) = v31;
      if (v29 >= v27)
      {
        goto LABEL_30;
      }
    }

    *(a1 + 304) = v17;
LABEL_34:
    *(a1 + 764) = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 40) = v8;
    if ((v8 - v7 - 28) >= 0xFFFFFFFFFFFFFFE3)
    {
      v35 = v7;
    }

    else
    {
      v35 = v8 - 27;
    }

    *(a1 + 24) = v7;
    *(a1 + 32) = v35;
    return 0;
  }

  v33 = *(a1 + 8);
LABEL_30:
  *(a1 + 8) = v33 >> v27;
  *(a1 + 16) = v29 - v27;
  *(a1 + 280) = (v33 & ~(-1 << v27)) + v28;
  *(a1 + 764) = 0;
  if (v40)
  {
    if (v40 == 1)
    {
      v34 = *(a1 + 344) + 1;
    }

    else
    {
      v34 = v40 - 2;
    }
  }

  else
  {
    v34 = *(a1 + 336);
  }

  if (v34 >= v1)
  {
    v37 = v1;
  }

  else
  {
    v37 = 0;
  }

  v38 = v34 - v37;
  *(a1 + 336) = *(a1 + 344);
  *(a1 + 344) = v38;
  v39 = *(a1 + 784);
  *(a1 + 168) = v39 + (v38 << 6);
  *(a1 + 272) = (*(a1 + 4 * (v38 >> 5) + 816) >> (v38 & 0x1F)) & 1;
  *(a1 + 416) = *(*(a1 + 184) + 8 * *(v39 + (v38 << 6)));
  *(a1 + 160) = &_kBrotliContextLookupTable + 512 * (*(*(a1 + 792) + v38) & 3);
  return 1;
}

uint64_t DecodeLiteralBlockSwitch(uint64_t result)
{
  v1 = *(result + 312);
  if (v1 >= 2)
  {
    v2 = *(result + 256);
    v3 = *(result + 8);
    v4 = *(result + 16);
    if (v4 <= 0x10)
    {
      v5 = *(result + 24);
      v3 |= *v5 << v4;
      v4 += 48;
      *(result + 24) = v5 + 6;
    }

    v6 = (v2 + 4 * v3);
    v7 = *v6;
    if (v7 >= 9)
    {
      v4 -= 8;
      v3 >>= 8;
      v6 += 4 * (v3 & ~(-1 << (v7 - 8))) + 4 * *(v6 + 1);
      LODWORD(v7) = *v6;
    }

    v8 = *(result + 264);
    v9 = v4 - v7;
    v10 = v3 >> v7;
    *(result + 8) = v10;
    *(result + 16) = v9;
    v11 = *(v6 + 1);
    if (v9 <= 0x10)
    {
      v12 = *(result + 24);
      v10 |= *v12 << v9;
      v9 += 48;
      *(result + 24) = v12 + 6;
    }

    v13 = (v8 + 4 * v10);
    v14 = *v13;
    if (v14 >= 9)
    {
      v9 -= 8;
      v10 >>= 8;
      v13 += 4 * (v10 & ~(-1 << (v14 - 8))) + 4 * *(v13 + 1);
      LODWORD(v14) = *v13;
    }

    v15 = v9 - v14;
    v16 = v10 >> v14;
    *(result + 8) = v16;
    *(result + 16) = v15;
    v17 = (&_kBrotliPrefixCodeRanges + 4 * *(v13 + 1));
    v18 = *(v17 + 2);
    v19 = *v17;
    if (v15 <= 0x20)
    {
      v20 = *(result + 24);
      v16 |= *v20 << v15;
      v15 += 32;
      *(result + 24) = v20 + 1;
    }

    *(result + 8) = v16 >> v18;
    *(result + 16) = v15 - v18;
    *(result + 280) = (v16 & ~(-1 << v18)) + v19;
    if (v11)
    {
      if (v11 == 1)
      {
        v21 = *(result + 344) + 1;
      }

      else
      {
        v21 = v11 - 2;
      }
    }

    else
    {
      v21 = *(result + 336);
    }

    if (v21 < v1)
    {
      v1 = 0;
    }

    v22 = v21 - v1;
    *(result + 336) = *(result + 344);
    *(result + 344) = v22;
    v23 = *(result + 784);
    *(result + 168) = v23 + (v22 << 6);
    *(result + 272) = (*(result + 4 * (v22 >> 5) + 816) >> (v22 & 0x1F)) & 1;
    *(result + 416) = *(*(result + 184) + 8 * *(v23 + (v22 << 6)));
    *(result + 160) = &_kBrotliContextLookupTable + 512 * (*(*(result + 792) + v22) & 3);
  }

  return result;
}

uint64_t JEPluralCategoryForNumber(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = MEMORY[0x1AC59D7C0](v4);
  if (!v6)
  {
    v6 = @"en";
  }

  if (!CFStringGetCString(v6, buffer, 157, 0x8000100u))
  {
    strcpy(buffer, "en");
  }

  uplrules_open();
  [v5 doubleValue];
  v7 = uplrules_select();
  uplrules_close();
  v8 = 0;
  if (v7)
  {
    v9 = JEConvertUCharToCString(v13, v7);
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v9 length:strlen(v9) encoding:4 freeWhenDone:1];
  }

  v10 = 0;
  while (1)
  {
    v11 = PluralCategories[v10];
    if ([v8 isEqualToString:off_1E794A7F8[v11]])
    {
      break;
    }

    if (++v10 == 6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        JEPluralCategoryForNumber_cold_1(v4);
      }

      v11 = 5;
      break;
    }
  }

  return v11;
}

id JEPluralCategoryPluralFormKeyFromBaseKey(unint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8[0] = v3;
  if (a1 >= 6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown plural category value %ld", a1, v8[0]}];
  }

  else
  {
    v4 = off_1E794A7F8[a1];
  }

  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v5 componentsJoinedByString:@"."];

  return v6;
}

_DWORD *CreatePreparedDictionary(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = 17;
  if (a3 <= 0x200000)
  {
    v8 = 7;
  }

  else
  {
    v6 = 0x200000;
    do
    {
      v6 *= 2;
    }

    while (v6 < a3 && v5++ < 0x15);
    v8 = v5 - 10;
  }

  v9 = 0;
  if (v8 <= 0x10 && v5 >= v8 && v5 - v8 <= 0xF)
  {
    v10 = (1 << v8);
    v11 = (1 << v5);
    v47 = v8;
    if ((8 << v8) + 4 * a3 + (2 << v5) + (4 << v5))
    {
      v12 = BrotliAllocate(a1);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 + 4 * v10;
    v14 = (v13 + 4 * v10);
    v15 = &v14[2 * v11];
    v16 = &v15[4 * v11];
    bzero(v14, 2 * (1 << v5));
    if (a3 >= 8)
    {
      v17 = 8;
      do
      {
        v18 = v17 - 8;
        v19 = ((0x1FE35A7BD3579BD3 * (*(a2 + v17 - 8) & 0xFFFFFFFFFFuLL)) >> (64 - v5));
        v20 = *&v14[2 * v19];
        if (v20)
        {
          v21 = *&v15[4 * v19];
        }

        else
        {
          v21 = -1;
        }

        *&v16[4 * v18] = v21;
        *&v15[4 * v19] = v18;
        v22 = v20 + 1;
        if ((v22 & 0xFFE0) != 0)
        {
          v23 = 32;
        }

        else
        {
          v23 = v22;
        }

        *&v14[2 * v19] = v23;
        v24 = v17++;
      }

      while (v24 < a3);
    }

    v46 = a2;
    v25 = 0;
    v26 = 0;
    do
    {
      if (v25 < v11)
      {
        for (i = 32; ; --i)
        {
          v28 = 0;
          v29 = v25;
          while (v28 <= 0xFFFE)
          {
            v30 = *&v14[2 * v29];
            if (i < v30)
            {
              v30 = i;
            }

            v28 += v30;
            v29 += v10;
            if (v29 >= v11)
            {
              goto LABEL_36;
            }
          }
        }
      }

      v28 = 0;
      i = 32;
LABEL_36:
      *(v13 + 4 * v25) = i;
      *(v12 + 4 * v25) = v28;
      v26 += v28;
      ++v25;
    }

    while (v25 != v10);
    v45 = v10 - 1;
    v31 = BrotliAllocate(a1);
    v9 = v31;
    v32 = 0;
    v33 = 0;
    *v31 = -558043677;
    v31[1] = v26;
    v34 = &v31[v10 + 6];
    v31[2] = a3;
    v31[3] = 40;
    v31[4] = v5;
    v31[5] = v47;
    *(v34 + 2 * v11 + 4 * v26) = v46;
    do
    {
      v31[v32 + 6] = v33;
      v33 += *(v12 + 4 * v32);
      *(v12 + 4 * v32++) = 0;
    }

    while (v10 != v32);
    v35 = 0;
    do
    {
      v36 = v45 & v35;
      v37 = *(v13 + 4 * (v45 & v35));
      if (v37 >= *&v14[2 * v35])
      {
        v38 = *&v14[2 * v35];
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        v39 = *(v12 + 4 * v36);
        *(v34 + 2 * v35) = v39;
        v40 = v31[v36 + 6] + v39;
        *(v12 + 4 * v36) = v39 + v38;
        v41 = &v14[4 * v35 + 2 * v11];
        v42 = (&v31[v10 + 6 + v40] + 2 * v11);
        do
        {
          v43 = *v41;
          *v42++ = v43;
          v41 = &v16[4 * v43];
          --v38;
        }

        while (v38);
        *(v42 - 1) = v43 | 0x80000000;
      }

      else
      {
        *(v34 + 2 * v35) = -1;
      }

      ++v35;
    }

    while (v35 != v11);
    BrotliFree(a1);
  }

  return v9;
}

uint64_t DestroyPreparedDictionary(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return BrotliFree(a1);
  }

  return a1;
}

uint64_t AttachPreparedDictionary(uint64_t *a1, _DWORD *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = *a1;
    if (*a1 != 15)
    {
      v4 = a1[1] + a2[2];
      a1[1] = v4;
      v5 = &a1[v3];
      v5[2] = a2;
      a1[v3 + 35] = v4;
      v6 = (&a2[(1 << a2[5]) + 6 + a2[1]] + 2 * (1 << a2[4]));
      if (*a2 != -558043680)
      {
        v6 = *v6;
      }

      v5[18] = v6;
      ++*a1;
      return 1;
    }
  }

  return v2;
}

BOOL BrotliIsMostlyUTF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  if (!a4)
  {
    v19 = 0.0;
    return a4 * a5 < v19;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = (a1 + ((v6 + a2) & a3));
    v8 = *v7;
    if (*v7 > 0)
    {
      goto LABEL_11;
    }

    v9 = a4 - v6;
    if (a4 - v6 < 2)
    {
      goto LABEL_10;
    }

    if ((v8 & 0xE0) == 0xC0)
    {
      v10 = v7[1];
      if ((v10 & 0xC0) == 0x80 && (v8 & 0x1F) << 6 > 0x7Fu)
      {
        v8 = v10 & 0x3F | ((v8 & 0x1F) << 6);
        v11 = 2;
        goto LABEL_12;
      }
    }

    if (v9 == 2)
    {
LABEL_10:
      v8 |= 0x110000u;
LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }

    if ((v8 & 0xF0) == 0xE0 && (v13 = v7[1], (v13 & 0xC0) == 0x80) && (v14 = v7[2], (v14 & 0xC0) == 0x80) && (((v8 & 0xF) << 12) | ((v13 & 0x3F) << 6)) > 0x7FF)
    {
      v8 = ((v8 & 0xF) << 12) | ((v13 & 0x3F) << 6) | v14 & 0x3F;
      v11 = 3;
    }

    else
    {
      if (v9 < 4)
      {
        goto LABEL_10;
      }

      if ((v8 & 0xF8) != 0xF0)
      {
        goto LABEL_10;
      }

      v15 = v7[1];
      if ((v15 & 0xC0) != 0x80)
      {
        goto LABEL_10;
      }

      v16 = v7[2];
      if ((v16 & 0xC0) != 0x80)
      {
        goto LABEL_10;
      }

      v17 = v7[3];
      if ((v17 & 0xC0) != 0x80)
      {
        goto LABEL_10;
      }

      v18 = ((v8 & 7) << 18) | ((v15 & 0x3F) << 12);
      if ((v18 - 0x10000) >= 0x100000)
      {
        goto LABEL_10;
      }

      v8 = v17 & 0x3F | ((v16 & 0x3F) << 6) | v18;
      v11 = 4;
    }

LABEL_12:
    v6 += v11;
    if (v8 >= 0x110000)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v5 += v12;
  }

  while (v6 < a4);
  v19 = v5;
  return a4 * a5 < v19;
}

uint64_t BrotliFindAllStaticDictionaryMatches(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  AllStaticDictionaryMatchesFor = BrotliFindAllStaticDictionaryMatchesFor(a1, a2, a3, a4, a5);
  v11 = *(a1 + 104);
  if (v11 && *(v11 + 4) >= 2u)
  {
    v12 = *(v11 + 72);
    if (v12 == a1)
    {
      v12 = *(v11 + 80);
    }

    memset_pattern16(v18, &unk_1AB467EA0, 0x98uLL);
    v13 = BrotliFindAllStaticDictionaryMatchesFor(v12, a2, a3, a4, v18);
    for (i = 0; i != 152; i += 4)
    {
      v15 = *&v18[i];
      if (v15 != 0xFFFFFFF)
      {
        v16 = v15 + 32 * *(a1 + 8) * ((1 << *(*a1 + (v15 & 0x1F))) & 0x7FFFFFE);
        if (*(a5 + i) < v16)
        {
          v16 = *(a5 + i);
        }

        *(a5 + i) = v16;
      }
    }

    return v13 | AllStaticDictionaryMatchesFor;
  }

  return AllStaticDictionaryMatchesFor;
}

uint64_t BrotliFindAllStaticDictionaryMatchesFor(uint64_t *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a1[5];
  v6 = *(v5 + 2 * ((506832829 * *a2) >> 17));
  v230 = a5 + 12;
  v7 = 0;
  if (*(v5 + 2 * ((506832829 * *a2) >> 17)))
  {
    v8 = a5 + 8;
    v228 = a5 + 20;
    v229 = a5 + 16;
    v9 = a5 + 4;
    v10 = a1[6];
    v11 = *a1;
    v12 = *a1 + 32;
    v13 = a2 + 1;
    do
    {
      v14 = (v10 + 4 * v6);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 1);
      v18 = *v14 & 0x1F;
      v19 = *(v11 + v18);
      if (v14[1])
      {
        if (v18 <= a4)
        {
          v20 = (*(v11 + 168) + *(v14 + 1) * (*v14 & 0x1F) + *(v12 + 4 * (*v14 & 0x1F)));
          if (v16 == 10)
          {
            v21 = *v20;
            if ((v21 - 97) > 0x19 || (*a2 ^ v21) != 0x20)
            {
              goto LABEL_226;
            }

            v22 = v20 + 1;
            v23 = (v18 - 1);
            if (v23 < 8)
            {
              v25 = (v18 - 1);
              v29 = a2 + 1;
              v28 = v22;
              if (v18 != 1)
              {
LABEL_121:
                v79 = &v28[v25];
                while (*v28 == *v29)
                {
                  ++v29;
                  ++v28;
                  if (!--v25)
                  {
                    v28 = v79;
                    break;
                  }
                }
              }
            }

            else
            {
              v24 = 0;
              v25 = (v18 - 1);
              do
              {
                v26 = *&v13[v24];
                v27 = *&v22[v24];
                if (v26 != v27)
                {
                  v80 = (v24 + (__clz(__rbit64(v27 ^ v26)) >> 3));
                  goto LABEL_153;
                }

                v25 -= 8;
                v24 += 8;
              }

              while (v25 > 7);
              v28 = &v22[v24];
              v29 = &v13[v24];
              if (v25)
              {
                goto LABEL_121;
              }
            }

            v80 = (v28 - v22);
LABEL_153:
            if (v80 != v23)
            {
              goto LABEL_226;
            }

            v46 = 9;
          }

          else
          {
            v39 = a2;
            v40 = v15 & 0x1F;
            if (v18)
            {
              do
              {
                v42 = *v20++;
                v41 = v42;
                v43 = v42 - 97;
                v45 = *v39++;
                v44 = v45;
                if (v43 > 0x19)
                {
                  if (v41 != v44)
                  {
                    goto LABEL_226;
                  }
                }

                else if ((v44 ^ v41) != 0x20)
                {
                  goto LABEL_226;
                }

                --v40;
              }

              while (v40);
            }

            v46 = 44;
          }

          v47 = v18 | (32 * ((v46 << v19) + v17));
          if (*(a5 + 4 * v18) < v47)
          {
            v47 = *(a5 + 4 * v18);
          }

          *(a5 + 4 * v18) = v47;
          v48 = v18 + 1;
          if (v18 + 1 >= a4)
          {
            goto LABEL_173;
          }

          v49 = &a2[v18];
          v50 = a2[v18];
          v7 = 1;
          if (v50 <= 0x27)
          {
            switch(v50)
            {
              case ' ':
                v74 = v16 == 10;
                v75 = 68;
                v76 = 4;
                goto LABEL_157;
              case '""':
                v85 = 87;
                if (v16 == 10)
                {
                  v85 = 66;
                }

                v86 = v18 | (32 * ((v85 << v19) + v17));
                if (*(a5 + 4 * v48) < v86)
                {
                  v86 = *(a5 + 4 * v48);
                }

                *(a5 + 4 * v48) = v86;
                if (v49[1] == 62)
                {
                  v53 = v16 == 10;
                  v54 = 97;
                  v55 = 69;
LABEL_218:
                  if (v53)
                  {
                    v73 = v55;
                  }

                  else
                  {
                    v73 = v54;
                  }

                  goto LABEL_221;
                }

                goto LABEL_173;
              case '\'':
                v74 = v16 == 10;
                v75 = 94;
                v76 = 74;
LABEL_157:
                if (v74)
                {
                  v73 = v76;
                }

                else
                {
                  v73 = v75;
                }

                v72 = (a5 + 4 * v48);
                goto LABEL_222;
            }
          }

          else if (a2[v18] > 0x2Du)
          {
            if (v50 == 46)
            {
              v83 = 101;
              if (v16 == 10)
              {
                v83 = 79;
              }

              v84 = v18 | (32 * ((v83 << v19) + v17));
              if (*(a5 + 4 * v48) < v84)
              {
                v84 = *(a5 + 4 * v48);
              }

              *(a5 + 4 * v48) = v84;
              if (v49[1] == 32)
              {
                v53 = v16 == 10;
                v54 = 114;
                v55 = 88;
                goto LABEL_218;
              }

              goto LABEL_173;
            }

            if (v50 == 61)
            {
              v81 = v49[1];
              if (v81 == 39)
              {
                v53 = v16 == 10;
                v54 = 116;
                v55 = 108;
                goto LABEL_218;
              }

              if (v81 == 34)
              {
                if (v16 == 10)
                {
                  v73 = 104;
                }

                else
                {
                  v73 = 105;
                }

LABEL_221:
                v72 = (v8 + 4 * v18);
LABEL_222:
                v7 = 1;
LABEL_223:
                v95 = v18 | (32 * ((v73 << v19) + v17));
                if (*v72 < v95)
                {
                  v95 = *v72;
                }

                *v72 = v95;
                goto LABEL_226;
              }

LABEL_173:
              v7 = 1;
            }
          }

          else
          {
            if (v50 == 40)
            {
              v74 = v16 == 10;
              v75 = 113;
              v76 = 78;
              goto LABEL_157;
            }

            if (v50 == 44)
            {
              v51 = 112;
              if (v16 == 10)
              {
                v51 = 99;
              }

              v52 = v18 | (32 * ((v51 << v19) + v17));
              if (*(a5 + 4 * v48) < v52)
              {
                v52 = *(a5 + 4 * v48);
              }

              *(a5 + 4 * v48) = v52;
              if (v49[1] == 32)
              {
                v53 = v16 == 10;
                v54 = 107;
                v55 = 58;
                goto LABEL_218;
              }

              goto LABEL_173;
            }
          }
        }
      }

      else
      {
        v30 = *(v11 + 168) + *(v14 + 1) * (*v14 & 0x1F) + *(v12 + 4 * (*v14 & 0x1F));
        if (v18 >= a4)
        {
          v31 = a4;
        }

        else
        {
          v31 = v15 & 0x1F;
        }

        if (v31 < 8)
        {
          v36 = a2;
          v35 = (*(v11 + 168) + *(v14 + 1) * (*v14 & 0x1F) + *(v12 + 4 * (*v14 & 0x1F)));
          if (v31)
          {
LABEL_24:
            v37 = &v35[v31];
            while (*v35 == *v36)
            {
              ++v36;
              ++v35;
              if (!--v31)
              {
                v35 = v37;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          do
          {
            v33 = *&a2[v32];
            v34 = *(v30 + v32);
            if (v33 != v34)
            {
              v38 = v32 + (__clz(__rbit64(v34 ^ v33)) >> 3);
              goto LABEL_50;
            }

            v31 -= 8;
            v32 += 8;
          }

          while (v31 > 7);
          v35 = (v30 + v32);
          v36 = &a2[v32];
          if (v31)
          {
            goto LABEL_24;
          }
        }

        v38 = &v35[-v30];
LABEL_50:
        if (v38 == v18)
        {
          v56 = *(a5 + 4 * v18);
          if (v56 >= (v18 | (32 * v17)))
          {
            v56 = v18 | (32 * v17);
          }

          *(a5 + 4 * v18) = v56;
          v7 = 1;
        }

        v57 = v18 - 1;
        if (v38 >= v18 - 1)
        {
          v58 = v18 | (32 * ((12 << v19) + v17));
          if (*(a5 + 4 * v57) < v58)
          {
            v58 = *(a5 + 4 * v57);
          }

          *(a5 + 4 * v57) = v58;
          if (v18 + 2 < a4 && a2[v57] == 105 && a2[v18] == 110 && a2[v18 + 1] == 103 && a2[v18 + 2] == 32)
          {
            v59 = v18 | (32 * ((49 << v19) + v17));
            if (*(v230 + 4 * v18) < v59)
            {
              v59 = *(v230 + 4 * v18);
            }

            *(v230 + 4 * v18) = v59;
          }

          v7 = 1;
        }

        v60 = v18 - 9;
        if (a3 > v18 - 9)
        {
          v60 = a3;
        }

        if (v18 <= 9)
        {
          v61 = a3;
        }

        else
        {
          v61 = v60;
        }

        if (v38 >= v18 - 2)
        {
          v62 = v18 - 2;
        }

        else
        {
          v62 = v38;
        }

        if (v61 <= v62)
        {
          v63 = a1[2];
          v64 = 4 * v18 - 4 * v61;
          v65 = 6 * v18 - 6 * v61;
          do
          {
            v66 = v18 | (32 * (((v64 + ((v63 >> v65) & 0x3F)) << v19) + v17));
            if (*(a5 + 4 * v61) < v66)
            {
              v66 = *(a5 + 4 * v61);
            }

            *(a5 + 4 * v61++) = v66;
            v64 -= 4;
            v65 -= 6;
          }

          while (v61 <= v62);
          v7 = 1;
        }

        if (v38 < v18)
        {
          goto LABEL_226;
        }

        v67 = v18 + 6;
        if (v18 + 6 >= a4)
        {
          goto LABEL_226;
        }

        v68 = &a2[v18];
        v69 = a2[v18];
        if (v69 > 0x3C)
        {
          if (a2[v18] > 0x65u)
          {
            if (a2[v18] > 0x6Bu)
            {
              if (v69 == 108)
              {
                v93 = v68[1];
                if (v93 == 121)
                {
                  if (v68[2] == 32)
                  {
                    v72 = (v230 + 4 * v18);
                    v73 = 61;
                    goto LABEL_223;
                  }
                }

                else if (v93 == 101 && v68[2] == 115 && v68[3] == 115 && v68[4] == 32)
                {
                  v72 = (v228 + 4 * v18);
                  v73 = 93;
                  goto LABEL_223;
                }
              }

              else if (v69 == 111 && v68[1] == 117 && v68[2] == 115 && v68[3] == 32)
              {
                v72 = (v229 + 4 * v18);
                v73 = 106;
                goto LABEL_223;
              }
            }

            else if (v69 == 102)
            {
              if (v68[1] == 117 && v68[2] == 108 && v68[3] == 32)
              {
                v72 = (v229 + 4 * v18);
                v73 = 90;
                goto LABEL_223;
              }
            }

            else if (v69 == 105)
            {
              v78 = v68[1];
              if (v78 == 122)
              {
                if (v68[2] == 101 && v68[3] == 32)
                {
                  v72 = (v229 + 4 * v18);
                  v73 = 100;
                  goto LABEL_223;
                }
              }

              else if (v78 == 118 && v68[2] == 101 && v68[3] == 32)
              {
                v72 = (v229 + 4 * v18);
                v73 = 92;
                goto LABEL_223;
              }
            }
          }

          else if (a2[v18] > 0x60u)
          {
            if (v69 == 97)
            {
              if (v68[1] == 108 && v68[2] == 32)
              {
                v72 = (v230 + 4 * v18);
                v73 = 84;
                goto LABEL_223;
              }
            }

            else if (v69 == 101)
            {
              v82 = v68[1];
              if (v82 == 115)
              {
                if (v68[2] == 116 && v68[3] == 32)
                {
                  v72 = (v229 + 4 * v18);
                  v73 = 95;
                  goto LABEL_223;
                }
              }

              else if (v82 == 114)
              {
                if (v68[2] == 32)
                {
                  v72 = (v230 + 4 * v18);
                  v73 = 82;
                  goto LABEL_223;
                }
              }

              else if (v82 == 100 && v68[2] == 32)
              {
                v72 = (v230 + 4 * v18);
                v73 = 53;
                goto LABEL_223;
              }
            }
          }

          else if (v69 == 61)
          {
            v88 = v68[1];
            if (v88 == 39)
            {
              v72 = (v8 + 4 * v18);
              v73 = 86;
              goto LABEL_223;
            }

            if (v88 == 34)
            {
              v72 = (v8 + 4 * v18);
              v73 = 70;
              goto LABEL_223;
            }
          }

          else if (v69 == 93)
          {
            v72 = (v9 + 4 * v18);
            v73 = 24;
            goto LABEL_223;
          }
        }

        else if (a2[v18] > 0x27u)
        {
          if (a2[v18] <= 0x2Du)
          {
            if (v69 == 40)
            {
              v72 = (v9 + 4 * v18);
              v73 = 57;
            }

            else
            {
              if (v69 != 44)
              {
                goto LABEL_226;
              }

              v77 = v18 | (32 * ((76 << v19) + v17));
              if (*(v9 + 4 * v18) < v77)
              {
                v77 = *(v9 + 4 * v18);
              }

              *(v9 + 4 * v18) = v77;
              if (v68[1] != 32)
              {
                goto LABEL_226;
              }

              v72 = (v8 + 4 * v18);
              v73 = 14;
            }

            goto LABEL_223;
          }

          if (v69 == 46)
          {
            v90 = v18 | (32 * ((20 << v19) + v17));
            if (*(v9 + 4 * v18) < v90)
            {
              v90 = *(v9 + 4 * v18);
            }

            *(v9 + 4 * v18) = v90;
            if (v68[1] != 32)
            {
              goto LABEL_226;
            }

            v91 = v18 | (32 * ((31 << v19) + v17));
            if (*(v8 + 4 * v18) < v91)
            {
              v91 = *(v8 + 4 * v18);
            }

            *(v8 + 4 * v18) = v91;
            if (v68[2] != 84 || v68[3] != 104)
            {
              goto LABEL_226;
            }

            v92 = v68[4];
            if (v92 == 105)
            {
              if (v68[5] == 115 && v68[6] == 32)
              {
                v72 = (a5 + 28 + 4 * v18);
                v73 = 75;
                goto LABEL_223;
              }
            }

            else if (v92 == 101 && v68[5] == 32)
            {
              v72 = (a5 + 4 * v67);
              v73 = 43;
              goto LABEL_223;
            }
          }

          else if (v69 == 58)
          {
            v72 = (v9 + 4 * v18);
            v73 = 51;
            goto LABEL_223;
          }
        }

        else if (a2[v18] > 0x21u)
        {
          if (v69 == 34)
          {
            v89 = v18 | (32 * ((19 << v19) + v17));
            if (*(v9 + 4 * v18) < v89)
            {
              v89 = *(v9 + 4 * v18);
            }

            *(v9 + 4 * v18) = v89;
            if (v68[1] != 62)
            {
              goto LABEL_226;
            }

            v72 = (v8 + 4 * v18);
            v73 = 21;
            goto LABEL_223;
          }

          if (v69 == 39)
          {
            v72 = (v9 + 4 * v18);
            v73 = 36;
            goto LABEL_223;
          }
        }

        else
        {
          if (v69 == 10)
          {
            v87 = v18 | (32 * ((22 << v19) + v17));
            if (*(v9 + 4 * v18) < v87)
            {
              v87 = *(v9 + 4 * v18);
            }

            *(v9 + 4 * v18) = v87;
            if (v68[1] != 9)
            {
              goto LABEL_226;
            }

            v72 = (v8 + 4 * v18);
            v73 = 50;
            goto LABEL_223;
          }

          if (v69 == 32)
          {
            v70 = v18 | (32 * ((1 << v19) + v17));
            if (*(v9 + 4 * v18) < v70)
            {
              v70 = *(v9 + 4 * v18);
            }

            *(v9 + 4 * v18) = v70;
            v71 = v68[1];
            if (v71 > 0x6D)
            {
              if (v68[1] > 0x73u)
              {
                if (v71 == 116)
                {
                  v99 = v68[2];
                  if (v99 == 111)
                  {
                    if (v68[3] == 32)
                    {
                      v72 = (v229 + 4 * v18);
                      v73 = 17;
                      goto LABEL_223;
                    }
                  }

                  else if (v99 == 104)
                  {
                    v100 = v68[3];
                    if (v100 == 97)
                    {
                      if (v68[4] == 116 && v68[5] == 32)
                      {
                        v72 = (a5 + 4 * v67);
                        v73 = 29;
                        goto LABEL_223;
                      }
                    }

                    else if (v100 == 101 && v68[4] == 32)
                    {
                      v72 = (v228 + 4 * v18);
                      v73 = 5;
                      goto LABEL_223;
                    }
                  }
                }

                else if (v71 == 119 && v68[2] == 105 && v68[3] == 116 && v68[4] == 104 && v68[5] == 32)
                {
                  v72 = (a5 + 4 * v67);
                  v73 = 35;
                  goto LABEL_223;
                }
              }

              else if (v71 == 110)
              {
                if (v68[2] == 111 && v68[3] == 116 && v68[4] == 32)
                {
                  v72 = (v228 + 4 * v18);
                  v73 = 80;
                  goto LABEL_223;
                }
              }

              else if (v71 == 111)
              {
                v94 = v68[2];
                if (v94 == 110)
                {
                  if (v68[3] == 32)
                  {
                    v72 = (v229 + 4 * v18);
                    v73 = 45;
                    goto LABEL_223;
                  }
                }

                else if (v94 == 102 && v68[3] == 32)
                {
                  v72 = (v229 + 4 * v18);
                  v73 = 8;
                  goto LABEL_223;
                }
              }
            }

            else if (v68[1] > 0x65u)
            {
              if (v71 == 102)
              {
                v98 = v68[2];
                if (v98 == 114)
                {
                  if (v68[3] == 111 && v68[4] == 109 && v68[5] == 32)
                  {
                    v72 = (a5 + 4 * v67);
                    v73 = 37;
                    goto LABEL_223;
                  }
                }

                else if (v98 == 111 && v68[3] == 114 && v68[4] == 32)
                {
                  v72 = (v228 + 4 * v18);
                  v73 = 25;
                  goto LABEL_223;
                }
              }

              else if (v71 == 105)
              {
                v96 = v68[2];
                if (v96 == 115)
                {
                  if (v68[3] == 32)
                  {
                    v72 = (v229 + 4 * v18);
                    v73 = 47;
                    goto LABEL_223;
                  }
                }

                else if (v96 == 110 && v68[3] == 32)
                {
                  v72 = (v229 + 4 * v18);
                  v73 = 16;
                  goto LABEL_223;
                }
              }
            }

            else if (v71 == 97)
            {
              v97 = v68[2];
              if (v97 > 0x72)
              {
                if (v97 == 115)
                {
                  if (v68[3] == 32)
                  {
                    v72 = (v229 + 4 * v18);
                    v73 = 46;
                    goto LABEL_223;
                  }
                }

                else if (v97 == 116 && v68[3] == 32)
                {
                  v72 = (v229 + 4 * v18);
                  v73 = 60;
                  goto LABEL_223;
                }
              }

              else
              {
                if (v97 == 32)
                {
                  v72 = (v230 + 4 * v18);
                  v73 = 28;
                  goto LABEL_223;
                }

                if (v97 == 110 && v68[3] == 100 && v68[4] == 32)
                {
                  v72 = (v228 + 4 * v18);
                  v73 = 10;
                  goto LABEL_223;
                }
              }
            }

            else if (v71 == 98 && v68[2] == 121 && v68[3] == 32)
            {
              v72 = (v229 + 4 * v18);
              v73 = 38;
              goto LABEL_223;
            }
          }
        }
      }

LABEL_226:
      ++v6;
    }

    while ((v15 & 0x80) == 0);
  }

  if (a4 < 5)
  {
    return v7;
  }

  v101 = *a2;
  if (v101 == 46 || v101 == 32)
  {
    v102 = a2 + 1;
    v103 = *(v5 + 2 * ((506832829 * *(a2 + 1)) >> 17));
    if (v103)
    {
      v104 = a4 - 1;
      v105 = *a1;
      v106 = *a1 + 32;
      v107 = a2 + 2;
      v108 = a1[6];
      if (v101 == 32)
      {
        v109 = 6;
      }

      else
      {
        v109 = 32;
      }

      if (v101 == 32)
      {
        v110 = 89;
      }

      else
      {
        v110 = 67;
      }

      if (v101 == 32)
      {
        v111 = 2;
      }

      else
      {
        v111 = 77;
      }

      while (1)
      {
        v112 = (v108 + 4 * v103);
        v113 = *v112;
        v114 = v112[1];
        v115 = *(v112 + 1);
        v116 = *v112 & 0x1F;
        v117 = *(v105 + v116);
        if (!v112[1])
        {
          break;
        }

        if (v101 != 32 || v104 < v116)
        {
          goto LABEL_399;
        }

        v118 = (*(v105 + 168) + *(v112 + 1) * (*v112 & 0x1F) + *(v106 + 4 * (*v112 & 0x1F)));
        if (v114 == 10)
        {
          v119 = *v118;
          if ((v119 - 97) > 0x19 || (*v102 ^ v119) != 0x20)
          {
            goto LABEL_399;
          }

          v120 = v118 + 1;
          v121 = (v116 - 1);
          if (v121 < 8)
          {
            v123 = (v116 - 1);
            v127 = a2 + 2;
            v126 = v120;
LABEL_375:
            if (v123)
            {
              v164 = &v126[v123];
              while (*v126 == *v127)
              {
                ++v127;
                ++v126;
                if (!--v123)
                {
                  v126 = v164;
                  break;
                }
              }
            }

            v165 = (v126 - v120);
          }

          else
          {
            v122 = 0;
            v123 = (v116 - 1);
            while (1)
            {
              v124 = *&v107[v122];
              v125 = *&v120[v122];
              if (v124 != v125)
              {
                break;
              }

              v123 -= 8;
              v122 += 8;
              if (v123 <= 7)
              {
                v126 = &v120[v122];
                v127 = &v107[v122];
                goto LABEL_375;
              }
            }

            v165 = (v122 + (__clz(__rbit64(v125 ^ v124)) >> 3));
          }

          if (v165 != v121)
          {
            goto LABEL_399;
          }

          v144 = 30;
        }

        else
        {
          v137 = a2 + 1;
          v138 = v113 & 0x1F;
          if (v116)
          {
            do
            {
              v140 = *v118++;
              v139 = v140;
              v141 = v140 - 97;
              v143 = *v137++;
              v142 = v143;
              if (v141 > 0x19)
              {
                if (v139 != v142)
                {
                  goto LABEL_399;
                }
              }

              else if ((v142 ^ v139) != 0x20)
              {
                goto LABEL_399;
              }

              --v138;
            }

            while (v138);
          }

          v144 = 85;
        }

        v145 = (v144 << v117) + v115;
        v146 = v116 + 1;
        v147 = v116 | (32 * v145);
        if (*(a5 + 4 * (v116 + 1)) < v147)
        {
          v147 = *(a5 + 4 * (v116 + 1));
        }

        *(a5 + 4 * v146) = v147;
        v148 = v116 + 2;
        if (v116 + 2 >= a4)
        {
          goto LABEL_398;
        }

        v149 = &a2[v146];
        v150 = a2[v146];
        v7 = 1;
        if (v150 > 45)
        {
          if (v150 == 46)
          {
            v166 = 115;
            if (v114 == 10)
            {
              v166 = 96;
            }

            v167 = v116 | (32 * ((v166 << v117) + v115));
            if (*(a5 + 4 * v148) < v167)
            {
              v167 = *(a5 + 4 * v148);
            }

            *(a5 + 4 * v148) = v167;
            if (v149[1] == 32)
            {
              v152 = v114 == 10;
              v153 = 117;
              v154 = 91;
              goto LABEL_391;
            }

            goto LABEL_398;
          }

          if (v150 == 61)
          {
            v162 = v149[1];
            if (v162 != 39)
            {
              if (v162 == 34)
              {
                v152 = v114 == 10;
                v153 = 110;
                v154 = 118;
                goto LABEL_391;
              }

LABEL_398:
              v7 = 1;
              goto LABEL_399;
            }

            if (v114 == 10)
            {
              v161 = 120;
            }

            else
            {
              v161 = 119;
            }

LABEL_394:
            v160 = (v230 + 4 * v116);
LABEL_395:
            v168 = v116 | (32 * ((v161 << v117) + v115));
            if (*v160 < v168)
            {
              v168 = *v160;
            }

            *v160 = v168;
            goto LABEL_398;
          }
        }

        else
        {
          if (v150 == 32)
          {
            if (v114 == 10)
            {
              v161 = 15;
            }

            else
            {
              v161 = 83;
            }

            v160 = (a5 + 4 * v148);
            goto LABEL_395;
          }

          if (v150 == 44)
          {
            if (v114 == 10)
            {
              v151 = v116 | (32 * ((109 << v117) + v115));
              if (*(a5 + 4 * v148) < v151)
              {
                v151 = *(a5 + 4 * v148);
              }

              *(a5 + 4 * v148) = v151;
            }

            if (v149[1] != 32)
            {
              goto LABEL_398;
            }

            v152 = v114 == 10;
            v153 = 111;
            v154 = 65;
LABEL_391:
            if (v152)
            {
              v161 = v154;
            }

            else
            {
              v161 = v153;
            }

            goto LABEL_394;
          }
        }

LABEL_399:
        ++v103;
        if (v113 < 0)
        {
          goto LABEL_415;
        }
      }

      if (v104 < v116)
      {
        goto LABEL_399;
      }

      v128 = *(v105 + 168) + *(v112 + 1) * (*v112 & 0x1F) + *(v106 + 4 * (*v112 & 0x1F));
      if (v116 < 8)
      {
        v130 = v113 & 0x1F;
        v134 = a2 + 1;
        v133 = (*(v105 + 168) + *(v112 + 1) * (*v112 & 0x1F) + *(v106 + 4 * (*v112 & 0x1F)));
        if ((*v112 & 0x1F) != 0)
        {
LABEL_328:
          v135 = &v133[v130];
          while (*v133 == *v134)
          {
            ++v134;
            ++v133;
            if (!--v130)
            {
              v133 = v135;
              break;
            }
          }
        }
      }

      else
      {
        v129 = 0;
        v130 = v113 & 0x1F;
        do
        {
          v131 = *&v102[v129];
          v132 = *(v128 + v129);
          if (v131 != v132)
          {
            v136 = (v129 + (__clz(__rbit64(v132 ^ v131)) >> 3));
            goto LABEL_353;
          }

          v130 -= 8;
          v129 += 8;
        }

        while (v130 > 7);
        v133 = (v128 + v129);
        v134 = &v102[v129];
        if (v130)
        {
          goto LABEL_328;
        }
      }

      v136 = &v133[-v128];
LABEL_353:
      if (v136 != v116)
      {
        goto LABEL_399;
      }

      v155 = v116 + 1;
      v156 = v116 | (32 * ((v109 << v117) + v115));
      if (*(a5 + 4 * (v116 + 1)) < v156)
      {
        v156 = *(a5 + 4 * (v116 + 1));
      }

      *(a5 + 4 * v155) = v156;
      v157 = v116 + 2;
      if (v116 + 2 >= a4)
      {
        goto LABEL_398;
      }

      v158 = &a2[v155];
      v159 = a2[v155];
      if (v159 == 40)
      {
        v160 = (a5 + 4 * v157);
        v161 = v110;
      }

      else if (v159 == 32)
      {
        v160 = (a5 + 4 * v157);
        v161 = v111;
      }

      else
      {
        if (v101 != 32)
        {
          goto LABEL_398;
        }

        switch(v159)
        {
          case '=':
            v170 = v158[1];
            if (v170 == 39)
            {
              v160 = (v230 + 4 * v116);
              v161 = 98;
            }

            else
            {
              if (v170 != 34)
              {
                goto LABEL_398;
              }

              v160 = (v230 + 4 * v116);
              v161 = 81;
            }

            break;
          case '.':
            v169 = v116 | (32 * ((71 << v117) + v115));
            if (*(a5 + 4 * v157) < v169)
            {
              v169 = *(a5 + 4 * v157);
            }

            *(a5 + 4 * v157) = v169;
            if (v158[1] != 32)
            {
              goto LABEL_398;
            }

            v160 = (v230 + 4 * v116);
            v161 = 52;
            break;
          case ',':
            v163 = v116 | (32 * ((103 << v117) + v115));
            if (*(a5 + 4 * v157) < v163)
            {
              v163 = *(a5 + 4 * v157);
            }

            *(a5 + 4 * v157) = v163;
            if (v158[1] != 32)
            {
              goto LABEL_398;
            }

            v160 = (v230 + 4 * v116);
            v161 = 33;
            break;
          default:
            goto LABEL_398;
        }
      }

      goto LABEL_395;
    }
  }

LABEL_415:
  if (a4 == 5)
  {
    return v7;
  }

  v171 = a2[1];
  v172 = *a2;
  if (v171 == 32)
  {
    if (v172 != 44 && v172 != 101 && v172 != 115)
    {
      goto LABEL_458;
    }
  }

  else if (v171 != 160 || v172 != 194)
  {
    goto LABEL_458;
  }

  v173 = a1[5];
  v174 = a2 + 2;
  v175 = *(v173 + 2 * ((506832829 * *(a2 + 2)) >> 17));
  if (*(v173 + 2 * ((506832829 * *(a2 + 2)) >> 17)))
  {
    v176 = a1[6];
    v177 = *a1;
    v178 = *a1 + 32;
    while (1)
    {
      v179 = (v176 + 4 * v175);
      v180 = *v179;
      v181 = *v179 & 0x1F;
      if (v179[1])
      {
        v182 = 0;
      }

      else
      {
        v182 = a4 - 2 >= v181;
      }

      if (!v182)
      {
        goto LABEL_457;
      }

      v183 = *(v179 + 1);
      v184 = *(v177 + 168) + v183 * v181 + *(v178 + 4 * v181);
      if (v181 < 8)
      {
        v186 = v180 & 0x1F;
        v190 = a2 + 2;
        v189 = (*(v177 + 168) + v183 * v181 + *(v178 + 4 * v181));
        if (v181)
        {
LABEL_437:
          v191 = &v189[v186];
          while (*v189 == *v190)
          {
            ++v190;
            ++v189;
            if (!--v186)
            {
              v189 = v191;
              break;
            }
          }
        }
      }

      else
      {
        v185 = 0;
        v186 = v180 & 0x1F;
        do
        {
          v187 = *&v174[v185];
          v188 = *(v184 + v185);
          if (v187 != v188)
          {
            v192 = (v185 + (__clz(__rbit64(v188 ^ v187)) >> 3));
            goto LABEL_443;
          }

          v186 -= 8;
          v185 += 8;
        }

        while (v186 > 7);
        v189 = (v184 + v185);
        v190 = &v174[v185];
        if (v186)
        {
          goto LABEL_437;
        }
      }

      v192 = &v189[-v184];
LABEL_443:
      if (v192 != v181)
      {
        goto LABEL_457;
      }

      v193 = *a2;
      if (v193 == 194)
      {
        break;
      }

      if (v181 + 2 < a4 && a2[v181 + 2] == 32)
      {
        if (v193 == 115)
        {
          v194 = 7;
        }

        else
        {
          v194 = 13;
        }

        if (v193 == 101)
        {
          v194 = 18;
        }

        v195 = 12;
        goto LABEL_446;
      }

LABEL_457:
      ++v175;
      if (v180 < 0)
      {
        goto LABEL_458;
      }
    }

    v194 = 102;
    v195 = 8;
LABEL_446:
    v196 = v181 | (32 * ((v194 << *(v177 + v181)) + v183));
    if (*(a5 + v195 + 4 * v181) < v196)
    {
      v196 = *(a5 + v195 + 4 * v181);
    }

    *(a5 + v195 + 4 * v181) = v196;
    v7 = 1;
    goto LABEL_457;
  }

LABEL_458:
  if (a4 < 9)
  {
    return v7;
  }

  v197 = *a2;
  if (v197 != 46)
  {
    if (v197 != 32 || a2[1] != 116 || a2[2] != 104 || a2[3] != 101 || a2[4] != 32)
    {
      return v7;
    }

    goto LABEL_470;
  }

  if (a2[1] == 99 && a2[2] == 111 && a2[3] == 109 && a2[4] == 47)
  {
LABEL_470:
    v198 = a2 + 5;
    v199 = (506832829 * *(a2 + 5)) >> 17;
    v200 = *(a1[5] + 2 * v199);
    if (!*(a1[5] + 2 * v199))
    {
      return v7;
    }

    v201 = a5 + 36;
    v202 = a5 + 52;
    v203 = *a1;
    v204 = *a1 + 32;
    v205 = a1[6];
    do
    {
      v206 = (v205 + 4 * v200);
      v207 = *v206;
      v208 = *v206 & 0x1F;
      if (v206[1])
      {
        v209 = 0;
      }

      else
      {
        v209 = a4 - 5 >= v208;
      }

      if (!v209)
      {
        goto LABEL_514;
      }

      v210 = *(v206 + 1);
      v211 = *(v203 + 168) + v210 * v208 + *(v204 + 4 * v208);
      if (v208 < 8)
      {
        v213 = v207 & 0x1F;
        v217 = a2 + 5;
        v216 = (*(v203 + 168) + v210 * v208 + *(v204 + 4 * v208));
LABEL_483:
        if (v213)
        {
          v218 = &v216[v213];
          while (*v216 == *v217)
          {
            ++v217;
            ++v216;
            if (!--v213)
            {
              v216 = v218;
              break;
            }
          }
        }

        v219 = &v216[-v211];
      }

      else
      {
        v212 = 0;
        v213 = v207 & 0x1F;
        while (1)
        {
          v214 = *&v198[v212];
          v215 = *(v211 + v212);
          if (v214 != v215)
          {
            break;
          }

          v213 -= 8;
          v212 += 8;
          if (v213 <= 7)
          {
            v216 = (v211 + v212);
            v217 = &v198[v212];
            goto LABEL_483;
          }
        }

        v219 = (v212 + (__clz(__rbit64(v215 ^ v214)) >> 3));
      }

      if (v219 != v208)
      {
        goto LABEL_514;
      }

      v220 = *(v203 + v208);
      if (*a2 == 32)
      {
        v221 = 41;
      }

      else
      {
        v221 = 72;
      }

      v222 = v208 + 5;
      v223 = v208 | (32 * ((v221 << v220) + v210));
      if (*(a5 + 4 * (v208 + 5)) < v223)
      {
        v223 = *(a5 + 4 * (v208 + 5));
      }

      *(a5 + 4 * v222) = v223;
      if (v222 < a4)
      {
        v7 = 1;
        if (*a2 != 32 || v208 + 8 >= a4)
        {
          goto LABEL_514;
        }

        v224 = &a2[v222];
        if (a2[v222] == 32 && v224[1] == 111 && v224[2] == 102 && v224[3] == 32)
        {
          v225 = v208 | (32 * ((62 << v220) + v210));
          if (*(v201 + 4 * v208) < v225)
          {
            v225 = *(v201 + 4 * v208);
          }

          *(v201 + 4 * v208) = v225;
          if (v208 + 12 < a4 && v224[4] == 116 && v224[5] == 104 && v224[6] == 101 && v224[7] == 32)
          {
            v226 = v208 | (32 * ((73 << v220) + v210));
            if (*(v202 + 4 * v208) < v226)
            {
              v226 = *(v202 + 4 * v208);
            }

            *(v202 + 4 * v208) = v226;
          }
        }
      }

      v7 = 1;
LABEL_514:
      ++v200;
    }

    while ((v207 & 0x80) == 0);
  }

  return v7;
}

char *BrotliCompressFragmentTwoPass(char *result, char *__src, unint64_t a3, int a4, unsigned __int8 *a5, unsigned __int8 *__dst, uint64_t a7, unsigned int a8, unint64_t *a9, uint64_t a10)
{
  v13 = *a9;
  v14 = __clz(a8) ^ 0x1F;
  if (v14 > 12)
  {
    if (v14 <= 14)
    {
      if (v14 == 13)
      {
        result = BrotliCompressFragmentTwoPassImpl13(result, __src, a3, a5, __dst, a7, a9, a10);
      }

      else
      {
        result = BrotliCompressFragmentTwoPassImpl14(result, __src, a3, a5, __dst, a7, a9, a10);
      }
    }

    else
    {
      switch(v14)
      {
        case 15:
          result = BrotliCompressFragmentTwoPassImpl15(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
        case 16:
          result = BrotliCompressFragmentTwoPassImpl16(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
        case 17:
          result = BrotliCompressFragmentTwoPassImpl17(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
      }
    }
  }

  else if (v14 <= 9)
  {
    if (v14 == 8)
    {
      result = BrotliCompressFragmentTwoPassImpl8(result, __src, a3, a5, __dst, a7, a9, a10);
    }

    else if (v14 == 9)
    {
      result = BrotliCompressFragmentTwoPassImpl9(result, __src, a3, a5, __dst, a7, a9, a10);
    }
  }

  else if (v14 == 10)
  {
    result = BrotliCompressFragmentTwoPassImpl10(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  else if (v14 == 11)
  {
    result = BrotliCompressFragmentTwoPassImpl11(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  else
  {
    result = BrotliCompressFragmentTwoPassImpl12(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  if (*a9 - v13 > 8 * a3 + 31)
  {
    *(a10 + (v13 >> 3)) &= ~(-1 << (v13 & 7));
    *a9 = v13;
    result = EmitUncompressedMetaBlock(__src, a3, a9, a10);
  }

  if (a4)
  {
    v15 = *a9;
    *(a10 + (*a9 >> 3)) = (1 << (*a9 & 7)) | *(a10 + (*a9 >> 3));
    *a9 = v15 + 1;
    *(a10 + ((v15 + 1) >> 3)) = (1 << ((v15 + 1) & 7)) | *(a10 + ((v15 + 1) >> 3));
    *a9 = (v15 + 9) & 0xFFFFFFF8;
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl8(uint64_t result, char *__src, unint64_t a3, unsigned __int8 *a4, unsigned __int8 *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v86 = result;
  if (!a3)
  {
    return result;
  }

  v9 = __dst;
  v92 = __src + 4;
  v11 = __src;
  do
  {
    if (a3 >= 0x20000)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = a3;
    }

    v13 = &v11[v12];
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v89 = a3;
    v17 = a3 - 16;
    v91 = &v11[v12];
    if (a3 < 0x10)
    {
      goto LABEL_86;
    }

    v88 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v16 = v11;
    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v87 = v16;
    v93 = v13 - 4;
    do
    {
LABEL_10:
      v22 = v16 + 1;
      v21 = *(v16 + 1);
      for (i = 32; ; ++i)
      {
        v24 = v22 + (i >> 5);
        if (v24 > v18)
        {
          goto LABEL_84;
        }

        v25 = (0x1E35A7BD00000000 * v21) >> 56;
        v21 = *v24;
        v26 = v22 - v20;
        if (*v22 != *v26 || v20 < 1)
        {
          v26 = &__src[*(a6 + 4 * v25)];
          *(a6 + 4 * v25) = v22 - __src;
          if (*v22 != *v26)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *(a6 + 4 * v25) = v22 - __src;
        }

        v28 = v22 - v26;
        if (v22 - v26 <= 262128)
        {
          break;
        }

LABEL_19:
        v22 = v24;
      }

      v29 = (v26 + 4);
      v30 = (v22 + 1);
      v31 = v19 - v22;
      if ((v19 - v22) < 8)
      {
        v35 = (v26 + 4);
        if (v31)
        {
LABEL_27:
          v36 = &v35[v31];
          while (*v35 == *v30)
          {
            ++v30;
            ++v35;
            if (!--v31)
            {
              v35 = v36;
              break;
            }
          }
        }
      }

      else
      {
        v32 = 0;
        do
        {
          v33 = *&v30[v32];
          v34 = *&v29[v32];
          if (v33 != v34)
          {
            v37 = (v32 + (__clz(__rbit64(v34 ^ v33)) >> 3));
            goto LABEL_33;
          }

          v31 -= 8;
          v32 += 8;
        }

        while (v31 > 7);
        v35 = &v29[v32];
        v30 += v32;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v37 = (v35 - v29);
LABEL_33:
      v38 = v22 - v16;
      v94 = v37;
      if ((v22 - v16) >= 6)
      {
        if (v38 > 0x81)
        {
          if (v38 > 0x841)
          {
            if (v38 >> 1 > 0xC20)
            {
              if (v38 > 0x5841)
              {
                v42 = -5784041;
              }

              else
              {
                v42 = -1589738;
              }

              v39 = (v38 << 8) + v42;
            }

            else
            {
              v39 = (v38 << 8) - 541163;
            }
          }

          else
          {
            v41 = __clz(v38 - 66) ^ 0x1F;
            v39 = (v41 | (((-1 << v41) + v38 - 66) << 8)) + 10;
          }
        }

        else
        {
          v40 = (__clz(v38 - 2) ^ 0x1F) - 1;
          v39 = (((v38 - 2) >> v40) + 2 * v40 + 2) | ((v38 - 2 - ((v38 - 2) >> v40 << v40)) << 8);
        }
      }

      else
      {
        v39 = v22 - v16;
      }

      *v14 = v39;
      v43 = v15;
      memcpy(v15, v16, v38);
      if (v20 == v28)
      {
        v44 = 64;
      }

      else
      {
        v45 = __clz(v28 + 3) ^ 0x1F;
        v44 = (((v28 + 3 - ((((v28 + 3) >> (v45 - 1)) & 1 | 2) << (v45 - 1))) << 8) | (2 * v45) | ((v28 + 3) >> (v45 - 1)) & 1) + 76;
        v20 = v28;
      }

      v46 = (v94 + 4);
      v14[1] = v44;
      if ((v94 + 4) > 0xB)
      {
        if (v46 > 0x47)
        {
          if (v46 > 0x87)
          {
            if (v46 > 0x847)
            {
              v49 = (v46 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v94 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v94 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v94 - 4) >> 5) + 54) | (((v94 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v47 = 16;
        }

        else
        {
          v48 = (__clz(v94 - 4) ^ 0x1F) - 1;
          v14[2] = (((v94 - 4) >> v48) + 2 * v48 + 28) | ((v94 - 4 - ((v94 - 4) >> v48 << v48)) << 8);
          v47 = 12;
        }
      }

      else
      {
        v14[2] = v94 + 24;
        v47 = 12;
      }

      v16 = v22 + v46;
      v15 = &v43[v38];
      v14 = (v14 + v47);
      if (v22 + v46 >= v18)
      {
LABEL_84:
        v9 = __dst;
        goto LABEL_85;
      }

      v51 = *(v16 - 3);
      *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 2;
      *(a6 + (((0x1E35A7BD00000000 * v51) >> 54) & 0x3FC)) = v16 - __src - 1;
      v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC;
      v53 = *(a6 + v52);
      *(a6 + v52) = v16 - __src;
      v54 = v16 - &__src[v53];
      v19 = v93;
    }

    while (v54 >= 262129 || *v16 != *&__src[v53]);
    while (1)
    {
      v55 = &v92[v53];
      v56 = (v16 + 4);
      v57 = v93 - v16;
      if ((v93 - v16) < 8)
      {
        v61 = v55;
        if (v57)
        {
LABEL_68:
          v62 = &v61[v57];
          while (*v61 == *v56)
          {
            ++v56;
            ++v61;
            if (!--v57)
            {
              v61 = v62;
              break;
            }
          }
        }
      }

      else
      {
        v58 = 0;
        do
        {
          v59 = *&v56[v58];
          v60 = *&v55[v58];
          if (v59 != v60)
          {
            v63 = (v58 + (__clz(__rbit64(v60 ^ v59)) >> 3));
            goto LABEL_74;
          }

          v57 -= 8;
          v58 += 8;
        }

        while (v57 > 7);
        v61 = &v55[v58];
        v56 += v58;
        if (v57)
        {
          goto LABEL_68;
        }
      }

      v63 = (v61 - v55);
LABEL_74:
      v64 = (v63 + 4);
      if ((v63 + 4) > 9)
      {
        v66 = (v64 << 8) - 542145;
        v67 = __clz(v63 - 66) ^ 0x1F;
        if (v64 <= 0x845)
        {
          v66 = (v67 | (((-1 << v67) + v63 - 66) << 8)) + 52;
        }

        v68 = v63 - 2;
        v69 = (__clz(v68) ^ 0x1F) - 1;
        v65 = ((v68 >> v69) + 2 * v69 + 44) | ((v68 - (v68 >> v69 << v69)) << 8);
        if (v64 > 0x85)
        {
          v65 = v66;
        }
      }

      else
      {
        v65 = v63 + 42;
      }

      v16 += v64;
      v20 = v54;
      v70 = v54 + 3;
      v71 = __clz(v70);
      *v14 = v65;
      v14[1] = (((v70 - (((v70 >> ((v71 ^ 0x1F) - 1)) & 1 | 2) << ((v71 ^ 0x1F) - 1))) << 8) | (2 * (v71 ^ 0x1F)) | (v70 >> ((v71 ^ 0x1F) - 1)) & 1) + 76;
      v14 += 2;
      if (v16 >= v18)
      {
        break;
      }

      v72 = *(v16 - 3);
      *(a6 + (((0x1E35A7BD00000000 * v72) >> 54) & 0x3FC)) = v16 - __src - 3;
      *(a6 + (((506832829 * ((v72 << 24) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 2;
      *(a6 + (((506832829 * ((v72 << 16) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 1;
      v73 = ((506832829 * ((v72 << 8) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC;
      v53 = *(a6 + v73);
      *(a6 + v73) = v16 - __src;
      v54 = v16 - &__src[v53];
      if (v54 >= 262129 || *v16 != *&__src[v53])
      {
        goto LABEL_10;
      }
    }

    v9 = __dst;
LABEL_85:
    v11 = v87;
    v12 = v88;
    v13 = v91;
LABEL_86:
    if (v16 >= v13)
    {
      v76 = v86;
    }

    else
    {
      v74 = v13 - v16;
      if ((v13 - v16) >= 6)
      {
        v77 = (v74 << 8) - 1589738;
        if (v74 > 0x5841)
        {
          v77 = (v74 << 8) - 5784041;
        }

        if (v74 >> 1 <= 0xC20)
        {
          v75 = (v74 << 8) - 541163;
        }

        else
        {
          v75 = v77;
        }

        v78 = __clz(v74 - 66) ^ 0x1F;
        if (v74 <= 0x841)
        {
          v75 = (v78 | (((-1 << v78) + v74 - 66) << 8)) + 10;
        }

        v79 = (__clz(v74 - 2) ^ 0x1F) - 1;
        if (v74 <= 0x81)
        {
          v75 = (((v74 - 2) >> v79) + 2 * v79 + 2) | ((v74 - 2 - ((v74 - 2) >> v79 << v79)) << 8);
        }
      }

      else
      {
        v75 = v13 - v16;
      }

      *v14++ = v75;
      v80 = v15;
      memcpy(v15, v16, v74);
      v15 = &v80[v74];
      v9 = __dst;
      v76 = v86;
    }

    v81 = v15 - v9;
    if (ShouldCompress(v76, v11, v12, v15 - v9))
    {
      BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
      v82 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v82 + 13;
      result = StoreCommands(v86, v9, v81, a4, (v14 - a4) >> 2, a7, a8);
    }

    else
    {
      result = EmitUncompressedMetaBlock(v11, v12, a7, a8);
    }

    v11 = v91;
    a3 = v89 - v12;
  }

  while (v89 != v12);
  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl9(uint64_t result, char *__src, unint64_t a3, unsigned __int8 *a4, unsigned __int8 *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v86 = result;
  if (!a3)
  {
    return result;
  }

  v9 = __dst;
  v92 = __src + 4;
  v11 = __src;
  do
  {
    if (a3 >= 0x20000)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = a3;
    }

    v13 = &v11[v12];
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v89 = a3;
    v17 = a3 - 16;
    v91 = &v11[v12];
    if (a3 < 0x10)
    {
      goto LABEL_86;
    }

    v88 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v16 = v11;
    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v87 = v16;
    v93 = v13 - 4;
    do
    {
LABEL_10:
      v22 = v16 + 1;
      v21 = *(v16 + 1);
      for (i = 32; ; ++i)
      {
        v24 = v22 + (i >> 5);
        if (v24 > v18)
        {
          goto LABEL_84;
        }

        v25 = (0x1E35A7BD00000000 * v21) >> 55;
        v21 = *v24;
        v26 = v22 - v20;
        if (*v22 != *v26 || v20 < 1)
        {
          v26 = &__src[*(a6 + 4 * v25)];
          *(a6 + 4 * v25) = v22 - __src;
          if (*v22 != *v26)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *(a6 + 4 * v25) = v22 - __src;
        }

        v28 = v22 - v26;
        if (v22 - v26 <= 262128)
        {
          break;
        }

LABEL_19:
        v22 = v24;
      }

      v29 = (v26 + 4);
      v30 = (v22 + 1);
      v31 = v19 - v22;
      if ((v19 - v22) < 8)
      {
        v35 = (v26 + 4);
        if (v31)
        {
LABEL_27:
          v36 = &v35[v31];
          while (*v35 == *v30)
          {
            ++v30;
            ++v35;
            if (!--v31)
            {
              v35 = v36;
              break;
            }
          }
        }
      }

      else
      {
        v32 = 0;
        do
        {
          v33 = *&v30[v32];
          v34 = *&v29[v32];
          if (v33 != v34)
          {
            v37 = (v32 + (__clz(__rbit64(v34 ^ v33)) >> 3));
            goto LABEL_33;
          }

          v31 -= 8;
          v32 += 8;
        }

        while (v31 > 7);
        v35 = &v29[v32];
        v30 += v32;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v37 = (v35 - v29);
LABEL_33:
      v38 = v22 - v16;
      v94 = v37;
      if ((v22 - v16) >= 6)
      {
        if (v38 > 0x81)
        {
          if (v38 > 0x841)
          {
            if (v38 >> 1 > 0xC20)
            {
              if (v38 > 0x5841)
              {
                v42 = -5784041;
              }

              else
              {
                v42 = -1589738;
              }

              v39 = (v38 << 8) + v42;
            }

            else
            {
              v39 = (v38 << 8) - 541163;
            }
          }

          else
          {
            v41 = __clz(v38 - 66) ^ 0x1F;
            v39 = (v41 | (((-1 << v41) + v38 - 66) << 8)) + 10;
          }
        }

        else
        {
          v40 = (__clz(v38 - 2) ^ 0x1F) - 1;
          v39 = (((v38 - 2) >> v40) + 2 * v40 + 2) | ((v38 - 2 - ((v38 - 2) >> v40 << v40)) << 8);
        }
      }

      else
      {
        v39 = v22 - v16;
      }

      *v14 = v39;
      v43 = v15;
      memcpy(v15, v16, v38);
      if (v20 == v28)
      {
        v44 = 64;
      }

      else
      {
        v45 = __clz(v28 + 3) ^ 0x1F;
        v44 = (((v28 + 3 - ((((v28 + 3) >> (v45 - 1)) & 1 | 2) << (v45 - 1))) << 8) | (2 * v45) | ((v28 + 3) >> (v45 - 1)) & 1) + 76;
        v20 = v28;
      }

      v46 = (v94 + 4);
      v14[1] = v44;
      if ((v94 + 4) > 0xB)
      {
        if (v46 > 0x47)
        {
          if (v46 > 0x87)
          {
            if (v46 > 0x847)
            {
              v49 = (v46 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v94 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v94 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v94 - 4) >> 5) + 54) | (((v94 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v47 = 16;
        }

        else
        {
          v48 = (__clz(v94 - 4) ^ 0x1F) - 1;
          v14[2] = (((v94 - 4) >> v48) + 2 * v48 + 28) | ((v94 - 4 - ((v94 - 4) >> v48 << v48)) << 8);
          v47 = 12;
        }
      }

      else
      {
        v14[2] = v94 + 24;
        v47 = 12;
      }

      v16 = v22 + v46;
      v15 = &v43[v38];
      v14 = (v14 + v47);
      if (v22 + v46 >= v18)
      {
LABEL_84:
        v9 = __dst;
        goto LABEL_85;
      }

      v51 = *(v16 - 3);
      *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 2;
      *(a6 + (((0x1E35A7BD00000000 * v51) >> 53) & 0x7FC)) = v16 - __src - 1;
      v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC;
      v53 = *(a6 + v52);
      *(a6 + v52) = v16 - __src;
      v54 = v16 - &__src[v53];
      v19 = v93;
    }

    while (v54 >= 262129 || *v16 != *&__src[v53]);
    while (1)
    {
      v55 = &v92[v53];
      v56 = (v16 + 4);
      v57 = v93 - v16;
      if ((v93 - v16) < 8)
      {
        v61 = v55;
        if (v57)
        {
LABEL_68:
          v62 = &v61[v57];
          while (*v61 == *v56)
          {
            ++v56;
            ++v61;
            if (!--v57)
            {
              v61 = v62;
              break;
            }
          }
        }
      }

      else
      {
        v58 = 0;
        do
        {
          v59 = *&v56[v58];
          v60 = *&v55[v58];
          if (v59 != v60)
          {
            v63 = (v58 + (__clz(__rbit64(v60 ^ v59)) >> 3));
            goto LABEL_74;
          }

          v57 -= 8;
          v58 += 8;
        }

        while (v57 > 7);
        v61 = &v55[v58];
        v56 += v58;
        if (v57)
        {
          goto LABEL_68;
        }
      }

      v63 = (v61 - v55);
LABEL_74:
      v64 = (v63 + 4);
      if ((v63 + 4) > 9)
      {
        v66 = (v64 << 8) - 542145;
        v67 = __clz(v63 - 66) ^ 0x1F;
        if (v64 <= 0x845)
        {
          v66 = (v67 | (((-1 << v67) + v63 - 66) << 8)) + 52;
        }

        v68 = v63 - 2;
        v69 = (__clz(v68) ^ 0x1F) - 1;
        v65 = ((v68 >> v69) + 2 * v69 + 44) | ((v68 - (v68 >> v69 << v69)) << 8);
        if (v64 > 0x85)
        {
          v65 = v66;
        }
      }

      else
      {
        v65 = v63 + 42;
      }

      v16 += v64;
      v20 = v54;
      v70 = v54 + 3;
      v71 = __clz(v70);
      *v14 = v65;
      v14[1] = (((v70 - (((v70 >> ((v71 ^ 0x1F) - 1)) & 1 | 2) << ((v71 ^ 0x1F) - 1))) << 8) | (2 * (v71 ^ 0x1F)) | (v70 >> ((v71 ^ 0x1F) - 1)) & 1) + 76;
      v14 += 2;
      if (v16 >= v18)
      {
        break;
      }

      v72 = *(v16 - 3);
      *(a6 + (((0x1E35A7BD00000000 * v72) >> 53) & 0x7FC)) = v16 - __src - 3;
      *(a6 + (((506832829 * ((v72 << 24) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 2;
      *(a6 + (((506832829 * ((v72 << 16) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 1;
      v73 = ((506832829 * ((v72 << 8) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC;
      v53 = *(a6 + v73);
      *(a6 + v73) = v16 - __src;
      v54 = v16 - &__src[v53];
      if (v54 >= 262129 || *v16 != *&__src[v53])
      {
        goto LABEL_10;
      }
    }

    v9 = __dst;
LABEL_85:
    v11 = v87;
    v12 = v88;
    v13 = v91;
LABEL_86:
    if (v16 >= v13)
    {
      v76 = v86;
    }

    else
    {
      v74 = v13 - v16;
      if ((v13 - v16) >= 6)
      {
        v77 = (v74 << 8) - 1589738;
        if (v74 > 0x5841)
        {
          v77 = (v74 << 8) - 5784041;
        }

        if (v74 >> 1 <= 0xC20)
        {
          v75 = (v74 << 8) - 541163;
        }

        else
        {
          v75 = v77;
        }

        v78 = __clz(v74 - 66) ^ 0x1F;
        if (v74 <= 0x841)
        {
          v75 = (v78 | (((-1 << v78) + v74 - 66) << 8)) + 10;
        }

        v79 = (__clz(v74 - 2) ^ 0x1F) - 1;
        if (v74 <= 0x81)
        {
          v75 = (((v74 - 2) >> v79) + 2 * v79 + 2) | ((v74 - 2 - ((v74 - 2) >> v79 << v79)) << 8);
        }
      }

      else
      {
        v75 = v13 - v16;
      }

      *v14++ = v75;
      v80 = v15;
      memcpy(v15, v16, v74);
      v15 = &v80[v74];
      v9 = __dst;
      v76 = v86;
    }

    v81 = v15 - v9;
    if (ShouldCompress(v76, v11, v12, v15 - v9))
    {
      BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
      v82 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v82 + 13;
      result = StoreCommands(v86, v9, v81, a4, (v14 - a4) >> 2, a7, a8);
    }

    else
    {
      result = EmitUncompressedMetaBlock(v11, v12, a7, a8);
    }

    v11 = v91;
    a3 = v89 - v12;
  }

  while (v89 != v12);
  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl10(uint64_t result, char *__src, unint64_t a3, unsigned __int8 *a4, unsigned __int8 *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v86 = result;
  if (!a3)
  {
    return result;
  }

  v9 = __dst;
  v92 = __src + 4;
  v11 = __src;
  do
  {
    if (a3 >= 0x20000)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = a3;
    }

    v13 = &v11[v12];
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v89 = a3;
    v17 = a3 - 16;
    v91 = &v11[v12];
    if (a3 < 0x10)
    {
      goto LABEL_86;
    }

    v88 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v16 = v11;
    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v87 = v16;
    v93 = v13 - 4;
    do
    {
LABEL_10:
      v22 = v16 + 1;
      v21 = *(v16 + 1);
      for (i = 32; ; ++i)
      {
        v24 = v22 + (i >> 5);
        if (v24 > v18)
        {
          goto LABEL_84;
        }

        v25 = (0x1E35A7BD00000000 * v21) >> 54;
        v21 = *v24;
        v26 = v22 - v20;
        if (*v22 != *v26 || v20 < 1)
        {
          v26 = &__src[*(a6 + 4 * v25)];
          *(a6 + 4 * v25) = v22 - __src;
          if (*v22 != *v26)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *(a6 + 4 * v25) = v22 - __src;
        }

        v28 = v22 - v26;
        if (v22 - v26 <= 262128)
        {
          break;
        }

LABEL_19:
        v22 = v24;
      }

      v29 = (v26 + 4);
      v30 = (v22 + 1);
      v31 = v19 - v22;
      if ((v19 - v22) < 8)
      {
        v35 = (v26 + 4);
        if (v31)
        {
LABEL_27:
          v36 = &v35[v31];
          while (*v35 == *v30)
          {
            ++v30;
            ++v35;
            if (!--v31)
            {
              v35 = v36;
              break;
            }
          }
        }
      }

      else
      {
        v32 = 0;
        do
        {
          v33 = *&v30[v32];
          v34 = *&v29[v32];
          if (v33 != v34)
          {
            v37 = (v32 + (__clz(__rbit64(v34 ^ v33)) >> 3));
            goto LABEL_33;
          }

          v31 -= 8;
          v32 += 8;
        }

        while (v31 > 7);
        v35 = &v29[v32];
        v30 += v32;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v37 = (v35 - v29);
LABEL_33:
      v38 = v22 - v16;
      v94 = v37;
      if ((v22 - v16) >= 6)
      {
        if (v38 > 0x81)
        {
          if (v38 > 0x841)
          {
            if (v38 >> 1 > 0xC20)
            {
              if (v38 > 0x5841)
              {
                v42 = -5784041;
              }

              else
              {
                v42 = -1589738;
              }

              v39 = (v38 << 8) + v42;
            }

            else
            {
              v39 = (v38 << 8) - 541163;
            }
          }

          else
          {
            v41 = __clz(v38 - 66) ^ 0x1F;
            v39 = (v41 | (((-1 << v41) + v38 - 66) << 8)) + 10;
          }
        }

        else
        {
          v40 = (__clz(v38 - 2) ^ 0x1F) - 1;
          v39 = (((v38 - 2) >> v40) + 2 * v40 + 2) | ((v38 - 2 - ((v38 - 2) >> v40 << v40)) << 8);
        }
      }

      else
      {
        v39 = v22 - v16;
      }

      *v14 = v39;
      v43 = v15;
      memcpy(v15, v16, v38);
      if (v20 == v28)
      {
        v44 = 64;
      }

      else
      {
        v45 = __clz(v28 + 3) ^ 0x1F;
        v44 = (((v28 + 3 - ((((v28 + 3) >> (v45 - 1)) & 1 | 2) << (v45 - 1))) << 8) | (2 * v45) | ((v28 + 3) >> (v45 - 1)) & 1) + 76;
        v20 = v28;
      }

      v46 = (v94 + 4);
      v14[1] = v44;
      if ((v94 + 4) > 0xB)
      {
        if (v46 > 0x47)
        {
          if (v46 > 0x87)
          {
            if (v46 > 0x847)
            {
              v49 = (v46 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v94 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v94 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v94 - 4) >> 5) + 54) | (((v94 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v47 = 16;
        }

        else
        {
          v48 = (__clz(v94 - 4) ^ 0x1F) - 1;
          v14[2] = (((v94 - 4) >> v48) + 2 * v48 + 28) | ((v94 - 4 - ((v94 - 4) >> v48 << v48)) << 8);
          v47 = 12;
        }
      }

      else
      {
        v14[2] = v94 + 24;
        v47 = 12;
      }

      v16 = v22 + v46;
      v15 = &v43[v38];
      v14 = (v14 + v47);
      if (v22 + v46 >= v18)
      {
LABEL_84:
        v9 = __dst;
        goto LABEL_85;
      }

      v51 = *(v16 - 3);
      *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 2;
      *(a6 + (((0x1E35A7BD00000000 * v51) >> 52) & 0xFFC)) = v16 - __src - 1;
      v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC;
      v53 = *(a6 + v52);
      *(a6 + v52) = v16 - __src;
      v54 = v16 - &__src[v53];
      v19 = v93;
    }

    while (v54 >= 262129 || *v16 != *&__src[v53]);
    while (1)
    {
      v55 = &v92[v53];
      v56 = (v16 + 4);
      v57 = v93 - v16;
      if ((v93 - v16) < 8)
      {
        v61 = v55;
        if (v57)
        {
LABEL_68:
          v62 = &v61[v57];
          while (*v61 == *v56)
          {
            ++v56;
            ++v61;
            if (!--v57)
            {
              v61 = v62;
              break;
            }
          }
        }
      }

      else
      {
        v58 = 0;
        do
        {
          v59 = *&v56[v58];
          v60 = *&v55[v58];
          if (v59 != v60)
          {
            v63 = (v58 + (__clz(__rbit64(v60 ^ v59)) >> 3));
            goto LABEL_74;
          }

          v57 -= 8;
          v58 += 8;
        }

        while (v57 > 7);
        v61 = &v55[v58];
        v56 += v58;
        if (v57)
        {
          goto LABEL_68;
        }
      }

      v63 = (v61 - v55);
LABEL_74:
      v64 = (v63 + 4);
      if ((v63 + 4) > 9)
      {
        v66 = (v64 << 8) - 542145;
        v67 = __clz(v63 - 66) ^ 0x1F;
        if (v64 <= 0x845)
        {
          v66 = (v67 | (((-1 << v67) + v63 - 66) << 8)) + 52;
        }

        v68 = v63 - 2;
        v69 = (__clz(v68) ^ 0x1F) - 1;
        v65 = ((v68 >> v69) + 2 * v69 + 44) | ((v68 - (v68 >> v69 << v69)) << 8);
        if (v64 > 0x85)
        {
          v65 = v66;
        }
      }

      else
      {
        v65 = v63 + 42;
      }

      v16 += v64;
      v20 = v54;
      v70 = v54 + 3;
      v71 = __clz(v70);
      *v14 = v65;
      v14[1] = (((v70 - (((v70 >> ((v71 ^ 0x1F) - 1)) & 1 | 2) << ((v71 ^ 0x1F) - 1))) << 8) | (2 * (v71 ^ 0x1F)) | (v70 >> ((v71 ^ 0x1F) - 1)) & 1) + 76;
      v14 += 2;
      if (v16 >= v18)
      {
        break;
      }

      v72 = *(v16 - 3);
      *(a6 + (((0x1E35A7BD00000000 * v72) >> 52) & 0xFFC)) = v16 - __src - 3;
      *(a6 + (((506832829 * ((v72 << 24) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 2;
      *(a6 + (((506832829 * ((v72 << 16) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 1;
      v73 = ((506832829 * ((v72 << 8) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC;
      v53 = *(a6 + v73);
      *(a6 + v73) = v16 - __src;
      v54 = v16 - &__src[v53];
      if (v54 >= 262129 || *v16 != *&__src[v53])
      {
        goto LABEL_10;
      }
    }

    v9 = __dst;
LABEL_85:
    v11 = v87;
    v12 = v88;
    v13 = v91;
LABEL_86:
    if (v16 >= v13)
    {
      v76 = v86;
    }

    else
    {
      v74 = v13 - v16;
      if ((v13 - v16) >= 6)
      {
        v77 = (v74 << 8) - 1589738;
        if (v74 > 0x5841)
        {
          v77 = (v74 << 8) - 5784041;
        }

        if (v74 >> 1 <= 0xC20)
        {
          v75 = (v74 << 8) - 541163;
        }

        else
        {
          v75 = v77;
        }

        v78 = __clz(v74 - 66) ^ 0x1F;
        if (v74 <= 0x841)
        {
          v75 = (v78 | (((-1 << v78) + v74 - 66) << 8)) + 10;
        }

        v79 = (__clz(v74 - 2) ^ 0x1F) - 1;
        if (v74 <= 0x81)
        {
          v75 = (((v74 - 2) >> v79) + 2 * v79 + 2) | ((v74 - 2 - ((v74 - 2) >> v79 << v79)) << 8);
        }
      }

      else
      {
        v75 = v13 - v16;
      }

      *v14++ = v75;
      v80 = v15;
      memcpy(v15, v16, v74);
      v15 = &v80[v74];
      v9 = __dst;
      v76 = v86;
    }

    v81 = v15 - v9;
    if (ShouldCompress(v76, v11, v12, v15 - v9))
    {
      BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
      v82 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v82 + 13;
      result = StoreCommands(v86, v9, v81, a4, (v14 - a4) >> 2, a7, a8);
    }

    else
    {
      result = EmitUncompressedMetaBlock(v11, v12, a7, a8);
    }

    v11 = v91;
    a3 = v89 - v12;
  }

  while (v89 != v12);
  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl11(uint64_t result, char *__src, unint64_t a3, unsigned __int8 *a4, unsigned __int8 *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v86 = result;
  if (!a3)
  {
    return result;
  }

  v9 = __dst;
  v92 = __src + 4;
  v11 = __src;
  do
  {
    if (a3 >= 0x20000)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = a3;
    }

    v13 = &v11[v12];
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v89 = a3;
    v17 = a3 - 16;
    v91 = &v11[v12];
    if (a3 < 0x10)
    {
      goto LABEL_86;
    }

    v88 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v16 = v11;
    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v87 = v16;
    v93 = v13 - 4;
    do
    {
LABEL_10:
      v22 = v16 + 1;
      v21 = *(v16 + 1);
      for (i = 32; ; ++i)
      {
        v24 = v22 + (i >> 5);
        if (v24 > v18)
        {
          goto LABEL_84;
        }

        v25 = (0x1E35A7BD00000000 * v21) >> 53;
        v21 = *v24;
        v26 = v22 - v20;
        if (*v22 != *v26 || v20 < 1)
        {
          v26 = &__src[*(a6 + 4 * v25)];
          *(a6 + 4 * v25) = v22 - __src;
          if (*v22 != *v26)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *(a6 + 4 * v25) = v22 - __src;
        }

        v28 = v22 - v26;
        if (v22 - v26 <= 262128)
        {
          break;
        }

LABEL_19:
        v22 = v24;
      }

      v29 = (v26 + 4);
      v30 = (v22 + 1);
      v31 = v19 - v22;
      if ((v19 - v22) < 8)
      {
        v35 = (v26 + 4);
        if (v31)
        {
LABEL_27:
          v36 = &v35[v31];
          while (*v35 == *v30)
          {
            ++v30;
            ++v35;
            if (!--v31)
            {
              v35 = v36;
              break;
            }
          }
        }
      }

      else
      {
        v32 = 0;
        do
        {
          v33 = *&v30[v32];
          v34 = *&v29[v32];
          if (v33 != v34)
          {
            v37 = (v32 + (__clz(__rbit64(v34 ^ v33)) >> 3));
            goto LABEL_33;
          }

          v31 -= 8;
          v32 += 8;
        }

        while (v31 > 7);
        v35 = &v29[v32];
        v30 += v32;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v37 = (v35 - v29);
LABEL_33:
      v38 = v22 - v16;
      v94 = v37;
      if ((v22 - v16) >= 6)
      {
        if (v38 > 0x81)
        {
          if (v38 > 0x841)
          {
            if (v38 >> 1 > 0xC20)
            {
              if (v38 > 0x5841)
              {
                v42 = -5784041;
              }

              else
              {
                v42 = -1589738;
              }

              v39 = (v38 << 8) + v42;
            }

            else
            {
              v39 = (v38 << 8) - 541163;
            }
          }

          else
          {
            v41 = __clz(v38 - 66) ^ 0x1F;
            v39 = (v41 | (((-1 << v41) + v38 - 66) << 8)) + 10;
          }
        }

        else
        {
          v40 = (__clz(v38 - 2) ^ 0x1F) - 1;
          v39 = (((v38 - 2) >> v40) + 2 * v40 + 2) | ((v38 - 2 - ((v38 - 2) >> v40 << v40)) << 8);
        }
      }

      else
      {
        v39 = v22 - v16;
      }

      *v14 = v39;
      v43 = v15;
      memcpy(v15, v16, v38);
      if (v20 == v28)
      {
        v44 = 64;
      }

      else
      {
        v45 = __clz(v28 + 3) ^ 0x1F;
        v44 = (((v28 + 3 - ((((v28 + 3) >> (v45 - 1)) & 1 | 2) << (v45 - 1))) << 8) | (2 * v45) | ((v28 + 3) >> (v45 - 1)) & 1) + 76;
        v20 = v28;
      }

      v46 = (v94 + 4);
      v14[1] = v44;
      if ((v94 + 4) > 0xB)
      {
        if (v46 > 0x47)
        {
          if (v46 > 0x87)
          {
            if (v46 > 0x847)
            {
              v49 = (v46 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v94 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v94 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v94 - 4) >> 5) + 54) | (((v94 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v47 = 16;
        }

        else
        {
          v48 = (__clz(v94 - 4) ^ 0x1F) - 1;
          v14[2] = (((v94 - 4) >> v48) + 2 * v48 + 28) | ((v94 - 4 - ((v94 - 4) >> v48 << v48)) << 8);
          v47 = 12;
        }
      }

      else
      {
        v14[2] = v94 + 24;
        v47 = 12;
      }

      v16 = v22 + v46;
      v15 = &v43[v38];
      v14 = (v14 + v47);
      if (v22 + v46 >= v18)
      {
LABEL_84:
        v9 = __dst;
        goto LABEL_85;
      }

      v51 = *(v16 - 3);
      *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
      *(a6 + (((0x1E35A7BD00000000 * v51) >> 51) & 0x1FFC)) = v16 - __src - 1;
      v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
      v53 = *(a6 + v52);
      *(a6 + v52) = v16 - __src;
      v54 = v16 - &__src[v53];
      v19 = v93;
    }

    while (v54 >= 262129 || *v16 != *&__src[v53]);
    while (1)
    {
      v55 = &v92[v53];
      v56 = (v16 + 4);
      v57 = v93 - v16;
      if ((v93 - v16) < 8)
      {
        v61 = v55;
        if (v57)
        {
LABEL_68:
          v62 = &v61[v57];
          while (*v61 == *v56)
          {
            ++v56;
            ++v61;
            if (!--v57)
            {
              v61 = v62;
              break;
            }
          }
        }
      }

      else
      {
        v58 = 0;
        do
        {
          v59 = *&v56[v58];
          v60 = *&v55[v58];
          if (v59 != v60)
          {
            v63 = (v58 + (__clz(__rbit64(v60 ^ v59)) >> 3));
            goto LABEL_74;
          }

          v57 -= 8;
          v58 += 8;
        }

        while (v57 > 7);
        v61 = &v55[v58];
        v56 += v58;
        if (v57)
        {
          goto LABEL_68;
        }
      }

      v63 = (v61 - v55);
LABEL_74:
      v64 = (v63 + 4);
      if ((v63 + 4) > 9)
      {
        v66 = (v64 << 8) - 542145;
        v67 = __clz(v63 - 66) ^ 0x1F;
        if (v64 <= 0x845)
        {
          v66 = (v67 | (((-1 << v67) + v63 - 66) << 8)) + 52;
        }

        v68 = v63 - 2;
        v69 = (__clz(v68) ^ 0x1F) - 1;
        v65 = ((v68 >> v69) + 2 * v69 + 44) | ((v68 - (v68 >> v69 << v69)) << 8);
        if (v64 > 0x85)
        {
          v65 = v66;
        }
      }

      else
      {
        v65 = v63 + 42;
      }

      v16 += v64;
      v20 = v54;
      v70 = v54 + 3;
      v71 = __clz(v70);
      *v14 = v65;
      v14[1] = (((v70 - (((v70 >> ((v71 ^ 0x1F) - 1)) & 1 | 2) << ((v71 ^ 0x1F) - 1))) << 8) | (2 * (v71 ^ 0x1F)) | (v70 >> ((v71 ^ 0x1F) - 1)) & 1) + 76;
      v14 += 2;
      if (v16 >= v18)
      {
        break;
      }

      v72 = *(v16 - 3);
      *(a6 + (((0x1E35A7BD00000000 * v72) >> 51) & 0x1FFC)) = v16 - __src - 3;
      *(a6 + (((506832829 * ((v72 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
      *(a6 + (((506832829 * ((v72 << 16) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 1;
      v73 = ((506832829 * ((v72 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
      v53 = *(a6 + v73);
      *(a6 + v73) = v16 - __src;
      v54 = v16 - &__src[v53];
      if (v54 >= 262129 || *v16 != *&__src[v53])
      {
        goto LABEL_10;
      }
    }

    v9 = __dst;
LABEL_85:
    v11 = v87;
    v12 = v88;
    v13 = v91;
LABEL_86:
    if (v16 >= v13)
    {
      v76 = v86;
    }

    else
    {
      v74 = v13 - v16;
      if ((v13 - v16) >= 6)
      {
        v77 = (v74 << 8) - 1589738;
        if (v74 > 0x5841)
        {
          v77 = (v74 << 8) - 5784041;
        }

        if (v74 >> 1 <= 0xC20)
        {
          v75 = (v74 << 8) - 541163;
        }

        else
        {
          v75 = v77;
        }

        v78 = __clz(v74 - 66) ^ 0x1F;
        if (v74 <= 0x841)
        {
          v75 = (v78 | (((-1 << v78) + v74 - 66) << 8)) + 10;
        }

        v79 = (__clz(v74 - 2) ^ 0x1F) - 1;
        if (v74 <= 0x81)
        {
          v75 = (((v74 - 2) >> v79) + 2 * v79 + 2) | ((v74 - 2 - ((v74 - 2) >> v79 << v79)) << 8);
        }
      }

      else
      {
        v75 = v13 - v16;
      }

      *v14++ = v75;
      v80 = v15;
      memcpy(v15, v16, v74);
      v15 = &v80[v74];
      v9 = __dst;
      v76 = v86;
    }

    v81 = v15 - v9;
    if (ShouldCompress(v76, v11, v12, v15 - v9))
    {
      BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
      v82 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v82 + 13;
      result = StoreCommands(v86, v9, v81, a4, (v14 - a4) >> 2, a7, a8);
    }

    else
    {
      result = EmitUncompressedMetaBlock(v11, v12, a7, a8);
    }

    v11 = v91;
    a3 = v89 - v12;
  }

  while (v89 != v12);
  return result;
}