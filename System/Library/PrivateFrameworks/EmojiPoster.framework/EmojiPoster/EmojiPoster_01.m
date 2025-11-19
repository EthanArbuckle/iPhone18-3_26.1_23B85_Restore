char *sub_249FDCEA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E580);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_249FDCFAC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249FDD0E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E130);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_249FDD1F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x724774657366666FLL && a2 == 0xEA00000000006469;
  if (v4 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C7563726963 && a2 == 0xE800000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6172697073 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A021C38();

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

uint64_t _s11EmojiPoster18GradientPropertiesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v2 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v2 || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v4 = *(a2 + 5);
  v5 = *(a1 + 5);
  if ((sub_24A006F50(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  return sub_24A006FD4(v5, v4);
}

uint64_t _s11EmojiPoster0aB23BackgroundConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v43[17] = v2;
    v43[18] = v3;
    if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))), xmmword_24A024760)) & 0xF) == 0)
    {
      v7 = *(a1 + 5);
      v6 = *(a1 + 6);
      v9 = *(a1 + 7);
      v8 = *(a1 + 8);
      v11 = *(a1 + 9);
      v10 = *(a1 + 10);
      v12 = a1[88];
      v13 = a1[89];
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      v17 = *(a2 + 7);
      v16 = *(a2 + 8);
      v19 = *(a2 + 9);
      v18 = *(a2 + 10);
      v20 = a2[88];
      v21 = a2[89];
      v36 = v16;
      if (v11)
      {
        v43[0] = v7;
        v43[1] = v6;
        v43[2] = v9;
        v43[3] = v8;
        v43[4] = v11;
        v43[5] = v10;
        if (v19)
        {
          v31 = v20;
          v33 = v12;
          v29 = v21;
          v30 = v13;
          v37[0] = v14 & 1;
          v38 = v15;
          v39 = v17;
          v40 = v16;
          v41 = v19;
          v42 = v18;
          v28 = _s11EmojiPoster18GradientPropertiesV2eeoiySbAC_ACtFZ_0(v43, v37);
          sub_249FDE2F0(v7, v6, v9, v8, v11);
          sub_249FDE2F0(v14, v15, v17, v36, v19);
          sub_249FDE2F0(v7, v6, v9, v8, v11);

          sub_249FDE484(v7, v6, v9, v8, v11);
          result = 0;
          if (v28 & 1) == 0 || ((v33 ^ v31))
          {
            return result;
          }

          return v30 ^ v29 ^ 1u;
        }

        v35 = v14;
        v22 = v15;
        v23 = v17;
        v24 = v16;
        sub_249FDE2F0(v7, v6, v9, v8, v11);
        v25 = v22;
        v26 = v23;
        v27 = v24;
        v17 = v23;
        v15 = v22;
        v14 = v35;
        sub_249FDE2F0(v35, v25, v26, v27, 0);
        sub_249FDE2F0(v7, v6, v9, v8, v11);
      }

      else
      {
        v32 = a2[88];
        v34 = v12;
        v29 = a2[89];
        v30 = v13;
        sub_249FDE2F0(v7, v6, v9, v8, 0);
        if (!v19)
        {
          sub_249FDE2F0(v14, v15, v17, v36, 0);
          sub_249FDE484(v7, v6, v9, v8, 0);
          if (v34 == v32)
          {
            return v30 ^ v29 ^ 1u;
          }

          return 0;
        }

        sub_249FDE2F0(v14, v15, v17, v36, v19);
      }

      sub_249FDE484(v7, v6, v9, v8, v11);
      sub_249FDE484(v14, v15, v17, v36, v19);
      return 0;
    }
  }

  return result;
}

uint64_t _s11EmojiPoster0aB13ConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  *&v40[16] = a1[6];
  v41 = v2;
  v42 = *(a1 + 128);
  v3 = a1[3];
  v37 = a1[2];
  v38 = v3;
  v4 = a1[5];
  v39 = a1[4];
  *v40 = v4;
  v5 = a1[1];
  v35 = *a1;
  v36 = v5;
  v6 = a2[7];
  *&v48[16] = a2[6];
  v49 = v6;
  v50 = *(a2 + 128);
  v7 = a2[3];
  v45 = a2[2];
  v46 = v7;
  v8 = a2[5];
  v47 = a2[4];
  *v48 = v8;
  v9 = a2[1];
  v43 = *a2;
  v44 = v9;
  if (v40[26] == v48[26] && v40[27] == v48[27] && (v10 = EmojiPosterConfiguration.emojis.getter(), v32 = *&v48[16], v33 = v49, v34 = v50, v29 = v45, v30 = v46, *v31 = v47, *&v31[16] = *v48, v27 = v43, v28 = v44, v11 = EmojiPosterConfiguration.emojis.getter(), v12 = sub_24A007030(v10, v11), , , (v12 & 1) != 0) && v42 == v50)
  {
    v22 = v38;
    v23 = v39;
    v24[0] = *v40;
    *(v24 + 10) = *&v40[10];
    v20 = v36;
    v21 = v37;
    v17 = v46;
    v18 = v47;
    v19[0] = *v48;
    *(v19 + 10) = *&v48[10];
    v15 = v44;
    v16 = v45;
    sub_249FDDE00(&v36, &v27);
    sub_249FDDE00(&v44, &v27);
    v13 = _s11EmojiPoster0aB23BackgroundConfigurationV2eeoiySbAC_ACtFZ_0(&v20, &v15);
    v25[2] = v17;
    v25[3] = v18;
    v26[0] = v19[0];
    *(v26 + 10) = *(v19 + 10);
    v25[0] = v15;
    v25[1] = v16;
    sub_249FDDE80(v25);
    v29 = v22;
    v30 = v23;
    *v31 = v24[0];
    *&v31[10] = *(v24 + 10);
    v27 = v20;
    v28 = v21;
    sub_249FDDE80(&v27);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_249FDD87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C616D73 && a2 == 0xE500000000000000;
  if (v4 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A021C38();

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

uint64_t sub_249FDD988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6F73 && a2 == 0xE500000000000000;
  if (v4 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72477261656E696CLL && a2 == 0xEE00746E65696461 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72476C6169646172 && a2 == 0xEE00746E65696461 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172476D6F6F6C62 && a2 == 0xED0000746E656964 || (sub_24A021C38() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657474656E676976 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A021C38();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_249FDDB54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A021C38();

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

uint64_t _s11EmojiPoster0aB13ConfigurationV21layoutLocalizationKey8forStyle11sizeVariantSSAA0ab6LayoutH0O_AA0ab4SizeJ0OtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE800000000000000;
  v3 = 0x52414C5543524943;
  if (*a1 != 1)
  {
    v3 = 0x4C4152495053;
    v2 = 0xE600000000000000;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1145655879;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x4D554944454DLL;
  if (*a2 != 1)
  {
    v7 = 0x454752414CLL;
    v6 = 0xE500000000000000;
  }

  if (*a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x4C4C414D53;
  }

  if (*a2)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  sub_24A0219B8();

  strcpy(v11, "LAYOUT_STYLE_");
  MEMORY[0x24C20C3F0](v8, v9);

  MEMORY[0x24C20C3F0](95, 0xE100000000000000);
  MEMORY[0x24C20C3F0](v4, v5);

  return v11[0];
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_249FDDEB0()
{
  result = qword_2810DA3C8;
  if (!qword_2810DA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3C8);
  }

  return result;
}

unint64_t sub_249FDDF04()
{
  result = qword_2810DA2E8;
  if (!qword_2810DA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2E8);
  }

  return result;
}

unint64_t sub_249FDDF58()
{
  result = qword_2810DA448;
  if (!qword_2810DA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA448);
  }

  return result;
}

unint64_t sub_249FDDFAC()
{
  result = qword_2810DA3D8;
  if (!qword_2810DA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3D8);
  }

  return result;
}

unint64_t sub_249FDE000()
{
  result = qword_27EF2DF88;
  if (!qword_27EF2DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2DF88);
  }

  return result;
}

unint64_t sub_249FDE054()
{
  result = qword_2810DA2E0;
  if (!qword_2810DA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2E0);
  }

  return result;
}

unint64_t sub_249FDE0A8()
{
  result = qword_2810DA440;
  if (!qword_2810DA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA440);
  }

  return result;
}

unint64_t sub_249FDE0FC()
{
  result = qword_2810DA3D0;
  if (!qword_2810DA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3D0);
  }

  return result;
}

uint64_t sub_249FDE150(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2DF68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249FDE1BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2DF78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249FDE234()
{
  result = qword_2810DA9C0;
  if (!qword_2810DA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA9C0);
  }

  return result;
}

uint64_t sub_249FDE2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_249FDE334()
{
  result = qword_2810DA300;
  if (!qword_2810DA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA300);
  }

  return result;
}

unint64_t sub_249FDE388()
{
  result = qword_2810DA310;
  if (!qword_2810DA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA310);
  }

  return result;
}

unint64_t sub_249FDE3DC()
{
  result = qword_2810DA398;
  if (!qword_2810DA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA398);
  }

  return result;
}

unint64_t sub_249FDE430()
{
  result = qword_2810DA1A0;
  if (!qword_2810DA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA1A0);
  }

  return result;
}

uint64_t sub_249FDE484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_249FDE4C8()
{
  result = qword_27EF2DFA8;
  if (!qword_27EF2DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2DFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2DFA8);
  }

  return result;
}

unint64_t sub_249FDE544()
{
  result = qword_2810DA308;
  if (!qword_2810DA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA308);
  }

  return result;
}

unint64_t sub_249FDE598()
{
  result = qword_2810DA390;
  if (!qword_2810DA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA390);
  }

  return result;
}

unint64_t sub_249FDE5EC()
{
  result = qword_2810DA198;
  if (!qword_2810DA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA198);
  }

  return result;
}

uint64_t sub_249FDE640(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249FDE688()
{
  result = qword_2810DA2B8;
  if (!qword_2810DA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2B8);
  }

  return result;
}

unint64_t sub_249FDE6DC()
{
  result = qword_2810DA290;
  if (!qword_2810DA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA290);
  }

  return result;
}

unint64_t sub_249FDE730()
{
  result = qword_27EF2DFD0;
  if (!qword_27EF2DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2DFD0);
  }

  return result;
}

unint64_t sub_249FDE784()
{
  result = qword_2810DA1B8;
  if (!qword_2810DA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA1B8);
  }

  return result;
}

unint64_t sub_249FDE7D8()
{
  result = qword_2810DA278;
  if (!qword_2810DA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA278);
  }

  return result;
}

uint64_t sub_249FDE82C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E000);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249FDE8A4()
{
  result = qword_2810D9BA0;
  if (!qword_2810D9BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D9BA0);
  }

  return result;
}

unint64_t sub_249FDE920()
{
  result = qword_27EF2E018;
  if (!qword_27EF2E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E018);
  }

  return result;
}

unint64_t sub_249FDE974()
{
  result = qword_2810D9B98;
  if (!qword_2810D9B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2E008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D9B98);
  }

  return result;
}

unint64_t sub_249FDE9F4()
{
  result = qword_27EF2E028;
  if (!qword_27EF2E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E028);
  }

  return result;
}

unint64_t sub_249FDEA4C()
{
  result = qword_27EF2E030;
  if (!qword_27EF2E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E030);
  }

  return result;
}

unint64_t sub_249FDEAA4()
{
  result = qword_27EF2E038;
  if (!qword_27EF2E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E038);
  }

  return result;
}

unint64_t sub_249FDEAFC()
{
  result = qword_27EF2E040;
  if (!qword_27EF2E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E040);
  }

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

uint64_t get_enum_tag_for_layout_string_11EmojiPoster18GradientPropertiesVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_249FDEBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249FDEC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249FDECDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_249FDED38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_249FDEDD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249FDEE20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GradientProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GradientProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for GridLayoutEmojiSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GridLayoutEmojiSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EmojiPosterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmojiPosterConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmojiPosterBackgroundColor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EmojiPosterBackgroundColor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249FDF498(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_249FDF528(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_249FDF678(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_249FDF708(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_249FDF7FC()
{
  result = qword_27EF2E0D0;
  if (!qword_27EF2E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E0D0);
  }

  return result;
}

unint64_t sub_249FDF854()
{
  result = qword_27EF2E0D8;
  if (!qword_27EF2E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E0D8);
  }

  return result;
}

unint64_t sub_249FDF8AC()
{
  result = qword_27EF2E0E0;
  if (!qword_27EF2E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E0E0);
  }

  return result;
}

unint64_t sub_249FDF904()
{
  result = qword_27EF2E0E8;
  if (!qword_27EF2E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E0E8);
  }

  return result;
}

unint64_t sub_249FDF95C()
{
  result = qword_27EF2E0F0;
  if (!qword_27EF2E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E0F0);
  }

  return result;
}

unint64_t sub_249FDF9B4()
{
  result = qword_27EF2E0F8;
  if (!qword_27EF2E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E0F8);
  }

  return result;
}

unint64_t sub_249FDFA0C()
{
  result = qword_27EF2E100;
  if (!qword_27EF2E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E100);
  }

  return result;
}

unint64_t sub_249FDFA64()
{
  result = qword_27EF2E108;
  if (!qword_27EF2E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E108);
  }

  return result;
}

uint64_t sub_249FDFB20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249FDFB9C()
{
  result = qword_2810DA1A8;
  if (!qword_2810DA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA1A8);
  }

  return result;
}

unint64_t sub_249FDFBF4()
{
  result = qword_2810DA1B0;
  if (!qword_2810DA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA1B0);
  }

  return result;
}

unint64_t sub_249FDFC4C()
{
  result = qword_2810DA298;
  if (!qword_2810DA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA298);
  }

  return result;
}

unint64_t sub_249FDFCA4()
{
  result = qword_2810DA2A0;
  if (!qword_2810DA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2A0);
  }

  return result;
}

unint64_t sub_249FDFCFC()
{
  result = qword_2810DA280;
  if (!qword_2810DA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA280);
  }

  return result;
}

unint64_t sub_249FDFD54()
{
  result = qword_2810DA288;
  if (!qword_2810DA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA288);
  }

  return result;
}

unint64_t sub_249FDFDAC()
{
  result = qword_2810DA2A8;
  if (!qword_2810DA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2A8);
  }

  return result;
}

unint64_t sub_249FDFE04()
{
  result = qword_2810DA2B0;
  if (!qword_2810DA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2B0);
  }

  return result;
}

unint64_t sub_249FDFE5C()
{
  result = qword_2810DA2F0;
  if (!qword_2810DA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2F0);
  }

  return result;
}

unint64_t sub_249FDFEB4()
{
  result = qword_2810DA2F8;
  if (!qword_2810DA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA2F8);
  }

  return result;
}

unint64_t sub_249FDFF0C()
{
  result = qword_2810DA3B8;
  if (!qword_2810DA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3B8);
  }

  return result;
}

unint64_t sub_249FDFF64()
{
  result = qword_2810DA3C0;
  if (!qword_2810DA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3C0);
  }

  return result;
}

unint64_t sub_249FDFFBC()
{
  result = qword_2810DA3A0;
  if (!qword_2810DA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3A0);
  }

  return result;
}

unint64_t sub_249FE0014()
{
  result = qword_2810DA3A8;
  if (!qword_2810DA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3A8);
  }

  return result;
}

unint64_t sub_249FE006C()
{
  result = qword_2810DA360;
  if (!qword_2810DA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA360);
  }

  return result;
}

unint64_t sub_249FE00C4()
{
  result = qword_2810DA368;
  if (!qword_2810DA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA368);
  }

  return result;
}

unint64_t sub_249FE011C()
{
  result = qword_2810DA328;
  if (!qword_2810DA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA328);
  }

  return result;
}

unint64_t sub_249FE0174()
{
  result = qword_2810DA330;
  if (!qword_2810DA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA330);
  }

  return result;
}

unint64_t sub_249FE01CC()
{
  result = qword_2810DA318;
  if (!qword_2810DA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA318);
  }

  return result;
}

unint64_t sub_249FE0224()
{
  result = qword_2810DA320;
  if (!qword_2810DA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA320);
  }

  return result;
}

unint64_t sub_249FE027C()
{
  result = qword_2810DA338;
  if (!qword_2810DA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA338);
  }

  return result;
}

unint64_t sub_249FE02D4()
{
  result = qword_2810DA340;
  if (!qword_2810DA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA340);
  }

  return result;
}

