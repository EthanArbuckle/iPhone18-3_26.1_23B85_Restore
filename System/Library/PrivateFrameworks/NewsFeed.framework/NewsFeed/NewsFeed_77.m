void FormatAnimationNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    sub_1D621397C(a1, a2, v3);
  }
}

void sub_1D6240000(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    sub_1D621397C(a1, a2, v3);
  }
}

uint64_t sub_1D6240020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a4;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v6 = *(&v10 + 1);
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    (*(v7 + 8))(a1, a2, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t sub_1D624011C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1 && (a4 & 0xF000000000000007) != 0xF000000000000007)
  {
    v6 = result;

    FormatTextContent.bind(binder:context:)(v6, a2);
  }

  return result;
}

uint64_t FormatAsyncImageContent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      v17 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v7 == 5)
      {

        sub_1D6248794(v5, a2, v17, v18, FormatAsyncImageContent.bind(binder:context:));
      }

      else
      {

        sub_1D6250710(v5, a2, v17, v18, FormatAsyncImageContent.bind(binder:context:));
      }
    }

    else if (v7 == 7)
    {
      *&v52 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      FormatAsyncImageContent.bind(binder:context:)(v5, a2);
      if (v3)
      {
      }

      else
      {

        FormatImageNodeStyle.bind(binder:context:)(v5, a2);
      }
    }

    else if (v7 == 8)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v52 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      FormatAsyncImageContent.bind(binder:context:)(v5, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D623C2C8(v5, a2, v11);
      }
    }
  }

  else if (v7 <= 1)
  {
    v60 = v3;
    if (v7)
    {
      v35 = v6 & 0xFFFFFFFFFFFFFFFLL;
      v36 = *(v35 + 80);
      v55 = *(v35 + 64);
      v56 = v36;
      v57 = *(v35 + 96);
      *&v58 = *(v35 + 112);
      v37 = *(v35 + 32);
      v52 = *(v35 + 16);
      v53 = v37;
      v38 = *(v35 + 64);
      v54 = *(v35 + 48);
      v39 = *(v35 + 80);
      v40 = *(v35 + 96);
      v47 = v38;
      v48 = v39;
      v49 = v40;
      v41 = *(v35 + 32);
      v42 = *(v35 + 48);
      v44 = *(v35 + 16);
      *&v50 = *(v35 + 112);
      v45 = v41;
      v46 = v42;
      sub_1D5D0322C(&v52, v43);
      FormatSymbolImage.bind(binder:context:)(v5, a2);
      return sub_1D5D07BBC(&v52);
    }

    else
    {
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v14 = *(v6 + 40);
      v15 = *(v6 + 48);
      v16 = *(v6 + 56);
      *&v52 = *(v6 + 16);
      *(&v52 + 1) = v12;
      *&v53 = v13;
      *(&v53 + 1) = v14;
      *&v54 = v15;
      BYTE8(v54) = v16;
      sub_1D62B4B68(v52, v12, v13, v14, v15, v16);
      FormatImageNodeBinding.bind(binder:context:)(v5, a2);
      return sub_1D62B4C5C(v52, v12, v13, v14, v15, v16);
    }
  }

  else if (v7 == 2)
  {
    v20 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v19 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    if (*((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40) > 1u)
    {
      if (*((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40) != 2)
      {
        return result;
      }

      sub_1D5E433E0(*((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30), *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x38), 2u);
      sub_1D620B270(v5, a2, v20);
      if (!v3)
      {
        sub_1D620B270(v5, a2, v19);
      }

      v23 = v20;
      v24 = v19;
      v25 = 2;
    }

    else
    {
      v21 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v22 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x40))
      {
        sub_1D5E433E0(v21, v22, 1u);
        sub_1D620B270(v5, a2, v20);
        v23 = v20;
        v24 = v19;
        v25 = 1;
      }

      else
      {
        sub_1D5E433E0(v21, v22, 0);
        sub_1D620B270(v5, a2, v20);
        v23 = v20;
        v24 = v19;
        v25 = 0;
      }
    }

    return sub_1D5E4342C(v23, v24, v25);
  }

  else if (v7 == 3)
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

    sub_1D6209FB8(v5, a2, v8, v9, v10, FormatAsyncImageContent.bind(binder:context:), FormatAsyncImageContent.bind(binder:context:));
  }

  else
  {
    v26 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v27 = *(v26 + 96);
    v56 = *(v26 + 80);
    v57 = v27;
    v58 = *(v26 + 112);
    v59 = *(v26 + 128);
    v28 = *(v26 + 32);
    v52 = *(v26 + 16);
    v53 = v28;
    v29 = *(v26 + 64);
    v54 = *(v26 + 48);
    v55 = v29;
    v30 = *(v26 + 80);
    v31 = *(v26 + 112);
    v49 = *(v26 + 96);
    v50 = v31;
    v32 = *(v26 + 32);
    v44 = *(v26 + 16);
    v33 = *(v26 + 48);
    v34 = *(v26 + 64);
    v45 = v32;
    v46 = v33;
    v51 = *(v26 + 128);
    v47 = v34;
    v48 = v30;
    sub_1D5D093E8(&v52, v43);
    FormatRemoteImage.bind(binder:context:)(v5, a2);
    return sub_1D5D09904(&v52);
  }

  return result;
}

unint64_t FormatSymbolImage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + 40);
  v20 = *(v2 + 32);
  v5 = *(v2 + 48);
  v21 = *v2;
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v9 = *(v2 + 96);
  v22 = *(v2 + 8);
  v23 = *(v2 + 16);
  v24 = *(v2 + 24);
  sub_1D5FB995C(*v2, v22, v23, v24);
  sub_1D61E0984(a2);
  if (v3)
  {
    return sub_1D5FBA070(v21, v22, v23, v24);
  }

  v18 = v8;
  sub_1D5FBA070(v21, v22, v23, v24);
  v11 = v5 >> 8;
  if (v5 >> 8 > 0xFE)
  {
    v12 = a2;
    goto LABEL_16;
  }

  v12 = a2;
  if (v5 >> 8 > 2)
  {
    v14 = v19;
    v13 = v20;
  }

  else
  {
    if (!v11)
    {
      sub_1D5F586A4(v20, v19, v5, 0);
      FormatSymbolConfig.Font.bind(binder:context:)(a1, a2);
      sub_1D5FBACE0(v20, v19, v5);
      goto LABEL_16;
    }

    v13 = v20;
    if (v11 != 1)
    {
      v14 = v19;
      sub_1D5F586A4(v20, v19, v5, 2);
      v15 = a1;
      v16 = a2;
      v17 = v20;
      goto LABEL_14;
    }

    v14 = v19;
    if (v19)
    {
      sub_1D5F586A4(v20, v19, v5, 1);
      v15 = a1;
      v16 = a2;
      v17 = v19;
LABEL_14:
      sub_1D620B270(v15, v16, v17);
    }
  }

  sub_1D5FBACE0(v13, v14, v5);
LABEL_16:
  sub_1D5C75A4C(v6, v7, v18);
  sub_1D60ECF10(v12);
  result = sub_1D5D2F2C8(v6, v7, v18);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    sub_1D5F33D5C(v9);
    FormatSymbolImageColor.bind(binder:context:)(a1, v12);
    return sub_1D5F33D8C(v9);
  }

  return result;
}

uint64_t FormatBundleImage.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (*(v2 + 48) > 1u)
  {
    if (*(v2 + 48) != 2)
    {
      return result;
    }

    sub_1D5E433E0(*(v2 + 32), *(v2 + 40), 2u);
    sub_1D620B270(v5, a2, v7);
    if (v3)
    {
      return sub_1D5E4342C(v7, v6, 2u);
    }

    sub_1D620B270(v5, a2, v6);
    v10 = v7;
    v11 = v6;
    v12 = 2;
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    if (*(v2 + 48))
    {
      sub_1D5E433E0(v8, v9, 1u);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 1;
    }

    else
    {
      sub_1D5E433E0(v8, v9, 0);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 0;
    }
  }

  return sub_1D5E4342C(v10, v11, v12);
}

