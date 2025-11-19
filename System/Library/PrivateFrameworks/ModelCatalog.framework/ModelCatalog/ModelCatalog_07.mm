uint64_t sub_18E28FBEC()
{
  sub_18E1CAF78();
  v2 = v1 & 0xFFFF0000FFFFFFFFLL | 0x345F00000000;
  v3 = 0xE600000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = 0x385F61726F6CLL;
      break;
    case 2:
      v6 = sub_18E1CA148() | 0x36315F00000000;
      break;
    case 3:
      v6 = sub_18E1CA148() | 0x32335F00000000;
      break;
    case 4:
      v6 = sub_18E1CA148() | 0x34365F00000000;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v6 = 0x3832315F61726F6CLL;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      sub_18E1CAF78();
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x385F00000000;
      break;
    case 2:
      v7 = 0xE700000000000000;
      sub_18E1CAF78();
      v2 = v10 | 0x36315F00000000;
      break;
    case 3:
      v7 = 0xE700000000000000;
      sub_18E1CAF78();
      v2 = v11 | 0x32335F00000000;
      break;
    case 4:
      v7 = 0xE700000000000000;
      sub_18E1CAF78();
      v2 = v9 | 0x34365F00000000;
      break;
    case 5:
      v7 = 0xE800000000000000;
      sub_18E1CAF78();
      v2 = v12 | 0x3832315F00000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_18E1C4F90();
  }

  return v14 & 1;
}

uint64_t sub_18E28FD60(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x64695F6E656B6F74;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000018E45AA00;
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x64695F6E656B6F74;
  }

  if (a2)
  {
    v6 = 0x800000018E45AA00;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90();
  }

  return v8 & 1;
}

uint64_t sub_18E28FE10(char a1, char a2)
{
  if (a1)
  {
    v2 = 7696487;
  }

  else
  {
    v2 = 6647393;
  }

  if (a2)
  {
    v3 = 7696487;
  }

  else
  {
    v3 = 6647393;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18E44F3CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18E28FE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_18E1C4F90();
  }

  return v10 & 1;
}

uint64_t sub_18E28FF1C(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x635F74757074756FLL;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEE0073657373616CLL;
    }

    else
    {
      v5 = 0x800000018E45A9E0;
    }
  }

  else
  {
    v5 = 0x800000018E45A9B0;
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x635F74757074756FLL;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEE0073657373616CLL;
    }

    else
    {
      v6 = 0x800000018E45A9E0;
    }
  }

  else
  {
    v6 = 0x800000018E45A9B0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90();
  }

  return v8 & 1;
}

uint64_t sub_18E290008(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18E44F3CC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_18E290094()
{
  result = qword_1EABE07B0;
  if (!qword_1EABE07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07B0);
  }

  return result;
}

void sub_18E2900E8()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E44E6FC();
  v6 = sub_18E1C4EAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20) - 8) + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v40 - v14;
  v15 = sub_18E2706EC(&unk_1EABE11B8, &qword_18E49E120);
  sub_18E1C4EEC(v15);
  v17 = *(v16 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C57AC();
  v19 = type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v47 = &v40 - v25;
  v26 = *(v4 + 16);
  if (v26 != *(v2 + 16) || !v26 || v4 == v2)
  {
    goto LABEL_17;
  }

  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = v4 + v27;
  v29 = v2 + v27;
  v40 = (v8 + 32);
  v41 = v15;
  v42 = (v8 + 8);
  v45 = *(v24 + 72);
  while (1)
  {
    v30 = v47;
    sub_18E292178(v28, v47, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    sub_18E292178(v29, v23, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    v31 = *(v15 + 48);
    sub_18E29205C(v30, v0);
    sub_18E29205C(v23, v0 + v31);
    sub_18E1C6AC8(v0);
    if (v32)
    {
      sub_18E2921D8(v23, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      sub_18E2921D8(v30, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      sub_18E1C6AC8(v0 + v31);
      if (!v32)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_18E29205C(v0, v46);
    sub_18E1C6AC8(v0 + v31);
    if (v32)
    {
      sub_18E2921D8(v23, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      sub_18E2921D8(v30, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      (*v42)(v46, v5);
LABEL_14:
      v38 = &unk_1EABE11B8;
      v39 = &qword_18E49E120;
      goto LABEL_16;
    }

    v33 = v0 + v31;
    v34 = v43;
    (*v40)(v43, v33, v5);
    sub_18E2920CC();
    v35 = v46;
    v44 = sub_18E44EA1C();
    v36 = v35;
    v37 = *v42;
    (*v42)(v34, v5);
    sub_18E2921D8(v23, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    sub_18E2921D8(v47, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    v37(v36, v5);
    v15 = v41;
    if ((v44 & 1) == 0)
    {
      break;
    }

LABEL_11:
    sub_18E1E8EEC(v0, &qword_1EABE11B0, &qword_18E49EF20);
    v29 += v45;
    v28 += v45;
    if (!--v26)
    {
      goto LABEL_17;
    }
  }

  v38 = &qword_1EABE11B0;
  v39 = &qword_18E49EF20;
LABEL_16:
  sub_18E1E8EEC(v0, v38, v39);
LABEL_17:
  sub_18E1C5544();
}

void sub_18E290524()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E44E6FC();
  v6 = sub_18E1C4EAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20) - 8) + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v72 - v15;
  v16 = sub_18E2706EC(&unk_1EABE11B8, &qword_18E49E120);
  sub_18E1C4EEC(v16);
  v18 = *(v17 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C57AC();
  v20 = type metadata accessor for AvailableUseCases.AvailableUseCase();
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v72 - v26;
  v28 = *(v4 + 16);
  if (v28 != *(v2 + 16) || !v28 || v4 == v2)
  {
LABEL_59:
    sub_18E1C5544();
    return;
  }

  v73 = v12;
  v29 = v28;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = v4 + v30;
  v32 = 0;
  v76 = v29;
  v77 = v2 + v30;
  v72 = (v8 + 32);
  v74 = (v8 + 8);
  v78 = *(v25 + 72);
  v79 = v31;
  while (1)
  {
    v33 = v78 * v32;
    sub_18E1C5ED4();
    sub_18E292178(v34 + v33, v27, v35);
    if (v32 == v29)
    {
      goto LABEL_61;
    }

    v80 = v32;
    sub_18E1C5ED4();
    sub_18E292178(v77 + v33, v24, v36);
    v37 = *v24;
    v38 = sub_18E1C6DAC(*v27);
    v40 = v39;
    v42 = v38 == sub_18E1C6DAC(v37) && v40 == v41;
    if (v42)
    {
    }

    else
    {
      v43 = sub_18E44F3CC();

      if ((v43 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v44 = v20[5];
    v45 = *(v16 + 48);
    sub_18E29205C(&v27[v44], v0);
    sub_18E29205C(&v24[v44], v0 + v45);
    sub_18E1C6AC8(v0);
    if (!v42)
    {
      v46 = v81;
      sub_18E29205C(v0, v81);
      sub_18E1C6AC8(v0 + v45);
      if (v47)
      {
        (*v74)(v46, v5);
LABEL_55:
        v70 = &unk_1EABE11B8;
        v71 = &qword_18E49E120;
      }

      else
      {
        v48 = v73;
        (*v72)(v73, v0 + v45, v5);
        sub_18E2920CC();
        v75 = sub_18E44EA1C();
        v49 = v20;
        v50 = v16;
        v51 = v46;
        v52 = *v74;
        (*v74)(v48, v5);
        v53 = v51;
        v16 = v50;
        v20 = v49;
        v52(v53, v5);
        if (v75)
        {
          goto LABEL_19;
        }

        v70 = &qword_1EABE11B0;
        v71 = &qword_18E49EF20;
      }

      sub_18E1E8EEC(v0, v70, v71);
LABEL_58:
      sub_18E2921D8(v24, type metadata accessor for AvailableUseCases.AvailableUseCase);
      sub_18E2921D8(v27, type metadata accessor for AvailableUseCases.AvailableUseCase);
      goto LABEL_59;
    }

    sub_18E1C6AC8(v0 + v45);
    if (!v42)
    {
      goto LABEL_55;
    }

LABEL_19:
    sub_18E1E8EEC(v0, &qword_1EABE11B0, &qword_18E49EF20);
    v54 = v20[6];
    v55 = *&v27[v54];
    v56 = *&v24[v54];
    if (v55)
    {
      if (!v56)
      {
        goto LABEL_58;
      }

      v57 = *(v55 + 16);
      if (v57 != *(v56 + 16))
      {
        goto LABEL_58;
      }

      if (v57 && v55 != v56)
      {
        v58 = (v55 + 40);
        v59 = (v56 + 40);
        do
        {
          v60 = *(v58 - 1) == *(v59 - 1) && *v58 == *v59;
          if (!v60 && (sub_18E44F3CC() & 1) == 0)
          {
            goto LABEL_58;
          }

          v58 += 2;
          v59 += 2;
        }

        while (--v57);
      }
    }

    else if (v56)
    {
      goto LABEL_58;
    }

    v61 = v20[7];
    v62 = *&v27[v61];
    v63 = *&v24[v61];
    if (!v62)
    {
      if (v63)
      {
        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (!v63)
    {
      goto LABEL_58;
    }

    v64 = *(v62 + 16);
    if (v64 != *(v63 + 16))
    {
      goto LABEL_58;
    }

    if (v64 && v62 != v63)
    {
      break;
    }

LABEL_50:
    v69 = v27[v20[8]] ^ v24[v20[8]];
    sub_18E2921D8(v24, type metadata accessor for AvailableUseCases.AvailableUseCase);
    sub_18E2921D8(v27, type metadata accessor for AvailableUseCases.AvailableUseCase);
    v29 = v76;
    if ((v69 & 1) == 0)
    {
      v32 = v80 + 1;
      if (v80 + 1 != v76)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  v66 = (v62 + 40);
  v67 = (v63 + 40);
  while (v64)
  {
    v68 = *(v66 - 1) == *(v67 - 1) && *v66 == *v67;
    if (!v68 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_58;
    }

    v66 += 2;
    v67 += 2;
    if (!--v64)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_18E290AD4()
{
  sub_18E1C575C();
  v3 = sub_18E1C8DE0(v1, v2);
  if (v17 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v5;
      v8 = 0xD000000000000025;
      if (v7 == 1)
      {
        v9 = 0xD000000000000025;
      }

      else
      {
        v9 = 0xD000000000000013;
      }

      if (v7 == 1)
      {
        v10 = "encesOperatingSystemEligible";
      }

      else
      {
        v10 = "encesHardwareEligible";
      }

      if (*v5)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xD00000000000002CLL;
      }

      if (*v5)
      {
        v12 = v10;
      }

      else
      {
        v12 = "sid-inference-provider";
      }

      v13 = v12 | 0x8000000000000000;
      if (*v6 == 1)
      {
        v14 = "encesOperatingSystemEligible";
      }

      else
      {
        v8 = 0xD000000000000013;
        v14 = "encesHardwareEligible";
      }

      if (*v6)
      {
        v15 = v8;
      }

      else
      {
        v15 = 0xD00000000000002CLL;
      }

      if (*v6)
      {
        v16 = v14;
      }

      else
      {
        v16 = "sid-inference-provider";
      }

      v17 = v11 == v15 && v13 == (v16 | 0x8000000000000000);
      if (v17)
      {
      }

      else
      {
        v18 = sub_18E1C4F90();

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      ++v5;
      ++v6;
      --v0;
    }

    while (v0);
  }

  sub_18E1C5544();
}

BOOL sub_18E290BF0(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != v3 || result == a2 || v2 == 0)
  {
    return v2 == v3;
  }

  v6 = *(result + 16);
  while (v6)
  {
    if (!--v6)
    {
      return v2 == v3;
    }
  }

  __break(1u);
  return result;
}

void sub_18E290C28()
{
  sub_18E1C575C();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    sub_18E1CC3A4();
    v5 = (v4 + 48);
    v7 = (v6 + 48);
    do
    {
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = *(v7 - 16);
      v11 = 0xE700000000000000;
      v13 = *(v7 - 1);
      v12 = *v7;
      v14 = v3;
      switch(*(v5 - 16))
      {
        case 1:
          v11 = 0xE300000000000000;
          v14 = 7565161;
          break;
        case 2:
          v11 = 0xE500000000000000;
          v14 = 0x736F63616DLL;
          break;
        case 3:
          v14 = sub_18E223CAC();
          break;
        case 4:
          v11 = 0xE400000000000000;
          v14 = 1936684660;
          break;
        case 5:
          v11 = 0xE800000000000000;
          v14 = sub_18E1D00A4();
          break;
        default:
          break;
      }

      v15 = 0xE700000000000000;
      switch(v10)
      {
        case 1:
          v15 = 0xE300000000000000;
          v3 = 7565161;
          break;
        case 2:
          v15 = 0xE500000000000000;
          v3 = 0x736F63616DLL;
          break;
        case 3:
          sub_18E234598();
          break;
        case 4:
          v15 = 0xE400000000000000;
          v3 = 1936684660;
          break;
        case 5:
          v15 = 0xE800000000000000;
          sub_18E221C24();
          break;
        default:
          break;
      }

      if (v14 == v3 && v11 == v15)
      {
      }

      else
      {
        v17 = sub_18E44F3CC();

        if ((v17 & 1) == 0)
        {

          break;
        }
      }

      if (v9 == v13 && v8 == v12)
      {
      }

      else
      {
        v19 = sub_18E44F3CC();

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      v5 += 3;
      v7 += 3;
      --v2;
      v3 = 0x6E776F6E6B6E75;
    }

    while (v2);
  }

  sub_18E1C5544();
}

uint64_t sub_18E290E60(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1C8DE0(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v6 = (v3 + 32);
    for (i = (v4 + 32); ; i += 104)
    {
      memcpy(__dst, v6, 0x61uLL);
      memcpy(v12, v6, 0x61uLL);
      memcpy(v14, i, 0x61uLL);
      memcpy(__src, i, 0x61uLL);
      sub_18E1FF650(__dst, v10);
      sub_18E1FF650(v14, v10);
      v8 = static ManagedRuntimeInformation.== infix(_:_:)(v12, __src);
      memcpy(v15, __src, 0x61uLL);
      sub_18E1FF6D4(v15);
      memcpy(v16, v12, 0x61uLL);
      sub_18E1FF6D4(v16);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v6 += 104;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_18E290F68()
{
  sub_18E1C575C();
  v3 = sub_18E1C8DE0(v1, v2);
  if (v16 && v0 && v3 != v4)
  {
    v5 = (v3 + 34);
    v6 = (v4 + 34);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v6 - 2);
      v12 = sub_18E1C6DAC(*(v5 - 2));
      v14 = v13;
      v16 = v12 == sub_18E1C6DAC(v11) && v14 == v15;
      if (v16)
      {

        if (v7 != v9 || v8 != v10)
        {
          break;
        }
      }

      else
      {
        v17 = sub_18E1C6188();

        if ((v17 & 1) == 0 || v7 != v9 || v8 != v10)
        {
          break;
        }
      }

      v5 += 3;
      v6 += 3;
      --v0;
    }

    while (v0);
  }

  sub_18E1C5544();
}

uint64_t sub_18E291068(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18E44F4CC();
  v37 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v35 = v7;
  v36 = a2 + 56;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
    v41 = v9;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(v37 + 48) + 40 * (v12 | (v10 << 6));
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v38 = *(v13 + 32);
    v17 = *v13;
    sub_18E44F48C();
    sub_18E1C6DAC(v17);
    v39 = v16;

    v40 = v15;

    sub_18E44EB4C();

    v18 = v14 + 64;
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v14;

    v23 = 0;
    v24 = 0;
    if (v21)
    {
      while (1)
      {
        v43 = v23;
        v25 = v24;
LABEL_19:
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v27 = (v25 << 10) | (16 * v26);
        v28 = (*(v42 + 48) + v27);
        v30 = *v28;
        v29 = v28[1];
        v31 = (*(v42 + 56) + v27);
        v33 = *v31;
        v32 = v31[1];
        memcpy(v44, __srca, sizeof(v44));

        sub_18E44EB4C();

        sub_18E44EB4C();

        result = sub_18E44F4CC();
        v23 = result ^ v43;
        if (!v21)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v25 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v43 = v23;
        v24 = v25;
        goto LABEL_19;
      }
    }

    MEMORY[0x193ACCC20](v23);
    sub_18E44F4AC();
    if (v40)
    {
      sub_18E2917A4(__srca, v40);
    }

    v7 = v35;
    sub_18E44F4AC();
    if (v39)
    {
      sub_18E2917A4(__srca, v39);
    }

    sub_18E44F4AC();
    v34 = sub_18E44F4CC();

    v9 = v34 ^ v41;
    v3 = v36;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x193ACCC20](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v41 = v9;
      v10 = v11;
      goto LABEL_10;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18E2913B4(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18E44F4CC();
  v27 = a2;
  v4 = a2 + 56;
  v3 = *(a2 + 56);
  v5 = *(a2 + 32);
  sub_18E1C7734();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  do
  {
    v31 = v12;
LABEL_7:
    v15 = *(v27 + 48) + ((v13 << 12) | (__clz(__rbit64(v8)) << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v20 = *(v15 + 24);
    v19 = *(v15 + 32);
    v21 = *(v15 + 40);
    v28 = *(v15 + 48);
    v29 = *(v15 + 56);
    v30 = *(v15 + 57);
    sub_18E44F48C();

    sub_18E44EB4C();
    if (v18 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    if (v21)
    {
      sub_18E44F4AC();
      MEMORY[0x193ACCC20](v20);
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      v22 = *(v21 + 16);
      MEMORY[0x193ACCC20](v22);
      if (v22)
      {

        v23 = (v21 + 40);
        do
        {
          v25 = *(v23 - 1);
          v24 = *v23;

          sub_18E44EB4C();

          v23 += 2;
          --v22;
        }

        while (v22);
      }

      else
      {
      }

      MEMORY[0x193ACCC20](v28);
      sub_18E44F4AC();
    }

    else
    {
      sub_18E44F4AC();
    }

    v8 &= v8 - 1;
    MEMORY[0x193ACCC20](v30);
    v26 = sub_18E44F4CC();

    v12 = v26 ^ v31;
  }

  while (v8);
LABEL_3:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x193ACCC20](v12);
    }

    v8 = *(v4 + 8 * v14);
    ++v13;
    if (v8)
    {
      v31 = v12;
      v13 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E291640(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18E44F4CC();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  sub_18E1C7734();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    goto LABEL_6;
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

      return MEMORY[0x193ACCC20](v11);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      do
      {
LABEL_6:
        v14 = *(a2 + 48) + 24 * (__clz(__rbit64(v7)) | (v12 << 6));
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        sub_18E44F48C();

        sub_18E44EB4C();
        if (v17 != 2)
        {
          sub_18E44F4AC();
        }

        v7 &= v7 - 1;
        sub_18E44F4AC();
        v18 = sub_18E44F4CC();

        v11 ^= v18;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

void sub_18E2917A4(uint64_t a1, uint64_t a2)
{
  sub_18E1C8A38(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_18E44EB4C();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_18E29180C()
{
  sub_18E1C575C();
  sub_18E1C8A38(v2, v3);
  if (v0)
  {
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      *(v4 - 16);

      sub_18E44EB4C();

      sub_18E1C2970();
      sub_18E44EB4C();

      v4 += 3;
      --v0;
    }

    while (v0);
  }

  sub_18E1C5544();
}

void sub_18E291928(uint64_t a1, uint64_t a2)
{
  sub_18E1C8A38(a1, a2);
  if (v2)
  {
    v4 = (v3 + 34);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_18E1C6DAC(*(v4 - 2));
      sub_18E44EB4C();

      sub_18E44F4AC();
      MEMORY[0x193ACCC20](v6);
      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_18E2919AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  for (result = MEMORY[0x193ACCC20](v2); v2; --v2)
  {
    result = sub_18E44EB4C();
  }

  return result;
}

void sub_18E291A0C(uint64_t a1, uint64_t a2)
{
  sub_18E1C8A38(a1, a2);
  v13 = v2;
  if (v2)
  {
    v4 = 0;
    do
    {
      memcpy(__dst, (v3 + 32 + 104 * v4), 0x61uLL);
      v5 = LOBYTE(__dst[2]);
      sub_18E1FF650(__dst, v14);
      sub_18E44EB4C();
      if (v5 != 2)
      {
        sub_18E44F4AC();
      }

      sub_18E44F4AC();
      if (__dst[4])
      {
        v6 = LOBYTE(__dst[5]);
        sub_18E44F4AC();
        sub_18E1C2970();
        sub_18E44EB4C();
        if (v6 != 2)
        {
          sub_18E44F4AC();
        }
      }

      sub_18E44F4AC();
      if (__dst[7])
      {
        sub_18E44F4AC();
        sub_18E1C2970();
        sub_18E44EB4C();
      }

      else
      {
        sub_18E44F4AC();
      }

      v7 = __dst[10];
      v8 = __dst[11];
      MEMORY[0x193ACCC20](__dst[8]);
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      v9 = *(v7 + 16);
      MEMORY[0x193ACCC20](v9);
      if (v9)
      {
        v10 = (v7 + 40);
        do
        {
          v11 = *(v10 - 1);
          v12 = *v10;

          sub_18E44EB4C();

          v10 += 2;
          --v9;
        }

        while (v9);
      }

      MEMORY[0x193ACCC20](v8);
      ++v4;
      sub_18E44F4AC();
      sub_18E1FF6D4(__dst);
    }

    while (v4 != v13);
  }
}

void sub_18E291BEC(uint64_t a1, uint64_t a2)
{
  sub_18E1C8A38(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_18E44EB4C();

      --v2;
    }

    while (v2);
  }
}

unint64_t sub_18E291C98(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E291CFC()
{
  result = qword_1EABDF778;
  if (!qword_1EABDF778)
  {
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF778);
  }

  return result;
}

unint64_t sub_18E291D78()
{
  result = qword_1EABE0458;
  if (!qword_1EABE0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0458);
  }

  return result;
}

unint64_t sub_18E291DCC()
{
  result = qword_1EABE0448;
  if (!qword_1EABE0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0448);
  }

  return result;
}

unint64_t sub_18E291E24()
{
  result = qword_1EABE0790;
  if (!qword_1EABE0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0790);
  }

  return result;
}

unint64_t sub_18E291E7C()
{
  result = qword_1EABE1198;
  if (!qword_1EABE1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1198);
  }

  return result;
}

__n128 sub_18E291EE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_18E291F58()
{
  result = qword_1EABE11A8;
  if (!qword_1EABE11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE11A8);
  }

  return result;
}

unint64_t sub_18E291FB0()
{
  result = qword_1EABE07A0;
  if (!qword_1EABE07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07A0);
  }

  return result;
}

unint64_t sub_18E292008()
{
  result = qword_1EABE07A8;
  if (!qword_1EABE07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07A8);
  }

  return result;
}

uint64_t sub_18E29205C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E2920CC()
{
  result = qword_1EABE0040;
  if (!qword_1EABE0040)
  {
    sub_18E44E6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0040);
  }

  return result;
}

uint64_t sub_18E292178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_18E1C4EEC(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18E2921D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_18E1C4EEC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_18E292230()
{
  result = qword_1EABE0470;
  if (!qword_1EABE0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0470);
  }

  return result;
}

unint64_t sub_18E292284()
{
  result = qword_1EABDF6F0;
  if (!qword_1EABDF6F0)
  {
    sub_18E2707F8(&qword_1EABE1090, &qword_18E4E3AA0);
    sub_18E291C98(&qword_1ED6A7948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6F0);
  }

  return result;
}

unint64_t sub_18E29232C()
{
  result = qword_1EABDFA38;
  if (!qword_1EABDFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA38);
  }

  return result;
}

unint64_t sub_18E292380(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE11D8, &unk_18E49E130);
    v2();
    sub_18E1C2970();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E2923EC()
{
  result = qword_1EABDF6E8;
  if (!qword_1EABDF6E8)
  {
    sub_18E2707F8(&qword_1EABE1090, &qword_18E4E3AA0);
    sub_18E291C98(&qword_1ED6A7940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6E8);
  }

  return result;
}

unint64_t sub_18E292494(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE11E8, &qword_18E49E140);
    v2();
    sub_18E1C2970();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E292500()
{
  result = qword_1EABDFA28;
  if (!qword_1EABDFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA28);
  }

  return result;
}

uint64_t sub_18E292554(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E2925A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_18E292610(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E29261C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18E29265C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for RawAvailableUseCases.NormalizedUseCases.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E29278C()
{
  result = qword_1EABE1200;
  if (!qword_1EABE1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1200);
  }

  return result;
}

unint64_t sub_18E2927E4()
{
  result = qword_1EABE07B8;
  if (!qword_1EABE07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07B8);
  }

  return result;
}

unint64_t sub_18E29283C()
{
  result = qword_1EABE0460;
  if (!qword_1EABE0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0460);
  }

  return result;
}

unint64_t sub_18E292890()
{
  result = qword_1EABE0490;
  if (!qword_1EABE0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0490);
  }

  return result;
}

unint64_t sub_18E2928E4()
{
  result = qword_1EABDF6D0;
  if (!qword_1EABDF6D0)
  {
    sub_18E2707F8(&unk_1EABE1218, &qword_18E49E398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6D0);
  }

  return result;
}

unint64_t sub_18E292960()
{
  result = qword_1EABDF6C0;
  if (!qword_1EABDF6C0)
  {
    sub_18E2707F8(&unk_1EABE1218, &qword_18E49E398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6C0);
  }

  return result;
}

uint64_t sub_18E2929DC(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_18E292A64(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E292B44()
{
  result = qword_1EABE1238;
  if (!qword_1EABE1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1238);
  }

  return result;
}

unint64_t sub_18E292B9C()
{
  result = qword_1EABE0480;
  if (!qword_1EABE0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0480);
  }

  return result;
}

unint64_t sub_18E292BF4()
{
  result = qword_1EABE0488;
  if (!qword_1EABE0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0488);
  }

  return result;
}

uint64_t sub_18E292C80(uint64_t a1)
{
  sub_18E1CE8F0(a1);
  v3 = sub_18E296F68();
  result = MEMORY[0x193ACC550](v2, &type metadata for InferenceProvider, v3);
  v5 = 0;
  v12 = result;
  v6 = *(v1 + 16);
  v7 = (v1 + 48);
  while (1)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v7 += 24;

    sub_18E274420(&v11, v9, v8, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E292D44(uint64_t a1)
{
  sub_18E1CE8F0(a1);
  v3 = sub_18E296FBC();
  result = MEMORY[0x193ACC550](v2, &type metadata for ExecutionContext, v3);
  v5 = 0;
  v13 = result;
  v6 = *(v1 + 16);
  for (i = 32; ; i += 64)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(v1 + i + 16);
    v14[0] = *(v1 + i);
    v14[1] = v8;
    v15[0] = *(v1 + i + 32);
    *(v15 + 10) = *(v1 + i + 42);
    ++v5;
    sub_18E27418C(v14, v11);
    sub_18E2745EC(v9, v14);
    v11[0] = v9[0];
    v11[1] = v9[1];
    v12[0] = v10[0];
    *(v12 + 10) = *(v10 + 10);
    result = sub_18E2741E8(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E292E2C(uint64_t a1)
{
  sub_18E1CE8F0(a1);
  v3 = sub_18E296F14();
  v4 = MEMORY[0x193ACC550](v2, &type metadata for Tag, v3);
  for (i = *(v1 + 16); i; --i)
  {
    v6 = *(v4 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    v7 = sub_18E44F4CC() & ~(-1 << *(v4 + 32));
    if (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_18E3F3DB4(v7);
    }
  }

  return v4;
}

uint64_t sub_18E292F20(uint64_t a1)
{
  sub_18E1CE8F0(a1);
  v3 = sub_18E2871E8();
  v4 = MEMORY[0x193ACC550](v2, &type metadata for UseCaseIdentifier, v3);
  v10 = v4;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_18E27523C(&v9, *(v1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void *sub_18E292FCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_18E3F0464(*(a1 + 16), 0);
  v4 = sub_18E2FE54C(&v6, v3 + 4, v2, a1);
  sub_18E246F7C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

ModelCatalog::UseCaseIdentifier::DownloadCondition::Identifier_optional __swiftcall UseCaseIdentifier.DownloadCondition.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E44F19C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void UseCaseIdentifier.DownloadCondition.Identifier.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_18E1C77B0();
      break;
    default:
      return;
  }
}

void sub_18E293230(void *a1@<X8>)
{
  UseCaseIdentifier.DownloadCondition.Identifier.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_18E293270(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_18E28F850();
}

uint64_t UseCaseIdentifier.DownloadCondition.sql.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_18E293744(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E464EF0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E2937C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E293744(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E2937F0(uint64_t a1)
{
  v2 = sub_18E1FFB10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E29382C(uint64_t a1)
{
  v2 = sub_18E1FFB10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UseCaseIdentifier.hash(into:)()
{
  sub_18E1C6DAC(*v0);
  sub_18E44EB4C();
}

uint64_t UseCaseIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  sub_18E1C6DAC(v1);
  sub_18E1D432C();

  return sub_18E44F4CC();
}

unint64_t sub_18E293914@<X0>(unint64_t *a1@<X8>)
{
  result = UseCaseIdentifier.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_18E29395C()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_18E2706EC(&qword_1EABE0E08, &qword_18E49D1B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_18E49E4B0;
  inited[2] = xmmword_18E49E4C0;
  inited[3] = xmmword_18E49E4D0;
  sub_18E3EFDF0(1, 126, 1, inited);
  *(v1 + 16) = 126;
  *(v1 + 157) = 61;
  v2 = *MEMORY[0x1E69E9840];
}

_BYTE *static UseCaseIdentifier.Metadata.Configuration.downloadCondition(for:)@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  switch(*result)
  {
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x31:
    case 0x32:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3F:
    case 0x46:
    case 0x4D:
    case 0x7C:
    case 0x7D:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return result;
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x2E:
    case 0x30:
    case 0x56:
    case 0x57:
      v2 = " bm_gmBypass(adm) = true)";
      v3 = xmmword_18E49E540;
      goto LABEL_5;
    case 0x3D:
      v2 = "es.valid_values))";
      v3 = xmmword_18E49E590;
      goto LABEL_5;
    case 0x40:
    case 0x54:
    case 0x55:
      v2 = "(region IS NULL OR region = 0)";
      v3 = xmmword_18E49E550;
      goto LABEL_5;
    case 0x42:
    case 0x45:
      v2 = "Info(deviceType) = watch";
      v3 = xmmword_18E49E580;
      goto LABEL_5;
    case 0x51:
      v2 = "eModelSystems) = true";
      v3 = xmmword_18E49E570;
      goto LABEL_5;
    case 0x52:
    case 0x53:
      v2 = "leGestalt(chipID) >= 33025))";
      v3 = xmmword_18E49E560;
      goto LABEL_5;
    default:
      v2 = "missingAssetIndices";
      v3 = xmmword_18E49E530;
LABEL_5:
      *a2 = v3;
      a2[2] = v2 | 0x8000000000000000;
      return result;
  }
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.language.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18E44E6FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.argumentDictionaryRepresentation.getter()
{
  sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_18E44E6CC();
  *(inited + 56) = v1;
  return sub_18E44E9AC();
}

void *sub_18E293C58()
{
  result = sub_18E293C78();
  off_1ED6A97A8 = result;
  return result;
}

uint64_t sub_18E293C78()
{
  sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
  v0 = *(type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18E49E5A0;
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  return v3;
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.hash(into:)()
{
  sub_18E44E6FC();
  sub_18E1C951C();
  sub_18E296A34(v0, v1);

  return sub_18E44E9EC();
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.hashValue.getter()
{
  sub_18E44F48C();
  sub_18E44E6FC();
  sub_18E1C951C();
  sub_18E296A34(v0, v1);
  sub_18E44E9EC();
  return sub_18E44F4CC();
}

uint64_t sub_18E293FCC()
{
  sub_18E44F48C();
  sub_18E44E6FC();
  sub_18E296A34(&qword_1EABE1250, MEMORY[0x1E6969610]);
  sub_18E44E9EC();
  return sub_18E44F4CC();
}

__n128 *static UseCaseIdentifier.Metadata.Enablement.enabledCriteria(for:)(_BYTE *a1)
{
  v399 = a1;
  v1 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria();
  v398 = *(v1 - 8);
  v2 = *(v398 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C617C();
  v397 = v11;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C617C();
  v395 = v13;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C617C();
  v393 = v15;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C617C();
  v391 = v17;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v20 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v379 - v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E1C617C();
  v396 = v25;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v26);
  sub_18E1C617C();
  v394 = v27;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v28);
  sub_18E1C617C();
  v392 = v29;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C617C();
  v389 = v31;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C617C();
  v387 = v33;
  sub_18E1C6668();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C617C();
  v390 = v40;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1C617C();
  v388 = v42;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1C617C();
  v386 = v44;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v45);
  sub_18E1C617C();
  v385 = v46;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v47);
  sub_18E1C617C();
  v384 = v48;
  sub_18E1C6668();
  v50 = MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v51);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v52);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v53);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v54);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v55);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v56);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v57);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v58);
  sub_18E1C617C();
  v382 = v59;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v60);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v61);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v62);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v63);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v64);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v65);
  sub_18E1C617C();
  v383 = v66;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v67);
  sub_18E1C617C();
  v381 = v68;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v69);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v70);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v71);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v72);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v73);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v74);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v75);
  sub_18E1C617C();
  v380 = v76;
  sub_18E1C6668();
  v78 = MEMORY[0x1EEE9AC00](v77);
  v80 = v379 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78);
  v83 = v379 - v82;
  MEMORY[0x1EEE9AC00](v81);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v84);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v85);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v86);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v87);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v89 = MEMORY[0x1EEE9AC00](v88);
  v91 = v379 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89);
  v94 = v379 - v93;
  v95 = MEMORY[0x1EEE9AC00](v92);
  v97 = v379 - v96;
  MEMORY[0x1EEE9AC00](v95);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v98);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v99);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v101 = MEMORY[0x1EEE9AC00](v100);
  v103 = v379 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101);
  v106 = v379 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104);
  v109 = v379 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107);
  v112 = v379 - v111;
  v113 = MEMORY[0x1EEE9AC00](v110);
  v124 = (v379 - v123);
  switch(*v399)
  {
    case 1:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v193 = sub_18E1E3794();
      *(v193 + 16) = xmmword_18E49E5C0;
      v399 = v94;
      sub_18E220A68();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E1F8C();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      v195 = *(v193 + 16);
      v194 = *(v193 + 24);
      v196 = v193;
      if (v195 >= v194 >> 1)
      {
        sub_18E1C5C70(v194);
        sub_18E3EFF88();
        v196 = v323;
      }

      *(v196 + 16) = v195 + 1;
      sub_18E29680C(v124, &v399[v196 + v195 * v83]);
      sub_18E1C66E4();
      sub_18E44E6DC();
      v198 = *(v196 + 16);
      v197 = *(v196 + 24);
      if (v198 >= v197 >> 1)
      {
        sub_18E1C5C70(v197);
        sub_18E3EFF88();
        v196 = v324;
      }

      *(v196 + 16) = v198 + 1;
      v199 = v399;
      v200 = &v399[v196 + v198 * v83];
      v124 = v196;
      sub_18E29680C(v112, v200);
      sub_18E25E158();
      v202 = *(v196 + 16);
      v201 = *(v196 + 24);
      if (v202 >= v201 >> 1)
      {
        sub_18E1C5C70(v201);
        sub_18E3EFF88();
        v124 = v325;
      }

      v203 = v379[4];
      v124[1].n128_u64[0] = v202 + 1;
      sub_18E29680C(v109, &v199[v124 + v202 * v83]);
      sub_18E1D7DD0();
      v205 = v124[1].n128_u64[0];
      v204 = v124[1].n128_u64[1];
      if (v205 >= v204 >> 1)
      {
        sub_18E1C5C70(v204);
        sub_18E3EFF88();
        v124 = v326;
      }

      v206 = v379[1];
      v124[1].n128_u64[0] = v205 + 1;
      sub_18E29680C(v106, &v199[v124 + v205 * v83]);
      sub_18E1CD990();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v327;
      }

      v207 = v379[9];
      sub_18E1CE9A8();
      sub_18E29680C(v103, v208);
      sub_18E1D0300();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v328;
      }

      sub_18E1CE9A8();
      sub_18E29680C(v206, v209);
      sub_18E1CD8C4();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v329;
      }

      sub_18E1CE9A8();
      sub_18E29680C(v203, v210);
      sub_18E1DD53C();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v330;
      }

      sub_18E1CE9A8();
      v212 = v207;
      goto LABEL_143;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0x27:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      v167 = *(v398 + 72);
      v168 = (*(v398 + 80) + 32) & ~*(v398 + 80);
      v124 = swift_allocObject();
      v124[1] = xmmword_18E49D9B0;
      goto LABEL_4;
    case 0x10:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v215 = v214 & ~v213;
      v124 = swift_allocObject();
      v124[1] = xmmword_18E49E5C0;
      sub_18E220A68();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E1CF450();
      sub_18E1E8980();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E1CD514();
      v216 = v124[1].n128_u64[0];
      if (v216 >= v124[1].n128_u64[1] >> 1)
      {
        sub_18E1C6AE8();
        v124 = v331;
      }

      v124[1].n128_u64[0] = v216 + 1;
      sub_18E29680C(v97, v124 + v215 + v216 * v83);
      sub_18E1C66E4();
      sub_18E44E6DC();
      v217 = v124[1].n128_u64[0];
      if (v217 >= v124[1].n128_u64[1] >> 1)
      {
        sub_18E1C6AE8();
        v124 = v332;
      }

      v218 = v379[11];
      v124[1].n128_u64[0] = v217 + 1;
      sub_18E29680C(v94, v124 + v215 + v217 * v83);
      sub_18E25E158();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v333;
      }

      v219 = v379[15];
      sub_18E1E2D1C();
      sub_18E29680C(v91, v220);
      v221 = v379[0];
      sub_18E207FF8();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v334;
      }

      v222 = v379[5];
      v223 = v379[2];
      sub_18E1E2D1C();
      sub_18E29680C(v221, v224);
      sub_18E1E3010();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v335;
      }

      sub_18E1E2D1C();
      sub_18E29680C(v223, v225);
      sub_18E1E30DC();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v336;
      }

      sub_18E1E2D1C();
      sub_18E29680C(v222, v226);
      sub_18E1E148C();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v337;
      }

      sub_18E1E2D1C();
      sub_18E29680C(v218, v227);
      sub_18E220478();
      sub_18E1C850C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v338;
      }

      sub_18E1E2D1C();
      goto LABEL_142;
    case 0x11:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v251 = v250 & ~v249;
      v124 = swift_allocObject();
      v124[1] = xmmword_18E49E5C0;
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      v252 = v124[1].n128_u64[0];
      v253 = v379[17];
      v254 = v379[13];
      v255 = v379[3];
      if (v252 >= v124[1].n128_u64[1] >> 1)
      {
        sub_18E1C6AE8();
        v124 = v348;
      }

      v124[1].n128_u64[0] = v252 + 1;
      sub_18E29680C(v83, v124 + v251 + v252 * v94);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v349;
      }

      v219 = v379[20];
      sub_18E1C6524();
      sub_18E29680C(v80, v256);
      sub_18E25E158();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v350;
      }

      v257 = v379[7];
      sub_18E1C6524();
      sub_18E29680C(v380, v258);
      sub_18E207FF8();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v351;
      }

      sub_18E1C6524();
      sub_18E29680C(v255, v259);
      sub_18E1E3010();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v352;
      }

      sub_18E1C6524();
      sub_18E29680C(v257, v260);
      sub_18E1E30DC();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v353;
      }

      sub_18E1C6524();
      sub_18E29680C(v254, v261);
      sub_18E1E148C();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v354;
      }

      sub_18E1C6524();
      sub_18E29680C(v253, v262);
      sub_18E220478();
      sub_18E1C297C();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v355;
      }

      sub_18E1C6524();
      goto LABEL_142;
    case 0x12:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v124 = sub_18E224DFC();
      sub_18E1E39CC(v124, xmmword_18E49E5C0);
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      v219 = v379[24];
      v263 = v379[21];
      v264 = v379[18];
      v265 = v379[14];
      v266 = v379[10];
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v361;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v379[35], v273);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v362;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v381, v274);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v363;
      }

      sub_18E1C4FAC();
      v272 = v383;
      goto LABEL_131;
    case 0x13:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v124 = sub_18E224DFC();
      sub_18E1E39CC(v124, xmmword_18E49E5C0);
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      v228 = v379[22];
      v229 = v379[19];
      v230 = v379[16];
      v231 = v379[12];
      v232 = v379[6];
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v339;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v382, v233);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v340;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v232, v234);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v341;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v231, v235);
      sub_18E1D7DD0();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v342;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v230, v236);
      sub_18E1CD990();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v343;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v229, v237);
      sub_18E1D0300();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v344;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v228, v238);
      sub_18E1CD8C4();
      sub_18E2244DC();
      if (v178)
      {
        sub_18E1C8C60(v239);
        sub_18E1CD744();
        sub_18E1D5BE8(v345);
      }

      v240 = v379[30];
      v241 = sub_18E21D0F8();
      sub_18E296718(v241, v242);
      sub_18E1DD53C();
      sub_18E2244DC();
      if (v178)
      {
        sub_18E1C8C60(v243);
        sub_18E1CD744();
        sub_18E1D5BE8(v346);
      }

      v244 = v106;
      v245 = v240;
      goto LABEL_167;
    case 0x14:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v246 = sub_18E1E3794();
      *(v246 + 16) = xmmword_18E49E5C0;
      sub_18E220A68();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E1F8C();
      sub_18E1E0F98();
      sub_18E1C8A58();
      v247 = v379[8];
      sub_18E1CD514();
      sub_18E221C38();
      if (v178)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v347);
      }

      v248 = sub_18E1CF8F4();
      sub_18E296718(v248, v247);
      v400 = v246;
      goto LABEL_11;
    case 0x15:
      v263 = v120;
      v219 = v117;
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v124 = sub_18E1D5E44();
      sub_18E1E39CC(v124, xmmword_18E49E5B0);
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E8980();
      sub_18E1CF450();
      sub_18E1C77A0();
      v264 = v379[33];
      v265 = v379[31];
      v266 = v379[26];
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v356;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v384, v267);
      sub_18E1E0F98();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v357;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v385, v268);
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v358;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v386, v269);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v359;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v388, v270);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v360;
      }

      sub_18E1C4FAC();
      v272 = v390;
