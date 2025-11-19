id sub_1C6CDE5F8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69B6DF0]) init];
  if (result)
  {
    v1 = result;
    sub_1C6D76CB0();
    [v1 setAutofavoritedScoreCoefficient_];
    sub_1C6D76D50();
    [v1 setServerScoreCoefficient_];
    sub_1C6D76EB0();
    [v1 setConversionCoefficient_];
    sub_1C6D76E70();
    [v1 setHalfLifeCoefficient_];
    sub_1C6D76CE0();
    [v1 setSubscribedTopicScoreCoefficient_];
    sub_1C6D76D10();
    [v1 setSubscribedChannelScoreCoefficent_];
    sub_1C6D76CB0();
    [v1 setAutofavoritedScoreCoefficient_];
    sub_1C6D76D30();
    [v1 setTabiScoreCoefficient_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CDE6E4()
{
  sub_1C6D771B0();
  sub_1C6D771A0();
  if (qword_1EDCEA7B8 != -1)
  {
    swift_once();
  }

  sub_1C6D77190();

  byte_1EDCEA7E0 = v1;
  return result;
}

void sub_1C6CDE770()
{
  if (!qword_1EDCEA450)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA8C0, 0x1E696AD98);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA450);
    }
  }
}

void sub_1C6CDE7E8()
{
  if (!qword_1EC1D9380)
  {
    sub_1C6CDE850();
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9380);
    }
  }
}

void sub_1C6CDE850()
{
  if (!qword_1EDCE65E0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65E0);
    }
  }
}

NewsPersonalization::AutoFavoriteResults::Result __swiftcall AutoFavoriteResults.Result.init(rejected:selected:)(Swift::OpaquePointer rejected, Swift::OpaquePointer selected)
{
  v2->_rawValue = rejected._rawValue;
  v2[1]._rawValue = selected._rawValue;
  result.selected = selected;
  result.rejected = rejected;
  return result;
}

uint64_t sub_1C6CDE8A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D76070();
  v5 = sub_1C6B1E978(a1, a2, v4);

  if (v5)
  {
    return 0;
  }

  v7 = sub_1C6D76080();
  v8 = sub_1C6B1E978(a1, a2, v7);

  if (v8)
  {
    return 1;
  }

  v9 = sub_1C6D76090();
  v10 = sub_1C6B1E978(a1, a2, v9);

  if (v10)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1C6CDE994(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1C6B1E6A8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1C6CDEA98(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1C6B1E6A8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_1C6CDEB9C(uint64_t a1, uint64_t a2)
{
  sub_1C6CE3674(0, &qword_1EDCDF4C8, sub_1C6CE39A8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D7EB10;
  result = [v2 defaultTags];
  if (result)
  {
    v7 = result;
    sub_1C6B18500();
    v8 = sub_1C6D79490();

    *(inited + 32) = v8;
    result = [v2 optionalTags];
    if (result)
    {
      v9 = result;
      v10 = sub_1C6D79490();

      *(inited + 40) = v10;
      if (*(*(inited + 32) + 16))
      {
        v11 = *(inited + 32);

        sub_1C6B5DEA8(a1, a2);
        v13 = v12;

        if (v13)
        {
          goto LABEL_8;
        }

        v10 = *(inited + 40);
      }

      if (!*(v10 + 16) || (, sub_1C6B5DEA8(a1, a2), v15 = v14, , (v15 & 1) == 0))
      {
        v16 = 0;
        goto LABEL_10;
      }

LABEL_8:
      v16 = 1;
LABEL_10:

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t AutoFavoriteResults.RejectionReason.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1 <= 3)
    {
      v7 = 0x7461636572706544;
      if (v1 != 2)
      {
        v7 = 0x776F6C6C61736944;
      }

      v8 = 0xD000000000000010;
      if (v1)
      {
        v8 = 0xD000000000000012;
      }

      if (v1 <= 1)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v2 = 0x626967696C656E49;
      v3 = 0x636165522078614DLL;
      if (v1 != 7)
      {
        v3 = 0x646574754DLL;
      }

      if (v1 != 6)
      {
        v2 = v3;
      }

      v4 = 0x7373694D206D6547;
      if (v1 != 4)
      {
        v4 = 0x6465726F6E6749;
      }

      if (v1 <= 5)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    sub_1C6D79D50();

    v6 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v6);

    MEMORY[0x1CCA55B00](41, 0xE100000000000000);
    return 0xD000000000000014;
  }
}

uint64_t AutoFavoriteResults.appExternalSignalResults.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.localNewsResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.newsSignalChannelResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.newsSignalGemResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.newsSignalTopicResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.webExternalSignalResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

void __swiftcall AutoFavoriteResults.init(appExternalSignalResults:localNewsResults:newsSignalChannelResults:newsSignalGemResults:newsSignalTopicResults:webExternalSignalResults:)(NewsPersonalization::AutoFavoriteResults *__return_ptr retstr, NewsPersonalization::AutoFavoriteResults::Result appExternalSignalResults, NewsPersonalization::AutoFavoriteResults::Result localNewsResults, NewsPersonalization::AutoFavoriteResults::Result newsSignalChannelResults, NewsPersonalization::AutoFavoriteResults::Result newsSignalGemResults, NewsPersonalization::AutoFavoriteResults::Result newsSignalTopicResults, NewsPersonalization::AutoFavoriteResults::Result webExternalSignalResults)
{
  v7 = *appExternalSignalResults.selected._rawValue;
  retstr->appExternalSignalResults = *appExternalSignalResults.rejected._rawValue;
  retstr->localNewsResults = v7;
  v8 = *localNewsResults.selected._rawValue;
  retstr->newsSignalChannelResults = *localNewsResults.rejected._rawValue;
  retstr->newsSignalGemResults = v8;
  v9 = *newsSignalChannelResults.selected._rawValue;
  retstr->newsSignalTopicResults = *newsSignalChannelResults.rejected._rawValue;
  retstr->webExternalSignalResults = v9;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C6CDF0E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1C6CDF130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CDF1E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  v33[0] = v1;
  v33[1] = v2;
  v33[2] = v3;
  v33[3] = v4;
  v33[4] = v5;
  v33[5] = v6;
  v33[6] = v7;
  v33[7] = v8;
  v33[8] = v10;
  v33[9] = v9;
  v33[10] = v11;
  v33[11] = v12;
  v32 = MEMORY[0x1E69E7CD0];

  v13 = 0;
  do
  {
    v14 = &v33[2 * v13];
    v15 = v14[1];
    v16 = *(v15 + 16);
    if (!v16)
    {
      v25 = *v14;

      v17 = MEMORY[0x1E69E7CC0];
      v24 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v24)
      {
        goto LABEL_2;
      }

LABEL_11:
      v26 = (v17 + 40);
      do
      {
        v28 = *(v26 - 1);
        v27 = *v26;

        sub_1C6B1E6A8(&v31, v28, v27);

        v26 += 2;
        --v24;
      }

      while (v24);
      goto LABEL_2;
    }

    v30 = *v14;
    v31 = MEMORY[0x1E69E7CC0];

    swift_bridgeObjectRetain_n();
    sub_1C6B39280(0, v16, 0);
    v17 = v31;
    v18 = (v15 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v31 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);

      if (v22 >= v21 >> 1)
      {
        sub_1C6B39280((v21 > 1), v22 + 1, 1);
        v17 = v31;
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v18 += 3;
      --v16;
    }

    while (v16);

    v24 = *(v17 + 16);
    if (v24)
    {
      goto LABEL_11;
    }

LABEL_2:
    ++v13;
  }

  while (v13 != 6);
  swift_arrayDestroy();
  return v32;
}

uint64_t sub_1C6CDF42C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CDF4B8;

  return sub_1C6CDFBF0();
}

uint64_t sub_1C6CDF4B8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CDF5EC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C6CDF5EC()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  sub_1C6B1D314();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  v0[2] = v1;
  v3 = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  v4 = sub_1C6D795F0();
  v6 = v5;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C6CDF8E0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1C6CDF988;

  return sub_1C6CDF42C();
}

uint64_t sub_1C6CDF988()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C6CDFAC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6BB6A40;

  return sub_1C6CDFBF0();
}

uint64_t sub_1C6CDFB54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BE1AB0;

  return sub_1C6CE0188(a1);
}

uint64_t sub_1C6CDFBF0()
{
  *(v1 + 304) = v0;
  v2 = swift_task_alloc();
  *(v1 + 312) = v2;
  *v2 = v1;
  v2[1] = sub_1C6CDFC88;

  return sub_1C6CE0188(v1 + 16);
}

uint64_t sub_1C6CDFC88()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1C6CE010C;
  }

  else
  {
    v3 = sub_1C6CDFD9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6CDFD9C()
{
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  v2 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v2;
  v3 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v3;
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 304);
  sub_1C6B1D314();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v20 = *(v0 + 144);
  v21 = *(v0 + 160);
  v22 = *(v0 + 176);
  v23 = *(v0 + 192);
  v18 = *(v0 + 112);
  v19 = *(v0 + 128);
  v6 = sub_1C6CDF1E0();
  sub_1C6B11374();
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_1C6CE361C();
  *(v5 + 32) = v6;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v8 = v4[41];
  v9 = v4[42];
  __swift_project_boxed_opaque_existential_1(v4 + 38, v8);
  v10 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v10;
  v11 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v11;
  v12 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v12;
  v13 = *(v9 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  *v15 = v0;
  v15[1] = sub_1C6CDFFD0;

  return v17(v0 + 208, v8, v9);
}

uint64_t sub_1C6CDFFD0()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  *(v3 + 336) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CE0124, 0, 0);
  }

  else
  {
    sub_1C6CE35EC(v3 + 112);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C6CE0124()
{
  sub_1C6CE35EC(v0 + 112);
  v1 = *(v0 + 336);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C6CE0188(uint64_t a1)
{
  *(v2 + 944) = v1;
  *(v2 + 936) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6CE01AC, 0, 0);
}

id sub_1C6CE01AC()
{
  v1 = [*(*(v0 + 944) + 216) allowlist];
  *(v0 + 952) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 944);
    v4 = v3[36];
    v5 = v3[37];
    __swift_project_boxed_opaque_existential_1(v3 + 33, v4);
    if ((*(v5 + 40))(v4, v5))
    {
      if (qword_1EDCE23B8 != -1)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v37 = v0;
        sub_1C6D79AC0();
        sub_1C6D78D30();
        v36 = v2;
        result = [v2 defaultTags];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v7 = result;
        sub_1C6B18500();
        v8 = sub_1C6D79490();

        v9 = v8 + 64;
        v10 = -1;
        v11 = -1 << *(v8 + 32);
        if (-v11 < 64)
        {
          v10 = ~(-1 << -v11);
        }

        v2 = v10 & *(v8 + 64);
        v12 = (63 - v11) >> 6;
        v38 = v8;

        v13 = 0;
        for (i = MEMORY[0x1E69E7CC0]; v2; *(v25 + 12) = v23)
        {
LABEL_12:
          v16 = __clz(__rbit64(v2)) | (v13 << 6);
          v17 = (*(v38 + 48) + 16 * v16);
          v18 = *v17;
          v19 = v17[1];
          v20 = *(*(v38 + 56) + 8 * v16);
          swift_bridgeObjectRetain_n();
          v21 = v20;
          [v21 floatValue];
          v23 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = sub_1C6B65E60(0, i[2] + 1, 1, i);
          }

          v0 = i[2];
          v24 = i[3];
          if (v0 >= v24 >> 1)
          {
            i = sub_1C6B65E60((v24 > 1), v0 + 1, 1, i);
          }

          v2 &= v2 - 1;

          i[2] = v0 + 1;
          v25 = &i[3 * v0];
          v25[4] = v18;
          v25[5] = v19;
        }

        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            v33 = *(v37 + 936);

            v34 = sub_1C6BEEEB4(i);

            v35 = MEMORY[0x1E69E7CC0];
            *v33 = MEMORY[0x1E69E7CC0];
            v33[1] = v35;
            v33[2] = v35;
            v33[3] = v35;
            v33[4] = v35;
            v33[5] = v35;
            v33[6] = v35;
            v33[7] = v34;
            v33[8] = v35;
            v33[9] = v35;
            v33[10] = v35;
            v33[11] = v35;
            v26 = *(v37 + 8);
            goto LABEL_23;
          }

          v2 = *(v9 + 8 * v15);
          ++v13;
          if (v2)
          {
            v13 = v15;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_27:
        swift_once();
      }
    }

    v27 = *(v0 + 944);
    v28 = v27[20];
    v29 = v27[21];
    __swift_project_boxed_opaque_existential_1(v27 + 17, v28);
    v30 = *(v29 + 8);
    v39 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 960) = v32;
    *v32 = v0;
    v32[1] = sub_1C6CE0630;

    return v39(v0 + 304, v28, v29);
  }

  else
  {
    sub_1C6CE3598();
    swift_allocError();
    swift_willThrow();
    v26 = *(v0 + 8);
LABEL_23:

    return v26();
  }
}