unint64_t sub_249FE032C()
{
  result = qword_2810DA350;
  if (!qword_2810DA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA350);
  }

  return result;
}

unint64_t sub_249FE0384()
{
  result = qword_2810DA358;
  if (!qword_2810DA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA358);
  }

  return result;
}

unint64_t sub_249FE03DC()
{
  result = qword_2810DA378;
  if (!qword_2810DA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA378);
  }

  return result;
}

unint64_t sub_249FE0434()
{
  result = qword_2810DA380;
  if (!qword_2810DA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA380);
  }

  return result;
}

unint64_t sub_249FE048C()
{
  result = qword_2810DA3F8;
  if (!qword_2810DA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3F8);
  }

  return result;
}

unint64_t sub_249FE04E4()
{
  result = qword_2810DA400;
  if (!qword_2810DA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA400);
  }

  return result;
}

unint64_t sub_249FE053C()
{
  result = qword_2810DA3E0;
  if (!qword_2810DA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3E0);
  }

  return result;
}

unint64_t sub_249FE0594()
{
  result = qword_2810DA3E8;
  if (!qword_2810DA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3E8);
  }

  return result;
}

unint64_t sub_249FE05EC()
{
  result = qword_2810DA410;
  if (!qword_2810DA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA410);
  }

  return result;
}

unint64_t sub_249FE0644()
{
  result = qword_2810DA418;
  if (!qword_2810DA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA418);
  }

  return result;
}

unint64_t sub_249FE069C()
{
  result = qword_2810DA428;
  if (!qword_2810DA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA428);
  }

  return result;
}

unint64_t sub_249FE06F4()
{
  result = qword_2810DA430;
  if (!qword_2810DA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA430);
  }

  return result;
}

unint64_t sub_249FE074C()
{
  result = qword_2810DA450;
  if (!qword_2810DA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA450);
  }

  return result;
}

unint64_t sub_249FE07A4()
{
  result = qword_2810DA458;
  if (!qword_2810DA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA458);
  }

  return result;
}

unint64_t sub_249FE07FC()
{
  result = qword_2810DA468;
  if (!qword_2810DA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA468);
  }

  return result;
}

unint64_t sub_249FE0854()
{
  result = qword_2810DA470;
  if (!qword_2810DA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA470);
  }

  return result;
}

unint64_t sub_249FE08AC()
{
  result = qword_2810DA480;
  if (!qword_2810DA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA480);
  }

  return result;
}

unint64_t sub_249FE0904()
{
  result = qword_2810DA488;
  if (!qword_2810DA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA488);
  }

  return result;
}

unint64_t sub_249FE095C()
{
  result = qword_2810DA498;
  if (!qword_2810DA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA498);
  }

  return result;
}

unint64_t sub_249FE09B4()
{
  result = qword_2810DA4A0;
  if (!qword_2810DA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA4A0);
  }

  return result;
}

uint64_t sub_249FE0A08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024A0290C0 == a2 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024A0290E0 == a2 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x745374756F79616CLL && a2 == 0xEB00000000656C79 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69726156657A6973 && a2 == 0xEB00000000746E61 || (sub_24A021C38() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3256696A6F6D65 && a2 == 0xE700000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6172615073657375 && a2 == 0xEB0000000078616CLL)
  {

    return 6;
  }

  else
  {
    v5 = sub_24A021C38();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_249FE0C68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x756F72676B636162 && a2 == 0xEF656C797453646ELL;
  if (v3 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A029100 == a2 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A029120 == a2 || (sub_24A021C38() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024A029140 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A021C38();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_249FE0E28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A021C38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F437466656CLL && a2 == 0xEE0065756C615672 || (sub_24A021C38() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F437468676972 && a2 == 0xEF65756C6156726FLL || (sub_24A021C38() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000 || (sub_24A021C38() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A021C38();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_249FE1074(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_249FE1138(uint64_t a1, char a2)
{
  v3 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v3 = dbl_24A026628[a1 - 2];
  }

  if ((a2 & 1) == 0)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_249FE14D8;
    *(v12 + 24) = v11;
    *&aBlock.tx = sub_249FE150C;
    *&aBlock.ty = v12;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_249FE1534;
    *&aBlock.d = &block_descriptor;
    v13 = _Block_copy(&aBlock);
    v14 = v2;

    [v10 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_17;
    }

    return result;
  }

  v4 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews;
  swift_beginAccess();
  for (i = 0; ; ++i)
  {
    v6 = *&v2[v4];
    if (v6 >> 62)
    {
      result = sub_24A021A98();
      if (i >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i >= result)
      {
        return result;
      }
    }

    v8 = *&v2[v4];
    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    v9 = MEMORY[0x24C20C690](i, v8);

LABEL_10:
    CGAffineTransformMakeRotation(&aBlock, v3);
    [v9 setTransform_];
  }

  if (i < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * i + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_249FE13AC(uint64_t a1, CGFloat a2)
{
  v4 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews;
  swift_beginAccess();
  for (i = 0; ; ++i)
  {
    v6 = *(a1 + v4);
    if (v6 >> 62)
    {
      result = sub_24A021A98();
      if (i >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i >= result)
      {
        return result;
      }
    }

    v8 = *(a1 + v4);
    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    v9 = MEMORY[0x24C20C690](i, v8);

LABEL_7:
    CGAffineTransformMakeRotation(&v10, a2);
    [v9 setTransform_];
  }

  if (i < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * i + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249FE1574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v11;
  v12 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v12;
  v13 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FE162C(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v36 = *(a1 + 128);
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  v28 = *a1;
  v29 = v5;
  swift_beginAccess();
  v37 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v40 = *(v6 + 48);
  v41 = v9;
  v38 = v7;
  v39 = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  v45 = *(v6 + 128);
  v43 = v11;
  v44 = v12;
  v42 = v10;
  v46[0] = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 64);
  v46[3] = *(v6 + 48);
  v46[4] = v15;
  v46[1] = v13;
  v46[2] = v14;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  v47 = *(v6 + 128);
  v46[6] = v17;
  v46[7] = v18;
  v46[5] = v16;
  *v6 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v32;
  *(v6 + 48) = v31;
  *(v6 + 64) = v21;
  *(v6 + 16) = v19;
  *(v6 + 32) = v20;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  *(v6 + 128) = v36;
  *(v6 + 96) = v23;
  *(v6 + 112) = v24;
  *(v6 + 80) = v22;
  sub_249FE1E80(&v28, v26);
  sub_249FE1E80(&v37, v26);
  sub_249FE2008(v46);
  v26[6] = v43;
  v26[7] = v44;
  v27 = v45;
  v26[2] = v39;
  v26[3] = v40;
  v26[4] = v41;
  v26[5] = v42;
  v26[0] = v37;
  v26[1] = v38;
  sub_249FE178C(v26);
  return sub_249FE2008(&v37);
}

void sub_249FE178C(__int128 *a1)
{
  v2 = v1;
  v4 = a1[7];
  v90 = a1[6];
  v91 = v4;
  v92 = *(a1 + 128);
  v5 = a1[3];
  v86 = a1[2];
  v87 = v5;
  v6 = a1[5];
  v88 = a1[4];
  v89 = v6;
  v7 = a1[1];
  v8 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
  v84 = *a1;
  v85 = v7;
  swift_beginAccess();
  v9 = *(v8 + 5);
  v10 = *(v8 + 7);
  v99 = *(v8 + 6);
  v100 = v10;
  v11 = *(v8 + 1);
  v12 = *(v8 + 3);
  v95 = *(v8 + 2);
  v96 = v12;
  v13 = *(v8 + 3);
  v14 = *(v8 + 5);
  v97 = *(v8 + 4);
  v98 = v14;
  v15 = *(v8 + 1);
  v93 = *v8;
  v94 = v15;
  v16 = *(v8 + 7);
  v108 = v99;
  v109 = v16;
  v104 = v95;
  v105 = v13;
  v106 = v97;
  v107 = v9;
  v101 = v8[128];
  v110 = v8[128];
  v102 = v93;
  v103 = v11;
  if (sub_249FE499C(&v102) != 1)
  {
    v17 = a1[7];
    v81 = a1[6];
    v82 = v17;
    v83 = *(a1 + 128);
    v18 = a1[3];
    v80[2] = a1[2];
    v80[3] = v18;
    v19 = a1[5];
    v80[4] = a1[4];
    v80[5] = v19;
    v20 = a1[1];
    v80[0] = *a1;
    v80[1] = v20;
    v21 = sub_249FE499C(v80);
    v22 = SBYTE11(v108);
    v23 = BYTE11(v108);
    if (v21 == 1 || BYTE11(v81) == 3)
    {
      if (BYTE11(v108) == 3)
      {
LABEL_6:
        v77 = v99;
        v78 = v100;
        v79 = v101;
        v73 = v95;
        v74 = v96;
        v75 = v97;
        v76 = v98;
        v71 = v93;
        v72 = v94;
        sub_249FDE288(&v71, &v62);
        v24 = 0;
        goto LABEL_11;
      }
    }

    else if (BYTE11(v108) != 3 && BYTE11(v81) == BYTE11(v108))
    {
      goto LABEL_6;
    }

    v77 = v99;
    v78 = v100;
    v79 = v101;
    v73 = v95;
    v74 = v96;
    v75 = v97;
    v76 = v98;
    v71 = v93;
    v72 = v94;
    sub_249FE1E80(&v93, &v62);
    sub_249FDE288(&v71, &v62);
    v25 = sub_24A021518();
    v26 = sub_24A021868();
    sub_249FE2008(&v93);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v62 = v28;
      *v27 = 136315138;
      v29 = sub_249FF336C(qword_24A026640[v22], 0xE100000000000000, &v62);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_249FC9000, v25, v26, "Size variant did change to %s, will update layout", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x24C20D580](v28, -1, -1);
      MEMORY[0x24C20D580](v27, -1, -1);
    }

    v24 = 1;
LABEL_11:
    v30 = a1[7];
    v77 = a1[6];
    v78 = v30;
    v79 = *(a1 + 128);
    v31 = a1[3];
    v73 = a1[2];
    v74 = v31;
    v32 = a1[5];
    v75 = a1[4];
    v76 = v32;
    v33 = a1[1];
    v71 = *a1;
    v72 = v33;
    v34 = sub_249FE499C(&v71);
    if (v34 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = *(v78 + 16);
    }

    v68 = v108;
    v69 = v109;
    v70 = v110;
    v64 = v104;
    v65 = v105;
    v66 = v106;
    v67 = v107;
    v62 = v102;
    v63 = v103;
    v36 = *(EmojiPosterConfiguration.emojis.getter() + 16);

    if (v34 == 1 || v35 != v36)
    {
      v68 = v99;
      v69 = v100;
      v70 = v101;
      v64 = v95;
      v65 = v96;
      v66 = v97;
      v67 = v98;
      v62 = v93;
      v63 = v94;
      sub_249FDE288(&v62, &v53);
      v38 = sub_24A021518();
      v39 = sub_24A021868();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = *(v109 + 16);
        sub_249FE2008(&v93);
        _os_log_impl(&dword_249FC9000, v38, v39, "Emoji count did change to %ld, will update layout", v40, 0xCu);
        MEMORY[0x24C20D580](v40, -1, -1);
      }

      else
      {
        sub_249FE2008(&v93);
      }
    }

    else if (!v24)
    {
      v37 = 0;
      goto LABEL_26;
    }

    v68 = v108;
    v69 = v109;
    v70 = v110;
    v64 = v104;
    v65 = v105;
    v66 = v106;
    v67 = v107;
    v62 = v102;
    v63 = v103;
    v41 = *(EmojiPosterConfiguration.emojis.getter() + 16);

    v42 = [v2 view];
    if (!v42)
    {
      __break(1u);
      return;
    }

    v43 = v42;
    if (v41 <= 1)
    {
      v41 = 1;
    }

    [v42 bounds];
    v45 = v44;
    v47 = v46;

    sub_249FF7BCC(&v62);
    v48 = v62;
    type metadata accessor for GridLayoutProvider();
    v49 = swift_allocObject();
    *(v49 + 56) = 0;
    *(v49 + 64) = 0x3FEBB67AE8584CAALL;
    *(v49 + 16) = v45;
    *(v49 + 24) = v47;
    *(v49 + 32) = v23;
    *(v49 + 40) = v41;
    *(v49 + 48) = v48;
    *(v49 + 56) = sub_24A0171A0();

    *&v2[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider] = v49;

    v37 = 1;
LABEL_26:
    if (![v2 isViewLoaded])
    {
      sub_249FE2008(&v93);
      return;
    }

    v68 = v90;
    v69 = v91;
    v70 = v92;
    v64 = v86;
    v65 = v87;
    v66 = v88;
    v67 = v89;
    v62 = v84;
    v63 = v85;
    if (sub_249FE499C(&v62) == 1)
    {
      v50 = 0;
    }

    else
    {
      v59 = v68;
      v60 = v69;
      v61 = v70;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v58 = v67;
      v53 = v62;
      v54 = v63;
      v50 = EmojiPosterConfiguration.emojis.getter();
    }

    v59 = v108;
    v60 = v109;
    v61 = v110;
    v55 = v104;
    v56 = v105;
    v57 = v106;
    v58 = v107;
    v53 = v102;
    v54 = v103;
    v51 = EmojiPosterConfiguration.emojis.getter();
    sub_249FE2008(&v93);
    if (v50)
    {
      v52 = sub_24A007030(v50, v51);

      if (v52)
      {
        if (!v37)
        {
          return;
        }

        sub_249FE3904();
        sub_249FE3ED8();
        goto LABEL_37;
      }
    }

    else
    {
    }

    sub_249FE40C8();
LABEL_37:
    sub_249FE362C();
  }
}

uint64_t sub_249FE1DD0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_249FE1E80(v17, &v16);
}

uint64_t sub_249FE1E80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249FE1EF0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v25 = *(v3 + 96);
  v26 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v21 = *(v3 + 32);
  v22 = v7;
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v23 = *(v3 + 64);
  v24 = v9;
  v10 = *(v3 + 16);
  v19 = *v3;
  v20 = v10;
  v11 = *(v3 + 112);
  v28[6] = v25;
  v28[7] = v11;
  v28[2] = v21;
  v28[3] = v8;
  v28[4] = v23;
  v28[5] = v4;
  v27 = *(v3 + 128);
  v29 = *(v3 + 128);
  v28[0] = v19;
  v28[1] = v6;
  v12 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v12;
  v13 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v13;
  *(v3 + 128) = *(a1 + 128);
  v14 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v14;
  v15 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v15;
  sub_249FE1E80(&v19, v17);
  sub_249FE2008(v28);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_249FE178C(v17);
  return sub_249FE2008(&v19);
}

uint64_t sub_249FE2008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_249FE2070(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 976) = v1;
  v5 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  *(v3 + 984) = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  *(v4 + 48) = *(v6 + 48);
  *(v4 + 64) = v9;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  *(v4 + 128) = *(v6 + 128);
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 80) = v10;
  *(v4 + 136) = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 48);
  *(v4 + 200) = *(v6 + 64);
  *(v4 + 184) = v15;
  *(v4 + 168) = v14;
  *(v4 + 152) = v13;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  *(v4 + 264) = *(v6 + 128);
  *(v4 + 248) = v18;
  *(v4 + 232) = v17;
  *(v4 + 216) = v16;
  sub_249FE1E80(v4, v4 + 272);
  return sub_249FE217C;
}