LABEL_131:
      sub_18E29680C(v272, v271);
      sub_18E207FF8();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v307;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v266, v275);
      sub_18E1E3010();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v308;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v265, v276);
      sub_18E1E30DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v309;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v264, v277);
      sub_18E1E148C();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v310;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v263, v278);
      sub_18E220478();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v311;
      }

      sub_18E1C4FAC();
LABEL_142:
      v212 = v219;
LABEL_143:
      sub_18E29680C(v212, v211);
      return v124;
    case 0x16:
      v279 = v118;
      v280 = v115;
      v281 = v113;
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v282 = sub_18E1D5E44();
      sub_18E28A6A0(v282, 7);
      sub_18E1FF288();
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E8980();
      sub_18E1CF450();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v284 = v379[34];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v364 = v124[1].n128_u64[0];
        sub_18E1CD744();
        v124 = v365;
      }

      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v366;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v387, v285);
      sub_18E1E0F98();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v367;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v389, v286);
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v368;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v392, v287);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v369;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v394, v288);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v370;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v396, v289);
      sub_18E207FF8();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v371;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v284, v290);
      sub_18E1E3010();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v372;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v279, v291);
      sub_18E1E30DC();
      sub_18E1C77A0();
      if (v178)
      {
        sub_18E1C6AE8();
        v124 = v373;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v280, v292);
      sub_18E1E148C();
      sub_18E2244DC();
      if (v178)
      {
        sub_18E1C8C60(v293);
        sub_18E1CD744();
        sub_18E1D5BE8(v374);
      }

      sub_18E296718(v106, v281);
      sub_18E220478();
      sub_18E2244DC();
      if (v178)
      {
        sub_18E1C8C60(v294);
        sub_18E1CD744();
        sub_18E1D5BE8(v375);
      }

      v244 = sub_18E1E6BB0();
LABEL_167:
      sub_18E296718(v244, v245);
      return v124;
    case 0x17:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v189 = sub_18E1CBDE8();
      sub_18E28A6A0(v189, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v190 = v379[23];
      sub_18E1CF450();
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v400 = v106;
      if ((v191 & 1) == 0)
      {
        sub_18E1C5B2C();
        sub_18E1CA28C(v321);
      }

      if (*(v106 + 2) >= *(v106 + 3) >> 1)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v322);
      }

      v192 = sub_18E1CF8F4();
      sub_18E296718(v192, v190);
      v400 = v106;
      goto LABEL_8;
    case 0x18:
      v171 = v119;
      v172 = v116;
      v173 = v114;
      v174 = v122;
      v175 = v121;
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v176 = swift_allocObject();
      sub_18E28A6A0(v176, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      sub_18E1CF450();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C5B2C();
        v106 = v312;
      }

      sub_18E1CAD04();
      if (v178)
      {
        sub_18E1C5C70(v177);
        sub_18E3EFF88();
        v106 = v313;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v391, v179);
      sub_18E1E0F98();
      sub_18E1CAD04();
      if (v178)
      {
        sub_18E1C5C70(v180);
        sub_18E3EFF88();
        v106 = v314;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v393, v181);
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1CAD04();
      if (v178)
      {
        sub_18E1C5C70(v182);
        sub_18E3EFF88();
        v106 = v315;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v395, v183);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1CAD04();
      if (v178)
      {
        sub_18E1C5C70(v184);
        sub_18E3EFF88();
        v106 = v316;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v397, v185);
      sub_18E25E158();
      sub_18E1CAD04();
      if (v178)
      {
        sub_18E1C5C70(v186);
        sub_18E3EFF88();
        v106 = v317;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v171, v187);
      sub_18E1D7DD0();
      sub_18E221C38();
      if (v178)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v318);
      }

      v188 = sub_18E1CF8F4();
      sub_18E296718(v188, v172);
      sub_18E1CD990();
      sub_18E221C38();
      if (v178)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v319);
      }

      sub_18E296718(v83, v173);
      sub_18E1D0300();
      sub_18E221C38();
      if (v178)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v320);
      }

      sub_18E296718(v83, v174);
      v400 = v106;
      sub_18E1E148C();
      sub_18E286968();
      sub_18E1D00B8();
      sub_18E296718(v106, v175);
      sub_18E1DD53C();
      sub_18E286968();
      sub_18E1D00B8();
      v147 = v106;
      v148 = v175;
      goto LABEL_12;
    case 0x19:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v299 = sub_18E1CBDE8();
      sub_18E28A6A0(v299, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v300 = v379[28];
      sub_18E1CF450();
      v301 = swift_isUniquelyReferenced_nonNull_native();
      v400 = v106;
      v302 = v379[32];
      if ((v301 & 1) == 0)
      {
        sub_18E1C5B2C();
        sub_18E1CA28C(v376);
      }

      v303 = *(v106 + 2);
      if (v303 >= *(v106 + 3) >> 1)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v377);
      }

      v304 = sub_18E1CF8F4();
      sub_18E296718(v304, v300);
      sub_18E1E0F98();
      sub_18E221C38();
      if (v178)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v378);
      }

      sub_18E296718(v303, v302);
      sub_18E1C8A58();
      sub_18E1E2C6C();
      v400 = v106;
      v132 = *(v106 + 2);
      goto LABEL_10;
    case 0x1A:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v169 = sub_18E1CBDE8();
      sub_18E28A6A0(v169, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v170 = &v401;
      goto LABEL_169;
    case 0x1B:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v295 = sub_18E1CBDE8();
      sub_18E28A6A0(v295, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v170 = &v402;
LABEL_169:
      v296 = *(v170 - 32);
      sub_18E1CF450();
      v297 = swift_isUniquelyReferenced_nonNull_native();
      v400 = v106;
      if ((v297 & 1) == 0)
      {
        sub_18E1C5B2C();
        sub_18E1CA28C(v306);
      }

      v298 = *(v106 + 2);
      sub_18E2869B0(v298);
      v128 = v298;
      v129 = v296;
      goto LABEL_7;
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x2E:
    case 0x30:
    case 0x56:
    case 0x57:
    case 0x78:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v127 = sub_18E1CBDE8();
      sub_18E28A6A0(v127, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v400 = v106;
      sub_18E1CF450();
      sub_18E286968();
      sub_18E1D00B8();
      v128 = sub_18E21D0F8();
LABEL_7:
      sub_18E296718(v128, v129);
LABEL_8:
      sub_18E1E0F98();
      sub_18E286968();
      sub_18E1D00B8();
      v130 = sub_18E21D0F8();
      sub_18E296718(v130, v131);
      sub_18E1C8A58();
      sub_18E1E2C6C();
      goto LABEL_9;
    case 0x26:
    case 0x28:
    case 0x2D:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3D:
    case 0x3E:
    case 0x43:
    case 0x44:
    case 0x46:
    case 0x47:
    case 0x52:
    case 0x6D:
    case 0x74:
    case 0x77:
    case 0x79:
    case 0x7A:
    case 0x7B:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v126 = swift_allocObject();
      sub_18E28A6A0(v126, 9);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E1F8C();
      sub_18E1E0F98();
      v400 = v106;
      sub_18E1C8A58();
      sub_18E1E2C6C();
LABEL_9:
      sub_18E286968();
      v132 = *(v400 + 2);
LABEL_10:
      sub_18E2869B0(v132);
      v133 = sub_18E21D0F8();
      sub_18E296718(v133, v134);
LABEL_11:
      sub_18E1C66E4();
      sub_18E1E2C6C();
      sub_18E286968();
      sub_18E1D00B8();
      v135 = sub_18E21D0F8();
      sub_18E296718(v135, v136);
      sub_18E25E158();
      sub_18E286968();
      sub_18E1D00B8();
      v137 = sub_18E21D0F8();
      sub_18E296718(v137, v138);
      sub_18E1D7DD0();
      sub_18E286968();
      sub_18E1D00B8();
      v139 = sub_18E21D0F8();
      sub_18E296718(v139, v140);
      sub_18E1CD990();
      sub_18E286968();
      sub_18E1D00B8();
      v141 = sub_18E21D0F8();
      sub_18E296718(v141, v142);
      sub_18E1D0300();
      sub_18E286968();
      sub_18E1D00B8();
      v143 = sub_18E21D0F8();
      sub_18E296718(v143, v144);
      sub_18E1CD8C4();
      sub_18E286968();
      sub_18E1D00B8();
      v145 = sub_18E21D0F8();
      sub_18E296718(v145, v146);
      sub_18E1DD53C();
      sub_18E286968();
      sub_18E1D00B8();
      v147 = sub_18E21D0F8();
      goto LABEL_12;
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2F:
    case 0x35:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x51:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x58:
    case 0x59:
    case 0x5A:
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:
    case 0x5F:
    case 0x60:
    case 0x61:
    case 0x62:
    case 0x63:
    case 0x64:
    case 0x65:
    case 0x66:
    case 0x67:
    case 0x68:
    case 0x69:
    case 0x6A:
    case 0x6B:
    case 0x6C:
    case 0x6E:
    case 0x6F:
    case 0x70:
    case 0x71:
    case 0x72:
    case 0x73:
    case 0x75:
    case 0x76:
    case 0x7C:
    case 0x7D:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v125 = swift_allocObject();
      sub_18E28A6A0(v125, 17);
      sub_18E1FF288();
      goto LABEL_3;
    case 0x3F:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
    case 0x50:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v150 = swift_allocObject();
      sub_18E28A6A0(v150, 8);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E8980();
      v400 = v106;
      sub_18E1E0F98();
      sub_18E286968();
      sub_18E1D00B8();
      v151 = sub_18E1E6BB0();
      sub_18E296718(v151, v152);
      sub_18E1C8A58();
      sub_18E1CD514();
      sub_18E286968();
      sub_18E1D00B8();
      v153 = sub_18E1E6BB0();
      sub_18E296718(v153, v154);
      sub_18E1C66E4();
      sub_18E1CD514();
      sub_18E286968();
      sub_18E1D00B8();
      v155 = sub_18E1E6BB0();
      sub_18E296718(v155, v156);
      sub_18E25E158();
      sub_18E286968();
      sub_18E1D00B8();
      v157 = sub_18E1E6BB0();
      sub_18E296718(v157, v158);
      sub_18E1D7DD0();
      sub_18E286968();
      sub_18E1D00B8();
      v159 = sub_18E1E6BB0();
      sub_18E296718(v159, v160);
      sub_18E1CD990();
      sub_18E286968();
      sub_18E1D00B8();
      v161 = sub_18E1E6BB0();
      sub_18E296718(v161, v162);
      sub_18E1D0300();
      sub_18E286968();
      sub_18E1D00B8();
      v163 = sub_18E1E6BB0();
      sub_18E296718(v163, v164);
      sub_18E1CD8C4();
      sub_18E286968();
      sub_18E1D00B8();
      v165 = sub_18E1E6BB0();
      sub_18E296718(v165, v166);
      sub_18E220478();
      sub_18E286968();
      sub_18E1D00B8();
      v147 = sub_18E1E6BB0();
LABEL_12:
      sub_18E296718(v147, v148);
      return v400;
    case 0x45:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v305 = swift_allocObject();
      sub_18E28A6A0(v305, 25);
      sub_18E1FF288();
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E25E158();
      sub_18E1D7DD0();
      sub_18E1CD990();
      sub_18E1D0300();
      sub_18E1CD8C4();
      sub_18E1DD53C();
      sub_18E1E0F98();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      goto LABEL_4;
    default:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v124 = swift_allocObject();
      v124[1] = xmmword_18E49E5D0;
LABEL_3:
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E25E158();
      sub_18E1D7DD0();
      sub_18E1CD990();
      sub_18E1D0300();
      sub_18E1CD8C4();
LABEL_4:
      sub_18E44E6DC();
      return v124;
  }
}

uint64_t static UseCaseIdentifier.Metadata.Availability.externalModelProviders(for:)(_BYTE *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(*a1)
  {
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x15:
    case 0x31:
    case 0x7C:
    case 0x7D:
      if (qword_1ED6A7AD0 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED6A7AD8;
      v3 = unk_1ED6A7AE0;
      v5 = byte_1ED6A7AE8;
      v6 = qword_1ED6A7AF0;
      v7 = unk_1ED6A7AF8;
      v8 = byte_1ED6A7B00;

      sub_18E3F0050();
      v1 = v9;
      v10 = *(v9 + 16);
      v11 = v10 + 1;
      if (v10 >= *(v9 + 24) >> 1)
      {
        v14 = *(v9 + 16);
        v15 = v10 + 1;
        sub_18E3F0050();
        v10 = v14;
        v11 = v15;
        v1 = v13;
      }

      *(v1 + 16) = v11;
      v12 = v1 + 48 * v10;
      *(v12 + 32) = v4;
      *(v12 + 40) = v3;
      *(v12 + 48) = v5;
      *(v12 + 56) = v6;
      *(v12 + 64) = v7;
      *(v12 + 72) = v8;
      break;
    default:
      return v1;
  }

  return v1;
}

__n128 *static UseCaseIdentifier.Metadata.Disablement.disabledLanguages(for:)(_BYTE *a1)
{
  v2 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v39) = *a1;
  result = static UseCaseIdentifier.Metadata.Enablement.enabledCriteria(for:)(&v39);
  if (result)
  {
    v8 = result;
    if (qword_1ED6A97A0 != -1)
    {
      swift_once();
    }

    v9 = off_1ED6A97A8[0];
    v10 = *(off_1ED6A97A8[0] + 16);
    v11 = MEMORY[0x1E69E7CC0];
    v38 = v8;
    if (v10)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_18E26F1E0(0, v10, 0);
      v12 = v39;
      v13 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v37 = v3;
      v14 = *(v3 + 72);
      do
      {
        sub_18E296870(v13, v6);
        v15 = sub_18E44E6CC();
        v17 = v16;
        sub_18E2968D4(v6);
        v39 = v12;
        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          v21 = sub_18E1C8C60(v18);
          sub_18E26F1E0(v21, v19 + 1, 1);
          v12 = v39;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v13 += v14;
        --v10;
      }

      while (v10);
      v3 = v37;
      v8 = v38;
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v22 = sub_18E207C7C(v12);
    v23 = v22;
    v24 = v8[1].n128_i64[0];
    if (v24)
    {
      v37 = v22;
      v39 = v11;
      sub_18E26F1E0(0, v24, 0);
      v11 = v39;
      v25 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v26 = *(v3 + 72);
      do
      {
        sub_18E296870(v25, v6);
        v27 = sub_18E44E6CC();
        v29 = v28;
        sub_18E2968D4(v6);
        v39 = v11;
        v31 = *(v11 + 16);
        v30 = *(v11 + 24);
        if (v31 >= v30 >> 1)
        {
          v33 = sub_18E1C8C60(v30);
          sub_18E26F1E0(v33, v31 + 1, 1);
          v11 = v39;
        }

        *(v11 + 16) = v31 + 1;
        v32 = v11 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v25 += v26;
        --v24;
      }

      while (v24);

      v23 = v37;
    }

    else
    {
    }

    v34 = sub_18E207C7C(v11);
    v35 = sub_18E296620(v34, v23);

    return sub_18E292FCC(v35);
  }

  return result;
}

uint64_t sub_18E296620(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_18E297010(a1);
    return a2;
  }

  else
  {

    return sub_18E29713C(a1, a2);
  }
}