uint64_t FormatRemoteImage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v21 = v2[3];
  v22 = v2[4];
  v20 = v2[5];
  v23 = v2[7];
  v18 = v2[8];
  v19 = v2[6];
  v24 = v2[9];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];

  FormatURL.bind(binder:context:)(a1, a2);
  if (v3)
  {
  }

  v17 = v7;
  v16 = v9;

  FormatURL.bind(binder:context:)(a1, a2);

  FormatURL.bind(binder:context:)(a1, a2);
  v12 = a2;

  if ((~v21 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, a2);
    v13 = v6;
    v15 = v23;
    v14 = v24;

    if ((~v22 & 0xF000000000000007) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = v6;
  v15 = v23;
  v14 = v24;
  if ((~v22 & 0xF000000000000007) != 0)
  {
LABEL_9:

    FormatURL.bind(binder:context:)(a1, v12);
  }

LABEL_10:
  if ((~v20 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v19 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v18 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v8 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  if ((~v10 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v12);
  }

  return result;
}

uint64_t sub_1D6240FD0(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v218 = a2;
  v219 = a1;
  v214 = type metadata accessor for FormatOption();
  v5 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214, v6);
  v202 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v201 = &v192 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v192 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v204 = &v192 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v203 = &v192 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v207 = (&v192 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v211 = &v192 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v210 = &v192 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v192 - v32;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v208 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v205 = &v192 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v209 = &v192 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v206 = &v192 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v213 = &v192 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v212 = &v192 - v51;
  v52 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v52, v53);
  v215 = v2;
  v56 = *v2;
  v57 = *(*v2 + 16);
  if (!v57)
  {
LABEL_133:
    v163 = v215;
    v164 = *(v215 + 3);
    v231[0] = *(v215 + 1);
    v231[1] = v164;
    v232[0] = *(v215 + 5);
    *(v232 + 15) = *(v215 + 55);
    sub_1D62B6438(v231, v230, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
    FormatOptionsNodeStatementValue.bind(binder:context:)(v219, v218);
    v165 = *(v163 + 3);
    *v230 = *(v163 + 1);
    *&v230[16] = v165;
    *&v230[32] = *(v163 + 5);
    *&v230[47] = *(v163 + 55);
    v166 = v230;
    return sub_1D5CF603C(v166);
  }

  v197 = v14;
  v235 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = (v56 + 32);
  v199 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v200 = (v5 + 56);
  v216 = v52;
  v217 = (v54 + 8);
  v198 = v33;
  while (1)
  {
    v60 = v58[1];
    v59 = v58[2];
    v61 = *v58;
    *&v230[43] = *(v58 + 43);
    *&v230[32] = v59;
    *v230 = v61;
    *&v230[16] = v60;
    v62 = v61;
    v221 = v61;
    sub_1D62B6438(v230, &v225, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);

    sub_1D71C3968(v219, v218, v235);
    if (v4)
    {

      return sub_1D62B7904(v230);
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      break;
    }

LABEL_46:
    v113 = v235;
    v114 = sub_1D725BC5C();
    sub_1D62B7904(v230);
    result = (*v217)(v113, v52);
    if (v114)
    {
      return result;
    }

    v58 += 4;
    if (!--v57)
    {
      goto LABEL_133;
    }
  }

  v224 = v62;

  v63 = v218;
  FormatExpression.bind(binder:context:)(v219, v218);

  v64 = *&v230[8];
  v66 = *&v230[24];
  v65 = *&v230[16];
  v67 = *&v230[40];
  v68 = v230[56];
  v69 = ((4 * v230[58]) | (*&v230[56] >> 11) & 3);
  if (v69 > 3)
  {
    if (((4 * v230[58]) | (*&v230[56] >> 11) & 3) <= 5u)
    {
      if (v69 == 4)
      {
        v225 = *&v230[8];
        v226 = *&v230[24];
        v227 = *&v230[40];
        v228 = *&v230[48];
        v229 = *&v230[56] & 0xE7FF;
        sub_1D62B78B4(*&v230[8], *&v230[16], *&v230[24], *&v230[32], *&v230[40], *&v230[48], *&v230[56] & 0xE7FF);
        FormatOptionsNodeStatementBinding.bind(binder:context:)(v219, v63);
      }

      else
      {

        sub_1D620F94C(v219, v63, v67);
      }

      v4 = 0;
      goto LABEL_30;
    }

    if (v69 != 6)
    {
      if (v69 != 7)
      {
        v93 = *(*&v230[8] + 32);
        v233[0] = *(*&v230[8] + 16);
        v233[1] = v93;
        v234[0] = *(*&v230[8] + 48);
        *(v234 + 11) = *(*&v230[8] + 59);
        sub_1D5CF5DBC(&v230[8], &v225);
        sub_1D62B6438(v233, &v225, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
        sub_1D6240FD0(v219, v63);
        sub_1D62B6514(v233);
        goto LABEL_30;
      }

      if ((*&v230[8] >> 62) > 1)
      {
        if (*&v230[8] >> 62 == 3)
        {
          v70 = v63;
          v72 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v221 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v71 = v221;
          sub_1D5CF5DBC(&v230[8], &v225);
          v196 = v71;
          swift_retain_n();

          v73 = v219;
          FormatURL.bind(binder:context:)(v219, v70);

          sub_1D620FAB4(v73, v70, v72);
          swift_bridgeObjectRelease_n();

          goto LABEL_30;
        }

        v110 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v111 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v112 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v221 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v109 = v221;
        *&v222 = v110;
        *(&v222 + 1) = v111;
        v223 = v112;
        sub_1D5CF5DBC(&v230[8], &v225);
        sub_1D5D27950(v109, v110, v111, v112);
        sub_1D6089844(v218);
        v89 = v109;
        v90 = v110;
        v91 = v111;
        v92 = v112;
LABEL_44:
        sub_1D5D28C84(v89, v90, v91, v92);
        sub_1D5CF603C(&v230[8]);
      }

      goto LABEL_45;
    }

    v84 = *&v230[8] >> 62;
    if ((*&v230[8] >> 62) <= 1)
    {
      if (!v84)
      {
        v86 = *(*&v230[8] + 24);
        v87 = *(*&v230[8] + 32);
        v88 = *(*&v230[8] + 40);
        v221 = *(*&v230[8] + 16);
        v85 = v221;
        *&v222 = v86;
        *(&v222 + 1) = v87;
        v223 = v88;
        sub_1D5CF5DBC(&v230[8], &v225);
        sub_1D5D27950(v85, v86, v87, v88);
        sub_1D6D9914C(v218);
        v89 = v85;
        v90 = v86;
        v91 = v87;
        v92 = v88;
        goto LABEL_44;
      }

      v105 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v104 = *((*&v230[8] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5CF5DBC(&v230[8], &v225);

      sub_1D5F33D5C(v104);
      sub_1D620B270(v219, v218, v105);
      v106 = v104 >> 62;
      if ((v104 >> 62) <= 1)
      {
        if (v106)
        {
          v128 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v129 = v218;
          sub_1D620B270(v219, v218, *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
          *&v225 = v128;
          v196 = v128;
          sub_1D5F33D5C(v128);
          FormatDateTime.bind(binder:context:)(v219, v129);
          sub_1D5F33D8C(v196);
        }

        else
        {
          v107 = *(v104 + 32);
          v108 = *(v104 + 40);
          v225 = *(v104 + 16);
          *&v226 = v107;
          BYTE8(v226) = v108;
          sub_1D6D9914C(v218);
        }

LABEL_73:

        sub_1D5F33D8C(v104);
        goto LABEL_30;
      }

      if (v106 == 2)
      {
        goto LABEL_73;
      }

      if (v104 == 0xC000000000000000)
      {
        sub_1D5F33D8C(0xC000000000000000);
        goto LABEL_30;
      }

      v52 = v216;
      if (v104 == 0xC000000000000008)
      {
        sub_1D5F33D8C(0xC000000000000008);
      }

      else
      {
        sub_1D5F33D8C(0xC000000000000010);
      }

      goto LABEL_33;
    }

    if (v84 == 2)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  if (((4 * v230[58]) | (*&v230[56] >> 11) & 3) <= 1u)
  {
    if ((4 * v230[58]) | (*&v230[56] >> 11) & 3)
    {

      sub_1D620B270(v219, v63, v64);
    }

    else
    {
      sub_1D5CF5DBC(&v230[8], &v225);
      sub_1D62B41FC(v63, v64);
    }

    goto LABEL_30;
  }

  if (v69 != 2 || !(*&v230[56] >> 14))
  {
    goto LABEL_45;
  }

  if (*&v230[56] >> 14 == 1)
  {
    v221 = *&v230[8];
    v222 = *&v230[16];
    v196 = *&v230[16];
    v220 = 5;
    sub_1D5CF5DBC(&v230[8], &v225);
    sub_1D5CF5DBC(&v230[8], &v225);
    v195 = sub_1D703E0C8(&v221, &v220);
    v74 = v198;
    v75 = v200;
    v76 = *(v218 + v199);
    v77 = *(v76 + 16);
    swift_beginAccess();
    if (*(*(v77 + 16) + 16))
    {
      sub_1D5B69D90(v64, v196);
      if (v78)
      {
        swift_endAccess();
        v79 = v211;
        sub_1D5D25108(v211);
        v80 = v79;
        v81 = v210;
        sub_1D5D5E33C(v80, v210, type metadata accessor for FormatOption);
        v82 = v81;
        v75 = v200;
        v83 = v213;
        sub_1D5D5E33C(v82, v213, type metadata accessor for FormatOption);
        goto LABEL_52;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v76 + 24) + 16))
    {
      sub_1D5B69D90(v64, v196);
      if (v116)
      {
        swift_endAccess();
        v83 = v213;
        sub_1D5D25108(v213);
LABEL_52:
        v117 = *v75;
        v118 = v214;
        v196 = v117;
        v117(v83, 0, 1, v214);
        sub_1D5D5E33C(v83, v74, type metadata accessor for FormatOption);
        *&v225 = *(v74 + 16);
        v119 = v195;

        FormatOptionValue.type.getter(&v221);
        v120 = v119;
        if (sub_1D6183C84(v221, v119))
        {
          swift_bridgeObjectRelease_n();
          v121 = v212;
          sub_1D5D5E33C(v74, v212, type metadata accessor for FormatOption);
          (v196)(v121, 0, 1, v118);
          goto LABEL_59;
        }

        v219 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v167 = v74;
        v169 = v168;
        v170 = *v167;
        v171 = v167[1];
        *&v225 = v167[2];

        FormatOptionValue.type.getter(&v221);
        v172 = v221;
        *v169 = v170;
        *(v169 + 8) = v171;
        *(v169 + 16) = v172;
        *(v169 + 24) = v120;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B7904(v230);
        (*v217)(v235, v216);
        v173 = v167;
LABEL_140:
        sub_1D62B51D0(v173, type metadata accessor for FormatOption);
        goto LABEL_138;
      }
    }

    swift_endAccess();
    v122 = *v75;
    v123 = v213;
    v124 = v214;
    v194 = v122;
    v122(v213, 1, 1, v214);

    sub_1D5B6EF64(v123, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if ((*(v218 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v174 = v196;
      *v175 = v64;
      v175[1] = v174;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_137;
    }

    v121 = v212;
    v194(v212, 1, 1, v124);
LABEL_59:
    v125 = v121;
LABEL_60:
    sub_1D5B6EF64(v125, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_30:
    sub_1D5CF603C(&v230[8]);
LABEL_45:
    v52 = v216;
    goto LABEL_46;
  }

  v94 = (*&v230[56] >> 7) & 0x4E | (*&v230[56] >> 3) & 1;
  if (v94 > 7)
  {
    if (v94 > 11)
    {
      if (v94 == 12)
      {
        v139 = v230[16];
        if ((v230[16] & 0x80) != 0)
        {
          LOBYTE(v221) = v230[16] & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8);
          if (swift_dynamicCast())
          {
            v140 = *(&v226 + 1);
            v141 = v227;
            __swift_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
            (*(v141 + 8))(v219, v218, v140, v141);
            __swift_destroy_boxed_opaque_existential_1(&v225);
          }

          else
          {
            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            sub_1D5BFB774(&v225, &qword_1EDF329A0, &qword_1EDF329A8);
          }
        }

        v52 = v216;
        if (v139 >> 6 && v139 >> 6 != 1)
        {
          LOBYTE(v221) = v139 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8);
          if (swift_dynamicCast())
          {
            goto LABEL_112;
          }

          v227 = 0;
          v225 = 0u;
          v226 = 0u;
          sub_1D5BFB774(&v225, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        goto LABEL_33;
      }

      if (v94 != 13)
      {
        goto LABEL_74;
      }
    }

    else if ((v94 - 9) >= 3)
    {
      sub_1D5E1DA6C(*&v230[8], *&v230[16], *&v230[24], *&v230[32], *&v230[40], *&v230[48], *&v230[56] & 0xE7FF);
LABEL_32:
      v52 = v216;
LABEL_33:
      sub_1D5CF603C(&v230[8]);
      goto LABEL_46;
    }
  }

  else
  {
    if (v94 > 2)
    {
      if ((v94 - 5) < 3)
      {
        goto LABEL_86;
      }

      v221 = *&v230[8];
      v222 = *&v230[16];
      v220 = 5;
      v195 = *&v230[24];
      v95 = *&v230[16];
      sub_1D5CF5DBC(&v230[8], &v225);
      sub_1D5CF5DBC(&v230[8], &v225);
      v196 = v95;

      v96 = sub_1D703E0C8(&v221, &v220);
      v193 = *(v218 + v199);
      v194 = v96;
      v97 = v193[2];
      swift_beginAccess();
      if (*(*(v97 + 16) + 16) && (sub_1D5B69D90(v64, v196), (v98 & 1) != 0))
      {
        swift_endAccess();
        v99 = v204;
        sub_1D5D25108(v204);
        v100 = v99;
        v101 = v203;
        sub_1D5D5E33C(v100, v203, type metadata accessor for FormatOption);
        v102 = v101;
        v103 = v209;
        sub_1D5D5E33C(v102, v209, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        v130 = v193;
        swift_beginAccess();
        if (!*(v130[3] + 16) || (sub_1D5B69D90(v64, v196), (v131 & 1) == 0))
        {
          swift_endAccess();
          v142 = v214;
          v193 = *v200;
          (v193)(v209, 1, 1, v214);

          sub_1D5B6EF64(v209, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if (*(v218 + 48))
          {

            v136 = v206;
            v137 = 1;
            v138 = v142;
            v135 = v206;
            goto LABEL_85;
          }

          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v182 = v196;
          *v183 = v64;
          v183[1] = v182;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D62B7904(v230);
          (*v217)(v235, v216);
LABEL_144:
          v166 = &v230[8];
          return sub_1D5CF603C(v166);
        }

        swift_endAccess();
        v103 = v209;
        sub_1D5D25108(v209);
      }

      v193 = *v200;
      (v193)(v103, 0, 1, v214);
      v132 = v207;
      sub_1D5D5E33C(v103, v207, type metadata accessor for FormatOption);
      *&v225 = v132[2];
      v133 = v194;

      FormatOptionValue.type.getter(&v221);
      v134 = v133;
      if (sub_1D6183C84(v221, v133))
      {

        swift_bridgeObjectRelease_n();
        v135 = v206;
        sub_1D5D5E33C(v207, v206, type metadata accessor for FormatOption);
        v136 = v135;
        v137 = 0;
        v138 = v214;
LABEL_85:
        (v193)(v136, v137, 1, v138);
        sub_1D5B6EF64(v135, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v66 = v195;
        v65 = v196;
        goto LABEL_86;
      }

      type metadata accessor for FormatDerivedDataError();
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v177 = v176;
      v178 = v207;
      v179 = *v207;
      v180 = v207[1];
      *&v225 = v207[2];

      FormatOptionValue.type.getter(&v221);
      v181 = v221;
      *v177 = v179;
      *(v177 + 8) = v180;
      *(v177 + 16) = v181;
      *(v177 + 24) = v134;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B7904(v230);
      (*v217)(v235, v216);
      sub_1D62B51D0(v178, type metadata accessor for FormatOption);
      goto LABEL_144;
    }

    if (!v94)
    {
LABEL_74:
      sub_1D5E1DA6C(*&v230[8], *&v230[16], *&v230[24], *&v230[32], *&v230[40], *&v230[48], *&v230[56] & 0xE7FF);
      goto LABEL_30;
    }

    if (v94 != 1)
    {
      v196 = *&v230[16];
      v126 = *&v230[24];
      sub_1D5E1DA6C(*&v230[8], *&v230[16], *&v230[24], *&v230[32], *&v230[40], *&v230[48], *&v230[56] & 0xE7FF);
      v127 = v68 >> 4;
      if (((1 << v127) & 0x1EF7) == 0)
      {
        if (v127 == 3)
        {
          LOWORD(v66) = v126;
          v65 = v196;
          if (HIBYTE(v126) >= 4u)
          {
            goto LABEL_122;
          }

          if (v126 <= 0xFDu)
          {
            v221 = v64;
            *&v222 = v196;
            BYTE8(v222) = v126 & 1;
            sub_1D5CF5DBC(&v230[8], &v225);
            sub_1D5CF5DBC(&v230[8], &v225);
            sub_1D60ECF10(v218);
            sub_1D5D2F2C8(v221, v222, SBYTE8(v222));
            sub_1D5CF603C(&v230[8]);
LABEL_122:
            v65 = v196;
            LOWORD(v66) = v126;
          }

LABEL_123:
          if (BYTE1(v66) < 4u && v66 <= 0xFDu)
          {
            v221 = v64;
            *&v222 = v65;
            BYTE8(v222) = v66 & 1;
            sub_1D5CF5DBC(&v230[8], &v225);
            sub_1D5CF5DBC(&v230[8], &v225);
            sub_1D60ECF10(v218);
            sub_1D5D2F2C8(v221, v222, SBYTE8(v222));
            sub_1D5CF603C(&v230[8]);
          }

          goto LABEL_30;
        }

        LOBYTE(v65) = v196;
        if ((v196 & 0x80) != 0)
        {
          LOBYTE(v221) = v196 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8);
          if (swift_dynamicCast())
          {
            v161 = *(&v226 + 1);
            v162 = v227;
            __swift_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
            (*(v162 + 8))(v219, v218, v161, v162);
            __swift_destroy_boxed_opaque_existential_1(&v225);
          }

          else
          {
            v227 = 0;
            v225 = 0u;
            v226 = 0u;
            sub_1D5BFB774(&v225, &qword_1EDF329A0, &qword_1EDF329A8);
          }

          LOBYTE(v65) = v196;
        }

LABEL_129:
        if (!(v65 >> 6))
        {
          goto LABEL_30;
        }

        v52 = v216;
        if (v65 >> 6 != 1)
        {
          LOBYTE(v221) = v65 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8);
          if (swift_dynamicCast())
          {
LABEL_112:
            v159 = *(&v226 + 1);
            v160 = v227;
            __swift_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
            (*(v160 + 8))(v219, v218, v159, v160);
            __swift_destroy_boxed_opaque_existential_1(&v225);
            goto LABEL_30;
          }

          v227 = 0;
          v225 = 0u;
          v226 = 0u;
          sub_1D5BFB774(&v225, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        goto LABEL_33;
      }

      v65 = v196;
      LOWORD(v66) = v126;
LABEL_97:
      switch(v127)
      {
        case 3:
          goto LABEL_123;
        case 8:
          goto LABEL_129;
        default:
          goto LABEL_30;
      }
    }
  }

LABEL_86:
  if (v94 > 7)
  {
    v52 = v216;
    goto LABEL_33;
  }

  if (v94 > 4)
  {
    if (v94 == 5)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if ((v94 - 3) >= 2)
  {
    if (v94 == 1)
    {
      goto LABEL_30;
    }

    v127 = v68 >> 4;
    goto LABEL_97;
  }

  v221 = v64;
  *&v222 = v65;
  *(&v222 + 1) = v66;
  v220 = 5;
  v143 = v65;
  v144 = v66;
  sub_1D5CF5DBC(&v230[8], &v225);
  v196 = v143;

  v195 = v144;

  v194 = sub_1D703E0C8(&v221, &v220);
  v145 = *(v218 + v199);
  v146 = *(v145 + 16);
  swift_beginAccess();
  if (*(*(v146 + 16) + 16))
  {
    sub_1D5B69D90(v64, v196);
    if (v147)
    {
      swift_endAccess();
      v148 = v202;
      sub_1D5D25108(v202);
      v149 = v148;
      v150 = v201;
      sub_1D5D5E33C(v149, v201, type metadata accessor for FormatOption);
      v151 = v208;
      sub_1D5D5E33C(v150, v208, type metadata accessor for FormatOption);
      goto LABEL_101;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(*(v145 + 24) + 16))
  {
    sub_1D5B69D90(v64, v196);
    if (v152)
    {
      swift_endAccess();
      v151 = v208;
      sub_1D5D25108(v208);
LABEL_101:
      v153 = v214;
      v193 = *v200;
      (v193)(v151, 0, 1, v214);
      v154 = v197;
      sub_1D5D5E33C(v151, v197, type metadata accessor for FormatOption);
      *&v225 = v154[2];
      v155 = v194;

      FormatOptionValue.type.getter(&v221);
      if ((sub_1D6183C84(v221, v155) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v185 = v184;
        v186 = v197;
        v187 = *v197;
        v188 = v197[1];
        *&v225 = v197[2];

        FormatOptionValue.type.getter(&v221);
        v189 = v221;
        *v185 = v187;
        *(v185 + 8) = v188;
        *(v185 + 16) = v189;
        *(v185 + 24) = v155;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B7904(v230);
        (*v217)(v235, v216);
        v173 = v186;
        goto LABEL_140;
      }

      swift_bridgeObjectRelease_n();
      v156 = v205;
      sub_1D5D5E33C(v197, v205, type metadata accessor for FormatOption);
      (v193)(v156, 0, 1, v153);
LABEL_107:
      v125 = v156;
      goto LABEL_60;
    }
  }

  swift_endAccess();
  v157 = v214;
  v193 = *v200;
  (v193)(v208, 1, 1, v214);

  sub_1D5B6EF64(v208, &qword_1EDF337F0, type metadata accessor for FormatOption);
  if (*(v218 + 48))
  {

    v158 = v205;
    (v193)(v205, 1, 1, v157);
    v156 = v158;
    goto LABEL_107;
  }

  type metadata accessor for FormatLayoutError();
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  v190 = v196;
  *v191 = v64;
  v191[1] = v190;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_137:
  sub_1D62B7904(v230);
  (*v217)(v235, v216);
LABEL_138:
  v166 = &v230[8];
  return sub_1D5CF603C(v166);
}

uint64_t sub_1D6242FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v44 = a1;
  v39 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v39, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v38 = (v12 + 8);
  v13 = (a3 + 40);
  v14 = v11 + 1;
  v34 = a2;
  while (--v14)
  {
    v18 = *(v13 - 1);
    v17 = *v13;
    v40 = v18;
    v19 = v17 & 0x7FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    sub_1D71C3968(v44, a2, v10);
    if (v5)
    {
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v40 = v18;

      FormatExpression.bind(binder:context:)(v44, a2);

      if (v17 < 0)
      {
        v23 = *((v17 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v22 = *((v17 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v24 = *((v17 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v25 = *(v19 + 40);
        v40 = v23;
        v41 = v22;
        v42 = v24;
        v43 = v25;

        v36 = v22;
        v37 = v23;
        v35 = v25;
        sub_1D62B6240(v23, v22, v24, v25);
        a2 = v34;
        sub_1D6C09C54(v34);
        sub_1D62B628C(v37, v36, v24, v35);
      }

      else
      {
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);

        sub_1D6242FE8(v44, a2, v20, v21);
      }
    }

    v13 += 2;
    v15 = sub_1D725BC5C();

    result = (*v38)(v10, v39);
    if (v15)
    {
      return result;
    }
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    v26 = *(v33 + 16);
    v27 = *(v33 + 24);

    sub_1D6242FE8(v44, a2, v26, v27);
  }

  v29 = *((v33 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v30 = *((v33 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v31 = *((v33 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v40 = *((v33 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v28 = v40;
  v41 = v29;
  v42 = v30;
  v43 = v31;

  sub_1D62B6240(v28, v29, v30, v31);
  sub_1D6C09C54(a2);
  sub_1D62B628C(v28, v29, v30, v31);
}

uint64_t sub_1D62433FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v293 = a2;
  v280 = a4;
  v279 = type metadata accessor for FormatOption();
  v6 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279, v7);
  v272 = (&v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v278 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v277 = &v265 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v274 = &v265 - v17;
  v18 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v282 = &v265 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v284 = &v265 - v23;
  v24 = sub_1D725BC7C();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v265 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + 16);
  v30 = (v6 + 48);
  v31 = (v6 + 56);
  v33 = v32;
  v273 = v31;
  v35 = (v34 + 8);
  v275 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v276 = v30;
  v36 = (a3 + 40);
  v292 = v29 + 1;
  v285 = v32;
  v288 = v28;
  v289 = (v34 + 8);
  v287 = a1;
  while (1)
  {
    if (!--v292)
    {
      v254 = v294;
      result = sub_1D625C2EC(a1, v293, v280, v26);
      v294 = v254;
      return result;
    }

    v291 = v36;
    v38 = *(v36 - 1);
    v37 = *v36;
    *&v295 = v38;
    v39 = v37 & 0x1FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    v40 = v294;
    sub_1D71C3968(a1, v293, v28);
    v294 = v40;
    if (v40)
    {
    }

    if (sub_1D725BC6C())
    {
      goto LABEL_5;
    }

    *&v295 = v38;

    v44 = v294;
    FormatExpression.bind(binder:context:)(a1, v293);
    v294 = v44;
    if (v44)
    {

      (*v35)(v28, v33);
      goto LABEL_266;
    }

    v45 = v37 >> 61;
    if ((v37 >> 61) <= 1)
    {
      v290 = v38;
      if (!v45)
      {
        v58 = *(v37 + 32);
        v301 = *(v37 + 16);
        v302 = v58;
        v59 = *(v37 + 64);
        *v303 = *(v37 + 48);
        *&v303[16] = v59;
        v60 = v301;
        v61 = *(&v302 + 1);
        if ((BYTE8(v302) & 4) != 0)
        {
          v79 = v33;
          *&v304 = v301;
          sub_1D5CFBAA8(&v301, &v295);
          v80 = v294;
          FormatTextContent.bind(binder:context:)(a1, v293);
          v66 = v284;
          v294 = v80;
          if (v80)
          {
            goto LABEL_245;
          }

          v64 = a1;
        }

        else
        {
          v62 = v289;
          v63 = v302;
          v286 = *(&v301 + 1);
          sub_1D5CFBAA8(&v301, &v295);
          v64 = a1;
          v65 = v294;
          sub_1D6245970(a1, v293, v60, v286, v63, v61);
          v294 = v65;
          if (v65)
          {
            (*v62)(v288, v285);
            goto LABEL_265;
          }

          v66 = v284;
        }

        v81 = *&v303[16];
        if ((*&v303[16] & 0x2000000000000000) != 0)
        {
          v89 = v289;
          if (*v303 >> 62)
          {
            if (*v303 >> 62 == 1)
            {
              v88 = v64;
              v90 = *((*v303 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
              v79 = v285;
              if (v90 != 255)
              {
                v286 = v39;
                v92 = *((*v303 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                v91 = *((*v303 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                *&v295 = v92;
                *(&v295 + 1) = v91;
                LOBYTE(v296) = v90;
                sub_1D5E433E0(v92, v91, v90);
                v93 = v294;
                FormatBundleImageSize.bind(binder:context:)(v64, v293);
                v294 = v93;
                if (v93)
                {
                  sub_1D5E43440(v92, v91, v90);
                  (*v289)(v288, v79);
                  goto LABEL_265;
                }

                sub_1D5E43440(v92, v91, v90);
              }

              v87 = v293;
              v66 = v284;
              goto LABEL_115;
            }

            v109 = *((*v303 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v108 = *((*v303 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v110 = v288;
            if (v109 >> 62)
            {
              v286 = v39;
              if (v109 >> 62 == 1)
              {
                v111 = v109 & 0x3FFFFFFFFFFFFFFFLL;
                v112 = *(v111 + 64);
                if (v112 == 255)
                {
                  v87 = v293;
                  v116 = v64;
                }

                else
                {
                  v113 = v108;
                  v115 = *(v111 + 56);
                  *&v295 = *(v111 + 48);
                  v114 = v295;
                  *(&v295 + 1) = v115;
                  LOBYTE(v296) = v112;

                  sub_1D5E433CC(v114, v115, v112);
                  v116 = v64;
                  v117 = v294;
                  FormatBundleImageSize.bind(binder:context:)(v64, v293);
                  v294 = v117;
                  if (v117)
                  {
                    sub_1D5E43440(v114, v115, v112);
                    goto LABEL_264;
                  }

                  sub_1D5E43440(v114, v115, v112);

                  v89 = v289;
                  v110 = v288;
                  v87 = v293;
                  v108 = v113;
                }
              }

              else
              {
                v283 = v108;
                v129 = v109 & 0x3FFFFFFFFFFFFFFFLL;
                v130 = *(v129 + 24);
                *&v295 = *(v129 + 16);

                v132 = v293;
                v131 = v294;
                FormatSyncImageContent.bind(binder:context:)(v64, v293);
                v294 = v131;
                if (v131)
                {

LABEL_264:
                  (*v289)(v288, v285);

                  goto LABEL_265;
                }

                v116 = v64;
                v133 = v294;
                sub_1D622B230(v64, v132, v130);
                v294 = v133;
                if (v133)
                {
                  goto LABEL_264;
                }

                v87 = v132;

                v89 = v289;
                v110 = v288;
                v108 = v283;
              }
            }

            else
            {
              v283 = *((*v303 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v126 = *(v109 + 80);
              v297[1] = *(v109 + 64);
              v298 = v126;
              v299 = *(v109 + 96);
              v300 = *(v109 + 112);
              v127 = *(v109 + 32);
              v295 = *(v109 + 16);
              v296 = v127;
              v297[0] = *(v109 + 48);

              v128 = v294;
              FormatSymbolImage.bind(binder:context:)(v64, v293);
              v294 = v128;
              if (v128)
              {
                (*v89)(v110, v285);

                goto LABEL_265;
              }

              v87 = v293;
              v116 = v64;
              v108 = v283;
            }

            v145 = v116;
            v146 = v294;
            sub_1D622B230(v116, v87, v108);
            v66 = v284;
            v294 = v146;
            if (v146)
            {
              (*v89)(v110, v285);
              goto LABEL_265;
            }

            v88 = v145;
          }

          else
          {
            v105 = *(*v303 + 80);
            v297[1] = *(*v303 + 64);
            v298 = v105;
            v299 = *(*v303 + 96);
            v300 = *(*v303 + 112);
            v106 = *(*v303 + 32);
            v295 = *(*v303 + 16);
            v296 = v106;
            v297[0] = *(*v303 + 48);
            v107 = v294;
            FormatSymbolImage.bind(binder:context:)(v64, v293);
            v294 = v107;
            v88 = v64;
            v87 = v293;
          }
        }

        else
        {
          v82 = *&v303[8];
          v83 = *(*v303 + 32);
          v295 = *(*v303 + 16);
          v296 = v83;
          v297[0] = *(*v303 + 48);
          *(v297 + 15) = *(*v303 + 63);
          v85 = v293;
          v84 = v294;
          FormatCommandBinding.bind(binder:context:)(v64, v293);
          v294 = v84;
          sub_1D6226080(v64, v85, v82);
          v294 = 0;
          *&v295 = v81;

          v86 = v294;
          FormatSyncImageContent.bind(binder:context:)(v64, v85);
          v294 = v86;
          if (v86)
          {

            (*v289)(v288, v285);
            goto LABEL_265;
          }

          v87 = v293;
          v88 = v64;
          v66 = v284;
        }

        v79 = v285;
LABEL_115:
        v147 = *&v303[24] >> 62;
        if ((*&v303[24] >> 62) > 1)
        {
          v28 = v288;
          if (v147 == 2)
          {
            a1 = v88;
            v150 = v294;
            sub_1D6245CC4(v88, v87, *((*&v303[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((*&v303[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
            v294 = v150;
            v33 = v79;
            if (v150)
            {
              goto LABEL_245;
            }

            sub_1D5D08954(&v301);
            goto LABEL_196;
          }

          sub_1D5D08954(&v301);
          a1 = v88;
        }

        else
        {
          v28 = v288;
          if (v147)
          {
            v151 = *((*&v303[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v153 = *(v151 + 16);
            v152 = *(v151 + 24);
            v154 = *(v151 + 32);
            v155 = *(v151 + 40);
            v156 = *(v151 + 64);
            if (*(v151 + 66))
            {
              v157 = 8;
            }

            else
            {
              v157 = 0;
            }

            v158 = v157 & 0xFFFFFFF8 | (v156 >> 11) & 7;
            if (v158 <= 4)
            {
              v159 = v88;
              v33 = v79;
              if (v158 > 1)
              {
                v35 = v289;
                v41 = v291;
                if (v158 == 3)
                {
                  *&v295 = *(v151 + 16);
                  *(&v295 + 1) = v152;
                  LOBYTE(v296) = v154;
                  a1 = v159;
                  v160 = v294;
                  FormatTagBinding.Command.bind(binder:context:)(v159, v293);
LABEL_144:
                  v294 = v160;
                  if (v160)
                  {
                    goto LABEL_276;
                  }

                  goto LABEL_145;
                }

                goto LABEL_140;
              }

              v35 = v289;
              v41 = v291;
              if (v158)
              {
                goto LABEL_140;
              }

              v161 = (v155 >> 3) & 7;
              if (v161 <= 1)
              {
                if (v161)
                {
                  goto LABEL_140;
                }
              }

              else if (v161 != 2 && v161 != 3)
              {
                *&v295 = v153;
                *(&v295 + 1) = v152;
                *&v296 = v154;
                BYTE8(v296) = v155 & 0xC7;
                goto LABEL_143;
              }

              if (v154 > 1u)
              {
                if (v154 != 2 && v153 | v152)
                {
                  a1 = v159;
                  goto LABEL_145;
                }
              }

              else if (v154)
              {
                a1 = v159;
                if ((~v153 & 0xF000000000000007) != 0)
                {
                  *&v295 = v153;
                  v286 = v153;

                  v248 = v294;
                  FormatTextContent.bind(binder:context:)(a1, v293);
                  v294 = v248;
                  if (v248)
                  {

LABEL_276:
                    (*v35)(v28, v33);
LABEL_265:
                    sub_1D5D08954(&v301);
LABEL_266:
                  }
                }

                goto LABEL_145;
              }

              goto LABEL_140;
            }

            v159 = v88;
            v33 = v79;
            if (v158 > 6)
            {
              v35 = v289;
              v41 = v291;
              if (v158 == 7)
              {
                *&v295 = *(v151 + 16);
                *(&v295 + 1) = v152;
                *&v296 = v154;
                *(&v296 + 1) = v155;
                v297[0] = *(v151 + 48);
                LOWORD(v297[1]) = v156 & 0xC7FF;
                a1 = v159;
                v160 = v294;
                FormatString.bind(binder:context:)(v159, v293);
                goto LABEL_144;
              }

              a1 = v159;
LABEL_145:
              sub_1D5D08954(&v301);
              goto LABEL_6;
            }

            v35 = v289;
            v41 = v291;
            if (v158 == 5)
            {
LABEL_140:
              a1 = v159;
              goto LABEL_145;
            }

            *&v295 = *(v151 + 16);
            *(&v295 + 1) = v152;
            *&v296 = v154;
            BYTE8(v296) = v155;
LABEL_143:
            a1 = v159;
            v160 = v294;
            FormatSportsEventBinding.Command.bind(binder:context:)(v159, v293);
            goto LABEL_144;
          }

          v148 = swift_projectBox();
          sub_1D62B50EC(v148, v66, type metadata accessor for FormatCommandOpenURL);
          v149 = v294;
          sub_1D5F86DA0(v87);
          v294 = v149;
          if (v149)
          {
            sub_1D62B51D0(v66, type metadata accessor for FormatCommandOpenURL);
LABEL_245:
            (*v289)(v28, v79);
            goto LABEL_265;
          }

          a1 = v88;
          sub_1D62B51D0(v66, type metadata accessor for FormatCommandOpenURL);
          sub_1D5D08954(&v301);
        }

        v35 = v289;
        v33 = v79;
LABEL_5:
        v41 = v291;
        goto LABEL_6;
      }

      v70 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v295 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v296 = v70;
      v71 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v297[0] = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v297[1] = v71;
      v286 = v37 & 0x1FFFFFFFFFFFFFFFLL;
      *&v298 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v72 = v295;
      v73 = *(&v296 + 1);
      v74 = v296;
      if ((~*(&v295 + 1) & 0xF000000000000007) != 0 || (BYTE8(v296) & 7) != 7)
      {
        if ((BYTE8(v296) & 4) == 0)
        {
          sub_1D62B72DC(&v295, &v301);
          sub_1D62B738C(v72, *(&v72 + 1), v74, v73);
          v76 = v293;
          v77 = v294;
          sub_1D6245970(v287, v293, v72, *(&v72 + 1), v74, v73);
          v294 = v77;
          if (v77)
          {
            sub_1D62B7110(v72, *(&v72 + 1), v74, v73);
            (*v289)(v288, v285);
            goto LABEL_240;
          }

          v75 = v291;
          sub_1D62B7110(v72, *(&v72 + 1), v74, v73);
          goto LABEL_52;
        }

        *&v304 = v295;
        sub_1D62B72DC(&v295, &v301);
        sub_1D62B738C(v72, *(&v72 + 1), v74, v73);
        v94 = v294;
        FormatTextContent.bind(binder:context:)(v287, v293);
        v294 = v94;
        if (v94)
        {
          (*v289)(v288, v285);
          sub_1D62B7110(v72, *(&v72 + 1), v74, v73);
          goto LABEL_240;
        }

        v75 = v291;
        sub_1D62B7110(v72, *(&v72 + 1), v74, v73);
      }

      else
      {
        v75 = v291;
        sub_1D62B72DC(&v295, &v301);
      }

      v76 = v293;
LABEL_52:
      v95 = *&v297[0];
      v96 = *&v297[1];
      v97 = v285;
      if ((~(*&v297[0] & *&v297[1]) & 0x3000000000000007) == 0)
      {
LABEL_58:
        a1 = v287;
        v101 = v294;
        sub_1D6223ECC(v287, v76, v298);
        v294 = v101;
        if (v101)
        {
          (*v289)(v288, v97);
          sub_1D62B7338(&v295);
          goto LABEL_266;
        }

        sub_1D62B7338(&v295);
        v28 = v288;
        v102 = v97;
        v35 = v289;
        v41 = v75;
        v33 = v102;
        goto LABEL_6;
      }

      v98 = *(&v297[0] + 1);
      if ((*&v297[1] & 0x2000000000000000) != 0)
      {
        *&v301 = *&v297[0];
        sub_1D62B6FC0(*&v297[0], *(&v297[0] + 1), *&v297[1]);
        v100 = v294;
        FormatSyncImageContent.bind(binder:context:)(v287, v76);
        v294 = v100;
        if (!v100)
        {
          sub_1D62B7020(v95, v98, v96);
          v76 = v293;
          goto LABEL_58;
        }

        (*v289)(v288, v97);
        sub_1D62B7020(v95, v98, v96);
      }

      else
      {
        sub_1D62B6FC0(*&v297[0], *(&v297[0] + 1), *&v297[1]);
        v99 = v294;
        sub_1D6209F10(v287, v76, v95, v98);
        v294 = v99;
        if (!v99)
        {
          sub_1D62B7020(v95, v98, v96);
          goto LABEL_58;
        }

        sub_1D62B7020(v95, v98, v96);
        (*v289)(v288, v97);
      }

LABEL_240:
      sub_1D62B7338(&v295);
      goto LABEL_266;
    }

    if (v45 == 2)
    {
      v67 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v69 = v294;
      sub_1D62433FC(a1, v293, v67, v68);
      v294 = v69;
      if (v69)
      {
        (*v35)(v28, v33);
      }

      goto LABEL_5;
    }

    if (v45 != 3)
    {
      goto LABEL_5;
    }

    v290 = v38;
    v47 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v286 = v37 & 0x1FFFFFFFFFFFFFFFLL;
    v48 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v49 = *(v47 + 32);
    v301 = *(v47 + 16);
    v302 = v49;
    *v303 = *(v47 + 48);
    *&v303[15] = *(v47 + 63);
    v50 = v49;
    v51 = (*&v303[15] >> 8);
    if ((*&v303[15] & 0x1000000) != 0)
    {
      v52 = 8;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52 & 0xFFFFFFF8 | (v51 >> 11) & 7;
    v283 = v46;
    v281 = v48;
    if (v53 <= 4)
    {
      v54 = v293;
      if (v53 > 1)
      {
        v55 = v282;
        if (v53 == 2)
        {
          goto LABEL_69;
        }

        v56 = v287;
        if (v53 != 3)
        {
          goto LABEL_149;
        }

LABEL_19:
        v57 = v49;
        if (v49 > 1u)
        {
          goto LABEL_74;
        }

        goto LABEL_20;
      }

      v55 = v282;
      if (v53)
      {
LABEL_69:

LABEL_88:
        v78 = v287;
        v28 = v288;
        goto LABEL_150;
      }

      v103 = (DWORD2(v49) >> 3) & 7;
      if (v103 <= 1)
      {
        v56 = v287;
        if (v103)
        {
          goto LABEL_149;
        }

        goto LABEL_19;
      }

      if (v103 == 2 || v103 == 3 || !(BYTE8(v49) >> 6))
      {
        goto LABEL_89;
      }

      if (BYTE8(v49) >> 6 == 1)
      {
        goto LABEL_73;
      }

      v104 = BYTE8(v49) & 7;
      if (v104 <= 1)
      {
        v56 = v287;
        if ((BYTE8(v49) & 7) == 0)
        {
          goto LABEL_149;
        }

        v28 = v288;
        if ((~*(&v301 + 1) & 0xF000000000000007) != 0)
        {
LABEL_110:
          *&v295 = *(&v301 + 1);
          v124 = *(&v301 + 1);
          goto LABEL_93;
        }

        goto LABEL_37;
      }

      goto LABEL_146;
    }

    v54 = v293;
    if (v53 > 6)
    {
      break;
    }

    if (v53 == 5)
    {
      goto LABEL_87;
    }

    v55 = v282;
    if (!(BYTE8(v49) >> 6))
    {
LABEL_89:
      if (v49 > 1u)
      {
        v56 = v287;
        v28 = v288;
      }

      else
      {
        v56 = v287;
        v28 = v288;
        if (v49)
        {
          goto LABEL_91;
        }
      }

LABEL_37:

      v78 = v56;
      goto LABEL_150;
    }

    if (BYTE8(v49) >> 6 == 1)
    {
LABEL_73:
      v57 = v49;
      v56 = v287;
      if (v49 > 1u)
      {
LABEL_74:
        v28 = v288;
        goto LABEL_37;
      }

LABEL_20:
      v28 = v288;
      if (v57)
      {
LABEL_91:
        if ((~v301 & 0xF000000000000007) != 0)
        {
          *&v295 = v301;
          v124 = v301;
LABEL_93:

          sub_1D5CFCFAC(v124);
          v125 = v294;
          FormatTextContent.bind(binder:context:)(v56, v54);
          v294 = v125;
          if (v125)
          {

            (*v289)(v28, v33);

LABEL_269:

            goto LABEL_273;
          }

          v54 = v293;
          v78 = v56;
          goto LABEL_150;
        }
      }

      goto LABEL_37;
    }

    v104 = BYTE8(v49) & 0x3F;
    if (v104 <= 1)
    {
      v56 = v287;
      if ((BYTE8(v49) & 0x3F) == 0)
      {
        goto LABEL_149;
      }

      v28 = v288;
      if ((~*(&v301 + 1) & 0xF000000000000007) != 0)
      {
        goto LABEL_110;
      }

      goto LABEL_37;
    }

LABEL_146:
    v56 = v287;
    if (v104 == 2 || !(*(&v301 + 1) | v49))
    {
LABEL_149:

      v78 = v56;
      v28 = v288;
      goto LABEL_150;
    }

    v28 = v288;
    v78 = v56;
LABEL_150:
    a1 = v78;
    v162 = v294;
    (sub_1D62218D8)();
    v294 = v162;
    if (v162)
    {
      (*v289)(v28, v33);

      goto LABEL_266;
    }

    v163 = v281 >> 61;
    if ((v281 >> 61) > 1)
    {
      if (v163 == 2)
      {
        v182 = v294;
        sub_1D62433FC(a1, v54, *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
        v294 = v182;
        v41 = v291;

        v35 = v289;
        goto LABEL_6;
      }

      if (v163 == 3)
      {
        v164 = v281 & 0x1FFFFFFFFFFFFFFFLL;
        v165 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v166 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v167 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v168 = *(v165 + 24);
        v169 = *(v165 + 32);
        v170 = *(v165 + 40);
        v171 = *(v165 + 64);
        if (*(v165 + 66))
        {
          v172 = 8;
        }

        else
        {
          v172 = 0;
        }

        v173 = v172 & 0xFFFFFFF8 | (v171 >> 11) & 7;
        if (v173 <= 3)
        {
          v174 = a1;
          if ((v173 - 1) >= 2)
          {
            *&v295 = *(v165 + 16);
            *(&v295 + 1) = v168;
            if (v173)
            {
              LOBYTE(v296) = v169;
              v175 = v294;
              FormatTagBinding.Command.bind(binder:context:)(a1, v293);
            }

            else
            {
              *&v296 = v169;
              BYTE8(v296) = v170;
              v175 = v294;
              FormatGroupBinding.Command.bind(binder:context:)(a1, v293);
            }

LABEL_199:
            v294 = v175;
            v54 = v293;
            v174 = a1;
          }
        }

        else
        {
          v174 = a1;
          if (((1 << v173) & 0x330) == 0)
          {
            *&v295 = *(v165 + 16);
            *(&v295 + 1) = v168;
            *&v296 = v169;
            if (v173 == 6)
            {
              BYTE8(v296) = v170;
              v175 = v294;
              FormatSportsEventBinding.Command.bind(binder:context:)(a1, v293);
            }

            else
            {
              *(&v296 + 1) = v170;
              v297[0] = *(v165 + 48);
              LOWORD(v297[1]) = v171 & 0xC7FF;
              v175 = v294;
              FormatString.bind(binder:context:)(a1, v293);
            }

            goto LABEL_199;
          }
        }

        v217 = v294;
        sub_1D62218D8(v174, v54, v166);
        v294 = v217;
        v218 = v167 >> 61;
        v28 = v288;
        if ((v167 >> 61) <= 1)
        {
          if (!v218)
          {
            v281 = v164;
            v271 = v47;
            v229 = *(v167 + 16);
            v228 = *(v167 + 24);
            v230 = a1;
            v231 = *(v167 + 32);
            v232 = *(v167 + 40);
            v233 = *(v167 + 56);
            v235 = *(v167 + 64);
            v234 = *(v167 + 72);
            v269 = *(v167 + 48);
            v270 = v235;
            v268 = v234;
            *&v295 = v229;
            *(&v295 + 1) = v228;
            *&v296 = v231;
            *(&v296 + 1) = v232;
            v236 = v228;
            sub_1D62B7098(v229, v228, v231, v232);
            v238 = v293;
            v237 = v294;
            FormatMenuTitle.bind(binder:context:)(v230, v293);
            v294 = v237;
            if (v237)
            {
              sub_1D62B7130(v229, v236, v231, v232);
              goto LABEL_260;
            }

            sub_1D62B7130(v229, v236, v231, v232);
            v240 = v269;
            v239 = v270;
            *&v295 = v269;
            *(&v295 + 1) = v233;
            *&v296 = v270;
            sub_1D62B6FC0(v269, v233, v270);
            v241 = v294;
            FormatMenuImage.bind(binder:context:)(v230, v238);
            v294 = v241;
            v210 = v240;
            v211 = v233;
            v212 = v239;
            if (v241)
            {
LABEL_259:
              sub_1D62B703C(v210, v211, v212);
              goto LABEL_260;
            }

            sub_1D62B703C(v240, v233, v239);
            a1 = v230;
            v242 = v294;
            sub_1D625CCA8(v230, v238, v268);
            v35 = v289;
            v33 = v285;
            v28 = v288;
            v294 = v242;
            if (v242)
            {
              (*v289)(v288, v285);

              goto LABEL_273;
            }

            goto LABEL_5;
          }

          v244 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v296 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v297[0] = v244;
          v297[1] = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          *&v298 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v295 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v245 = v294;
          sub_1D625BE1C(a1, v293);
          v294 = v245;
        }

        else
        {
          v281 = v164;
          if (v218 == 2)
          {
            v243 = v294;
            sub_1D62433FC(a1, v54, *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
            v294 = v243;
          }

          else if (v218 == 3)
          {
            v271 = v47;
            v219 = v289;
            v220 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v221 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v222 = *((v167 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v223 = *(v220 + 32);
            v295 = *(v220 + 16);
            v296 = v223;
            v297[0] = *(v220 + 48);
            *(v297 + 15) = *(v220 + 63);
            v225 = v293;
            v224 = v294;
            FormatCommandBinding.bind(binder:context:)(a1, v293);
            v294 = v224;
            sub_1D62218D8(a1, v225, v221);
            v294 = 0;
            sub_1D625C2EC(a1, v225, v222, v226);
            v35 = v219;
            v227 = v285;
            v294 = 0;
            v28 = v288;

            v33 = v227;
            v41 = v291;
            goto LABEL_6;
          }
        }
      }

      else
      {
      }

      v35 = v289;
      goto LABEL_5;
    }

    v271 = v47;
    if (v163)
    {
      v183 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v184 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v185 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v186 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v188 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v187 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v189 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v190 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      if ((~v184 & 0xF000000000000007) != 0 || (*((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) & 7) != 7)
      {
        v281 = *((v281 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        if ((v186 & 4) != 0)
        {
          *&v295 = v183;
          v270 = v183;
          sub_1D62B7098(v183, v184, v185, v186);
          v204 = v294;
          FormatTextContent.bind(binder:context:)(v287, v293);
          v294 = v204;
          if (v204)
          {
            (*v289)(v288, v285);
            sub_1D62B7110(v270, v184, v185, v186);
            goto LABEL_272;
          }

          sub_1D62B7110(v270, v184, v185, v186);
          v191 = v293;
          v187 = v281;
        }

        else
        {
          sub_1D62B7098(v183, v184, v185, v186);
          v192 = v294;
          sub_1D6245970(v287, v293, v183, v184, v185, v186);
          v294 = v192;
          if (v192)
          {
            sub_1D62B7110(v183, v184, v185, v186);
LABEL_260:
            (*v289)(v288, v285);
            goto LABEL_272;
          }

          sub_1D62B7110(v183, v184, v185, v186);
          v187 = v281;
          v191 = v293;
        }
      }

      else
      {
        v191 = v293;
      }

      v205 = v287;
      if ((~(v188 & v189) & 0x3000000000000007) != 0)
      {
        *&v295 = v188;
        *(&v295 + 1) = v187;
        *&v296 = v189;
        v206 = v187;
        v207 = v287;
        v208 = v191;
        sub_1D62B6FC0(v188, v187, v189);
        v209 = v294;
        FormatMenuImage.bind(binder:context:)(v207, v208);
        v294 = v209;
        v210 = v188;
        v211 = v206;
        v212 = v189;
        if (v209)
        {
          goto LABEL_259;
        }

        sub_1D62B703C(v188, v206, v189);
        v191 = v293;
        v205 = v207;
      }

      a1 = v205;
      v213 = v294;
      sub_1D6223ECC(v205, v191, v190);
      v294 = v213;
      if (v213)
      {
        goto LABEL_260;
      }

      v35 = v289;
      v28 = v288;
      v33 = v285;
      goto LABEL_5;
    }

    v176 = *(v281 + 40);
    v177 = *(v281 + 48);
    v178 = *(v281 + 56);
    v179 = *(v281 + 64);
    v180 = *(v281 + 72);
    if ((v176 & 4) != 0)
    {
      *&v295 = *(v281 + 16);
      v181 = v294;
      FormatTextContent.bind(binder:context:)(v287, v54);
    }

    else
    {
      v181 = v294;
      sub_1D6245970(v287, v54, *(v281 + 16), *(v281 + 24), *(v281 + 32), v176);
    }

    v294 = v181;
    if ((v179 & 0x2000000000000000) != 0)
    {
      *&v295 = v177;
      a1 = v287;
      v198 = v294;
      FormatSyncImageContent.bind(binder:context:)(v287, v293);
      v294 = v198;
      v33 = v285;
    }

    else
    {
      v193 = *(v177 + 32);
      v295 = *(v177 + 16);
      v296 = v193;
      v297[0] = *(v177 + 48);
      *(v297 + 15) = *(v177 + 63);
      v194 = v287;
      v196 = v293;
      v195 = v294;
      FormatCommandBinding.bind(binder:context:)(v287, v293);
      v294 = v195;
      sub_1D6226080(v194, v196, v178);
      v33 = v285;
      v294 = 0;
      *&v295 = v179;

      v197 = v294;
      FormatSyncImageContent.bind(binder:context:)(v194, v196);
      v294 = v197;
      if (v197)
      {
        (*v289)(v288, v33);

        goto LABEL_266;
      }

      v55 = v282;
      a1 = v287;
    }

    v199 = v180 >> 62;
    v200 = v293;
    if ((v180 >> 62) <= 1)
    {
      if (v199)
      {
        v214 = *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v215 = *(v214 + 32);
        v295 = *(v214 + 16);
        v296 = v215;
        v297[0] = *(v214 + 48);
        *(v297 + 15) = *(v214 + 63);
        v216 = v294;
        FormatCommandBinding.bind(binder:context:)(a1, v293);
        v294 = v216;
        if (v216)
        {
          goto LABEL_257;
        }
      }

      else
      {
        v201 = swift_projectBox();
        sub_1D62B50EC(v201, v55, type metadata accessor for FormatCommandOpenURL);
        v202 = v294;
        sub_1D5F86DA0(v200);
        v294 = v202;
        if (v202)
        {
          sub_1D62B51D0(v55, type metadata accessor for FormatCommandOpenURL);
LABEL_257:
          (*v289)(v288, v33);

          goto LABEL_266;
        }

        sub_1D62B51D0(v55, type metadata accessor for FormatCommandOpenURL);
      }

LABEL_195:

      v28 = v288;
LABEL_196:
      v35 = v289;
      goto LABEL_5;
    }

    if (v199 != 2)
    {
      goto LABEL_195;
    }

    v203 = v294;
    sub_1D6245CC4(a1, v293, *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((v180 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
    v294 = v203;
    v41 = v291;
    if (v203)
    {
      goto LABEL_257;
    }

    v35 = v289;
    v28 = v288;
LABEL_6:
    v36 = v41 + 2;
    v42 = sub_1D725BC5C();

    result = (*v35)(v28, v33);
    if (v42)
    {
      return result;
    }
  }

  if (v53 != 7)
  {
    v55 = v282;
    v56 = v287;
    v28 = v288;
    goto LABEL_37;
  }

  if (!(v51 >> 14))
  {
LABEL_87:

    v55 = v282;
    goto LABEL_88;
  }

  v271 = v47;
  if (v51 >> 14 == 1)
  {
    v304 = v301;
    v305 = v49;
    v310 = 5;
    v118 = v301;

    sub_1D62B5248(&v301, &v295);
    v119 = v294;
    v120 = sub_1D703E0C8(&v304, &v310);
    v294 = v119;
    if (v119)
    {
      (*v289)(v288, v33);

      goto LABEL_269;
    }

    v121 = v120;
    v122 = v277;
    FormatOptionCollection.subscript.getter(v118, *(&v118 + 1), v277);
    if ((*v276)(v122, 1, v279) == 1)
    {

      sub_1D5B6EF64(v122, &qword_1EDF337F0, type metadata accessor for FormatOption);
      if ((*(v54 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        v262 = swift_allocError();
        *v263 = v118;
        swift_storeEnumTagMultiPayload();
        v294 = v262;
        swift_willThrow();
        v264 = *v289;

        v264(v288, v285);
LABEL_272:

LABEL_273:
      }

      v123 = v274;
      (*v273)(v274, 1, 1, v279);
      sub_1D5B6EF64(v123, &qword_1EDF337F0, type metadata accessor for FormatOption);
    }

    else
    {
      v246 = v272;
      sub_1D5D5E33C(v122, v272, type metadata accessor for FormatOption);
      *&v295 = v246[2];

      FormatOptionValue.type.getter(&v304);
      if ((sub_1D6183C84(v304, v121) & 1) == 0)
      {
        v294 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        v255 = swift_allocError();
        v257 = v256;
        v258 = v289;
        v260 = *v246;
        v259 = v246[1];
        *&v295 = v246[2];

        FormatOptionValue.type.getter(&v304);
        v261 = v304;
        *v257 = v260;
        *(v257 + 8) = v259;
        *(v257 + 16) = v261;
        *(v257 + 24) = v121;
        swift_storeEnumTagMultiPayload();
        v294 = v255;
        swift_willThrow();

        (*v258)(v288, v285);
        sub_1D62B51D0(v246, type metadata accessor for FormatOption);
        goto LABEL_272;
      }

      swift_bridgeObjectRelease_n();
      v247 = v274;
      sub_1D5D5E33C(v246, v274, type metadata accessor for FormatOption);
      (*v273)(v247, 0, 1, v279);
      sub_1D5B6EF64(v247, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v54 = v293;
    }

    v55 = v282;
    v33 = v285;
    v78 = v287;
    v28 = v288;
    v47 = v271;
    goto LABEL_150;
  }

  v134 = (*&v303[15] >> 8) & 0x7FF;
  v135 = v278;
  v268 = *&v303[8];
  v269 = *v303;
  LODWORD(v270) = v134;
  switch((((*&v303[15] >> 8) & 0x700u) >> 7) & 0xFFFFFFFE | ((*&v303[15] >> 8) >> 3) & 1)
  {
    case 3u:
    case 4u:
      v304 = v301;
      v305 = v49;
      v310 = 5;
      v249 = v301;

      sub_1D62B5248(&v301, &v295);
      v267 = *(&v249 + 1);

      v250 = v294;
      v251 = sub_1D703E0C8(&v304, &v310);
      v294 = v250;
      if (!v250)
      {
        v137 = v249;
        v252 = v267;
        v253 = v135;
        sub_1D6BEBFEC(v249, v267, v251, 1, v135);
        v294 = 0;

        v136 = v252;

        sub_1D5B6EF64(v253, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v33 = v285;
        v134 = v270;
        goto LABEL_105;
      }

      (*v289)(v288, v33);

      break;
    default:
      v136 = *(&v301 + 1);
      v137 = v301;

LABEL_105:
      v138 = v134 >> 8;
      v139 = v137;
      *&v295 = v137;
      *(&v295 + 1) = v136;
      v296 = v50;
      v266 = *(&v50 + 1);
      v267 = v50;
      v141 = v268;
      v140 = v269;
      *&v297[0] = v269;
      *(&v297[0] + 1) = v268;
      LOBYTE(v297[1]) = v51;
      BYTE1(v297[1]) = v138;
      v142 = v287;
      v144 = v293;
      v143 = v294;
      FormatTextNodeBinding.bindChildren(binder:context:)(v287, v293);
      v294 = v143;
      if (v143)
      {
        goto LABEL_257;
      }

      *&v304 = v139;
      *(&v304 + 1) = v136;
      v305 = v267;
      v306 = v266;
      v307 = v140;
      v308 = v141;
      v309 = v270;
      FormatTextNodeBinding.bind(binder:context:)(v142, v144);
      v294 = 0;
      v78 = v142;
      v54 = v293;
      v55 = v282;
      v28 = v288;
      v47 = v271;
      goto LABEL_150;
  }

  return result;
}

void sub_1D6245970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v33 = a1;
  v32 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v32, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v30 = v9;
  v31 = (v11 + 8);
  v12 = (a3 + 56);
  v13 = v10 + 1;
  while (1)
  {
    if (!--v13)
    {
      v25 = v35;
      sub_1D6209FB8(v33, v34, v27, v28, v29, FormatTextContent.bind(binder:context:), FormatTextContent.bind(binder:context:));
      v35 = v25;
      return;
    }

    v15 = *(v12 - 3);
    v16 = *(v12 - 2);
    v18 = *(v12 - 1);
    v17 = *v12;
    *&v36 = v15;

    swift_retain_n();

    v19 = v35;
    sub_1D71C3968(v33, v34, v9);
    v35 = v19;
    if (v19)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v39 = v15;

      v20 = v33;
      v21 = v34;
      v22 = v35;
      FormatExpression.bind(binder:context:)(v33, v34);
      v35 = v22;
      if (v22)
      {

        (*v31)(v30, v32);
        return;
      }

      v23 = *(v16 + 32);
      v36 = *(v16 + 16);
      v37 = v23;
      v38[0] = *(v16 + 48);
      *(v38 + 15) = *(v16 + 63);
      v24 = v35;
      FormatCommandBinding.bind(binder:context:)(v20, v21);
      if (v24)
      {
        v35 = v24;
        (*v31)(v30, v32);

        goto LABEL_13;
      }

      sub_1D623C390(v20, v21, v18, FormatTextContent.bind(binder:context:));
      *&v36 = v17;

      FormatTextContent.bind(binder:context:)(v20, v21);
      v35 = 0;

      v9 = v30;
    }

    v12 += 4;
    v14 = sub_1D725BC5C();

    (*v31)(v9, v32);
    if (v14)
    {
      return;
    }
  }

LABEL_13:
}

void sub_1D6245CC4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v171 = a4;
  v177 = a2;
  v176 = a1;
  v170 = type metadata accessor for FormatOption();
  v7 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v8);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v158 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v157 = &v151 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v163 = (&v151 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v165 = &v151 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v164 = &v151 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v151 - v28;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v151 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v162 = &v151 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v161 = &v151 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v167 = &v151 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v166 = &v151 - v49;
  v50 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v172 = &v151 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v175, v53);
  v55 = &v151 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a3 + 16);
  v168 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v169 = (v7 + 56);
  v159 = (v7 + 48);
  v174 = (v57 + 8);
  v58 = (a3 + 40);
  v59 = v56 + 1;
  v173 = v55;
  v160 = v37;
  while (1)
  {
    v60 = v59 - 1;
    if (!v60)
    {
      sub_1D625CCA8(v176, v177, v171);
      return;
    }

    v178 = v60;
    v61 = v33;
    v63 = *v58;
    *&v185 = *(v58 - 1);
    v62 = v185;

    v188 = v62;
    swift_retain_n();
    sub_1D71C3968(v176, v177, v55);
    if (v5)
    {
      goto LABEL_119;
    }

    if (sub_1D725BC6C())
    {
      goto LABEL_5;
    }

    *&v185 = v188;

    FormatExpression.bind(binder:context:)(v176, v177);

    v65 = v63 >> 62;
    if ((v63 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_5;
      }

      v68 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6245CC4(v176, v177, v68, v69);

LABEL_14:
      v55 = v173;
      goto LABEL_6;
    }

    if (!v65)
    {
      v66 = swift_projectBox();
      v67 = v172;
      sub_1D62B50EC(v66, v172, type metadata accessor for FormatCommandOpenURL);
      sub_1D5F86DA0(v177);
      sub_1D62B51D0(v67, type metadata accessor for FormatCommandOpenURL);
LABEL_5:
      v55 = v173;
      goto LABEL_6;
    }

    v70 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v71 = *(v70 + 32);
    v185 = *(v70 + 16);
    v186 = v71;
    v72 = *(v70 + 48);
    *&v187[15] = *(v70 + 63);
    *v187 = v72;
    v73 = *(&v185 + 1);
    v74 = v187[16];
    if (v187[18])
    {
      v75 = 8;
    }

    else
    {
      v75 = 0;
    }

    v76 = v75 & 0xFFFFFFF8 | (*&v187[16] >> 11) & 7;
    if (v76 <= 4)
    {
      if (v76 <= 1)
      {
        if (v76)
        {
          goto LABEL_56;
        }

        v77 = (DWORD2(v71) >> 3) & 7;
        if (v77 <= 1)
        {
          if (v77)
          {
            goto LABEL_49;
          }
        }

        else if (v77 != 2 && v77 != 3 && BYTE8(v71) >> 6 && BYTE8(v71) >> 6 != 1)
        {
          v78 = BYTE8(v71) & 7;
          if (v78 <= 1)
          {
            if ((BYTE8(v71) & 7) == 0)
            {
LABEL_49:
              sub_1D5D085FC(&v185);
              goto LABEL_56;
            }

            goto LABEL_39;
          }

          goto LABEL_64;
        }
      }

      else if (v76 != 3)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    if (v76 > 6)
    {
      break;
    }

    if (v76 == 5)
    {
      goto LABEL_14;
    }

    if (BYTE8(v71) >> 6 && BYTE8(v71) >> 6 != 1)
    {
      v78 = BYTE8(v71) & 0x3F;
      if (v78 <= 1)
      {
        if ((BYTE8(v71) & 0x3F) == 0)
        {
          goto LABEL_49;
        }

LABEL_39:
        if ((~*(&v185 + 1) & 0xF000000000000007) != 0)
        {
          *&v180 = *(&v185 + 1);

          sub_1D62B5248(&v185, &v182);
          v155 = v73;
          sub_1D5CFCFAC(v73);
          FormatTextContent.bind(binder:context:)(v176, v177);
          goto LABEL_54;
        }

        goto LABEL_56;
      }

LABEL_64:
      v55 = v173;
      if (v78 == 2)
      {
        goto LABEL_7;
      }

LABEL_51:
      sub_1D5D085FC(&v185);
      goto LABEL_7;
    }

LABEL_47:
    if (v71 <= 1u)
    {
      if (!v71)
      {
        goto LABEL_49;
      }

      if ((~v185 & 0xF000000000000007) != 0)
      {
        *&v180 = v185;
        v87 = v185;

        sub_1D62B5248(&v185, &v182);
        v156 = v87;
        sub_1D5CFCFAC(v87);
        FormatTextContent.bind(binder:context:)(v176, v177);
LABEL_54:

LABEL_55:
        sub_1D5D085FC(&v185);
      }

LABEL_56:
      v55 = v173;
      goto LABEL_7;
    }

    v55 = v173;
    if (v71 != 2)
    {
      goto LABEL_51;
    }

LABEL_7:
    v58 += 2;
    v64 = sub_1D725BC5C();

    (*v174)(v55, v175);
    v59 = v178;
    if (v64)
    {
      return;
    }
  }

  if (v76 != 7 || !(*&v187[16] >> 14))
  {
    goto LABEL_14;
  }

  if (*&v187[16] >> 14 == 1)
  {
    v156 = v185;
    v180 = v185;
    v155 = *(&v185 + 1);
    v181 = v71;
    v179 = 5;
    sub_1D62B5248(&v185, &v182);

    sub_1D62B5248(&v185, &v182);
    v153 = sub_1D703E0C8(&v180, &v179);
    v154 = v70;
    v79 = *(v177 + v168);
    v80 = *(v79 + 16);
    swift_beginAccess();
    if (*(*(v80 + 16) + 16))
    {
      sub_1D5B69D90(v156, v155);
      if (v81)
      {
        swift_endAccess();
        v82 = v165;
        sub_1D5D25108(v165);
        v83 = v82;
        v84 = v164;
        sub_1D5D5E33C(v83, v164, type metadata accessor for FormatOption);
        v85 = v84;
        v86 = v167;
        sub_1D5D5E33C(v85, v167, type metadata accessor for FormatOption);
        goto LABEL_62;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v79 + 24) + 16) && (sub_1D5B69D90(v156, v155), (v88 & 1) != 0))
    {
      swift_endAccess();
      v86 = v167;
      sub_1D5D25108(v167);
LABEL_62:
      v155 = *v169;
      (v155)(v86, 0, 1, v170);
      sub_1D5D5E33C(v86, v29, type metadata accessor for FormatOption);
      v156 = v29;
      *&v182 = *(v29 + 2);
      v89 = v153;

      FormatOptionValue.type.getter(&v180);
      if ((sub_1D6183C84(v180, v89) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v128 = v127;
        v129 = v156;
        v130 = *v156;
        v131 = v156[1];
        *&v182 = v156[2];

        FormatOptionValue.type.getter(&v180);
        v132 = v180;
        *v128 = v130;
        *(v128 + 8) = v131;
        *(v128 + 16) = v132;
        *(v128 + 24) = v89;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v174)(v173, v175);
        sub_1D62B51D0(v129, type metadata accessor for FormatOption);
        goto LABEL_118;
      }

      swift_bridgeObjectRelease_n();
      v90 = v166;
      sub_1D5D5E33C(v156, v166, type metadata accessor for FormatOption);
      (v155)(v90, 0, 1, v170);
      v55 = v173;
    }

    else
    {
      swift_endAccess();
      v91 = v167;
      v92 = v170;
      v152 = *v169;
      v152(v167, 1, 1, v170);

      sub_1D5B6EF64(v91, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v55 = v173;
      if ((*(v177 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v133 = v155;
        *v134 = v156;
        v134[1] = v133;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v135 = *v174;

        v135(v55, v175);
        goto LABEL_118;
      }

      v90 = v166;
      v152(v166, 1, 1, v92);
    }

    sub_1D5B6EF64(v90, &qword_1EDF337F0, type metadata accessor for FormatOption);
    sub_1D5D085FC(&v185);

LABEL_6:
    v33 = v61;
    goto LABEL_7;
  }

  switch((*&v187[16] >> 7) & 0xE | (*&v187[16] >> 3) & 1)
  {
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:

      goto LABEL_70;
    case 2:
      v154 = v186;
      v155 = *(&v185 + 1);
      v156 = v185;

      sub_1D62B5248(&v185, &v182);
      v109 = v74 >> 4;
      v110 = v155;
      v111 = v154;
      if (((1 << v109) & 0x1EF7) != 0)
      {
        v112 = v156;
        switch(v74 >> 4)
        {
          case 3:
            goto LABEL_105;
          case 8:
            goto LABEL_111;
          default:
            goto LABEL_70;
        }
      }

      if (v109 == 3)
      {
        if (BYTE1(v154) < 4u && v154 <= 0xFDu)
        {
          *&v180 = v156;
          *(&v180 + 1) = v155;
          LOBYTE(v181) = v154 & 1;
          sub_1D62B5248(&v185, &v182);
          sub_1D62B5248(&v185, &v182);
          sub_1D60ECF10(v177);
          sub_1D5D2F2C8(v180, *(&v180 + 1), v181);
          sub_1D5D085FC(&v185);
        }

        v110 = v155;
        v112 = v156;
        v111 = v154;
LABEL_105:
        *&v182 = v112;
        *(&v182 + 1) = v110;
        LOWORD(v183) = v111;
        sub_1D62B416C(v177);
        goto LABEL_70;
      }

      if ((v155 & 0x80) != 0)
      {
        v154 = v70;
        LOBYTE(v180) = v155 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v123 = *(&v183 + 1);
          v124 = v184;
          __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
          (*(v124 + 8))(v176, v177, v123, v124);
          __swift_destroy_boxed_opaque_existential_1(&v182);
        }

        else
        {
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          sub_1D5BFB774(&v182, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        v70 = v154;
        LOBYTE(v110) = v155;
      }

LABEL_111:
      if (!(v110 >> 6) || v110 >> 6 == 1)
      {
        goto LABEL_70;
      }

      LOBYTE(v180) = v110 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v184 = 0;
        v182 = 0u;
        v183 = 0u;
        sub_1D5BFB774(&v182, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_70:
        sub_1D5D085FC(&v185);

        goto LABEL_14;
      }

      v154 = v70;
      v125 = *(&v183 + 1);
      v126 = v184;
      __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
      (*(v126 + 8))(v176, v177, v125, v126);
      __swift_destroy_boxed_opaque_existential_1(&v182);
      sub_1D5D085FC(&v185);

      goto LABEL_5;
    case 3:
    case 4:
      v156 = v185;
      v180 = v185;
      v181 = v71;
      v179 = 5;
      v93 = v71;
      sub_1D62B5248(&v185, &v182);

      sub_1D62B5248(&v185, &v182);
      v155 = v73;

      v154 = v93;

      v152 = sub_1D703E0C8(&v180, &v179);
      v94 = *(v177 + v168);
      v95 = *(v94 + 16);
      swift_beginAccess();
      if (*(*(v95 + 16) + 16) && (sub_1D5B69D90(v156, v155), (v96 & 1) != 0))
      {
        swift_endAccess();
        v97 = v158;
        sub_1D5D25108(v158);
        v98 = v97;
        v99 = v157;
        sub_1D5D5E33C(v98, v157, type metadata accessor for FormatOption);
        v100 = v162;
        sub_1D5D5E33C(v99, v162, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v94 + 24) + 16) || (sub_1D5B69D90(v156, v155), (v101 & 1) == 0))
        {
          swift_endAccess();
          v113 = *v169;
          v114 = v162;
          (*v169)(v162, 1, 1, v170);

          sub_1D5B6EF64(v114, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v177 + 48) & 1) == 0)
          {
            goto LABEL_122;
          }

          v107 = v161;
          v153 = v113;
          v113(v161, 1, 1, v170);
          v106 = v155;
          goto LABEL_85;
        }

        swift_endAccess();
        v100 = v162;
        sub_1D5D25108(v162);
      }

      v153 = *v169;
      v153(v100, 0, 1, v170);
      v102 = v100;
      v103 = v163;
      sub_1D5D5E33C(v102, v163, type metadata accessor for FormatOption);
      *&v182 = v103[2];
      v104 = v152;

      FormatOptionValue.type.getter(&v180);
      v105 = v104;
      if ((sub_1D6183C84(v180, v104) & 1) == 0)
      {
        v178 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v139 = v138;
        v140 = v163;
        v141 = *v163;
        v142 = v163[1];
        *&v182 = v163[2];

        FormatOptionValue.type.getter(&v180);
        v143 = v180;
        *v139 = v141;
        *(v139 + 8) = v142;
        *(v139 + 16) = v143;
        *(v139 + 24) = v105;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v174)(v173, v175);
        v144 = v140;
        goto LABEL_125;
      }

      v106 = v155;

      swift_bridgeObjectRelease_n();
      v107 = v161;
      sub_1D5D5E33C(v163, v161, type metadata accessor for FormatOption);
      v153(v107, 0, 1, v170);
LABEL_85:
      sub_1D5B6EF64(v107, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v115 = v156;
      *&v180 = v156;
      *(&v180 + 1) = v106;
      v181 = v154;
      v179 = 5;
      sub_1D62B5248(&v185, &v182);

      v33 = v61;
      v116 = sub_1D703E0C8(&v180, &v179);
      FormatOptionCollection.subscript.getter(v115, v155, v33);
      v117 = v170;
      if ((*v159)(v33, 1, v170) == 1)
      {

        sub_1D5B6EF64(v33, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v118 = v160;
        if ((*(v177 + 48) & 1) == 0)
        {
LABEL_122:
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v136 = v155;
          *v137 = v156;
          v137[1] = v136;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          (*v174)(v173, v175);
          goto LABEL_118;
        }

        v119 = 1;
        goto LABEL_90;
      }

      sub_1D5D5E33C(v33, v10, type metadata accessor for FormatOption);
      v156 = v10;
      *&v182 = *(v10 + 2);

      FormatOptionValue.type.getter(&v180);
      v120 = v116;
      v121 = sub_1D6183C84(v180, v116);
      v118 = v160;
      if (v121)
      {

        swift_bridgeObjectRelease_n();
        sub_1D5D5E33C(v156, v118, type metadata accessor for FormatOption);
        v119 = 0;
        v117 = v170;
LABEL_90:
        v153(v118, v119, 1, v117);
        sub_1D5B6EF64(v118, &qword_1EDF337F0, type metadata accessor for FormatOption);
        goto LABEL_55;
      }

      v178 = type metadata accessor for FormatDerivedDataError();
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v146 = v145;
      v147 = v156;
      v148 = *v156;
      v149 = v156[1];
      *&v182 = v156[2];

      FormatOptionValue.type.getter(&v180);
      v150 = v180;
      *v146 = v148;
      *(v146 + 8) = v149;
      *(v146 + 16) = v150;
      *(v146 + 24) = v120;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*v174)(v173, v175);
      v144 = v147;
LABEL_125:
      sub_1D62B51D0(v144, type metadata accessor for FormatOption);
LABEL_118:
      sub_1D5D085FC(&v185);
LABEL_119:

      return;
    case 0xC:
      v108 = BYTE8(v185);

      if ((v73 & 0x80) != 0)
      {
        LODWORD(v156) = v73;
        LOBYTE(v180) = v73 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v122 = *(&v183 + 1);
          v155 = v184;
          __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
          (*(v155 + 8))(v176, v177, v122);
          __swift_destroy_boxed_opaque_existential_1(&v182);
        }

        else
        {
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          sub_1D5BFB774(&v182, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        v33 = v61;
        v108 = v156;
      }

      if (v108 >> 6 && v108 >> 6 != 1)
      {
        LOBYTE(v180) = v108 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v156 = *(&v183 + 1);
          v155 = v184;
          __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
          (*(v155 + 8))(v176, v177, v156);
          __swift_destroy_boxed_opaque_existential_1(&v182);
        }

        else
        {
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          sub_1D5BFB774(&v182, &qword_1EDF329A0, &qword_1EDF329A8);
        }
      }

      goto LABEL_55;
    default:

      sub_1D62B5248(&v185, &v182);
      goto LABEL_70;
  }
}

uint64_t sub_1D6247B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v26 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v26, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v12 + 8);
  v14 = (a3 + 40);
  v15 = *(a3 + 16) + 1;
  v27 = a2;
  v24 = v11;
  v25 = (v12 + 8);
  while (1)
  {
    if (!--v15)
    {
      v28 = v23;

      FormatButtonNodeAction.bind(binder:context:)(a1, a2);
    }

    v18 = a2;
    v19 = *(v14 - 1);
    v20 = *v14;
    v28 = v19;

    swift_retain_n();
    sub_1D71C3968(a1, v18, v11);
    if (v5)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v28 = v19;

      v21 = v27;
      FormatExpression.bind(binder:context:)(a1, v27);

      v28 = v20;

      FormatButtonNodeAction.bind(binder:context:)(a1, v21);

      v11 = v24;
      v13 = v25;
    }

    v14 += 2;
    v16 = sub_1D725BC5C();

    result = (*v13)(v11, v26);
    a2 = v27;
    if (v16)
    {
      return result;
    }
  }
}

uint64_t sub_1D6247DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v26 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v26, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v12 + 8);
  v14 = (a3 + 40);
  v15 = *(a3 + 16) + 1;
  v27 = a2;
  v24 = v11;
  v25 = (v12 + 8);
  while (1)
  {
    if (!--v15)
    {
      v28 = v23;

      FormatVideoNodeContent.bind(binder:context:)(a1, a2);
    }

    v18 = a2;
    v19 = *(v14 - 1);
    v20 = *v14;
    v28 = v19;

    swift_retain_n();
    sub_1D71C3968(a1, v18, v11);
    if (v5)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v28 = v19;

      v21 = v27;
      FormatExpression.bind(binder:context:)(a1, v27);

      v28 = v20;

      FormatVideoNodeContent.bind(binder:context:)(a1, v21);

      v11 = v24;
      v13 = v25;
    }

    v14 += 2;
    v16 = sub_1D725BC5C();

    result = (*v13)(v11, v26);
    a2 = v27;
    if (v16)
    {
      return result;
    }
  }
}

uint64_t sub_1D6248054(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v27 = a4;
  v30 = a2;
  v7 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v28 = v12;
  v29 = (v13 + 8);
  v14 = (a3 + 40);
  v15 = v11 + 1;
  while (1)
  {
    if (!--v15)
    {
      v25 = v27;
      v31 = v27;
      sub_1D5D085B4(v27);
      FormatTextSize.bind(binder:context:)(a1, v30);
      v26 = v25;
      return sub_1D5D05694(v26);
    }

    v20 = *(v14 - 1);
    v21 = *v14;
    v31 = v20;

    sub_1D5D085B4(v21);

    sub_1D71C3968(a1, v30, v10);
    if (v4)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v31 = v20;

      FormatExpression.bind(binder:context:)(a1, v30);

      v22 = v21 >> 61;
      if ((v21 >> 61) <= 2)
      {
        if (v22)
        {
          if (v22 != 1)
          {
LABEL_14:
            v23 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            sub_1D5D085B4(v21);

            sub_1D6233590(a1, v30, v23);

            sub_1D5D05694(v21);
            goto LABEL_4;
          }

          v17 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v16 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          sub_1D5D085B4(v21);

          sub_1D5D085B4(v16);
          sub_1D6248054(a1, v30, v17, v16);

          sub_1D5D05694(v16);
        }

        else
        {
          v31 = *(v21 + 16);
          v24 = v31;
          sub_1D5D085B4(v21);
          sub_1D5C82CD8(v24);
          FormatSize.bind(binder:context:)(a1, v30);
          sub_1D5C92A8C(v24);
        }
      }

      else
      {
        if (v22 > 4)
        {
          if (v22 != 5)
          {
            goto LABEL_4;
          }
        }

        else if (v22 == 3)
        {
          goto LABEL_14;
        }

        v31 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D5D085B4(v21);

        FormatTextContent.bind(binder:context:)(a1, v30);
      }

      sub_1D5D05694(v21);
      v7 = v28;
    }

LABEL_4:
    v14 += 2;
    v18 = sub_1D725BC5C();

    sub_1D5D05694(v21);
    result = (*v29)(v10, v7);
    if (v18)
    {
      return result;
    }
  }

  v26 = v21;
  return sub_1D5D05694(v26);
}

unint64_t sub_1D62484AC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v22[0] = a4;
  v25 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v25, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v24 = (v13 + 8);

  v22[1] = a3;
  v23 = v11;
  v14 = (a3 + 40);
  v15 = v12 + 1;
  v26 = a1;
  while (1)
  {
    if (!--v15)
    {

      v20 = v22[0];
      v27 = v22[0];
      sub_1D5C82CD8(v22[0]);
      FormatSize.bind(binder:context:)(a1, a2);
      return sub_1D5C92A8C(v20);
    }

    v17 = *(v14 - 1);
    v18 = *v14;
    v27 = v17;

    sub_1D5C82CD8(v18);

    sub_1D71C3968(a1, a2, v11);
    if (v5)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v27 = v17;

      v19 = v26;
      FormatExpression.bind(binder:context:)(v26, a2);

      v27 = v18;
      sub_1D5C82CD8(v18);
      FormatSize.bind(binder:context:)(v19, a2);
      v5 = 0;
      sub_1D5C92A8C(v18);
      v11 = v23;
    }

    v14 += 2;
    v16 = sub_1D725BC5C();

    sub_1D5C92A8C(v18);
    (*v24)(v11, v25);
    a1 = v26;
    if (v16)
    {
    }
  }

  sub_1D5C92A8C(v18);
}

uint64_t sub_1D6248794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v23 = a5;
  v6 = v5;
  v21[0] = a4;
  v25 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v25, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v24 = (v14 + 8);

  v21[1] = a3;
  v22 = v12;
  v15 = (a3 + 40);
  v16 = v13 + 1;
  while (1)
  {
    if (!--v16)
    {

      v26 = v21[0];

      v23(a1, a2);
    }

    v18 = *(v15 - 1);
    v19 = *v15;
    v26 = v18;

    swift_retain_n();
    sub_1D71C3968(a1, a2, v12);
    if (v6)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v26 = v18;

      FormatExpression.bind(binder:context:)(a1, a2);

      v26 = v19;

      v23(a1, a2);

      v6 = 0;
      v12 = v22;
    }

    v15 += 2;
    v17 = sub_1D725BC5C();

    (*v24)(v12, v25);
    if (v17)
    {
    }
  }
}

unint64_t sub_1D6248A90(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a3 >= 2)
  {
    v7 = a4;
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);
    sub_1D6248A90(v6, a2, v8, v9);
    sub_1D5D0A58C(v8);
    result = sub_1D5D0A58C(v9);
    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  if (a4 >= 2)
  {
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    sub_1D5D0A57C(v10);
    sub_1D5D0A57C(v11);
    sub_1D6248A90(v6, a2, v10, v11);
    sub_1D5D0A58C(v10);
    return sub_1D5D0A58C(v11);
  }

  return result;
}

uint64_t sub_1D6248B70(uint64_t a1, uint64_t a2)
{

  FormatVideoNodeContent.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatVideoNodeContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6248C08(uint64_t a1, uint64_t a2)
{

  FormatMicaNodeContent.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatMicaNodeContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatUserInterfaceValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v28 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v25 - v14, v3, v6, v12);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v25 = v13;
    v27 = v3;
    v15 = v4;
    v16 = *(&v30 + 1);
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v18 = *(v17 + 8);
    v26 = v5;
    v19 = v32;
    v18(v5, v15, v16, v17);
    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v19)
    {
      return result;
    }

    v32 = 0;
    v4 = v15;
    v5 = v26;
    v25(v9, v27 + *(v28 + 36), v6);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8);
    (v13)(v9, v3 + *(v28 + 36), v6);
  }

  if (swift_dynamicCast())
  {
    v21 = v5;
    v22 = v4;
    v23 = *(&v30 + 1);
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    (*(v24 + 8))(v21, v22, v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    return sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

unint64_t FormatStyleImage.bind(binder:context:)(unint64_t a1, uint64_t a2)
{

  FormatAsyncImageContent.bind(binder:context:)(a1, a2);

  if (!v2)
  {
    return FormatImageNodeStyle.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6249038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return a6(a1, a2, a4);
  }

  v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  a5(a1, a2, v11, v12);

  if (!v6)
  {
    return a6(a1, a2, a4);
  }

  return result;
}

unint64_t sub_1D62490FC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v7 = a4;
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);

    sub_1D62490FC(a1, a2, v8, v9);
    sub_1D5D0A58C(v8);

    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  return sub_1D620D084(a1, a2, a4);
}

unint64_t sub_1D624919C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62 == 1)
  {
    v7 = a4;
    v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v8);

    sub_1D624919C(a1, a2, v8, v9);
    sub_1D5EB15C4(v8);

    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  return sub_1D620EAF8(a1, a2, a4);
}

uint64_t sub_1D6249244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
  sub_1D5B49474(0, &qword_1EDF329A8);

  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D6212E6C(a1, a2, a4);
}

void sub_1D62493D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = *(a3 + 32);
    v13 = *(a3 + 40);
    sub_1D62B6164(v10, v11, v12, v13);
    sub_1D69BBC64(a2);
    sub_1D62B61A8(v10, v11, v12, v13);
    if (v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (a3 >> 62 == 1 || (v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), , , sub_1D62493D8(a1, a2, v8, v9), , , !v4))
  {
LABEL_6:
    sub_1D622E2AC(a1, a2, a4);
  }
}

uint64_t sub_1D62494F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D6230E38(a1, a2, a4);
}

uint64_t sub_1D6249614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D6230E38(a1, a2, a4);
}

uint64_t sub_1D6249738(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v8)
    {

      FormatColor.bind(binder:context:)(a1, a2);

      if (v4)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a3 + 16);

      sub_1D6212DD8(a1, a2, v9);

      if (v4)
      {
        return result;
      }
    }

    return sub_1D623A7D4(a1, a2, a4);
  }

  if (v8 != 2)
  {
    return sub_1D623A7D4(a1, a2, a4);
  }

  v11 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5F33D5C(v11);

  sub_1D6249738(a1, a2, v11, v12);
  sub_1D5F33D8C(v11);

  if (!v4)
  {
    return sub_1D623A7D4(a1, a2, a4);
  }

  return result;
}

uint64_t sub_1D6249860(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = a3;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D6230E38(a1, a2, a4);
}

uint64_t sub_1D6249984(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v14 = a4;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D623C8CC(a1, a2, a3);
}

uint64_t sub_1D6249AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D623C788(a1, a2, a4);
}

uint64_t sub_1D6249BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B49474(0, &qword_1EDF329A8);

  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, a2, v9, v10);
    result = __swift_destroy_boxed_opaque_existential_1(&v12);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D5BFB774(&v12, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  return sub_1D620F94C(a1, a2, a5);
}

uint64_t FormatSelectorValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8, v9);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v12 = *(&v18 + 1);
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v13 + 8))(a1, a2, v12, v13);
    result = __swift_destroy_boxed_opaque_existential_1(&v17);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1D5BFB774(&v17, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  v15 = sub_1D61834A8(a3);
  v16 = type metadata accessor for FormatSelectorValueSelector();

  Array<A>.bind(binder:context:)(a1, a2, v15, v16, &protocol witness table for FormatSelectorValueSelector<A>);
}

uint64_t FormatAuxiliaryNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 32);

    sub_1D6215F90(a1, a2, v8);
  }

  return result;
}

uint64_t FormatBackground.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 61;
  if (v7 > 3)
  {
    v8 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if (v7 <= 5)
    {
      if (v7 == 4)
      {
        v9 = *(v8 + 144);
        v69 = *(v8 + 128);
        v70 = v9;
        v71[0] = *(v8 + 160);
        *(v71 + 9) = *(v8 + 169);
        v10 = *(v8 + 80);
        v65 = *(v8 + 64);
        v66 = v10;
        v11 = *(v8 + 112);
        v67 = *(v8 + 96);
        v68 = v11;
        v12 = *(v8 + 32);
        __dst = *(v8 + 16);
        v63 = v12;
        v64 = *(v8 + 48);
        v13 = *(v8 + 144);
        v59 = *(v8 + 128);
        v60 = v13;
        *v61 = *(v8 + 160);
        *&v61[9] = *(v8 + 169);
        v14 = *(v8 + 80);
        v55 = *(v8 + 64);
        v56 = v14;
        v15 = *(v8 + 112);
        v57 = *(v8 + 96);
        v58 = v15;
        v16 = *(v8 + 32);
        v52 = *(v8 + 16);
        v53 = v16;
        v54 = *(v8 + 48);
        sub_1D62B4F54(&__dst, v50);
        FormatSplitBackground.bind(binder:context:)(a1, a2);
        return sub_1D62B4FB0(&__dst);
      }

      v38 = *(v8 + 24);
      *&__dst = *(v8 + 16);

      swift_retain_n();
      FormatAsyncImageContent.bind(binder:context:)(a1, a2);
      if (v3)
      {
      }

      if (v38)
      {
        FormatImageNodeStyle.bind(binder:context:)(a1, a2);
      }
    }

    if (v7 == 6)
    {
      v25 = *(v8 + 128);
      v68 = *(v8 + 112);
      v69 = v25;
      v70 = *(v8 + 144);
      LOBYTE(v71[0]) = *(v8 + 160);
      v26 = *(v8 + 64);
      v64 = *(v8 + 48);
      v65 = v26;
      v27 = *(v8 + 96);
      v66 = *(v8 + 80);
      v67 = v27;
      v28 = *(v8 + 32);
      __dst = *(v8 + 16);
      v63 = v28;
      v29 = *(v8 + 128);
      v58 = *(v8 + 112);
      v59 = v29;
      v60 = *(v8 + 144);
      v61[0] = *(v8 + 160);
      v30 = *(v8 + 64);
      v54 = *(v8 + 48);
      v55 = v30;
      v31 = *(v8 + 96);
      v56 = *(v8 + 80);
      v57 = v31;
      v32 = *(v8 + 32);
      v52 = *(v8 + 16);
      v53 = v32;
      sub_1D62B4EA4(&__dst, v50);
      FormatMicaBackground.bind(binder:context:)(a1, a2);
      return sub_1D62B4F00(&__dst);
    }

    else
    {
      v39 = *(v8 + 144);
      v59 = *(v8 + 128);
      v60 = v39;
      *v61 = *(v8 + 160);
      *&v61[16] = *(v8 + 176);
      v40 = *(v8 + 80);
      v55 = *(v8 + 64);
      v56 = v40;
      v41 = *(v8 + 112);
      v57 = *(v8 + 96);
      v58 = v41;
      v42 = *(v8 + 32);
      v52 = *(v8 + 16);
      v53 = v42;
      v54 = *(v8 + 48);
      memmove(&__dst, (v8 + 16), 0xA2uLL);
      result = sub_1D62B4E2C(&__dst);
      if (result > 1)
      {
        if (result == 2)
        {
          v43 = sub_1D5D04BC4(&__dst);
          v44 = *(v43 + 144);
          v81 = *(v43 + 128);
          v82 = v44;
          v83 = *(v43 + 160);
          v45 = *(v43 + 80);
          v77 = *(v43 + 64);
          v78 = v45;
          v46 = *(v43 + 112);
          v79 = *(v43 + 96);
          v80 = v46;
          v47 = *(v43 + 16);
          v73 = *v43;
          v74 = v47;
          v48 = *(v43 + 48);
          v75 = *(v43 + 32);
          v76 = v48;
          v50[0] = v52;
          v50[1] = v53;
          v50[4] = v56;
          v50[5] = v57;
          v50[2] = v54;
          v50[3] = v55;
          v51 = *&v61[16];
          v50[8] = v60;
          v50[9] = *v61;
          v50[6] = v58;
          v50[7] = v59;
          v49 = sub_1D5D04BC4(v50);
          sub_1D62B4E48(v49, v72);
          FormatGlassEffect.bind(binder:context:)(a1, a2);
          return sub_1D60113F8(&v52);
        }
      }

      else
      {
        return sub_1D5D04BC4(&__dst);
      }
    }
  }

  else
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        *&__dst = *(v6 + 16);

        FormatColor.bind(binder:context:)(a1, a2);
      }

      v33 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
      v34 = v33[2];
      v36 = v33[8];
      v35 = v33[9];

      sub_1D5D615EC(v36);
      sub_1D6212DD8(a1, a2, v34);
      if (!v3)
      {
        if (!v36)
        {

          v37 = 0;
          return sub_1D5CDE22C(v37);
        }

        sub_1D620B270(a1, a2, v36);
        sub_1D620B270(a1, a2, v35);
        sub_1D5CDE22C(v36);
      }

      v37 = v36;
      return sub_1D5CDE22C(v37);
    }

    v18 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
    if (v7 == 2)
    {
      v19 = v18[6];
      v20 = v18[7];
      v21 = v18[8];
      v66 = v18[5];
      v67 = v19;
      v68 = v20;
      v69 = v21;
      v22 = v18[2];
      __dst = v18[1];
      v63 = v22;
      v23 = v18[4];
      v64 = v18[3];
      v65 = v23;
      v24 = v21;
      sub_1D60865E4(&__dst, &v52);
      sub_1D6212DD8(a1, a2, v24);
      return sub_1D6086640(&__dst);
    }

    else
    {
      *&__dst = *(v18 + 2);
      sub_1D6086744(__dst);
      FormatShine.bind(binder:context:)(a1, a2);
      return sub_1D6086768(__dst);
    }
  }

  return result;
}

uint64_t FormatColor.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 > 4)
  {
    if (v7 <= 8)
    {
      if ((v7 - 5) < 2)
      {
        return result;
      }

      v8 = v6 & 0xFFFFFFFFFFFFFFFLL;
      if (v7 == 7)
      {
        v9 = *(v8 + 24);
        v10 = *(v8 + 32);
        v11 = *(v8 + 40);
        *&v25 = *(v8 + 16);
        *(&v25 + 1) = v9;
        *&v26 = v10;
        BYTE8(v26) = v11;
        sub_1D5F58038(v25, v9, v10, v11);
        FormatColorBinding.bind(binder:context:)(v5, a2);
        return sub_1D5F57FEC(v25, v9, v10, v11);
      }

      v23 = *(v8 + 24);
      *&v25 = *(v8 + 16);
      swift_retain_n();

      FormatColor.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        sub_1D623CFF4(v5, a2, v23, FormatColor.bind(binder:context:));
LABEL_27:
      }

      goto LABEL_24;
    }

    v15 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 9)
    {
      v18 = *(v15 + 32);
      v28[0] = *(v15 + 16);
      v28[1] = v18;
      v29 = *(v15 + 48);
      sub_1D62B50EC(v28, &v25, sub_1D62B5004);
      sub_1D62507BC(v5, a2);
      return sub_1D62B51D0(v28, sub_1D62B5004);
    }

    if (v7 != 10)
    {
      v21 = *(v15 + 24);
      v22 = *(v15 + 32);
      *&v25 = *(v15 + 16);

      swift_retain_n();

      FormatColor.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        sub_1D623CFF4(v5, a2, v21, FormatColor.bind(binder:context:));
        *&v25 = v22;

        FormatColor.bind(binder:context:)(v5, a2);

        goto LABEL_27;
      }

LABEL_24:
    }

    v16 = *(v15 + 16);
    v17 = *(v15 + 24);

    sub_1D625088C(v5, a2, v16, v17);
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      return result;
    }
  }

  else if (v7 != 2)
  {
    v12 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 != 3)
    {
      v24 = *(v12 + 24);
      *&v25 = *(v12 + 16);
      swift_retain_n();

      FormatColor.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        sub_1D620B334(v5, a2, v24);
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);

    sub_1D6250710(v5, a2, v13, v14, FormatColor.bind(binder:context:));
  }

  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v19 = *(&v26 + 1);
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    (*(v20 + 8))(v5, a2, v19, v20);
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_1D5BFB774(&v25, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t FormatGradient.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = v2[6];
  v6 = v2[7];
  result = sub_1D6212DD8(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      sub_1D620B270(a1, a2, v6);
      return sub_1D5CDE22C(v7);
    }
  }

  return result;
}

uint64_t FormatSplitBackground.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 80);
  v19[2] = *(v2 + 64);
  v20 = v10;
  v21 = *(v2 + 96);
  v11 = *(v2 + 48);
  v19[0] = *(v2 + 32);
  v19[1] = v11;
  v12 = *(v2 + 104);
  v13 = *(v2 + 120);
  v14 = *(v2 + 136);
  v15 = *(v2 + 152);
  v24 = *(v2 + 168);
  v22[2] = v14;
  v23 = v15;
  v22[0] = v12;
  v22[1] = v13;
  swift_bridgeObjectRetain_n();

  sub_1D620B270(a1, a2, v7);
  if (v3)
  {

    return swift_bridgeObjectRelease_n();
  }

  sub_1D620B270(a1, a2, v6);

  swift_bridgeObjectRelease_n();
  sub_1D620B270(a1, a2, v8);
  sub_1D620B270(a1, a2, v9);
  if ((v21 & 1) == 0)
  {

    FormatColor.bind(binder:context:)(a1, a2);
    goto LABEL_8;
  }

  sub_1D5D615EC(v20);
  sub_1D6212DD8(a1, a2, *&v19[0]);
  if (!v20)
  {
LABEL_8:
    sub_1D60FBD38(v19);
    goto LABEL_9;
  }

  sub_1D620B270(a1, a2, v20);
  sub_1D620B270(a1, a2, *(&v20 + 1));
  sub_1D5CDE22C(v20);
  sub_1D60FBD38(v19);
LABEL_9:
  v17 = *&v22[0];
  if (v24)
  {
    v18 = v23;

    sub_1D5D615EC(v18);
    sub_1D6212DD8(a1, a2, v17);
    if (v18)
    {

      sub_1D620B270(a1, a2, v18);
      sub_1D620B270(a1, a2, *(&v18 + 1));
      sub_1D5CDE22C(v18);
    }
  }

  else
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  return sub_1D60FBD38(v22);
}

unint64_t FormatImageBackground.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatAsyncImageContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      return FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

uint64_t FormatMicaBackground.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = (v2 + 1);
  v36 = *v2;

  FormatMicaNodeContent.bind(binder:context:)(a1, a2);
  if (v3)
  {
  }

  v8 = *(v2 + 15);
  v34 = *(v2 + 13);
  v35[0] = v8;
  *(v35 + 9) = *(v2 + 129);
  v9 = *(v2 + 7);
  v30 = *(v2 + 5);
  v31 = v9;
  v10 = *(v2 + 11);
  v32 = *(v2 + 9);
  v33 = v10;
  v11 = *(v2 + 3);
  v28 = *v6;
  v29 = v11;
  result = sub_1D60486AC(&v28);
  if (result != 1)
  {
    v24 = v34;
    v25[0] = v35[0];
    *(v25 + 9) = *(v35 + 9);
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v18 = v28;
    v19 = v29;
    v12 = *(v2 + 15);
    v26[6] = *(v2 + 13);
    v27[0] = v12;
    *(v27 + 9) = *(v2 + 129);
    v13 = *(v2 + 7);
    v26[2] = *(v2 + 5);
    v26[3] = v13;
    v14 = *(v2 + 11);
    v26[4] = *(v2 + 9);
    v26[5] = v14;
    v15 = *(v2 + 3);
    v26[0] = *v6;
    v26[1] = v15;
    sub_1D62B4994(v26, v16);
    FormatMediaTiming.bind(binder:context:)(a1, a2);
    v16[6] = v24;
    v17[0] = v25[0];
    *(v17 + 9) = *(v25 + 9);
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v16[5] = v23;
    v16[0] = v18;
    v16[1] = v19;
    return sub_1D62B49F0(v16);
  }

  return result;
}

void FormatVisualEffect.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  v11[8] = *(v2 + 128);
  v11[9] = v5;
  v12 = *(v2 + 160);
  v6 = *(v2 + 80);
  v11[4] = *(v2 + 64);
  v11[5] = v6;
  v7 = *(v2 + 112);
  v11[6] = *(v2 + 96);
  v11[7] = v7;
  v8 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v8;
  v9 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v9;
  v10 = sub_1D62B4E2C(v11);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D5D04BC4(v11);
      FormatGlassEffect.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    sub_1D5D04BC4(v11);
  }
}

uint64_t FormatBezierPathArcComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];

  sub_1D620B270(a1, a2, v6);
  if (v3)
  {
  }

  else
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v9);
    sub_1D620B270(a1, a2, v8);
    return sub_1D620B270(a1, a2, v10);
  }
}

uint64_t sub_1D624B190(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];

  sub_1D620B270(a1, a2, v6);
  if (v3)
  {
  }

  else
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v9);
    sub_1D620B270(a1, a2, v8);
    return sub_1D620B270(a1, a2, v10);
  }
}

uint64_t FormatBezierPathComponent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 48);
  if (v11 > 2)
  {
    if (v11 == 3)
    {

      sub_1D620B270(v5, a2, v7);
      if (!v3)
      {
        sub_1D620B270(v5, a2, v6);

        sub_1D620B270(v5, a2, v8);
        sub_1D620B270(v5, a2, v9);
      }
    }

    else
    {
      if (v11 != 4)
      {
        return result;
      }

      sub_1D620B270(v5, a2, v7);
      if (!v3)
      {
        sub_1D620B270(v5, a2, v6);

        sub_1D620B270(v5, a2, v8);
        sub_1D620B270(v5, a2, v9);
        return sub_1D620B270(v5, a2, v10);
      }
    }
  }

  else if (*(v2 + 48) && v11 != 1)
  {
    return FormatBezierPathCurveComponent.bind(binder:context:)(result, a2);
  }

  else
  {
    result = sub_1D620B270(result, a2, *v2);
    if (!v3)
    {
      return sub_1D620B270(v5, a2, v6);
    }
  }

  return result;
}

uint64_t FormatBezierPathCurveComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];

  sub_1D620B270(a1, a2, v6);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v9);

    sub_1D620B270(a1, a2, v10);
    sub_1D620B270(a1, a2, v11);
  }
}

uint64_t FormatBezierPathQuadCurveComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];

  sub_1D620B270(a1, a2, v6);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v9);
  }
}

uint64_t sub_1D624B750(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];

  sub_1D620B270(a1, a2, v6);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v9);
  }
}

uint64_t FormatBoolBinding.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (v3 >> 12)) & 0x1D7) == 0)
  {
    if (v3 >> 12 == 3)
    {
      if ((v3 & 0x80) == 0 || ((v3 >> 7) & 0x1E | (v3 >> 5) & 1) != 8)
      {
        return result;
      }

      v4 = result;
      v5 = a2;
    }

    else
    {
      if ((v3 & 0x80) == 0)
      {
        return result;
      }

      v4 = result;
      v5 = a2;
    }

    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, v5, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

uint64_t sub_1D624B9EC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (v3 >> 12)) & 0x1D7) == 0)
  {
    if (v3 >> 12 == 3)
    {
      if ((v3 & 0x80) == 0 || ((v3 >> 7) & 0x1E | (v3 >> 5) & 1) != 8)
      {
        return result;
      }
    }

    else if ((v3 & 0x80) == 0)
    {
      return result;
    }

    return sub_1D6240020(result, a2, *v2, v3 & 0x3F);
  }

  return result;
}

unint64_t FormatBindingDateTimeExpression.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *v2 >> 62;
  if ((v9 - 2) >= 2)
  {
    if (v9)
    {
      v15 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);

      sub_1D5F33D5C(v16);
      sub_1D620B270(v5, a2, v17);
      if (v3)
      {

        return sub_1D5F33D8C(v16);
      }

      sub_1D5F33D5C(v16);
      FormatDateTime.bind(binder:context:)(v5, a2);
      sub_1D5F33D8C(v16);

      result = sub_1D5F33D8C(v16);
    }

    else
    {
      v26 = v2[1];
      v22 = *(v6 + 16);
      v23 = *(v6 + 24);
      v24 = *(v6 + 32);
      v25 = *(v6 + 40);
      sub_1D5D27950(v22, v23, v24, v25);
      sub_1D6D9914C(a2);
      result = sub_1D5D28C84(v22, v23, v24, v25);
      if (v3)
      {
        return result;
      }

      v7 = v26;
    }
  }

  if ((v7 & 0xFE) == 0xC)
  {
    return result;
  }

  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      return result;
    }

    if (v8 == 0xC000000000000000)
    {
      v18 = v7;
      v19 = 0xC000000000000000;
    }

    else if (v8 == 0xC000000000000008)
    {
      v18 = v7;
      v19 = 0xC000000000000008;
    }

    else
    {
      v19 = 0xC000000000000010;
      v18 = v7;
    }
  }

  else
  {
    if (v10)
    {
      v21 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D620757C(v7, v8);

      sub_1D5F33D5C(v20);
      sub_1D620B270(v5, a2, v21);
      if (!v3)
      {
        sub_1D5F33D5C(v20);
        FormatDateTime.bind(binder:context:)(v5, a2);
        sub_1D5F33D8C(v20);
      }

      sub_1D5F33D8C(v20);
    }

    else
    {
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      sub_1D620757C(v7, v8);
      sub_1D5D27950(v11, v12, v13, v14);
      sub_1D6D9914C(a2);
      sub_1D5D28C84(v11, v12, v13, v14);
    }

    v18 = v7;
    v19 = v8;
  }

  return sub_1D6207594(v18, v19);
}