void sub_249FE217C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 408;
  v4 = *(v2 + 976) + *(v2 + 984);
  if (a2)
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);
    *(v2 + 712) = *(v2 + 168);
    *(v2 + 728) = v6;
    v7 = *(v2 + 152);
    *(v2 + 808) = *(v2 + 264);
    v8 = *(v2 + 248);
    *(v2 + 776) = *(v2 + 232);
    *(v2 + 792) = v8;
    v9 = *(v2 + 216);
    *(v2 + 744) = v5;
    *(v2 + 760) = v9;
    *(v2 + 680) = *(v2 + 136);
    *(v2 + 696) = v7;
    *(v2 + 544) = *v4;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 64);
    *(v2 + 592) = *(v4 + 48);
    *(v2 + 608) = v12;
    *(v2 + 560) = v10;
    *(v2 + 576) = v11;
    v13 = *(v4 + 80);
    v14 = *(v4 + 96);
    v15 = *(v4 + 112);
    *(v2 + 672) = *(v4 + 128);
    *(v2 + 640) = v14;
    *(v2 + 656) = v15;
    *(v2 + 624) = v13;
    *v3 = *v4;
    v16 = *(v4 + 16);
    v17 = *(v4 + 32);
    v18 = *(v4 + 64);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v18;
    *(v3 + 16) = v16;
    *(v3 + 32) = v17;
    v19 = *(v4 + 80);
    v20 = *(v4 + 96);
    v21 = *(v4 + 112);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v20;
    *(v3 + 112) = v21;
    *(v3 + 80) = v19;
    *v4 = *(v2 + 136);
    v22 = *(v2 + 152);
    v23 = *(v2 + 168);
    v24 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v24;
    *(v4 + 16) = v22;
    *(v4 + 32) = v23;
    v25 = *(v2 + 216);
    v26 = *(v2 + 232);
    v27 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v26;
    *(v4 + 112) = v27;
    *(v4 + 80) = v25;
    sub_249FE1E80(v2 + 680, v2 + 816);
    sub_249FE1E80(v2 + 544, v2 + 816);
    sub_249FE2008(v3);
    v28 = *(v2 + 656);
    v65 = *(v2 + 640);
    v66 = v28;
    v67 = *(v2 + 672);
    v29 = *(v2 + 592);
    v61 = *(v2 + 576);
    v62 = v29;
    v30 = *(v2 + 624);
    v63 = *(v2 + 608);
    v64 = v30;
    v31 = *(v2 + 560);
    v59 = *(v2 + 544);
    v60 = v31;
    sub_249FE178C(&v59);
    sub_249FE2008(v2 + 544);
    v32 = *(v2 + 216);
    v33 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v33;
    *(v2 + 400) = *(v2 + 264);
    v34 = *(v2 + 152);
    v35 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v35;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v32;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v34;
    v36 = v2 + 272;
  }

  else
  {
    *v3 = *v4;
    v37 = *(v4 + 64);
    v39 = *(v4 + 16);
    v38 = *(v4 + 32);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v37;
    *(v3 + 16) = v39;
    *(v3 + 32) = v38;
    v41 = *(v4 + 96);
    v40 = *(v4 + 112);
    v42 = *(v4 + 80);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v41;
    *(v3 + 112) = v40;
    *(v3 + 80) = v42;
    v43 = *(v4 + 80);
    v44 = *(v4 + 96);
    v45 = *(v4 + 112);
    *(v2 + 400) = *(v4 + 128);
    *(v2 + 368) = v44;
    *(v2 + 384) = v45;
    *(v2 + 352) = v43;
    v46 = *(v4 + 16);
    v47 = *(v4 + 32);
    v48 = *(v4 + 64);
    *(v2 + 320) = *(v4 + 48);
    *(v2 + 336) = v48;
    *(v2 + 288) = v46;
    *(v2 + 304) = v47;
    *(v2 + 272) = *v4;
    *v4 = *(v2 + 136);
    v49 = *(v2 + 152);
    v50 = *(v2 + 168);
    v51 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v51;
    *(v4 + 16) = v49;
    *(v4 + 32) = v50;
    v52 = *(v2 + 216);
    v53 = *(v2 + 232);
    v54 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v53;
    *(v4 + 112) = v54;
    *(v4 + 80) = v52;
    sub_249FE1E80(v3, v2 + 544);
    sub_249FE2008(v2 + 272);
    v55 = *(v3 + 112);
    v65 = *(v3 + 96);
    v66 = v55;
    v67 = *(v3 + 128);
    v56 = *(v3 + 48);
    v61 = *(v3 + 32);
    v62 = v56;
    v57 = *(v3 + 80);
    v63 = *(v3 + 64);
    v64 = v57;
    v58 = *(v3 + 16);
    v59 = *v3;
    v60 = v58;
    sub_249FE178C(&v59);
    v36 = v3;
  }

  sub_249FE2008(v36);

  free(v2);
}

double sub_249FE2434()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_249FE2484(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FE24E8;
}

double sub_249FE24EC()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_249FE253C(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = a2;
  sub_249FE362C();
}

uint64_t (*sub_249FE258C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FE4F28;
}

void sub_249FE25F0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_249FE362C();
  }
}

id EmojiForegroundGridLayersViewController.init(emojiRenderer:)(uint64_t a1)
{
  sub_24A021528();
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuredSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
  sub_249FE389C(v14);
  v5 = v14[7];
  *(v4 + 6) = v14[6];
  *(v4 + 7) = v5;
  v4[128] = v15;
  v6 = v14[3];
  *(v4 + 2) = v14[2];
  *(v4 + 3) = v6;
  v7 = v14[5];
  *(v4 + 4) = v14[4];
  *(v4 + 5) = v7;
  v8 = v14[1];
  *v4 = v14[0];
  *(v4 + 1) = v8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider] = 0;
  v9 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_numberOfRows];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_numberOfItemsInRow];
  *v10 = 0;
  v10[8] = 1;
  v11 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImages] = v11;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_unlockProgress] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiRenderer] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  return objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
}

id EmojiForegroundGridLayersViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiForegroundGridLayersViewController.init(coder:)(void *a1)
{
  sub_24A021528();
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuredSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
  sub_249FE389C(v17);
  v5 = v17[7];
  *(v4 + 6) = v17[6];
  *(v4 + 7) = v5;
  v4[128] = v18;
  v6 = v17[3];
  *(v4 + 2) = v17[2];
  *(v4 + 3) = v6;
  v7 = v17[5];
  *(v4 + 4) = v17[4];
  *(v4 + 5) = v7;
  v8 = v17[1];
  *v4 = v17[0];
  *(v4 + 1) = v8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider] = 0;
  v9 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_numberOfRows];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_numberOfItemsInRow];
  *v10 = 0;
  v10[8] = 1;
  v11 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImages] = v11;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_unlockProgress] = 0;
  type metadata accessor for EmojiRenderer();
  v12 = swift_allocObject();
  *(v12 + 16) = 10;
  v13 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v12 + 24) = v13;
  [v13 setCountLimit_];
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiRenderer] = v12;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

void sub_249FE2A20()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  objc_msgSendSuper2(&v50, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 setClipsToBounds_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
  swift_beginAccess();
  v8 = *(v7 + 5);
  v9 = *(v7 + 7);
  v38 = *(v7 + 6);
  v39 = v9;
  v10 = *(v7 + 1);
  v11 = *(v7 + 3);
  v34 = *(v7 + 2);
  v35 = v11;
  v12 = *(v7 + 3);
  v13 = *(v7 + 5);
  v36 = *(v7 + 4);
  v37 = v13;
  v14 = *(v7 + 1);
  v32 = *v7;
  v33 = v14;
  v15 = *(v7 + 7);
  v47 = v38;
  v48 = v15;
  v43 = v34;
  v44 = v12;
  v45 = v36;
  v46 = v8;
  v40 = v7[128];
  v49 = v7[128];
  v41 = v32;
  v42 = v10;
  if (sub_249FE499C(&v41) == 1)
  {
    return;
  }

  v28[6] = v47;
  v28[7] = v48;
  v29 = v49;
  v28[2] = v43;
  v28[3] = v44;
  v28[4] = v45;
  v28[5] = v46;
  v28[0] = v41;
  v28[1] = v42;
  v30[6] = v38;
  v30[7] = v39;
  v31 = v40;
  v30[2] = v34;
  v30[3] = v35;
  v30[4] = v36;
  v30[5] = v37;
  v30[0] = v32;
  v30[1] = v33;
  sub_249FDE288(v30, v27);
  v16 = *(EmojiPosterConfiguration.emojis.getter() + 16);

  v17 = [v1 view];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = v17;
  if (v16 <= 1)
  {
    v16 = 1;
  }

  [v17 bounds];
  v20 = v19;
  v22 = v21;

  v23 = BYTE11(v47);
  sub_249FF7BCC(v28);
  v24 = v28[0];
  type metadata accessor for GridLayoutProvider();
  v25 = swift_allocObject();
  *(v25 + 56) = 0;
  *(v25 + 64) = 0x3FEBB67AE8584CAALL;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  *(v25 + 40) = v16;
  *(v25 + 48) = v24;
  v26 = sub_24A0171A0();
  sub_249FE2008(&v32);
  *(v25 + 56) = v26;

  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider] = v25;

  sub_249FE311C();
  sub_249FE32F0();
}

void sub_249FE2D18()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuredSize];
  if ((v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuredSize + 16] & 1) == 0)
  {
    v3 = *v1;
    v2 = v1[1];
    v4 = [v0 view];
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;

    v17.width = v3;
    v17.height = v2;
    v18.width = v7;
    v18.height = v9;
    CGSizeEqualToSize(v17, v18);
  }

  sub_249FE2E68();
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;

    *v1 = v13;
    *(v1 + 1) = v15;
    *(v1 + 16) = 0;
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

void sub_249FE2E68()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v4 = *(v2 + 7);
  v33 = *(v2 + 6);
  v34 = v4;
  v5 = *(v2 + 1);
  v6 = *(v2 + 3);
  v29 = *(v2 + 2);
  v30 = v6;
  v7 = *(v2 + 3);
  v8 = *(v2 + 5);
  v31 = *(v2 + 4);
  v32 = v8;
  v9 = *(v2 + 1);
  v27 = *v2;
  v28 = v9;
  v10 = *(v2 + 7);
  v42 = v33;
  v43 = v10;
  v38 = v29;
  v39 = v7;
  v40 = v31;
  v41 = v3;
  v35 = v2[128];
  v44 = v2[128];
  v36 = v27;
  v37 = v5;
  if (sub_249FE499C(&v36) != 1)
  {
    v23[6] = v42;
    v23[7] = v43;
    v24 = v44;
    v23[2] = v38;
    v23[3] = v39;
    v23[4] = v40;
    v23[5] = v41;
    v23[0] = v36;
    v23[1] = v37;
    v25[6] = v33;
    v25[7] = v34;
    v26 = v35;
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v25[5] = v32;
    v25[0] = v27;
    v25[1] = v28;
    sub_249FDE288(v25, v22);
    v11 = *(EmojiPosterConfiguration.emojis.getter() + 16);

    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      [v12 bounds];
      v15 = v14;
      v17 = v16;

      v18 = BYTE11(v42);
      sub_249FF7BCC(v23);
      v19 = v23[0];
      type metadata accessor for GridLayoutProvider();
      v20 = swift_allocObject();
      *(v20 + 56) = 0;
      *(v20 + 64) = 0x3FEBB67AE8584CAALL;
      *(v20 + 16) = v15;
      *(v20 + 24) = v17;
      *(v20 + 32) = v18;
      *(v20 + 40) = v11;
      *(v20 + 48) = v19;
      v21 = sub_24A0171A0();
      sub_249FE2008(&v27);
      *(v20 + 56) = v21;

      *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider] = v20;

      sub_249FE362C();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_249FE3064(uint64_t a1)
{
  sub_249FE2E68();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  return objc_msgSendSuper2(&v4, sel_didMoveToParentViewController_, a1);
}