__n128 *static UseCaseIdentifier.Metadata.Disablement.disabledRegions(for:)(char *a1)
{
  v2 = *a1;
  result = static UseCaseIdentifier.Metadata.Enablement.enabledCriteria(for:)(&v2);
  if (result)
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t static UseCaseIdentifier.Metadata.Safety.isDonationBlocked(for:)(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  switch(v3)
  {
    case 14:
    case 15:
    case 17:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 51:
    case 52:
    case 56:
    case 60:
    case 63:
    case 78:
      return result;
    case 16:
    case 18:
    case 19:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 53:
    case 54:
    case 55:
    case 57:
    case 58:
    case 59:
    case 61:
    case 62:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
      goto LABEL_7;
    default:
      v4 = v3 - 89;
      v5 = v4 > 0x1D;
      v6 = (1 << v4) & 0x3600FC2B;
      if (v5 || v6 == 0)
      {
LABEL_7:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t sub_18E296718(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = a1 + 1;
  v6 = *(type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria() - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1;

  return sub_18E29680C(a2, v7);
}

uint64_t type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria()
{
  result = qword_1ED6A9830;
  if (!qword_1ED6A9830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E29680C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E296870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E2968D4(uint64_t a1)
{
  v2 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E296934()
{
  result = qword_1EABE1260;
  if (!qword_1EABE1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1260);
  }

  return result;
}

unint64_t sub_18E29698C()
{
  result = qword_1ED6A7C90;
  if (!qword_1ED6A7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7C90);
  }

  return result;
}

uint64_t sub_18E296A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E296A7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18E296ABC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UseCaseIdentifier.DownloadCondition.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UseCaseIdentifier.DownloadCondition.Identifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E296CC8()
{
  result = sub_18E44E6FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s12ModelCatalog17UseCaseIdentifierV8MetadataOwst_0_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E296E14()
{
  result = qword_1EABE1270;
  if (!qword_1EABE1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1270);
  }

  return result;
}

unint64_t sub_18E296E6C()
{
  result = qword_1EABE1278;
  if (!qword_1EABE1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1278);
  }

  return result;
}

unint64_t sub_18E296EC0()
{
  result = qword_1EABE1280;
  if (!qword_1EABE1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1280);
  }

  return result;
}

unint64_t sub_18E296F14()
{
  result = qword_1EABE1288;
  if (!qword_1EABE1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1288);
  }

  return result;
}

unint64_t sub_18E296F68()
{
  result = qword_1EABE1290;
  if (!qword_1EABE1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1290);
  }

  return result;
}

unint64_t sub_18E296FBC()
{
  result = qword_1EABE1298;
  if (!qword_1EABE1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1298);
  }

  return result;
}

uint64_t sub_18E297010(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_18E297614(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_18E29713C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_18E44F48C();

        sub_18E44EB4C();
        v21 = sub_18E44F4CC();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_18E44F3CC() & 1) != 0)
          {
            v57 = v51;
            v58 = v16;
            v59 = v11;
            v3 = v54;
            v12 = v55;
            v56[0] = v55;
            v56[1] = v54;

            v26 = *(v5 + 32);
            v48 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v48;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v49 = &v47;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v52 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v53;
              while (1)
              {
                v50 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_18E44F48C();

                sub_18E44EB4C();
                v36 = sub_18E44F4CC();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v54;
                    v12 = v55;
                    v30 = v53;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_18E44F3CC();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = *(v52 + 8 * v7);
                *(v52 + 8 * v7) = v41 & ~v8;
                v3 = v54;
                v12 = v55;
                v30 = v53;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v50 - 1;
                if (__OFSUB__(v50, 1))
                {
                  __break(1u);
                }

                if (v50 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  sub_18E3F5ED4();
                  v5 = v42;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_18E297928(v45, v48, (v5 + 56), v48, v5, v7, v56);

            MEMORY[0x193ACD400](v45, -1, -1);
            v51 = v57;
            v5 = v46;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v54;
        v14 = v55;
        v12 = v53;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_18E246F7C();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_18E297614(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_18E44F48C();
  sub_18E44EB4C();
  v7 = sub_18E44F4CC();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_18E44F3CC() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E3F4028();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_18E2979B0(v9);
  *v2 = v19;
  return v16;
}

void sub_18E29773C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_18E44F48C();

    sub_18E44EB4C();
    v17 = sub_18E44F4CC();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_18E44F3CC();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = *(a1 + 8 * v20);
    *(a1 + 8 * v20) = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_18E3F5ED4();
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18E297928(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_18E29773C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_18E2979B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_18E44EF6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_18E44F48C();

        sub_18E44EB4C();
        v15 = sub_18E44F4CC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t defaultAJAXConfirguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v181 = a3;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_18E1C64E0();
  v161 = v7;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C617C();
  v163 = v9;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C617C();
  v165 = v11;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C617C();
  v167 = v13;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C617C();
  v169 = v15;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C617C();
  v171 = v17;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C617C();
  v173 = v19;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1C617C();
  v175 = v21;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C617C();
  v176 = v23;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E1C617C();
  v177 = v25;
  sub_18E1C6668();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &i - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &i - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &i - v33;
  v182 = sub_18E44E54C();
  v180 = *(v182 - 8);
  v35 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v182);
  sub_18E1C64E0();
  i = v36;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C617C();
  v162 = v38;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C617C();
  v164 = v40;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1C617C();
  v166 = v42;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1C617C();
  v168 = v44;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v45);
  sub_18E1C617C();
  v170 = v46;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v47);
  sub_18E1C617C();
  v172 = v48;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v49);
  sub_18E1C617C();
  v174 = v50;
  sub_18E1C6668();
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &i - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &i - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = &i - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = (&i - v62);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &i - v64;
  sub_18E1C77BC();
  v178 = a1;
  v179 = a2;
  v68 = a1 == v67 + 19 && v66 == a2;
  if (v68 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E44E50C();
    v69 = v182;
    if (sub_18E1CAF28(v34, 1, v182) != 1)
    {
      sub_18E1C8E0C();
      v70 = v65;
      v71 = v34;
LABEL_8:
      v63(v70, v71, v69);
      v72 = sub_18E1C851C();
      v63(v72, v65, v69);
      v73 = sub_18E1C5990();
      v74 = sub_18E1C7EE4(v73);
      v77 = 0xD000000000000010;
LABEL_9:
      *v76 = v77;
      v76[1] = v63;
LABEL_10:
      v78 = &v32[*(v74 + 24)];
      *v78 = 0;
      *(v78 + 1) = 0xE000000000000000;
      return sub_18E201DC8(v32, 0, 1, v75);
    }

    sub_18E29897C(v34);
    sub_18E1C81E4();
    i = 13;
    goto LABEL_109;
  }

  sub_18E1C77BC();
  sub_18E1C55B8();
  v82 = v68 && v80 == v81;
  if (v82 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E44E50C();
    v83 = v182;
    if (sub_18E1CAF28(v32, 1, v182) != 1)
    {
      v84 = *(v180 + 32);
      v84(v63, v32, v83);
      v85 = sub_18E1C851C();
      v84(v85, v63, v83);
      v86 = sub_18E1C5990();
      v74 = sub_18E1C7EE4(v86);
      v77 = 0xD000000000000010;
      goto LABEL_9;
    }

    sub_18E29897C(v32);
    sub_18E1C81E4();
    i = 18;
    goto LABEL_109;
  }

  sub_18E1C77BC();
  sub_18E1C55B8();
  v89 = v68 && v87 == v88;
  if (v89 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E44E50C();
    v90 = v182;
    if (sub_18E1CAF28(v29, 1, v182) != 1)
    {
      v63 = *(v180 + 32);
      v63(v60, v29, v90);
      v91 = sub_18E1C851C();
      v63(v91, v60, v90);
      v92 = sub_18E1C5990();
      v74 = sub_18E1C7EE4(v92);
      v77 = 0xD000000000000010;
      goto LABEL_9;
    }

    sub_18E29897C(v29);
    sub_18E1C81E4();
    i = 23;
    goto LABEL_109;
  }

  sub_18E1C77BC();
  sub_18E1C55B8();
  v95 = v68 && v93 == v94;
  if (v95 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v32 = v177;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (v68)
    {
      sub_18E29897C(v32);
      sub_18E1C81E4();
      i = 28;
      goto LABEL_109;
    }

    sub_18E1CAFA4();
    sub_18E1C689C();
    (v63)();
    v96 = sub_18E1C851C();
    v63(v96, v57, v29);
    v97 = type metadata accessor for AJAXConfiguration();
    v74 = sub_18E1C6B0C(v97);
    v101 = v100 - 512;
LABEL_40:
    *v98 = v99;
    v98[1] = v101;
    goto LABEL_10;
  }

  sub_18E1C77B0();
  v32 = 0xD000000000000033;
  v103 = v178 == 0xD000000000000033 && v102 == v179;
  if (v103 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v32 = v176;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (!v68)
    {
      sub_18E1CAFA4();
      sub_18E1C689C();
      MEMORY[0xD000000000000026]();
      v104 = sub_18E1C851C();
      v105 = v54;
LABEL_39:
      MEMORY[0xD000000000000026](v104, v105, v29);
      v106 = type metadata accessor for AJAXConfiguration();
      v74 = sub_18E1C6B0C(v106);
      goto LABEL_40;
    }

    sub_18E29897C(v32);
    sub_18E1C81E4();
    v158 = 33;
    goto LABEL_108;
  }

  sub_18E1C5C84();
  v109 = v68 && v107 == v108;
  if (v109 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v32 = v175;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (!v68)
    {
      sub_18E1CAFA4();
      v110 = v174;
      sub_18E1C689C();
      MEMORY[0xD000000000000026]();
      v104 = sub_18E1C851C();
      v105 = v110;
      goto LABEL_39;
    }

    sub_18E29897C(v32);
    sub_18E1C81E4();
    v158 = 38;
LABEL_108:
    i = v158;
    goto LABEL_109;
  }

  sub_18E1C5C84();
  v113 = v68 && v111 == v112;
  if (v113 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v32 = v173;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (!v68)
    {
      sub_18E1CAFA4();
      sub_18E1C689C();
      MEMORY[0xD000000000000026]();
      v114 = sub_18E1C532C();
      MEMORY[0xD000000000000026](v114);
      v115 = type metadata accessor for AJAXConfiguration();
      v74 = sub_18E1C6B0C(v115);
      v101 = v116 | 0x400;
      goto LABEL_40;
    }

    sub_18E29897C(v32);
    sub_18E1C81E4();
    v158 = 43;
    goto LABEL_108;
  }

  sub_18E1C5C84();
  v119 = v68 && v117 == v118;
  if (v119 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v32 = v171;
    sub_18E1C57DC();
    if (sub_18E1CAF28(v32, 1, v182) != 1)
    {
      sub_18E1CAFA4();
      v120 = sub_18E1C870C();
      MEMORY[0xD000000000000026](v120);
      v121 = sub_18E1C532C();
      MEMORY[0xD000000000000026](v121);
      v122 = type metadata accessor for AJAXConfiguration();
      v74 = sub_18E1C6B0C(v122);
      v101 = v123 + 1280;
      goto LABEL_40;
    }

    sub_18E29897C(v171);
    sub_18E1C81E4();
    v158 = 48;
    goto LABEL_108;
  }

  sub_18E1C5C84();
  v126 = v68 && v124 == v125;
  if (v126 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v127 = v169;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (v68)
    {
      goto LABEL_110;
    }

    sub_18E1CAFA4();
    v128 = sub_18E1C870C();
    v127(v128);
    v129 = sub_18E1C532C();
    v127(v129);
    v130 = type metadata accessor for AJAXConfiguration();
    v74 = sub_18E1C6B0C(v130);
    v101 = v131 + 1536;
    goto LABEL_40;
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v134 = v68 && v132 == v133;
  if (v134 || (sub_18E1D6078() & 1) != 0)
  {
    sub_18E1C77B0();
    v135 = v167;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v68)
    {
      sub_18E1CAFA4();
      v136 = sub_18E1C870C();
      v135(v136);
      v137 = sub_18E1C532C();
      v135(v137);
      v138 = type metadata accessor for AJAXConfiguration();
      v74 = sub_18E1C7EE4(v138);
      v99 = 0x65736E6F70736572;
      v101 = 0xEF36762D6E65672DLL;
      goto LABEL_40;
    }

    sub_18E29897C(v167);
    sub_18E1C81E4();
    v159 = 58;
LABEL_112:
    i = v159;
    goto LABEL_109;
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v141 = v68 && v139 == v140;
  if (v141 || (sub_18E1D6078() & 1) != 0)
  {
    v63 = v165;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v68)
    {
      sub_18E1C8E0C();
      v65 = v164;
      v71 = v165;
      v70 = v164;
      v69 = v182;
      goto LABEL_8;
    }

    sub_18E29897C(v165);
    sub_18E1C81E4();
    for (i = 63; ; i = 53)
    {
LABEL_109:
      sub_18E44F14C();
      __break(1u);
LABEL_110:
      sub_18E29897C(v169);
      sub_18E1C81E4();
    }
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v144 = v68 && v142 == v143;
  if (v144 || (sub_18E1D6078() & 1) != 0)
  {
    v63 = v163;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v68)
    {
      sub_18E1C8E0C();
      v145 = v162;
      v146 = v182;
      v63(v162, v163, v182);
      v147 = sub_18E1C851C();
      v63(v147, v145, v146);
      v148 = sub_18E1C5990();
      v74 = sub_18E1C7EE4(v148);
      v77 = 0xD000000000000029;
      goto LABEL_9;
    }

    sub_18E29897C(v163);
    sub_18E1C81E4();
    i = 68;
    goto LABEL_109;
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v151 = v68 && v149 == v150;
  if (v151 || (sub_18E1D6078() & 1) != 0)
  {
    v63 = v161;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v68)
    {
      sub_18E1C8E0C();
      v152 = i;
      v153 = v182;
      v63(i, v161, v182);
      v154 = sub_18E1C851C();
      v63(v154, v152, v153);
      v155 = sub_18E1C5990();
      v74 = sub_18E1C7EE4(v155);
      v77 = 0xD00000000000001ELL;
      goto LABEL_9;
    }

    sub_18E29897C(v161);
    sub_18E1C81E4();
    v159 = 73;
    goto LABEL_112;
  }

  v156 = type metadata accessor for AJAXConfiguration();
  v157 = v181;

  return sub_18E201DC8(v157, 1, 1, v156);
}

uint64_t sub_18E29897C(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E2989E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_18E26F220(0, v1, 0);
  v2 = v35;
  result = sub_18E32EE50(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v27 = v3 + 64;
  v28 = v1;
  v29 = v3 + 56;
  v30 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v33 = v6;
      v31 = v8;
      v32 = v5;
      v11 = *(v3 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v35 + 16);
      v16 = *(v35 + 24);

      if (v15 >= v16 >> 1)
      {
        result = sub_18E26F220((v16 > 1), v15 + 1, 1);
      }

      *(v35 + 16) = v15 + 1;
      v17 = v35 + (v15 << 6);
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 49) = *v34;
      *(v17 + 52) = *&v34[3];
      *(v17 + 56) = 0u;
      *(v17 + 72) = 0u;
      *(v17 + 88) = 0;
      if (v33)
      {
        goto LABEL_29;
      }

      v9 = v29;
      v3 = v30;
      v18 = 1 << *(v30 + 32);
      if (v7 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v30 + 36) != v32)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        v21 = v28;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_18E249F2C(v7, v32, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_18E249F2C(v7, v32, 0);
      }

LABEL_19:
      v8 = v31 + 1;
      if (v31 + 1 == v21)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v30 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18E298C48@<X0>(void (*a1)(const void *, _BYTE *)@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  a1(v2, v6);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC())
  {
    sub_18E224478(v7, v9);
    sub_18E1E15F4(v9, v10);
    sub_18E1C4FE0();
    return sub_18E1C9934(v9);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    result = sub_18E298E58(v7);
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t TokenOutputDenyList.cost.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_18E1C4EAC(a1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v9, v10);
    sub_18E1E15F4(v10, v11);
    sub_18E1C4FE0();
    return sub_18E1C9934(v10);
  }

  else
  {
    result = sub_18E1C5F54();
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_18E298E58(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE12A8, &qword_18E49EB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E298EC0(void (*a1)(const void *, _BYTE *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  memcpy(__dst, v3, sizeof(__dst));
  a1(v3, v11);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC())
  {
    sub_18E224478(v12, v14);
    sub_18E1E15F4(v14, v15);
    v6 = sub_18E1C5C98();
    sub_18E1C9934(v14);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v7 = sub_18E298E58(v12);
    v8 = a3(v7);
    v9 = sub_18E2989E4(v8);

    return sub_18E292D44(v9);
  }

  return v6;
}

uint64_t TokenOutputDenyList.executionContexts.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_18E1C4EAC(a1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v9 + 16))(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v15, v16);
    sub_18E1E15F4(v16, v17);
    v10 = sub_18E1C5C98();
    sub_18E1C9934(v16);
  }

  else
  {
    sub_18E1C5F54();
    v11 = (*(*(*(a2 + 8) + 8) + 32))(a1);
    v12 = sub_18E2989E4(v11);

    return sub_18E292D44(v12);
  }

  return v10;
}

uint64_t sub_18E299114@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = TokenOutputDenyList.executionContexts.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void sub_18E299148(uint64_t *a1)
{
  v1 = *a1;

  TokenOutputDenyList.executionContexts.setter();
}

void sub_18E299168()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568();
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenOutputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

void TokenOutputDenyList.executionContexts.setter()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568();
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenOutputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

void (*TokenOutputDenyList.executionContexts.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = TokenOutputDenyList.executionContexts.getter(a2, a3);
  return sub_18E299354;
}

void sub_18E299354(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    TokenOutputDenyList.executionContexts.setter();
  }

  else
  {
    v4 = *a1;
    TokenOutputDenyList.executionContexts.setter();
  }
}

uint64_t sub_18E2993AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  v9 = sub_18E1C81F4();
  return sub_18E298C48(v9, v8);
}

uint64_t sub_18E2993F4()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C81F4();
  return sub_18E298EC0(v1, v2, sub_18E32EE3C);
}

uint64_t (*sub_18E299450())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C81F4();
  *(v0 + 216) = sub_18E298EC0(v2, v3, sub_18E32EE3C);
  return sub_18E2994D0;
}

uint64_t sub_18E2994D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  v9 = sub_18E1C6B34();
  return sub_18E298C48(v9, v8);
}

uint64_t sub_18E29951C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C6B34();
  return sub_18E298EC0(v1, v2, sub_18E32EE3C);
}

uint64_t (*sub_18E299578())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C6B34();
  *(v0 + 216) = sub_18E298EC0(v2, v3, sub_18E32EE3C);
  return sub_18E29974C;
}

void sub_18E2995F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {

    sub_18E299168();
    v5 = *v3;
  }

  else
  {
    sub_18E299168();
  }

  free(v2);
}

void *sub_18E29965C(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t static ParameterizedUseCase.genericUseCase(useCaseIdentifier:arguments:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  a3[1] = a2;
}

uint64_t _s12ModelCatalog20ParameterizedUseCaseV42SettingsAppleIntelligenceDownloadArgumentsV12languageCodeAE10Foundation6LocaleV08LanguageL0V_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E44E6FC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_18E2997EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_18E44E6CC();
  *(inited + 56) = v5;
  result = sub_18E44E9AC();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t static ParameterizedUseCase.spatialPhotosReliveMain(_:)@<X0>(void *a1@<X8>)
{
  result = sub_18E44E9AC();
  *a1 = 85;
  a1[1] = result;
  return result;
}

uint64_t sub_18E2998DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E299930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_18E299A30(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18E299ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_18E299B2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_18E299B80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_18E299B98(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t SubscriptionManagerProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedManager];
  return v0;
}

void sub_18E299C2C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 8)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20();
    }

    v4 = sub_18E44E83C();
    sub_18E1C95EC(v4, qword_1ED6A98C0);
    v5 = sub_18E44E80C();
    v6 = sub_18E44EE1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_18E1C5F74();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_18E1C1000, v5, v6, "SubscriptionManagerProvider: Download status type of: %lu has not been accounted for", v7, 0xCu);
      sub_18E1C7EF4();
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

uint64_t SubscriptionManagerProvider.downloadStatus(subscribers:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E299D6C, 0, 0);
}