uint64_t sub_1C6CE0630()
{
  v2 = *(*v1 + 960);
  v5 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = sub_1C6CE15A0;
  }

  else
  {
    v3 = sub_1C6CE0744;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6CE0744()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 320);
  *(v0 + 560) = *(v0 + 304);
  *(v0 + 576) = v2;
  v3 = *(v0 + 352);
  *(v0 + 592) = *(v0 + 336);
  *(v0 + 608) = v3;
  v4 = v1[25];
  v5 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v4);
  (*(v5 + 8))(0, v4, v5);
  v6 = swift_allocObject();
  *(v0 + 976) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = v7;
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  v10 = *(v0 + 608);
  *(v0 + 400) = *(v0 + 592);
  *(v0 + 416) = v10;
  v11 = *(v0 + 576);
  *(v0 + 368) = *(v0 + 560);
  *(v0 + 384) = v11;
  v12 = *(v9 + 8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 984) = v14;
  *v14 = v0;
  v14[1] = sub_1C6CE08FC;

  return v16(v0 + 808, v0 + 368, v8, v9);
}

uint64_t sub_1C6CE08FC()
{
  v2 = *(*v1 + 984);
  v5 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = sub_1C6CE1604;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v3 = sub_1C6CE0A20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6CE0A20()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 816);
  *(v0 + 1008) = v2;
  *(v0 + 1000) = v1;
  sub_1C6B16F28(*(v0 + 944) + 56, v0 + 624);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 624), *(v0 + 648));
  v4 = v3;
  v5 = *(v0 + 576);
  *(v0 + 432) = *(v0 + 560);
  *(v0 + 448) = v5;
  v6 = *(v0 + 608);
  *(v0 + 464) = *(v0 + 592);
  *(v0 + 480) = v6;
  v7 = *(v2 + 16);
  *(v0 + 1016) = v7;
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v21 = v3;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v7, 0);
    v8 = v22;
    v9 = *(v22 + 16);
    v10 = 16 * v9;
    v11 = (v2 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *(v22 + 24);

      if (v9 >= v14 >> 1)
      {
        sub_1C6B39280((v14 > 1), v9 + 1, 1);
      }

      *(v22 + 16) = v9 + 1;
      v15 = v22 + v10;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;
      v10 += 16;
      v11 += 3;
      ++v9;
      --v7;
    }

    while (v7);
    v4 = v21;
  }

  v16 = sub_1C6B1E610(v8);
  *(v0 + 1024) = v16;

  v17 = *v4;
  v18 = swift_task_alloc();
  *(v0 + 1032) = v18;
  *v18 = v0;
  v18[1] = sub_1C6CE0BEC;
  v19 = *(v0 + 952);

  return sub_1C6C68E2C(v0 + 744, v0 + 760, v0 + 776, v0 + 432, v0 + 664, v19, v16);
}

uint64_t sub_1C6CE0BEC()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v7 = *v1;
  *(*v1 + 1040) = v0;

  v4 = *(v2 + 1024);

  if (v0)
  {
    v5 = sub_1C6CE18D4;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v5 = sub_1C6CE0D20;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C6CE0D20()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 760);
  v3 = *(v0 + 768);
  v61 = *(v0 + 776);
  v62 = *(v0 + 744);
  __swift_destroy_boxed_opaque_existential_1((v0 + 624));
  swift_bridgeObjectRetain_n();
  v4 = *(&v62 + 1);

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v0 + 1048) = v61;
  *(v0 + 1064) = v62;
  v7 = *(v0 + 1016);
  v8 = MEMORY[0x1E69E7CC0];
  *&v62 = v0;
  if (v7)
  {
    v9 = *(v0 + 1008);
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v7, 0);
    v10 = 0;
    v8 = v63;
    v11 = *(v63 + 16);
    v12 = 16 * v11;
    v13 = (v9 + 40);
    v0 = v62;
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = v11 + 1;
      v17 = *(v63 + 24);

      if (v11 >= v17 >> 1)
      {
        sub_1C6B39280((v17 > 1), v16, 1);
      }

      v18 = *(v62 + 1016);
      ++v10;
      *(v63 + 16) = v16;
      v19 = v63 + v12;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      v12 += 16;
      v13 += 3;
      ++v11;
    }

    while (v10 != v18);
    v4 = *(&v62 + 1);
  }

  v20 = *(v4 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v20, 0);
    v21 = v64;
    v22 = *(v64 + 16);
    v23 = 16 * v22;
    v24 = (v4 + 40);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = v22 + 1;
      v28 = *(v64 + 24);

      if (v22 >= v28 >> 1)
      {
        sub_1C6B39280((v28 > 1), v27, 1);
      }

      *(v64 + 16) = v27;
      v29 = v64 + v23;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v23 += 16;
      v24 += 3;
      ++v22;
      --v20;
    }

    while (v20);
    v0 = v62;
  }

  v30 = *(v0 + 976);
  sub_1C6B38560(v21);
  swift_beginAccess();
  v31 = *(v30 + 24);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v65 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v32, 0);
    v33 = v65;
    v34 = *(v65 + 16);
    v35 = 16 * v34;
    v36 = (v31 + 40);
    do
    {
      v38 = *(v36 - 1);
      v37 = *v36;
      v39 = v34 + 1;
      v40 = *(v65 + 24);

      if (v34 >= v40 >> 1)
      {
        sub_1C6B39280((v40 > 1), v39, 1);
      }

      *(v65 + 16) = v39;
      v41 = v65 + v35;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      v35 += 16;
      v36 += 3;
      ++v34;
      --v32;
    }

    while (v32);
  }

  sub_1C6B38560(v33);
  v42 = *(*(&v61 + 1) + 16);
  v43 = MEMORY[0x1E69E7CC0];
  if (v42)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v42, 0);
    v43 = v66;
    v44 = *(v66 + 16);
    v45 = 16 * v44;
    v46 = (*(&v61 + 1) + 40);
    do
    {
      v48 = *(v46 - 1);
      v47 = *v46;
      v49 = v44 + 1;
      v50 = *(v66 + 24);

      if (v44 >= v50 >> 1)
      {
        sub_1C6B39280((v50 > 1), v49, 1);
      }

      *(v66 + 16) = v49;
      v51 = v66 + v45;
      *(v51 + 32) = v48;
      *(v51 + 40) = v47;
      v45 += 16;
      v46 += 3;
      ++v44;
      --v42;
    }

    while (v42);
  }

  v52 = *(v62 + 944);
  sub_1C6B38560(v43);
  v53 = sub_1C6B1E610(v8);
  *(v62 + 1080) = v53;

  v54 = __swift_project_boxed_opaque_existential_1((v52 + 96), *(v52 + 120));
  v55 = *(v62 + 576);
  *(v62 + 496) = *(v62 + 560);
  *(v62 + 512) = v55;
  v56 = *(v62 + 608);
  *(v62 + 528) = *(v62 + 592);
  *(v62 + 544) = v56;
  v57 = *v54;
  v58 = swift_task_alloc();
  *(v62 + 1088) = v58;
  *v58 = v62;
  v58[1] = sub_1C6CE11C0;
  v59 = *(v62 + 952);

  return sub_1C6BEA500(v62 + 840, v62 + 856, v62 + 496, v62 + 664, v59, v53);
}

uint64_t sub_1C6CE11C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v7 = *v1;
  *(*v1 + 1096) = v0;

  v4 = *(v2 + 1080);

  if (v0)
  {
    v5 = sub_1C6CE1F08;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v5 = sub_1C6CE12F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C6CE12F4()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 976);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v0 + 208) = *(v0 + 840);
  v6 = *(v0 + 1048);
  v5 = *(v0 + 1064);
  *(v0 + 224) = *(v0 + 1000);
  *(v0 + 240) = v5;
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  *(v0 + 272) = v6;
  *(v0 + 288) = v1;

  v7 = swift_task_alloc();
  *(v0 + 1104) = v7;
  *v7 = v0;
  v7[1] = sub_1C6CE13D4;
  v8 = *(v0 + 944);
  v9 = *(v0 + 936);

  return sub_1C6CE24FC(v9, (v0 + 208));
}

uint64_t sub_1C6CE13D4()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v13 = *v1;
  *(*v1 + 1112) = v0;

  v4 = v2[14];
  if (v0)
  {
    v2[7] = v2[13];
    v2[8] = v4;
    v5 = v2[15];
    v6 = v2[16];
    v7 = v2[18];
    v2[11] = v2[17];
    v2[12] = v7;
    v2[9] = v5;
    v2[10] = v6;
    sub_1C6CE35EC((v2 + 7));
    v8 = sub_1C6CE2100;
  }

  else
  {
    v2[1] = v2[13];
    v2[2] = v4;
    v9 = v2[15];
    v10 = v2[16];
    v11 = v2[18];
    v2[5] = v2[17];
    v2[6] = v11;
    v2[3] = v9;
    v2[4] = v10;
    sub_1C6CE35EC((v2 + 1));
    v8 = sub_1C6CE1528;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C6CE1528()
{
  v1 = *(v0 + 976);

  __swift_destroy_boxed_opaque_existential_1((v0 + 664));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C6CE15A0()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C6CE1604()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 992);
  sub_1C6B1D314();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  *(v0 + 728) = 0;
  *(v0 + 736) = 0xE000000000000000;
  *(v0 + 888) = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v3 = *(v0 + 728);
  v4 = *(v0 + 736);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 1008) = MEMORY[0x1E69E7CC0];
  *(v0 + 1000) = v5;
  sub_1C6B16F28(*(v0 + 944) + 56, v0 + 624);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 624), *(v0 + 648));
  v7 = v6;
  v8 = *(v0 + 576);
  *(v0 + 432) = *(v0 + 560);
  *(v0 + 448) = v8;
  v9 = *(v0 + 608);
  *(v0 + 464) = *(v0 + 592);
  *(v0 + 480) = v9;
  v10 = v5[2];
  *(v0 + 1016) = v10;
  if (v10)
  {
    v24 = v6;
    sub_1C6B39280(0, v10, 0);
    v11 = v5;
    v12 = v5[2];
    v13 = v5 + 5;
    v14 = 2 * v12;
    do
    {
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = v5[3];

      if (v12 >= v17 >> 1)
      {
        sub_1C6B39280((v17 > 1), v12 + 1, 1);
      }

      v5[2] = v12 + 1;
      v18 = &v5[v14];
      v18[4] = v16;
      v18[5] = v15;
      v14 += 2;
      v13 += 3;
      ++v12;
      --v10;
    }

    while (v10);
    v7 = v24;
  }

  else
  {
    v11 = v5;
  }

  v19 = sub_1C6B1E610(v11);
  *(v0 + 1024) = v19;

  v20 = *v7;
  v21 = swift_task_alloc();
  *(v0 + 1032) = v21;
  *v21 = v0;
  v21[1] = sub_1C6CE0BEC;
  v22 = *(v0 + 952);

  return sub_1C6C68E2C(v0 + 744, v0 + 760, v0 + 776, v0 + 432, v0 + 664, v22, v19);
}