uint64_t sub_249FE311C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration);
  swift_beginAccess();
  v3 = v2[7];
  v32 = v2[6];
  v33 = v3;
  v34 = *(v2 + 128);
  v4 = v2[3];
  v28 = v2[2];
  v29 = v4;
  v5 = v2[5];
  v30 = v2[4];
  v31 = v5;
  v6 = v2[1];
  v26 = *v2;
  v27 = v6;
  result = sub_249FE499C(&v26);
  if (result != 1)
  {
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v17 = v26;
    v18 = v27;
    v16 = EmojiPosterConfiguration.emojis.getter();
    v8 = *(v16 + 16);
    if (v8)
    {
      v9 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImages;
      v10 = (v16 + 48);
      do
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        *&v17 = v11;
        *(&v17 + 1) = v12;
        LOBYTE(v18) = v13;
        sub_249FE4E60(v11, v12, v13);

        v14 = sub_249FE9AD4(&v17);

        swift_beginAccess();
        v15 = v14;
        MEMORY[0x24C20C470]();
        if (*((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A021808();
        }

        sub_24A021828();
        swift_endAccess();

        sub_249FE4EC4(v11, v12, v13);
        v10 += 24;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void sub_249FE32F0()
{
  v1 = &v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
  swift_beginAccess();
  v2 = *(v1 + 7);
  v24[6] = *(v1 + 6);
  v24[7] = v2;
  v25 = v1[128];
  v3 = *(v1 + 3);
  v24[2] = *(v1 + 2);
  v24[3] = v3;
  v4 = *(v1 + 5);
  v24[4] = *(v1 + 4);
  v24[5] = v4;
  v5 = *(v1 + 1);
  v24[0] = *v1;
  v24[1] = v5;
  if (sub_249FE499C(v24) != 1)
  {
    v6 = v0;
    v7 = sub_24A021518();
    LOBYTE(v8) = sub_24A021878();
    v9 = &unk_2810DD000;
    if (os_log_type_enabled(v7, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      v11 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews;
      swift_beginAccess();
      v12 = *(&v6->isa + v11);
      if (v12 >> 62)
      {
LABEL_24:
        v13 = sub_24A021A98();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 4) = v13;

      _os_log_impl(&dword_249FC9000, v7, v8, "[createEmojiViews] created %ld emoji views", v10, 0xCu);
      MEMORY[0x24C20D580](v10, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v14 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider;
    v15 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImages;
    v9 = v9[405];
    swift_beginAccess();
    v16 = *(&v6->isa + v14);
    if (v16)
    {
      v17 = -1;
      v18 = 72;
      while (1)
      {
        v19 = *(v16 + 56);
        if (!v19)
        {
          break;
        }

        if (++v17 >= *(v19 + 16))
        {
          return;
        }

        v8 = *(v19 + v18);
        v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
        v10 = *(&v6->isa + v15);
        if ((v10 & 0xC000000000000001) != 0)
        {

          v20 = MEMORY[0x24C20C690](v8, v10);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v20 = *(v10 + 8 * v8 + 32);
        }

        [v7 setImage:v20];

        [v7 setContentMode:1];
        v21 = [v6 view];
        if (!v21)
        {
          goto LABEL_27;
        }

        v22 = v21;
        [v21 addSubview_];

        swift_beginAccess();
        v23 = v7;
        MEMORY[0x24C20C470]();
        if (*((*(v9 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A021808();
        }

        v18 += 48;
        sub_24A021828();
        swift_endAccess();

        v16 = *(&v6->isa + v14);
        if (!v16)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_249FE362C()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_24A021A98();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider;

  swift_beginAccess();
  swift_beginAccess();
  v5 = 0;
  for (i = 0; ; i += 48)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C20C690](v5, v2);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(v2 + 8 * v5 + 32);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v9 = v7;
    v10 = [v0 viewIfLoaded];
    v11 = 0.0;
    if (v10)
    {

      v12 = *&v0[v4];
      if (!v12)
      {
        goto LABEL_28;
      }

      v13 = *(v12 + 56);
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = 0.0;
      if (v5 < *(v13 + 16))
      {
        v15 = v13 + i;
        v11 = *(v15 + 48);
        v14 = *(v15 + 56);
      }
    }

    else
    {
      v14 = 0.0;
    }

    [v9 setCenter_];
    v16 = *&v0[v4];
    if (!v16)
    {
      break;
    }

    if (!*(v16 + 56))
    {
      goto LABEL_27;
    }

    [v9 bounds];
    [v9 setBounds_];

    ++v5;
    if (v8 == v3)
    {

      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

double sub_249FE389C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for EmojiForegroundGridLayersViewController()
{
  result = qword_2810DA5A0;
  if (!qword_2810DA5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249FE3904()
{
  v3 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider];
  if (!v3)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
LABEL_84:
    __break(1u);
    return;
  }

  v5 = v0;
  v6 = *(v4 + 16);
  v7 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews;
  swift_beginAccess();
  v8 = *&v5[v7];
  if (v8 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A021A98())
  {
    v10 = *&v5[v7];
    v11 = v10 >> 62;
    if (i < v6)
    {
      break;
    }

    if (!v11)
    {
      if (v6 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_17;
    }

LABEL_62:
    if (v6 >= sub_24A021A98())
    {
      return;
    }

LABEL_17:
    v19 = *&v5[v7];
    if (v19 >> 62)
    {
      v49 = sub_24A021A98();
      v21 = v49 - v6;
      if (__OFSUB__(v49, v6))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 - v6;
      if (__OFSUB__(v20, v6))
      {
        goto LABEL_66;
      }
    }

    v22 = sub_24A021518();
    v23 = sub_24A021878();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_249FC9000, v22, v23, "[updateEmojiViews] removing %ld emoji views", v24, 0xCu);
      MEMORY[0x24C20D580](v24, -1, -1);
    }

    v25 = *&v5[v7];
    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 - v21;
      if (__OFSUB__(v26, v21))
      {
        goto LABEL_69;
      }

      goto LABEL_23;
    }

LABEL_67:
    v50 = sub_24A021A98();
    v27 = v50 - v21;
    if (__OFSUB__(v50, v21))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_23:
    v28 = *&v5[v7];
    if (!(v28 >> 62))
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29 < v27)
      {
        goto LABEL_71;
      }

      goto LABEL_25;
    }

LABEL_70:
    v29 = sub_24A021A98();
    if (v29 < v27)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_25:
    v1 = *&v5[v7];
    v2 = (v1 >> 62);
    if (!(v1 >> 62))
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v27)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

LABEL_72:
    if (sub_24A021A98() < v27)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v51 = sub_24A021A98();
      v45 = v51 - v21;
      if (!__OFSUB__(v51, v21))
      {
LABEL_53:
        v46 = *&v5[v7];
        if (!(v46 >> 62))
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v47 >= v45)
          {
LABEL_55:
            swift_beginAccess();
            sub_249FF3AB4(v45, v47);
            swift_endAccess();
            swift_unknownObjectRelease();
            return;
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

LABEL_79:
        v47 = sub_24A021A98();
        if (v47 >= v45)
        {
          goto LABEL_55;
        }

        goto LABEL_80;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

LABEL_27:
    if (v27 < 0)
    {
      goto LABEL_74;
    }

    if (v2)
    {
      v30 = sub_24A021A98();
    }

    else
    {
      v30 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v30 < v29)
    {
      goto LABEL_75;
    }

    if ((v1 & 0xC000000000000001) == 0 || v27 == v29)
    {
      swift_bridgeObjectRetain_n();
      if (!v2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v27 >= v29)
      {
        goto LABEL_81;
      }

      sub_249FE4E14();
      swift_bridgeObjectRetain_n();
      v34 = v27;
      do
      {
        v35 = v34 + 1;
        sub_24A0219C8();
        v34 = v35;
      }

      while (v29 != v35);
      if (!v2)
      {
LABEL_41:
        v36 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_44;
      }
    }

    sub_24A021AA8();
    v36 = v37;
    v27 = v38;
    v29 = v39 >> 1;
LABEL_44:
    swift_unknownObjectRetain();

    v1 = v29 - v27;
    if (v29 == v27)
    {
LABEL_51:
      swift_unknownObjectRelease();
      v43 = *&v5[v7];
      if (v43 >> 62)
      {
        goto LABEL_76;
      }

      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v44 - v21;
      if (!__OFSUB__(v44, v21))
      {
        goto LABEL_53;
      }

      goto LABEL_78;
    }

    if (v27 <= v29)
    {
      v40 = v29;
    }

    else
    {
      v40 = v27;
    }

    v41 = v40 - v27;
    v6 = (v36 + 8 * v27);
    v2 = &off_278FC2000;
    while (v41)
    {
      v42 = *v6++;
      [v42 removeFromSuperview];
      --v41;
      if (!--v1)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_58:
    ;
  }

  if (!v11)
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v6 - v12;
    if (!__OFSUB__(v6, v12))
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

  v48 = sub_24A021A98();
  v13 = v6 - v48;
  if (__OFSUB__(v6, v48))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_8:
  v52 = v13;
  if (v13 >= 1)
  {
    v14 = v13;
    do
    {
      v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
      [v15 setContentMode_];
      v16 = [v5 view];
      if (!v16)
      {
        goto LABEL_82;
      }

      v17 = v16;
      [v16 addSubview_];

      swift_beginAccess();
      v18 = v15;
      MEMORY[0x24C20C470]();
      if (*((*&v5[v7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();
      swift_endAccess();
    }

    while (--v14);
  }

  v31 = sub_24A021518();
  v32 = sub_24A021878();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v52;
    _os_log_impl(&dword_249FC9000, v31, v32, "[updateEmojiViews] creating %ld new emoji views", v33, 0xCu);
    MEMORY[0x24C20D580](v33, -1, -1);
  }
}

void sub_249FE3ED8()
{
  v1 = v0 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  swift_beginAccess();
  v2 = *(v1 + 112);
  v18[6] = *(v1 + 96);
  v18[7] = v2;
  v19 = *(v1 + 128);
  v3 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v3;
  v4 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v4;
  v5 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v5;
  if (sub_249FE499C(v18) != 1)
  {
    v6 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_layoutProvider;
    v7 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImageViews;
    v8 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImages;
    swift_beginAccess();
    swift_beginAccess();
    v9 = *(v0 + v6);
    if (v9)
    {
      v10 = 0;
      v11 = 72;
      while (1)
      {
        v12 = *(v9 + 56);
        if (!v12)
        {
          break;
        }

        if (v10 >= *(v12 + 16))
        {
          return;
        }

        v13 = *(v12 + v11);
        v14 = *(v0 + v7);
        if ((v14 & 0xC000000000000001) != 0)
        {

          v15 = MEMORY[0x24C20C690](v10, v14);
        }

        else
        {
          if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            break;
          }

          v15 = *(v14 + 8 * v10 + 32);
        }

        v16 = *(v0 + v8);
        if ((v16 & 0xC000000000000001) != 0)
        {

          v17 = MEMORY[0x24C20C690](v13, v16);
        }

        else
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (v13 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v17 = *(v16 + 8 * v13 + 32);
        }

        [v15 setImage_];

        ++v10;
        v9 = *(v0 + v6);
        v11 += 48;
        if (!v9)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

LABEL_22:
    __break(1u);
  }
}

void sub_249FE40C8()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration);
  swift_beginAccess();
  v3 = v2[5];
  v4 = v2[7];
  v29 = v2[6];
  v30 = v4;
  v5 = v2[1];
  v6 = v2[3];
  v25 = v2[2];
  v26 = v6;
  v7 = v2[3];
  v8 = v2[5];
  v27 = v2[4];
  v28 = v8;
  v9 = v2[1];
  v23 = *v2;
  v24 = v9;
  v10 = v2[7];
  v32[6] = v29;
  v32[7] = v10;
  v32[2] = v25;
  v32[3] = v7;
  v32[4] = v27;
  v32[5] = v3;
  v31 = *(v2 + 128);
  v33 = *(v2 + 128);
  v32[0] = v23;
  v32[1] = v5;
  if (sub_249FE499C(v32) != 1)
  {
    v21[6] = v29;
    v21[7] = v30;
    v22 = v31;
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_249FDE288(v21, v20);
    v11 = sub_24A021518();
    v12 = sub_24A021878();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315138;
      v20[0] = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
      sub_249FE4DB0();
      v15 = sub_24A021628();
      v17 = v16;
      sub_249FE2008(&v23);

      v18 = sub_249FF336C(v15, v17, v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_249FC9000, v11, v12, "Updating for changed emoji: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x24C20D580](v14, -1, -1);
      MEMORY[0x24C20D580](v13, -1, -1);
    }

    else
    {

      sub_249FE2008(&v23);
    }

    v19 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_emojiImages;
    swift_beginAccess();
    *(v1 + v19) = MEMORY[0x277D84F90];

    sub_249FE311C();
    sub_249FE3904();
    sub_249FE3ED8();
  }
}

id EmojiForegroundGridLayersViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiForegroundGridLayersViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiForegroundGridLayersViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249FE4530@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v11;
  v12 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v12;
  v13 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FE45E8(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration;
  swift_beginAccess();
  v23 = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v26 = *(v3 + 48);
  v27 = v6;
  v24 = v4;
  v25 = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v31 = *(v3 + 128);
  v29 = v8;
  v30 = v9;
  v28 = v7;
  v32[0] = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v12 = *(v3 + 64);
  v32[3] = *(v3 + 48);
  v32[4] = v12;
  v32[1] = v10;
  v32[2] = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = *(v3 + 112);
  v33 = *(v3 + 128);
  v32[6] = v14;
  v32[7] = v15;
  v32[5] = v13;
  v16 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v16;
  *(v3 + 128) = *(a1 + 128);
  v17 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v17;
  v18 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v18;
  v19 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v19;
  sub_249FE1E80(&v23, v21);
  sub_249FE2008(v32);
  v21[6] = v29;
  v21[7] = v30;
  v22 = v31;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v21[0] = v23;
  v21[1] = v24;
  sub_249FE178C(v21);
  return sub_249FE2008(&v23);
}

void (*sub_249FE4710(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_249FE2070(v2);
  return sub_249FE4784;
}

void sub_249FE4784(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_249FE47CC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_249FE4820(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE24E8;
}

double sub_249FE4888()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_249FE48DC(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  *(v6 + v7) = a1;
  sub_249FE362C();
}

uint64_t (*sub_249FE4930(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE4F28;
}

uint64_t sub_249FE499C(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double keypath_get_5Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_set_6Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  sub_249FE362C();
}

uint64_t sub_249FE4A64()
{
  result = sub_24A021538();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_249FE4DB0()
{
  result = qword_2810D9BC8;
  if (!qword_2810D9BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2DF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D9BC8);
  }

  return result;
}

unint64_t sub_249FE4E14()
{
  result = qword_2810D9B88;
  if (!qword_2810D9B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D9B88);
  }

  return result;
}

uint64_t sub_249FE4E60(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_249FE4E70(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_249FE4E70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_249FE4EC4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_249FE4ED4(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_249FE4ED4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_249FE4F2C(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_deviceOrientation] = a1;
  if (a2)
  {

    sub_249FE6930();
  }

  else
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_249FE50C4;
    *(v5 + 24) = v4;
    v9[4] = sub_249FE50E8;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_249FE1534;
    v9[3] = &block_descriptor_0;
    v6 = _Block_copy(v9);
    v7 = v2;

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249FE5108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v11;
  v12 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v12;
  v13 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FE51C0(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v36 = *(a1 + 128);
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  v28 = *a1;
  v29 = v5;
  swift_beginAccess();
  v37 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v40 = *(v6 + 48);
  v41 = v9;
  v38 = v7;
  v39 = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  v45 = *(v6 + 128);
  v43 = v11;
  v44 = v12;
  v42 = v10;
  v46[0] = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 64);
  v46[3] = *(v6 + 48);
  v46[4] = v15;
  v46[1] = v13;
  v46[2] = v14;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  v47 = *(v6 + 128);
  v46[6] = v17;
  v46[7] = v18;
  v46[5] = v16;
  *v6 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v32;
  *(v6 + 48) = v31;
  *(v6 + 64) = v21;
  *(v6 + 16) = v19;
  *(v6 + 32) = v20;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  *(v6 + 128) = v36;
  *(v6 + 96) = v23;
  *(v6 + 112) = v24;
  *(v6 + 80) = v22;
  sub_249FE1E80(&v28, v26);
  sub_249FE1E80(&v37, v26);
  sub_249FE2008(v46);
  v26[6] = v43;
  v26[7] = v44;
  v27 = v45;
  v26[2] = v39;
  v26[3] = v40;
  v26[4] = v41;
  v26[5] = v42;
  v26[0] = v37;
  v26[1] = v38;
  sub_249FE5320(v26);
  return sub_249FE2008(&v37);
}

void sub_249FE5320(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration];
  swift_beginAccess();
  v4 = *(v3 + 5);
  v5 = *(v3 + 7);
  v29 = *(v3 + 6);
  v30 = v5;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v25 = *(v3 + 2);
  v26 = v7;
  v8 = *(v3 + 3);
  v9 = *(v3 + 5);
  v27 = *(v3 + 4);
  v28 = v9;
  v10 = *(v3 + 1);
  v23 = *v3;
  v24 = v10;
  v11 = *(v3 + 7);
  v32[6] = v29;
  v32[7] = v11;
  v32[2] = v25;
  v32[3] = v8;
  v32[4] = v27;
  v32[5] = v4;
  v31 = v3[128];
  v33 = v3[128];
  v32[0] = v23;
  v32[1] = v6;
  if (sub_249FE499C(v32) != 1)
  {
    v21[6] = v29;
    v21[7] = v30;
    v22 = v31;
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_249FDE288(v21, v19);
    if (![v1 isViewLoaded])
    {
      sub_249FE2008(&v23);
      return;
    }

    v12 = *(a1 + 112);
    v19[6] = *(a1 + 96);
    v19[7] = v12;
    v20 = *(a1 + 128);
    v13 = *(a1 + 48);
    v19[2] = *(a1 + 32);
    v19[3] = v13;
    v14 = *(a1 + 80);
    v19[4] = *(a1 + 64);
    v19[5] = v14;
    v15 = *(a1 + 16);
    v19[0] = *a1;
    v19[1] = v15;
    if (sub_249FE499C(v19) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = EmojiPosterConfiguration.emojis.getter();
    }

    v17 = EmojiPosterConfiguration.emojis.getter();
    sub_249FE2008(&v23);
    if (v16)
    {
      v18 = sub_24A007030(v16, v17);

      if (v18)
      {
        return;
      }
    }

    else
    {
    }

    sub_249FE7474();
    sub_249FE6930();
  }
}

uint64_t sub_249FE5524@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_249FE1E80(v17, &v16);
}

uint64_t sub_249FE55D4(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration);
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[7];
  v25 = v3[6];
  v26 = v5;
  v6 = v3[1];
  v7 = v3[3];
  v21 = v3[2];
  v22 = v7;
  v8 = v3[3];
  v9 = v3[5];
  v23 = v3[4];
  v24 = v9;
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v11 = v3[7];
  v28[6] = v25;
  v28[7] = v11;
  v28[2] = v21;
  v28[3] = v8;
  v28[4] = v23;
  v28[5] = v4;
  v27 = *(v3 + 128);
  v29 = *(v3 + 128);
  v28[0] = v19;
  v28[1] = v6;
  v12 = a1[5];
  v3[4] = a1[4];
  v3[5] = v12;
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  *(v3 + 128) = *(a1 + 128);
  v14 = a1[3];
  v3[2] = a1[2];
  v3[3] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  sub_249FE1E80(&v19, v17);
  sub_249FE2008(v28);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_249FE5320(v17);
  return sub_249FE2008(&v19);
}

void (*sub_249FE56EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 976) = v1;
  v5 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  *(v3 + 984) = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  *(v4 + 48) = *(v6 + 48);
  *(v4 + 64) = v9;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  *(v4 + 128) = *(v6 + 128);
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 80) = v10;
  *(v4 + 136) = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 48);
  *(v4 + 200) = *(v6 + 64);
  *(v4 + 184) = v15;
  *(v4 + 168) = v14;
  *(v4 + 152) = v13;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  *(v4 + 264) = *(v6 + 128);
  *(v4 + 248) = v18;
  *(v4 + 232) = v17;
  *(v4 + 216) = v16;
  sub_249FE1E80(v4, v4 + 272);
  return sub_249FE57F8;
}

void sub_249FE57F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 408;
  v4 = *(v2 + 976) + *(v2 + 984);
  if (a2)
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);
    *(v2 + 712) = *(v2 + 168);
    *(v2 + 728) = v6;
    v7 = *(v2 + 152);
    *(v2 + 808) = *(v2 + 264);
    v8 = *(v2 + 248);
    *(v2 + 776) = *(v2 + 232);
    *(v2 + 792) = v8;
    v9 = *(v2 + 216);
    *(v2 + 744) = v5;
    *(v2 + 760) = v9;
    *(v2 + 680) = *(v2 + 136);
    *(v2 + 696) = v7;
    *(v2 + 544) = *v4;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 64);
    *(v2 + 592) = *(v4 + 48);
    *(v2 + 608) = v12;
    *(v2 + 560) = v10;
    *(v2 + 576) = v11;
    v13 = *(v4 + 80);
    v14 = *(v4 + 96);
    v15 = *(v4 + 112);
    *(v2 + 672) = *(v4 + 128);
    *(v2 + 640) = v14;
    *(v2 + 656) = v15;
    *(v2 + 624) = v13;
    *v3 = *v4;
    v16 = *(v4 + 16);
    v17 = *(v4 + 32);
    v18 = *(v4 + 64);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v18;
    *(v3 + 16) = v16;
    *(v3 + 32) = v17;
    v19 = *(v4 + 80);
    v20 = *(v4 + 96);
    v21 = *(v4 + 112);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v20;
    *(v3 + 112) = v21;
    *(v3 + 80) = v19;
    *v4 = *(v2 + 136);
    v22 = *(v2 + 152);
    v23 = *(v2 + 168);
    v24 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v24;
    *(v4 + 16) = v22;
    *(v4 + 32) = v23;
    v25 = *(v2 + 216);
    v26 = *(v2 + 232);
    v27 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v26;
    *(v4 + 112) = v27;
    *(v4 + 80) = v25;
    sub_249FE1E80(v2 + 680, v2 + 816);
    sub_249FE1E80(v2 + 544, v2 + 816);
    sub_249FE2008(v3);
    v28 = *(v2 + 656);
    v65 = *(v2 + 640);
    v66 = v28;
    v67 = *(v2 + 672);
    v29 = *(v2 + 592);
    v61 = *(v2 + 576);
    v62 = v29;
    v30 = *(v2 + 624);
    v63 = *(v2 + 608);
    v64 = v30;
    v31 = *(v2 + 560);
    v59 = *(v2 + 544);
    v60 = v31;
    sub_249FE5320(&v59);
    sub_249FE2008(v2 + 544);
    v32 = *(v2 + 216);
    v33 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v33;
    *(v2 + 400) = *(v2 + 264);
    v34 = *(v2 + 152);
    v35 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v35;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v32;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v34;
    v36 = v2 + 272;
  }

  else
  {
    *v3 = *v4;
    v37 = *(v4 + 64);
    v39 = *(v4 + 16);
    v38 = *(v4 + 32);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v37;
    *(v3 + 16) = v39;
    *(v3 + 32) = v38;
    v41 = *(v4 + 96);
    v40 = *(v4 + 112);
    v42 = *(v4 + 80);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v41;
    *(v3 + 112) = v40;
    *(v3 + 80) = v42;
    v43 = *(v4 + 80);
    v44 = *(v4 + 96);
    v45 = *(v4 + 112);
    *(v2 + 400) = *(v4 + 128);
    *(v2 + 368) = v44;
    *(v2 + 384) = v45;
    *(v2 + 352) = v43;
    v46 = *(v4 + 16);
    v47 = *(v4 + 32);
    v48 = *(v4 + 64);
    *(v2 + 320) = *(v4 + 48);
    *(v2 + 336) = v48;
    *(v2 + 288) = v46;
    *(v2 + 304) = v47;
    *(v2 + 272) = *v4;
    *v4 = *(v2 + 136);
    v49 = *(v2 + 152);
    v50 = *(v2 + 168);
    v51 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v51;
    *(v4 + 16) = v49;
    *(v4 + 32) = v50;
    v52 = *(v2 + 216);
    v53 = *(v2 + 232);
    v54 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v53;
    *(v4 + 112) = v54;
    *(v4 + 80) = v52;
    sub_249FE1E80(v3, v2 + 544);
    sub_249FE2008(v2 + 272);
    v55 = *(v3 + 112);
    v65 = *(v3 + 96);
    v66 = v55;
    v67 = *(v3 + 128);
    v56 = *(v3 + 48);
    v61 = *(v3 + 32);
    v62 = v56;
    v57 = *(v3 + 80);
    v63 = *(v3 + 64);
    v64 = v57;
    v58 = *(v3 + 16);
    v59 = *v3;
    v60 = v58;
    sub_249FE5320(&v59);
    v36 = v3;
  }

  sub_249FE2008(v36);

  free(v2);
}

double sub_249FE5AB0()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_249FE5B00(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FE5B64;
}

double sub_249FE5B68()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_249FE5BB8(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = a2;
  sub_249FE6930();
}

uint64_t (*sub_249FE5C08(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FE84B0;
}

void sub_249FE5C6C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_249FE6930();
  }
}

id EmojiForegroundCircularLayersViewController.init(emojiRenderer:)(uint64_t a1)
{
  sub_24A021528();
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_deviceOrientation] = 1;
  v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_shouldRotateEmojiWithDevice] = 0;
  v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_shouldRotateCenterEmojiWithDevice] = 1;
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration];
  sub_249FE389C(v11);
  v4 = v11[7];
  *(v3 + 6) = v11[6];
  *(v3 + 7) = v4;
  v3[128] = v12;
  v5 = v11[3];
  *(v3 + 2) = v11[2];
  *(v3 + 3) = v5;
  v6 = v11[5];
  *(v3 + 4) = v11[4];
  *(v3 + 5) = v6;
  v7 = v11[1];
  *v3 = v11[0];
  *(v3 + 1) = v7;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController__layoutProvider] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiSize] = vdupq_n_s64(0x4064000000000000uLL);
  v8 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImageViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImages] = v8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_unlockProgress] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiRenderer] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id EmojiForegroundCircularLayersViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiForegroundCircularLayersViewController.init(coder:)(void *a1)
{
  sub_24A021528();
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_deviceOrientation] = 1;
  v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_shouldRotateEmojiWithDevice] = 0;
  v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_shouldRotateCenterEmojiWithDevice] = 1;
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration];
  sub_249FE389C(v14);
  v4 = v14[7];
  *(v3 + 6) = v14[6];
  *(v3 + 7) = v4;
  v3[128] = v15;
  v5 = v14[3];
  *(v3 + 2) = v14[2];
  *(v3 + 3) = v5;
  v6 = v14[5];
  *(v3 + 4) = v14[4];
  *(v3 + 5) = v6;
  v7 = v14[1];
  *v3 = v14[0];
  *(v3 + 1) = v7;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController__layoutProvider] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiSize] = vdupq_n_s64(0x4064000000000000uLL);
  v8 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImageViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImages] = v8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_unlockProgress] = 0;
  type metadata accessor for EmojiRenderer();
  v9 = swift_allocObject();
  *(v9 + 16) = 10;
  v10 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v9 + 24) = v10;
  [v10 setCountLimit_];
  *&v1[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiRenderer] = v9;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_249FE609C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result setClipsToBounds_];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor_];

      return sub_249FE6314();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_249FE61C8(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1 & 1);
  sub_249FE64E8();
}