uint64_t sub_18E299D6C()
{
  v18 = v0;
  if (qword_1ED6A94F8 != -1)
  {
    sub_18E1C5C20();
  }

  v2 = v0[20];
  v3 = sub_18E44E83C();
  v0[22] = sub_18E1C95EC(v3, qword_1ED6A98C0);

  v4 = sub_18E44E80C();
  v5 = sub_18E44EE2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    sub_18E1C5F74();
    v7 = sub_18E1C5CE0();
    v17 = v7;
    *v2 = 136315138;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v8 = sub_18E44E99C();
    sub_18E1C9624(v8, v9, &v17);
    sub_18E1C8A68();
    *(v2 + 4) = v1;
    sub_18E1C820C(&dword_18E1C1000, v10, v11, "SubscriptionManagerProvider: Starting async request to retrieve download status for subscribers: %s");
    sub_18E1C9934(v7);
    sub_18E1C7EF4();
    sub_18E1C5008();
  }

  v12 = v0[20];
  v13 = *(v0[21] + 16);
  v0[23] = sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v14 = sub_18E44E97C();
  v0[24] = v14;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18E299FDC;
  v15 = swift_continuation_init();
  v0[17] = sub_18E2706EC(&qword_1EABE12D0, &qword_18E49ECF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18E29A260;
  v0[13] = &unk_1F0141310;
  v0[14] = v15;
  [v13 downloadStatusForSubscribers:v14 queue:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18E299FDC()
{
  sub_18E1C52F0();
  v4 = *v0;
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18E29A0B0, 0, 0);
}

uint64_t sub_18E29A0B0()
{
  v18 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  sub_18E299C2C(v3, &v16);
  v4 = v16;

  v5 = sub_18E44E80C();
  v6 = sub_18E44EE2C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_18E44E99C();
    sub_18E1C9624(v10, v11, &v17);
    sub_18E1C8A68();
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 80) = v4;
    v12 = sub_18E44EB0C();
    sub_18E1C9624(v12, v13, &v17);
    sub_18E1C8A68();
    *(v9 + 14) = v8;
    _os_log_impl(&dword_18E1C1000, v5, v6, "SubscriptionManagerProvider: Async download status for subscribers: %s, returned download status: %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_18E1C7EF4();
    sub_18E1C5008();
  }

  **(v0 + 152) = v4;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_18E29A260(uint64_t a1, uint64_t a2)
{
  v3 = *sub_18E1E15F4((a1 + 32), *(a1 + 56));

  return sub_18E3FE484(v3, a2);
}

uint64_t SubscriptionManagerProvider.updateAssets(subscribers:detailedProgress:)()
{
  sub_18E1C52F0();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = sub_18E44EE5C();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = sub_18E44EE4C();
  v1[33] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v10 = *(*(sub_18E44E90C() - 8) + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E29A3C0, 0, 0);
}

uint64_t sub_18E29A3C0()
{
  v66 = v0;
  v1 = v0;
  if (qword_1ED6A94F8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = *(v1 + 208);
    v3 = sub_18E44E83C();
    *(v1 + 288) = sub_18E1C95EC(v3, qword_1ED6A98C0);

    v4 = sub_18E44E80C();
    v5 = sub_18E44EE2C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 208);
      sub_18E1C5F74();
      v7 = sub_18E1C5CE0();
      v64[0] = v7;
      *v2 = 136315138;
      sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
      v8 = sub_18E44E99C();
      sub_18E1C9624(v8, v9, v64);
      sub_18E1C8A68();
      *(v2 + 4) = v1;
      sub_18E1C820C(&dword_18E1C1000, v10, v11, "SubscriptionManagerProvider: Starting request to update assets for subscribers: %s");
      sub_18E1C9934(v7);
      sub_18E1C7EF4();
      sub_18E1C5008();
    }

    v12 = *(v1 + 208);
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_18E44EFFC();
    MEMORY[0x193ACC300](0xD000000000000035, 0x800000018E465850);
    v13 = *(v12 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
      break;
    }

    v55 = v1;
    v15 = *(v1 + 208);
    v65 = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v13, 0);
    v16 = v65;
    v1 = sub_18E249F38(v15);
    v19 = 0;
    v20 = v15 + 64;
    v58 = v13;
    if ((v1 & 0x8000000000000000) == 0)
    {
      while (v1 < 1 << *(v15 + 32))
      {
        v21 = v1 >> 6;
        if ((*(v20 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v15 + 36) != v17)
        {
          goto LABEL_31;
        }

        aBlock = v18;
        v62 = v19;
        v63 = v17;
        v22 = (*(v15 + 48) + 16 * v1);
        v23 = *v22;
        v24 = v22[1];
        v65 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);

        if (v26 >= v25 >> 1)
        {
          sub_18E26F1E0(v25 > 1, v26 + 1, 1);
          v16 = v65;
        }

        *(v16 + 16) = v26 + 1;
        v27 = v16 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        v28 = 1 << *(v15 + 32);
        if (v1 >= v28)
        {
          goto LABEL_32;
        }

        v20 = v15 + 64;
        v29 = *(v15 + 64 + 8 * v21);
        if ((v29 & (1 << v1)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v15 + 36) != v63)
        {
          goto LABEL_34;
        }

        v30 = v29 & (-2 << (v1 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v1 & 0x7FFFFFFFFFFFFFC0;
          v31 = v58;
        }

        else
        {
          v32 = v21 << 6;
          v31 = v58;
          v33 = (v15 + 72 + 8 * v21);
          v34 = v21 + 1;
          while (v34 < (v28 + 63) >> 6)
          {
            v36 = *v33++;
            v35 = v36;
            v32 += 64;
            ++v34;
            if (v36)
            {
              sub_18E249F2C(v1, v63, aBlock & 1);
              v28 = __clz(__rbit64(v35)) + v32;
              goto LABEL_21;
            }
          }

          sub_18E249F2C(v1, v63, aBlock & 1);
        }

LABEL_21:
        v19 = v62 + 1;
        if (v62 + 1 == v31)
        {
          v1 = v55;
          v14 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }

        v18 = 0;
        v17 = *(v15 + 36);
        v1 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_18E1C5C20();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v37 = *(v1 + 280);
  v51 = *(v1 + 272);
  v52 = *(v1 + 264);
  v53 = *(v1 + 256);
  v38 = *(v1 + 248);
  v54 = *(v1 + 240);
  v56 = *(v1 + 232);
  v59 = *(v1 + 216);
  v60 = *(v1 + 224);
  v57 = *(v1 + 208);
  sub_18E29B230();
  *(v1 + 192) = v16;
  *(v1 + 296) = sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1E1638(&qword_1ED6A80E0, &unk_1EABE1160, &qword_18E49DDA0);
  v39 = sub_18E44EA0C();
  v41 = v40;

  MEMORY[0x193ACC300](v39, v41);

  sub_18E44E8FC();
  *(v1 + 200) = v14;
  sub_18E29B274();
  sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
  sub_18E1E1638(&qword_1ED6A7CB8, &qword_1EABE12D8, &qword_18E49ED00);
  sub_18E44EF4C();
  (*(v38 + 104))(v53, *MEMORY[0x1E69E8090], v54);
  v42 = sub_18E44EE6C();
  *(v1 + 304) = v42;
  v43 = *(v56 + 16);
  v44 = sub_18E44E97C();
  *(v1 + 312) = v44;
  v45 = swift_allocObject();
  v45[2] = v59;
  v45[3] = v60;
  v45[4] = v57;
  *(v1 + 176) = sub_18E29B2CC;
  *(v1 + 184) = v45;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  *(v1 + 152) = 1107296256;
  *(v1 + 160) = sub_18E29AF30;
  *(v1 + 168) = &unk_1F0141360;
  v46 = _Block_copy((v1 + 144));
  *(v1 + 320) = v46;
  v47 = *(v1 + 184);

  v48 = v42;
  sub_18E29B2F0(v59);

  *(v1 + 16) = v1;
  *(v1 + 24) = sub_18E29AABC;
  v49 = swift_continuation_init();
  *(v1 + 136) = sub_18E2706EC(&qword_1EABE12E0, &qword_18E49ED08);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_18E29AF98;
  *(v1 + 104) = &unk_1F0141388;
  *(v1 + 112) = v49;
  [v43 updateAssetsForSubscribers:v44 policies:0 queue:v48 detailedProgress:v46 completion:?];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_18E29AABC()
{
  sub_18E1C52F0();
  v4 = *v0;
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18E29AB90, 0, 0);
}

uint64_t sub_18E29AB90()
{
  v22 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 208);
  _Block_release(*(v0 + 320));

  v5 = sub_18E44E80C();
  LOBYTE(v1) = sub_18E44EE2C();

  v6 = os_log_type_enabled(v5, v1);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = *(v0 + 296);
    v9 = *(v0 + 208);
    sub_18E1C5F74();
    v10 = sub_18E1C5CE0();
    v21 = v10;
    *v4 = 136315138;
    v11 = sub_18E44E99C();
    v13 = sub_18E1C9624(v11, v12, &v21);

    *(v4 + 4) = v13;
    sub_18E1C820C(&dword_18E1C1000, v14, v15, "SubscriptionManagerProvider: Finished request to update assets for subscribers: %s");
    sub_18E1C9934(v10);
    sub_18E1C5008();
    sub_18E1C5008();
  }

  v17 = *(v0 + 272);
  v16 = *(v0 + 280);
  v18 = *(v0 + 256);

  v19 = *(v0 + 8);

  return v19();
}

void sub_18E29ACFC(void *a1, void (*a2)(uint64_t *))
{
  [a1 completedPercent];
  v5 = v4;
  v6 = [a1 completedBytes];
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [a1 totalBytes];
  if (v8 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v9 = v8;
  sub_18E299C2C([a1 downloadStatus], v19);
  if (a2)
  {
    v10 = v19[0];
    v19[0] = v5;
    v19[1] = v7;
    v19[2] = v9;
    v20 = v10;

    a2(v19);
    sub_18E29B32C(a2);
  }

  if (qword_1ED6A94F8 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v11 = sub_18E44E83C();
  sub_18E1C95EC(v11, qword_1ED6A98C0);

  oslog = sub_18E44E80C();
  v12 = sub_18E44EE2C();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v15 = sub_18E44E99C();
    v17 = sub_18E1C9624(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_18E1C1000, oslog, v12, "SubscriptionManagerProvider: Progress received for subscribers: %s", v13, 0xCu);
    sub_18E1C9934(v14);
    MEMORY[0x193ACD400](v14, -1, -1);
    MEMORY[0x193ACD400](v13, -1, -1);
  }
}

void sub_18E29AF30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_18E29AF98(uint64_t a1)
{
  v1 = *sub_18E1E15F4((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_18E29AFEC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18E29B344;

  return SubscriptionManagerProvider.downloadStatus(subscribers:)(a1, a2);
}

uint64_t sub_18E29B098()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E29B148;

  return SubscriptionManagerProvider.updateAssets(subscribers:detailedProgress:)();
}

uint64_t sub_18E29B148()
{
  sub_18E1C52F0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_18E1C52E0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_18E29B230()
{
  result = qword_1ED6A7CA8;
  if (!qword_1ED6A7CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6A7CA8);
  }

  return result;
}

unint64_t sub_18E29B274()
{
  result = qword_1ED6A7CB0;
  if (!qword_1ED6A7CB0)
  {
    sub_18E44EE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7CB0);
  }

  return result;
}

void sub_18E29B2CC(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_18E29ACFC(a1, *(v1 + 16));
}

uint64_t sub_18E29B2D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E29B2F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E29B32C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void static Catalog.ResourceBundle.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()()
{
  sub_18E2345C8();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin()();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()()
{
  sub_18E2345C8();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain()();
  sub_18E1E67A0(41);
}

void static Catalog.ResourceBundle.Motion.CoreMotionCalorimetryFMPredictedWRMets()()
{
  sub_18E2345C8();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets()();
  sub_18E1E67A0(66);
}

void static Catalog.ResourceBundle.Motion.CoreMotionCalorimetryReducedEmbeddings()()
{
  sub_18E2345C8();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings()();
  sub_18E1E67A0(62);
}

void static Catalog.ResourceBundle.Motion.CoreMotionIMUFoundationModel()()
{
  sub_18E1E1FB0();
  sub_18E2430A0();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    v2 = sub_18E223A10();
    MEMORY[0x193ACC300](v2);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1CD52C();
    __break(1u);
  }

  else
  {
    sub_18E221904("com.apple.fm.coremotion.imu_v1.base");
  }
}

void static Catalog.ResourceBundle.Overrides.TokenInputDenyListWithDefaults.TokenInputDenyListTemplate()()
{
  sub_18E2345C8();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  sub_18E1E67A0(46);
}

void static Catalog.ResourceBundle.Overrides.TokenOutputDenyListWithDefaults.TokenOutputDenyListWithDefaultsTemplate()()
{
  sub_18E2345C8();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListStructureExtractionSafetyWordList()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.TokenOutputRetainList.STXSafetyWordList(variant:)(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.tokenoutputretainlist.defaults.structure_extraction_safety_word_list", v11, v12, v13, v14, v15, v16, v17, v18);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  MEMORY[0x193ACC300](99, 0x800000018E465B20);
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4();
  sub_18E22EA38();
  result = sub_18E1CD52C();
  __break(1u);
  return result;
}

uint64_t static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListWithDefaultsTemplate()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.TokenOutputRetainList.ProofreadingRetainList(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.tokenoutputretainlist.defaults.template", v3, v4, v5, v6, v7, v8, v9, v10);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  MEMORY[0x193ACC300](93, 0x800000018E465BD0);
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4();
  sub_18E22EA38();
  result = sub_18E1CD52C();
  __break(1u);
  return result;
}

uint64_t static Catalog.ResourceBundle.SecureAnalytics.IntegrityDiagnoseModel()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.SecureAnalytics.Model.IntegrityDiagnoseModel(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.fm.integrity_diagnose.sa_v1.base", v4, v5, v6, v7, v8, v9, v10, v11);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  v3 = sub_18E223A10();
  MEMORY[0x193ACC300](v3);
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4();
  sub_18E22EA38();
  result = sub_18E1CD52C();
  __break(1u);
  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMExperimental()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental()();
  static Catalog.Resource.LLM.Model.CodeLMExperimental()();
  sub_18E23527C();
  sub_18E1E67A0(35);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV1()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV2()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV3()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV4()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV5()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail()();
  sub_18E23527C();
  sub_18E1E67A0(48);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV1()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV2()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV3()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV4()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV5()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLM()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLM()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV2()();
  static Catalog.Resource.LLM.Model.CodeLMV2()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV3()();
  static Catalog.Resource.LLM.Model.CodeLMV3()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV4()();
  static Catalog.Resource.LLM.Model.CodeLMV4()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DistilledMessagesAction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesAction()();
  sub_18E23527C();
  sub_18E1E67A0(38);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DistilledMessagesReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesReply()();
  sub_18E23527C();
  sub_18E1E67A0(37);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeSafetyGuardrail()();
  sub_18E23527C();
  sub_18E1E67A0(48);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.VisualGenerationQueryHandlingLite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer()();
  static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite()();
  sub_18E23527C();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DescribeYourEdit()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.DescribeYourEdit()();
  sub_18E246F88();
  sub_18E1E67A0(52);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ContentTagger()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ContentTagger()();
  sub_18E246F88();
  sub_18E1E67A0(55);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.LWOnDevicePlannerV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.LWOnDevicePlannerV1()();
  static Catalog.Resource.LLM.DraftModel.LWOnDevicePlannerV1()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PersonalizedSmartReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PersonalizedSmartReply()();
  static Catalog.Resource.LLM.DraftModel.PersonalizedSmartReply()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItemsV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems()();
  static Catalog.Resource.LLM.DraftModel.RemindersSuggestActionItems()();
  sub_18E1C7F10();
  sub_18E1E67A0(67);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3BV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3BV2()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3BV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(64);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItemsV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SuggestRecipeItems()();
  static Catalog.Resource.LLM.DraftModel.SuggestRecipeItems()();
  sub_18E1C7F10();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextExpert()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextExpert()();
  static Catalog.Resource.LLM.DraftModel.TextExpert()();
  sub_18E1C7F10();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerAutograder()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.InstructServerAutograder()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.BaseAdapter()();
  sub_18E246F88();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerDescribeYourEdit()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerDescribeYourEdit()();
  sub_18E246F88();
  sub_18E1E67A0(59);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.LWPlannerV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.LWPlannerV1()();
  static Catalog.Resource.LLM.DraftModel.LWPlannerV1()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPersonalizedSmartReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerPersonalizedSmartReply()();
  static Catalog.Resource.LLM.DraftModel.ServerPersonalizedSmartReply()();
  sub_18E1C7F10();
  sub_18E1E67A0(65);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPQAVerification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerPQAVerification()();
  sub_18E246F88();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMActionV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMActionV2()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMActionV2()();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(68);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase()();
  sub_18E23527C();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerificationBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.PQAVerificationBase()();
  sub_18E23527C();
  sub_18E1E67A0(38);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SummarizationTextSummarizerAjaxBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase()();
  sub_18E23527C();
  sub_18E1E67A0(61);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FoundationModelsPlatform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.FoundationModelsPlatformDummyTokenizer()();
  static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.NLRouterBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.NLRouterTokenizer()();
  static Catalog.Resource.LLM.Model.NLRouterBase()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ChatGPT()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.ChatGPTTokenizer()();
  static Catalog.Resource.LLM.Model.ChatGPT()();
  sub_18E23527C();
  sub_18E1E67A0(24);
}

uint64_t static Catalog.ResourceBundle.TokenGeneration.LLMCompileDraft.InstructFMApiThirdPartyCompileDraft()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.fm.language.instruct_3b.fm_api_third_party_compile.draft", v4, v5, v6, v7, v8, v9, v10, v11);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  v3 = sub_18E223A10();
  MEMORY[0x193ACC300](v3);
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4();
  sub_18E22EA38();
  result = sub_18E1CD52C();
  __break(1u);
  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLMDraft.TextEventExtractionDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextEventExtraction()();
  sub_18E1E67A0(61);
}

void static Catalog.ResourceBundle.TokenGeneration.LLMDraft.TextPersonExtractionDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()();
  sub_18E1E67A0(62);
}

void static Catalog.ResourceBundle.TokenGeneration.LLMDraft.TextunderstandingDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.Textunderstanding()();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Animation()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Animation()();
  sub_18E1E67A0(48);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Emoji()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Emoji()();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Illustration()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Illustration()();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.MessagesBackgrounds()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds()();
  sub_18E1E67A0(59);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedAnimation()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation()();
  sub_18E1E67A0(61);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedEmoji()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji()();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedIllustration()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration()();
  sub_18E1E67A0(64);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedSketch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch()();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedScribble()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble()();
  sub_18E1E67A0(66);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Refiner()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Refiner()();
  sub_18E1E67A0(46);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Sketch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Sketch()();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.SkinToneEmoji()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji()();
  sub_18E1E67A0(53);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Scribble()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Scribble()();
  sub_18E1E67A0(53);
}

uint64_t sub_18E29E04C()
{
  result = sub_18E29E06C();
  qword_1ED6A7DA0 = result;
  return result;
}