unint64_t FormatDateTime.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if ((v5 - 2) >= 2)
  {
    if (v5)
    {
      v7 = result;
      v8 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      sub_1D5F33D5C(v9);
      sub_1D620B270(v7, a2, v10);
      if (!v3)
      {
        sub_1D5F33D5C(v9);
        FormatDateTime.bind(binder:context:)(v7, a2);
        sub_1D5F33D8C(v9);
      }

      return sub_1D5F33D8C(v9);
    }

    else
    {
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = *(v4 + 40);
      sub_1D5D27950(v11, v12, v13, v14);
      sub_1D6D9914C(a2);
      return sub_1D5D28C84(v11, v12, v13, v14);
    }
  }

  return result;
}

unint64_t FormatBindingDateTimeExpressionLogic.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {
    v4 = v2[1];
    if ((v4 >> 62) - 2 >= 2)
    {
      if (v4 >> 62)
      {
        v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        v9 = result;

        sub_1D5F33D5C(v7);
        sub_1D620B270(v9, a2, v8);
        if (!v3)
        {
          sub_1D5F33D5C(v7);
          FormatDateTime.bind(binder:context:)(v9, a2);
          sub_1D5F33D8C(v7);
        }

        return sub_1D5F33D8C(v7);
      }

      else
      {
        v10 = *(v4 + 16);
        v11 = *(v4 + 24);
        v12 = *(v4 + 32);
        v13 = *(v4 + 40);
        sub_1D5D27950(v10, v11, v12, v13);
        sub_1D6D9914C(a2);
        return sub_1D5D28C84(v10, v11, v12, v13);
      }
    }
  }

  return result;
}