void sub_249FE627C()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_249FE6930();
}

uint64_t sub_249FE6314()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration);
  swift_beginAccess();
  v3 = v2[7];
  v32 = v2[6];
  v33 = v3;
  v34 = *(v2 + 128);
  v4 = v2[3];
  v28 = v2[2];
  v29 = v4;
  v5 = v2[5];
  v30 = v2[4];
  v31 = v5;
  v6 = v2[1];
  v26 = *v2;
  v27 = v6;
  result = sub_249FE499C(&v26);
  if (result != 1)
  {
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v17 = v26;
    v18 = v27;
    v16 = EmojiPosterConfiguration.emojis.getter();
    v8 = *(v16 + 16);
    if (v8)
    {
      v9 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImages;
      v10 = (v16 + 48);
      do
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        *&v17 = v11;
        *(&v17 + 1) = v12;
        LOBYTE(v18) = v13;
        sub_249FE4E60(v11, v12, v13);

        v14 = sub_249FE9AD4(&v17);

        swift_beginAccess();
        v15 = v14;
        MEMORY[0x24C20C470]();
        if (*((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A021808();
        }

        sub_24A021828();
        swift_endAccess();

        sub_249FE4EC4(v11, v12, v13);
        v10 += 24;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void sub_249FE64E8()
{
  v2 = v0;
  v3 = &v0[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration];
  swift_beginAccess();
  v4 = *(v3 + 5);
  v5 = *(v3 + 7);
  v35 = *(v3 + 6);
  v36 = v5;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v31 = *(v3 + 2);
  v32 = v7;
  v8 = *(v3 + 3);
  v9 = *(v3 + 5);
  v33 = *(v3 + 4);
  v34 = v9;
  v10 = *(v3 + 1);
  v29 = *v3;
  v30 = v10;
  v11 = *(v3 + 7);
  v44 = v35;
  v45 = v11;
  v40 = v31;
  v41 = v8;
  v42 = v33;
  v43 = v4;
  v37 = v3[128];
  v46 = v3[128];
  v38 = v29;
  v39 = v6;
  if (sub_249FE499C(&v38) != 1)
  {
    v27[6] = v35;
    v27[7] = v36;
    v28 = v37;
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[5] = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_249FDE288(v27, v25);
    sub_249FE83DC();

    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];

      v14 = 0;
      v15 = 0;
      v16 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImages;
      v17 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImageViews;
      do
      {
        v24 = v15;
        if (v15)
        {
          v18 = 6 * v15;
        }

        else
        {
          v18 = 1;
        }

        swift_beginAccess();
        for (; v18; --v18)
        {
          v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
          v15 = *&v2[v16];
          if ((v15 & 0xC000000000000001) != 0)
          {

            v1 = MEMORY[0x24C20C690](v14, v15);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              v23 = sub_24A021A98();
              goto LABEL_25;
            }

            if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v1 = *(v15 + v14 + 4);
          }

          [v13 setImage:v1];

          [v13 setContentMode:1];
          v19 = [v2 view];
          if (!v19)
          {
            goto LABEL_31;
          }

          v20 = v19;
          [v19 insertSubview:v13 atIndex:0];

          swift_beginAccess();
          v15 = v13;
          MEMORY[0x24C20C470]();
          if (*((*&v2[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v1 = *((*&v2[v17] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24A021808();
          }

          v13 = &v2[v17];
          sub_24A021828();
          swift_endAccess();
        }

        v21 = __OFADD__(v14, 1);
        v14 = v14 + 1;
        if (v21)
        {
          goto LABEL_30;
        }

        v15 = v24 + 1;
        v25[7] = v45;
        v26 = v46;
        v25[2] = v40;
        v25[3] = v41;
        v25[5] = v43;
        v25[6] = v44;
        v25[4] = v42;
        v25[0] = v38;
        v25[1] = v39;
        v13 = *(EmojiPosterConfiguration.emojis.getter() + 16);

        if (v14 == v13)
        {
          v14 = 0;
        }
      }

      while (v24 != 8);
      sub_249FE2008(&v29);
      v14 = v2;
      v13 = sub_24A021518();
      LOBYTE(v15) = sub_24A021878();
      if (os_log_type_enabled(v13, v15))
      {
        v1 = swift_slowAlloc();
        *v1 = 134217984;
        swift_beginAccess();
        v22 = *&v2[v17];
        if (v22 >> 62)
        {
          goto LABEL_32;
        }

        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
        *(v1 + 1) = v23;

        _os_log_impl(&dword_249FC9000, v13, v15, "[createEmojiViews] created %ld emoji views", v1, 0xCu);
        MEMORY[0x24C20D580](v1, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_249FE6930()
{
  v1 = v0;
  sub_249FE83DC();
  v2 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImageViews;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_36:
    v4 = sub_24A021A98();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v36 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_deviceOrientation;
  v38 = v3 & 0xC000000000000001;

  swift_beginAccess();
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  v34 = v3 & 0xFFFFFFFFFFFFFF8;
  v37 = v3;
  v7 = (v3 + 32);
  v40 = 1;
  v33 = (v3 + 32);
  while (2)
  {
    v8 = 0;
    v39 = 360.0 / (6 * v5);
    v35 = &v7[8 * v6];
    while (1)
    {
      v9 = v6 + v8;
      if (v38)
      {
        v10 = MEMORY[0x24C20C690](v6 + v8, v37);
      }

      else
      {
        if (v9 >= *(v34 + 16))
        {
          goto LABEL_35;
        }

        v10 = *&v35[8 * v8];
      }

      v3 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v12 = v4;
      MidX = 0.0;
      v14 = 0.0;
      if (!(v5 | v8))
      {
        v15 = *&v1[v36] - 2;
        if (v15 <= 2)
        {
          v14 = dbl_24A026770[v15];
        }
      }

      CGAffineTransformMakeRotation(&t1, v14);
      v41 = *&t1.c;
      v42 = *&t1.a;
      tx = t1.tx;
      ty = t1.ty;
      if (v5)
      {
        v18 = v39 * v8;
      }

      else
      {
        v18 = 0.0;
      }

      v19 = v3;
      v20 = [v1 view];
      v21 = 0.0;
      if (v20)
      {
        v22 = v20;
        sub_249FE83DC();
        if (v5)
        {
          v21 = sub_24A01EA8C() * v5;
        }

        v23 = v14 + v18;

        [v22 bounds];
        MidX = CGRectGetMidX(v46);
        [v22 bounds];
        v21 = CGRectGetMidY(v47) - v21;
        [v22 bounds];
        v24 = CGRectGetMidX(v48);
        [v22 bounds];
        MidY = CGRectGetMidY(v49);

        if (v23 > 0.0)
        {
          v26 = v21 - MidY;
          v27 = sqrt((MidX - v24) * (MidX - v24) + v26 * v26);
          v28 = atan2(v26, MidX - v24);
          v29 = __sincos_stret(v23 * 0.0174532925 + v28);
          MidX = v24 + v27 * v29.__cosval;
          v21 = MidY + v27 * v29.__sinval;
        }
      }

      [v19 setCenter_];
      v3 = v1;
      sub_249FE83DC();
      [v19 bounds];
      [v19 setBounds_];
      if (v5)
      {
        CGAffineTransformMakeRotation(&t1, (360.0 - v39 * v8) * -0.0174532925);
        v30 = *&t1.a;
        v31 = *&t1.c;
        v32 = *&t1.tx;
      }

      else
      {
        v32 = 0uLL;
        v30 = xmmword_24A0246E0;
        v31 = xmmword_24A026670;
      }

      v4 = v12;
      *&t1.a = v30;
      *&t1.c = v31;
      *&t1.tx = v32;
      *&t2.a = v42;
      *&t2.c = v41;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v43, &t1, &t2);
      t1 = v43;
      [v19 setTransform_];

      if (__OFADD__(v8, 1))
      {
        goto LABEL_34;
      }

      if (v8 + 1 == v40)
      {
        break;
      }

      ++v8;
      if (v11 == v12)
      {
        goto LABEL_31;
      }
    }

    ++v5;
    v40 = 6 * v5;
    if ((v5 * 6) >> 64 == (6 * v5) >> 63)
    {
      if (v11 != v12)
      {
        v6 = v11;
        v7 = v33;
        continue;
      }

LABEL_31:

      return;
    }

    break;
  }

  __break(1u);
}

uint64_t type metadata accessor for EmojiForegroundCircularLayersViewController()
{
  result = qword_2810DA580;
  if (!qword_2810DA580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249FE6E70()
{
  v3 = v1;
  sub_249FE83DC();

  v4 = &off_278FC2000;
  v5 = [v1 view];
  if (!v5)
  {
LABEL_82:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bounds];

  v7 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImageViews;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A021A98())
  {
    v10 = *&v3[v7];
    v11 = v10 >> 62;
    if (i <= 216)
    {
      break;
    }

    if (!v11)
    {
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 218)
      {
        goto LABEL_62;
      }

      goto LABEL_18;
    }

LABEL_61:
    if (sub_24A021A98() < 218)
    {
LABEL_62:

      return;
    }

LABEL_18:
    v19 = *&v3[v7];
    if (v19 >> 62)
    {
      v48 = sub_24A021A98();
      v21 = v48 - 217;
      if (__OFSUB__(v48, 217))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 - 217;
      if (__OFSUB__(v20, 217))
      {
        goto LABEL_65;
      }
    }

    v22 = sub_24A021518();
    v23 = sub_24A021878();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_249FC9000, v22, v23, "[updateEmojiViews] removing %ld emoji views", v24, 0xCu);
      MEMORY[0x24C20D580](v24, -1, -1);
    }

    v25 = *&v3[v7];
    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 - v21;
      if (__OFSUB__(v26, v21))
      {
        goto LABEL_68;
      }

      goto LABEL_24;
    }

LABEL_66:
    v49 = sub_24A021A98();
    v27 = v49 - v21;
    if (__OFSUB__(v49, v21))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_24:
    v28 = *&v3[v7];
    if (!(v28 >> 62))
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29 < v27)
      {
        goto LABEL_70;
      }

      goto LABEL_26;
    }

LABEL_69:
    v29 = sub_24A021A98();
    if (v29 < v27)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_26:
    v2 = *&v3[v7];
    v0 = v2 >> 62;
    if (!(v2 >> 62))
    {
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < v27)
      {
        goto LABEL_72;
      }

      goto LABEL_28;
    }

LABEL_71:
    if (sub_24A021A98() < v27)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_28:
    if (v27 < 0)
    {
      goto LABEL_73;
    }

    if (v0)
    {
      v30 = sub_24A021A98();
    }

    else
    {
      v30 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v30 < v29)
    {
      goto LABEL_74;
    }

    if ((v2 & 0xC000000000000001) == 0 || v27 == v29)
    {
      swift_bridgeObjectRetain_n();
      if (!v0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v27 >= v29)
      {
        goto LABEL_80;
      }

      sub_249FE4E14();
      swift_bridgeObjectRetain_n();
      v34 = v27;
      do
      {
        v35 = v34 + 1;
        sub_24A0219C8();
        v34 = v35;
      }

      while (v29 != v35);
      if (!v0)
      {
LABEL_42:
        v36 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_45;
      }
    }

    sub_24A021AA8();
    v36 = v37;
    v27 = v38;
    v29 = v39 >> 1;
LABEL_45:
    swift_unknownObjectRetain();

    v0 = v29 - v27;
    if (v29 == v27)
    {
LABEL_52:
      swift_unknownObjectRelease();
      v43 = *&v3[v7];
      if (!(v43 >> 62))
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v45 = v44 - v21;
        if (!__OFSUB__(v44, v21))
        {
          goto LABEL_54;
        }

        goto LABEL_77;
      }

LABEL_75:
      v50 = sub_24A021A98();
      v45 = v50 - v21;
      if (!__OFSUB__(v50, v21))
      {
LABEL_54:
        v46 = *&v3[v7];
        if (!(v46 >> 62))
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v47 >= v45)
          {
LABEL_56:
            swift_beginAccess();
            sub_249FF3AB4(v45, v47);
            swift_endAccess();

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_79;
        }

LABEL_78:
        v47 = sub_24A021A98();
        if (v47 >= v45)
        {
          goto LABEL_56;
        }

LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v27 <= v29)
    {
      v40 = v29;
    }

    else
    {
      v40 = v27;
    }

    v4 = (v40 - v27);
    v41 = (v36 + 8 * v27);
    v2 = &off_278FC2000;
    while (v4)
    {
      v42 = *v41++;
      [v42 removeFromSuperview];
      v4 = (v4 - 1);
      if (!--v0)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_58:
    ;
  }

  if (v11)
  {
    v12 = sub_24A021A98();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(217, v12))
  {
    __break(1u);
    goto LABEL_61;
  }

  v51 = 217 - v12;
  if (217 - v12 >= 1)
  {
    v13 = v12 - 217;
    do
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
      [v14 setContentMode_];
      v15 = [v3 v4[37]];
      if (!v15)
      {
        goto LABEL_81;
      }

      v16 = v15;
      [v15 addSubview_];

      swift_beginAccess();
      v17 = v14;
      MEMORY[0x24C20C470]();
      if (*((*&v3[v7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();
      swift_endAccess();
    }

    while (!__CFADD__(v13++, 1));
  }

  v31 = sub_24A021518();
  v32 = sub_24A021878();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v51;
    _os_log_impl(&dword_249FC9000, v31, v32, "[updateEmojiViews] creating %ld new emoji views", v33, 0xCu);
    MEMORY[0x24C20D580](v33, -1, -1);
  }
}

void sub_249FE7474()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v4 = *(v2 + 7);
  v80 = *(v2 + 6);
  v81 = v4;
  v5 = *(v2 + 1);
  v6 = *(v2 + 3);
  v76 = *(v2 + 2);
  v77 = v6;
  v7 = *(v2 + 3);
  v8 = *(v2 + 5);
  v78 = *(v2 + 4);
  v79 = v8;
  v9 = *(v2 + 1);
  v74 = *v2;
  v75 = v9;
  v10 = *(v2 + 7);
  v83[6] = v80;
  v84 = v10;
  v83[2] = v76;
  v83[3] = v7;
  v83[4] = v78;
  v83[5] = v3;
  v82 = v2[128];
  v85 = v2[128];
  v83[0] = v74;
  v83[1] = v5;
  if (sub_249FE499C(v83) == 1)
  {
    return;
  }

  v72[6] = v80;
  v72[7] = v81;
  v73 = v82;
  v72[2] = v76;
  v72[3] = v77;
  v72[4] = v78;
  v72[5] = v79;
  v72[0] = v74;
  v72[1] = v75;
  sub_249FDE288(v72, v69);
  v11 = sub_24A021518();
  v12 = sub_24A021878();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v69[0] = v14;
    *v13 = 136315138;
    *&v60 = v84;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
    sub_249FE4DB0();
    v15 = sub_24A021628();
    v17 = v16;
    sub_249FE2008(&v74);

    v18 = sub_249FF336C(v15, v17, v69);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_249FC9000, v11, v12, "Updating for changed emoji: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x24C20D580](v14, -1, -1);
    MEMORY[0x24C20D580](v13, -1, -1);
  }

  else
  {

    sub_249FE2008(&v74);
  }

  v19 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImages;
  swift_beginAccess();
  *&v1[v19] = MEMORY[0x277D84F90];

  sub_249FE6314();
  sub_249FE6E70();
  v20 = *(v2 + 5);
  v21 = *(v2 + 7);
  v66 = *(v2 + 6);
  v67 = v21;
  v22 = *(v2 + 1);
  v23 = *(v2 + 3);
  v62 = *(v2 + 2);
  v63 = v23;
  v24 = *(v2 + 3);
  v25 = *(v2 + 5);
  v64 = *(v2 + 4);
  v65 = v25;
  v26 = *(v2 + 1);
  v60 = *v2;
  v61 = v26;
  v27 = *(v2 + 7);
  v69[6] = v66;
  v70 = v27;
  v69[2] = v62;
  v69[3] = v24;
  v69[4] = v64;
  v69[5] = v20;
  v68 = v2[128];
  v71 = v2[128];
  v69[0] = v60;
  v69[1] = v22;
  if (sub_249FE499C(v69) == 1)
  {
    return;
  }

  v58[6] = v66;
  v58[7] = v67;
  v59 = v68;
  v58[2] = v62;
  v58[3] = v63;
  v58[4] = v64;
  v58[5] = v65;
  v58[0] = v60;
  v58[1] = v61;
  sub_249FDE288(v58, v57);
  v49 = sub_249FE83DC();

  v28 = [v1 view];
  if (!v28)
  {
    goto LABEL_45;
  }

  v29 = v28;
  [v28 bounds];

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v53 = v70;
  v54 = v19;
  v55 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_emojiImageViews;
  v50 = (v70 + 40);
  v51 = v1;
LABEL_13:
  swift_beginAccess();
  v34 = 1;
  while (1)
  {
    v35 = *&v1[v55];
    if ((v35 & 0xC000000000000001) == 0)
    {
      break;
    }

    v36 = MEMORY[0x24C20C690](v31, v35);

LABEL_18:
    v37 = *&v1[v19];
    if ((v37 & 0xC000000000000001) != 0)
    {

      v38 = MEMORY[0x24C20C690](v30, v37);
    }

    else
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v30 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v38 = *(v37 + 8 * v30 + 32);
    }

    [v36 setImage_];

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_42;
    }

    ++v31;
    if (v32)
    {
      if (6 * v32 > v34++)
      {
        continue;
      }
    }

    v40 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_44;
    }

    v41 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
    }

    else
    {
      v42 = *(v53 + 16);
      if (v42)
      {
        v52 = v40;
        v56 = MEMORY[0x277D84F90];
        sub_249FDCC00(0, v42, 0);
        v41 = v56;
        v43 = v50;
        do
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          v46 = *(v56 + 16);
          v47 = *(v56 + 24);

          if (v46 >= v47 >> 1)
          {
            sub_249FDCC00((v47 > 1), v46 + 1, 1);
          }

          *(v56 + 16) = v46 + 1;
          v48 = v56 + 24 * v46;
          *(v48 + 32) = v44;
          *(v48 + 40) = v45;
          *(v48 + 48) = 0;
          v43 += 2;
          --v42;
        }

        while (v42);
        v1 = v51;
        v40 = v52;
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
      }
    }

    ++v32;
    v33 = *(v41 + 16);

    if (v40 == v33)
    {
      v30 = 0;
    }

    else
    {
      v30 = v40;
    }

    v19 = v54;
    if (v32 == 9)
    {
      sub_249FE2008(&v60);

      return;
    }

    goto LABEL_13;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    if (v31 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v36 = *(v35 + 8 * v31 + 32);
    goto LABEL_18;
  }

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
}

id EmojiForegroundCircularLayersViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiForegroundCircularLayersViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249FE7C10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v11;
  v12 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v12;
  v13 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FE7CC8(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration;
  swift_beginAccess();
  v23 = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v26 = *(v3 + 48);
  v27 = v6;
  v24 = v4;
  v25 = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v31 = *(v3 + 128);
  v29 = v8;
  v30 = v9;
  v28 = v7;
  v32[0] = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v12 = *(v3 + 64);
  v32[3] = *(v3 + 48);
  v32[4] = v12;
  v32[1] = v10;
  v32[2] = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = *(v3 + 112);
  v33 = *(v3 + 128);
  v32[6] = v14;
  v32[7] = v15;
  v32[5] = v13;
  v16 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v16;
  *(v3 + 128) = *(a1 + 128);
  v17 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v17;
  v18 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v18;
  v19 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v19;
  sub_249FE1E80(&v23, v21);
  sub_249FE2008(v32);
  v21[6] = v29;
  v21[7] = v30;
  v22 = v31;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v21[0] = v23;
  v21[1] = v24;
  sub_249FE5320(v21);
  return sub_249FE2008(&v23);
}

void (*sub_249FE7DF0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_249FE56EC(v2);
  return sub_249FE4784;
}

double sub_249FE7E64()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_249FE7EB8(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE5B64;
}

double sub_249FE7F20()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_249FE7F74(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  *(v6 + v7) = a1;
  sub_249FE6930();
}

uint64_t (*sub_249FE7FC8(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE84B0;
}

void keypath_set_6Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  sub_249FE6930();
}

uint64_t sub_249FE8090()
{
  result = sub_24A021538();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double *sub_249FE83DC()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;

  v7 = OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController__layoutProvider;
  result = *&v0[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController__layoutProvider];
  if (!result || (result[3] == v4 ? (v8 = result[4] == v6) : (v8 = 0), !v8 && (*&v0[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController__layoutProvider] = 0, , (result = *&v0[v7]) == 0)))
  {
    type metadata accessor for CircularLayoutProvider();
    v9 = swift_allocObject();
    sub_249FF7BCC((v9 + 16));
    *(v9 + 24) = v4;
    *(v9 + 32) = v6;
    *&v0[v7] = v9;

    result = *&v0[v7];
    if (!result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_249FE8568(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_sizeVariant;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  type metadata accessor for CircularLayoutProvider();
  v9 = swift_allocObject();
  sub_249FF7BCC((v9 + 16));
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(v1 + OBJC_IVAR____TtC11EmojiPoster13CircularScene_layoutProvider) = v9;

  sub_249FE8F4C();
}

void (*sub_249FE8638(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FE869C;
}

void sub_249FE869C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    type metadata accessor for CircularLayoutProvider();
    v10 = swift_allocObject();
    sub_249FF7BCC((v10 + 16));
    *(v10 + 24) = v7;
    *(v10 + 32) = v9;
    *(v4 + OBJC_IVAR____TtC11EmojiPoster13CircularScene_layoutProvider) = v10;

    sub_249FE8F4C();
  }
}

id sub_249FE874C(void *a1)
{
  v1[OBJC_IVAR____TtC11EmojiPoster13CircularScene_sizeVariant] = 1;
  *&v1[OBJC_IVAR____TtC11EmojiPoster13CircularScene_emoji] = &unk_285D25AC8;
  v3 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emojiRenderer;
  type metadata accessor for EmojiRenderer();
  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  v5 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v4 + 24) = v5;
  [v5 setCountLimit_];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11EmojiPoster13CircularScene_emojiTextures] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_layoutProvider;
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  type metadata accessor for CircularLayoutProvider();
  v12 = swift_allocObject();
  sub_249FF7BCC((v12 + 16));
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *&v1[v6] = v12;
  *&v1[OBJC_IVAR____TtC11EmojiPoster13CircularScene_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster13CircularScene_unlockProgress] = 0x3FF0000000000000;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CircularScene();
  v13 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  if (v13)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 clearColor];
    [v15 setBackgroundColor_];

    a1 = v16;
  }

  return v13;
}

id sub_249FE894C(double a1, double a2)
{
  v2[OBJC_IVAR____TtC11EmojiPoster13CircularScene_sizeVariant] = 1;
  *&v2[OBJC_IVAR____TtC11EmojiPoster13CircularScene_emoji] = &unk_285D25B00;
  v5 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emojiRenderer;
  type metadata accessor for EmojiRenderer();
  v6 = swift_allocObject();
  *(v6 + 16) = 10;
  v7 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v6 + 24) = v7;
  [v7 setCountLimit_];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC11EmojiPoster13CircularScene_emojiTextures] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_layoutProvider;
  v9 = [objc_opt_self() mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  type metadata accessor for CircularLayoutProvider();
  v14 = swift_allocObject();
  sub_249FF7BCC((v14 + 16));
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *&v2[v8] = v14;
  *&v2[OBJC_IVAR____TtC11EmojiPoster13CircularScene_wakeProgress] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC11EmojiPoster13CircularScene_unlockProgress] = 0x3FF0000000000000;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CircularScene();
  v15 = objc_msgSendSuper2(&v20, sel_initWithSize_, a1, a2);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor_];

  return v17;
}

void sub_249FE8BB4()
{
  [v0 removeAllChildren];
  v1 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emojiTextures;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x277D84F90];

  v2 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emoji;
  swift_beginAccess();
  if (!*(*&v0[v2] + 16))
  {
    return;
  }

  sub_249FE8DAC();
  [v0 size];
  v3 = 0;
  v4 = 0;