uint64_t sub_18E29E06C()
{
  sub_18E2706EC(&qword_1EABE1318, &unk_18E49EF10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49ED70;
  *(v0 + 32) = 0xD00000000000001ALL;
  *(v0 + 40) = 0x800000018E4659A0;
  *(v0 + 48) = sub_18E44E9AC();
  *(v0 + 56) = 0xD000000000000023;
  *(v0 + 64) = 0x800000018E450780;
  *(v0 + 72) = sub_18E44E9AC();
  *(v0 + 80) = 0xD000000000000028;
  *(v0 + 88) = 0x800000018E450EC0;
  *(v0 + 96) = sub_18E44E9AC();
  *(v0 + 104) = 0xD000000000000028;
  *(v0 + 112) = 0x800000018E450F50;
  *(v0 + 120) = sub_18E44E9AC();
  *(v0 + 128) = 0xD000000000000028;
  *(v0 + 136) = 0x800000018E450FE0;
  *(v0 + 144) = sub_18E44E9AC();
  *(v0 + 152) = 0xD000000000000028;
  *(v0 + 160) = 0x800000018E451070;
  *(v0 + 168) = sub_18E44E9AC();
  *(v0 + 176) = 0xD000000000000028;
  *(v0 + 184) = 0x800000018E451100;
  *(v0 + 192) = sub_18E44E9AC();
  *(v0 + 200) = 0xD000000000000030;
  *(v0 + 208) = 0x800000018E451190;
  *(v0 + 216) = sub_18E44E9AC();
  *(v0 + 224) = 0xD000000000000028;
  *(v0 + 232) = 0x800000018E451210;
  *(v0 + 240) = sub_18E44E9AC();
  *(v0 + 248) = 0xD000000000000028;
  *(v0 + 256) = 0x800000018E4512A0;
  *(v0 + 264) = sub_18E44E9AC();
  *(v0 + 272) = 0xD000000000000028;
  *(v0 + 280) = 0x800000018E451330;
  *(v0 + 288) = sub_18E44E9AC();
  *(v0 + 296) = 0xD000000000000028;
  *(v0 + 304) = 0x800000018E4513C0;
  *(v0 + 312) = sub_18E44E9AC();
  *(v0 + 320) = 0xD000000000000028;
  *(v0 + 328) = 0x800000018E451450;
  *(v0 + 336) = sub_18E44E9AC();
  *(v0 + 344) = 0xD000000000000022;
  *(v0 + 352) = 0x800000018E450750;
  *(v0 + 360) = sub_18E44E9AC();
  *(v0 + 368) = 0xD00000000000002DLL;
  *(v0 + 376) = 0x800000018E465C80;
  *(v0 + 384) = sub_18E44E9AC();
  *(v0 + 392) = 0xD000000000000029;
  *(v0 + 400) = 0x800000018E4508D0;
  *(v0 + 408) = sub_18E44E9AC();
  *(v0 + 416) = 0xD000000000000022;
  *(v0 + 424) = 0x800000018E450930;
  *(v0 + 432) = sub_18E44E9AC();
  *(v0 + 440) = 0xD000000000000022;
  *(v0 + 448) = 0x800000018E450960;
  *(v0 + 456) = sub_18E44E9AC();
  *(v0 + 464) = 0xD000000000000022;
  *(v0 + 472) = 0x800000018E450990;
  *(v0 + 480) = sub_18E44E9AC();
  *(v0 + 488) = 0xD000000000000026;
  *(v0 + 496) = 0x800000018E465CB0;
  *(v0 + 504) = sub_18E44E9AC();
  *(v0 + 512) = 0xD000000000000025;
  *(v0 + 520) = 0x800000018E465CE0;
  *(v0 + 528) = sub_18E44E9AC();
  *(v0 + 536) = 0xD00000000000002ALL;
  *(v0 + 544) = 0x800000018E451610;
  *(v0 + 552) = sub_18E44E9AC();
  *(v0 + 560) = 0xD000000000000030;
  *(v0 + 568) = 0x800000018E4509C0;
  *(v0 + 576) = sub_18E44E9AC();
  *(v0 + 584) = 0xD00000000000002CLL;
  *(v0 + 592) = 0x800000018E451640;
  *(v0 + 600) = sub_18E44E9AC();
  *(v0 + 608) = 0xD000000000000039;
  *(v0 + 616) = 0x800000018E4516B0;
  *(v0 + 624) = sub_18E44E9AC();
  *(v0 + 632) = 0xD000000000000038;
  *(v0 + 640) = 0x800000018E4516F0;
  *(v0 + 648) = sub_18E44E9AC();
  *(v0 + 656) = 0xD000000000000038;
  *(v0 + 664) = 0x800000018E451730;
  *(v0 + 672) = sub_18E44E9AC();
  *(v0 + 680) = 0xD000000000000042;
  *(v0 + 688) = 0x800000018E4517B0;
  *(v0 + 696) = sub_18E44E9AC();
  *(v0 + 704) = 0xD000000000000033;
  *(v0 + 712) = 0x800000018E451840;
  *(v0 + 720) = sub_18E44E9AC();
  *(v0 + 728) = 0xD000000000000032;
  *(v0 + 736) = 0x800000018E451880;
  *(v0 + 744) = sub_18E44E9AC();
  *(v0 + 752) = 0xD00000000000002FLL;
  *(v0 + 760) = 0x800000018E4518C0;
  *(v0 + 768) = sub_18E44E9AC();
  *(v0 + 776) = 0xD00000000000003ALL;
  *(v0 + 784) = 0x800000018E4518F0;
  *(v0 + 792) = sub_18E44E9AC();
  *(v0 + 800) = 0xD00000000000002CLL;
  *(v0 + 808) = 0x800000018E451990;
  *(v0 + 816) = sub_18E44E9AC();
  *(v0 + 824) = 0xD00000000000002DLL;
  *(v0 + 832) = 0x800000018E4519C0;
  *(v0 + 840) = sub_18E44E9AC();
  *(v0 + 848) = 0xD000000000000034;
  *(v0 + 856) = 0x800000018E4519F0;
  *(v0 + 864) = sub_18E44E9AC();
  *(v0 + 872) = 0xD000000000000037;
  *(v0 + 880) = 0x800000018E451A30;
  *(v0 + 888) = sub_18E44E9AC();
  *(v0 + 896) = 0xD000000000000042;
  *(v0 + 904) = 0x800000018E451A70;
  *(v0 + 912) = sub_18E44E9AC();
  *(v0 + 920) = 0xD00000000000002ALL;
  *(v0 + 928) = 0x800000018E451B20;
  *(v0 + 936) = sub_18E44E9AC();
  *(v0 + 944) = 0xD000000000000038;
  *(v0 + 952) = 0x800000018E451B50;
  *(v0 + 960) = sub_18E44E9AC();
  *(v0 + 968) = 0xD000000000000043;
  *(v0 + 976) = 0x800000018E451B90;
  *(v0 + 984) = sub_18E44E9AC();
  *(v0 + 992) = 0xD00000000000002ELL;
  *(v0 + 1000) = 0x800000018E451C40;
  *(v0 + 1008) = sub_18E44E9AC();
  *(v0 + 1016) = 0xD000000000000039;
  *(v0 + 1024) = 0x800000018E451CA0;
  *(v0 + 1032) = sub_18E44E9AC();
  *(v0 + 1040) = 0xD000000000000032;
  *(v0 + 1048) = 0x800000018E451CE0;
  *(v0 + 1056) = sub_18E44E9AC();
  *(v0 + 1064) = 0xD00000000000003BLL;
  *(v0 + 1072) = 0x800000018E451D60;
  *(v0 + 1080) = sub_18E44E9AC();
  *(v0 + 1088) = 0xD00000000000002DLL;
  *(v0 + 1096) = 0x800000018E451DA0;
  *(v0 + 1104) = sub_18E44E9AC();
  *(v0 + 1112) = 0xD000000000000035;
  *(v0 + 1120) = 0x800000018E451DD0;
  *(v0 + 1128) = sub_18E44E9AC();
  *(v0 + 1136) = 0xD000000000000026;
  *(v0 + 1144) = 0x800000018E450B50;
  *(v0 + 1152) = sub_18E44E9AC();
  *(v0 + 1160) = 0xD000000000000033;
  *(v0 + 1168) = 0x800000018E451EB0;
  *(v0 + 1176) = sub_18E44E9AC();
  *(v0 + 1184) = 0xD00000000000002ELL;
  *(v0 + 1192) = 0x800000018E451F30;
  *(v0 + 1200) = sub_18E44E9AC();
  *(v0 + 1208) = 0xD000000000000033;
  *(v0 + 1216) = 0x800000018E451FA0;
  *(v0 + 1224) = sub_18E44E9AC();
  *(v0 + 1232) = 0xD000000000000031;
  *(v0 + 1240) = 0x800000018E451FE0;
  *(v0 + 1248) = sub_18E44E9AC();
  *(v0 + 1256) = 0xD000000000000034;
  *(v0 + 1264) = 0x800000018E452060;
  *(v0 + 1272) = sub_18E44E9AC();
  *(v0 + 1280) = 0xD000000000000031;
  *(v0 + 1288) = 0x800000018E4520E0;
  *(v0 + 1296) = sub_18E44E9AC();
  *(v0 + 1304) = 0xD000000000000037;
  *(v0 + 1312) = 0x800000018E452120;
  *(v0 + 1320) = sub_18E44E9AC();
  *(v0 + 1328) = 0xD000000000000030;
  *(v0 + 1336) = 0x800000018E452160;
  *(v0 + 1344) = sub_18E44E9AC();
  *(v0 + 1352) = 0xD000000000000042;
  *(v0 + 1360) = 0x800000018E4521E0;
  *(v0 + 1368) = sub_18E44E9AC();
  *(v0 + 1376) = 0xD00000000000002FLL;
  *(v0 + 1384) = 0x800000018E452230;
  *(v0 + 1392) = sub_18E44E9AC();
  *(v0 + 1400) = 0xD000000000000040;
  *(v0 + 1408) = 0x800000018E4522E0;
  *(v0 + 1416) = sub_18E44E9AC();
  *(v0 + 1424) = 0xD00000000000003CLL;
  *(v0 + 1432) = 0x800000018E452380;
  *(v0 + 1440) = sub_18E44E9AC();
  *(v0 + 1448) = 0xD00000000000002FLL;
  *(v0 + 1456) = 0x800000018E452410;
  *(v0 + 1464) = sub_18E44E9AC();
  *(v0 + 1472) = 0xD00000000000002FLL;
  *(v0 + 1480) = 0x800000018E452480;
  *(v0 + 1488) = sub_18E44E9AC();
  *(v0 + 1496) = 0xD00000000000002CLL;
  *(v0 + 1504) = 0x800000018E4524F0;
  *(v0 + 1512) = sub_18E44E9AC();
  *(v0 + 1520) = 0xD00000000000003CLL;
  *(v0 + 1528) = 0x800000018E452560;
  *(v0 + 1536) = sub_18E44E9AC();
  *(v0 + 1544) = 0xD00000000000003ELL;
  *(v0 + 1552) = 0x800000018E4525F0;
  *(v0 + 1560) = sub_18E44E9AC();
  *(v0 + 1568) = 0xD00000000000002FLL;
  *(v0 + 1576) = 0x800000018E452680;
  *(v0 + 1584) = sub_18E44E9AC();
  *(v0 + 1592) = 0xD000000000000031;
  *(v0 + 1600) = 0x800000018E4526F0;
  *(v0 + 1608) = sub_18E44E9AC();
  *(v0 + 1616) = 0xD000000000000030;
  *(v0 + 1624) = 0x800000018E452770;
  *(v0 + 1632) = sub_18E44E9AC();
  *(v0 + 1640) = 0xD00000000000002ALL;
  *(v0 + 1648) = 0x800000018E4527F0;
  *(v0 + 1656) = sub_18E44E9AC();
  *(v0 + 1664) = 0xD00000000000002BLL;
  *(v0 + 1672) = 0x800000018E452820;
  *(v0 + 1680) = sub_18E44E9AC();
  *(v0 + 1688) = 0xD00000000000003ALL;
  *(v0 + 1696) = 0x800000018E452850;
  *(v0 + 1704) = sub_18E44E9AC();
  *(v0 + 1712) = 0xD000000000000041;
  *(v0 + 1720) = 0x800000018E4528E0;
  *(v0 + 1728) = sub_18E44E9AC();
  *(v0 + 1736) = 0xD000000000000042;
  *(v0 + 1744) = 0x800000018E452930;
  *(v0 + 1752) = sub_18E44E9AC();
  *(v0 + 1760) = 0xD000000000000048;
  *(v0 + 1768) = 0x800000018E452980;
  *(v0 + 1776) = sub_18E44E9AC();
  *(v0 + 1784) = 0xD00000000000003FLL;
  *(v0 + 1792) = 0x800000018E452A20;
  *(v0 + 1800) = sub_18E44E9AC();
  *(v0 + 1808) = 0xD000000000000045;
  *(v0 + 1816) = 0x800000018E452AB0;
  *(v0 + 1824) = sub_18E44E9AC();
  *(v0 + 1832) = 0xD00000000000003DLL;
  *(v0 + 1840) = 0x800000018E452B50;
  *(v0 + 1848) = sub_18E44E9AC();
  *(v0 + 1856) = 0xD000000000000037;
  *(v0 + 1864) = 0x800000018E452BE0;
  *(v0 + 1872) = sub_18E44E9AC();
  *(v0 + 1880) = 0xD00000000000003ALL;
  *(v0 + 1888) = 0x800000018E465D10;
  *(v0 + 1896) = sub_18E44E9AC();
  *(v0 + 1904) = 0xD00000000000002CLL;
  *(v0 + 1912) = 0x800000018E452C60;
  *(v0 + 1920) = sub_18E44E9AC();
  *(v0 + 1928) = 0xD00000000000002CLL;
  *(v0 + 1936) = 0x800000018E452CD0;
  *(v0 + 1944) = sub_18E44E9AC();
  *(v0 + 1952) = 0xD00000000000002CLL;
  *(v0 + 1960) = 0x800000018E452D40;
  *(v0 + 1968) = sub_18E44E9AC();
  *(v0 + 1976) = 0xD000000000000033;
  *(v0 + 1984) = 0x800000018E452DB0;
  *(v0 + 1992) = sub_18E44E9AC();
  *(v0 + 2000) = 0xD000000000000035;
  *(v0 + 2008) = 0x800000018E452E30;
  *(v0 + 2016) = sub_18E44E9AC();
  *(v0 + 2024) = 0xD000000000000040;
  *(v0 + 2032) = 0x800000018E452EB0;
  *(v0 + 2040) = sub_18E44E9AC();
  *(v0 + 2048) = 0xD000000000000043;
  *(v0 + 2056) = 0x800000018E465D50;
  *(v0 + 2064) = sub_18E44E9AC();
  *(v0 + 2072) = 0xD000000000000038;
  *(v0 + 2080) = 0x800000018E452F50;
  *(v0 + 2088) = sub_18E44E9AC();
  *(v0 + 2096) = 0xD000000000000038;
  *(v0 + 2104) = 0x800000018E452FD0;
  *(v0 + 2112) = sub_18E44E9AC();
  *(v0 + 2120) = 0xD000000000000038;
  *(v0 + 2128) = 0x800000018E453050;
  *(v0 + 2136) = sub_18E44E9AC();
  *(v0 + 2144) = 0xD000000000000032;
  *(v0 + 2152) = 0x800000018E4530D0;
  *(v0 + 2160) = sub_18E44E9AC();
  *(v0 + 2168) = 0xD00000000000003CLL;
  *(v0 + 2176) = 0x800000018E453150;
  *(v0 + 2184) = sub_18E44E9AC();
  *(v0 + 2192) = 0xD00000000000003DLL;
  *(v0 + 2200) = 0x800000018E4531E0;
  *(v0 + 2208) = sub_18E44E9AC();
  *(v0 + 2216) = 0xD000000000000040;
  *(v0 + 2224) = 0x800000018E453270;
  *(v0 + 2232) = sub_18E44E9AC();
  *(v0 + 2240) = 0xD000000000000033;
  *(v0 + 2248) = 0x800000018E453310;
  *(v0 + 2256) = sub_18E44E9AC();
  *(v0 + 2264) = 0xD000000000000037;
  *(v0 + 2272) = 0x800000018E453390;
  *(v0 + 2280) = sub_18E44E9AC();
  *(v0 + 2288) = 0xD000000000000037;
  *(v0 + 2296) = 0x800000018E4533D0;
  *(v0 + 2304) = sub_18E44E9AC();
  *(v0 + 2312) = 0xD000000000000036;
  *(v0 + 2320) = 0x800000018E453450;
  *(v0 + 2328) = sub_18E44E9AC();
  *(v0 + 2336) = 0xD000000000000039;
  *(v0 + 2344) = 0x800000018E465DA0;
  *(v0 + 2352) = sub_18E44E9AC();
  *(v0 + 2360) = 0xD00000000000002FLL;
  *(v0 + 2368) = 0x800000018E4534D0;
  *(v0 + 2376) = sub_18E44E9AC();
  *(v0 + 2384) = 0xD000000000000032;
  *(v0 + 2392) = 0x800000018E453540;
  *(v0 + 2400) = sub_18E44E9AC();
  *(v0 + 2408) = 0xD000000000000035;
  *(v0 + 2416) = 0x800000018E4535C0;
  *(v0 + 2424) = sub_18E44E9AC();
  *(v0 + 2432) = 0xD00000000000002CLL;
  *(v0 + 2440) = 0x800000018E453640;
  *(v0 + 2448) = sub_18E44E9AC();
  *(v0 + 2456) = 0xD000000000000037;
  *(v0 + 2464) = 0x800000018E453670;
  *(v0 + 2472) = sub_18E44E9AC();
  *(v0 + 2480) = 0xD00000000000003DLL;
  *(v0 + 2488) = 0x800000018E4536B0;
  *(v0 + 2496) = sub_18E44E9AC();
  *(v0 + 2504) = 0xD00000000000002DLL;
  *(v0 + 2512) = 0x800000018E4536F0;
  *(v0 + 2520) = sub_18E44E9AC();
  *(v0 + 2528) = 0xD000000000000038;
  *(v0 + 2536) = 0x800000018E453760;
  *(v0 + 2544) = sub_18E44E9AC();
  *(v0 + 2552) = 0xD00000000000003ELL;
  *(v0 + 2560) = 0x800000018E4537A0;
  *(v0 + 2568) = sub_18E44E9AC();
  *(v0 + 2576) = 0xD000000000000031;
  *(v0 + 2584) = 0x800000018E4537E0;
  *(v0 + 2592) = sub_18E44E9AC();
  *(v0 + 2600) = 0xD00000000000003ALL;
  *(v0 + 2608) = 0x800000018E453860;
  *(v0 + 2616) = sub_18E44E9AC();
  *(v0 + 2624) = 0xD00000000000002DLL;
  *(v0 + 2632) = 0x800000018E4538A0;
  *(v0 + 2640) = sub_18E44E9AC();
  *(v0 + 2648) = 0xD000000000000030;
  *(v0 + 2656) = 0x800000018E465DE0;
  *(v0 + 2664) = sub_18E44E9AC();
  *(v0 + 2672) = 0xD00000000000002ELL;
  *(v0 + 2680) = 0x800000018E453940;
  *(v0 + 2688) = sub_18E44E9AC();
  *(v0 + 2696) = 0xD00000000000002DLL;
  *(v0 + 2704) = 0x800000018E450AB0;
  *(v0 + 2712) = sub_18E44E9AC();
  *(v0 + 2720) = 0xD000000000000038;
  *(v0 + 2728) = 0x800000018E453970;
  *(v0 + 2736) = sub_18E44E9AC();
  *(v0 + 2744) = 0xD000000000000031;
  *(v0 + 2752) = 0x800000018E4539B0;
  *(v0 + 2760) = sub_18E44E9AC();
  *(v0 + 2768) = 0xD000000000000040;
  *(v0 + 2776) = 0x800000018E453A20;
  *(v0 + 2784) = sub_18E44E9AC();
  *(v0 + 2792) = 0xD000000000000039;
  *(v0 + 2800) = 0x800000018E453A70;
  *(v0 + 2808) = sub_18E44E9AC();
  *(v0 + 2816) = 0xD000000000000033;
  *(v0 + 2824) = 0x800000018E453AF0;
  *(v0 + 2832) = sub_18E44E9AC();
  *(v0 + 2840) = 0xD00000000000002DLL;
  *(v0 + 2848) = 0x800000018E450BB0;
  *(v0 + 2856) = sub_18E44E9AC();
  *(v0 + 2864) = 0xD00000000000003ALL;
  *(v0 + 2872) = 0x800000018E453B70;
  *(v0 + 2880) = sub_18E44E9AC();
  *(v0 + 2888) = 0xD000000000000035;
  *(v0 + 2896) = 0x800000018E453C00;
  *(v0 + 2904) = sub_18E44E9AC();
  *(v0 + 2912) = 0xD00000000000003BLL;
  *(v0 + 2920) = 0x800000018E453C80;
  *(v0 + 2928) = sub_18E44E9AC();
  *(v0 + 2936) = 0xD00000000000003ELL;
  *(v0 + 2944) = 0x800000018E453CC0;
  *(v0 + 2952) = sub_18E44E9AC();
  *(v0 + 2960) = 0xD000000000000036;
  *(v0 + 2968) = 0x800000018E453D50;
  *(v0 + 2976) = sub_18E44E9AC();
  *(v0 + 2984) = 0xD000000000000041;
  *(v0 + 2992) = 0x800000018E453E10;
  *(v0 + 3000) = sub_18E44E9AC();
  *(v0 + 3008) = 0xD000000000000036;
  *(v0 + 3016) = 0x800000018E453EB0;
  *(v0 + 3024) = sub_18E44E9AC();
  *(v0 + 3032) = 0xD000000000000036;
  *(v0 + 3040) = 0x800000018E453F30;
  *(v0 + 3048) = sub_18E44E9AC();
  *(v0 + 3056) = 0xD000000000000043;
  *(v0 + 3064) = 0x800000018E453FB0;
  *(v0 + 3072) = sub_18E44E9AC();
  *(v0 + 3080) = 0xD000000000000045;
  *(v0 + 3088) = 0x800000018E454050;
  *(v0 + 3096) = sub_18E44E9AC();
  *(v0 + 3104) = 0xD000000000000036;
  *(v0 + 3112) = 0x800000018E4540F0;
  *(v0 + 3120) = sub_18E44E9AC();
  *(v0 + 3128) = 0xD00000000000003ELL;
  *(v0 + 3136) = 0x800000018E454170;
  *(v0 + 3144) = sub_18E44E9AC();
  *(v0 + 3152) = 0xD000000000000031;
  *(v0 + 3160) = 0x800000018E454200;
  *(v0 + 3168) = sub_18E44E9AC();
  *(v0 + 3176) = 0xD00000000000003FLL;
  *(v0 + 3184) = 0x800000018E454240;
  *(v0 + 3192) = sub_18E44E9AC();
  *(v0 + 3200) = 0xD00000000000003ELL;
  *(v0 + 3208) = 0x800000018E4542D0;
  *(v0 + 3216) = sub_18E44E9AC();
  *(v0 + 3224) = 0xD00000000000003ALL;
  *(v0 + 3232) = 0x800000018E454360;
  *(v0 + 3240) = sub_18E44E9AC();
  *(v0 + 3248) = 0xD000000000000038;
  *(v0 + 3256) = 0x800000018E4543F0;
  *(v0 + 3264) = sub_18E44E9AC();
  *(v0 + 3272) = 0xD00000000000003DLL;
  *(v0 + 3280) = 0x800000018E4630D0;
  *(v0 + 3288) = sub_18E44E9AC();
  *(v0 + 3296) = 0xD000000000000047;
  *(v0 + 3304) = 0x800000018E454470;
  *(v0 + 3312) = sub_18E44E9AC();
  *(v0 + 3320) = 0xD00000000000004ALL;
  *(v0 + 3328) = 0x800000018E4544C0;
  *(v0 + 3336) = sub_18E44E9AC();
  *(v0 + 3344) = 0xD000000000000041;
  *(v0 + 3352) = 0x800000018E454510;
  *(v0 + 3360) = sub_18E44E9AC();
  *(v0 + 3368) = 0xD000000000000036;
  *(v0 + 3376) = 0x800000018E4545B0;
  *(v0 + 3384) = sub_18E44E9AC();
  *(v0 + 3392) = 0xD000000000000047;
  *(v0 + 3400) = 0x800000018E454630;
  *(v0 + 3408) = sub_18E44E9AC();
  *(v0 + 3416) = 0xD00000000000004ALL;
  *(v0 + 3424) = 0x800000018E4546D0;
  *(v0 + 3432) = sub_18E44E9AC();
  *(v0 + 3440) = 0xD000000000000046;
  *(v0 + 3448) = 0x800000018E454780;
  *(v0 + 3456) = sub_18E44E9AC();
  *(v0 + 3464) = 0xD000000000000049;
  *(v0 + 3472) = 0x800000018E454820;
  *(v0 + 3480) = sub_18E44E9AC();
  *(v0 + 3488) = 0xD000000000000049;
  *(v0 + 3496) = 0x800000018E4548C0;
  *(v0 + 3504) = sub_18E44E9AC();
  *(v0 + 3512) = 0xD00000000000004CLL;
  *(v0 + 3520) = 0x800000018E454960;
  *(v0 + 3528) = sub_18E44E9AC();
  *(v0 + 3536) = 0xD00000000000004FLL;
  *(v0 + 3544) = 0x800000018E454A10;
  *(v0 + 3552) = sub_18E44E9AC();
  *(v0 + 3560) = 0xD00000000000004FLL;
  *(v0 + 3568) = 0x800000018E454AC0;
  *(v0 + 3576) = sub_18E44E9AC();
  *(v0 + 3584) = 0xD000000000000044;
  *(v0 + 3592) = 0x800000018E454B70;
  *(v0 + 3600) = sub_18E44E9AC();
  *(v0 + 3608) = 0xD000000000000047;
  *(v0 + 3616) = 0x800000018E454C10;
  *(v0 + 3624) = sub_18E44E9AC();
  *(v0 + 3632) = 0xD000000000000030;
  *(v0 + 3640) = 0x800000018E454CB0;
  *(v0 + 3648) = sub_18E44E9AC();
  *(v0 + 3656) = 0xD000000000000033;
  *(v0 + 3664) = 0x800000018E454D30;
  *(v0 + 3672) = sub_18E44E9AC();
  *(v0 + 3680) = 0xD000000000000033;
  *(v0 + 3688) = 0x800000018E454DB0;
  *(v0 + 3696) = sub_18E44E9AC();
  *(v0 + 3704) = 0xD000000000000033;
  *(v0 + 3712) = 0x800000018E454E30;
  *(v0 + 3720) = sub_18E44E9AC();
  *(v0 + 3728) = 0xD000000000000033;
  *(v0 + 3736) = 0x800000018E454EB0;
  *(v0 + 3744) = sub_18E44E9AC();
  *(v0 + 3752) = 0xD000000000000033;
  *(v0 + 3760) = 0x800000018E454F30;
  *(v0 + 3768) = sub_18E44E9AC();
  *(v0 + 3776) = 0xD000000000000039;
  *(v0 + 3784) = 0x800000018E454FB0;
  *(v0 + 3792) = sub_18E44E9AC();
  *(v0 + 3800) = 0xD00000000000003ALL;
  *(v0 + 3808) = 0x800000018E454FF0;
  *(v0 + 3816) = sub_18E44E9AC();
  *(v0 + 3824) = 0xD00000000000003CLL;
  *(v0 + 3832) = 0x800000018E455080;
  *(v0 + 3840) = sub_18E44E9AC();
  *(v0 + 3848) = 0xD000000000000048;
  *(v0 + 3856) = 0x800000018E455110;
  *(v0 + 3864) = sub_18E44E9AC();
  *(v0 + 3872) = 0xD00000000000003CLL;
  *(v0 + 3880) = 0x800000018E4551B0;
  *(v0 + 3888) = sub_18E44E9AC();
  *(v0 + 3896) = 0xD00000000000003FLL;
  *(v0 + 3904) = 0x800000018E455240;
  *(v0 + 3912) = sub_18E44E9AC();
  *(v0 + 3920) = 0xD00000000000003FLL;
  *(v0 + 3928) = 0x800000018E4552D0;
  *(v0 + 3936) = sub_18E44E9AC();
  *(v0 + 3944) = 0xD00000000000003FLL;
  *(v0 + 3952) = 0x800000018E455360;
  *(v0 + 3960) = sub_18E44E9AC();
  *(v0 + 3968) = 0xD00000000000003FLL;
  *(v0 + 3976) = 0x800000018E4553F0;
  *(v0 + 3984) = sub_18E44E9AC();
  *(v0 + 3992) = 0xD000000000000043;
  *(v0 + 4000) = 0x800000018E455480;
  *(v0 + 4008) = sub_18E44E9AC();
  *(v0 + 4016) = 0xD000000000000041;
  *(v0 + 4024) = 0x800000018E455520;
  *(v0 + 4032) = sub_18E44E9AC();
  *(v0 + 4040) = 0xD000000000000044;
  *(v0 + 4048) = 0x800000018E4555C0;
  *(v0 + 4056) = sub_18E44E9AC();
  *(v0 + 4064) = 0xD00000000000003ELL;
  *(v0 + 4072) = 0x800000018E455660;
  *(v0 + 4080) = sub_18E44E9AC();
  *(v0 + 4088) = 0xD000000000000037;
  *(v0 + 4096) = 0x800000018E4556F0;
  *(v0 + 4104) = sub_18E44E9AC();
  *(v0 + 4112) = 0xD000000000000042;
  *(v0 + 4120) = 0x800000018E455770;
  *(v0 + 4128) = sub_18E44E9AC();
  *(v0 + 4136) = 0xD000000000000039;
  *(v0 + 4144) = 0x800000018E455810;
  *(v0 + 4152) = sub_18E44E9AC();
  *(v0 + 4160) = 0xD00000000000003CLL;
  *(v0 + 4168) = 0x800000018E455890;
  *(v0 + 4176) = sub_18E44E9AC();
  *(v0 + 4184) = 0xD000000000000038;
  *(v0 + 4192) = 0x800000018E455920;
  *(v0 + 4200) = sub_18E44E9AC();
  *(v0 + 4208) = 0xD00000000000003CLL;
  *(v0 + 4216) = 0x800000018E463110;
  *(v0 + 4224) = sub_18E44E9AC();
  *(v0 + 4232) = 0xD000000000000038;
  *(v0 + 4240) = 0x800000018E4559E0;
  *(v0 + 4248) = sub_18E44E9AC();
  *(v0 + 4256) = 0xD000000000000033;
  *(v0 + 4264) = 0x800000018E450BE0;
  *(v0 + 4272) = sub_18E44E9AC();
  *(v0 + 4280) = 0xD000000000000026;
  *(v0 + 4288) = 0x800000018E465E20;
  *(v0 + 4296) = sub_18E44E9AC();
  *(v0 + 4304) = 0xD00000000000003DLL;
  *(v0 + 4312) = 0x800000018E455A90;
  *(v0 + 4320) = sub_18E44E9AC();
  *(v0 + 4328) = 0xD000000000000030;
  *(v0 + 4336) = 0x800000018E455AD0;
  *(v0 + 4344) = sub_18E44E9AC();
  *(v0 + 4352) = 0xD00000000000002BLL;
  *(v0 + 4360) = 0x800000018E455B10;
  *(v0 + 4368) = sub_18E44E9AC();
  *(v0 + 4376) = 0xD00000000000002CLL;
  *(v0 + 4384) = 0x800000018E455B40;
  *(v0 + 4392) = sub_18E44E9AC();
  *(v0 + 4400) = 0xD000000000000033;
  *(v0 + 4408) = 0x800000018E455B70;
  *(v0 + 4416) = sub_18E44E9AC();
  *(v0 + 4424) = 0xD00000000000003BLL;
  *(v0 + 4432) = 0x800000018E455BB0;
  *(v0 + 4440) = sub_18E44E9AC();
  *(v0 + 4448) = 0xD00000000000003DLL;
  *(v0 + 4456) = 0x800000018E455BF0;
  *(v0 + 4464) = sub_18E44E9AC();
  *(v0 + 4472) = 0xD000000000000039;
  *(v0 + 4480) = 0x800000018E455C30;
  *(v0 + 4488) = sub_18E44E9AC();
  *(v0 + 4496) = 0xD000000000000040;
  *(v0 + 4504) = 0x800000018E455C70;
  *(v0 + 4512) = sub_18E44E9AC();
  *(v0 + 4520) = 0xD00000000000003ALL;
  *(v0 + 4528) = 0x800000018E455CC0;
  *(v0 + 4536) = sub_18E44E9AC();
  *(v0 + 4544) = 0xD000000000000042;
  *(v0 + 4552) = 0x800000018E455D00;
  *(v0 + 4560) = sub_18E44E9AC();
  *(v0 + 4568) = 0xD00000000000002ELL;
  *(v0 + 4576) = 0x800000018E455D50;
  *(v0 + 4584) = sub_18E44E9AC();
  *(v0 + 4592) = 0xD00000000000002DLL;
  *(v0 + 4600) = 0x800000018E455D80;
  *(v0 + 4608) = sub_18E44E9AC();
  *(v0 + 4616) = 0xD000000000000035;
  *(v0 + 4624) = 0x800000018E455DB0;
  *(v0 + 4632) = sub_18E44E9AC();
  *(v0 + 4640) = 0xD000000000000035;
  *(v0 + 4648) = 0x800000018E455DF0;
  *(v0 + 4656) = sub_18E44E9AC();
  *(v0 + 4664) = 0xD000000000000022;
  *(v0 + 4672) = 0x800000018E465E50;
  *(v0 + 4680) = sub_18E44E9AC();
  *(v0 + 4688) = 0xD000000000000022;
  *(v0 + 4696) = 0x800000018E458D20;
  *(v0 + 4704) = sub_18E44E9AC();
  *(v0 + 4712) = 0xD000000000000018;
  *(v0 + 4720) = 0x800000018E458D80;
  *(v0 + 4728) = sub_18E44E9AC();
  *(v0 + 4736) = 0xD00000000000002CLL;
  *(v0 + 4744) = 0x800000018E458DD0;
  *(v0 + 4752) = sub_18E44E9AC();
  *(v0 + 4760) = 0xD000000000000029;
  *(v0 + 4768) = 0x800000018E458E70;
  *(v0 + 4776) = sub_18E44E9AC();
  *(v0 + 4784) = 0xD00000000000002ELL;
  *(v0 + 4792) = 0x800000018E465A40;
  *(v0 + 4800) = sub_18E44E9AC();
  *(v0 + 4808) = 0xD000000000000025;
  *(v0 + 4816) = 0x800000018E465A10;
  *(v0 + 4824) = sub_18E44E9AC();
  *(v0 + 4832) = 0xD00000000000002FLL;
  *(v0 + 4840) = 0x800000018E465AA0;
  *(v0 + 4848) = sub_18E44E9AC();
  *(v0 + 4856) = 0xD000000000000026;
  *(v0 + 4864) = 0x800000018E465A70;
  *(v0 + 4872) = sub_18E44E9AC();
  *(v0 + 4880) = 0xD00000000000004ELL;
  *(v0 + 4888) = 0x800000018E465AD0;
  *(v0 + 4896) = sub_18E44E9AC();
  *(v0 + 4904) = 0xD000000000000031;
  *(v0 + 4912) = 0x800000018E465B90;
  *(v0 + 4920) = sub_18E44E9AC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  v1 = sub_18E44E9AC();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  return v1;
}

uint64_t static Catalog.ResourceBundle.allBundleResourceConfigurationIDs.getter()
{
  if (qword_1ED6A7EF0 != -1)
  {
    swift_once();
  }
}

double static Catalog.ResourceBundle.createResourceBundleVariant(configurationIdentifier:resourceVariants:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_18E1D44C0();
  v8 = v6 == 0xD00000000000001ALL && v3 == v7;
  if (v8 || (v9 = v7, v10 = v6, (sub_18E1E1530() & 1) != 0))
  {
    sub_18E2352DC(0xD000000000000016, "embeddingDenyListVariant");
    sub_18E228788();
    static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v11);
    sub_18E1D5E64();
    if (v2)
    {
LABEL_7:

      return result;
    }

    *(a2 + 24) = &type metadata for AssetBackedDefaultOverridesBundle;
    *(a2 + 32) = sub_18E1D3DD8();
    sub_18E1E1950();
    v13 = swift_allocObject();
    sub_18E1CFC6C(v13);
    sub_18E220D78();
    AssetBackedDefaultOverridesBundle.init(configurationIdentifier:defaultDenyList:)();
    return result;
  }

  sub_18E1D44C0();
  v14 = 0xD000000000000023;
  v15 = v10 == 0xD000000000000023 && v3 == v9;
  if (v15 || (sub_18E1E1530() & 1) != 0)
  {
    v16 = sub_18E221C48("tokenizerVariant");
    if (!v17)
    {
      v16 = 0x636972656E6567;
    }

    static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental(variant:)(v16);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    v18 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v18, v19);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMExperimental(variant:)(v20);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v21 = swift_allocObject();
    sub_18E1C6378(v21);
    goto LABEL_18;
  }

  sub_18E1EA520();
  v3 = 0xD000000000000028;
  v31 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v31 || (sub_18E1D6238() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer(variant:)(v32);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v33 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v33, v34);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV1(variant:)(v35);
    goto LABEL_34;
  }

  sub_18E1EA520();
  v36 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v36 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer(variant:)(v37);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v38 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v38, v39);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV2(variant:)(v40);
    goto LABEL_34;
  }

  sub_18E1EA520();
  v42 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v42 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer(variant:)(v43);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v44 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v44, v45);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV3(variant:)(v46);
    goto LABEL_34;
  }

  sub_18E1EA520();
  v47 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v47 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer(variant:)(v48);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v49 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v49, v50);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV4(variant:)(v51);
    goto LABEL_34;
  }

  sub_18E1EA520();
  v52 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v52 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer(variant:)(v53);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v54 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v54, v55);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV5(variant:)(v56);
    goto LABEL_34;
  }

  v2624 = v2;
  sub_18E1EA520();
  v57 = v10 == 0xD000000000000030 && v9 == 0x636972656E6567;
  if (v57 || (sub_18E1D6238() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer(variant:)(v58);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail(variant:)(v59);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v60 = swift_allocObject();
    sub_18E1C6378(v60);
    goto LABEL_35;
  }

  sub_18E1EA520();
  v61 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v61 || (sub_18E1D6238() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer(variant:)(v62);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV1(variant:)(v63);
    goto LABEL_34;
  }

  sub_18E1D4274();
  v71 = v8 && v9 == 0x636972656E6567;
  if (v71 || (sub_18E1D5BF4(v64, v65, 0xD000000000000028, v66, v67, v68, v69, v70, v1422, v1425, v1467, v1507, v1549, v1591, v1633, v1673, v1715, v1757, v1798, v1839, v1877, v1918, v1959, v1999, v2040, v2081, v2122, v2163, v2204, v2245, v2286, v2328, v2368, v2410, v2451, v2492, v2533, v10), (sub_18E1D6238() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer(variant:)(v72);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV2(variant:)(v73);
    goto LABEL_34;
  }

  sub_18E1D4274();
  v81 = v8 && v9 == 0x636972656E6567;
  if (v81 || (sub_18E1D5BF4(v74, v75, 0xD000000000000028, v76, v77, v78, v79, v80, v1422, v1426, v1468, v1508, v1550, v1592, v1634, v1674, v1716, v1758, v1799, v1840, v1878, v1919, v1960, v2000, v2041, v2082, v2123, v2164, v2205, v2246, v2287, v2329, v2369, v2411, v2452, v2493, v2534, v2575), (sub_18E1D6238() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer(variant:)(v82);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV3(variant:)(v83);
    goto LABEL_34;
  }

  sub_18E1D4274();
  v91 = v8 && v9 == 0x636972656E6567;
  if (v91 || (sub_18E1D5BF4(v84, v85, 0xD000000000000028, v86, v87, v88, v89, v90, v1422, v1427, v1469, v1509, v1551, v1593, v1635, v1675, v1717, v1759, v1800, v1841, v1879, v1920, v1961, v2001, v2042, v2083, v2124, v2165, v2206, v2247, v2288, v2330, v2370, v2412, v2453, v2494, v2535, v2576), (sub_18E1D6238() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer(variant:)(v92);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV4(variant:)(v93);
    goto LABEL_34;
  }

  sub_18E1D4274();
  v101 = v8 && v9 == 0x636972656E6567;
  if (v101 || (sub_18E1D5BF4(v94, v95, 0xD000000000000028, v96, v97, v98, v99, v100, v1422, v1428, v1470, v1510, v1552, v1594, v1636, v1676, v1718, v1760, v1801, v1842, v1880, v1921, v1962, v2002, v2043, v2084, v2125, v2166, v2207, v2248, v2289, v2331, v2371, v2413, v2454, v2495, v2536, v2577), (sub_18E1D6238() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer(variant:)(v102);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV5(variant:)(v103);
LABEL_34:

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v41 = swift_allocObject();
    sub_18E1C6378(v41);
LABEL_35:
    sub_18E1D00D4();
    v30 = 0x636972656E6567;
    return AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v22, v30, v23, v24, v25, v26, v27, v28, v29, v1422);
  }

  sub_18E1D44C0();
  v112 = v2578 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v112 || (sub_18E1D5BF4(v104, v105, v106, v107, v108, v109, v110, v111, v1422, v1429, v1471, v1511, v1553, v1595, v1637, v1677, v1719, v1761, v1802, v1843, v1881, v1922, v1963, v2003, v2044, v2085, v2126, v2167, v2208, v2249, v2290, v2332, v2372, v2414, v2455, v2496, v2537, v2578), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizer(variant:)(v113);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLM(variant:)(v114);
    goto LABEL_107;
  }

  sub_18E1D44C0();
  v124 = v2579 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v124 || (sub_18E1D5BF4(v116, v117, v118, v119, v120, v121, v122, v123, v1422, v1430, v1472, v1512, v1554, v1596, v1638, v1678, v1720, v1762, v1803, v1844, v1882, v1923, v1964, v2004, v2045, v2086, v2127, v2168, v2209, v2250, v2291, v2333, v2373, v2415, v2456, v2497, v2538, v2579), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizer(variant:)(v125);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.CodeLM(variant:)(v126);

    v2623 = 0;
    v2621 = 0u;
    v2622 = 0u;
    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.CodeLM(variant:)(v132);
    sub_18E1D5E64();

    v2619 = 0;
    v137 = 0uLL;
    goto LABEL_130;
  }

  sub_18E1D44C0();
  v127 = v2580 == 0xD000000000000029 && v9 == 0xD000000000000028;
  if (v127 || (sub_18E1E1530() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMV1ANE3BTokenizer(variant:)(v128);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.CodeLMV1ANE3B(variant:)(v129);

    v2623 = 0;
    v2621 = 0u;
    v2622 = 0u;
    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.CodeLMV1ANE3B(variant:)(v130);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v131 = swift_allocObject();
    sub_18E1C6378(v131);
    goto LABEL_18;
  }

  sub_18E220494();
  v134 = v133 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v134 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizerV2(variant:)(v135);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMV2(variant:)(v136);
    goto LABEL_107;
  }

  sub_18E220494();
  v140 = v139 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v140 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizerV3(variant:)(v141);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMV3(variant:)(v142);
    goto LABEL_107;
  }

  sub_18E220494();
  v144 = v143 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v144 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizerV4(variant:)(v145);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMV4(variant:)(v146);
    goto LABEL_107;
  }

  sub_18E1D44C0();
  v155 = v2580 == 0xD000000000000042 && v9 == 0xD000000000000028;
  if (v155 || (sub_18E1D5BF4(v147, v148, v149, v150, v151, v152, v153, v154, v1422, v1431, v1473, v1513, v1555, v1597, v1639, v1679, v1721, v1763, v1804, v1845, v1883, v1924, v1965, v2005, v2046, v2087, v2128, v2169, v2210, v2251, v2292, v2334, v2374, v2416, v2457, 0xD000000000000042, 0xD000000000000029, v2580), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v156);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets(variant:)(v157);

    *(a2 + 24) = &type metadata for AssetBackedMotionBundle;
    *(a2 + 32) = sub_18E2AE070();
    sub_18E1E2C84();
    v158 = swift_allocObject();
    sub_18E1CFC6C(v158);
    goto LABEL_166;
  }

  sub_18E1D44C0();
  v167 = v2581 == 0xD00000000000003ELL && v9 == 0xD000000000000028;
  if (v167 || (sub_18E1D5BF4(v159, v160, v161, v162, v163, v164, v165, v166, v1423, v1432, v1474, v1514, v1556, v1598, v1640, v1680, v1722, v1764, v1805, v1846, v1884, v1925, v1966, v2006, v2047, v2088, v2129, v2170, v2211, v2252, v2293, v2335, v2375, v2417, 0xD00000000000003ELL, v2498, v2539, v2581), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v168);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings(variant:)(v169);

    *(a2 + 24) = &type metadata for AssetBackedMotionBundle;
    *(a2 + 32) = sub_18E2AE070();
    sub_18E1E2C84();
    v170 = swift_allocObject();
    sub_18E1CFC6C(v170);
    goto LABEL_166;
  }

  sub_18E220494();
  v172 = v171 == 0xD000000000000023 && v9 == 0xD000000000000028;
  if (v172 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v173);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E223EC8();
    *(a2 + 24) = &type metadata for AssetBackedMotionBundle;
    *(a2 + 32) = sub_18E2AE070();
    sub_18E1E2C84();
    v174 = swift_allocObject();
    sub_18E1CFC6C(v174);
LABEL_166:
    sub_18E1E842C();
    AssetBackedMotionBundle.init(configurationIdentifier:baseModel:adapter:)();
    return result;
  }

  sub_18E1D44C0();
  v183 = v2582 == 0xD000000000000026 && v9 == 0xD000000000000028;
  if (v183 || (sub_18E1D5BF4(v175, v176, v177, v178, v179, v180, v181, v182, v1424, v1433, v1475, v1515, v1557, v1599, v1641, v1681, v1723, v1765, v1806, v1847, v1885, v1926, v1967, v2007, v2048, v2089, v2130, v2171, v2212, v2253, v2294, v2336, v2376, 0xD000000000000026, v2458, v2499, v2540, v2582), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.Motion.Model.Pednet(variant:)(v184);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E223EC8();
    *(a2 + 24) = &type metadata for MotionBundle;
    *(a2 + 32) = sub_18E205FC8();
    sub_18E1E2C84();
    v185 = swift_allocObject();
    sub_18E1CFC6C(v185);
    sub_18E1E842C();
    *&result = MotionBundle.init(configurationIdentifier:baseModel:adapter:)(v186, v187, v188, v189).n128_u64[0];
    return result;
  }

  sub_18E220494();
  sub_18E1D1940();
  v190 = v8 && v9 == 0xD000000000000028;
  if (v190 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer(variant:)(v191);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.DistilledMessagesAction(variant:)(v192);
    goto LABEL_181;
  }

  sub_18E1D44C0();
  v202 = v2583 == 0xD000000000000025 && v9 == 0xD000000000000028;
  if (v202 || (sub_18E1D5BF4(v194, v195, v196, v197, v198, v199, v200, v201, v1422, v1434, v1476, v1516, v1558, v1600, v1642, v1682, v1724, v1766, v1807, v1848, v1886, v1927, v1968, v2008, v2049, v2090, v2131, v2172, v2213, v2254, v2295, v2337, 0xD000000000000025, v2418, v2459, v2500, v2541, v2583), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer(variant:)(v203);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.DistilledMessagesReply(variant:)(v204);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v205 = swift_allocObject();
    sub_18E1C6378(v205);
    goto LABEL_18;
  }

  sub_18E1D44C0();
  v214 = v2584 == 0xD00000000000002ALL && v9 == 0xD000000000000028;
  if (v214 || (sub_18E1D5BF4(v206, v207, v208, v209, v210, v211, v212, v213, v1422, v1435, v1477, v1517, v1559, v1601, v1643, v1683, v1725, v1767, v1808, v1849, v1887, v1928, v1969, v2009, v2050, v2091, v2132, v2173, v2214, v2255, v2296, 0xD00000000000002ALL, v2377, v2419, v2460, v2501, v2542, v2584), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.SecureAnalytics.Model.IntegrityDiagnoseModel(variant:)(v215);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    *(a2 + 24) = &type metadata for SecureAnalyticsBundle;
    *(a2 + 32) = sub_18E2ADF28();
    sub_18E1E1950();
    v216 = swift_allocObject();
    sub_18E1CFC6C(v216);
    sub_18E220D78();
    SecureAnalyticsBundle.init(configurationIdentifier:baseModel:)();
    return result;
  }

  sub_18E220494();
  v218 = v217 == 0xD000000000000030 && v9 == 0xD000000000000028;
  if (v218 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer(variant:)(v219);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeSafetyGuardrail(variant:)(v220);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v221 = swift_allocObject();
    sub_18E1C6378(v221);
    goto LABEL_18;
  }

  sub_18E1D44C0();
  v230 = v2585 == 0xD00000000000002CLL && v9 == 0xD000000000000028;
  if (v230 || (sub_18E1D5BF4(v222, v223, v224, v225, v226, v227, v228, v229, v1422, v1436, v1478, v1518, v1560, v1602, v1644, v1684, v1726, v1768, v1809, v1850, v1888, v1929, v1970, v2010, v2051, v2092, v2133, v2174, 0xD00000000000002CLL, v2256, v2297, v2338, v2378, v2420, v2461, v2502, v2543, v2585), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer(variant:)(v231);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite(variant:)(v232);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v233 = swift_allocObject();
    sub_18E1C6378(v233);
    goto LABEL_18;
  }

  sub_18E1D44C0();
  v242 = v2586 == 0xD000000000000039 && v9 == 0xD000000000000028;
  if (v242 || (sub_18E1D5BF4(v234, v235, v236, v237, v238, v239, v240, v241, v1422, v1437, v1479, v1519, v1561, v1603, v1645, v1685, v1727, v1769, v1810, v1851, v1889, v1930, v1971, v2011, v2052, 0xD000000000000039, v2134, v2175, v2215, v2257, v2298, v2339, v2379, v2421, v2462, v2503, v2544, v2586), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v243);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v244);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt(variant:)(v245);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v246 = swift_allocObject();
    sub_18E1C6378(v246);
    goto LABEL_18;
  }

  sub_18E1D44C0();
  v255 = v2587 == 0xD000000000000038 && v9 == 0xD000000000000028;
  if (v255 || (sub_18E1D5BF4(v247, v248, v249, v250, v251, v252, v253, v254, v1422, v1438, v1480, v1520, v1562, v1604, v1646, v1686, v1728, v1770, v1811, v1852, v1890, v1931, v1972, v2012, v2053, v2093, v2135, v2176, v2216, 0xD000000000000038, v2299, v2340, v2380, v2422, v2463, v2504, v2545, v2587), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v256);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v257);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding(variant:)(v258);
    goto LABEL_850;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v259 = v8 && v9 == 0xD000000000000023;
  if (v259 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v260);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v261);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ADMPromptRewriting(variant:)(v262);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ADMPromptRewriting(variant:)(v263);
    sub_18E1D5E64();
    goto LABEL_781;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v264 = v8 && v9 == 0xD000000000000028;
  if (v264 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v265);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v266);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier(variant:)(v267);
    goto LABEL_850;
  }

  sub_18E1D44C0();
  v276 = v2588 == 0xD000000000000033 && v9 == 0xD000000000000028;
  if (v276 || (sub_18E1D5BF4(v268, v269, v270, v271, v272, v273, v274, v275, v1422, v1439, v1481, v1521, v1563, v1605, v1647, v1687, v1729, v1771, v1812, v1853, v1891, v1932, v1973, v2013, v2054, v2094, v2136, v2177, v2217, v2258, 0xD000000000000033, v2341, v2381, v2423, v2464, v2505, v2546, v2588), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v277);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v278);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.MessagesActionSmall(variant:)(v279);
    goto LABEL_850;
  }

  sub_18E1D44C0();
  v288 = v2589 == 0xD000000000000032 && v9 == 0xD000000000000028;
  if (v288 || (sub_18E1D5BF4(v280, v281, v282, v283, v284, v285, v286, v287, v1422, v1440, v1482, v1522, v1564, v1606, 0xD000000000000032, v1688, v1730, v1772, v1813, v1854, v1892, v1933, v1974, v2014, v2055, v2095, v2137, v2178, v2218, v2259, v2300, v2342, v2382, v2424, v2465, v2506, v2547, v2589), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v289);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v290);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.MessagesReplyWatch(variant:)(v291);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v292 = swift_allocObject();
    sub_18E1C6378(v292);
    goto LABEL_18;
  }

  sub_18E1CE8FC();
  v301 = v2590 == 0xD00000000000002FLL && v9 == 0xD000000000000023;
  if (v301 || (sub_18E1D5BF4(v293, v294, v295, v296, v297, v298, v299, v300, v1422, v1441, v1483, v1523, v1565, v1607, v1648, v1689, v1731, v1773, v1814, v1855, v1893, v1934, v1975, v2015, v2056, v2096, 0xD00000000000002FLL, v2179, v2219, v2260, v2301, v2343, v2383, v2425, v2466, v2507, v2548, v2590), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v302);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v303);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MiscSafety(variant:)(v304);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v305);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_782;
  }

  sub_18E1CE8FC();
  v314 = v2591 == 0xD00000000000003ALL && v9 == 0xD000000000000023;
  if (v314 || (sub_18E1D5BF4(v306, v307, v308, v309, v310, v311, v312, v313, v1422, v1442, v1484, v1524, v1566, v1608, v1649, v1690, v1732, v1774, v1815, v1856, v1894, v1935, v1976, v2016, v2057, v2097, v2138, 0xD00000000000003ALL, v2220, v2261, v2302, v2344, v2384, v2426, v2467, v2508, v2549, v2591), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v315);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v316);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized(variant:)(v317);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor(variant:)(v318);
    sub_18E1D5E64();

    sub_18E2208EC();
    goto LABEL_590;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v319 = v8 && v9 == 0xD000000000000023;
  if (v319 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v320);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v321);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail(variant:)(v322);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v323);
    goto LABEL_703;
  }

  sub_18E220494();
  v325 = v324 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v325 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v326);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v327);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.MMSafety(variant:)(v328);
    goto LABEL_811;
  }

  sub_18E1D44C0();
  v337 = v2592 == 0xD000000000000034 && v9 == 0xD000000000000028;
  if (v337 || (sub_18E1D5BF4(v329, v330, v331, v332, v333, v334, v335, v336, v1422, v1443, v1485, v1525, v1567, v1609, v1650, v1691, v1733, v1775, v1816, v1857, v1895, v1936, 0xD000000000000034, v2017, v2058, v2098, v2139, v2180, v2221, v2262, v2303, v2345, v2385, v2427, v2468, v2509, v2550, v2592), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v338);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v339);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.PQAVerification(variant:)(v340);
    goto LABEL_850;
  }

  sub_18E1CE8FC();
  v349 = v2593 == 0xD000000000000037 && v9 == 0xD000000000000023;
  if (v349 || (sub_18E1D5BF4(v341, v342, v343, v344, v345, v346, v347, v348, v1422, v1444, v1486, v1526, v1568, v1610, v1651, v1692, v1734, v1776, v1817, v1858, v1896, v1937, v1977, 0xD000000000000037, v2059, v2099, v2140, v2181, v2222, v2263, v2304, v2346, v2386, v2428, v2469, v2510, v2551, v2593), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v350);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v351);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PrepubescentSafety(variant:)(v352);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v353);
    goto LABEL_703;
  }

  sub_18E1CE9B8();
  sub_18E1D5F30();
  v354 = v8 && v9 == 0xD000000000000023;
  if (v354 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v355);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v356);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized(variant:)(v357);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor(variant:)(v358);
    sub_18E1D5E64();

    sub_18E2208EC();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v359 = swift_allocObject();
    sub_18E1C6378(v359);
    goto LABEL_842;
  }

  sub_18E220494();
  sub_18E1E3614();
  v360 = v8 && v9 == 0xD000000000000028;
  if (v360 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v361);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v362);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.Safety(variant:)(v363);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v364 = swift_allocObject();
    sub_18E1C6378(v364);
    goto LABEL_18;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v365 = v8 && v9 == 0xD000000000000023;
  if (v365 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v366);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v367);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuralIntegrity(variant:)(v368);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v369);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_782;
  }

  sub_18E1CE8FC();
  v378 = v2594 == 0xD000000000000043 && v9 == 0xD000000000000023;
  if (v378 || (sub_18E1D5BF4(v370, v371, v372, v373, v374, v375, v376, v377, v1422, v1445, v1487, v1527, v1569, v1611, v1652, v1693, 0xD000000000000043, v1777, v1818, v1859, v1897, v1938, v1978, v2018, v2060, v2100, v2141, v2182, v2223, v2264, v2305, v2347, v2387, v2429, v2470, v2511, v2552, v2594), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v379);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v380);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized(variant:)(v381);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor(variant:)(v382);
    sub_18E1D5E64();

    sub_18E2208EC();
    goto LABEL_590;
  }

  sub_18E1D44C0();
  v391 = v2595 == 0xD00000000000002ELL && v9 == 0xD000000000000028;
  if (v391 || (sub_18E1D5BF4(v383, v384, v385, v386, v387, v388, v389, v390, v1422, v1446, v1488, v1528, v1570, v1612, v1653, v1694, v1735, v1778, 0xD00000000000002ELL, v1860, v1898, v1939, v1979, v2019, v2061, v2101, v2142, v2183, v2224, v2265, v2306, v2348, v2388, v2430, v2471, v2512, v2553, v2595), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v392);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v393);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail(variant:)(v394);
    goto LABEL_850;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v395 = v8 && v9 == 0xD000000000000023;
  if (v395 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v396);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v397);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.VIContentClassifier(variant:)(v398);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v399);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_782;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v400 = v8 && v9 == 0xD000000000000023;
  if (v400 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v401);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v402);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AnswerSynthesis(variant:)(v403);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AnswerSynthesis(variant:)(v404);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E1D44C0();
  v413 = v2596 == 0xD00000000000003BLL && v9 == 0xD000000000000028;
  if (v413 || (sub_18E1D5BF4(v405, v406, v407, v408, v409, v410, v411, v412, v1422, v1447, v1489, v1529, v1571, 0xD00000000000003BLL, v1654, v1695, v1736, v1779, v1819, v1861, v1899, v1940, v1980, v2020, v2062, v2102, v2143, v2184, v2225, v2266, v2307, v2349, v2389, v2431, v2472, v2513, v2554, v2596), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v414);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v415);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FullPayloadCorrection(variant:)(v416);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v417 = swift_allocObject();
    sub_18E1C6378(v417);
    goto LABEL_18;
  }

  sub_18E220494();
  v419 = v418 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v419 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v420);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v421);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.AutoTagger(variant:)(v422);
    goto LABEL_811;
  }

  sub_18E1CE8FC();
  v431 = v2597 == 0xD000000000000035 && v9 == 0xD000000000000023;
  if (v431 || (sub_18E1D5BF4(v423, v424, v425, v426, v427, v428, v429, v430, v1422, v1448, v1490, v1530, v1572, v1613, v1655, v1696, v1737, v1780, v1820, v1862, v1900, 0xD000000000000035, v1981, v2021, v2063, v2103, v2144, v2185, v2226, v2267, v2308, v2350, v2390, v2432, v2473, v2514, v2555, v2597), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v432);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v433);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AutonamingMessages(variant:)(v434);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AutonamingMessages(variant:)(v435);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E220494();
  sub_18E1D1940();
  v436 = v8 && v9 == 0xD000000000000028;
  if (v436 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v437);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v438);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.InstructBaseAdapter(variant:)(v439);
    sub_18E1D5E64();

    v2620 = 0;
    goto LABEL_182;
  }

  sub_18E1CAD14();
  v440 = v8 && v9 == 0xD000000000000023;
  if (v440 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v441);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v442);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.BulletsTransform(variant:)(v443);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.BulletsTransform(variant:)(v444);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1CFDF0();
  v445 = v8 && v9 == 0xD000000000000023;
  if (v445 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v446);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v447);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ConciseTone(variant:)(v448);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ConciseTone(variant:)(v449);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E220494();
  v451 = v450 == v2309 && v9 == 0xD000000000000028;
  if (v451 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v452);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v453);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ContextAwareness(variant:)(v454);
    goto LABEL_850;
  }

  sub_18E1CE8FC();
  v463 = v2598 == 0xD000000000000031 && v9 == 0xD000000000000023;
  if (v463 || (sub_18E1D5BF4(v455, v456, v457, v458, v459, v460, v461, v462, v1422, v1449, v1491, v1531, v1573, v1614, v1656, v1697, v1738, v1781, v1821, v1863, v1901, v1941, v1982, v2022, 0xD000000000000031, v2104, v2145, v2186, v2227, v2268, v2309, v2351, v2391, v2433, v2474, v2515, v2556, v2598), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v464);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v465);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ContextProgram(variant:)(v466);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ContextProgram(variant:)(v467);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E220494();
  sub_18E1E3AF8();
  v468 = v8 && v9 == 0xD000000000000028;
  if (v468 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v469);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v470);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.DescribeYourEdit(variant:)(v471);
    goto LABEL_850;
  }

  sub_18E220494();
  sub_18E2234B8();
  v472 = v8 && v9 == 0xD000000000000028;
  if (v472 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v473);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v474);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FitnessSummary(variant:)(v475);
    goto LABEL_850;
  }

  sub_18E220494();
  sub_18E1E3CE8();
  v476 = v8 && v9 == 0xD000000000000028;
  if (v476 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v477);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v478);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ContentTagger(variant:)(v479);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v480 = swift_allocObject();
    sub_18E1C6378(v480);
    goto LABEL_18;
  }

  sub_18E1CE9B8();
  v482 = v481 == 0xD000000000000030 && v9 == 0xD000000000000023;
  if (v482 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v483);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v484);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric(variant:)(v485);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric(variant:)(v486);
    goto LABEL_841;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v487 = v8 && v9 == 0xD000000000000028;
  if (v487 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft(variant:)(v488);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    *(a2 + 24) = &type metadata for LLMCompileDraftBundle;
    *(a2 + 32) = sub_18E2ADF7C();
    sub_18E1E1950();
    v489 = swift_allocObject();
    sub_18E1CFC6C(v489);
    sub_18E220D78();
    LLMCompileDraftBundle.init(configurationIdentifier:draftModel:)(v490, v491, v492, v493);
    return result;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v494 = v8 && v9 == 0xD000000000000023;
  if (v494 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v495);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v496);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.FriendlyTone(variant:)(v497);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.FriendlyTone(variant:)(v498);
    goto LABEL_781;
  }

  sub_18E1CE8FC();
  v507 = v2599 == 0xD000000000000040 && v9 == 0xD000000000000023;
  if (v507 || (sub_18E1D5BF4(v499, v500, v501, v502, v503, v504, v505, v506, v1422, v1450, v1492, v1532, v1574, v1615, v1657, v1698, v1739, 0xD000000000000040, v1822, v1864, v1902, v1942, v1983, v2023, v2064, v2105, v2146, v2187, v2228, v2269, v2310, v2352, v2392, v2434, v2475, v2516, v2557, v2599), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v508);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v509);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.JournalMomentsClassification(variant:)(v510);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification(variant:)(v511);
    goto LABEL_841;
  }

  sub_18E1CE8FC();
  v520 = v2600 == 0xD00000000000003CLL && v9 == 0xD000000000000023;
  if (v520 || (sub_18E1D5BF4(v512, v513, v514, v515, v516, v517, v518, v519, v1422, v1451, v1493, v1533, v1575, v1616, v1658, v1699, v1740, v1782, v1823, v1865, v1903, v1943, 0xD00000000000003CLL, v2024, v2065, v2106, v2147, v2188, v2229, v2270, v2311, v2353, v2393, v2435, v2476, v2517, v2558, v2600), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v521);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v522);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.JournalMomentsReflection(variant:)(v523);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection(variant:)(v524);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v525 = v8 && v9 == 0xD000000000000023;
  if (v525 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v526);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v527);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.LWOnDevicePlannerV1(variant:)(v528);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.LWOnDevicePlannerV1(variant:)(v529);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v530 = v8 && v9 == 0xD000000000000023;
  if (v530 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v531);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v532);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MagicRewrite(variant:)(v533);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MagicRewrite(variant:)(v534);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v535 = v8 && v9 == 0xD000000000000023;
  if (v535 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v536);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v537);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReply(variant:)(v538);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReply(variant:)(v539);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v540 = v8 && v9 == 0xD000000000000023;
  if (v540 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v541);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v542);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic(variant:)(v543);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic(variant:)(v544);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v545 = v8 && v9 == 0xD000000000000023;
  if (v545 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v546);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v547);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite(variant:)(v548);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite(variant:)(v549);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v550 = v8 && v9 == 0xD000000000000023;
  if (v550 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v551);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v552);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReplyQA(variant:)(v553);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReplyQA(variant:)(v554);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E2234B8();
  v555 = v8 && v9 == 0xD000000000000023;
  if (v555 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v556);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v557);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MessagesAction(variant:)(v558);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MessagesAction(variant:)();
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  v560 = v559 == 0xD000000000000030 && v9 == 0xD000000000000023;
  if (v560 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v561);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v562);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MessagesReply(variant:)(v563);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MessagesReply(variant:)(v564);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E3614();
  v565 = v8 && v9 == 0xD000000000000023;
  if (v565 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v566);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v567);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B(variant:)(v568);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v569);
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v570 = swift_allocObject();
    sub_18E1C6378(v570);
    goto LABEL_842;
  }

  sub_18E1CE8FC();
  v579 = v2601 == 0xD00000000000002BLL && v9 == 0xD000000000000023;
  if (v579 || (sub_18E1D5BF4(v571, v572, v573, v574, v575, v576, v577, v578, v1422, v1452, v1494, v1534, 0xD00000000000002BLL, v1617, v1659, v1700, v1741, v1783, v1824, v1866, v1904, v1944, v1984, v2025, v2066, v2107, v2148, v2189, v2230, v2271, v2312, v2354, v2394, v2436, v2477, v2518, v2559, v2601), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v580);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v581);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.Nutrition(variant:)(v582);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v583);
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v584 = swift_allocObject();
    sub_18E1C6378(v584);
    goto LABEL_842;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v585 = v8 && v9 == 0xD000000000000023;
  if (v585 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v586);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v587);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PersonalizedSmartReply(variant:)(v588);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PersonalizedSmartReply(variant:)(v589);
    goto LABEL_589;
  }

  sub_18E1CE8FC();
  v598 = v2602 == 0xD000000000000041 && v9 == 0xD000000000000023;
  if (v598 || (sub_18E1D5BF4(v590, v591, v592, v593, v594, v595, v596, v597, v1422, v1453, v1495, v1535, v1576, v1618, v1660, 0xD000000000000041, v1742, v1784, v1825, v1867, v1905, v1945, v1985, v2026, v2067, v2108, v2149, v2190, v2231, v2272, v2313, v2355, v2395, v2437, v2478, v2519, v2560, v2602), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v599);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v600);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM(variant:)(v601);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor(variant:)(v602);
    sub_18E1D5E64();

    sub_18E2208EC();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v607 = swift_allocObject();
    sub_18E1C6378(v607);
    goto LABEL_842;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v603 = v8 && v9 == 0xD000000000000028;
  if (v603 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v604);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v605);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T(variant:)(v606);
    goto LABEL_850;
  }

  sub_18E1CE8FC();
  v616 = v2603 == 0xD000000000000048 && v9 == 0xD000000000000023;
  if (v616 || (sub_18E1D5BF4(v608, v609, v610, v611, v612, v613, v614, v615, v1422, v1454, v1496, 0xD000000000000048, v1577, v1619, v1661, v1701, v1743, v1785, v1826, v1868, v1906, v1946, v1986, v2027, v2068, v2109, v2150, v2191, v2232, v2273, v2314, v2356, v2396, v2438, v2479, v2520, v2561, v2603), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v617);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v618);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v619);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v620);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E1CE8FC();
  v629 = v2604 == 0xD00000000000003FLL && v9 == 0xD000000000000023;
  if (v629 || (sub_18E1D5BF4(v621, v622, v623, v624, v625, v626, v627, v628, v1422, v1455, v1497, v1536, v1578, v1620, v1662, v1702, v1744, v1786, v1827, v1869, 0xD00000000000003FLL, v1947, v1987, v2028, v2069, v2110, v2151, v2192, v2233, v2274, v2315, v2357, v2397, v2439, v2480, v2521, v2562, v2604), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v630);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v631);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b(variant:)(v632);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b(variant:)(v633);
    sub_18E1D5E64();
    goto LABEL_841;
  }

  sub_18E1CE8FC();
  v642 = v2605 == 0xD000000000000045 && v9 == 0xD000000000000023;
  if (v642 || (sub_18E1D5BF4(v634, v635, v636, v637, v638, v639, v640, v641, v1422, v1456, 0xD000000000000045, v1537, v1579, v1621, v1663, v1703, v1745, v1787, v1828, v1870, v1907, v1948, v1988, v2029, v2070, v2111, v2152, v2193, v2234, v2275, v2316, v2358, v2398, v2440, v2481, v2522, v2563, v2605), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v643);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v644);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v645);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v646);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v647 = swift_allocObject();
    sub_18E1C6378(v647);
    goto LABEL_842;
  }

  sub_18E1CE8FC();
  v656 = v2606 == 0xD00000000000003DLL && v9 == 0xD000000000000023;
  if (v656 || (sub_18E1D5BF4(v648, v649, v650, v651, v652, v653, v654, v655, v1422, v1457, v1498, v1538, v1580, v1622, v1664, v1704, v1746, v1788, v1829, v1871, v1908, v1949, v1989, v2030, v2071, v2112, v2153, v2194, v2235, v2276, v2317, 0xD00000000000003DLL, v2399, v2441, v2482, v2523, v2564, v2606), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v657);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v658);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b(variant:)(v659);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b(variant:)(v660);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v661 = v8 && v9 == 0xD000000000000023;
  if (v661 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v662);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v663);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle(variant:)(v664);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle(variant:)(v665);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v666 = v8 && v9 == 0xD000000000000023;
  if (v666 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v667);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v668);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle(variant:)(v669);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle(variant:)(v670);