unint64_t FormatBindingDateTimeExpressionLogicCompare.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = *(v2 + 8);
  if ((v4 >> 62) - 2 >= 2)
  {
    if (v4 >> 62)
    {
      v6 = result;
      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);

      sub_1D5F33D5C(v8);
      sub_1D620B270(v6, a2, v9);
      if (!v3)
      {
        sub_1D5F33D5C(v8);
        FormatDateTime.bind(binder:context:)(v6, a2);
        sub_1D5F33D8C(v8);
      }

      return sub_1D5F33D8C(v8);
    }

    else
    {
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v13 = *(v4 + 40);
      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6D9914C(a2);
      return sub_1D5D28C84(v10, v11, v12, v13);
    }
  }

  return result;
}

unint64_t sub_1D624C110(unint64_t result, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {
    v5 = v2[1];
    v3 = result;
    sub_1D5F33D5C(v5);
    FormatDateTime.bind(binder:context:)(v3, a2);
    return sub_1D5F33D8C(v5);
  }

  return result;
}

unint64_t sub_1D624C18C(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  sub_1D5F33D5C(v6);
  FormatDateTime.bind(binder:context:)(a1, a2);
  return sub_1D5F33D8C(v6);
}

__n128 FormatBindingExpression.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v38 = v2[4];
  result.n128_u64[0] = v38;
  v39[0] = v5;
  *(v39 + 11) = *(v2 + 91);
  v6 = v2[1];
  v35[0] = *v2;
  v35[1] = v6;
  v7 = v2[3];
  v36 = v2[2];
  v37 = v7;
  v40 = v35[0];
  v41 = v6;
  v42 = v36;
  *v43 = v7;
  *&v43[16] = v38;
  *&v43[32] = v5;
  *&v43[43] = *(v39 + 11);
  v8 = (*(&v39[1] + 7) >> 8);
  v9 = (BYTE10(v39[1]) >> 1) & 8 | (v8 >> 13);
  if (v9 > 4)
  {
    if (v9 > 6)
    {
      if (v9 == 7 && (BYTE8(v40) & 0xFE) != 0xCLL)
      {
        *&v30 = v41;
        sub_1D62B50D4(*(&v35[0] + 1));
        FormatFloat.bind(binder:context:)(a1, a2);
      }
    }

    else if (v9 == 5)
    {
      v26 = v40;
      *&v27 = v41;
      BYTE8(v27) = BYTE8(v41);
      sub_1D62B48E4(v35, &v30);
      sub_1D6089844(a2);
      sub_1D5D28C84(v26, *(&v26 + 1), v27, SBYTE8(v27));
    }

    else
    {
      v30 = v40;
      *&v31 = v41;
      FormatBindingDateTimeExpression.bind(binder:context:)(a1, a2);
    }
  }

  else if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        *&v43[56] = v8 & 0x1FFF;
        v43[58] = ((v8 | (BYTE10(v39[1]) << 16)) & 0xEF1FFF) >> 16;
        v10 = v2[1];
        v26 = *v2;
        v27 = v10;
        v28 = v2[2];
        v29 = *(v2 + 24);
        sub_1D5FD78CC(&v40, &v30);
        v13 = a2;
        FormatTextNodeBinding.bind(binder:context:)(a1, a2);
        if (v3)
        {
          v30 = v26;
          v31 = v27;
          v32 = v28;
          v33 = v29;
          sub_1D5FD7B18(&v30);
        }

        else
        {
          v22 = *&v43[8];
          v23 = *&v43[24];
          v18 = *&v43[40];
          v17 = *&v43[48];
          v19 = v43[58];
          v20 = *&v43[56];
          v24[0] = v26;
          v24[1] = v27;
          v24[2] = v28;
          v25 = v29;
          sub_1D5FD7B18(v24);
          if ((v19 >> 5) > 4u)
          {
            v21 = v20 & 0xFF00FFFF | (v19 << 16);
            if (v19 >> 5 == 5)
            {
              v30 = v22;
              v31 = v23;
              *&v32 = v18;
              *(&v32 + 1) = v17;
              v33 = v21;
              v34 = BYTE2(v21) & 0x1F;
              sub_1D5CA8444(v22, *(&v22 + 1), v23, *(&v23 + 1), v18, v17, v21);
              FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(a1, v13);
              sub_1D5CA8488(v22, *(&v22 + 1), v23, *(&v23 + 1), v18, v17, v21);
            }

            else
            {
              return v23;
            }
          }
        }
      }

      else
      {
        *&v30 = v40;
        WORD4(v30) = WORD4(v40);
        FormatBoolBinding.bind(binder:context:)(a1, a2);
      }
    }

    else
    {
      v30 = v40;
      v31 = v41;
      *&v32 = v42;
      WORD4(v32) = WORD4(v42);
      FormatBindingImageExpression.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

void FormatBindingImageExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatOption();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  v20 = *v2;
  v19 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  v24 = *(v2 + 40);
  v25 = (v24 >> 1) & 0xF;
  if (v25 <= 3)
  {
    if (v25 < 2)
    {
      return;
    }

    if (v25 != 2)
    {
      goto LABEL_18;
    }

    v26 = v24 >> 5;
    if (v24 >> 5 > 3)
    {
      if (v24 >> 5 > 5)
      {
        if (v26 == 6)
        {
          goto LABEL_5;
        }

        return;
      }

LABEL_18:
      v31 = (v19 >> 59) & 2 | (v19 >> 2) & 1;
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          return;
        }

        v32 = *(v2 + 16);
        v33 = *(v2 + 24);
      }

      else
      {
        v32 = *(v2 + 16);
        v33 = *(v2 + 24);
        if (!v31)
        {
          v74 = *(v2 + 8);

          FormatFont.bind(binder:context:)(a1, a2);
          v34 = v3;
          if (!v3)
          {
LABEL_21:

            sub_1D620B270(a1, a2, v32);
            if (!v34)
            {

              sub_1D620B270(a1, a2, v33);
            }

            return;
          }

LABEL_27:

          return;
        }
      }

      v74 = v19 & 0xEFFFFFFFFFFFFFFBLL;

      FormatFont.bind(binder:context:)(a1, a2);
      v34 = v3;
      if (!v3)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v24 >> 5 <= 1)
    {
      if (!v26)
      {
        return;
      }

      goto LABEL_18;
    }

    if (v26 == 2 || BYTE1(v21) > 2u)
    {
      return;
    }

    if (BYTE1(v21))
    {
      if (BYTE1(v21) != 1)
      {
        sub_1D620B270(a1, a2, *v2);
        return;
      }

      if (!v19)
      {
        return;
      }

      v35 = *(v2 + 40);
      v36 = v19;
      v37 = v21;
      v38 = v22;
      v39 = v23;
      v40 = v20;
      sub_1D62B4D50(v20, v19, v21, v22, v23, v24 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
      sub_1D620B270(a1, a2, v36);
      v41 = v40;
      v42 = v36;
      v43 = v37;
      v44 = v38;
      v45 = v39;
      v46 = v35;
      goto LABEL_51;
    }

    if ((v20 >> 61) > 2)
    {
      LODWORD(v71) = *(v2 + 40);
      if (v20 >> 61 != 3)
      {
        v64 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v80[0] = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v80[1] = v64;
        v81 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v65 = v19;
        v66 = v21;
        v67 = v22;
        v68 = v23;
        v69 = v20;
        sub_1D62B4B68(v20, v19, v21, v22, v23, v24);
        sub_1D62B50EC(v80, &v74, sub_1D62B5154);
        sub_1D6250408(a1, a2);
        sub_1D62B51D0(v80, sub_1D62B5154);
        v41 = v69;
        v42 = v65;
        v43 = v66;
        v44 = v67;
        v45 = v68;
LABEL_50:
        v46 = v71;
LABEL_51:
        sub_1D62B4C5C(v41, v42, v43, v44, v45, v46);
        return;
      }

      v57 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v58 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v59 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v60 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v73 = v3;
      v74 = v57;
      v75 = v58;
      v76 = v59;
      LOBYTE(v77) = v60;
      v61 = v19;
      v62 = v21;
      v63 = v22;
      v70 = v23;
      v72 = v20;
      sub_1D62B4B68(v20, v19, v21, v22, v23, v24);
      sub_1D5F58038(v57, v58, v59, v60);
      sub_1D607B228(a2);
      sub_1D5F57FEC(v57, v58, v59, v60);
      v41 = v72;
      v42 = v61;
      v43 = v62;
      v44 = v63;
    }

    else
    {
      if ((v20 >> 61) < 2)
      {
        return;
      }

      v74 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v54 = v19;
      v55 = v21;
      v56 = v22;
      v70 = v23;
      LODWORD(v71) = v24;
      v72 = v20;
      sub_1D62B4B68(v20, v19, v21, v22, v23, v24);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);

      v41 = v72;
      v42 = v54;
      v43 = v55;
      v44 = v56;
    }

    v45 = v70;
    goto LABEL_50;
  }

  if (((v24 >> 1) & 0xF) >= 7)
  {
    if (v25 == 7)
    {
      v74 = *v2;
      v75 = v19;
      v76 = v21;
      v82 = 8;
      v27 = v19;
      v28 = v20;
      sub_1D62B4B68(v20, v19, v21, v22, v23, v24);
      v29 = sub_1D703E0C8(&v74, &v82);
      v73 = v3;
      if (!v3)
      {
        v30 = v29;
        v71 = v27;
        v72 = v28;
        FormatOptionCollection.subscript.getter(v28, v27, v14);
        if ((*(v7 + 48))(v14, 1, v6) == 1)
        {

          sub_1D5B6EF64(v14, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(a2 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError();
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            swift_allocError();
            v47 = v71;
            *v48 = v72;
            v48[1] = v47;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          (*(v7 + 56))(v18, 1, 1, v6);
        }

        else
        {
          sub_1D5D5E33C(v14, v10, type metadata accessor for FormatOption);
          v74 = v10[2];

          FormatOptionValue.type.getter(&v82);
          if ((sub_1D6183C84(v82, v30) & 1) == 0)
          {
            type metadata accessor for FormatDerivedDataError();
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v50 = v49;
            v51 = *v10;
            v52 = v10[1];
            v74 = v10[2];

            FormatOptionValue.type.getter(&v82);
            v53 = v82;
            *v50 = v51;
            *(v50 + 8) = v52;
            *(v50 + 16) = v53;
            *(v50 + 24) = v30;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B51D0(v10, type metadata accessor for FormatOption);
            return;
          }

          swift_bridgeObjectRelease_n();
          sub_1D5D5E33C(v10, v18, type metadata accessor for FormatOption);
          (*(v7 + 56))(v18, 0, 1, v6);
        }

        sub_1D5B6EF64(v18, &qword_1EDF337F0, type metadata accessor for FormatOption);
      }
    }

    else if (v25 == 8)
    {
LABEL_5:
      v74 = *v2;
      v75 = v19;
      v76 = v21;
      v77 = v22;
      v78 = v23;
      v79 = v24 & 1;
      FormatSportsEventBinding.Image.bind(binder:context:)(a1, a2);
    }
  }
}

uint64_t FormatBindingTextExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  v28[0] = *v2;
  v28[1] = v6;
  v8 = *v2;
  v7 = v2[1];
  v28[2] = v2[2];
  v29 = *(v2 + 24);
  v15 = *(v2 + 56);
  v16 = *(v2 + 72);
  v9 = *(v2 + 11);
  v10 = *(v2 + 12);
  v11 = *(v2 + 106);
  v12 = *(v2 + 52);
  v24 = v8;
  v25 = v7;
  v26 = v2[2];
  v27 = *(v2 + 24);
  sub_1D5FD78CC(v28, &v17);
  FormatTextNodeBinding.bind(binder:context:)(a1, a2);
  if (v3)
  {
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    return sub_1D5FD7B18(&v17);
  }

  else
  {
    v14 = v12 | (v11 << 16);
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v23 = v27;
    result = sub_1D5FD7B18(v22);
    if (((v14 >> 21) & 7) == 5)
    {
      v17 = v15;
      v18 = v16;
      *&v19 = v9;
      *(&v19 + 1) = v10;
      v20 = v14;
      v21 = BYTE2(v14) & 0x1F;
      sub_1D5CA8444(v15, *(&v15 + 1), v16, *(&v16 + 1), v9, v10, v14);
      FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(a1, a2);
      return sub_1D5CA8488(v15, *(&v15 + 1), v16, *(&v16 + 1), v9, v10, v14);
    }
  }

  return result;
}