LABEL_3:
  v5 = 1;
  while (1)
  {
    v6 = *&v0[v1];
    if ((v6 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x24C20C690](v3, v6);

LABEL_8:
    v8 = [objc_allocWithZone(MEMORY[0x277CDCF78]) initWithTexture_];

    v9 = v8;
    v10 = sub_24A021658();
    [v9 setName_];

    [v0 addChild_];
    if (v4)
    {
      if (6 * v4 > v5++)
      {
        continue;
      }
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    ++v4;
    if (v3 + 1 == *(*&v0[v2] + 16))
    {
      v3 = 0;
    }

    else
    {
      ++v3;
    }

    if (v4 == 9)
    {
      sub_249FE8F4C();
      return;
    }

    goto LABEL_3;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v7 = *(v6 + 8 * v3 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_249FE8DAC()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emoji;
  result = swift_beginAccess();
  v15 = v0;
  v3 = *(v0 + v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emojiTextures;
    v14 = v5;

    v7 = (v3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v16[0] = v8;
      v16[1] = v9;
      v17 = v10;
      sub_249FE4E60(v8, v9, v10);
      v11 = sub_249FE9AD4(v16);
      v12 = [v14 textureWithImage_];
      swift_beginAccess();
      v13 = v12;
      MEMORY[0x24C20C470]();
      if (*((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();
      swift_endAccess();

      sub_249FE4EC4(v8, v9, v10);
      v7 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_249FE8F4C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  v4 = sub_24A021658();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v3;
  v8[4] = sub_249FE9888;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A01AB8C;
  v8[3] = &block_descriptor_1;
  v6 = _Block_copy(v8);
  v7 = v0;

  [v7 enumerateChildNodesWithName:v4 usingBlock:v6];
  _Block_release(v6);
}

uint64_t sub_249FE90DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v11 = result;
  swift_beginAccess();
  v12 = *(a4 + 16);
  result = swift_beginAccess();
  v13 = *(a5 + 16);
  if (v13 < 1)
  {
    v14 = 0.0;
  }

  else
  {
    if ((v13 * 6) >> 64 != (6 * v13) >> 63)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = 360.0 / (6 * v13) * v12;
  }

  v15 = a1;
  [v11 setPosition_];
  v16 = sub_24A01EACC();
  [v11 scaleToSize_];

  result = swift_beginAccess();
  v17 = *(a4 + 16);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  if (v18 == *(a6 + 16))
  {
    result = swift_beginAccess();
    v19 = *(a5 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(a5 + 16) = v21;
      v22 = 1;
      swift_beginAccess();
      *(a4 + 16) = 0;
      result = swift_beginAccess();
      v23 = *(a5 + 16);
      if (v23 < 1 || (v22 = 6 * v23, (v23 * 6) >> 64 == (6 * v23) >> 63))
      {
        result = swift_beginAccess();
        *(a6 + 16) = v22;
        return result;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  *(a4 + 16) = v18;
  return result;
}

id sub_249FE9348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_249FE9458(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_emoji;
  swift_beginAccess();
  *(v3 + v4) = a1;

  sub_249FE8BB4();
}

uint64_t (*sub_249FE94B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE9520;
}

uint64_t sub_249FE9538@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_sizeVariant;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

void (*sub_249FE95C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_249FE8638(v2);
  return sub_249FE4784;
}

double sub_249FE963C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_249FE9690(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE96F8;
}

double sub_249FE9710()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster13CircularScene_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_249FE9764(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  *(v6 + v7) = a1;
  sub_249FE8F4C();
}

uint64_t (*sub_249FE97B8(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FE9A1C;
}

uint64_t sub_249FE9820(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_249FE98AC(uint64_t a1, double a2)
{
  v5 = [v2 view];
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5;
  if (a1 < 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = sub_24A01EA8C() * a1;
  }

  v9 = v6;
  [v9 bounds];
  MidX = CGRectGetMidX(v25);
  [v9 bounds];
  v10 = v7 + CGRectGetMidY(v26);
  [v9 bounds];
  v11 = CGRectGetMidX(v27);
  [v9 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v28.origin.x = v13;
  v28.origin.y = v15;
  v28.size.width = v17;
  v28.size.height = v19;
  MidY = CGRectGetMidY(v28);

  if (a2 > 0.0)
  {
    v21 = v10 - MidY;
    v22 = sqrt((MidX - v11) * (MidX - v11) + v21 * v21);
    v23 = atan2(v21, MidX - v11);
    return v11 + v22 * __sincos_stret(a2 * 0.0174532925 + v23).__cosval;
  }

  return MidX;
}

uint64_t EmojiRenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 10;
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 24) = v1;
  [v1 setCountLimit_];
  return v0;
}

uint64_t EmojiRenderer.init()()
{
  *(v0 + 16) = 10;
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 24) = v1;
  [v1 setCountLimit_];
  return v0;
}

uint64_t sub_249FE9AD4(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v23[0] = sub_24A021498();
    sub_24A021C28();
    v5 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v6 = sub_24A021658();

    v7 = [v5 initWithString_];

    v8 = [*(v2 + 24) objectForKey_];
    if (v8)
    {
      v9 = v8;
LABEL_13:

      return v9;
    }

    v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v14 = sub_24A021468();
    v15 = [v13 initWithData_];

    if (!v15 || (v9 = [v15 imageByPreparingThumbnailOfSize_], v15, !v9))
    {
      v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }

    v16 = *(v2 + 24);
    [v16 setObject:v9 forKey:v7];
LABEL_12:

    goto LABEL_13;
  }

  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);

  v11 = sub_24A021658();
  v7 = [v10 initWithString_];

  v12 = [*(v2 + 24) objectForKey_];
  if (v12)
  {
    v9 = v12;
    sub_249FE4EC4(v4, v3, 0);
    goto LABEL_13;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v17 setOpaque_];
  v18 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v17 format:{200.0, 200.0}];
  v19 = swift_allocObject();
  v19[1].i64[0] = v4;
  v19[1].i64[1] = v3;
  v19[2] = vdupq_n_s64(0x4069000000000000uLL);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_249FEA050;
  *(v20 + 24) = v19;
  v23[4] = sub_249FEA084;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_249FEA0AC;
  v23[3] = &block_descriptor_2;
  v21 = _Block_copy(v23);

  v9 = [v18 imageWithActions_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    v16 = *(v2 + 24);
    [v16 setObject:v9 forKey:v7];

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_249FE9E9C(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A0246F0;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemFontOfSize_];
  *(inited + 64) = sub_249FEA210();
  *(inited + 40) = v8;
  sub_24A020404(inited);
  swift_setDeallocating();
  sub_249FEA25C(inited + 32);
  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_24A021658();
  type metadata accessor for Key(0);
  sub_249FEA2C4();
  v11 = sub_24A021608();

  v12 = [v9 initWithString:v10 attributes:v11];

  [v12 size];
  [v12 drawInRect_];
}

void sub_249FEA0AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EmojiRenderer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_249FEA210()
{
  result = qword_2810D9B50;
  if (!qword_2810D9B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D9B50);
  }

  return result;
}

uint64_t sub_249FEA25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249FEA2C4()
{
  result = qword_2810D9B70;
  if (!qword_2810D9B70)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D9B70);
  }

  return result;
}

uint64_t sub_249FEA31C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_emojiRenderer;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_249FEA3CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_emojiRenderer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_249FEA488(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v3;
    v8(a1, a2 & 1, ObjectType, v6);
  }
}

uint64_t sub_249FEA554@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v11;
  v12 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v12;
  v13 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FEA60C(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v36 = *(a1 + 128);
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration;
  v28 = *a1;
  v29 = v5;
  swift_beginAccess();
  v37 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v40 = *(v6 + 48);
  v41 = v9;
  v38 = v7;
  v39 = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  v45 = *(v6 + 128);
  v43 = v11;
  v44 = v12;
  v42 = v10;
  v46[0] = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 64);
  v46[3] = *(v6 + 48);
  v46[4] = v15;
  v46[1] = v13;
  v46[2] = v14;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  v47 = *(v6 + 128);
  v46[6] = v17;
  v46[7] = v18;
  v46[5] = v16;
  *v6 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v32;
  *(v6 + 48) = v31;
  *(v6 + 64) = v21;
  *(v6 + 16) = v19;
  *(v6 + 32) = v20;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  *(v6 + 128) = v36;
  *(v6 + 96) = v23;
  *(v6 + 112) = v24;
  *(v6 + 80) = v22;
  sub_249FE1E80(&v28, v26);
  sub_249FE1E80(&v37, v26);
  sub_249FECCF8(v46, &qword_27EF2E168);
  v26[6] = v43;
  v26[7] = v44;
  v27 = v45;
  v26[2] = v39;
  v26[3] = v40;
  v26[4] = v41;
  v26[5] = v42;
  v26[0] = v37;
  v26[1] = v38;
  sub_249FEA78C(v26);
  return sub_249FECCF8(&v37, &qword_27EF2E168);
}

void sub_249FEA78C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration];
  swift_beginAccess();
  v5 = *(v4 + 7);
  v142[6] = *(v4 + 6);
  v142[7] = v5;
  v143 = v4[128];
  v6 = *(v4 + 3);
  v142[2] = *(v4 + 2);
  v142[3] = v6;
  v7 = *(v4 + 5);
  v142[4] = *(v4 + 4);
  v142[5] = v7;
  v8 = *(v4 + 1);
  v142[0] = *v4;
  v142[1] = v8;
  v9 = 3;
  if (sub_249FE499C(v142) != 1)
  {
    v9 = v4[106];
  }

  v10 = *(a1 + 112);
  v139 = *(a1 + 96);
  v140 = v10;
  v141 = *(a1 + 128);
  v11 = *(a1 + 48);
  v138[2] = *(a1 + 32);
  v138[3] = v11;
  v12 = *(a1 + 80);
  v138[4] = *(a1 + 64);
  v138[5] = v12;
  v13 = *(a1 + 16);
  v138[0] = *a1;
  v138[1] = v13;
  v14 = sub_249FE499C(v138);
  v15 = BYTE10(v139);
  if (v14 == 1)
  {
    v15 = 3;
  }

  if (v9 == 3)
  {
    if (v15 != 3)
    {
      goto LABEL_14;
    }
  }

  else if (v15 == 3 || v9 != v15)
  {
LABEL_14:
    v26 = sub_249FEC1BC();
    if (!v26)
    {
      return;
    }

    v28 = v26;
    v29 = v27;
    v30 = &v2[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC];
    v31 = *&v2[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC];
    if (!v31)
    {
      v40 = v26;
      goto LABEL_30;
    }

    v32 = v26;
    v33 = v31;
    v34 = [v33 viewIfLoaded];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 superview];
      v37 = [v2 view];
      v38 = v37;
      if (v36)
      {
        if (v37)
        {
          sub_249FECDC0(0, &qword_27EF2E210);
          v39 = sub_24A0218F8();

          if (v39)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v37)
        {
LABEL_26:
          [v33 willMoveToParentViewController_];
          [v35 removeFromSuperview];
          [v33 removeFromParentViewController];

          goto LABEL_30;
        }
      }
    }

LABEL_30:
    v41 = [v28 view];
    if (v41)
    {
      v42 = v41;
      [v41 setTranslatesAutoresizingMaskIntoConstraints_];

      [v2 addChildViewController_];
      v43 = [v2 view];
      if (v43)
      {
        v44 = v43;
        v45 = [v28 view];
        if (v45)
        {
          v46 = v45;
          [v44 addSubview_];

          [v28 didMoveToParentViewController_];
          v47 = *v30;
          *v30 = v28;
          *(v30 + 1) = v29;
          v48 = v28;

          v49 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_dimmingView;
          v50 = *&v2[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_dimmingView];
          v51 = [v2 view];
          if (v51)
          {
            v52 = v51;
            [v51 bounds];
            v54 = v53;
            v56 = v55;
            v58 = v57;
            v60 = v59;

            [v50 setFrame_];
            [*&v2[v49] setTranslatesAutoresizingMaskIntoConstraints_];
            v61 = *&v2[v49];
            v62 = objc_opt_self();
            v63 = v61;
            v64 = [v62 blackColor];
            [v63 setBackgroundColor_];

            [*&v2[v49] setAlpha_];
            v65 = [v2 view];
            if (v65)
            {
              v66 = v65;
              [v65 addSubview_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E208);
              v67 = swift_allocObject();
              *(v67 + 16) = xmmword_24A026890;
              v68 = [v2 view];
              if (v68)
              {
                v69 = v68;
                v70 = [v68 leadingAnchor];

                v71 = [v48 view];
                if (v71)
                {
                  v72 = v71;
                  v73 = [v71 leadingAnchor];

                  v74 = [v70 constraintEqualToAnchor_];
                  *(v67 + 32) = v74;
                  v75 = [v2 view];
                  if (v75)
                  {
                    v76 = v75;
                    v77 = [v75 trailingAnchor];

                    v78 = [v48 view];
                    if (v78)
                    {
                      v79 = v78;
                      v80 = [v78 trailingAnchor];

                      v81 = [v77 constraintEqualToAnchor_];
                      *(v67 + 40) = v81;
                      v82 = [v2 view];
                      if (v82)
                      {
                        v83 = v82;
                        v84 = [v82 topAnchor];

                        v85 = [v48 view];
                        if (v85)
                        {
                          v86 = v85;
                          v87 = [v85 topAnchor];

                          v88 = [v84 constraintEqualToAnchor_];
                          *(v67 + 48) = v88;
                          v89 = [v2 view];
                          if (v89)
                          {
                            v90 = v89;
                            v91 = [v89 bottomAnchor];

                            v92 = [v48 view];
                            if (v92)
                            {
                              v93 = v92;
                              v94 = [v92 bottomAnchor];

                              v95 = [v91 constraintEqualToAnchor_];
                              *(v67 + 56) = v95;
                              v96 = [v2 view];
                              if (v96)
                              {
                                v97 = v96;
                                v98 = [v96 leadingAnchor];

                                v99 = [*&v2[v49] leadingAnchor];
                                v100 = [v98 constraintEqualToAnchor_];

                                *(v67 + 64) = v100;
                                v101 = [v2 view];
                                if (v101)
                                {
                                  v102 = v101;
                                  v103 = [v101 trailingAnchor];

                                  v104 = [*&v2[v49] trailingAnchor];
                                  v105 = [v103 constraintEqualToAnchor_];

                                  *(v67 + 72) = v105;
                                  v106 = [v2 view];
                                  if (v106)
                                  {
                                    v107 = v106;
                                    v108 = [v106 topAnchor];

                                    v109 = [*&v2[v49] topAnchor];
                                    v110 = [v108 constraintEqualToAnchor_];

                                    *(v67 + 80) = v110;
                                    v111 = [v2 view];
                                    if (v111)
                                    {
                                      v112 = v111;
                                      v113 = objc_opt_self();
                                      v114 = [v112 bottomAnchor];

                                      v115 = [*&v2[v49] bottomAnchor];
                                      v116 = [v114 0x278FC2F65];

                                      *(v67 + 88) = v116;
                                      sub_249FECDC0(0, &qword_2810D9B80);
                                      v117 = sub_24A0217C8();

                                      [v113 activateConstraints_];

                                      v118 = [v2 view];
                                      if (v118)
                                      {
                                        v119 = v118;
                                        [v118 layoutIfNeeded];

                                        return;
                                      }

LABEL_67:
                                      __break(1u);
                                      return;
                                    }

LABEL_66:
                                    __break(1u);
                                    goto LABEL_67;
                                  }

LABEL_65:
                                  __break(1u);
                                  goto LABEL_66;
                                }

LABEL_64:
                                __break(1u);
                                goto LABEL_65;
                              }

LABEL_63:
                              __break(1u);
                              goto LABEL_64;
                            }

LABEL_62:
                            __break(1u);
                            goto LABEL_63;
                          }

LABEL_61:
                          __break(1u);
                          goto LABEL_62;
                        }

LABEL_60:
                        __break(1u);
                        goto LABEL_61;
                      }

LABEL_59:
                      __break(1u);
                      goto LABEL_60;
                    }

LABEL_58:
                    __break(1u);
                    goto LABEL_59;
                  }

LABEL_57:
                  __break(1u);
                  goto LABEL_58;
                }

LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

  v16 = *&v2[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC];
  if (v16 && (v17 = *&v2[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC + 8], *&v123 = *&v2[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC], *(&v123 + 1) = v17, v18 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1F8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E200), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v133 + 1))
    {
      sub_249FECD58(&v132, v135);
      v19 = *(v4 + 7);
      v129 = *(v4 + 6);
      v130 = v19;
      v131 = v4[128];
      v20 = *(v4 + 3);
      v125 = *(v4 + 2);
      v126 = v20;
      v21 = *(v4 + 5);
      v127 = *(v4 + 4);
      v128 = v21;
      v22 = *(v4 + 1);
      v123 = *v4;
      v124 = v22;
      v23 = v136;
      v24 = v137;
      __swift_mutable_project_boxed_opaque_existential_1(v135, v136);
      v121[6] = v129;
      v121[7] = v130;
      v122 = v131;
      v121[2] = v125;
      v121[3] = v126;
      v121[4] = v127;
      v121[5] = v128;
      v121[0] = v123;
      v121[1] = v124;
      v25 = *(v24 + 16);
      sub_249FE1E80(&v123, v120);
      v25(v121, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(v135);
      return;
    }
  }

  else
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
  }

  sub_249FECCF8(&v132, &qword_27EF2E1F0);
}

uint64_t sub_249FEB23C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_249FE1E80(v17, &v16);
}

uint64_t sub_249FEB2EC(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration);
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[7];
  v25 = v3[6];
  v26 = v5;
  v6 = v3[1];
  v7 = v3[3];
  v21 = v3[2];
  v22 = v7;
  v8 = v3[3];
  v9 = v3[5];
  v23 = v3[4];
  v24 = v9;
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v11 = v3[7];
  v28[6] = v25;
  v28[7] = v11;
  v28[2] = v21;
  v28[3] = v8;
  v28[4] = v23;
  v28[5] = v4;
  v27 = *(v3 + 128);
  v29 = *(v3 + 128);
  v28[0] = v19;
  v28[1] = v6;
  v12 = a1[5];
  v3[4] = a1[4];
  v3[5] = v12;
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  *(v3 + 128) = *(a1 + 128);
  v14 = a1[3];
  v3[2] = a1[2];
  v3[3] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  sub_249FE1E80(&v19, v17);
  sub_249FECCF8(v28, &qword_27EF2E168);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_249FEA78C(v17);
  return sub_249FECCF8(&v19, &qword_27EF2E168);
}

void (*sub_249FEB424(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 976) = v1;
  v5 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration;
  *(v3 + 984) = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  *(v4 + 48) = *(v6 + 48);
  *(v4 + 64) = v9;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  *(v4 + 128) = *(v6 + 128);
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 80) = v10;
  *(v4 + 136) = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 48);
  *(v4 + 200) = *(v6 + 64);
  *(v4 + 184) = v15;
  *(v4 + 168) = v14;
  *(v4 + 152) = v13;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  *(v4 + 264) = *(v6 + 128);
  *(v4 + 248) = v18;
  *(v4 + 232) = v17;
  *(v4 + 216) = v16;
  sub_249FE1E80(v4, v4 + 272);
  return sub_249FEB530;
}