uint64_t sub_1C6CE18D4()
{
  v1 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 78);
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v2 = v0[130];
  sub_1C6B1D314();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  v0[99] = 0;
  v0[100] = 0xE000000000000000;
  v0[116] = v2;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v4 = v0[99];
  v5 = v1[100];
  v6 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6B2064C();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v1[112] = v2;
  v8 = v2;
  v9 = swift_dynamicCast();
  v10 = v1[130];
  if (v9 || (v1[113] = v10, v11 = v10, v12 = swift_dynamicCast(), v10 = v1[130], v12))
  {
    sub_1C6CE2178(v1[118], v1[122], v1[119]);
  }

  else
  {
    sub_1C6D79AA0();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7E630;
    v1[103] = 0;
    v1[104] = 0xE000000000000000;
    v1[114] = v10;
    sub_1C6D79E60();
    v14 = v1[103];
    v15 = v1[104];
    *(v13 + 56) = v6;
    *(v13 + 64) = v7;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_1C6D78D30();
  }

  v16 = MEMORY[0x1E69E7CC0];
  v1[134] = MEMORY[0x1E69E7CC0];
  v1[133] = v16;
  v1[132] = v16;
  v1[131] = v16;
  v17 = v1[127];
  v73 = v1;
  if (!v17)
  {
    v20 = v16;
    v30 = *(v16 + 16);
    if (!v30)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v18 = v1[126];
  sub_1C6B39280(0, v17, 0);
  v19 = 0;
  v20 = v16;
  v21 = *(v16 + 16);
  v22 = 16 * v21;
  v23 = (v18 + 40);
  do
  {
    v25 = *(v23 - 1);
    v24 = *v23;
    v26 = v21 + 1;
    v27 = *(v16 + 24);

    if (v21 >= v27 >> 1)
    {
      sub_1C6B39280((v27 > 1), v26, 1);
    }

    v28 = v73[127];
    ++v19;
    *(v16 + 16) = v26;
    v29 = v16 + v22;
    *(v29 + 32) = v25;
    *(v29 + 40) = v24;
    v22 += 16;
    v23 += 3;
    ++v21;
  }

  while (v19 != v28);
  v1 = v73;
  v30 = *(v16 + 16);
  if (v30)
  {
LABEL_15:
    sub_1C6B39280(0, v30, 0);
    v31 = (v16 + 40);
    v32 = *(v16 + 16);
    v33 = 16 * v32;
    do
    {
      v35 = *(v31 - 1);
      v34 = *v31;
      v36 = v32 + 1;
      v37 = *(v16 + 24);

      if (v32 >= v37 >> 1)
      {
        sub_1C6B39280((v37 > 1), v36, 1);
      }

      *(v16 + 16) = v36;
      v38 = v16 + v33;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      v33 += 16;
      v31 += 3;
      ++v32;
      --v30;
    }

    while (v30);
    v1 = v73;
  }

LABEL_20:
  v39 = v1[122];
  sub_1C6B38560(v16);
  v40 = v20;
  swift_beginAccess();
  v41 = *(v39 + 24);
  v42 = *(v41 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  if (v42)
  {
    v72 = v20;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v42, 0);
    v44 = v74;
    v45 = *(v74 + 16);
    v46 = 16 * v45;
    v47 = (v41 + 40);
    do
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v50 = v45 + 1;
      v51 = *(v74 + 24);

      if (v45 >= v51 >> 1)
      {
        sub_1C6B39280((v51 > 1), v50, 1);
      }

      *(v74 + 16) = v50;
      v52 = v74 + v46;
      *(v52 + 32) = v49;
      *(v52 + 40) = v48;
      v46 += 16;
      v47 += 3;
      ++v45;
      --v42;
    }

    while (v42);
    v40 = v72;
    v1 = v73;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B38560(v44);
  v53 = v40;
  v54 = *(v43 + 16);
  if (v54)
  {
    sub_1C6B39280(0, v54, 0);
    v55 = (v43 + 40);
    v56 = *(v43 + 16);
    v57 = 16 * v56;
    do
    {
      v59 = *(v55 - 1);
      v58 = *v55;
      v60 = v56 + 1;
      v61 = *(v43 + 24);

      if (v56 >= v61 >> 1)
      {
        sub_1C6B39280((v61 > 1), v60, 1);
      }

      *(v43 + 16) = v60;
      v62 = v43 + v57;
      *(v62 + 32) = v59;
      *(v62 + 40) = v58;
      v57 += 16;
      v55 += 3;
      ++v56;
      --v54;
    }

    while (v54);
    v1 = v73;
  }

  v63 = v1[118];
  sub_1C6B38560(v43);
  v64 = sub_1C6B1E610(v53);
  v1[135] = v64;

  v65 = __swift_project_boxed_opaque_existential_1((v63 + 96), *(v63 + 120));
  v66 = *(v1 + 36);
  *(v1 + 31) = *(v1 + 35);
  *(v1 + 32) = v66;
  v67 = *(v1 + 38);
  *(v1 + 33) = *(v1 + 37);
  *(v1 + 34) = v67;
  v68 = *v65;
  v69 = swift_task_alloc();
  v1[136] = v69;
  *v69 = v1;
  v69[1] = sub_1C6CE11C0;
  v70 = v1[119];

  return sub_1C6BEA500((v1 + 105), (v1 + 107), (v1 + 62), (v1 + 83), v70, v64);
}

uint64_t sub_1C6CE1F08()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1096);
  sub_1C6B1D314();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  *(v0 + 872) = 0;
  *(v0 + 880) = 0xE000000000000000;
  *(v0 + 920) = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v3 = *(v0 + 872);
  v4 = *(v0 + 880);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v5 = *(v0 + 976);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = MEMORY[0x1E69E7CC0];
  v10 = *(v0 + 1048);
  v9 = *(v0 + 1064);
  *(v0 + 224) = *(v0 + 1000);
  *(v0 + 240) = v9;
  *(v0 + 208) = v8;
  *(v0 + 216) = v8;
  *(v0 + 256) = v6;
  *(v0 + 264) = v7;
  *(v0 + 272) = v10;
  *(v0 + 288) = v8;
  *(v0 + 296) = v8;

  v11 = swift_task_alloc();
  *(v0 + 1104) = v11;
  *v11 = v0;
  v11[1] = sub_1C6CE13D4;
  v12 = *(v0 + 944);
  v13 = *(v0 + 936);

  return sub_1C6CE24FC(v13, (v0 + 208));
}

uint64_t sub_1C6CE2100()
{
  v1 = *(v0 + 976);

  __swift_destroy_boxed_opaque_existential_1((v0 + 664));

  v2 = *(v0 + 1112);
  v3 = *(v0 + 8);

  return v3();
}

id sub_1C6CE2178(void *a1, unint64_t a2, void *i)
{
  v5 = a1[41];
  v6 = a1[42];
  __swift_project_boxed_opaque_existential_1(a1 + 38, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (!v7 || (v8 = *(v7 + 16), , !v8))
  {
    if (qword_1EDCE23B8 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v33 = a2;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      result = [i defaultTags];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      sub_1C6B18500();
      v11 = sub_1C6D79490();

      v12 = v11 + 64;
      v13 = 1 << *(v11 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v11 + 64);
      v16 = (v13 + 63) >> 6;
      v34 = v11;

      v17 = 0;
      for (i = MEMORY[0x1E69E7CC0]; v15; *(v29 + 12) = v26)
      {
LABEL_17:
        v19 = __clz(__rbit64(v15)) | (v17 << 6);
        v20 = (*(v34 + 48) + 16 * v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(*(v34 + 56) + 8 * v19);
        swift_bridgeObjectRetain_n();
        v24 = v23;
        [v24 floatValue];
        v26 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_1C6B65E60(0, i[2] + 1, 1, i);
        }

        v28 = i[2];
        v27 = i[3];
        a2 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          i = sub_1C6B65E60((v27 > 1), v28 + 1, 1, i);
        }

        v15 &= v15 - 1;

        i[2] = a2;
        v29 = &i[3 * v28];
        v29[4] = v21;
        v29[5] = v22;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          v30 = sub_1C6BEEEB4(i);

          swift_beginAccess();
          v32 = *(v33 + 16);
          v31 = *(v33 + 24);
          *(v33 + 16) = MEMORY[0x1E69E7CC0];
          *(v33 + 24) = v30;
        }

        v15 = *(v12 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }
  }

  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();

  return sub_1C6D78D30();
}

uint64_t sub_1C6CE24FC(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v3 + 40) = *a2;
  *(v3 + 56) = v4;
  v5 = a2[3];
  *(v3 + 72) = a2[2];
  *(v3 + 88) = v5;
  v6 = a2[5];
  *(v3 + 104) = a2[4];
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 120) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1C6CE2540, 0, 0);
}

uint64_t sub_1C6CE2540()
{
  v18 = v0;
  v1 = *(v0 + 32);
  v2 = v1[32];
  v15 = *(v0 + 56);
  v16 = *(v0 + 40);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  v3 = sub_1C6CDF1E0();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_1C6B6732C(*(v3 + 16), 0);
    v7 = sub_1C6B67FC8(v17, v6 + 4, v5, v4);
    sub_1C6B688C4();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  *(v0 + 136) = sub_1C6D79320();

  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1C6CE26D0;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1C6CE26D0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1C6CE2C7C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1C6CE27EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6CE27EC()
{
  v58 = v0;
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_1C6D79E90();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1CCA56240](v3, v1);
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v8 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v10 = [v8 identifier];
        v11 = sub_1C6D795A0();
        v13 = v12;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v4;
        v15 = sub_1C6B5DEA8(v11, v13);
        v17 = v4[2];
        v18 = (v16 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          goto LABEL_27;
        }

        v21 = v16;
        if (v4[3] < v20)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v26 = v15;
        sub_1C6B74D38();
        v15 = v26;
        if (v21)
        {
LABEL_4:
          v5 = v15;

          v4 = v56;
          v6 = v56[7];
          v7 = *(v6 + 8 * v5);
          *(v6 + 8 * v5) = v8;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_15:
        v4 = v56;
        v56[(v15 >> 6) + 8] |= 1 << v15;
        v23 = (v4[6] + 16 * v15);
        *v23 = v11;
        v23[1] = v13;
        *(v4[7] + 8 * v15) = v8;
        swift_unknownObjectRelease();
        v24 = v4[2];
        v19 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v19)
        {
          goto LABEL_28;
        }

        v4[2] = v25;
LABEL_5:
        ++v3;
        if (v9 == v2)
        {
          goto LABEL_31;
        }
      }

      sub_1C6B7207C(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1C6B5DEA8(v11, v13);
      if ((v21 & 1) != (v22 & 1))
      {

        return sub_1C6D7A1C0();
      }

LABEL_14:
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v47 = v46[15];
  v48 = v46[16];
  v42 = v46[13];
  v43 = v46[14];
  v37 = v46[11];
  v38 = v46[12];
  v28 = v46[9];
  v40 = v46[10];
  v30 = v46[7];
  v29 = v46[8];
  v32 = v46[5];
  v31 = v46[6];
  v33 = v46[3];
  v34 = v46[4];

  v56 = v32;
  v57 = v31;

  sub_1C6CE2CE0(&v56, v4, v34, &v50);

  v56 = v30;
  v57 = v29;

  v45 = v50;
  sub_1C6CE2CE0(&v56, v4, v34, &v51);

  v56 = v28;
  v57 = v40;

  v41 = v51;
  sub_1C6CE2CE0(&v56, v4, v34, &v52);

  v56 = v37;
  v57 = v38;

  v39 = v52;
  sub_1C6CE2CE0(&v56, v4, v34, &v53);

  v56 = v42;
  v57 = v43;

  v44 = v53;
  sub_1C6CE2CE0(&v56, v4, v34, &v54);

  v56 = v47;
  v57 = v48;

  v49 = v54;
  sub_1C6CE2CE0(&v56, v4, v34, &v55);

  *v33 = v45;
  v33[1] = v41;
  v33[2] = v39;
  v33[3] = v44;
  v35 = v55;
  v33[4] = v49;
  v33[5] = v35;
  v36 = v46[1];

  return v36();
}

uint64_t sub_1C6CE2C7C()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t *sub_1C6CE2CE0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  v56 = *result;
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = 0;
    v62 = *(v4 + 16);
    v58 = v5 - 1;
    v59 = v4 + 48;
    v8 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v60 = MEMORY[0x1E69E7CC0];