uint64_t FormatBindingURLExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  sub_1D5D27950(*v2, v6, v7, v8);
  sub_1D6089844(a2);
  return sub_1D5D28C84(v5, v6, v7, v8);
}

uint64_t FormatBindingFloatExpression.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xFE) != 0xC)
  {
    v4 = result;
    sub_1D62B50D4(v3);
    sub_1D62B50D4(v3);
    FormatFloat.bind(binder:context:)(v4, a2);
    sub_1D62B5230(v3);
  }

  return result;
}

uint64_t FormatBindingFloatExpressionLogic.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {
    v3 = result;

    FormatFloat.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t sub_1D624D188(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xFE) != 0xC)
  {
    v4 = result;
    sub_1D62B50D4(v3);
    sub_1D62B50D4(v3);
    FormatFloat.bind(binder:context:)(v4, a2);
    sub_1D62B5230(v3);
  }

  return result;
}

uint64_t FormatBindingFloatExpressionLogicCompare.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatFloat.bind(binder:context:)(a1, a2);
}

uint64_t sub_1D624D28C(uint64_t result, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {
    v3 = result;

    FormatFloat.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t sub_1D624D2FC(uint64_t a1, uint64_t a2)
{

  FormatFloat.bind(binder:context:)(a1, a2);
}

uint64_t sub_1D624D35C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  sub_1D62B4B68(*v2, v7, v8, v9, v10, v11);
  FormatImageNodeBinding.bind(binder:context:)(a1, a2);
  return sub_1D62B4C5C(v6, v7, v8, v9, v10, v11);
}

void FormatBindingTextExpressionLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 50) >> 5;
  if (v3 >= 5 && v3 == 5)
  {
    FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(a1, a2);
  }
}

void FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v4 = type metadata accessor for FormatOption();
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  v16 = v2[1];
  v48 = *v2;
  v49 = v16;
  v51 = *(v2 + 24);
  v50 = v2[2];
  v18 = *(&v48 + 1);
  v17 = v48;
  v19 = v16;
  v20 = v51;
  v21 = ((2 * HIBYTE(v51)) | ((v51 & 8) != 0));
  if (v21 > 0xE)
  {
    goto LABEL_11;
  }

  if (((1 << v21) & 0x6FE0) != 0)
  {
    return;
  }

  if (((1 << v21) & 0x18) == 0)
  {
    if (v21 == 12)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v21 < 2)
    {
      return;
    }

    goto LABEL_12;
  }

  v46 = v48;
  v47 = v16;
  v52 = 5;
  sub_1D5FD78CC(&v48, &v43);

  v22 = sub_1D703E0C8(&v46, &v52);
  v39 = v3;
  if (v3)
  {

    return;
  }

  v38 = v22;
  v26 = v41;
  FormatOptionCollection.subscript.getter(v17, v18, v11);
  if ((*(v42 + 48))(v11, 1, v4) == 1)
  {

    sub_1D5B6EF64(v11, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if ((*(v26 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v30 = v17;
      v30[1] = v18;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    v27 = 1;
  }

  else
  {
    sub_1D5D5E33C(v11, v7, type metadata accessor for FormatOption);
    *&v43 = v7[2];
    v28 = v38;

    FormatOptionValue.type.getter(&v46);
    if ((sub_1D6183C84(v46, v28) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError();
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      v39 = swift_allocError();
      v32 = v31;
      v33 = v28;
      v34 = *v7;
      v35 = v7[1];
      *&v43 = v7[2];

      FormatOptionValue.type.getter(&v46);
      v36 = v46;
      *v32 = v34;
      *(v32 + 8) = v35;
      *(v32 + 16) = v36;
      *(v32 + 24) = v33;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B51D0(v7, type metadata accessor for FormatOption);
      return;
    }

    swift_bridgeObjectRelease_n();
    sub_1D5D5E33C(v7, v15, type metadata accessor for FormatOption);
    v27 = 0;
  }

  (*(v42 + 56))(v15, v27, 1, v4);
  sub_1D5B6EF64(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
  v18 = *(&v48 + 1);
  v20 = v51;
  v29 = ((2 * HIBYTE(v51)) | ((v51 & 8) != 0));
  if (((1 << v29) & 0x6FFB) == 0)
  {
    if (v29 == 2)
    {
      v19 = v49;
      v17 = v48;
LABEL_12:
      v25 = v20 >> 4;
      if (((1 << v25) & 0x1EF7) != 0)
      {
        return;
      }

      if (v25 == 3)
      {
        *&v43 = v17;
        *(&v43 + 1) = v18;
        LOWORD(v44) = v19;
        sub_1D62B416C(v41);
        return;
      }
    }

LABEL_8:
    if ((v18 & 0x80) != 0)
    {
      LOBYTE(v46) = v18 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v23 = *(&v44 + 1);
        v24 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        (*(v24 + 8))(v40, v41, v23, v24);
        __swift_destroy_boxed_opaque_existential_1(&v43);
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        sub_1D5BFB774(&v43, &qword_1EDF329A0, &qword_1EDF329A8);
      }
    }
  }
}

uint64_t sub_1D624DAA8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 50) >> 5;
  if (v3 >= 5 && v3 == 5)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(v2 + 32);
    v8 = *(v2 + 48) | (*(v2 + 50) << 16);
    *&v13 = *v2;
    *(&v13 + 1) = v5;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17[0] = v13;
    v17[1] = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = BYTE2(v8) & 0x1F;
    v9 = result;
    sub_1D6157520(v17, v11);
    FormatTextNodeBinding.bind(binder:context:)(v9, a2);
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v12 = v16;
    return sub_1D5FD7B18(v11);
  }

  return result;
}

uint64_t sub_1D624DB7C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v15[0] = *v2;
  v15[1] = v5;
  v7 = *v2;
  v6 = v2[1];
  v15[2] = v2[2];
  v16 = *(v2 + 24);
  v11 = v7;
  v12 = v6;
  v13 = v2[2];
  v14 = *(v2 + 24);
  sub_1D5FD78CC(v15, v9);
  FormatTextNodeBinding.bind(binder:context:)(a1, a2);
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  return sub_1D5FD7B18(v9);
}

uint64_t sub_1D624DC2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  sub_1D5D27950(*v2, v6, v7, v8);
  sub_1D6089844(a2);
  return sub_1D5D28C84(v5, v6, v7, v8);
}

uint64_t FormatBlock.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 40);

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v2 + 32);

    sub_1D6215F90(a1, a2, v8);
  }

  return result;
}

uint64_t sub_1D624DD6C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  swift_beginAccess();
  v7 = *(v6 + 40);

  sub_1D6213004(a1, a2, v7);

  if (!v3)
  {
    swift_beginAccess();
    v9 = *(v6 + 32);

    sub_1D6215F90(a1, a2, v9);
  }

  return result;
}

uint64_t FormatBlockNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);

  sub_1D6213004(a1, a2, v5);
}

uint64_t FormatGroupBinding.Bool.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0 && ((2 * *(v2 + 9)) | ((v3 & 0x20) != 0)) == 8)
  {
    v4 = result;
    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, a2, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

uint64_t FormatBorder.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatFloat.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatBreakpointNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = *(v2 + 144);
  v25 = *(v2 + 128);
  v26 = v6;
  v7 = *(v2 + 80);
  v22[0] = *(v2 + 64);
  v22[1] = v7;
  v8 = *(v2 + 112);
  v10 = *(v2 + 64);
  v9 = *(v2 + 80);
  v23 = *(v2 + 96);
  v24 = v8;
  v11 = *(v2 + 144);
  v19 = v25;
  v20 = v11;
  v15 = v10;
  v16 = v9;
  v27 = *(v2 + 160);
  v21 = *(v2 + 160);
  v17 = v23;
  v18 = v5;
  sub_1D5C5C4CC(v22, v13);
  FormatSourceMapNode.bind(binder:context:)(a1, a2);
  v13[4] = v19;
  v13[5] = v20;
  v14 = v21;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  return sub_1D5C5C540(v13);
}

uint64_t FormatBundleImageSize.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 16) && *(v2 + 16) != 1)
  {
    v5 = *(v2 + 8);
    v6 = a1;
    v7 = a2;
    result = sub_1D620B270(a1, a2, v4);
    if (v3)
    {
      return result;
    }

    a1 = v6;
    a2 = v7;
    v4 = v5;
  }

  return sub_1D620B270(a1, a2, v4);
}

uint64_t sub_1D624E1D8(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (*(v2 + 48) > 1u)
  {
    if (*(v2 + 48) != 2)
    {
      return result;
    }

    sub_1D5E433E0(*(v2 + 32), *(v2 + 40), 2u);
    sub_1D620B270(v5, a2, v7);
    if (v3)
    {
      return sub_1D5E4342C(v7, v6, 2u);
    }

    sub_1D620B270(v5, a2, v6);
    v10 = v7;
    v11 = v6;
    v12 = 2;
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    if (*(v2 + 48))
    {
      sub_1D5E433E0(v8, v9, 1u);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 1;
    }

    else
    {
      sub_1D5E433E0(v8, v9, 0);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 0;
    }
  }

  return sub_1D5E4342C(v10, v11, v12);
}

uint64_t sub_1D624E31C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 16) && *(v2 + 16) != 1)
  {
    v5 = *(v2 + 8);
    v6 = a1;
    v7 = a2;
    result = sub_1D620B270(a1, a2, v4);
    if (v3)
    {
      return result;
    }

    a1 = v6;
    a2 = v7;
    v4 = v5;
  }

  return sub_1D620B270(a1, a2, v4);
}