LABEL_589:

    sub_18E1C77D0();
LABEL_590:
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v671 = swift_allocObject();
    sub_18E1C6378(v671);
LABEL_842:
    sub_18E1D00D4();
    v30 = 0xD000000000000023;
    return AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v22, v30, v23, v24, v25, v26, v27, v28, v29, v1422);
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v672 = v8 && v9 == 0xD000000000000023;
  if (v672 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v673);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v674);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV4(variant:)(v675);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV4(variant:)(v676);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v677 = v8 && v9 == 0xD000000000000023;
  if (v677 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v678);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v679);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV5(variant:)(v680);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV5(variant:)(v681);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v682 = v8 && v9 == 0xD000000000000023;
  if (v682 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v683);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v684);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV6(variant:)(v685);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV6(variant:)(v686);
    goto LABEL_781;
  }

  sub_18E1CAD14();
  v687 = v8 && v9 == 0xD000000000000023;
  if (v687 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v688);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v689);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ProfessionalTone(variant:)(v690);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ProfessionalTone(variant:)(v691);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E2019F8();
  v692 = v8 && v9 == 0xD000000000000023;
  if (v692 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v693);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v694);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ProofreadingReview(variant:)(v695);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ProofreadingReview(variant:)(v696);
    goto LABEL_841;
  }

  sub_18E220494();
  sub_18E1E22F0();
  v697 = v8 && v9 == 0xD000000000000028;
  if (v697 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v698);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v699);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems(variant:)(v700);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v701 = swift_allocObject();
    sub_18E1C6378(v701);
    goto LABEL_18;
  }

  sub_18E1CE9B8();
  v703 = v702 == v1747 && v9 == 0xD000000000000023;
  if (v703 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v704);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v705);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems(variant:)(v706);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.RemindersSuggestActionItems(variant:)(v707);
    sub_18E1D5E64();

    sub_18E1C77D0();
    goto LABEL_590;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v708 = v8 && v9 == 0xD000000000000023;
  if (v708 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v709);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v710);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV4(variant:)(v711);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4(variant:)(v712);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v713 = v8 && v9 == 0xD000000000000023;
  if (v713 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v714);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v715);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV5(variant:)(v716);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5(variant:)(v717);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v718 = v8 && v9 == 0xD000000000000023;
  if (v718 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v719);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v720);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV6(variant:)(v721);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6(variant:)(v722);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v723 = v8 && v9 == 0xD000000000000023;
  if (v723 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v724);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v725);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SafetyGuardrail(variant:)(v726);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SafetyGuardrail(variant:)(v727);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v728 = v8 && v9 == 0xD000000000000023;
  if (v728 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v729);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v730);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice(variant:)(v731);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice(variant:)(v732);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E3614();
  v733 = v8 && v9 == 0xD000000000000023;
  if (v733 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v734);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v735);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B(variant:)(v736);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B(variant:)(v737);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E22F0();
  v738 = v8 && v9 == 0xD000000000000023;
  if (v738 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v739);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v740);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3BV2(variant:)(v741);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3BV2(variant:)(v742);
    goto LABEL_841;
  }

  sub_18E1CAD14();
  v743 = v8 && v9 == 0xD000000000000023;
  if (v743 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v744);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v745);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SmartAppActions(variant:)(v746);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SmartAppActions(variant:)(v747);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v748 = v8 && v9 == 0xD000000000000023;
  if (v748 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v749);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v750);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuralExtraction(variant:)(v751);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v752);
    goto LABEL_703;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v753 = v8 && v9 == 0xD000000000000023;
  if (v753 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v754);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v755);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuredExtraction(variant:)(v756);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.StructuredExtraction(variant:)(v757);
    goto LABEL_781;
  }

  sub_18E1D44C0();
  v766 = v2607 == 0xD000000000000036 && v9 == 0xD000000000000028;
  if (v766 || (sub_18E1D5BF4(v758, v759, v760, v761, v762, v763, v764, v765, v1422, v1458, v1499, v1539, v1581, v1623, v1665, v1705, v1747, v1789, v1830, 0xD000000000000036, v1909, v1950, v1990, v2031, v2072, v2113, v2154, v2195, v2236, v2277, v2318, v2359, v2400, v2442, v2483, v2524, v2565, v2607), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v767);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v768);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.SuggestRecipeItems(variant:)(v769);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v770 = swift_allocObject();
    sub_18E1C6378(v770);
    goto LABEL_18;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v771 = v8 && v9 == 0xD000000000000023;
  if (v771 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v772);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v773);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SuggestRecipeItems(variant:)(v774);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SuggestRecipeItems(variant:)(v775);
    sub_18E1D5E64();

    sub_18E1C57F8();
    goto LABEL_782;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v776 = v8 && v9 == 0xD000000000000023;
  if (v776 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v777);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v778);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.Summarization(variant:)(v779);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.Summarization(variant:)(v780);
    goto LABEL_781;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v781 = v8 && v9 == 0xD000000000000023;
  if (v781 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v782);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v783);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TablesTransform(variant:)(v784);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TablesTransform(variant:)(v785);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E2019F8();
  v786 = v8 && v9 == 0xD000000000000023;
  if (v786 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v787);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v788);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TakeawaysTransform(variant:)(v789);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TakeawaysTransform(variant:)(v790);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v791 = v8 && v9 == 0xD000000000000023;
  if (v791 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v792);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v793);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TamalePOI(variant:)(v794);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v795);