LABEL_3:
    while (2)
    {
      v61 = v8;
      v9 = (v59 + 24 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v9 - 2);
        v11 = *(v9 - 1);
        v13 = *v9;
        v14 = *(a2 + 16);

        if (!v14)
        {
          break;
        }

        v15 = sub_1C6B5DEA8(v12, v11);
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = *(*(a2 + 56) + 8 * v15);
        if ([swift_unknownObjectRetain() isDeprecated])
        {

          v8 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1C6B65E60(0, v61[2] + 1, 1, v61);
          }

          v28 = v8[2];
          v30 = v8[3];
          v29 = v28 + 1;
          if (v28 >= v30 >> 1)
          {
            v8 = sub_1C6B65E60((v30 > 1), v28 + 1, 1, v8);
          }

          result = swift_unknownObjectRelease();
          goto LABEL_25;
        }

        v19 = a2;
        v20 = v4;
        v22 = a3[46];
        v21 = a3[47];
        __swift_project_boxed_opaque_existential_1(a3 + 43, v22);
        v23 = (*(v21 + 8))(v18, v22, v21);

        if ((v23 & 1) == 0)
        {
          v32 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1C6B65E60(0, v60[2] + 1, 1, v60);
          }

          v8 = v61;
          v34 = v32[2];
          v33 = v32[3];
          if (v34 >= v33 >> 1)
          {
            v60 = sub_1C6B65E60((v33 > 1), v34 + 1, 1, v32);
          }

          else
          {
            v60 = v32;
          }

          v7 = v10 + 1;

          result = swift_unknownObjectRelease();
          v60[2] = v34 + 1;
          v35 = &v60[3 * v34];
          v35[4] = v12;
          v35[5] = v11;
          *(v35 + 12) = v13;
          v4 = v20;
          a2 = v19;
          if (v58 != v10)
          {
            goto LABEL_3;
          }

LABEL_34:
          v36 = v8[2];
          if (!v36)
          {
            goto LABEL_41;
          }

LABEL_35:
          v65 = MEMORY[0x1E69E7CC0];
          sub_1C6B39554(0, v36, 0);
          v37 = v8;
          v38 = v65;
          v39 = v37 + 6;
          do
          {
            v40 = *(v39 - 2);
            v41 = *(v39 - 1);
            v42 = *v39;
            v44 = v65[2];
            v43 = v65[3];

            if (v44 >= v43 >> 1)
            {
              sub_1C6B39554((v43 > 1), v44 + 1, 1);
            }

            v65[2] = v44 + 1;
            v45 = &v65[5 * v44];
            v45[4] = v40;
            v45[5] = v41;
            *(v45 + 12) = v42;
            v45[7] = 2;
            *(v45 + 64) = 1;
            v39 += 6;
            --v36;
          }

          while (v36);

          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1C6B65E60(0, v64[2] + 1, 1, v64);
        }

        v4 = v20;
        v25 = v64[2];
        v24 = v64[3];
        a2 = v19;
        if (v25 >= v24 >> 1)
        {
          v64 = sub_1C6B65E60((v24 > 1), v25 + 1, 1, v64);
        }

        ++v10;

        result = swift_unknownObjectRelease();
        v64[2] = v25 + 1;
        v26 = &v64[3 * v25];
        v26[4] = v12;
        v26[5] = v11;
        *(v26 + 12) = v13;
        v9 += 6;
        if (v62 == v10)
        {
          v8 = v61;
          goto LABEL_34;
        }
      }

      v8 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1C6B65E60(0, v61[2] + 1, 1, v61);
      }

      v28 = v8[2];
      v27 = v8[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v8 = sub_1C6B65E60((v27 > 1), v28 + 1, 1, v8);
      }

LABEL_25:
      v8[2] = v29;
      v31 = &v8[3 * v28];
      v31[4] = v12;
      v31[5] = v11;
      *(v31 + 12) = v13;
      v7 = v10 + 1;
      if (v58 != v10)
      {
        continue;
      }

      goto LABEL_34;
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v36 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v36)
  {
    goto LABEL_35;
  }

LABEL_41:

  v38 = MEMORY[0x1E69E7CC0];
LABEL_42:

  sub_1C6B38DF0(v38);
  v46 = v60[2];
  if (v46)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C6B39554(0, v46, 0);
    v47 = v66;
    v48 = v60 + 6;
    do
    {
      v50 = *(v48 - 2);
      v49 = *(v48 - 1);
      v51 = *v48;
      v53 = v66[2];
      v52 = v66[3];

      if (v53 >= v52 >> 1)
      {
        sub_1C6B39554((v52 > 1), v53 + 1, 1);
      }

      v66[2] = v53 + 1;
      v54 = &v66[5 * v53];
      v54[4] = v50;
      v54[5] = v49;
      *(v54 + 12) = v51;
      v54[7] = 6;
      *(v54 + 64) = 1;
      v48 += 6;
      --v46;
    }

    while (v46);
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B38DF0(v47);
  v55 = sub_1C6BEEEB4(v64);

  *a4 = v56;
  a4[1] = v55;
  return result;
}

uint64_t *sub_1C6CE32AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[27];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 38);
  __swift_destroy_boxed_opaque_existential_1(v0 + 43);
  return v0;
}

uint64_t sub_1C6CE3314()
{
  sub_1C6CE32AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CE339C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1C6B1B3B0(0, a3);

  return sub_1C6D78290();
}

uint64_t sub_1C6CE33F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BE1AB0;

  return sub_1C6CDFB54(a1);
}

uint64_t sub_1C6CE348C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6BB6A40;

  return sub_1C6CDFAC4();
}

uint64_t sub_1C6CE3528(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1C6B1E6A8(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_1C6CE3598()
{
  result = qword_1EDCE2308;
  if (!qword_1EDCE2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2308);
  }

  return result;
}

unint64_t sub_1C6CE361C()
{
  result = qword_1EDCDF928;
  if (!qword_1EDCDF928)
  {
    sub_1C6B11374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF928);
  }

  return result;
}

void sub_1C6CE3674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t sub_1C6CE3730()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6BB6A40;

  return sub_1C6CDF8E0(v2, v3);
}

uint64_t sub_1C6CE37DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C6BE1AB0;

  return sub_1C6D30828(v2, v3, v5);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6CE38DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C6BE1AB0;

  return sub_1C6D30910(a1, v4, v5, v7);
}

void sub_1C6CE39A8()
{
  if (!qword_1EDCDFBD0)
  {
    sub_1C6B18500();
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFBD0);
    }
  }
}

uint64_t sub_1C6CE3A10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v3)
    {
      v3 = a2;
    }

    v5 = v3 - a2;
    v6 = (result + 16 * a2 + 8);
    while (v5)
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_1C6B1E6A8(&v9, v8, v7);

      --v5;
      v6 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C6CE3AB4()
{
  result = qword_1EC1D9390;
  if (!qword_1EC1D9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9390);
  }

  return result;
}