unint64_t FormatButtonNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v18 = *(v2 + 32);
  sub_1D5C82CD8(v18);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v18);
  }

  sub_1D5C92A8C(v18);
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D620EA64(a1, a2, v8);

  swift_beginAccess();
  v9 = v4[8];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[8]);
    sub_1D5EB1500(v10);

    sub_1D624919C(a1, a2, v10, v11);
    sub_1D5EB15C4(v10);

    sub_1D5EB15C4(v9);
  }

  FormatButtonNodeAction.bind(binder:context:)(a1, a2);

  if ((~v4[13] & 0xF000000000000007) != 0)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  if ((~v4[14] & 0xF000000000000007) != 0)
  {

    FormatButtonNodeAction.bind(binder:context:)(a1, a2);
  }

  if ((~v4[15] & 0xF000000000000007) != 0)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  v12 = v4[18];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (v13)
    {

      sub_1D621397C(a1, a2, v13);
    }

    swift_beginAccess();
    v14 = *(v12 + 88);

    sub_1D621D544(a1, a2, v14);
  }

  swift_beginAccess();
  v15 = v4[23];

  sub_1D6230F7C(a1, a2, v15);

  if (v4[24])
  {
    v16 = v4[28];

    sub_1D5DEA234(v16);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v16);
  }

  swift_beginAccess();
  v17 = v4[10];

  sub_1D6215F90(a1, a2, v17);
}

void FormatButtonNodeAction.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *v2 >> 60;
  if (v11 <= 5)
  {
    if (v11 > 2)
    {
      if (v11 == 3 || v11 != 4)
      {
        return;
      }

      v25 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      sub_1D6247B08(a1, a2, v26, v27);
    }

    else
    {
      if (v11)
      {
        if (v11 != 1)
        {
          v56 = swift_projectBox();
          sub_1D62B50EC(v56, v9, type metadata accessor for FormatCommandOpenURL);
          sub_1D5F86DA0(a2);
          sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
          return;
        }

        v12 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *(v12 + 32);
        v65 = *(v12 + 16);
        v66 = v13;
        v14 = *(v12 + 48);
        *&v67[15] = *(v12 + 63);
        *v67 = v14;
        v15 = v65;
        if (v67[18])
        {
          v16 = 8;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 & 0xFFFFFFF8 | (*&v67[16] >> 11) & 7;
        if (v17 > 4)
        {
          if (v17 <= 6)
          {
            if (v17 == 5)
            {
              return;
            }

            if (BYTE8(v13) >> 6 && BYTE8(v13) >> 6 != 1)
            {
              if ((BYTE8(v13) & 0x3Fu) > 1)
              {
                if ((BYTE8(v13) & 0x3F) == 2)
                {
                  return;
                }

                goto LABEL_70;
              }

              if ((BYTE8(v13) & 0x3F) == 0)
              {
                goto LABEL_70;
              }

              if ((~*(&v65 + 1) & 0xF000000000000007) == 0)
              {
                return;
              }

              *&v59 = *(&v65 + 1);

              sub_1D62B5248(&v65, v63);
              sub_1D5CFCFAC(*(&v15 + 1));
              FormatTextContent.bind(binder:context:)(a1, a2);
            }

            else
            {
              v18 = v13;
              if (v13 > 1u)
              {
                goto LABEL_59;
              }

              if (!v13)
              {
                goto LABEL_70;
              }

              if ((~v65 & 0xF000000000000007) == 0)
              {
                return;
              }

              *&v59 = v65;

              sub_1D62B5248(&v65, v63);
              sub_1D5CFCFAC(v15);
              FormatTextContent.bind(binder:context:)(a1, a2);
            }
          }

          else
          {
            if (v17 != 7)
            {
              return;
            }

            v59 = v65;
            v60 = v13;
            v61 = *v67;
            v62 = *&v67[16] & 0xC7FF;

            sub_1D62B5248(&v65, v63);
            FormatString.bind(binder:context:)(a1, a2);
          }
        }

        else
        {
          if (v17 > 1)
          {
            if (v17 != 3)
            {
              return;
            }

            goto LABEL_11;
          }

          if (v17)
          {
            return;
          }

          v57 = (DWORD2(v13) >> 3) & 7;
          if (v57 <= 1)
          {
            if (v57)
            {
              goto LABEL_70;
            }

LABEL_11:
            v18 = v13;
            if (v13 <= 1u)
            {
              if (v13)
              {
                if ((~v65 & 0xF000000000000007) != 0)
                {
                  *&v59 = v65;

                  sub_1D62B5248(&v65, v63);
                  sub_1D5CFCFAC(v15);
                  FormatTextContent.bind(binder:context:)(a1, a2);
                  sub_1D5D085FC(&v65);
                }

                return;
              }

LABEL_70:
              sub_1D5D085FC(&v65);
              return;
            }

LABEL_59:
            if (v18 == 2)
            {
              return;
            }

            goto LABEL_70;
          }

          if (v57 == 2 || v57 == 3)
          {
            goto LABEL_11;
          }

          v59 = v65;
          *&v60 = v13;
          BYTE8(v60) = BYTE8(v13) & 0xC7;

          sub_1D62B5248(&v65, v63);
          FormatSportsEventBinding.Command.bind(binder:context:)(a1, a2);
        }

        sub_1D5D085FC(&v65);

        return;
      }

      v43 = *(v10 + 16);
      v44 = *(v10 + 24);
      if (v43)
      {
        v45 = *(v43 + 16);

        if (v45)
        {
          v46 = 0;
          while (v46 < *(v43 + 16))
          {
            v47 = *(v43 + 8 * v46 + 32);

            sub_1D625C2EC(a1, a2, v47);
            if (v3)
            {

              return;
            }

            if (v45 == ++v46)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
          return;
        }
      }

      else
      {
      }

LABEL_41:
      if (v44)
      {
        sub_1D6223ECC(a1, a2, v44);
      }
    }

    return;
  }

  if (v11 > 8)
  {
    if (v11 == 9)
    {
      v48 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v49 = *(v48 + 16);
      v50 = *(v48 + 24);
      v69 = a2;
      v51 = *(v48 + 32);
      v52 = *(v48 + 40);
      v58 = a1;
      v54 = *(v48 + 48);
      v53 = *(v48 + 56);
      v55 = *(v48 + 64);
      *&v65 = v49;
      *(&v65 + 1) = v50;
      *&v66 = v51;
      *(&v66 + 1) = v52;
      *v67 = v54;
      *&v67[8] = v53;
      *&v67[16] = v55;
      sub_1D5E1DA6C(v49, v50, v51, v52, v54, v53, v55);
      FormatDismissAction.bind(binder:context:)(v58, v69);
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      v41 = v53;
      v42 = v55;
    }

    else
    {
      if (v11 != 10)
      {
        return;
      }

      v28 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      v69 = a2;
      v33 = *(v28 + 48);
      v34 = *(v28 + 56);
      v58 = a1;
      v35 = *(v28 + 64);
      *&v65 = v29;
      *(&v65 + 1) = v30;
      *&v66 = v31;
      *(&v66 + 1) = v32;
      *v67 = v33;
      *&v67[8] = v34;
      *&v67[16] = v35;
      sub_1D5E1DA6C(v29, v30, v31, v32, v33, v34, v35);
      FormatString.bind(binder:context:)(v58, v69);
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v35;
    }

    sub_1D5E1DE98(v36, v37, v38, v39, v40, v41, v42);
    return;
  }

  if ((v11 - 7) >= 2)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFLL;
    v20 = *(v19 + 48);
    v66 = *(v19 + 32);
    *v67 = v20;
    *&v67[16] = *(v19 + 64);
    v68 = *(v19 + 80);
    v21 = *(v19 + 32);
    v65 = *(v19 + 16);
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v63[1] = v21;
    v63[2] = v22;
    v63[3] = v23;
    v64 = *(v19 + 80);
    v63[0] = *(v19 + 16);
    sub_1D614F7FC(&v65, &v59);
    FormatPurchaseAction.bind(binder:context:)(a1, a2);
    sub_1D614F7CC(&v65);
  }
}

unint64_t FormatTextContent.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 > 4)
  {
    v10 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v18 = *(v10 + 24);
        *&v30 = *(v10 + 16);
        *(&v30 + 1) = v18;

        FormatTextNodeLink.bind(binder:context:)(v5, a2);
      }

      if (v7 == 8)
      {
        v11 = *(v10 + 24);
        v13 = *(v10 + 32);
        v12 = *(v10 + 40);
        *&v30 = *(v10 + 16);
        sub_1D5F33D5C(v30);
        sub_1D5E1DC5C(v11, v13, v12);
        sub_1D5F33D5C(v30);
        FormatDateTime.bind(binder:context:)(v5, a2);
        sub_1D5F33D8C(v30);
        sub_1D5E1E088(v11, v13, v12);
        return sub_1D5F33D8C(v30);
      }

      v19 = *(v10 + 24);
      *&v30 = *(v10 + 16);
      swift_retain_n();

      FormatTextContent.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        sub_1D623CFF4(v5, a2, v19, FormatTextContent.bind(binder:context:));
        goto LABEL_24;
      }

LABEL_16:
    }

    if (v7 == 5)
    {
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);

      sub_1D6248794(v5, a2, v16, v17, FormatTextContent.bind(binder:context:));
    }

    v23 = *(v10 + 112);
    v35 = *(v10 + 96);
    v36 = v23;
    v37 = *(v10 + 128);
    v38 = *(v10 + 144);
    v24 = *(v10 + 48);
    v31 = *(v10 + 32);
    v32 = v24;
    v25 = *(v10 + 80);
    v33 = *(v10 + 64);
    v34 = v25;
    v30 = *(v10 + 16);
    v26 = v30;
    if (BYTE8(v30))
    {
      if (BYTE8(v30) != 1)
      {
        return sub_1D62B52A4(&v30);
      }

      sub_1D62B52F8(&v30, v28);
      sub_1D62B41FC(a2, v26);
    }

    else
    {
      sub_1D62B52F8(&v30, v28);
      sub_1D620B270(v5, a2, v26);
    }

    return sub_1D62B52A4(&v30);
  }

  else
  {
    if (v7 <= 2)
    {
      if ((v7 - 1) >= 2)
      {
        v8 = *(v6 + 32);
        v30 = *(v6 + 16);
        v31 = v8;
        v32 = *(v6 + 48);
        LOWORD(v33) = *(v6 + 64);
        v9 = *(v6 + 32);
        v28[0] = *(v6 + 16);
        v28[1] = v9;
        v28[2] = *(v6 + 48);
        v29 = *(v6 + 64);
        sub_1D5FD78CC(&v30, v27);
        FormatTextNodeBinding.bind(binder:context:)(v5, a2);
        return sub_1D5FD7B18(&v30);
      }

      return result;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 3)
    {
      v15 = *(v14 + 24);
      *&v30 = *(v14 + 16);
      swift_retain_n();

      FormatTextContent.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        sub_1D623CEAC(v5, a2, v15);
LABEL_24:
      }

      goto LABEL_16;
    }

    v20 = *(v14 + 32);
    v21 = *(v14 + 40);
    v22 = *(v14 + 48);
    *&v30 = *(v14 + 16);

    sub_1D5C75A4C(v20, v21, v22);

    FormatSyncImageContent.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }

    else
    {

      sub_1D5C75A4C(v20, v21, v22);
      sub_1D60ECF10(a2);
      sub_1D5D2F2C8(v20, v21, v22);
    }

    return sub_1D5D2F2C8(v20, v21, v22);
  }
}

void FormatMenu.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  if (*v2 && (v8 = *(v7 + 16)) != 0)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v7 + 32 + 8 * v9);

      sub_1D625C2EC(a1, a2, v10);

      if (v3)
      {
        return;
      }

      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    if (v6)
    {
      sub_1D6223ECC(a1, a2, v6);
    }
  }
}

uint64_t FormatCommand.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v34[0] = *(*v2 + 16);
  v34[1] = v5;
  v6 = *(v4 + 48);
  LODWORD(v4) = *(v4 + 63);
  *(&v35[1] + 7) = v4;
  *v35 = v6;
  v8 = *(&v34[0] + 1);
  result = *&v34[0];
  v9 = (v4 >> 8);
  if ((v4 & 0x1000000) != 0)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFF8 | (v9 >> 11) & 7;
  if (v11 > 3)
  {
    if (((1 << v11) & 0x330) != 0)
    {
      return result;
    }

    if (v11 != 6)
    {
      v31[0] = v34[0];
      v31[1] = v5;
      v31[2] = *v35;
      v32 = v9 & 0xC7FF;
      sub_1D5E1DA6C(*&v34[0], *(&v34[0] + 1), v5, *(&v5 + 1), v35[0], v35[1], v9 & 0xC7FF);
      FormatString.bind(binder:context:)(a1, a2);
      return sub_1D5D085FC(v34);
    }

    if (!(BYTE8(v5) >> 6) || BYTE8(v5) >> 6 == 1)
    {
LABEL_9:
      v12 = v5;
      if (v5 <= 1u)
      {
        if (v5)
        {
          if ((~*&v34[0] & 0xF000000000000007) == 0)
          {
            return result;
          }

          v33 = *&v34[0];
          v13 = *&v34[0];
          v14 = a1;
          sub_1D62B5248(v34, v31);
          sub_1D5CFCFAC(v13);
          FormatTextContent.bind(binder:context:)(v14, a2);
LABEL_36:

          return sub_1D5D085FC(v34);
        }

        return sub_1D5D085FC(v34);
      }

LABEL_52:
      if (v12 == 2)
      {
        return result;
      }

      return sub_1D5D085FC(v34);
    }

    v23 = BYTE8(v5) & 0x3F;
    if (v23 <= 1)
    {
LABEL_33:
      if (v23)
      {
        if ((~*(&v34[0] + 1) & 0xF000000000000007) == 0)
        {
          return result;
        }

        v33 = *(&v34[0] + 1);
        sub_1D62B5248(v34, v31);
        sub_1D5CFCFAC(v8);
        FormatTextContent.bind(binder:context:)(a1, a2);
        goto LABEL_36;
      }

      return sub_1D5D085FC(v34);
    }

LABEL_44:
    if (v23 == 2)
    {
      return result;
    }

    return sub_1D5D085FC(v34);
  }

  if ((v11 - 1) < 2)
  {
    return result;
  }

  if (v11)
  {
    v12 = v5;
    if (v5 > 1u)
    {
      goto LABEL_52;
    }

    if (!v5)
    {
      return sub_1D5D085FC(v34);
    }

    if ((~*&v34[0] & 0xF000000000000007) == 0)
    {
      return result;
    }

    v33 = *&v34[0];
    v18 = *&v34[0];
    v19 = a1;
    sub_1D62B5248(v34, v31);
    sub_1D5CFCFAC(v18);
    FormatTextContent.bind(binder:context:)(v19, a2);
    sub_1D5D085FC(v34);
  }

  v16 = (DWORD2(v5) >> 3) & 7;
  if (v16 <= 1)
  {
    if (v16)
    {
      return sub_1D5D085FC(v34);
    }

    if (v5 > 1u)
    {
      if (v5 == 2)
      {
        return result;
      }

      return sub_1D5D085FC(v34);
    }

    if (!v5)
    {
      return sub_1D5D085FC(v34);
    }

    if ((~*&v34[0] & 0xF000000000000007) == 0)
    {
      return result;
    }

    v33 = *&v34[0];
    v21 = *&v34[0];
    sub_1D62B5248(v34, v31);
    sub_1D5CFCFAC(v21);
    FormatTextContent.bind(binder:context:)(a1, a2);
    sub_1D5D085FC(v34);
  }

  if (v16 == 2)
  {
    v12 = v5;
    if (v5 > 1u)
    {
      goto LABEL_52;
    }

    if (!v5)
    {
      return sub_1D5D085FC(v34);
    }

    goto LABEL_39;
  }

  if (v16 == 3)
  {
    v12 = v5;
    if (v5 > 1u)
    {
      goto LABEL_52;
    }

    if (!v5)
    {
      return sub_1D5D085FC(v34);
    }

LABEL_39:
    if ((~*&v34[0] & 0xF000000000000007) != 0)
    {
      v33 = *&v34[0];
      v25 = *&v34[0];
      v26 = a1;
      sub_1D62B5248(v34, v31);
      sub_1D5CFCFAC(v25);
      FormatTextContent.bind(binder:context:)(v26, a2);
      sub_1D5D085FC(v34);
    }

    return result;
  }

  if (BYTE8(v5) >> 6)
  {
    if (BYTE8(v5) >> 6 == 1)
    {
      goto LABEL_9;
    }

    v23 = BYTE8(v5) & 7;
    if (v23 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  v12 = v5;
  if (v5 > 1u)
  {
    goto LABEL_52;
  }

  if (!v5)
  {
    return sub_1D5D085FC(v34);
  }

  if ((~*&v34[0] & 0xF000000000000007) != 0)
  {
    v33 = *&v34[0];
    v28 = *&v34[0];
    v29 = a1;
    sub_1D62B5248(v34, v31);
    sub_1D5CFCFAC(v28);
    FormatTextContent.bind(binder:context:)(v29, a2);

    return sub_1D5D085FC(v34);
  }

  return result;
}

unint64_t FormatPurchaseAction.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = v2[1];
  v27 = *v2;
  v28 = v4;
  v5 = v2[3];
  v29 = v2[2];
  v30 = v5;
  v31 = *(v2 + 64);
  if (v31 > 1u)
  {
    if (v31 == 2)
    {
      v22 = v27;
      *&v23 = v28;
      return FormatOsloSheetPurchaseDataModel.bind(binder:context:)(result, a2);
    }
  }

  else if (v31)
  {
    if ((*(&v30 + 1) & 0xF000000000000007) != 0x3000000000000007)
    {
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v7 = v2[3];
      v24 = v2[2];
      v25 = v7;
      v26 = *(v2 + 64);
      v8 = v2[1];
      v22 = *v2;
      v23 = v8;
      v9 = result;
      sub_1D62B5354(&v22, v17, &qword_1EDF24810, &type metadata for FormatPurchaseLandingPage);
      FormatPurchaseLandingPage.bind(binder:context:)(v9, a2);
      v17[0] = v18;
      v17[1] = v19;
      v17[2] = v20;
      v17[3] = v21;
      return sub_1D614F778(v17);
    }
  }

  else
  {
    if ((v27 & 0xF000000000000007) == 0x7000000000000007)
    {
      return result;
    }

    v6 = (v27 >> 57) & 0x78 | v27 & 7;
    if (v6 == 95)
    {
      return sub_1D614F7CC(&v27);
    }

    if (v6 == 127)
    {
      return sub_1D614F7CC(&v27);
    }

    if ((v27 >> 62) >= 2)
    {
      if (v27 >> 62 == 2)
      {
        v13 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v14 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v12 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v18 + 1) = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v19 = v13;
        BYTE8(v19) = v14;
        sub_1D614F7FC(&v27, &v22);
        sub_1D5D27950(v12, *(&v18 + 1), v13, v14);
        sub_1D6089844(a2);
        sub_1D5D28C84(v12, *(&v18 + 1), v13, v14);
      }

      else
      {
        v15 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v18 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v16 = result;
        sub_1D614F7FC(&v27, &v22);
        swift_retain_n();

        FormatURL.bind(binder:context:)(v16, a2);
        if (v3)
        {

          return sub_1D614F7CC(&v27);
        }

        sub_1D620FAB4(v16, a2, v15);
        swift_bridgeObjectRelease_n();
      }

      return sub_1D614F7CC(&v27);
    }
  }

  return result;
}

void FormatDismissAction.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *(v2 + 48);
  if (v17 >> 14)
  {
    v18 = a1;
    v44 = v6;
    v45 = v5;
    v43 = v9;
    v19 = *v2;
    v20 = *(v2 + 8);
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);
    v24 = *(v2 + 32);
    v23 = *(v2 + 40);
    if (v17 >> 14 == 1)
    {
      v42 = &v42 - v16;
      v48 = v19;
      v49 = v20;
      v50 = v21;
      LOBYTE(v46[0]) = 5;
      v25 = v19;
      sub_1D5E1DA6C(v19, v20, v21, v22, v24, v23, v17);
      v26 = v55;
      v27 = sub_1D703E0C8(&v48, v46);
      if (!v26)
      {
        v28 = v27;
        v55 = 0;
        FormatOptionCollection.subscript.getter(v25, v20, v13);
        v30 = v44;
        v29 = v45;
        if ((*(v44 + 48))(v13, 1, v45) == 1)
        {

          sub_1D5B6EF64(v13, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(a2 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError();
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            swift_allocError();
            *v36 = v25;
            v36[1] = v20;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          v31 = 1;
          v32 = v42;
        }

        else
        {
          v35 = v43;
          sub_1D5D5E33C(v13, v43, type metadata accessor for FormatOption);
          v48 = v35[2];

          FormatOptionValue.type.getter(v46);
          if ((sub_1D6183C84(v46[0], v28) & 1) == 0)
          {
            type metadata accessor for FormatDerivedDataError();
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v38 = v37;
            v40 = *v35;
            v39 = v35[1];
            v48 = v35[2];

            FormatOptionValue.type.getter(v46);
            v41 = v46[0];
            *v38 = v40;
            *(v38 + 8) = v39;
            *(v38 + 16) = v41;
            *(v38 + 24) = v28;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B51D0(v35, type metadata accessor for FormatOption);
            return;
          }

          swift_bridgeObjectRelease_n();
          v32 = v42;
          sub_1D5D5E33C(v35, v42, type metadata accessor for FormatOption);
          v31 = 0;
        }

        (*(v30 + 56))(v32, v31, 1, v29);
        sub_1D5B6EF64(v32, &qword_1EDF337F0, type metadata accessor for FormatOption);
      }
    }

    else
    {
      v48 = *v2;
      v49 = v20;
      v50 = v21;
      v51 = v22;
      v52 = v24;
      v53 = v23;
      v54 = v17 & 0x3FFF;
      v45 = v19;
      v33 = v18;
      v34 = v55;
      FormatTextNodeBinding.bind(binder:context:)(v18, a2);
      if (!v34)
      {
        v46[0] = v45;
        v46[1] = v20;
        v46[2] = v21;
        v46[3] = v22;
        v46[4] = v24;
        v46[5] = v23;
        v47 = v17 & 0x3FFF;
        FormatTextNodeBinding.bind(binder:context:)(v33, a2);
      }
    }
  }
}

void FormatCellSelection.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (!*(v2 + 56))
  {
    v8 = *(v2 + 48);
    if ((v8 & 0xF000000000000007) == 0xD000000000000007)
    {
      return;
    }

    v10 = *(v2 + 8);
    v9 = *(v2 + 16);
    v12 = *(v2 + 24);
    v11 = *(v2 + 32);
    v13 = *(v2 + 40);
    if ((~v4 & 0xF000000000000007) != 0)
    {
      sub_1D62B54E4(v4, v10, v9, v12, v11, v13, v8, 0);
      sub_1D5CFCFAC(v4);
      FormatColor.bind(binder:context:)(a1, a2);

      if (v3)
      {
        v14 = v4;
        v15 = v10;
        v16 = v9;
        v17 = v12;
        v18 = v11;
        v19 = v13;
        goto LABEL_15;
      }

      v20 = v10;
      v21 = v9;
      v22 = v12;
      v23 = v11;
    }

    else
    {
      v20 = v10;
      v21 = v9;
      v22 = v12;
      v23 = v11;
      sub_1D62B545C(v4, v10, v9, v12, v11, v13, v8, sub_1D5CFCFAC, sub_1D5D04BD4);
    }

    if ((v8 & 0xF000000000000007) != 0xF000000000000007)
    {

      FormatFloat.bind(binder:context:)(a1, a2);

      sub_1D62B53F0(v4, v20, v21, v22, v23, v13, v8, 0);
      return;
    }

    v14 = v4;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v13;
LABEL_15:
    sub_1D62B53F0(v14, v15, v16, v17, v18, v19, v8, 0);
    return;
  }

  if (*(v2 + 56) == 1 && (~v4 & 0xD000000000000007) != 0)
  {
    sub_1D62B53D4(v4);
    FormatFloat.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatCellSelection.Background.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = v2[6];
  if ((~*v2 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v5, a2), result = , !v3))
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {

      FormatFloat.bind(binder:context:)(v5, a2);
    }
  }

  return result;
}