void sub_249FEB530(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 408;
  v4 = *(v2 + 976) + *(v2 + 984);
  if (a2)
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);
    *(v2 + 712) = *(v2 + 168);
    *(v2 + 728) = v6;
    v7 = *(v2 + 152);
    *(v2 + 808) = *(v2 + 264);
    v8 = *(v2 + 248);
    *(v2 + 776) = *(v2 + 232);
    *(v2 + 792) = v8;
    v9 = *(v2 + 216);
    *(v2 + 744) = v5;
    *(v2 + 760) = v9;
    *(v2 + 680) = *(v2 + 136);
    *(v2 + 696) = v7;
    *(v2 + 544) = *v4;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 64);
    *(v2 + 592) = *(v4 + 48);
    *(v2 + 608) = v12;
    *(v2 + 560) = v10;
    *(v2 + 576) = v11;
    v13 = *(v4 + 80);
    v14 = *(v4 + 96);
    v15 = *(v4 + 112);
    *(v2 + 672) = *(v4 + 128);
    *(v2 + 640) = v14;
    *(v2 + 656) = v15;
    *(v2 + 624) = v13;
    *v3 = *v4;
    v16 = *(v4 + 16);
    v17 = *(v4 + 32);
    v18 = *(v4 + 64);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v18;
    *(v3 + 16) = v16;
    *(v3 + 32) = v17;
    v19 = *(v4 + 80);
    v20 = *(v4 + 96);
    v21 = *(v4 + 112);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v20;
    *(v3 + 112) = v21;
    *(v3 + 80) = v19;
    *v4 = *(v2 + 136);
    v22 = *(v2 + 152);
    v23 = *(v2 + 168);
    v24 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v24;
    *(v4 + 16) = v22;
    *(v4 + 32) = v23;
    v25 = *(v2 + 216);
    v26 = *(v2 + 232);
    v27 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v26;
    *(v4 + 112) = v27;
    *(v4 + 80) = v25;
    sub_249FE1E80(v2 + 680, v2 + 816);
    sub_249FE1E80(v2 + 544, v2 + 816);
    sub_249FECCF8(v3, &qword_27EF2E168);
    v28 = *(v2 + 656);
    v65 = *(v2 + 640);
    v66 = v28;
    v67 = *(v2 + 672);
    v29 = *(v2 + 592);
    v61 = *(v2 + 576);
    v62 = v29;
    v30 = *(v2 + 624);
    v63 = *(v2 + 608);
    v64 = v30;
    v31 = *(v2 + 560);
    v59 = *(v2 + 544);
    v60 = v31;
    sub_249FEA78C(&v59);
    sub_249FECCF8(v2 + 544, &qword_27EF2E168);
    v32 = *(v2 + 216);
    v33 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v33;
    *(v2 + 400) = *(v2 + 264);
    v34 = *(v2 + 152);
    v35 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v35;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v32;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v34;
    v36 = v2 + 272;
  }

  else
  {
    *v3 = *v4;
    v37 = *(v4 + 64);
    v39 = *(v4 + 16);
    v38 = *(v4 + 32);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v37;
    *(v3 + 16) = v39;
    *(v3 + 32) = v38;
    v41 = *(v4 + 96);
    v40 = *(v4 + 112);
    v42 = *(v4 + 80);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v41;
    *(v3 + 112) = v40;
    *(v3 + 80) = v42;
    v43 = *(v4 + 80);
    v44 = *(v4 + 96);
    v45 = *(v4 + 112);
    *(v2 + 400) = *(v4 + 128);
    *(v2 + 368) = v44;
    *(v2 + 384) = v45;
    *(v2 + 352) = v43;
    v46 = *(v4 + 16);
    v47 = *(v4 + 32);
    v48 = *(v4 + 64);
    *(v2 + 320) = *(v4 + 48);
    *(v2 + 336) = v48;
    *(v2 + 288) = v46;
    *(v2 + 304) = v47;
    *(v2 + 272) = *v4;
    *v4 = *(v2 + 136);
    v49 = *(v2 + 152);
    v50 = *(v2 + 168);
    v51 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v51;
    *(v4 + 16) = v49;
    *(v4 + 32) = v50;
    v52 = *(v2 + 216);
    v53 = *(v2 + 232);
    v54 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v53;
    *(v4 + 112) = v54;
    *(v4 + 80) = v52;
    sub_249FE1E80(v3, v2 + 544);
    sub_249FECCF8(v2 + 272, &qword_27EF2E168);
    v55 = *(v3 + 112);
    v65 = *(v3 + 96);
    v66 = v55;
    v67 = *(v3 + 128);
    v56 = *(v3 + 48);
    v61 = *(v3 + 32);
    v62 = v56;
    v57 = *(v3 + 80);
    v63 = *(v3 + 64);
    v64 = v57;
    v58 = *(v3 + 16);
    v59 = *v3;
    v60 = v58;
    sub_249FEA78C(&v59);
    v36 = v3;
  }

  sub_249FECCF8(v36, &qword_27EF2E168);

  free(v2);
}

id EmojiForegroundLayersViewController.init(emojiRenderer:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_dimmingView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_deviceOrientation] = 1;
  v5 = &v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration];
  sub_249FE389C(v12);
  v6 = v12[7];
  *(v5 + 6) = v12[6];
  *(v5 + 7) = v6;
  v5[128] = v13;
  v7 = v12[3];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v7;
  v8 = v12[5];
  *(v5 + 4) = v12[4];
  *(v5 + 5) = v8;
  v9 = v12[1];
  *v5 = v12[0];
  *(v5 + 1) = v9;
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_unlockProgress] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_emojiRenderer] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for EmojiForegroundLayersViewController();
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

id EmojiForegroundLayersViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiForegroundLayersViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_dimmingView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_deviceOrientation] = 1;
  v5 = &v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration];
  sub_249FE389C(v15);
  v6 = v15[7];
  *(v5 + 6) = v15[6];
  *(v5 + 7) = v6;
  v5[128] = v16;
  v7 = v15[3];
  *(v5 + 2) = v15[2];
  *(v5 + 3) = v7;
  v8 = v15[5];
  *(v5 + 4) = v15[4];
  *(v5 + 5) = v8;
  v9 = v15[1];
  *v5 = v15[0];
  *(v5 + 1) = v9;
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_unlockProgress] = 0;
  type metadata accessor for EmojiRenderer();
  v10 = swift_allocObject();
  *(v10 + 16) = 10;
  v11 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v10 + 24) = v11;
  [v11 setCountLimit_];
  *&v1[OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_emojiRenderer] = v10;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for EmojiForegroundLayersViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

void sub_249FEBB64()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EmojiForegroundLayersViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249FEBC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC);
  if (!v1 || (v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC + 8), v13[0] = *(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC), v13[1] = v2, v3 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1F8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E200), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_249FECCF8(&v10, &qword_27EF2E1F0);
  }

  if (!*(&v11 + 1))
  {
    return sub_249FECCF8(&v10, &qword_27EF2E1F0);
  }

  sub_249FECD58(&v10, v13);
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v4 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_wakeProgress;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = v14;
    v7 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    (*(v7 + 40))(v6, v7, v5);
  }

  v8 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_wakeProgress;
  swift_beginAccess();
  [*(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_dimmingView) setAlpha_];
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

double sub_249FEBDF8()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_249FEBE5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FEBEC0;
}

uint64_t sub_249FEBED8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC);
  if (!v1 || (v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC + 8), v12[0] = *(v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_implementationVC), v12[1] = v2, v3 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1F8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E200), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_249FECCF8(&v9, &qword_27EF2E1F0);
  }

  if (!*(&v10 + 1))
  {
    return sub_249FECCF8(&v9, &qword_27EF2E1F0);
  }

  sub_249FECD58(&v9, v12);
  if (!UIAccessibilityIsReduceMotionEnabled() && ([objc_opt_self() shouldSkipUnlockAnimationForCurrentDevice] & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_unlockProgress;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = v13;
    v7 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    (*(v7 + 64))(v6, v7, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

double sub_249FEC030()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_249FEC094(uint64_t *a1, uint64_t (*a2)(uint64_t), double a3)
{
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v3 + v6) = a3;
  return a2(v7);
}

uint64_t (*sub_249FEC0F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FEC158;
}

uint64_t sub_249FEC170(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *sub_249FEC1BC()
{
  v1 = v0 + OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_configuration;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v118 = *(v1 + 96);
  v119 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v114 = *(v1 + 32);
  v115 = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 80);
  v116 = *(v1 + 64);
  v117 = v7;
  v8 = *(v1 + 16);
  v113[0] = *v1;
  v113[1] = v8;
  v9 = *(v1 + 112);
  v127 = v118;
  v128 = v9;
  v123 = v114;
  v124 = v6;
  v125 = v116;
  v126 = v2;
  v120 = *(v1 + 128);
  v129 = *(v1 + 128);
  v121 = v113[0];
  v122 = v4;
  v10 = sub_249FE499C(&v121);
  result = 0;
  if (v10 != 1)
  {
    if (BYTE10(v127))
    {
      if (BYTE10(v127) == 1)
      {
        swift_beginAccess();
        v12 = objc_allocWithZone(type metadata accessor for EmojiForegroundCircularLayersViewController());
        sub_249FE1E80(v113, &v104);

        v14 = EmojiForegroundCircularLayersViewController.init(emojiRenderer:)(v13);
        v92 = v127;
        v93 = v128;
        v94 = v129;
        v88 = v123;
        v89 = v124;
        v90 = v125;
        v91 = v126;
        v86 = v121;
        v87 = v122;
        nullsub_1(&v86);
        v15 = &v14[OBJC_IVAR____TtC11EmojiPoster43EmojiForegroundCircularLayersViewController_configuration];
        swift_beginAccess();
        v95 = *v15;
        v16 = *(v15 + 1);
        v17 = *(v15 + 2);
        v18 = *(v15 + 4);
        v98 = *(v15 + 3);
        v99 = v18;
        v96 = v16;
        v97 = v17;
        v19 = *(v15 + 5);
        v20 = *(v15 + 6);
        v21 = *(v15 + 7);
        v103 = v15[128];
        v101 = v20;
        v102 = v21;
        v100 = v19;
        v104 = *v15;
        v22 = *(v15 + 1);
        v23 = *(v15 + 2);
        v24 = *(v15 + 4);
        v107 = *(v15 + 3);
        v108 = v24;
        v105 = v22;
        v106 = v23;
        v25 = *(v15 + 5);
        v26 = *(v15 + 6);
        v27 = *(v15 + 7);
        v112 = v15[128];
        v110 = v26;
        v111 = v27;
        v109 = v25;
        *v15 = v86;
        v28 = v87;
        v29 = v88;
        v30 = v90;
        *(v15 + 3) = v89;
        *(v15 + 4) = v30;
        *(v15 + 1) = v28;
        *(v15 + 2) = v29;
        v31 = v91;
        v32 = v92;
        v33 = v93;
        v15[128] = v94;
        *(v15 + 6) = v32;
        *(v15 + 7) = v33;
        *(v15 + 5) = v31;
        sub_249FE1E80(v113, &v77);
        sub_249FE1E80(&v95, &v77);
        sub_249FECCF8(&v104, &qword_27EF2E168);
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v79 = v97;
        v80 = v98;
        v81 = v99;
        v82 = v100;
        v77 = v95;
        v78 = v96;
        sub_249FE5320(&v77);
      }

      else
      {
        swift_beginAccess();
        v56 = objc_allocWithZone(type metadata accessor for EmojiForegroundSpiralLayersViewController());
        sub_249FE1E80(v113, &v104);

        v14 = EmojiForegroundSpiralLayersViewController.init(emojiRenderer:)(v57);
        v92 = v127;
        v93 = v128;
        v94 = v129;
        v88 = v123;
        v89 = v124;
        v90 = v125;
        v91 = v126;
        v86 = v121;
        v87 = v122;
        nullsub_1(&v86);
        v58 = &v14[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration];
        swift_beginAccess();
        v95 = *v58;
        v59 = *(v58 + 1);
        v60 = *(v58 + 2);
        v61 = *(v58 + 4);
        v98 = *(v58 + 3);
        v99 = v61;
        v96 = v59;
        v97 = v60;
        v62 = *(v58 + 5);
        v63 = *(v58 + 6);
        v64 = *(v58 + 7);
        v103 = v58[128];
        v101 = v63;
        v102 = v64;
        v100 = v62;
        v104 = *v58;
        v65 = *(v58 + 1);
        v66 = *(v58 + 2);
        v67 = *(v58 + 4);
        v107 = *(v58 + 3);
        v108 = v67;
        v105 = v65;
        v106 = v66;
        v68 = *(v58 + 5);
        v69 = *(v58 + 6);
        v70 = *(v58 + 7);
        v112 = v58[128];
        v110 = v69;
        v111 = v70;
        v109 = v68;
        *v58 = v86;
        v71 = v87;
        v72 = v88;
        v73 = v90;
        *(v58 + 3) = v89;
        *(v58 + 4) = v73;
        *(v58 + 1) = v71;
        *(v58 + 2) = v72;
        v74 = v91;
        v75 = v92;
        v76 = v93;
        v58[128] = v94;
        *(v58 + 6) = v75;
        *(v58 + 7) = v76;
        *(v58 + 5) = v74;
        sub_249FE1E80(v113, &v77);
        sub_249FE1E80(&v95, &v77);
        sub_249FECCF8(&v104, &qword_27EF2E168);
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v79 = v97;
        v80 = v98;
        v81 = v99;
        v82 = v100;
        v77 = v95;
        v78 = v96;
        sub_249FF05E0(&v77);
      }

      sub_249FECCF8(v113, &qword_27EF2E168);
      sub_249FECCF8(&v95, &qword_27EF2E168);
      return v14;
    }

    else
    {
      swift_beginAccess();
      v34 = objc_allocWithZone(type metadata accessor for EmojiForegroundGridLayersViewController());
      sub_249FE1E80(v113, &v104);

      v36 = EmojiForegroundGridLayersViewController.init(emojiRenderer:)(v35);
      v92 = v127;
      v93 = v128;
      v94 = v129;
      v88 = v123;
      v89 = v124;
      v90 = v125;
      v91 = v126;
      v86 = v121;
      v87 = v122;
      nullsub_1(&v86);
      v37 = &v36[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundGridLayersViewController_configuration];
      swift_beginAccess();
      v95 = *v37;
      v38 = *(v37 + 1);
      v39 = *(v37 + 2);
      v40 = *(v37 + 4);
      v98 = *(v37 + 3);
      v99 = v40;
      v96 = v38;
      v97 = v39;
      v41 = *(v37 + 5);
      v42 = *(v37 + 6);
      v43 = *(v37 + 7);
      v103 = v37[128];
      v101 = v42;
      v102 = v43;
      v100 = v41;
      v104 = *v37;
      v44 = *(v37 + 1);
      v45 = *(v37 + 2);
      v46 = *(v37 + 4);
      v107 = *(v37 + 3);
      v108 = v46;
      v105 = v44;
      v106 = v45;
      v47 = *(v37 + 5);
      v48 = *(v37 + 6);
      v49 = *(v37 + 7);
      v112 = v37[128];
      v110 = v48;
      v111 = v49;
      v109 = v47;
      *v37 = v86;
      v50 = v87;
      v51 = v88;
      v52 = v90;
      *(v37 + 3) = v89;
      *(v37 + 4) = v52;
      *(v37 + 1) = v50;
      *(v37 + 2) = v51;
      v53 = v91;
      v54 = v92;
      v55 = v93;
      v37[128] = v94;
      *(v37 + 6) = v54;
      *(v37 + 7) = v55;
      *(v37 + 5) = v53;
      sub_249FE1E80(v113, &v77);
      sub_249FE1E80(&v95, &v77);
      sub_249FECCF8(&v104, &qword_27EF2E168);
      v83 = v101;
      v84 = v102;
      v85 = v103;
      v79 = v97;
      v80 = v98;
      v81 = v99;
      v82 = v100;
      v77 = v95;
      v78 = v96;
      sub_249FE178C(&v77);
      sub_249FECCF8(v113, &qword_27EF2E168);
      sub_249FECCF8(&v95, &qword_27EF2E168);
      return v36;
    }
  }

  return result;
}