LABEL_703:
    sub_18E1D5E64();

    sub_18E223320();
LABEL_782:
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v816 = swift_allocObject();
    sub_18E1C6378(v816);
    goto LABEL_842;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v796 = v8 && v9 == 0xD000000000000023;
  if (v796 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v797);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v798);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextEventExtraction(variant:)(v799);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextEventExtraction(variant:)(v800);
    goto LABEL_781;
  }

  sub_18E220494();
  sub_18E1E3614();
  v801 = v8 && v9 == 0xD000000000000028;
  if (v801 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v802);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.DraftModel.TextEventExtraction(variant:)(v803);

    *(a2 + 24) = &type metadata for AssetBackedLLMDraftBundle;
    *(a2 + 32) = sub_18E2083A8();
    sub_18E1E2C84();
    v804 = swift_allocObject();
    sub_18E1CFC6C(v804);
    goto LABEL_812;
  }

  sub_18E1CE9B8();
  v806 = v805 == 0xD00000000000002DLL && v9 == 0xD000000000000023;
  if (v806 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v807);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v808);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextExpert(variant:)(v809);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextExpert(variant:)(v810);
    goto LABEL_841;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v811 = v8 && v9 == 0xD000000000000023;
  if (v811 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v812);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v813);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextPersonExtraction(variant:)(v814);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextPersonExtraction(variant:)(v815);
LABEL_781:

    sub_18E1C57F8();
    goto LABEL_782;
  }

  sub_18E220494();
  sub_18E1D8464();
  v817 = v8 && v9 == 0xD000000000000028;
  if (v817 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v818);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.DraftModel.TextPersonExtraction(variant:)(v819);

    *(a2 + 24) = &type metadata for AssetBackedLLMDraftBundle;
    *(a2 + 32) = sub_18E2083A8();
    sub_18E1E2C84();
    v820 = swift_allocObject();
    sub_18E1CFC6C(v820);
    goto LABEL_812;
  }

  sub_18E1CE9B8();
  sub_18E2234B8();
  v821 = v8 && v9 == 0xD000000000000023;
  if (v821 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v822);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v823);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextSummarizer(variant:)(v824);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextSummarizer(variant:)(v825);
    goto LABEL_841;
  }

  sub_18E220494();
  sub_18E221E34();
  v826 = v8 && v9 == 0xD000000000000028;
  if (v826 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v827);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.DraftModel.Textunderstanding(variant:)(v828);

    *(a2 + 24) = &type metadata for AssetBackedLLMDraftBundle;
    *(a2 + 32) = sub_18E2083A8();
    sub_18E1E2C84();
    v834 = swift_allocObject();
    sub_18E1CFC6C(v834);
LABEL_812:
    sub_18E1E842C();
    AssetBackedLLMDraftBundle.init(configurationIdentifier:tokenizer:draftModel:)(v835, v836, v837, v838);
    return result;
  }

  sub_18E220494();
  v830 = v829 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v830 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v831);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v832);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty(variant:)(v833);
LABEL_811:
    sub_18E1D5E64();

    *&v137 = sub_18E1E11CC();
    v2619 = 0;
LABEL_130:
    v2617 = v137;
    v2618 = v137;
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v138 = swift_allocObject();
    sub_18E1C6378(v138);
    goto LABEL_18;
  }

  sub_18E1CE9B8();
  v840 = v839 == 0xD000000000000030 && v9 == 0xD000000000000023;
  if (v840 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v841);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v842);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty(variant:)(v843);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty(variant:)(v844);
    goto LABEL_841;
  }

  sub_18E220494();
  sub_18E1CFDF0();
  v845 = v8 && v9 == 0xD000000000000028;
  if (v845 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v846);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v847);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.UIGrounding(variant:)(v848);
    goto LABEL_850;
  }

  sub_18E1CE9B8();
  v850 = v849 == 0xD00000000000002DLL && v9 == 0xD000000000000023;
  if (v850 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v851);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v852);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.UIPreviews(variant:)(v853);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.UIPreviews(variant:)(v854);