uint64_t FormatCellSelection.DimContent.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatFloat.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t sub_1D625035C(uint64_t result, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v3 = result;

    FormatFloat.bind(binder:context:)(v3, a2);
  }

  return result;
}

uint64_t sub_1D6250408(uint64_t a1, uint64_t a2)
{
  v26[0] = *v2;
  v6 = v26[0];
  *(v26 + 9) = *(v2 + 9);
  *v24 = v6;
  *&v24[9] = *(v26 + 9);
  sub_1D62B745C(v26, v25);
  sub_1D607B228(a2);
  if (v3)
  {
    v8 = *&v24[8];
    v7 = *v24;
    v9 = *&v24[16];
    v10 = v24[24];
    return sub_1D5F57FEC(v7, v8, v9, v10);
  }

  result = sub_1D5F57FEC(*v24, *&v24[8], *&v24[16], v24[24]);
  v12 = *(v2 + 32);
  v13 = v12 >> 61;
  if ((v12 >> 61) > 2)
  {
    v18 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 != 3)
    {
      v22 = *(v18 + 32);
      v27[0] = *(v18 + 16);
      v27[1] = v22;
      v28 = *(v18 + 48);
      sub_1D62B50EC(v27, v24, sub_1D62B5154);
      sub_1D6250408(a1, a2);
      return sub_1D62B51D0(v27, sub_1D62B5154);
    }

    v19 = *(v18 + 24);
    v20 = *(v18 + 32);
    v21 = *(v18 + 40);
    *v24 = *(v18 + 16);
    *&v24[8] = v19;
    *&v24[16] = v20;
    v24[24] = v21;
    sub_1D5F58038(*v24, v19, v20, v21);
    sub_1D607B228(a2);
    v7 = *v24;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    return sub_1D5F57FEC(v7, v8, v9, v10);
  }

  if ((v12 >> 61) >= 2)
  {
    v14 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    if ((v14 >> 62) >= 2)
    {
      if (v14 >> 62 == 2)
      {
        v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v17 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        *&v24[8] = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v24[16] = v16;
        v24[24] = v17;

        swift_retain_n();
        sub_1D5D27950(v15, *&v24[8], v16, v17);
        sub_1D6089844(a2);

        sub_1D5D28C84(v15, *&v24[8], v16, v17);
      }

      else
      {
        v23 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *v24 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        FormatURL.bind(binder:context:)(a1, a2);

        sub_1D620FAB4(a1, a2, v23);

        swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t sub_1D6250710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{

  a5(a1, a2);

  if (!v5)
  {

    a5(a1, a2);
  }

  return result;
}

uint64_t sub_1D62507BC(uint64_t a1, uint64_t a2)
{
  v10[0] = *v2;
  v6 = v10[0];
  *(v10 + 9) = *(v2 + 9);
  *v9 = v6;
  *&v9[9] = *(v10 + 9);
  sub_1D62B7FB4(v10, v8);
  FormatColorBinding.bind(binder:context:)(a1, a2);
  result = sub_1D5F57FEC(*v9, *&v9[8], *&v9[16], v9[24]);
  if (!v3)
  {
    v11 = *(v2 + 32);
    *v9 = v11;
    sub_1D62B8010(&v11, v8);
    FormatColor.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D625088C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_retain_n();

  FormatColor.bind(binder:context:)(a1, a2);
  if (v4)
  {
  }

  else
  {

    sub_1D620B334(a1, a2, a4);

    FormatColor.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatUnboundValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  v8 = *(a3 + 24);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  (*(v17 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12, v15);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v28 = v4;
    v18 = v7;
    v19 = v6;
    v20 = *(&v31 + 1);
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v22 = v33;
    (*(v21 + 8))(v18, v19, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_1(&v30);
    if (v22)
    {
      return result;
    }

    v33 = 0;
    v6 = v19;
    v7 = v18;
    v4 = v28;
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1D5BFB774(&v30, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  (*(v29 + 16))(v10, v4 + *(a3 + 52), v8);
  if (swift_dynamicCast())
  {
    v24 = v7;
    v25 = v6;
    v26 = *(&v31 + 1);
    v27 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    (*(v27 + 8))(v24, v25, v26, v27);
    return __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    return sub_1D5BFB774(&v30, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t FormatColorBinding.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  if (((1 << v4) & 0xCF) == 0 && (v4 != 4 || (v3 >> 7) >= 6u) && (v3 & 0xC0) == 0x80)
  {
    v5 = result;
    v12 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v7 = *(&v10 + 1);
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
      (*(v8 + 8))(v5, a2, v7, v8);
      return __swift_destroy_boxed_opaque_existential_1(&v9);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

uint64_t FormatGroupBinding.Color.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (2 * (*(v2 + 9) & 0x7Fu) >= 6)
  {
    v3 = *(v2 + 8);
    if ((v3 & 0xC0) == 0x80)
    {
      v4 = result;
      v11 = v3 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v6 = *(&v9 + 1);
        v7 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v7 + 8))(v4, a2, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }

      else
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
        return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
      }
    }
  }

  return result;
}

uint64_t FormatSportsEventBinding.Color.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xC0) == 0x80)
  {
    v4 = result;
    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, a2, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

uint64_t FormatColorBlendProcessor.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);
}

uint64_t sub_1D6251060(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);
}

uint64_t FormatColorColorExpression.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v2)
  {
    return FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }

  return result;
}

unint64_t FormatColorConditionalProcessor.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  result = FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v3)
  {
    return sub_1D620B334(a1, a2, v6);
  }

  return result;
}

unint64_t sub_1D625119C(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  result = FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v3)
  {
    return sub_1D620B334(a1, a2, v6);
  }

  return result;
}

uint64_t FormatColorExpression.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2 >> 61;
  if (v6 <= 1)
  {

    FormatColorExpression.bindChildren(binder:context:)(v5, a2);
    if (!v3)
    {
      FormatColorExpression.bindChildren(binder:context:)(v5, a2);
    }
  }

  else if (v6 == 2)
  {

    FormatColorExpression.bindChildren(binder:context:)(v5, a2);
  }

  else
  {
    if (v6 == 3)
    {
      return result;
    }

    swift_retain_n();
    FormatColor.bind(binder:context:)(v5, a2);
    if (v3)
    {
    }

    FormatColorExpression.bindChildren(binder:context:)(v5, a2);
  }
}

uint64_t sub_1D62513B4(uint64_t a1, uint64_t a2)
{
  result = FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v2)
  {
    return FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatColorProcessor.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2 >> 61;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return result;
    }

    v7 = *((*v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    FormatColorExpression.bindChildren(binder:context:)(v5, a2);
    if (!v3)
    {
      sub_1D620B334(v5, a2, v7);
    }
  }

  if (v6 == 3)
  {

    FormatColor.bind(binder:context:)(v5, a2);
  }

  if (v6 == 4)
  {
    swift_retain_n();
    FormatColor.bind(binder:context:)(v5, a2);
  }

  return result;
}

uint64_t FormatColumnRowSpan.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  sub_1D620B270(a1, a2, v5);
}

uint64_t sub_1D62515AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  sub_1D620B270(a1, a2, v5);
}

void FormatCommandBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[3];
  if (*(v2 + 50))
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFF8 | (*(v2 + 24) >> 11) & 7;
  if (v6 <= 3)
  {
    if ((v6 - 1) >= 2)
    {
      if (!v6)
      {
        FormatGroupBinding.Command.bind(binder:context:)(a1, a2);
        return;
      }

      if (v2[2] == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (((1 << v6) & 0x330) != 0)
    {
      return;
    }

    if (v6 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (!(v4 >> 6) || v4 >> 6 == 1)
    {
      if (v2[2] != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
      {
        return;
      }

LABEL_20:

      FormatTextContent.bind(binder:context:)(a1, a2);

      return;
    }

    if ((v4 & 0x3F) == 1 && (v2[1] & 0xF000000000000007) != 0xF000000000000007)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_1D6251798(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 63);
  v15[1] = *(*v2 + 32);
  v16[0] = v7;
  *(v16 + 15) = v8;
  v15[0] = v6;
  v9 = *(v5 + 32);
  v12 = *(v5 + 16);
  v13 = v9;
  v14[0] = *(v5 + 48);
  *(v14 + 15) = *(v5 + 63);
  sub_1D62B5248(v15, v11);
  FormatCommandBinding.bind(binder:context:)(a1, a2);
  return sub_1D5D085FC(v15);
}

uint64_t sub_1D6251838(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    v6 = result;
    if (v4)
    {
      if (v4 == 1)
      {
        v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v20[0] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v20[1] = v7;
        v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v20[2] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v20[3] = v8;
        v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v19[4] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v19[5] = v9;
        v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v19[6] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v19[7] = v10;
        sub_1D62B6004(v20, v19);
        FormatMenuGroupData.bind(binder:context:)(v6, a2);
        return sub_1D62B6060(v20);
      }

      v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *(v17 + 24);

      sub_1D621DA6C(v6, a2, v18);
      if (!v3)
      {
        sub_1D6251838(v6, a2, *(v17 + 32));
      }
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v13 = *(a3 + 32);
    v14 = *(a3 + 40);
    v15 = *(a3 + 48);
    if (v13)
    {
      v21 = *(a3 + 32);
      v16 = *(v12 + 24);
      sub_1D5F26358(v12, v11, 1);
      sub_1D62B5FC8(v14, v15);

      sub_1D621E2E4(v6, a2, v16);
      if (v3)
      {
        sub_1D5F26348(v12, v11, 1);
        sub_1D5FC4E9C(v14, v15);
      }

      sub_1D6251BE4(v6, a2);
      v13 = v21;
      if (!v15)
      {
LABEL_18:
        sub_1D5F26348(v12, v11, v13);
        sub_1D5FC4E9C(v14, 0);
      }
    }

    else
    {
      sub_1D5F26358(*(a3 + 16), *(a3 + 24), 0);
      sub_1D62B5FC8(v14, v15);

      if (!v15)
      {
        goto LABEL_18;
      }
    }

    sub_1D621E140(v6, a2, *(v14 + 24));
    if (!v3)
    {
      sub_1D6251AD4(v6, a2, *(v14 + 32));
    }

    sub_1D5F26348(v12, v11, v13);
    sub_1D5FC4E9C(v14, 1);
  }

  return result;
}

uint64_t sub_1D6251AD4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D62B7E2C();
  sub_1D5B49474(0, &qword_1EDF329A8);
  v6 = a3;
  if (swift_dynamicCast())
  {
    v7 = *(&v11 + 1);
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v8 + 8))(a1, a2, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1D5BFB774(&v10, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t sub_1D6251BE4(uint64_t a1, uint64_t a2)
{
  sub_1D5B49474(0, &qword_1EDF329A8);

  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 8))(a1, a2, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_1D5BFB774(&v7, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t sub_1D6251CF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v5 = result;
    v6 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *(v6 + 24);

    sub_1D6220CF8(v5, a2, v7);
    if (!v3)
    {
      sub_1D6251CF0(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

uint64_t sub_1D6251DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v9 + 28), v6, v7);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v11 = *(&v15 + 1);
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t FormatGroupBinding.Command.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = (v5 >> 3) & 7;
  if (v6 <= 1)
  {
    v7 = v3 & 0xF000000000000007;
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 == 1;
    }
  }

  else
  {
    if (v6 != 2 && v6 != 3)
    {
      if (v5 >> 6 > 1)
      {
        if ((v5 & 7) != 1)
        {
          return result;
        }

        v3 = v2[1];
      }

      else if (v4 != 1)
      {
        return result;
      }

      if ((v3 & 0xF000000000000007) == 0xF000000000000007)
      {
        return result;
      }

      goto LABEL_19;
    }

    v7 = v3 & 0xF000000000000007;
    v8 = v4 == 1;
  }

  if (v8 && v7 != 0xF000000000000007)
  {
LABEL_19:
    v10 = result;

    FormatTextContent.bind(binder:context:)(v10, a2);
  }

  return result;
}

uint64_t FormatTagBinding.Command.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {
    v4 = result;

    FormatTextContent.bind(binder:context:)(v4, a2);
  }

  return result;
}

uint64_t FormatSportsEventBinding.Command.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 >> 6 > 1)
  {
    v6 = v3 & 0x3F;
    v4 = *(v2 + 8) & 0xF000000000000007;
    v5 = v6 == 1;
  }

  else
  {
    v4 = *v2 & 0xF000000000000007;
    v5 = *(v2 + 16) == 1;
  }

  if (v5 && v4 != 0xF000000000000007)
  {
    v8 = result;

    FormatTextContent.bind(binder:context:)(v8, a2);
  }

  return result;
}

uint64_t sub_1D62521C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v9 + 44), v6, v7);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v11 = *(&v15 + 1);
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

void FormatCustomItemDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D62B50EC(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for FormatPropertyDefinition);
      FormatPropertyDefinition.bind(binder:context:)(a1, a2);
      if (v3)
      {
        sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v13;
      sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D62524D0(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D62B50EC(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for FormatPropertyDefinition);
      FormatPropertyDefinition.bind(binder:context:)(a1, a2);
      if (v3)
      {
        sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v13;
      sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

void FormatCustomNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v18 = v2[7];
  sub_1D5C82CD8(v18);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v18);
  }

  else
  {
    sub_1D5C92A8C(v18);
    swift_beginAccess();
    v7 = v2[9];

    sub_1D620EA64(a1, a2, v7);

    v8 = v4[10];
    if (v8)
    {
      v9 = *(v8 + 56);
      if (v9)
      {
        sub_1D6213004(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 64);

      sub_1D621A990(a1, a2, v10);
    }

    v11 = v4[11];
    if (v11)
    {
      swift_beginAccess();
      v12 = *(v11 + 72);
      if (v12)
      {

        sub_1D621397C(a1, a2, v12);
      }

      swift_beginAccess();
      v13 = *(v11 + 88);

      sub_1D621D544(a1, a2, v13);
    }

    swift_beginAccess();
    v14 = v4[13];
    if (v14 >> 62 == 1)
    {
      v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[13]);
      sub_1D5EB1500(v15);

      sub_1D624919C(a1, a2, v15, v16);
      sub_1D5EB15C4(v15);

      sub_1D5EB15C4(v14);
    }

    if (v4[15])
    {
      v17 = v4[19];

      sub_1D5DEA234(v17);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v17);
    }
  }
}

void FormatCustomNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  if (!v6 || (sub_1D6213004(a1, a2, v6), !v3))
  {
    swift_beginAccess();
    v7 = *(v2 + 64);

    sub_1D621A990(a1, a2, v7);
  }
}

void sub_1D62529F8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v6 + 56);
  if (!v7 || (sub_1D6213004(a1, a2, v7), !v3))
  {
    swift_beginAccess();
    v8 = *(v6 + 64);

    sub_1D621A990(a1, a2, v8);
  }
}

void FormatCustomNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    sub_1D6213004(a1, a2, v3);
  }
}

void sub_1D6252AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    sub_1D6213004(a1, a2, v3);
  }
}

unint64_t FormatDateTimeOffset.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D5F33D5C(v6);
    FormatDateTime.bind(binder:context:)(a1, a2);
    return sub_1D5F33D8C(v6);
  }

  return result;
}

unint64_t sub_1D6252B60(unint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  result = sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D5F33D5C(v6);
    FormatDateTime.bind(binder:context:)(a1, a2);
    return sub_1D5F33D8C(v6);
  }

  return result;
}

unint64_t FormatDimensionSizing.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  sub_1D5D0A048(*v2);
  FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
  result = sub_1D5D09FB0(v7);
  if (!v3)
  {
    sub_1D5D0A048(v6);
    FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
    return sub_1D5D09FB0(v6);
  }

  return result;
}

unint64_t FormatDimensionSizingValue.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *v2 >> 61;
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      v5 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_11:
      v7 = *(v5 + 16);

      sub_1D620B270(v4, a2, v7);
    }

    if (v6 != 6)
    {
      return result;
    }

LABEL_10:
    v5 &= 0x1FFFFFFFFFFFFFFFuLL;
    goto LABEL_11;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6 != 2)
  {
    v8 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5D0A048(v8);
    FormatDimensionSizingValue.bind(binder:context:)(v4, a2);
    return sub_1D5D09FB0(v8);
  }

  return result;
}

uint64_t FormatDirectionalGradient.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v15[4] = v2[4];
  v15[5] = v6;
  v7 = v2[7];
  v15[6] = v2[6];
  v15[7] = v7;
  v8 = v2[1];
  v15[0] = *v2;
  v15[1] = v8;
  v9 = v2[3];
  v15[2] = v2[2];
  v15[3] = v9;
  v10 = sub_1D6011280(v15);
  v11 = sub_1D5D756C8(v15);
  if (v10 == 1)
  {
    return sub_1D6212DD8(a1, a2, v11[14]);
  }

  v14 = v11[6];
  v13 = v11[7];
  result = sub_1D6212DD8(a1, a2, *v11);
  if (!v3)
  {
    if (v14)
    {

      sub_1D620B270(a1, a2, v14);
      sub_1D620B270(a1, a2, v13);
      return sub_1D5CDE22C(v14);
    }
  }

  return result;
}

uint64_t sub_1D6252EB4(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v15[4] = v2[4];
  v15[5] = v6;
  v7 = v2[7];
  v15[6] = v2[6];
  v15[7] = v7;
  v8 = v2[1];
  v15[0] = *v2;
  v15[1] = v8;
  v9 = v2[3];
  v15[2] = v2[2];
  v15[3] = v9;
  v10 = sub_1D6011280(v15);
  v11 = sub_1D5D756C8(v15);
  if (v10 == 1)
  {
    return sub_1D6212DD8(a1, a2, v11[14]);
  }

  v14 = v11[6];
  v13 = v11[7];
  result = sub_1D6212DD8(a1, a2, *v11);
  if (!v3)
  {
    if (v14)
    {

      sub_1D620B270(a1, a2, v14);
      sub_1D620B270(a1, a2, v13);
      return sub_1D5CDE22C(v14);
    }
  }

  return result;
}

uint64_t sub_1D6252FC0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  sub_1D5E1DA6C(*v2, v7, v8, v9, v10, v11, v12);
  FormatString.bind(binder:context:)(a1, a2);
  return sub_1D5E1DE98(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t FormatEquationToken.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v6 + 32))(v12, v17, v5);
    (*(v6 + 16))(v8, v12, v5);
    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v21 = *(&v24 + 1);
      v22 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      (*(v22 + 8))(a1, a2, v21, v22);
      (*(v6 + 8))(v12, v5);
      return __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      (*(v6 + 8))(v12, v5);
      return sub_1D5BFB774(&v23, &qword_1EDF329A0, &qword_1EDF329A8);
    }
  }

  return result;
}

void FormatOptionExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatNotExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatExpression.bind(binder:context:)(a1, a2);
}

uint64_t FormatFrameExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  if (v9 >> 6 > 1)
  {

    sub_1D620B270(a1, a2, v7);
    if (!v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  else
  {

    sub_1D620B270(a1, a2, v7);
  }

  return sub_1D6057D74(v7, v6, v8, v9);
}

uint64_t FormatFill.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v15[4] = v2[4];
  v15[5] = v6;
  v7 = v2[7];
  v15[6] = v2[6];
  v15[7] = v7;
  v8 = v2[1];
  v15[0] = *v2;
  v15[1] = v8;
  v9 = v2[3];
  v15[2] = v2[2];
  v15[3] = v9;
  v10 = sub_1D5CFD35C(v15);
  v11 = sub_1D5CFD34C(v15);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      return sub_1D6212DD8(a1, a2, v11[14]);
    }

    else
    {
      return FormatShine.bind(binder:context:)(a1, a2);
    }
  }

  else if (v10)
  {
    v14 = v11[6];
    v13 = v11[7];
    result = sub_1D6212DD8(a1, a2, *v11);
    if (!v3 && v14)
    {

      sub_1D620B270(a1, a2, v14);
      sub_1D620B270(a1, a2, v13);
      return sub_1D5CDE22C(v14);
    }
  }

  else
  {

    FormatColor.bind(binder:context:)(a1, a2);

    if (!v3)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

unint64_t FormatFlexBoxNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v11 = v2[8];
  sub_1D5C82CD8(v11);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v11);
  if (!v3)
  {
    swift_beginAccess();
    v8 = v2[11];

    sub_1D620EA64(a1, a2, v8);

    swift_beginAccess();

    FormatFlexBoxNodeLayout.bind(binder:context:)(a1, a2);

    if (v4[13])
    {
      v9 = v4[17];

      sub_1D5DEA234(v9);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v9);
    }

    swift_beginAccess();
    v10 = v4[19];

    sub_1D6215F90(a1, a2, v10);
  }

  return result;
}

uint64_t FormatFlexBoxNodeLayout.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  sub_1D6249614(a1, a2, v7, v8);
  if (!v4)
  {

    swift_beginAccess();
    v9 = *(v2 + 40);
    v10 = *(v2 + 32);

    sub_1D62494F4(a1, a2, v10, v9);

    swift_beginAccess();
    v11 = *(v2 + 56);
    v12 = *(v2 + 48);

    sub_1D62494F4(a1, a2, v12, v11);

    swift_beginAccess();
    v13 = *(v2 + 72);
    v14 = *(v2 + 64);

    sub_1D62494F4(a1, a2, v14, v13);

    swift_beginAccess();
    v15 = *(v2 + 88);
    v16 = *(v2 + 80);

    sub_1D62494F4(a1, a2, v16, v15);

    swift_beginAccess();
    v17 = *(v2 + 104);
    v18 = *(v2 + 96);

    sub_1D62494F4(a1, a2, v18, v17);

    swift_beginAccess();
    v19 = *(v2 + 112);
    v20 = *(v2 + 120);

    sub_1D620B270(a1, a2, v19);
    sub_1D6230D00(a1, a2, v20);

    swift_beginAccess();
    v22 = *(v2 + 128);
    v23 = *(v2 + 136);

    sub_1D620B270(a1, a2, v22);
    sub_1D6230D00(a1, a2, v23);

    swift_beginAccess();
    v24 = *(v2 + 144);
    v25 = *(v2 + 152);
    v26 = *(v2 + 160);
    v27 = *(v2 + 168);
    sub_1D5C75A4C(v24, v25, v26);

    sub_1D5C75A4C(v24, v25, v26);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v24, v25, v26);
    sub_1D62B56CC(a2, v27);
    sub_1D5D2F2C8(v24, v25, v26);
  }
}