uint64_t sub_1C6CE3B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v3 + 40);
  if (*(v13 + 16) && (v14 = sub_1C6B5DEA8(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  swift_endAccess();
  sub_1C6CE5BA0(a1, v12, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1C6B66698(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1C6B66698(v17 > 1, v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  sub_1C6CE58A4(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
  swift_beginAccess();

  v19 = *(v4 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  sub_1C6BC5534(v16, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + 40) = v22;
  return swift_endAccess();
}

uint64_t sub_1C6CE3D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v87 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v84 = *(v87 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v79[0] = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = v79 - v8;
  v82 = sub_1C6D77E20();
  v81 = *(v82 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = (v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C6D75F50();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v79 - v15;
  v17 = sub_1C6D76F90();
  v93 = *(v17 - 8);
  v18 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDCE9830;
  sub_1C6B1D314();
  v89 = v22;
  v23 = swift_allocObject();
  v90 = xmmword_1C6D7E630;
  *(v23 + 16) = xmmword_1C6D7E630;
  v79[1] = sub_1C6CE590C(&unk_1EDCE6220, MEMORY[0x1E69E3698]);
  v24 = sub_1C6D7A0E0();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v86 = sub_1C6B2064C();
  *(v23 + 64) = v86;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v27 = v21;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v28 = *(v3 + 16);
  if (v28 == 2)
  {
    sub_1C6D79AC0();
    return sub_1C6D78D30();
  }

  v30 = v93;
  (*(v93 + 16))(v20, a1, v17);
  v31 = (*(v30 + 88))(v20, v17);
  if (v31 == *MEMORY[0x1E69E3600])
  {
    (*(v30 + 96))(v20, v17);
    v33 = *v20;
    v32 = v20[1];
    v34 = *(v3 + 24);
    sub_1C6D75F30();
    v35 = v96;
    sub_1C6B910A4(v33, v32, v16);
    if (v35)
    {
      (*(v91 + 8))(v16, v92);
    }

    else
    {

      return (*(v91 + 8))(v16, v92);
    }
  }

  v36 = v31;
  if (v31 == *MEMORY[0x1E69E35E8])
  {
    (*(v93 + 96))(v20, v17);
    v38 = *v20;
    v37 = v20[1];
    v39 = *(v3 + 24);
    v40 = v85;
    sub_1C6D75F30();
    sub_1C6B92790(v38, v37, v40);
    (*(v91 + 8))(v40, v92);
  }

  if (v31 == *MEMORY[0x1E69E3638] || v31 == *MEMORY[0x1E69E3668] || v31 == *MEMORY[0x1E69E3650] || v31 == *MEMORY[0x1E69E3688] || v31 == *MEMORY[0x1E69E3658] || v31 == *MEMORY[0x1E69E3680] || v31 == *MEMORY[0x1E69E3610])
  {
    goto LABEL_17;
  }

  if (v31 != *MEMORY[0x1E69E35F8])
  {
    if (v31 == *MEMORY[0x1E69E3628])
    {
LABEL_17:
      (*(v93 + 8))(v20, v17);
      goto LABEL_18;
    }

    if (v31 != *MEMORY[0x1E69E35F0])
    {
      if (v31 != *MEMORY[0x1E69E3630] && v31 != *MEMORY[0x1E69E3660] && v31 != *MEMORY[0x1E69E3670] && v31 != *MEMORY[0x1E69E3690] && v31 != *MEMORY[0x1E69E3648] && v31 != *MEMORY[0x1E69E3640] && v31 != *MEMORY[0x1E69E3678] && v31 != *MEMORY[0x1E69E3608] && v31 != *MEMORY[0x1E69E3620])
      {
        v78 = *MEMORY[0x1E69E3618];
        result = (*(v93 + 8))(v20, v17);
        if (v36 != v78)
        {
          return result;
        }

        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  (*(v93 + 96))(v20, v17);
  __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_18:
  v41 = *(v3 + 24);
  swift_beginAccess();
  v42 = *(v41 + 64);
  if (v42)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v90;

    v44 = sub_1C6D7A0E0();
    v45 = v86;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = v45;
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    sub_1C6D79AC0();
    v93 = v27;
    sub_1C6D78D30();

    v47 = v80;
    (*(v81 + 16))(v80, v83, v82);
    v48 = sub_1C6CE59A8(v47, v28 & 0x101);
    v50 = v49;
    v51 = v42;
    v53 = v52;
    v55 = v54;
    v56 = *(*v51 + 104);
    v92 = v51;
    v57 = v51 + v56;
    swift_beginAccess();
    v58 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v58);
    v79[-6] = a1;
    v79[-5] = v48;
    v79[-4] = v50;
    v79[-3] = v53;
    v79[-2] = v55;
    v79[-1] = v3 + 40;
    sub_1C6CE590C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    v59 = v96;
    sub_1C6D78C30();
    v60 = *(v57 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 16) = v60;
    v96 = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1C6B666CC(0, v60[2] + 1, 1, v60);
      *(v57 + 16) = v60;
    }

    v62 = v84;
    v64 = v60[2];
    v63 = v60[3];
    if (v64 >= v63 >> 1)
    {
      v60 = sub_1C6B666CC(v63 > 1, v64 + 1, 1, v60);
    }

    v60[2] = v64 + 1;
    v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v66 = *(v62 + 72);
    sub_1C6CE58A4(v88, v60 + v65 + v66 * v64, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    *(v57 + 16) = v60;
    swift_endAccess();
    swift_endAccess();
    sub_1C6B75B88(v48, v50);
    sub_1C6B75B88(v53, v55);
    v67 = *(v57 + 16);
    v68 = *(v67 + 16);
    if (v68)
    {
      v69 = v79[0];
      sub_1C6CE5BA0(v67 + v65 + (v68 - 1) * v66, v79[0], type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v70 = swift_allocObject();
      *(v70 + 16) = v90;
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_1C6D79E60();
      v71 = v94;
      v72 = v95;
      v73 = v86;
      *(v70 + 56) = MEMORY[0x1E69E6158];
      *(v70 + 64) = v73;
      *(v70 + 32) = v71;
      *(v70 + 40) = v72;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      sub_1C6CE5C08(v69, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    }

    v74 = swift_allocObject();
    *(v74 + 16) = v90;
    v75 = *(*(v57 + 16) + 16);
    v76 = MEMORY[0x1E69E65A8];
    *(v74 + 56) = MEMORY[0x1E69E6530];
    *(v74 + 64) = v76;
    *(v74 + 32) = v75;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  else
  {
    sub_1C6D79AC0();
    sub_1C6D78D30();
    sub_1C6CE5954();
    swift_allocError();
    *v77 = xmmword_1C6D8FA00;
    return swift_willThrow();
  }
}

uint64_t sub_1C6CE4908(uint64_t a1)
{
  v2 = v1;
  sub_1C6B68B8C();
  v67 = v4;
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C6D75F50();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = sub_1C6D78FA0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) == 2)
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    return 0;
  }

  else
  {
    v61 = a1;
    sub_1C6D78F90();
    v25 = sub_1C6D78F80();
    v27 = v26;
    v28 = v20;
    v29 = v25;
    (*(v21 + 8))(v24, v28);
    v30 = v27;
    v31 = *(v2 + 32);
    sub_1C6D75F30();
    v32 = sub_1C6B910A4(v29, v27, v19);
    v58 = v31;
    v59 = v29;
    v60 = v30;
    v34 = *(v12 + 8);
    v33 = v12 + 8;
    v35 = v64;
    v57 = v34;
    v34(v19, v64);
    v36 = v61;
    v37 = *(v61 + 16);
    v38 = MEMORY[0x1E69E7CC0];
    if (v37)
    {
      v55 = v32;
      v56 = v33;
      v68 = MEMORY[0x1E69E7CC0];
      sub_1C6B39624(0, v37, 0);
      v38 = v68;
      v39 = v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v65 = *(v65 + 72);
      do
      {
        v40 = sub_1C6CE5BA0(v39, v7, sub_1C6B68B8C);
        v41 = *v7;
        v42 = v7 + *(v67 + 48);
        MEMORY[0x1EEE9AC00](v40);
        *(&v54 - 2) = v44;
        *(&v54 - 1) = v43;
        sub_1C6CE590C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        sub_1C6D78C30();
        sub_1C6CE5C08(v7, sub_1C6B68B8C);
        v68 = v38;
        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1C6B39624(v45 > 1, v46 + 1, 1);
          v38 = v68;
        }

        *(v38 + 16) = v46 + 1;
        sub_1C6CE58A4(v11, v38 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v46, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        v39 += v65;
        --v37;
      }

      while (v37);
      v47 = v64;
      v32 = v55;
    }

    else
    {
      v47 = v35;
    }

    v48 = v32 + *(*v32 + 104);
    swift_beginAccess();
    v49 = *(v48 + 2);
    *(v48 + 2) = v38;

    v50 = v62;
    sub_1C6D75F40();
    v51 = v63;
    sub_1C6D75EC0();
    v52 = v57;
    v57(v50, v47);
    sub_1C6B92790(v59, v60, v51);
    v52(v51, v47);

    return 1;
  }
}

uint64_t sub_1C6CE5020(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = sub_1C6B612F8(MEMORY[0x1E69E7CC0]);
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  sub_1C6D79E60();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1C6CE5160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6CE57D8(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v13 = a2;
  v14 = a3;
  sub_1C6CE590C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6C50A14(v9, a1);
}

uint64_t sub_1C6CE52DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D75F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v24, v8, v16);
  sub_1C6D78980();
  v19 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v20 = *(v19 + 20);
  sub_1C6CE5848(a1 + v20, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v14 + 32))(a1 + v20, v18, v13);
  (*(v14 + 56))(a1 + v20, 0, 1, v13);
  swift_getObjectType();
  sub_1C6D71158();
  v21 = *(v19 + 24);
  sub_1C6CE5848(a1 + v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6CE58A4(v7, a1 + v21, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v4 + 56))(a1 + v21, 0, 1, v26);
}

uint64_t sub_1C6CE55B0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SessionTrackingOption(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for SessionTrackingOption(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
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

uint64_t sub_1C6CE576C(unsigned __int8 *a1)
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

_WORD *sub_1C6CE5788(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1C6CE57D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6CE5848(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6CE57D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CE58A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CE590C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6CE5954()
{
  result = qword_1EC1D9398;
  if (!qword_1EC1D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9398);
  }

  return result;
}

uint64_t sub_1C6CE59A8(uint64_t *a1, __int16 a2)
{
  v4 = sub_1C6D77E20();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 88))(a1, v4);
  if (v6 == *MEMORY[0x1E69B4AF8])
  {
    (*(v5 + 96))(a1, v4);
    result = *a1;
    v8 = a1[1];
    if (a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E69B4B08])
  {
    (*(v5 + 96))(a1, v4);
    v9 = *a1;
    v10 = a1[1];
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    result = *a1;
    v8 = a1[1];
LABEL_7:
    sub_1C6B1C9F0(result, v8);
    return 0;
  }

  if (v6 != *MEMORY[0x1E69B4AF0])
  {
    if (v6 != *MEMORY[0x1E69B4B00])
    {
      (*(v5 + 8))(a1, v4);
    }

    return 0;
  }

  (*(v5 + 96))(a1, v4);
  result = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  if ((a2 & 1) == 0)
  {
    v14 = a1[2];
    v15 = v13;
    sub_1C6B1C9F0(result, v11);
    v13 = v15;
    v12 = v14;
    result = 0;
  }

  if ((a2 & 0x100) == 0)
  {
    v16 = result;
    sub_1C6B1C9F0(v12, v13);
    return v16;
  }

  return result;
}

uint64_t sub_1C6CE5BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CE5C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization14SessionTrackerC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6CE5CA0(unsigned __int16 *a1, unsigned int a2)
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

_WORD *sub_1C6CE5D44(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSgSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1C6CE5EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1C6CE5F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CE5F8C()
{
  v1 = sub_1C6D78A80();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v0[23];
  v4 = v0[26];
  if (v4 >> 60 == 15 || (v4 & 0xF000000000000000) == 0xB000000000000000)
  {
    v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v6);
    *(&v9 - 2) = v3;
    sub_1C6CE64F4();
    return sub_1C6D78C30();
  }

  else
  {
    v7 = v0[25];
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1C6BC372C(v7, v4);
    sub_1C6D78A70();
    sub_1C6CE64F4();
    return sub_1C6D78BE0();
  }
}

uint64_t sub_1C6CE6240()
{
  v1 = sub_1C6D78A80();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v0[24];
  v4 = v0[28];
  if (v4 >> 60 == 15 || (v4 & 0xF000000000000000) == 0xB000000000000000)
  {
    v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v6);
    *(&v9 - 2) = v3;
    sub_1C6CE64F4();
    return sub_1C6D78C30();
  }

  else
  {
    v7 = v0[27];
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1C6BC372C(v7, v4);
    sub_1C6D78A70();
    sub_1C6CE64F4();
    return sub_1C6D78BE0();
  }
}

unint64_t sub_1C6CE64F4()
{
  result = qword_1EDCEA770;
  if (!qword_1EDCEA770)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA770);
  }

  return result;
}

uint64_t sub_1C6CE6564(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6CE65E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1C6CE6768(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

double sub_1C6CE69E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 9);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 9);
  v10 = [v3 biases];
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
  v11 = sub_1C6D79570();

  if ((v6 & 1) != 0 || (v19 = v4, LOBYTE(v20) = v5 & 1, Com_Apple_News_Personalization_FeedType.string.getter(), !v12))
  {
    v13 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v13 = sub_1C6D79570();

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = v7;
  LOBYTE(v20) = v8 & 1;
  Com_Apple_News_Personalization_GroupType.string.getter();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = sub_1C6D79570();

LABEL_9:
  [v10 biasForEventType:v11 feedType:v13 groupType:{v15, v19, v20}];
  v17 = v16;

  return v17;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(v1 + *(v7 + 36), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSession()
{
  result = qword_1EDCE5508;
  if (!qword_1EDCE5508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Com_Apple_News_Personalization_RecipeSession.hasStartedAt.getter()
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(v0 + *(v5 + 36), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 36);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_Personalization_RecipeSession.hasEndedAt.getter()
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(v0 + *(v5 + 40), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 40);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6CE70E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(a1 + *(v8 + 36), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6CE7250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 36);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_RecipeSession.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 36);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B857BC;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSession.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 36);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(v1 + *(v7 + 40), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t sub_1C6CE7768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(a1 + *(v8 + 40), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6CE78D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 40);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_RecipeSession.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 40);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83270;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSession.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 40);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.clientVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.clientVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Com_Apple_News_Personalization_RecipeSession.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  v3 = a1 + v2[8];
  sub_1C6D78A30();
  v4 = v2[9];
  v5 = sub_1C6D789A0();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + v2[10];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C6CE7FEC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D93A0);
  __swift_project_value_buffer(v0, qword_1EC1D93A0);
  sub_1C6CE993C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D80220;
  v5 = v21 + v4;
  v6 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "ended_at";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "events";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "client_version";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "message_version";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSession._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B80 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
            sub_1C6CE98F4(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
            sub_1C6D78BA0();
            break;
          case 5:
LABEL_18:
            sub_1C6D78B80();
            break;
          case 6:
            sub_1C6CE904C();
            sub_1C6D78B00();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_1C6CE851C();
            break;
          case 3:
            sub_1C6CE85D0();
            break;
        }
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CE851C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 36);
  sub_1C6D789A0();
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CE85D0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 40);
  sub_1C6D789A0();
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSession.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6CE884C(v0);
    if (!v1)
    {
      sub_1C6CE8A68(v0);
      if (*(*(v0 + 16) + 16))
      {
        type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
        sub_1C6CE98F4(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        sub_1C6D78CE0();
      }

      v6 = *(v0 + 32);
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        sub_1C6D78CC0();
      }

      if (*(v0 + 40))
      {
        v9 = *(v0 + 40);
        v10 = *(v0 + 48);
        sub_1C6CE904C();
        sub_1C6D78C70();
      }

      v8 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 32);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CE884C(uint64_t a1)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(a1 + *(v11 + 36), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6CE8A68(uint64_t a1)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(a1 + *(v11 + 40), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6CE98F4(&qword_1EC1D93C0, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CE8D10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v4 = a2 + a1[8];
  sub_1C6D78A30();
  v5 = a1[9];
  v6 = sub_1C6D789A0();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + a1[10];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_1C6CE8E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CE98F4(&qword_1EC1D93D0, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CE8EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B80 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CE8F60(uint64_t a1)
{
  v2 = sub_1C6CE98F4(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CE8FCC()
{
  sub_1C6CE98F4(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);

  return sub_1C6D78C20();
}

unint64_t sub_1C6CE904C()
{
  result = qword_1EC1D93B8;
  if (!qword_1EC1D93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D93B8);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B14_RecipeSessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50[-v13];
  sub_1C6B85620();
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50[-v21];
  v23 = *a1;
  v24 = a1[1];
  v57 = a1;
  if ((v23 != *a2 || v24 != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_18;
  }

  v53 = v8;
  v54 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  v25 = *(v54 + 36);
  v26 = *(v16 + 48);
  v27 = v57;
  sub_1C6B823A4(v57 + v25, v22);
  sub_1C6B823A4(a2 + v25, &v22[v26]);
  v56 = v5;
  v28 = *(v5 + 48);
  if (v28(v22, 1, v4) == 1)
  {
    if (v28(&v22[v26], 1, v4) == 1)
    {
      v52 = a2;
      sub_1C6B82438(v22);
      goto LABEL_11;
    }

LABEL_9:
    v29 = v22;
LABEL_17:
    sub_1C6B856B4(v29);
    goto LABEL_18;
  }

  sub_1C6B823A4(v22, v14);
  if (v28(&v22[v26], 1, v4) == 1)
  {
    (*(v56 + 8))(v14, v4);
    goto LABEL_9;
  }

  v52 = a2;
  v30 = v56;
  v31 = v53;
  (*(v56 + 32))(v53, &v22[v26], v4);
  sub_1C6CE98F4(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
  v51 = sub_1C6D79560();
  v32 = *(v30 + 8);
  v33 = v31;
  v27 = v57;
  v32(v33, v4);
  v32(v14, v4);
  sub_1C6B82438(v22);
  if ((v51 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v34 = v54;
  v35 = *(v54 + 40);
  v36 = *(v16 + 48);
  sub_1C6B823A4(v27 + v35, v19);
  v37 = v52 + v35;
  v38 = v52;
  sub_1C6B823A4(v37, &v19[v36]);
  if (v28(v19, 1, v4) != 1)
  {
    v39 = v55;
    sub_1C6B823A4(v19, v55);
    if (v28(&v19[v36], 1, v4) != 1)
    {
      v42 = v56;
      v43 = v53;
      (*(v56 + 32))(v53, &v19[v36], v4);
      sub_1C6CE98F4(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v44 = sub_1C6D79560();
      v45 = *(v42 + 8);
      v46 = v43;
      v27 = v57;
      v45(v46, v4);
      v45(v39, v4);
      sub_1C6B82438(v19);
      if ((v44 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    (*(v56 + 8))(v39, v4);
    goto LABEL_16;
  }

  if (v28(&v19[v36], 1, v4) != 1)
  {
LABEL_16:
    v29 = v19;
    goto LABEL_17;
  }

  sub_1C6B82438(v19);
LABEL_21:
  if (sub_1C6B5BCD8(v27[2], v38[2]) & 1) != 0 && (v27[3] == v38[3] && v27[4] == v38[4] || (sub_1C6D7A130()))
  {
    v47 = v27[5];
    v48 = v38[5];
    if (*(v27 + 48))
    {
      v47 = v47 != 0;
    }

    if (*(v38 + 48) == 1)
    {
      if (v48)
      {
        if (v47 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (!v47)
      {
LABEL_34:
        v49 = *(v34 + 32);
        sub_1C6D78A40();
        sub_1C6CE98F4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        v40 = sub_1C6D79560();
        return v40 & 1;
      }
    }

    else if (v47 == v48)
    {
      goto LABEL_34;
    }
  }

LABEL_18:
  v40 = 0;
  return v40 & 1;
}

void sub_1C6CE97D8()
{
  sub_1C6CE993C(319, &qword_1EDCDFA78, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6CE993C(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6CE98F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6CE993C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t Com_Apple_News_Personalization_RecipeSessionMessageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionMessageVersion.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_1C6CE99F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6CE9A08()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1C6CE9A34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C6CE9A50(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_1C6CE9A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CE904C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL sub_1C6CE9ABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_1C6CE9AF8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D93D8);
  __swift_project_value_buffer(v0, qword_1EC1D93D8);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "RECIPE_SESSION_MESSAGE_VERSION_UNKNOWN";
  *(v7 + 8) = 38;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "RECIPE_SESSION_MESSAGE_VERSION_ONE";
  *(v11 + 1) = 34;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionMessageVersion._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6CE9D54()
{
  result = qword_1EC1D93F0;
  if (!qword_1EC1D93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D93F0);
  }

  return result;
}

unint64_t sub_1C6CE9DAC()
{
  result = qword_1EC1D93F8;
  if (!qword_1EC1D93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D93F8);
  }

  return result;
}

unint64_t sub_1C6CE9E04()
{
  result = qword_1EC1D9400;
  if (!qword_1EC1D9400)
  {
    sub_1C6CE9E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9400);
  }

  return result;
}

void sub_1C6CE9E5C()
{
  if (!qword_1EC1D9408)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9408);
    }
  }
}

unint64_t sub_1C6CE9EB0()
{
  result = qword_1EC1D9410;
  if (!qword_1EC1D9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9410);
  }

  return result;
}

uint64_t sub_1C6CE9F04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6CEFE2C(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_Personalization_RecipeSessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(v0 + *(v6 + 24), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6CEFE2C(v5, &qword_1EDCE66F0, v1);
  return v8;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(v1 + *(v8 + 24), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6CEFE2C(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6CEA36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(a1 + *(v9 + 24), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6CEFE2C(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6CEA504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6CEFE2C(a2 + v10, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6CEFE9C(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6CEFE2C(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6CEA88C;
}

void sub_1C6CEA88C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6CEFE2C(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6CEFE2C(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6CEFE2C(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_1C6CEAAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CEAB6C(uint64_t a1, uint64_t a2)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.cookModeViewed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(v2, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6CEB5D8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t sub_1C6CEAE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(a1, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6CEB5D8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.cookModeViewed.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
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
  *v5 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6CEFE9C(v2, v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6CEFE2C(v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6CEB5D8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
      return sub_1C6CEB358;
    }

    sub_1C6CEB39C(v10, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v17 = *(v11 + 20);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = *(v11 + 24);
  v20 = sub_1C6D78A00();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  return sub_1C6CEB358;
}

uint64_t sub_1C6CEB39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.recipeSaved.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6CEFE9C(v2, &v12 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6CEB5D8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6CEB5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CEB640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6CEFE9C(a1, &v12 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6CEB5D8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

uint64_t sub_1C6CEB81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1C6CEFF80(a1, &v17 - v13, a6);
  sub_1C6CEFE2C(a2, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB5D8(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1C6CEB958(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C6CEFE2C(v2, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB5D8(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.recipeSaved.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6CEFE9C(v1, v9, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6CEFE2C(v9, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6CEBCB4;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6CEB39C(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6CEB5D8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  return sub_1C6CEBCB4;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.recipeViewed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(v2, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6CEB5D8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C6CEBF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(a1, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6CEB5D8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.recipeViewed.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
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
  *v5 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6CEFE9C(v2, v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6CEFE2C(v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v17 = *(v11 + 20);
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6CEC43C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6CEB39C(v10, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6CEB5D8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  return sub_1C6CEC43C;
}

void sub_1C6CEC480(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C6CEFF80((*a1)[3], v10, a5);
    sub_1C6CEFE2C(v13, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C6CEB39C(v11, a6);
  }

  else
  {
    sub_1C6CEFE2C(**a1, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v4 = a1 + *(v3 + 20);
  sub_1C6D78A30();
  v5 = *(v3 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6CEC81C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9418);
  __swift_project_value_buffer(v0, qword_1EC1D9418);
  sub_1C6CEAAE0(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D80210;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "timestamp";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "cookModeViewed";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "recipeSaved";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "recipeViewed";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B90 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C6CED2F0(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1C6CED940(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1C6CECC08();
    }

    else if (result == 2)
    {
      sub_1C6CECCBC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CECC08()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6D789A0();
  sub_1C6CEFA8C(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CECCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  sub_1C6CEAAE0(0, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  v44 = v5;
  v30 = *(v5 + 56);
  v47 = v4;
  v41 = v30;
  (v30)(&v39 - v28, 1, 1, v4, v27);
  sub_1C6CEFE9C(v51, v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v40 = v16;
  v31 = (*(v16 + 48))(v14, 1, v15);
  if (v31 == 1)
  {
    sub_1C6CEFE2C(v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_5:
    v32 = v47;
    goto LABEL_6;
  }

  sub_1C6CEB5D8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB5D8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6CEB39C(v19, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_1C6CEFE2C(v29, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v36 = v42;
  sub_1C6CEB5D8(v19, v42, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6CEB5D8(v36, v29, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v32 = v47;
  v41(v29, 0, 1, v47);
LABEL_6:
  v33 = v45;
  sub_1C6CEFA8C(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v34 = v46;
  sub_1C6D78BB0();
  if (v34)
  {
    return sub_1C6CEFE2C(v29, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  }

  sub_1C6CEFE9C(v29, v33, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  if ((*(v44 + 48))(v33, 1, v32) == 1)
  {
    sub_1C6CEFE2C(v29, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    return sub_1C6CEFE2C(v33, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  }

  else
  {
    v37 = v43;
    sub_1C6CEB5D8(v33, v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    if (v31 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CEFE2C(v29, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    v38 = v51;
    sub_1C6CEFE2C(v51, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v37, v38, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v15);
  }
}

uint64_t sub_1C6CED2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6CEAAE0(0, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6CEFE9C(v52, v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6CEFE2C(v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6CEB5D8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v46;
      sub_1C6CEFE2C(v46, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      v33 = v43;
      sub_1C6CEB5D8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      sub_1C6CEB5D8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6CEB39C(v19, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6CEFA8C(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6CEFE2C(v32, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  }

  sub_1C6CEFE9C(v32, v35, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6CEFE2C(v32, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    return sub_1C6CEFE2C(v35, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  }

  else
  {
    v38 = v42;
    sub_1C6CEB5D8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CEFE2C(v32, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    v39 = v52;
    sub_1C6CEFE2C(v52, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6CED940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6CEAAE0(0, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6CEFE9C(v52, v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6CEFE2C(v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6CEB5D8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v46;
      sub_1C6CEFE2C(v46, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      v33 = v43;
      sub_1C6CEB5D8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      sub_1C6CEB5D8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6CEB39C(v19, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6CEFA8C(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6CEFE2C(v32, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  }

  sub_1C6CEFE9C(v32, v35, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6CEFE2C(v32, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    return sub_1C6CEFE2C(v35, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  }

  else
  {
    v38 = v42;
    sub_1C6CEB5D8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CEFE2C(v32, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    v39 = v52;
    sub_1C6CEFE2C(v52, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  result = sub_1C6CEE190(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6CEFE9C(v3, v11, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1C6CEE640(v3, a1, a2, a3);
        }

        else
        {
          sub_1C6CEE8A8(v3, a1, a2, a3);
        }
      }

      else
      {
        sub_1C6CEE3DC(v3, a1, a2, a3);
      }

      sub_1C6CEB39C(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    }

    v15 = v3 + *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CEE190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(a1 + *(v15 + 24), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6CEFE2C(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6CEFA8C(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6CEE3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CEFE9C(a1, v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6CEFE2C(v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6CEB5D8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    sub_1C6CEFA8C(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    sub_1C6D78CF0();
    return sub_1C6CEB39C(v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  }

  result = sub_1C6CEB39C(v8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6CEE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CEFE9C(a1, v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6CEFE2C(v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6CEB5D8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    sub_1C6CEFA8C(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    sub_1C6D78CF0();
    return sub_1C6CEB39C(v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  }

  result = sub_1C6CEB39C(v8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6CEE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CEFE9C(a1, v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6CEFE2C(v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6CEB5D8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    sub_1C6CEFA8C(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    sub_1C6D78CF0();
    return sub_1C6CEB39C(v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  }

  result = sub_1C6CEB39C(v8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFA8C(&qword_1EC1D9430, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CEEB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  sub_1C6D78A30();
  v6 = *(a1 + 24);
  v7 = sub_1C6D789A0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6CEECA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CEFA8C(&qword_1EC1D9448, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CEED24@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B90 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CEEDCC(uint64_t a1)
{
  v2 = sub_1C6CEFA8C(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CEEE38()
{
  sub_1C6CEFA8C(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B19_RecipeSessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v50 - v9;
  sub_1C6CEFD58(0, &qword_1EC1D6C60, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v50 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  sub_1C6CEFD58(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  v52 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v28 = *(v52 + 24);
  v29 = *(v24 + 56);
  v58 = a1;
  sub_1C6CEFE9C(a1 + v28, v27, &qword_1EDCE66F0, v18);
  v30 = v59 + v28;
  v31 = v59;
  sub_1C6CEFE9C(v30, &v27[v29], &qword_1EDCE66F0, v18);
  v32 = *(v14 + 48);
  if (v32(v27, 1, v13) != 1)
  {
    sub_1C6CEFE9C(v27, v22, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v27[v29], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v27[v29], v13);
      sub_1C6CEFA8C(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v37 = sub_1C6D79560();
      v38 = *(v14 + 8);
      v38(v17, v13);
      v38(v22, v13);
      sub_1C6CEFE2C(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v22, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v27;
LABEL_14:
    sub_1C6CEFDD0(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v27[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6CEFE2C(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v39 = *(v54 + 48);
  v40 = v57;
  sub_1C6CEFE9C(v58, v57, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEFE9C(v31, v40 + v39, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v40, 1, v56) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1C6CEFE2C(v40, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_18:
      v49 = *(v52 + 20);
      sub_1C6D78A40();
      sub_1C6CEFA8C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v53;
  sub_1C6CEFE9C(v40, v53, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_1C6CEB39C(v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_13:
    v33 = &qword_1EC1D6C60;
    v34 = qword_1EDCE50F8;
    v35 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v51;
  sub_1C6CEB5D8(v46, v51, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v48 = _s19NewsPersonalization010Com_Apple_a1_B19_RecipeSessionEventV06OneOf_G0O2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1C6CEB39C(v47, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB39C(v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEFE2C(v40, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B19_RecipeSessionEventV06OneOf_G0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1C6CEFF1C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 + 56);
  sub_1C6CEFF80(a1, v27, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEFF80(v40, &v27[v29], type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C6CEFF80(v27, v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C6CEB5D8(&v27[v29], v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
        v31 = _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE5SavedV2eeoiySbAC_ACtFZ_0(v20, v9);
        v32 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
        sub_1C6CEB39C(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
        v33 = v20;
LABEL_13:
        sub_1C6CEB39C(v33, v32);
        v37 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event;
        goto LABEL_14;
      }

      v34 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
      v35 = v20;
    }

    else
    {
      sub_1C6CEFF80(v27, v17, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v39;
        sub_1C6CEB5D8(&v27[v29], v39, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
        v31 = _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE6ViewedV2eeoiySbAC_ACtFZ_0(v17, v36);
        v32 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
        sub_1C6CEB39C(v36, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
        v33 = v17;
        goto LABEL_13;
      }

      v34 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
      v35 = v17;
    }
  }

  else
  {
    sub_1C6CEFF80(v27, v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6CEB5D8(&v27[v29], v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
      v31 = _s19NewsPersonalization010Com_Apple_a1_B33_RecipeSessionEventCookModeViewedV2eeoiySbAC_ACtFZ_0(v23, v13);
      v32 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
      sub_1C6CEB39C(v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
    v35 = v23;
  }

  sub_1C6CEB39C(v35, v34);
  v31 = 0;
  v37 = sub_1C6CEFF1C;
LABEL_14:
  sub_1C6CEB39C(v27, v37);
  return v31 & 1;
}

uint64_t sub_1C6CEFA8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6CEFBD4()
{
  sub_1C6CEAAE0(319, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6CEAAE0(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6CEFCD0()
{
  result = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C6CEFD58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6CEAAE0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6CEFDD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CEFD58(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6CEFE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CEAAE0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CEFE9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CEAAE0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6CEFF1C()
{
  if (!qword_1EC1D9468)
  {
    type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9468);
    }
  }
}

uint64_t sub_1C6CEFF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6CF0408(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen()
{
  result = qword_1EDCE4B70;
  if (!qword_1EDCE4B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(v1 + *(v7 + 20), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6CF0408(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6CF0388(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CF2DD8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6CF0408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CF2DD8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleSeen.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6CF0408(v5, &qword_1EDCDFD00, v1);
  return v8;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 20);
  sub_1C6CF0408(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 24);
  sub_1C6CF0408(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CF07F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(a1 + *(v8 + 20), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6CF0408(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6CF09B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 20);
  sub_1C6CF0408(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleSeen.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 20);
  *(v5 + 12) = v16;
  sub_1C6CF0388(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6CF0408(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6CF0D54;
}

void sub_1C6CF0D54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6CF0408(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6CF0408(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleSeen.hasArticle.getter()
{
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(v0 + *(v5 + 20), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6CF0408(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleSeen.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 20);
  sub_1C6CF0408(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6CF1034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6CF0408(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6CF11CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 24);
  sub_1C6CF0408(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 24);
  *(v5 + 12) = v16;
  sub_1C6CF0388(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6CF0408(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6CF1554;
}

void sub_1C6CF1554(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6CF0408(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6CF0408(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 24);
  sub_1C6CF0408(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6CF1878()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4BA0);
  __swift_project_value_buffer(v0, qword_1EDCE4BA0);
  sub_1C6CF2DD8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4B98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6CF1B94();
    }

    else if (result == 2)
    {
      sub_1C6CF1C48();
    }
  }

  return result;
}

uint64_t sub_1C6CF1B94()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CF2F10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CF1C48()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen() + 24);
  sub_1C6D78A00();
  sub_1C6CF2F10(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CF1D6C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6CF1F90(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CF1D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(a1 + *(v14 + 20), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CF0408(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6CF2F10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t sub_1C6CF1F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF0388(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6CF0408(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6CF2F10(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  sub_1C6CF2F10(&qword_1EC1D9470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CF22B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CF2F10(&qword_1EC1D9480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CF232C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4B98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CF23D4(uint64_t a1)
{
  v2 = sub_1C6CF2F10(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CF2440()
{
  sub_1C6CF2F10(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v52 - v9;
  sub_1C6CF2E3C(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v52 - v20);
  sub_1C6CF2E3C(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6CF0388(v59 + v28, v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6CF0388(v30, &v26[v29], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6CF0388(v26, v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6B483C8(&v26[v29], v17);
      v37 = _s19NewsPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(v21, v17);
      sub_1C6B7F770(v17);
      sub_1C6B7F770(v21);
      sub_1C6CF0408(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6B7F770(v21);
LABEL_6:
    v33 = &qword_1EC1D69F0;
    v34 = &qword_1EDCE52B0;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v36 = v26;
LABEL_14:
    sub_1C6CF2EB4(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6CF0408(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6CF0388(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6CF0388(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6CF0408(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6CF2F10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6CF0388(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6CF2F10(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6CF0408(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6CF2CDC()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6CF2DD8(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6CF2DD8(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6CF2DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6CF2E3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6CF2DD8(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6CF2EB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CF2E3C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6CF2F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  sub_1C6B482A8(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared()
{
  result = qword_1EDCE4778;
  if (!qword_1EDCE4778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v3 = a1 + *(v2 + 20);
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CF3264@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  sub_1C6B482A8(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6CF33FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleShared.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleShared.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  sub_1C6B482A8(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleShared.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_News_Personalization_SessionEventArticleShared.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CF3A5C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9488);
  __swift_project_value_buffer(v0, qword_1EC1D9488);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleShared._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6CF3DA4();
      }

      else if (result == 2)
      {
        sub_1C6CC9658();
        sub_1C6D78B00();
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CF3DA4()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CF4AC0(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.traverse<A>(visitor:)()
{
  result = sub_1C6CF3F24(v0);
  if (!v1)
  {
    if (*v0)
    {
      v4 = *v0;
      v5 = *(v0 + 8);
      sub_1C6CC9658();
      sub_1C6D78C70();
    }

    v3 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CF3F24(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  sub_1C6B482A8(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6CF4AC0(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  sub_1C6CF4AC0(&qword_1EC1D94A0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CF41B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C6CF428C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CF4AC0(&unk_1EC1D94B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CF4308@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CF43B0(uint64_t a1)
{
  v2 = sub_1C6CF4AC0(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CF441C()
{
  sub_1C6CF4AC0(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v19 = *(v18 + 24);
  v20 = *(v14 + 56);
  sub_1C6B482A8(a1 + v19, v17);
  sub_1C6B482A8(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1C6B482A8(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      sub_1C6B483C8(&v17[v20], v8);
      v24 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
      sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B4833C(v17);
      if ((v24 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6B4833C(v17);
LABEL_10:
  v25 = *a1;
  v26 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v26)
    {
      case 1:
        if (v25 == 1)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 2:
        if (v25 == 2)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 3:
        if (v25 == 3)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 4:
        if (v25 == 4)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 5:
        if (v25 == 5)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 6:
        if (v25 == 6)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 7:
        if (v25 == 7)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 8:
        if (v25 == 8)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 9:
        if (v25 == 9)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 10:
        if (v25 == 10)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 11:
        if (v25 == 11)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 12:
        if (v25 == 12)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 13:
        if (v25 == 13)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 14:
        if (v25 == 14)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 15:
        if (v25 == 15)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 16:
        if (v25 == 16)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      default:
        if (!v25)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
    }
  }

  if (v25 == v26)
  {
LABEL_15:
    v27 = *(v18 + 20);
    sub_1C6D78A40();
    sub_1C6CF4AC0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v22 = sub_1C6D79560();
    return v22 & 1;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

void sub_1C6CF49FC()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B49B2C(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CF4AC0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C6CF4B08()
{
  result = [objc_allocWithZone(type metadata accessor for ComputeServiceProxyScoringService()) init];
  qword_1EDCE2920 = result;
  return result;
}

id static ComputeServiceProxyScoringService.shared.getter()
{
  if (qword_1EDCE2918 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCE2920;

  return v1;
}

Swift::Void __swiftcall ComputeServiceProxyScoringService.prewarmScoreCache(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization33ComputeServiceProxyScoringService_scoreCache);
  os_unfair_lock_lock((v2 + 24));
  sub_1C6CF4D30((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1C6CF4C74(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_1C6CF6590(a2, sub_1C6CF584C, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {

    __break(1u);
  }

  else
  {

    *a1 = v8;
  }

  return result;
}

unint64_t ComputeServiceProxyScoringService.score(tags:)()
{
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  v0 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();

  return sub_1C6B5F1EC(v0);
}

uint64_t sub_1C6CF4E04(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  CACurrentMediaTime();
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7EB10;
  if (a4 >> 62)
  {
    v9 = sub_1C6D79E90();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = MEMORY[0x1E69E6530];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9;
  sub_1C6D75F80();
  sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8]);
  v11 = sub_1C6D7A0E0();
  v13 = v12;
  *(v8 + 96) = MEMORY[0x1E69E6158];
  v14 = sub_1C6B2064C();
  *(v8 + 104) = v14;
  *(v8 + 72) = v11;
  *(v8 + 80) = v13;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6B0C69C(0, &qword_1EDCDF848, 0x1E69B6E38);
  v15 = sub_1C6D79760();
  sub_1C6D76010();
  v16 = MEMORY[0x1CCA524D0]();
  v17 = sub_1C6D79110();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C6CF6804;
  *(v18 + 24) = v7;
  aBlock[4] = sub_1C6CF683C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6CF5468;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  [a1 scoreItems:v15 environment:v16 configurationSet:v17 completion:v19];
  _Block_release(v19);

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6D7EB10;
  result = sub_1C6D79920();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v22 < 9.22337204e18)
  {
    v23 = MEMORY[0x1E69E73D8];
    *(v20 + 56) = MEMORY[0x1E69E7360];
    *(v20 + 64) = v23;
    *(v20 + 32) = v22;
    v24 = sub_1C6D7A0E0();
    *(v20 + 96) = MEMORY[0x1E69E6158];
    *(v20 + 104) = v14;
    *(v20 + 72) = v24;
    *(v20 + 80) = v25;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C6CF51D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_1C6CF523C(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

uint64_t sub_1C6CF523C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C6C0C0AC(0, &qword_1EDCEA470, MEMORY[0x1E69E6EC8]);
    v2 = sub_1C6D79F20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    MEMORY[0x1CCA55D90]();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CF5468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v4 = sub_1C6D79490();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1C6CF551C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_1C6CF6590(a2, sub_1C6CF584C, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {

    __break(1u);
  }

  else
  {

    *a1 = v8;
  }

  return result;
}

uint64_t ComputeServiceProxyScoringService.addInterest(id:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6D76060();
  v2 = sub_1C6D76050();
  sub_1C6D76040();

  v3 = sub_1C6D78430();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C6D78440();
  v7 = MEMORY[0x1E69960A8];
  a1[3] = v3;
  a1[4] = v7;
  *a1 = result;
  return result;
}

void sub_1C6CF5660()
{
  sub_1C6D76060();
  v0 = sub_1C6D76050();
  sub_1C6D76030();
}

id ComputeServiceProxyScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C6CF56FC()
{
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  v0 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30();

  return sub_1C6B5F1EC(v0);
}

uint64_t sub_1C6CF57C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6D76060();
  v2 = sub_1C6D76050();
  sub_1C6D76040();

  v3 = sub_1C6D78430();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C6D78440();
  v7 = MEMORY[0x1E69960A8];
  a1[3] = v3;
  a1[4] = v7;
  *a1 = result;
  return result;
}

uint64_t sub_1C6CF584C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

void sub_1C6CF5864(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v8 = v3;
  v88 = a3;
  v86 = a2;
  v9 = a1;
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v92 = v9;
  if (v11)
  {
    v94 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    v90 = v7;
    v91 = v10;
    v12 = v94;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v12;
        MEMORY[0x1CCA56240](v13, v9);
        v15 = [swift_unknownObjectRetain() itemID];
        v16 = sub_1C6D795A0();
        v18 = v17;
        swift_unknownObjectRelease_n();

        v12 = v14;
        v94 = v14;
        v19 = *(v14 + 16);
        v20 = *(v12 + 24);
        if (v19 >= v20 >> 1)
        {
          a1 = sub_1C6B39280((v20 > 1), v19 + 1, 1);
          v12 = v94;
        }

        ++v13;
        *(v12 + 16) = v19 + 1;
        v21 = v12 + 16 * v19;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v11 != v13);
    }

    else
    {
      v22 = (v9 + 32);
      do
      {
        v23 = *v22;
        v24 = v12;
        v25 = [swift_unknownObjectRetain_n() itemID];
        v26 = sub_1C6D795A0();
        v28 = v27;
        swift_unknownObjectRelease_n();

        v12 = v24;
        v94 = v24;
        v29 = *(v24 + 16);
        v30 = *(v12 + 24);
        if (v29 >= v30 >> 1)
        {
          a1 = sub_1C6B39280((v30 > 1), v29 + 1, 1);
          v12 = v94;
        }

        *(v12 + 16) = v29 + 1;
        v31 = v12 + 16 * v29;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        ++v22;
        --v11;
        v9 = v92;
      }

      while (v11);
    }

    v7 = v90;
    v10 = v91;
  }

  v5 = *(v8 + OBJC_IVAR____TtC19NewsPersonalization33ComputeServiceProxyScoringService_scoreCache);
  MEMORY[0x1EEE9AC00](a1);
  v82 = v32;
  os_unfair_lock_lock(v5 + 6);
  sub_1C6CF6844(v5 + 2, &v94);
  if (v7)
  {
    goto LABEL_75;
  }

  v33 = 0;
  v87 = v5;
  os_unfair_lock_unlock(v5 + 6);
  v34 = v94;
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCEA540;
  sub_1C6B1D314();
  v81[2] = v35;
  v36 = swift_allocObject();
  v85 = xmmword_1C6D7E630;
  *(v36 + 16) = xmmword_1C6D7E630;
  v37 = MEMORY[0x1E69E6158];
  v38 = sub_1C6D794A0();
  v6 = v39;
  *(v36 + 56) = v37;
  v81[0] = sub_1C6B2064C();
  *(v36 + 64) = v81[0];
  *(v36 + 32) = v38;
  *(v36 + 40) = v6;
  sub_1C6D79AC0();
  v81[1] = v5;
  sub_1C6D78D30();

  v94 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v7 = sub_1C6D79E90();
  }

  else
  {
    v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = 0;
  if (v7)
  {
    v91 = v34;
    v40 = 0;
    v90 = v9 & 0xC000000000000001;
    v8 = v9 & 0xFFFFFFFFFFFFFF8;
    while (!v90)
    {
      if (v40 >= *(v8 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        a1 = sub_1C6D79E90();
        v11 = a1;
        goto LABEL_3;
      }

      v6 = *(v9 + 8 * v40 + 32);
      swift_unknownObjectRetain();
      v42 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_35;
      }

LABEL_30:
      v5 = [v6 itemID];
      v43 = sub_1C6D795A0();
      v10 = v44;

      if (v91[2])
      {
        sub_1C6B5DEA8(v43, v10);
        v46 = v45;

        if (v46)
        {
          swift_unknownObjectRelease();
          goto LABEL_26;
        }
      }

      else
      {
      }

      sub_1C6D79DC0();
      v5 = *(v94 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
LABEL_26:
      ++v40;
      v41 = v42 == v7;
      v9 = v92;
      if (v41)
      {
        goto LABEL_36;
      }
    }

    v6 = MEMORY[0x1CCA56240](v40, v9);
    v42 = (v40 + 1);
    if (!__OFADD__(v40, 1))
    {
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    v47 = v94;
    v33 = v89;
    if ((v94 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_68:
    if (!sub_1C6D79E90())
    {
      goto LABEL_69;
    }

LABEL_41:

    CACurrentMediaTime();
    v94 = v47;
    sub_1C6B186F8();
    v5 = v48;
    sub_1C6CF64D8(&qword_1EDCDF9A0, sub_1C6B186F8);
    v49 = sub_1C6D799C0();

    v90 = *(v49 + 16);
    if (v90)
    {
      v83 = sub_1C6D76060();
      v84 = v49;
      v9 = 0;
      *&v85 = v49 + 32;
      v8 = 0x1E69B6000uLL;
      v7 = &selRef_adSegmentsOutputName;
      while (1)
      {
        if (v9 >= *(v49 + 16))
        {
          goto LABEL_65;
        }

        v50 = *(v85 + 8 * v9);

        v10 = MEMORY[0x1CCA568F0](v51);
        if (v50 >> 62)
        {
          v6 = sub_1C6D79E90();
          v92 = v9;
          if (!v6)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v6 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v92 = v9;
          if (!v6)
          {
            goto LABEL_54;
          }
        }

        v94 = MEMORY[0x1E69E7CC0];
        sub_1C6D79DF0();
        if (v6 < 0)
        {
          goto LABEL_66;
        }

        v91 = v10;
        v52 = 0;
        do
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x1CCA56240](v52, v50);
          }

          else
          {
            v53 = *(v50 + 8 * v52 + 32);
            swift_unknownObjectRetain();
          }

          ++v52;
          [objc_allocWithZone(MEMORY[0x1E69B6E38]) initWithItem_];
          swift_unknownObjectRelease();
          sub_1C6D79DC0();
          v54 = *(v94 + 16);
          sub_1C6D79E00();
          sub_1C6D79E10();
          sub_1C6D79DD0();
        }

        while (v6 != v52);
        v10 = v91;
LABEL_54:
        v55 = sub_1C6D76050();
        MEMORY[0x1EEE9AC00](v55);
        sub_1C6C0C0AC(0, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
        v56 = v89;
        sub_1C6D76020();
        if (v56)
        {

          sub_1C6D79AA0();
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_1C6D7EB10;
          v94 = 0;
          v95 = 0xE000000000000000;
          v93 = v56;
          sub_1C6B10A98(0, &qword_1EDCEA410);
          sub_1C6D79E60();
          v71 = v94;
          v72 = v95;
          v73 = MEMORY[0x1E69E6158];
          v74 = v81[0];
          *(v70 + 56) = MEMORY[0x1E69E6158];
          *(v70 + 64) = v74;
          *(v70 + 32) = v71;
          *(v70 + 40) = v72;
          sub_1C6D75F80();
          sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8]);
          v75 = sub_1C6D7A0E0();
          *(v70 + 96) = v73;
          *(v70 + 104) = v74;
          *(v70 + 72) = v75;
          *(v70 + 80) = v76;
          sub_1C6D78D30();

          swift_willThrow();
          objc_autoreleasePoolPop(v10);
          return;
        }

        v5 = v81;
        MEMORY[0x1EEE9AC00](v57);
        v6 = v87;
        os_unfair_lock_lock(v87 + 6);
        sub_1C6CF6520((v6 + 16));
        v89 = 0;
        v9 = v92 + 1;
        os_unfair_lock_unlock((v6 + 24));

        objc_autoreleasePoolPop(v10);
        v49 = v84;
        if (v9 == v90)
        {

          v33 = v89;
          goto LABEL_58;
        }
      }
    }

LABEL_58:
    MEMORY[0x1EEE9AC00](v58);
    v5 = v82;
    v7 = v87;
    os_unfair_lock_lock(v87 + 6);
    sub_1C6CF653C(v7 + 2, &v94);
    if (v33)
    {
LABEL_76:
      os_unfair_lock_unlock(v7 + 6);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock(v7 + 6);
    v59 = v94;
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1C6D80210;
    v61 = v5[2];

    v62 = MEMORY[0x1E69E6530];
    v63 = MEMORY[0x1E69E65A8];
    *(v60 + 56) = MEMORY[0x1E69E6530];
    *(v60 + 64) = v63;
    *(v60 + 32) = v61;
    v64 = *(v59 + 16);
    *(v60 + 96) = v62;
    *(v60 + 104) = v63;
    *(v60 + 72) = v64;
    sub_1C6D79920();
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v65 > -9.22337204e18)
      {
        if (v65 < 9.22337204e18)
        {
          v66 = MEMORY[0x1E69E73D8];
          *(v60 + 136) = MEMORY[0x1E69E7360];
          *(v60 + 144) = v66;
          *(v60 + 112) = v65;
          sub_1C6D75F80();
          sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8]);
          v67 = sub_1C6D7A0E0();
          v68 = v81[0];
          *(v60 + 176) = MEMORY[0x1E69E6158];
          *(v60 + 184) = v68;
          *(v60 + 152) = v67;
          *(v60 + 160) = v69;
          sub_1C6D79AC0();
          goto LABEL_70;
        }

        goto LABEL_74;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      os_unfair_lock_unlock((v6 + 24));
      __break(1u);
LABEL_75:
      os_unfair_lock_unlock(v5 + 6);
      __break(1u);
      goto LABEL_76;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v47 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

LABEL_39:
  if ((v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (*(v47 + 16))
  {
    goto LABEL_41;
  }

LABEL_69:

  v77 = swift_allocObject();
  *(v77 + 16) = v85;
  sub_1C6D75F80();
  sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8]);
  v78 = sub_1C6D7A0E0();
  v79 = v81[0];
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = v79;
  *(v77 + 32) = v78;
  *(v77 + 40) = v80;
  sub_1C6D79AC0();
LABEL_70:
  sub_1C6D78D30();
}

void sub_1C6CF6434()
{
  if (!qword_1EDCE6508)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C6D79D90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6508);
    }
  }
}

uint64_t sub_1C6CF64B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  return sub_1C6CF4E04(a1, a2, a3, v3[2]);
}

uint64_t sub_1C6CF64D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6CF653C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_1C6D794C0();
  *a2 = result;
  return result;
}

uint64_t sub_1C6CF6590(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v40 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v45[0] = *v15;
    v45[1] = v16;
    v45[2] = v17;

    a2(&v42, v45);

    v18 = v42;
    v19 = v43;
    v20 = v44;
    v21 = *a5;
    v23 = sub_1C6B5DEA8(v42, v43);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v40 & 1) == 0)
      {
        sub_1C6B72BD8();
      }
    }

    else
    {
      sub_1C6B6E868(v26, v40 & 1);
      v28 = *a5;
      v29 = sub_1C6B5DEA8(v18, v19);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v23 = v29;
    }

    v9 &= v9 - 1;
    v31 = *a5;
    if (v27)
    {

      *(v31[7] + 8 * v23) = v20;
    }

    else
    {
      v31[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 8 * v23) = v20;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1C6B688C4();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}