LABEL_841:

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v859 = swift_allocObject();
    sub_18E1C6378(v859);
    goto LABEL_842;
  }

  sub_18E220494();
  sub_18E1E3194();
  v855 = v8 && v9 == 0xD000000000000028;
  if (v855 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v856);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v857);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.UrgencyClassification(variant:)(v858);
    goto LABEL_850;
  }

  sub_18E220494();
  sub_18E2234B8();
  v860 = v8 && v9 == 0xD000000000000028;
  if (v860 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct85MTokenizer(variant:)(v861);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase(variant:)(v862);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch(variant:)(v863);
LABEL_850:
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v864 = swift_allocObject();
    sub_18E1C6378(v864);
    goto LABEL_18;
  }

  sub_18E1CE9B8();
  sub_18E1E22F0();
  v865 = v8 && v9 == 0xD000000000000023;
  if (v865 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v866);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v867);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier(variant:)(v868);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v869);
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v870 = swift_allocObject();
    sub_18E1C6378(v870);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v871 = v8 && v9 == 0xD000000000000023;
  if (v871 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v872);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v873);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer(variant:)(v874);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer(variant:)(v875);
    goto LABEL_1294;
  }

  sub_18E1CAD14();
  v876 = v8 && v9 == 0xD000000000000023;
  if (v876 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v877);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v878);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.InstructServerAutograder(variant:)(v879);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v880);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_1229;
  }

  sub_18E220494();
  v882 = v881 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v882 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v883);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v884);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v885 = swift_allocObject();
    sub_18E1C6378(v885);
    goto LABEL_1432;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v886 = v8 && v9 == 0xD000000000000023;
  if (v886 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v887);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v888);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerBulletsTransform(variant:)(v889);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform(variant:)(v890);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E2019F8();
  v891 = v8 && v9 == 0xD000000000000023;
  if (v891 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v892);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v893);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v894);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v895);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v896 = swift_allocObject();
    sub_18E1C6378(v896);
    goto LABEL_1295;
  }

  sub_18E220494();
  v898 = v897 == v1624 && v9 == 0xD000000000000028;
  if (v898 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v899);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v900);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ServerDescribeYourEdit(variant:)(v901);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v902 = swift_allocObject();
    sub_18E1C6378(v902);
    goto LABEL_1432;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v903 = v8 && v9 == 0xD000000000000023;
  if (v903 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v904);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v905);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice(variant:)(v906);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice(variant:)(v907);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v908 = v8 && v9 == 0xD000000000000023;
  if (v908 || (sub_18E1D0318() & 1) != 0)
  {
    goto LABEL_931;
  }

  sub_18E1CE9B8();
  v910 = v909 == v1706 && v9 == 0xD000000000000023;
  if (v910 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v911);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v912);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.JournalFollowUpPrompts(variant:)(v913);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts(variant:)(v914);
    sub_18E1D5E64();

    sub_18E1C57F8();
    goto LABEL_1229;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v915 = v8 && v9 == 0xD000000000000023;
  if (v915 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v916);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v917);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.LWPlannerV1(variant:)(v918);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.LWPlannerV1(variant:)(v919);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v920 = v8 && v9 == 0xD000000000000023;
  if (v920 || (sub_18E1D0318() & 1) != 0)
  {
LABEL_931:
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v921);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    goto LABEL_995;
  }

  sub_18E1CE9B8();
  v923 = v922 == v1748 && v9 == 0xD000000000000023;
  if (v923 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v924);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v925);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic(variant:)(v926);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic(variant:)(v927);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  v929 = v928 == v1500 && v9 == 0xD000000000000023;
  if (v929 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v930);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v931);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite(variant:)(v932);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite(variant:)(v933);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v934 = swift_allocObject();
    sub_18E1C6378(v934);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v935 = v8 && v9 == 0xD000000000000023;
  if (v935 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v936);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v937);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerMailReplyQA(variant:)(v938);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA(variant:)(v939);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v940 = v8 && v9 == 0xD000000000000023;
  if (v940 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v941);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v942);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MessagesUserRequest(variant:)(v943);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MessagesUserRequest(variant:)(v944);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E2234B8();
  v945 = v8 && v9 == 0xD000000000000023;
  if (v945 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v946);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v947);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer(variant:)(v948);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v949);
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v950 = swift_allocObject();
    sub_18E1C6378(v950);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v951 = v8 && v9 == 0xD000000000000023;
  if (v951 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v952);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v953);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedInteraction(variant:)(v954);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction(variant:)(v955);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v956 = v8 && v9 == 0xD000000000000023;
  if (v956 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v957);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v958);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedReflection(variant:)(v959);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedReflection(variant:)(v960);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v961 = v8 && v9 == 0xD000000000000023;
  if (v961 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v962);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v963);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedSchema(variant:)(v964);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedSchema(variant:)(v965);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v966 = v8 && v9 == 0xD000000000000023;
  if (v966 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v967);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_995:

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v968);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v969);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v970);
LABEL_1294:

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1274 = swift_allocObject();
    sub_18E1C6378(v1274);
    goto LABEL_1295;
  }

  sub_18E220494();
  sub_18E1E3614();
  v971 = v8 && v9 == 0xD000000000000028;
  if (v971 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v972);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v973);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();
    sub_18E1D5E64();

    v2620 = 0;
    goto LABEL_1310;
  }

  sub_18E1D44C0();
  v982 = v2608 == 0xD000000000000047 && v9 == 0xD000000000000028;
  if (v982 || (sub_18E1D5BF4(v974, v975, v976, v977, v978, v979, v980, v981, v1422, v1459, v1500, v1540, v1582, v1624, 0xD000000000000047, v1706, v1748, v1790, v1831, v1872, v1910, v1951, v1991, v2032, v2073, v2114, v2155, v2196, v2237, v2278, v2319, v2360, v2401, v2443, v2484, v2525, v2566, v2608), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v983);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v984);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponse(variant:)(v985);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v986 = swift_allocObject();
    sub_18E1C6378(v986);
    goto LABEL_1432;
  }

  sub_18E1D44C0();
  v995 = v2609 == 0xD00000000000004ALL && v9 == 0xD000000000000028;
  if (v995 || (sub_18E1D5BF4(v987, v988, v989, v990, v991, v992, v993, v994, v1422, v1460, v1501, v1541, v1583, v1625, v1666, v1707, v1749, v1791, v1832, v1873, v1911, v1952, v1992, v2033, v2074, v2115, v2156, v2197, v2238, v2279, v2320, v2361, v2402, v2444, v2485, v2526, v2567, v2609), (sub_18E1E1530() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v996);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v997);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponseV2(variant:)(v1022);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1023 = swift_allocObject();
    sub_18E1C6378(v1023);
    goto LABEL_1432;
  }

  sub_18E1E391C();
  v1502 = v1005;
  v1007 = v1006 == v1708 && v1005 == v9;
  if (v1007 || (sub_18E1D5BF4(v998, v999, 0xD000000000000041, v1000, v1001, v1002, v1003, v1004, v1422, v1461, v1005, v1542, v1584, v1626, v1667, v1708, v1750, v1792, v1833, v1874, v1912, v1953, v1993, v2034, v2075, v2116, v2157, v2198, v2239, v2280, v2321, v2362, v2403, v2445, v2486, v2527, v2568, v2610), (sub_18E44F3CC() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1008);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1009);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerPersonalizedSmartReply(variant:)(v1010);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerPersonalizedSmartReply(variant:)(v1011);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1012 = swift_allocObject();
    sub_18E1C6378(v1012);
    sub_18E1D00D4();
    v1021 = v1502;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1013, v1021, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1422);
  }

  sub_18E1E391C();
  sub_18E239C08();
  v1875 = v1031;
  v1032 = v8 && v1031 == v9;
  if (v1032 || (sub_18E1D5BF4(v1024, v1025, 0xD000000000000036, v1026, v1027, v1028, v1029, v1030, v1422, v1462, v1502, v1543, v1585, v1627, v1668, v1709, v1751, v1793, v1834, v1031, v1913, v1954, v1994, v2035, v2076, v2117, v2158, v2199, v2240, v2281, v2322, v2363, v2404, v2446, v2487, v2528, v2569, v2611), (sub_18E44F3CC() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1033);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1034);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosCommon(variant:)(v1035);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosCommon(variant:)(v1036);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1037 = swift_allocObject();
    sub_18E1C6378(v1037);
    goto LABEL_1038;
  }

  sub_18E1E391C();
  sub_18E1E10F8();
  v1875 = v1045;
  v1046 = v8 && v1045 == v9;
  if (v1046 || (sub_18E1D5BF4(v1038, v1039, 0xD000000000000047, v1040, v1041, v1042, v1043, v1044, v1422, v1463, v1503, v1544, v1586, v1628, v1669, v1710, v1752, v1794, v1835, v1045, v1914, v1955, v1995, v2036, v2077, v2118, v2159, v2200, v2241, v2282, v2323, v2364, v2405, v2447, v2488, v2529, v2570, v2612), (sub_18E44F3CC() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1047);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1048);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCuration(variant:)(v1049);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCuration(variant:)(v1050);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1051 = swift_allocObject();
    sub_18E1C6378(v1051);
LABEL_1038:
    sub_18E1D00D4();
    v1021 = v1875;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1013, v1021, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1422);
  }

  v14 = 0x800000018E4546D0;
  v1052 = v2613 == 0xD00000000000004ALL && 0x800000018E4546D0 == v9;
  if (v1052 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1053);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1054);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2(variant:)(v1055);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2(variant:)(v1056);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1057 = swift_allocObject();
    sub_18E1C6378(v1057);
    goto LABEL_1295;
  }

  sub_18E1CE8FC();
  sub_18E1E9FBC();
  v1058 = v8 && 0x800000018E4546D0 == v9;
  if (v1058 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1059);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1060);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits(variant:)(v1061);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits(variant:)(v1062);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1063 = swift_allocObject();
    sub_18E1C6378(v1063);
    goto LABEL_1295;
  }

  sub_18E1CE8FC();
  v1072 = v2613 == 0xD000000000000049 && 0x800000018E4546D0 == v9;
  if (v1072 || (sub_18E1D5BF4(v1064, v1065, v1066, v1067, v1068, v1069, v1070, v1071, v1422, v1464, v1504, v1545, v1587, v1629, v1670, v1711, v1753, v1795, v1836, v1875, v1915, v1956, v1996, v2037, v2078, v2119, v2160, v2201, v2242, v2283, v2324, v2365, v2406, v2448, v2489, v2530, v2571, v2613), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1073);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1074);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v1075);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v1076);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  v1078 = v1077 == 0xD000000000000049 && 0x800000018E4546D0 == v9;
  if (v1078 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1079);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1080);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3(variant:)(v1081);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3(variant:)(v1082);
    goto LABEL_1294;
  }

  sub_18E1CE8FC();
  sub_18E1E9FBC();
  v1083 = v8 && 0x800000018E4546D0 == v9;
  if (v1083 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1084);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1085);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1086);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1087);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1088 = swift_allocObject();
    sub_18E1C6378(v1088);
    goto LABEL_1295;
  }

  sub_18E1CE8FC();
  v3 = 0xD00000000000004FLL;
  v1097 = v2614 == 0xD00000000000004FLL && 0x800000018E4546D0 == v9;
  if (v1097 || (sub_18E1D5BF4(v1089, v1090, v1091, v1092, v1093, v1094, v1095, v1096, v1422, v1465, v1505, v1546, v1588, v1630, v1671, v1712, v1754, v1796, v1837, v1876, v1916, v1957, v1997, v2038, v2079, v2120, v2161, v2202, v2243, v2284, v2325, v2366, v2407, v2449, v2490, v2531, v2572, v2614), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1098);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1099);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1100);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1101);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  v1103 = v1102 == 0xD00000000000004FLL && 0x800000018E4546D0 == v9;
  if (v1103 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1104);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1105);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3(variant:)(v1106);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3(variant:)(v1107);
    goto LABEL_1294;
  }

  sub_18E1CE8FC();
  v1116 = v2615 == 0xD000000000000044 && 0x800000018E4546D0 == v9;
  if (v1116 || (sub_18E1D5BF4(v1108, v1109, v1110, v1111, v1112, v1113, v1114, v1115, v1422, v1466, v1506, v1547, v1589, v1631, v1672, v1713, v1755, v1797, v1838, 0xD000000000000044, v1917, v1958, v1998, v2039, v2080, v2121, v2162, v2203, v2244, v2285, v2326, v2367, v2408, v2450, v2491, v2532, v2573, v2615), (sub_18E1E887C() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1117);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1118);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller(variant:)(v1119);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller(variant:)(v1120);
    sub_18E1D5E64();

    sub_18E1C57F8();
    goto LABEL_1229;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v1121 = v8 && 0x800000018E4546D0 == v9;
  if (v1121 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1122);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1123);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStorytellerV2(variant:)(v1124);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2(variant:)(v1125);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1126 = swift_allocObject();
    sub_18E1C6378(v1126);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  v1128 = v1127 == 0xD000000000000030 && 0x800000018E4546D0 == v9;
  if (v1128 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1129);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1130);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.Planner(variant:)(v1131);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.Planner(variant:)(v1132);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1133 = swift_allocObject();
    sub_18E1C6378(v1133);
    goto LABEL_1295;
  }

  sub_18E1CAD14();
  v1134 = v8 && 0x800000018E4546D0 == v9;
  if (v1134 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1135);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1136);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV2(variant:)(v1142);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV2(variant:)(v1143);
    goto LABEL_1144;
  }

  sub_18E1CAD14();
  v1137 = v8 && 0x800000018E4546D0 == v9;
  if (v1137 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1138);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1139);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV3(variant:)(v1140);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV3(variant:)(v1141);
    goto LABEL_1144;
  }

  sub_18E1CAD14();
  v1144 = v8 && 0x800000018E4546D0 == v9;
  if (v1144 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1145);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1146);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV7(variant:)(v1147);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV7(variant:)(v1148);
    goto LABEL_1144;
  }

  sub_18E1CAD14();
  v1149 = v8 && 0x800000018E4546D0 == v9;
  if (v1149 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1150);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1151);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV8(variant:)(v1152);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV8(variant:)(v1153);
    goto LABEL_1144;
  }

  sub_18E1CAD14();
  v1154 = v8 && 0x800000018E4546D0 == v9;
  if (v1154 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1155);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1156);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV9(variant:)(v1157);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV9(variant:)(v1158);
LABEL_1144:

    sub_18E1C57F8();
LABEL_1229:
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1225 = swift_allocObject();
    sub_18E1C6378(v1225);
LABEL_1295:
    sub_18E1D00D4();
    v1021 = v14;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1013, v1021, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1422);
  }

  sub_18E220494();
  sub_18E1CF5B0();
  v1159 = v8 && v9 == 0xD00000000000004FLL;
  if (v1159 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1160);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1161);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ServerPQAVerification(variant:)(v1162);

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1163 = swift_allocObject();
    sub_18E1C6378(v1163);
    goto LABEL_1432;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v1164 = v8 && 0x800000018E4546D0 == v9;
  if (v1164 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1165);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1166);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v1167);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v1168);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v1169 = v8 && 0x800000018E4546D0 == v9;
  if (v1169 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1170);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1171);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerProofreadingReview(variant:)(v1172);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerProofreadingReview(variant:)(v1173);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  v1175 = v1174 == v1548 && 0x800000018E4546D0 == v9;
  if (v1175 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1176);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1177);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.RemindersAutoCategorizeList(variant:)(v1178);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.RemindersAutoCategorizeList(variant:)(v1179);

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1180 = swift_allocObject();
    sub_18E1C6378(v1180);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v1181 = v8 && 0x800000018E4546D0 == v9;
  if (v1181 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1182);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1183);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGeneration(variant:)(v1184);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGeneration(variant:)(v1185);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v1186 = v8 && 0x800000018E4546D0 == v9;
  if (v1186 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1187);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1188);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV2(variant:)(v1189);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV2(variant:)(v1190);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v1191 = v8 && 0x800000018E4546D0 == v9;
  if (v1191 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1192);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1193);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV3(variant:)(v1194);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV3(variant:)(v1195);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v1196 = v8 && 0x800000018E4546D0 == v9;
  if (v1196 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1197);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1198);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV7(variant:)(v1199);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV7(variant:)(v1200);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v1201 = v8 && 0x800000018E4546D0 == v9;
  if (v1201 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1202);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1203);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV8(variant:)(v1204);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV8(variant:)(v1205);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  v1207 = v1206 == v1756 && 0x800000018E4546D0 == v9;
  if (v1207 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1208);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1209);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingServer(variant:)(v1210);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingServer(variant:)(v1211);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  v1213 = v1212 == v1714 && 0x800000018E4546D0 == v9;
  if (v1213 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1214);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1215);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction(variant:)(v1216);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction(variant:)(v1217);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v1218);

    sub_18E223320();
    goto LABEL_1229;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v1219 = v8 && 0x800000018E4546D0 == v9;
  if (v1219 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1220);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1221);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMActionV2(variant:)(v1222);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMActionV2(variant:)(v1223);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v1224);

    sub_18E223320();
    goto LABEL_1229;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v1226 = v8 && 0x800000018E4546D0 == v9;
  if (v1226 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1227);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1228);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerStructuredExtraction(variant:)(v1229);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerStructuredExtraction(variant:)(v1230);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v1231 = v8 && 0x800000018E4546D0 == v9;
  if (v1231 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1232);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1233);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.STXMultimodal(variant:)(v1234);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.STXMultimodal(variant:)(v1235);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v1236);

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1237 = swift_allocObject();
    sub_18E1C6378(v1237);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  sub_18E1D5F30();
  v1238 = v8 && 0x800000018E4546D0 == v9;
  if (v1238 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1239);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1240);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SuperAutofillMultimodal(variant:)(v1241);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.SuperAutofillMultimodal(variant:)(v1242);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)(v1248);

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1254 = swift_allocObject();
    sub_18E1C6378(v1254);
    goto LABEL_1295;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v1243 = v8 && 0x800000018E4546D0 == v9;
  if (v1243 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1244);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1245);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerTablesTransform(variant:)(v1246);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerTablesTransform(variant:)(v1247);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v1249 = v8 && 0x800000018E4546D0 == v9;
  if (v1249 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1250);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1251);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerTakeawaysTransform(variant:)(v1252);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerTakeawaysTransform(variant:)(v1253);
    goto LABEL_1294;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v1255 = v8 && 0x800000018E4546D0 == v9;
  if (v1255 || (sub_18E1D0318() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1256);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1257);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SummarizationTextSummarizer(variant:)(v1262);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SummarizationTextSummarizer(variant:)(v1268);
    goto LABEL_1294;
  }

  sub_18E220494();
  sub_18E1E3AF8();
  v1258 = v8 && v9 == 0xD00000000000004FLL;
  if (v1258 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1259);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1260);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1261 = swift_allocObject();
    sub_18E1C6378(v1261);
    goto LABEL_1432;
  }

  sub_18E220494();
  sub_18E1E3194();
  v1263 = v8 && v9 == 0xD00000000000004FLL;
  if (v1263 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1264);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1265);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FinancialInsights(variant:)(v1266);

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1267 = swift_allocObject();
    sub_18E1C6378(v1267);
    goto LABEL_1432;
  }

  sub_18E220494();
  v1270 = v1269 == v2327 && v9 == 0xD00000000000004FLL;
  if (v1270 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1271);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase(variant:)(v1272);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1273 = swift_allocObject();
    sub_18E1C6378(v1273);
    goto LABEL_1432;
  }

  sub_18E220494();
  sub_18E1D1940();
  v1275 = v8 && v9 == 0xD00000000000004FLL;
  if (v1275 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1276);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.PQAVerificationBase(variant:)(v1277);
LABEL_181:

    sub_18E1CD75C();
LABEL_182:
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v193 = swift_allocObject();
    sub_18E1C6378(v193);
    goto LABEL_18;
  }

  sub_18E220494();
  sub_18E1E3614();
  v1278 = v8 && v9 == 0xD00000000000004FLL;
  if (v1278 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1279);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase(variant:)(v1280);

    sub_18E1CD75C();
LABEL_1310:
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1281 = swift_allocObject();
    sub_18E1C6378(v1281);
LABEL_1432:
    sub_18E1D00D4();
    v1021 = v3;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1013, v1021, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1422);
  }

  sub_18E220494();
  v1283 = v1282 == 0xD000000000000030 && v9 == 0xD00000000000004FLL;
  if (v1283 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1284);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Animation(variant:)(v1285);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1286 = swift_allocObject();
    sub_18E1CFC6C(v1286);
    goto LABEL_1410;
  }

  sub_18E220494();
  v1288 = v1287 == v1590 && v9 == 0xD00000000000004FLL;
  if (v1288 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1289);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E223EC8();
    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1290 = swift_allocObject();
    sub_18E1CFC6C(v1290);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E1E6854();
  v1291 = v8 && v9 == 0xD00000000000004FLL;
  if (v1291 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1292);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Emoji(variant:)(v1293);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1294 = swift_allocObject();
    sub_18E1CFC6C(v1294);
    goto LABEL_1410;
  }

  sub_18E220494();
  v1296 = v1295 == v2327 && v9 == 0xD00000000000004FLL;
  if (v1296 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1297);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Illustration(variant:)(v1298);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1299 = swift_allocObject();
    sub_18E1CFC6C(v1299);
    goto LABEL_1410;
  }

  sub_18E220494();
  v1301 = v1300 == v1632 && v9 == 0xD00000000000004FLL;
  if (v1301 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1302);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds(variant:)(v1303);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1304 = swift_allocObject();
    sub_18E1CFC6C(v1304);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E1E3614();
  v1305 = v8 && v9 == 0xD00000000000004FLL;
  if (v1305 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1306);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation(variant:)(v1307);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1308 = swift_allocObject();
    sub_18E1CFC6C(v1308);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E1CF5B0();
  v1309 = v8 && v9 == 0xD00000000000004FLL;
  if (v1309 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1310);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji(variant:)(v1311);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1312 = swift_allocObject();
    sub_18E1CFC6C(v1312);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E1E22F0();
  v1313 = v8 && v9 == 0xD00000000000004FLL;
  if (v1313 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1314);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration(variant:)(v1315);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1316 = swift_allocObject();
    sub_18E1CFC6C(v1316);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E221E34();
  v1317 = v8 && v9 == 0xD00000000000004FLL;
  if (v1317 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1318);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch(variant:)(v1319);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1320 = swift_allocObject();
    sub_18E1CFC6C(v1320);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v1321 = v8 && v9 == 0xD00000000000004FLL;
  if (v1321 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1322);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble(variant:)(v1323);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1324 = swift_allocObject();
    sub_18E1CFC6C(v1324);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E1CFDF0();
  v1325 = v8 && v9 == 0xD00000000000004FLL;
  if (v1325 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1326);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Refiner(variant:)(v1327);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1328 = swift_allocObject();
    sub_18E1CFC6C(v1328);
    goto LABEL_1410;
  }

  sub_18E220494();
  v1330 = v1329 == 0xD00000000000002DLL && v9 == 0xD00000000000004FLL;
  if (v1330 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1331);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Sketch(variant:)(v1332);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1333 = swift_allocObject();
    sub_18E1CFC6C(v1333);
    goto LABEL_1410;
  }

  sub_18E220494();
  sub_18E2019F8();
  v1334 = v8 && v9 == 0xD00000000000004FLL;
  if (v1334 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1335);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji(variant:)(v1336);
    goto LABEL_1409;
  }

  sub_18E220494();
  sub_18E2019F8();
  v1337 = v8 && v9 == 0xD00000000000004FLL;
  if (v1337 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1338);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Scribble(variant:)(v1339);
LABEL_1409:

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v1340 = swift_allocObject();
    sub_18E1CFC6C(v1340);
LABEL_1410:
    sub_18E1E842C();
    AssetBackedDiffusionBundle.init(configurationIdentifier:baseModel:adapter:)();
    return result;
  }

  sub_18E220494();
  v1342 = v1341 == 0xD000000000000022 && v9 == 0xD00000000000004FLL;
  if (v1342 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.FoundationModelsPlatformDummyTokenizer(variant:)(v1343);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase(variant:)(v1344);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1345 = swift_allocObject();
    sub_18E1C6378(v1345);
    goto LABEL_1432;
  }

  sub_18E220494();
  v1347 = v1346 == 0xD000000000000022 && v9 == 0xD00000000000004FLL;
  if (v1347 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.NLRouterTokenizer(variant:)(v1348);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.NLRouterBase(variant:)(v1349);
LABEL_107:

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v115 = swift_allocObject();
    sub_18E1C6378(v115);
LABEL_18:
    sub_18E1D00D4();
    v30 = v3;
    return AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v22, v30, v23, v24, v25, v26, v27, v28, v29, v1422);
  }

  sub_18E1D44C0();
  sub_18E1E9FBC();
  v1350 = v8 && v9 == 0xD00000000000004FLL;
  if (v1350 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.ChatGPTTokenizer(variant:)(v1351);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.ChatGPT(variant:)(v1352);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1353 = swift_allocObject();
    sub_18E1C6378(v1353);
    goto LABEL_1432;
  }

  sub_18E220494();
  sub_18E1E6854();
  v1354 = v8 && v9 == 0xD00000000000004FLL;
  if (v1354 || (sub_18E1D7DE8() & 1) != 0)
  {
    sub_18E2491A4(0x6E6F697461636F6CLL, 0xEF746E6169726156, a1);
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin(variant:)(v1355);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E2352DC(0xD000000000000013, "tokenInputDenyListVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin(variant:)(v1356);

    *(a2 + 24) = &type metadata for ImageSpatialPhotosReliveBundle;
    *(a2 + 32) = sub_18E231008();
    sub_18E1E2C84();
    v1357 = swift_allocObject();
    sub_18E1CFC6C(v1357);
    sub_18E1E842C();
    ImageSpatialPhotosReliveBundle.init(configurationIdentifier:location:fovestimator:)(v1358, v1359, v1360, v1361);
  }

  else
  {
    sub_18E1D44C0();
    v1362 = v2616 == v2574 && v9 == 0xD00000000000004FLL;
    if (v1362 || (sub_18E1D7DE8() & 1) != 0)
    {
      sub_18E2491A4(0x6E6F697461636F6CLL, 0xEF746E6169726156, a1);
      sub_18E216858();
      sub_18E2244EC();
      static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain(variant:)(v1363);
      if (v2)
      {
        goto LABEL_7;
      }

      sub_18E2352DC(0xD000000000000013, "tokenInputDenyListVariant");
      sub_18E216858();
      sub_18E1E14A8();
      static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain(variant:)(v1364);

      *(a2 + 24) = &type metadata for AssetBackedImageSpatialPhotosReliveBundle;
      *(a2 + 32) = sub_18E23144C();
      sub_18E1E2C84();
      v1365 = swift_allocObject();
      sub_18E1CFC6C(v1365);
      sub_18E1E842C();
      AssetBackedImageSpatialPhotosReliveBundle.init(configurationIdentifier:location:fovestimator:)(v1366, v1367, v1368, v1369);
    }

    else
    {
      sub_18E220494();
      sub_18E1CFDF0();
      v1370 = v8 && v9 == 0xD00000000000004FLL;
      if (v1370 || (sub_18E1D7DE8() & 1) != 0)
      {
        sub_18E2352DC(0xD000000000000016, "embeddingDenyListVariant");
        sub_18E216858();
        sub_18E2244EC();
        static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v1371);
        if (v2)
        {
          goto LABEL_7;
        }

        sub_18E2352DC(0xD000000000000019, "defaultDenyListVariant");
        sub_18E216858();
        sub_18E1E0FB0();
        static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList(variant:)(v1372);

        sub_18E1FECD0("embeddingDenyListVariant");
        sub_18E216858();
        sub_18E1E30F8();
        static Catalog.Resource.EmbeddingDenyList.All(variant:)(v1373);

        *(a2 + 24) = &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle;
        *(a2 + 32) = sub_18E2316AC();
        sub_18E1E6400();
        v1374 = swift_allocObject();
        sub_18E1CFC6C(v1374);
        sub_18E232DF0();
        AssetBackedTokenInputDenyListWithDefaultsBundle.init(configurationIdentifier:defaultDenyList:tokenInputDenyList:embeddingDenyList:)(v1375, v1376, v1377, v1378, v1379, v1380);
      }

      else
      {
        sub_18E220494();
        v1382 = v1381 == v2409 && v9 == 0xD00000000000004FLL;
        if (v1382 || (sub_18E1D7DE8() & 1) != 0)
        {
          sub_18E2352DC(0xD000000000000019, "defaultDenyListVariant");
          sub_18E216858();
          sub_18E2244EC();
          static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList(variant:)(v1383);
          if (v2)
          {
            goto LABEL_7;
          }

          sub_18E1FECD0("embeddingDenyListVariant");
          sub_18E216858();
          sub_18E1E14A8();
          static Catalog.Resource.EmbeddingDenyList.All(variant:)(v1384);

          *(a2 + 24) = &type metadata for AssetBackedTokenInputDenyListBundle;
          *(a2 + 32) = sub_18E207A4C();
          sub_18E1E2C84();
          v1385 = swift_allocObject();
          sub_18E1CFC6C(v1385);
          sub_18E1E842C();
          AssetBackedTokenInputDenyListBundle.init(configurationIdentifier:tokenInputDenyList:embeddingDenyList:)(v1386, v1387, v1388, v1389);
        }

        else
        {
          sub_18E220494();
          sub_18E1CFFF4();
          v1390 = v8 && v9 == 0xD00000000000004FLL;
          if (v1390 || (sub_18E1D7DE8() & 1) != 0)
          {
            sub_18E2352DC(0xD000000000000016, "embeddingDenyListVariant");
            sub_18E216858();
            sub_18E2244EC();
            static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v1391);
            if (v2)
            {
              goto LABEL_7;
            }

            sub_18E2352DC(0xD00000000000001ALL, "tokenOutputRetainListVariant");
            sub_18E216858();
            sub_18E1E0FB0();
            static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList(variant:)(v1392);

            sub_18E1FECD0("embeddingDenyListVariant");
            sub_18E216858();
            sub_18E1E30F8();
            static Catalog.Resource.EmbeddingDenyList.All(variant:)(v1393);

            *(a2 + 24) = &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle;
            *(a2 + 32) = sub_18E2319DC();
            sub_18E1E6400();
            v1402 = swift_allocObject();
            sub_18E1CFC6C(v1402);
            sub_18E232DF0();
            AssetBackedTokenOutputDenyListWithDefaultsBundle.init(configurationIdentifier:defaultDenyList:tokenOutputDenyList:embeddingDenyList:)(v1403, v1404, v1405, v1406, v1407, v1408);
          }

          else
          {
            sub_18E220494();
            sub_18E1D1940();
            v1394 = v8 && v9 == 0xD00000000000004FLL;
            if (!v1394 && (sub_18E1D7DE8() & 1) == 0)
            {
              sub_18E1D44C0();
              sub_18E1E9FBC();
              v1409 = v8 && v9 == 0xD00000000000004FLL;
              if (v1409 || (sub_18E1D7DE8() & 1) != 0)
              {
                sub_18E1E2F00("tokenOutputRetainListVariant");
                sub_18E216858();
                sub_18E224E1C();
                static Catalog.Resource.TokenOutputRetainList.STXSafetyWordList(variant:)(v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418);
                if (v2)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                sub_18E220494();
                sub_18E2234B8();
                v1419 = v8 && v9 == 0xD00000000000004FLL;
                if (!v1419 && (sub_18E1D7DE8() & 1) == 0)
                {
                  *(a2 + 32) = 0;
                  result = 0.0;
                  *a2 = 0u;
                  *(a2 + 16) = 0u;
                  return result;
                }

                sub_18E1E2F00("tokenOutputRetainListVariant");
                sub_18E216858();
                sub_18E224E1C();
                static Catalog.Resource.TokenOutputRetainList.ProofreadingRetainList(variant:)(v1420);
                if (v2)
                {
                  goto LABEL_7;
                }
              }

              *(a2 + 24) = &type metadata for AssetBackedTokenOutputRetainListBundle;
              *(a2 + 32) = sub_18E2AE01C();
              sub_18E1E1950();
              v1421 = swift_allocObject();
              sub_18E1CFC6C(v1421);
              sub_18E220D78();
              AssetBackedTokenOutputRetainListBundle.init(configurationIdentifier:tokenOutputRetainList:)();
              return result;
            }

            sub_18E2352DC(0xD00000000000001ALL, "tokenOutputRetainListVariant");
            sub_18E216858();
            sub_18E2244EC();
            static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList(variant:)(v1395);
            if (v2)
            {
              goto LABEL_7;
            }

            sub_18E1FECD0("embeddingDenyListVariant");
            sub_18E216858();
            sub_18E1E14A8();
            static Catalog.Resource.EmbeddingDenyList.All(variant:)(v1396);

            *(a2 + 24) = &type metadata for AssetBackedTokenOutputDenyListBundle;
            *(a2 + 32) = sub_18E231D0C();
            sub_18E1E2C84();
            v1397 = swift_allocObject();
            sub_18E1CFC6C(v1397);
            sub_18E1E842C();
            AssetBackedTokenOutputDenyListBundle.init(configurationIdentifier:tokenOutputDenyList:embeddingDenyList:)(v1398, v1399, v1400, v1401);
          }
        }
      }
    }
  }

  return result;
}