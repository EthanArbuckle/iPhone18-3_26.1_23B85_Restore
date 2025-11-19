uint64_t InfoPlist.asBinary()()
{
  sub_242F035B0();
  swift_allocObject();
  sub_242F035A0();
  sub_242F03580();
  sub_242C6D090();
  v0 = sub_242F03590();

  return v0;
}

unint64_t ArcPackage.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 80);
  __src[4] = *(v2 + 64);
  __src[5] = v6;
  __src[6] = *(v2 + 96);
  v7 = *(v2 + 16);
  __src[0] = *v2;
  __src[1] = v7;
  v8 = *(v2 + 32);
  __src[3] = *(v2 + 48);
  __src[2] = v8;
  v9 = *(v2 + 112);
  *&__src[7] = v9;
  __dst[0] = v4;
  __dst[1] = v5;
  result = ArcPackage.displayIndex(by:)(__dst);
  if (v11)
  {
    sub_242C6CE84(__src);
    return memcpy(a2, __src, 0x250uLL);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = v9 + 592 * result;
  memcpy(__dst, (v12 + 32), sizeof(__dst));
  memmove(__src, (v12 + 32), 0x250uLL);
  nullsub_2(__src);
  memcpy(a2, __src, 0x250uLL);
  return sub_242C6CDD4(__dst, &v13);
}

uint64_t sub_242E38098()
{
  sub_242F04DD0();
}

uint64_t sub_242E38208()
{
  sub_242F04DD0();
}

uint64_t sub_242E38354@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_242D37EE4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 592 * a1;
    memcpy(a2, (v9 + 32), 0x250uLL);
    result = memmove((v9 + 32), (v9 + 624), 592 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_242E383F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_242E384A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t static ArcPackage.from(json:)()
{
  sub_242F033D0();
  swift_allocObject();
  sub_242F033C0();
  sub_242E13B90();
  sub_242F033B0();
}

uint64_t ArcPackage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcPackage.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArcPackage.iOSContentVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcPackage.iOSContentVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArcPackage.partnerID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ArcPackage.partnerID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ArcPackage.minimumSDKVersion.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t ArcPackage.minimumSDKVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

CarPlayAssetUI::ArcPackage::BuildType_optional __swiftcall ArcPackage.BuildType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ArcPackage.BuildType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657361656C6572;
  }

  else
  {
    return 0x6775626564;
  }
}

uint64_t sub_242E38970(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657361656C6572;
  }

  else
  {
    v3 = 0x6775626564;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x657361656C6572;
  }

  else
  {
    v5 = 0x6775626564;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242E38A14()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242E38A94()
{
  sub_242F04DD0();
}

uint64_t sub_242E38B00()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242E38B7C@<X0>(char *a1@<X8>)
{
  v2 = sub_242F05CD0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_242E38BDC(uint64_t *a1@<X8>)
{
  v2 = 0x6775626564;
  if (*v1)
  {
    v2 = 0x657361656C6572;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ArcPackage.displays.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t ArcPackage.init(identifier:iOSContentVersion:version:minimumCompatibilityVersion:minimumSDKVersion:buildType:vehicleType:partnerID:displays:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *a10;
  v15 = *a11;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v14;
  *(a9 + 112) = a14;
  *(a9 + 48) = v15;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 32) = 2;
  *(a9 + 40) = a5;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 72) = a6;
  *(a9 + 80) = 2;
  return result;
}

uint64_t ArcPackage.addDisplay(type:manufacturerLogo:appleLogo:size:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v172 = a4;
  v214 = type metadata accessor for Zone();
  v184 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v213 = &v166[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v166[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v166[-v16];
  v18 = type metadata accessor for Layout();
  v195 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v166[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v211 = &v166[-v22];
  MEMORY[0x28223BE20](v23);
  v210 = &v166[-v24];
  v194 = type metadata accessor for LayoutTemplate();
  v207 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v196 = &v166[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v209 = &v166[-v27];
  v28 = *a1;
  v198 = v28;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = 0x8000000242F5C710;
      v30 = 0xD000000000000011;
    }

    else
    {
      v29 = 0x8000000242F5C6F0;
      v30 = 0xD000000000000019;
    }
  }

  else if (v28)
  {
    v29 = 0xEE0079616C707369;
    v30 = 0x445F7265746E6543;
  }

  else
  {
    v29 = 0xEF79616C70736944;
    v30 = 0x5F72657473756C43;
  }

  v188 = v29;
  v189 = v30;
  v212 = v20;
  v185 = v18;
  v186 = v17;
  v187 = v14;
  v31 = *a2;
  v176 = *(a2 + 8);
  v177 = v31;
  v32 = *(a2 + 16);
  v174 = *(a2 + 24);
  v175 = v32;
  v173 = *(a2 + 32);
  v33 = *(a2 + 40);
  v34 = *a3;
  v181 = *(a3 + 8);
  v182 = v34;
  v35 = *(a3 + 16);
  v179 = *(a3 + 24);
  v180 = v35;
  v178 = *(a3 + 32);
  v36 = *(a3 + 40);
  v170 = v33;
  v171 = v36;
  v37 = *(v183 + 112);
  v38 = *(v37 + 2);
  v199 = v37;
  if (v38)
  {
    v39 = 0;
    v40 = v37 + 32;
    v208 = v38;
    v205 = v38 - 1;
    v41 = MEMORY[0x277D84F90];
    v206 = v37 + 32;
LABEL_10:
    v42 = &v40[592 * v39];
    v43 = v39;
    while (1)
    {
      if (v43 >= *(v37 + 2))
      {
        goto LABEL_101;
      }

      memcpy(v227, v42, 0x250uLL);
      v44 = v43 + 1;
      v45 = 0x65676E6573736170;
      if (LOBYTE(v227[1]) != 2)
      {
        v45 = 0xD000000000000010;
      }

      v46 = 0xE900000000000072;
      if (LOBYTE(v227[1]) != 2)
      {
        v46 = 0x8000000242F583B0;
      }

      v47 = 0x6F437265746E6563;
      if (!LOBYTE(v227[1]))
      {
        v47 = 0x72657473756C63;
      }

      v48 = 0xED0000656C6F736ELL;
      if (!LOBYTE(v227[1]))
      {
        v48 = 0xE700000000000000;
      }

      if (LOBYTE(v227[1]) <= 1u)
      {
        v49 = v47;
      }

      else
      {
        v49 = v45;
      }

      if (LOBYTE(v227[1]) <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = v46;
      }

      if (v198 > 1)
      {
        if (v198 == 2)
        {
          v52 = 0x65676E6573736170;
        }

        else
        {
          v52 = 0xD000000000000010;
        }

        if (v198 == 2)
        {
          v51 = 0xE900000000000072;
        }

        else
        {
          v51 = 0x8000000242F583B0;
        }

        if (v49 != v52)
        {
          goto LABEL_40;
        }
      }

      else if (v198)
      {
        v51 = 0xED0000656C6F736ELL;
        if (v49 != 0x6F437265746E6563)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v51 = 0xE700000000000000;
        if (v49 != 0x72657473756C63)
        {
          goto LABEL_40;
        }
      }

      if (v50 == v51)
      {
        sub_242C6CDD4(v227, v225);

LABEL_44:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v224[0] = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BC90(0, *(v41 + 16) + 1, 1);
          v41 = v224[0];
        }

        v56 = *(v41 + 16);
        v55 = *(v41 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_242E3BC90((v55 > 1), v56 + 1, 1);
          v41 = v224[0];
        }

        v39 = v43 + 1;
        *(v41 + 16) = v56 + 1;
        memcpy((v41 + 592 * v56 + 32), v227, 0x250uLL);
        v40 = v206;
        v37 = v199;
        if (v205 != v43)
        {
          goto LABEL_10;
        }

        goto LABEL_51;
      }

LABEL_40:
      v53 = sub_242F06110();
      sub_242C6CDD4(v227, v225);

      if (v53)
      {
        goto LABEL_44;
      }

      sub_242C6CE30(v227);
      v42 += 592;
      ++v43;
      v37 = v199;
      if (v208 == v44)
      {
        goto LABEL_51;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_51:
  v57 = *(v41 + 16);

  if (v57)
  {
    *&v227[0] = v189;
    *(&v227[0] + 1) = v188;

    MEMORY[0x245D26660](95, 0xE100000000000000);
    *&v225[0] = v57;
    v58 = sub_242F05F60();
    MEMORY[0x245D26660](v58);

    v59 = *(&v227[0] + 1);
    v189 = *&v227[0];
  }

  else
  {
    v59 = v188;
  }

  v61 = v186;
  v60 = v187;
  v62 = v185;
  v63 = v196;
  v64 = v207;
  v65 = v199 + 40;
  v66 = *(v199 + 2) + 1;
  v67 = v189;
  while (--v66)
  {
    if (*(v65 - 1) != v67 || *v65 != v59)
    {
      v65 += 592;
      v69 = sub_242F06110();
      v67 = v189;
      if ((v69 & 1) == 0)
      {
        continue;
      }
    }

    *&v227[0] = v67;
    *(&v227[0] + 1) = v59;

    MEMORY[0x245D26660](95, 0xE100000000000000);
    LODWORD(v225[0]) = sub_242E3C03C(0x3E9uLL);
    v70 = sub_242F05F60();
    MEMORY[0x245D26660](v70);

    v59 = *(&v227[0] + 1);
    v189 = *&v227[0];
    break;
  }

  sub_242C7F6C4(v177, v176, v175, v174, v173);
  sub_242C7F6C4(v182, v181, v180, v179, v178);
  v71 = MEMORY[0x277D84F90];
  v72 = sub_242CE7DA0(MEMORY[0x277D84F90]);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  LOBYTE(v227[0]) = 1;
  memset(v224, 0, 72);
  sub_242C6D138(v224, &qword_27ECF95B0);
  v73 = sub_242CE7C6C(v71);
  v74 = LOBYTE(v227[0]);
  v75 = v198;
  if (v198 <= 1)
  {
    if (v198)
    {
      if (qword_27ECEF4F0 != -1)
      {
        v148 = v73;
        v149 = LOBYTE(v227[0]);
        swift_once();
        v74 = v149;
        v64 = v207;
        v73 = v148;
        v75 = v198;
      }

      v76 = &qword_27ECF58A0;
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  if (v198 != 2)
  {
LABEL_71:
    if (qword_27ECEF4E8 != -1)
    {
      v146 = v73;
      v147 = LOBYTE(v227[0]);
      swift_once();
      v74 = v147;
      v64 = v207;
      v73 = v146;
      v75 = v198;
    }

    v76 = &off_27ECF5898;
    goto LABEL_74;
  }

  if (qword_27ECEF4F8 != -1)
  {
    v150 = v73;
    v151 = LOBYTE(v227[0]);
    swift_once();
    v74 = v151;
    v64 = v207;
    v73 = v150;
    v75 = v198;
  }

  v76 = &qword_27ECF58A8;
LABEL_74:
  v77 = *v76;
  v193 = *(v77 + 16);
  if (!v193)
  {
    v81 = MEMORY[0x277D84F90];
LABEL_95:
    *&v227[0] = v189;
    *(&v227[0] + 1) = v59;
    LOBYTE(v227[1]) = v75;
    *(&v227[1] + 1) = v215[0];
    DWORD1(v227[1]) = *(v215 + 3);
    *(&v227[1] + 1) = v81;
    *&v227[2] = a5;
    *(&v227[2] + 1) = a6;
    *&v227[3] = 0x4063A00000000000;
    *(&v227[3] + 8) = 0u;
    *(&v227[4] + 8) = 0u;
    *(&v227[5] + 8) = xmmword_242F385A0;
    BYTE8(v227[6]) = 0;
    HIDWORD(v227[6]) = *&v223[3];
    *(&v227[6] + 9) = *v223;
    v227[7] = xmmword_242F3A470;
    memset(&v227[8], 0, 32);
    v227[10] = xmmword_242F385A0;
    LOBYTE(v227[11]) = 0;
    *(&v227[11] + 1) = *v222;
    DWORD1(v227[11]) = *&v222[3];
    *(&v227[11] + 8) = xmmword_242F3A480;
    *(&v227[12] + 8) = 0u;
    *(&v227[13] + 8) = 0u;
    *(&v227[14] + 8) = xmmword_242F385A0;
    BYTE8(v227[15]) = 0;
    HIDWORD(v227[15]) = *&v221[3];
    *(&v227[15] + 9) = *v221;
    v227[16] = xmmword_242F3A490;
    memset(&v227[17], 0, 32);
    v227[19] = xmmword_242F385A0;
    LOBYTE(v227[20]) = 0;
    *(&v227[20] + 1) = *v220;
    DWORD1(v227[20]) = *&v220[3];
    strcpy(&v227[20] + 8, "wheelOcclusion");
    BYTE7(v227[21]) = -18;
    *(&v227[21] + 1) = v177;
    *&v227[22] = v176;
    *(&v227[22] + 1) = v175;
    *&v227[23] = v174;
    BYTE8(v227[23]) = v173;
    *(&v227[23] + 9) = *v219;
    HIDWORD(v227[23]) = *&v219[3];
    *&v227[24] = v170;
    *(&v227[24] + 1) = v182;
    *&v227[25] = v181;
    *(&v227[25] + 1) = v180;
    *&v227[26] = v179;
    BYTE8(v227[26]) = v178;
    *(&v227[26] + 9) = *v218;
    HIDWORD(v227[26]) = *&v218[3];
    *&v227[27] = v171;
    DWORD2(v227[27]) = 33685504;
    v227[28] = v72;
    v227[29] = 0uLL;
    LOBYTE(v227[30]) = v74;
    *(&v227[30] + 1) = *v217;
    DWORD1(v227[30]) = *&v217[3];
    *(&v227[32] + 8) = 0u;
    *(&v227[33] + 8) = 0u;
    *(&v227[30] + 8) = 0u;
    *(&v227[31] + 8) = 0u;
    *(&v227[34] + 1) = 0;
    *&v227[35] = 1;
    *(&v227[35] + 1) = v73;
    v227[36] = xmmword_242F0B4A0;
    sub_242C6CDD4(v227, v225);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v140 = v199;
LABEL_97:
      v142 = *(v140 + 2);
      v141 = *(v140 + 3);
      if (v142 >= v141 >> 1)
      {
        v140 = sub_242C847D8((v141 > 1), v142 + 1, 1, v140);
      }

      *(v140 + 2) = v142 + 1;
      v143 = v140;
      memcpy(&v140[592 * v142 + 32], v227, 0x250uLL);
      *(v183 + 112) = v143;
      v144 = v227[0];

      sub_242C6CE30(v227);

      *v172 = v144;
      return result;
    }

LABEL_102:
    v140 = sub_242C847D8(0, *(v199 + 2) + 1, 1, v199);
    goto LABEL_97;
  }

  v167 = v74;
  v168 = v73;
  v169 = v72;
  v197 = v77;
  sub_242D7C5C8(v227);
  v78 = *(v64 + 80);
  v79 = *(v197 + 16);

  if (!v79)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v192 = v197 + ((v78 + 32) & ~v78);
  v191 = v64[9];
  v80 = 0;
  v81 = MEMORY[0x277D84F90];
  v188 = v59;
  while (1)
  {
    v207 = v81;
    v208 = v80;
    v82 = v209;
    sub_242E3C3C8(v192 + v191 * v80, v209, type metadata accessor for LayoutTemplate);
    sub_242E3C3C8(v82, v63, type metadata accessor for LayoutTemplate);
    sub_242F03710();
    if (qword_27ECEF030 != -1)
    {
      swift_once();
    }

    v83 = qword_27ECF2E30;
    sub_242CA321C(v61, v60, &qword_27ECF3028);
    v84 = &v63[*(v194 + 20)];
    v85 = *v84;
    v86 = v84[1];
    v201 = v83;
    *&v202 = v85;

    *(&v202 + 1) = v86;

    v87 = LayoutTemplate.scaledZones(for:)(a5, a6);
    v88 = v211;
    v89 = &v211[v62[7]];
    *v89 = 0;
    *(v89 + 1) = 0;
    v206 = v89;
    v90 = &v88[v62[10]];
    v91 = v227[7];
    *(v90 + 6) = v227[6];
    *(v90 + 7) = v91;
    v90[128] = v227[8];
    v92 = v227[3];
    *(v90 + 2) = v227[2];
    *(v90 + 3) = v92;
    v93 = v227[5];
    *(v90 + 4) = v227[4];
    *(v90 + 5) = v93;
    v94 = v227[1];
    *v90 = v227[0];
    *(v90 + 1) = v94;
    *(v90 + 17) = 2;
    v95 = &v88[v62[12]];
    *(v95 + 41) = 0u;
    *(v95 + 1) = 0u;
    *(v95 + 2) = 0u;
    *v95 = 0u;
    v205 = v95;
    *(v95 + 8) = 2;
    v96 = &v88[v62[13]];
    v97 = MEMORY[0x277D84F90];
    *v96 = MEMORY[0x277D84F90];
    v96[1] = 2;
    v203 = v96;
    v204 = v87;
    v98 = &v88[v62[14]];
    *v98 = v97;
    v98[1] = 2;
    v200 = v98;
    v99 = *(v87 + 16);
    v190 = v99;
    if (v99)
    {
      v100 = v87;
      *&v225[0] = v97;
      sub_242E3BC70(0, v99, 0);
      v97 = *&v225[0];
      v101 = v100 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
      v102 = *(v184 + 72);
      v103 = v99;
      do
      {
        v104 = v213;
        sub_242E3C3C8(v101, v213, type metadata accessor for Zone);
        v105 = &v104[*(v214 + 20)];
        v107 = *v105;
        v106 = v105[1];

        sub_242E3C430(v104, type metadata accessor for Zone);
        *&v225[0] = v97;
        v109 = *(v97 + 16);
        v108 = *(v97 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_242E3BC70((v108 > 1), v109 + 1, 1);
          v97 = *&v225[0];
        }

        *(v97 + 16) = v109 + 1;
        v110 = v97 + 16 * v109;
        *(v110 + 32) = v107;
        *(v110 + 40) = v106;
        v101 += v102;
        --v103;
      }

      while (v103);
      v60 = v187;
      v59 = v188;
      v62 = v185;
      v61 = v186;
    }

    v112 = sub_242C86440(v111);

    v113 = *(v112 + 16);

    v114 = *(v97 + 16);

    if (v113 != v114)
    {
      break;
    }

    sub_242C6D138(v61, &qword_27ECF3028);
    v63 = v196;
    sub_242E3C430(v196, type metadata accessor for LayoutTemplate);
    v115 = v60;
    v116 = v211;
    sub_242D7C5F8(v60, v211);
    v117 = &v116[v62[5]];
    v118 = *(&v202 + 1);
    *v117 = v202;
    v117[1] = v118;
    *&v116[v62[6]] = v204;
    v116[v62[9]] = 2;
    *&v116[v62[8]] = v201;
    v119 = &v116[v62[11]];
    *v119 = 0u;
    v119[1] = 0u;
    v120 = MEMORY[0x277D84F90];
    *v200 = MEMORY[0x277D84F90];
    v121 = *(v90 + 7);
    v225[6] = *(v90 + 6);
    v225[7] = v121;
    v226 = v90[128];
    v122 = *(v90 + 3);
    v225[2] = *(v90 + 2);
    v225[3] = v122;
    v123 = *(v90 + 5);
    v225[4] = *(v90 + 4);
    v225[5] = v123;
    v124 = *(v90 + 1);
    v225[0] = *v90;
    v225[1] = v124;
    sub_242C6D138(v225, &qword_27ECF4660);
    v125 = v227[7];
    *(v90 + 6) = v227[6];
    *(v90 + 7) = v125;
    v90[128] = v227[8];
    v126 = v227[3];
    *(v90 + 2) = v227[2];
    *(v90 + 3) = v126;
    v127 = v227[5];
    *(v90 + 4) = v227[4];
    *(v90 + 5) = v127;
    v128 = v227[1];
    *v90 = v227[0];
    *(v90 + 1) = v128;
    v129 = v206;

    *v129 = 0;
    *(v129 + 1) = 0;
    v130 = v205;
    v131 = *(v205 + 1);
    v215[0] = *v205;
    v215[1] = v131;
    *v216 = *(v205 + 2);
    *&v216[9] = *(v205 + 41);
    sub_242C6D138(v215, &qword_27ECF4668);
    *v130 = 0u;
    v130[1] = 0u;
    v130[2] = 0u;
    *(v130 + 41) = 0u;
    *v203 = v120;
    v132 = v116;
    v133 = v210;
    sub_242CE35C0(v132, v210);
    sub_242E3C3C8(v133, v212, type metadata accessor for Layout);
    v134 = v207;
    v135 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = sub_242C82F78(0, v134[2] + 1, 1, v134);
    }

    v136 = v208;
    v138 = v134[2];
    v137 = v134[3];
    v139 = v134;
    if (v138 >= v137 >> 1)
    {
      v139 = sub_242C82F78(v137 > 1, v138 + 1, 1, v134);
    }

    v80 = (v136 + 1);
    sub_242E3C430(v210, type metadata accessor for Layout);
    sub_242E3C430(v209, type metadata accessor for LayoutTemplate);
    *(v139 + 16) = v138 + 1;
    v81 = v139;
    sub_242CE35C0(v212, v139 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v138);
    if (v80 == v193)
    {

      v75 = v198;
      v73 = v168;
      v72 = v169;
      LOBYTE(v74) = v167;
      v59 = v135;
      goto LABEL_95;
    }

    v59 = v135;
    v60 = v115;
    if (v80 >= *(v197 + 16))
    {
      goto LABEL_100;
    }
  }

  *&v225[0] = 0;
  *(&v225[0] + 1) = 0xE000000000000000;
  sub_242F05A80();

  v225[0] = v202;
  MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
  v152 = MEMORY[0x277D84F90];
  if (v190)
  {
    *&v215[0] = MEMORY[0x277D84F90];
    v153 = v190;
    sub_242E3BC70(0, v190, 0);
    v152 = *&v215[0];
    v154 = v204 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
    v155 = *(v184 + 72);
    do
    {
      v157 = v213;
      sub_242E3C3C8(v154, v213, type metadata accessor for Zone);
      v158 = &v157[*(v214 + 20)];
      v160 = *v158;
      v159 = v158[1];

      sub_242E3C430(v157, type metadata accessor for Zone);
      *&v215[0] = v152;
      v162 = *(v152 + 16);
      v161 = *(v152 + 24);
      if (v162 >= v161 >> 1)
      {
        sub_242E3BC70((v161 > 1), v162 + 1, 1);
        v152 = *&v215[0];
      }

      *(v152 + 16) = v162 + 1;
      v156 = v152 + 16 * v162;
      *(v156 + 32) = v160;
      *(v156 + 40) = v159;
      v154 += v155;
      --v153;
    }

    while (v153);
  }

  v163 = MEMORY[0x245D26920](v152, MEMORY[0x277D837D0]);
  v165 = v164;

  MEMORY[0x245D26660](v163, v165);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t sub_242E3A134(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x696669746E656469;
    v5 = 0x6E6F6973726576;
    if (a1 != 2)
    {
      v5 = 0x54656C6369686576;
    }

    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x707954646C697562;
    if (a1 != 7)
    {
      v1 = 0x7379616C70736964;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD00000000000001BLL;
    if (a1 == 4)
    {
      v2 = 0x4972656E74726170;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242E3A280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3CB28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3A2A8(uint64_t a1)
{
  v2 = sub_242E3C538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3A2E4(uint64_t a1)
{
  v2 = sub_242E3C538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArcPackage.displayIndex(by:)(uint64_t *a1)
{
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  v4 = 0;
  if (v3)
  {
    v5 = *a1;
    v6 = a1[1];
    for (i = (v2 + 40); ; i += 74)
    {
      v8 = *(i - 1) == v5 && *i == v6;
      if (v8 || (sub_242F06110() & 1) != 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_242E3A3B0(void *__src, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  v8[0] = v5;
  v8[1] = v4;

  sub_242CA321C(__dst, &v7, &qword_27ECEFAD0);
  return ArcPackage.subscript.setter(__src, v8);
}

uint64_t ArcPackage.subscript.setter(void *__src, uint64_t *a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = v3[5];
  v6 = v3[3];
  v26 = v3[4];
  v27 = v5;
  v7 = v3[5];
  v28 = v3[6];
  v8 = v3[1];
  v23[0] = *v3;
  v23[1] = v8;
  v9 = v3[3];
  v11 = *v3;
  v10 = v3[1];
  v24 = v3[2];
  v25 = v9;
  __srca[4] = v26;
  __srca[5] = v7;
  __srca[6] = v3[6];
  __srca[0] = v11;
  __srca[1] = v10;
  v12 = *a2;
  v13 = a2[1];
  v29 = *(v3 + 14);
  *&__srca[7] = *(v3 + 14);
  __srca[2] = v24;
  __srca[3] = v6;
  v21[0] = v12;
  v21[1] = v13;
  v14 = ArcPackage.displayIndex(by:)(v21);
  LOBYTE(a2) = v15;
  v30[4] = __srca[4];
  v30[5] = __srca[5];
  v30[6] = __srca[6];
  v31 = *&__srca[7];
  v30[0] = __srca[0];
  v30[1] = __srca[1];
  v30[2] = __srca[2];
  v30[3] = __srca[3];
  sub_242C66114(v23, v19);
  sub_242C66414(v30);

  if (a2)
  {
    return sub_242C6D138(__dst, &qword_27ECEFAD0);
  }

  memcpy(__srca, __dst, sizeof(__srca));
  if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__srca) == 1)
  {
    sub_242E38354(v14, v19);
    return sub_242C6CE30(v19);
  }

  v17 = v29;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_242D37EE4(v17);
  v17 = result;
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v14 >= *(v17 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v18 = v17 + 592 * v14;
  memcpy(v19, (v18 + 32), sizeof(v19));
  memcpy((v18 + 32), __srca, 0x250uLL);
  result = sub_242C6CE30(v19);
  *(v3 + 14) = v17;
  return result;
}

unint64_t ArcPackage.subscript.modify(void *a1, uint64_t *a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x958uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[296] = v2;
  v7 = *a2;
  v8 = a2[1];
  v5[297] = v7;
  v5[298] = v8;
  v9 = v2[5];
  v21 = v2[4];
  v22 = v9;
  v23 = v2[6];
  v10 = v2[1];
  v17 = *v2;
  v18 = v10;
  v11 = v2[3];
  v19 = v2[2];
  v20 = v11;
  v12 = *(v2 + 14);
  v24 = v12;
  v16[0] = v7;
  v16[1] = v8;
  result = ArcPackage.displayIndex(by:)(v16);
  if (v14)
  {
    sub_242C6CE84(v6);
LABEL_9:

    return sub_242E3A754;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v12 + 16))
  {
    v15 = v12 + 592 * result;
    memcpy(v6 + 148, (v15 + 32), 0x250uLL);
    memmove(v6 + 74, (v15 + 32), 0x250uLL);
    nullsub_2(v6 + 74);
    memcpy(v6, v6 + 74, 0x250uLL);
    sub_242C6CDD4((v6 + 148), (v6 + 222));
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_242E3A754(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2384);
  v4 = *(*a1 + 2376);
  if (a2)
  {
    memcpy((v2 + 1184), v2, 0x250uLL);
    memcpy(v5, v2, sizeof(v5));
    v6 = v4;
    v7 = v3;
    sub_242CA321C(v2 + 1184, v2 + 1776, &qword_27ECEFAD0);
    ArcPackage.subscript.setter(v5, &v6);
    memcpy((v2 + 592), v2, 0x250uLL);
    sub_242C6D138(v2 + 592, &qword_27ECEFAD0);
  }

  else
  {
    memcpy(v5, v2, sizeof(v5));
    v6 = v4;
    v7 = v3;
    ArcPackage.subscript.setter(v5, &v6);
  }

  free(v2);
}

uint64_t InfoPlist.iOSContentVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InfoPlist.iOSContentVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InfoPlist.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InfoPlist.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t InfoPlist.minimumSDKVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t InfoPlist.minimumSDKVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t InfoPlist.disclaimer.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t InfoPlist.disclaimer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t InfoPlist.minimumCompatibilityVersion.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void __swiftcall InfoPlist.init(iOSContentVersion:accessoryContentVersion:identifier:minimumSDKVersion:buildType:removeDisclaimerLabelOverride:disclaimer:minimumCompatibilityVersion:)(CarPlayAssetUI::InfoPlist *__return_ptr retstr, Swift::String_optional iOSContentVersion, Swift::Int accessoryContentVersion, Swift::String identifier, Swift::String_optional minimumSDKVersion, CarPlayAssetUI::ArcPackage::BuildType buildType, Swift::Bool_optional removeDisclaimerLabelOverride, Swift::String_optional disclaimer, Swift::Int_optional minimumCompatibilityVersion)
{
  object = disclaimer.value._object;
  countAndFlagsBits = disclaimer.value._countAndFlagsBits;
  v11 = *buildType;
  if (!disclaimer.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  retstr->iOSContentVersion = iOSContentVersion;
  retstr->accessoryContentVersion = accessoryContentVersion;
  retstr->identifier = identifier;
  retstr->minimumSDKVersion = minimumSDKVersion;
  retstr->buildType = v11;
  retstr->removeDisclaimerLabelOverride = removeDisclaimerLabelOverride;
  retstr->disclaimer.value._countAndFlagsBits = countAndFlagsBits;
  retstr->disclaimer.value._object = object;
  retstr->minimumCompatibilityVersion.value = minimumCompatibilityVersion.value;
  retstr->minimumCompatibilityVersion.is_nil = minimumCompatibilityVersion.is_nil;
}

unint64_t sub_242E3ABAC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    if (a1 == 2)
    {
      if (*MEMORY[0x277CBED58])
      {
        return sub_242F04F30();
      }

      __break(1u);
    }

    result = *MEMORY[0x277CBED38];
    if (!*MEMORY[0x277CBED38])
    {
      __break(1u);
      return result;
    }

    return sub_242F04F30();
  }

  v1 = 0x707954646C697542;
  v2 = 0xD00000000000001DLL;
  if (a1 != 7)
  {
    v2 = 0x6D69616C63736944;
  }

  if (a1 != 6)
  {
    v1 = v2;
  }

  v3 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v3 = 0xD000000000000011;
  }

  if (a1 <= 5u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_242E3ACFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    if (a1 != 2)
    {
      v5 = 0x696669746E656469;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x707954646C697562;
    v2 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v2 = 0x6D69616C63736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242E3AE44()
{
  sub_242F06390();
  sub_242E38098();
  return sub_242F063E0();
}

uint64_t sub_242E3AE94()
{
  sub_242F06390();
  sub_242E38098();
  return sub_242F063E0();
}

uint64_t sub_242E3AED8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242E3CE24();
  *a1 = result;
  return result;
}

unint64_t sub_242E3AF08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_242E3ACFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_242E3AF3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242E3CE24();
  *a1 = result;
  return result;
}

uint64_t sub_242E3AF64(uint64_t a1)
{
  v2 = sub_242E3C490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3AFA0(uint64_t a1)
{
  v2 = sub_242E3C490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InfoPlist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = *(v1 + 16);
  v28 = *(v1 + 24);
  v29 = v7;
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v24 = *(v1 + 40);
  v25 = v9;
  v10 = *(v1 + 56);
  v22 = *(v1 + 57);
  v23 = v10;
  v11 = *(v1 + 72);
  v21[1] = *(v1 + 64);
  v21[2] = v11;
  v26 = *(v1 + 80);
  v27 = v8;
  v12 = *(v1 + 88);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_2Tm(v14, v13);
  sub_242E3C490();
  sub_242F064C0();
  LOBYTE(v32) = 0;
  v17 = v30;
  sub_242F05E50();
  if (v17)
  {
    return (*(v4 + 8))(v6, v16);
  }

  LODWORD(v30) = v12;
  v19 = v4;
  LOBYTE(v32) = 1;
  v20 = v29;
  sub_242F05F00();
  v32 = v20;
  sub_242F05F60();
  LOBYTE(v32) = 2;
  sub_242F05EC0();

  LOBYTE(v32) = 3;
  sub_242F05EC0();
  LOBYTE(v32) = 5;
  sub_242F05E50();
  LOBYTE(v32) = v23;
  v31 = 6;
  sub_242E3C4E4();
  sub_242F05F20();
  LOBYTE(v32) = 7;
  sub_242F05E60();
  LOBYTE(v32) = 8;
  sub_242F05E50();
  LOBYTE(v32) = 4;
  sub_242F05E90();
  return (*(v19 + 8))(v6, v16);
}

uint64_t ArcPackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2128);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v7;
  v8 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v8;
  v30 = *(v1 + 48);
  v9 = *(v1 + 56);
  v22 = *(v1 + 64);
  v23 = v9;
  v10 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = v10;
  v11 = *(v1 + 96);
  v18 = *(v1 + 88);
  v19 = v11;
  v17 = *(v1 + 104);
  v16 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E3C538();
  sub_242F064C0();
  LOBYTE(v29) = 0;
  v12 = v28;
  sub_242F05EC0();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v30;
  v14 = v21;
  sub_242CDCA60(v27, v26, v25, 1);
  LOBYTE(v29) = 2;
  sub_242F05F10();
  LOBYTE(v29) = v13;
  v31 = 3;
  sub_242C97064();
  sub_242F05F20();
  LOBYTE(v29) = 4;
  sub_242F05EC0();
  sub_242CDCBAC(v14, v20, 5);
  LOBYTE(v29) = 6;
  sub_242F05EC0();
  LOBYTE(v29) = v17;
  v31 = 7;
  sub_242E3C4E4();
  sub_242F05F20();
  v29 = v16;
  v31 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95D8);
  sub_242E3C634(&qword_27ECF95E0, sub_242E3C58C);
  sub_242F05F20();
  return (*(v4 + 8))(v6, 0);
}

uint64_t ArcPackage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E3C538();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v8 = v5;
    v9 = v67;
    LOBYTE(v46) = 0;
    v11 = sub_242F05DA0();
    v37 = v12;
    LOBYTE(v38) = 1;
    sub_242F05D90();
    v36 = v47;
    if (v47)
    {
      v34 = v46;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    LOBYTE(v46) = 2;
    v33 = sub_242F05DF0();
    LOBYTE(v38) = 3;
    sub_242C9700C();
    sub_242F05E00();
    v32 = v46;
    LOBYTE(v46) = 4;
    v31 = sub_242F05DA0();
    v35 = v13;
    LOBYTE(v38) = 5;
    sub_242F05D90();
    if (v47)
    {
      v30 = 0;
    }

    else
    {
      v30 = v46;
    }

    LOBYTE(v46) = 6;
    v14 = v7;
    v29 = sub_242F05DA0();
    v16 = v15;
    LOBYTE(v38) = 7;
    sub_242E3C5E0();
    sub_242F05E00();
    HIDWORD(v27) = v46;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95D8);
    v63 = 8;
    sub_242E3C634(&qword_27ECF9600, sub_242E3C6AC);
    sub_242F05E00();
    (*(v8 + 8))(v14, v4);
    v17 = v64;
    v28 = v64;
    *&v38 = v11;
    *(&v38 + 1) = v37;
    v18 = v33;
    v19 = v34;
    *&v39 = v34;
    *(&v39 + 1) = v36;
    *&v40 = 7;
    *(&v40 + 1) = v33;
    v20 = v32;
    LOBYTE(v41) = v32;
    *(&v41 + 1) = v31;
    *&v42 = v35;
    *(&v42 + 1) = v30;
    *&v43 = 7;
    *(&v43 + 1) = v29;
    *&v44 = v16;
    BYTE8(v44) = BYTE4(v27);
    v45 = v64;
    v21 = v38;
    v22 = v39;
    v23 = v41;
    *(v9 + 32) = v40;
    *(v9 + 48) = v23;
    *v9 = v21;
    *(v9 + 16) = v22;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    *(v9 + 112) = v17;
    *(v9 + 80) = v25;
    *(v9 + 96) = v26;
    *(v9 + 64) = v24;
    sub_242C66114(&v38, &v46);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v46 = v11;
    v47 = v37;
    v48 = v19;
    v49 = v36;
    v50 = 7;
    v51 = v18;
    v52 = v20;
    *v53 = v66[0];
    *&v53[3] = *(v66 + 3);
    v54 = v31;
    v55 = v35;
    v56 = v30;
    v57 = 7;
    v58 = v29;
    v59 = v16;
    v60 = BYTE4(v27);
    *&v61[3] = *&v65[3];
    *v61 = *v65;
    v62 = v28;
    return sub_242C66414(&v46);
  }
}

char *sub_242E3BC70(char *a1, int64_t a2, char a3)
{
  result = sub_242D9A5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BC90(char *a1, int64_t a2, char a3)
{
  result = sub_242D9A704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BCB0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9ABB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BCD0(char *a1, int64_t a2, char a3)
{
  result = sub_242D9ACFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BCF0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9AE18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BD10(char *a1, int64_t a2, char a3)
{
  result = sub_242D9AF60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BD30(char *a1, int64_t a2, char a3)
{
  result = sub_242D9B084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BD50(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BD70(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B2D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BD90(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BDB0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BDD0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BDF0(char *a1, int64_t a2, char a3)
{
  result = sub_242D9B6E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BE10(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BE30(char *a1, int64_t a2, char a3)
{
  result = sub_242D9B93C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BE50(void *a1, int64_t a2, char a3)
{
  result = sub_242D9BA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_242E3BE70(size_t a1, int64_t a2, char a3)
{
  result = sub_242D9BB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_242E3BE90(size_t a1, int64_t a2, char a3)
{
  result = sub_242D9BBA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_242E3BEB0(size_t a1, int64_t a2, char a3)
{
  result = sub_242D9BBCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BED0(char *a1, int64_t a2, char a3)
{
  result = sub_242D9BBF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BEF0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9BCF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_242E3BF10(size_t a1, int64_t a2, char a3)
{
  result = sub_242D9BE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BF30(void *a1, int64_t a2, char a3)
{
  result = sub_242D9C030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BF50(char *a1, int64_t a2, char a3)
{
  result = sub_242D9C164(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BF70(char *a1, int64_t a2, char a3)
{
  result = sub_242D9C3BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BF90(void *a1, int64_t a2, char a3)
{
  result = sub_242D9C4C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_242E3BFB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x245D287F0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x245D287F0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_242E3C03C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x245D287F0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x245D287F0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s14CarPlayAssetUI9InfoPlistV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11 = *(a1 + 72);
  v54 = *(a1 + 80);
  v58 = *(a1 + 88);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 57);
  v55 = *(a2 + 64);
  v56 = *(a1 + 64);
  v20 = *(a2 + 72);
  v53 = *(a2 + 80);
  v57 = *(a2 + 88);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v12)
    {
      if (v4 != v13)
      {
        return 0;
      }
    }

    else
    {
      v47 = *(a2 + 56);
      v48 = *(a1 + 56);
      v49 = *(a2 + 57);
      v50 = *(a1 + 57);
      v51 = *(a2 + 72);
      v52 = *(a1 + 72);
      v22 = sub_242F06110();
      result = 0;
      if ((v22 & 1) == 0)
      {
        return result;
      }

      v20 = v51;
      v11 = v52;
      v19 = v49;
      v10 = v50;
      v18 = v47;
      v9 = v48;
      if (v4 != v13)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v12 || v4 != v13)
    {
      return result;
    }
  }

  if (v5 != v14 || v6 != v15)
  {
    v23 = v11;
    v24 = v20;
    v25 = v10;
    v26 = v19;
    v27 = v9;
    v28 = v18;
    v29 = sub_242F06110();
    v18 = v28;
    v9 = v27;
    v19 = v26;
    v10 = v25;
    v20 = v24;
    v11 = v23;
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v16)
    {
      return 0;
    }

    v30 = v20;
    v31 = v11;
    if (v7 != v17 || v8 != v16)
    {
      v32 = v10;
      v33 = v19;
      v34 = v9;
      v35 = v18;
      v36 = sub_242F06110();
      v18 = v35;
      v9 = v34;
      v19 = v33;
      v10 = v32;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v30 = v20;
    v31 = v11;
    if (v16)
    {
      return 0;
    }
  }

  v37 = v19;
  v38 = v10;
  if (v9)
  {
    v39 = 0x657361656C6572;
  }

  else
  {
    v39 = 0x6775626564;
  }

  if (v9)
  {
    v40 = 0xE700000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  if (v18)
  {
    v41 = 0x657361656C6572;
  }

  else
  {
    v41 = 0x6775626564;
  }

  if (v18)
  {
    v42 = 0xE700000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  if (v39 == v41 && v40 == v42)
  {
  }

  else
  {
    v43 = sub_242F06110();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  if (v38 == 2)
  {
    v44 = v31;
    v45 = v30;
    if (v37 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v37 != 2)
  {
    v44 = v31;
    v45 = v30;
    if (((v37 ^ v38) & 1) == 0)
    {
LABEL_43:
      if (v44)
      {
        if (!v45 || (v56 != v55 || v44 != v45) && (sub_242F06110() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v45)
      {
        return 0;
      }

      if ((v58 & 1) == 0)
      {
        v46 = v57;
        if (v54 != v53)
        {
          v46 = 1;
        }

        return (v46 & 1) == 0;
      }

      return (v57 & 1) != 0;
    }
  }

  return result;
}

uint64_t sub_242E3C3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E3C430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242E3C490()
{
  result = qword_27ECF95C0;
  if (!qword_27ECF95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95C0);
  }

  return result;
}

unint64_t sub_242E3C4E4()
{
  result = qword_27ECF95C8;
  if (!qword_27ECF95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95C8);
  }

  return result;
}

unint64_t sub_242E3C538()
{
  result = qword_27ECF95D0;
  if (!qword_27ECF95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95D0);
  }

  return result;
}

unint64_t sub_242E3C58C()
{
  result = qword_27ECF95E8;
  if (!qword_27ECF95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95E8);
  }

  return result;
}

unint64_t sub_242E3C5E0()
{
  result = qword_27ECF95F8;
  if (!qword_27ECF95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95F8);
  }

  return result;
}

uint64_t sub_242E3C634(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF95D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E3C6AC()
{
  result = qword_27ECF9608;
  if (!qword_27ECF9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9608);
  }

  return result;
}

unint64_t sub_242E3C704()
{
  result = qword_27ECF9610;
  if (!qword_27ECF9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9610);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_242E3C784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_242E3C7CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E3C848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_242E3C890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E3C91C()
{
  result = qword_27ECF9618;
  if (!qword_27ECF9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9618);
  }

  return result;
}

unint64_t sub_242E3C974()
{
  result = qword_27ECF9620;
  if (!qword_27ECF9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9620);
  }

  return result;
}

unint64_t sub_242E3C9CC()
{
  result = qword_27ECF9628;
  if (!qword_27ECF9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9628);
  }

  return result;
}

unint64_t sub_242E3CA24()
{
  result = qword_27ECF9630;
  if (!qword_27ECF9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9630);
  }

  return result;
}

unint64_t sub_242E3CA7C()
{
  result = qword_27ECF9638;
  if (!qword_27ECF9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9638);
  }

  return result;
}

unint64_t sub_242E3CAD4()
{
  result = qword_27ECF9640;
  if (!qword_27ECF9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9640);
  }

  return result;
}

uint64_t sub_242E3CB28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F582B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656C6369686576 && a2 == 0xEB00000000657079 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000044 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F582F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F58310 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954646C697562 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7379616C70736964 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242E3CE24()
{
  v0 = sub_242F05CD0();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_242E3CE70()
{
  result = qword_27ECF9648;
  if (!qword_27ECF9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9648);
  }

  return result;
}

uint64_t static DynamicAppearanceValue<A>.== infix(_:_:)()
{
  if ((sub_242F04EE0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DynamicAppearanceValue();
  return sub_242F04EE0() & 1;
}

uint64_t DynamicAppearanceValue.init(lightMode:darkMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for DynamicAppearanceValue() + 28);

  return v9(v7, a2, a3);
}

uint64_t DynamicAppearanceValue<A>.assets.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_242F0A4E0;
  v6 = *(a1 + 16);
  *(v5 + 56) = v6;
  *(v5 + 64) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  v8 = *(*(v6 - 8) + 16);
  v8(boxed_opaque_existential_1, v2, v6);
  v9 = *(a1 + 28);
  *(v5 + 96) = v6;
  *(v5 + 104) = a2;
  v10 = __swift_allocate_boxed_opaque_existential_1((v5 + 72));
  v8(v10, v2 + v9, v6);
  return v5;
}

uint64_t DynamicAppearanceValue<A>.restore(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = *(a2 + 16);
  result = v6(a1, v7);
  if (!v3)
  {
    return (v6)(a1, v7, a3);
  }

  return result;
}

uint64_t DynamicAppearanceValue.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_242F03BB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CDF3D0])
  {
    return (*(*(*(a2 + 16) - 8) + 16))(a3, v3);
  }

  if (v12 == *MEMORY[0x277CDF3C0])
  {
    return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + *(a2 + 28));
  }

  (*(*(*(a2 + 16) - 8) + 16))(a3, v3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t DynamicAppearanceValue.resolve(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    v3 += *(a2 + 28);
  }

  v5 = *(*(*(a2 + 16) - 8) + 16);

  return v5(a3, v3);
}

uint64_t sub_242E3D4AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F4D746867696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D6B726164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E3D580(char a1)
{
  if (a1)
  {
    return 0x65646F4D6B726164;
  }

  else
  {
    return 0x646F4D746867696CLL;
  }
}

uint64_t sub_242E3D5EC()
{
  sub_242F06390();
  sub_242C5BB50(v2, *v0);
  return sub_242F063E0();
}

uint64_t sub_242E3D644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3D4AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3D670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C8F750();
  *a1 = result;
  return result;
}

uint64_t sub_242E3D69C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3D6F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_242E3D748()
{
  v1 = 0x6144656C676E6973;
  v2 = 0x63696D616E7964;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x694C656C676E6973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242E3D7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E42FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3D7FC(uint64_t a1)
{
  v2 = sub_242E41400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3D838(uint64_t a1)
{
  v2 = sub_242E41400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E3D888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746867696CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242E3D90C(uint64_t a1)
{
  v2 = sub_242E414FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3D948(uint64_t a1)
{
  v2 = sub_242E414FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E3D984(uint64_t a1)
{
  v2 = sub_242E41454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3D9C0(uint64_t a1)
{
  v2 = sub_242E41454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E3D9FC(uint64_t a1)
{
  v2 = sub_242E415A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3DA38(uint64_t a1)
{
  v2 = sub_242E415A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E3DA74(uint64_t a1)
{
  v2 = sub_242E41550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E3DAB0(uint64_t a1)
{
  v2 = sub_242E41550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppearanceType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9650);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9658);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9660);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9668);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9670);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E41400();
  sub_242F064C0();
  memcpy(v43, v38, 0x340uLL);
  v16 = sub_242D0B464(v43);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v20 = sub_242C56CEC(v43);
      v42[0] = 3;
      sub_242E41454();
      v21 = v35;
      v22 = v40;
      sub_242F05E40();
      memcpy(v42, v20, sizeof(v42));
      v44 = 0;
      sub_242E414A8();
      v23 = v37;
      v24 = v41;
      sub_242F05F20();
      if (!v24)
      {
        memcpy(v42, (v20 + 416), sizeof(v42));
        v44 = 1;
        sub_242F05F20();
      }

      (*(v36 + 8))(v21, v23);
      return (*(v39 + 8))(v15, v22);
    }

    else
    {
      v42[0] = 0;
      sub_242E415A4();
      v28 = v40;
      sub_242F05E40();
      (*(v30 + 8))(v12, v10);
      return (*(v39 + 8))(v15, v28);
    }
  }

  else
  {
    if (v16)
    {
      v26 = sub_242C56CEC(v43);
      v42[0] = 2;
      sub_242E414FC();
      v18 = v40;
      sub_242F05E40();
      memcpy(v42, v26, sizeof(v42));
      sub_242E414A8();
      v27 = v34;
      sub_242F05F20();
      (*(v33 + 8))(v6, v27);
    }

    else
    {
      v17 = sub_242C56CEC(v43);
      v42[0] = 1;
      sub_242E41550();
      v18 = v40;
      sub_242F05E40();
      memcpy(v42, v17, sizeof(v42));
      sub_242E414A8();
      v19 = v32;
      sub_242F05F20();
      (*(v31 + 8))(v9, v19);
    }

    return (*(v39 + 8))(v15, v18);
  }
}

uint64_t AppearanceType.hash(into:)()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242D0B464(__dst);
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = sub_242C56CEC(__dst);
      v3 = 2;
    }

    else
    {
      v2 = sub_242C56CEC(__dst);
      v3 = 1;
    }

    MEMORY[0x245D279A0](v3);
    v5 = v2;
    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v4 = sub_242C56CEC(__dst);
    MEMORY[0x245D279A0](3);
    memcpy(v7, v4, sizeof(v7));
    Color.ColorValues.hash(into:)();
    v5 = v4 + 416;
LABEL_8:
    memcpy(v7, v5, sizeof(v7));
    return Color.ColorValues.hash(into:)();
  }

  return MEMORY[0x245D279A0](0);
}

uint64_t AppearanceType.hashValue.getter()
{
  sub_242F06390();
  AppearanceType.hash(into:)();
  return sub_242F063E0();
}

uint64_t AppearanceType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96A8);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v49 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96B0);
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  MEMORY[0x28223BE20](v6);
  v48 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96B8);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96C0);
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96C8);
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v18);
  sub_242E41400();
  v19 = v50;
  sub_242F06480();
  if (!v19)
  {
    v50 = v14;
    v38 = v12;
    v20 = v11;
    v22 = v48;
    v21 = v49;
    v23 = v47;
    v24 = sub_242F05E10();
    v25 = (2 * *(v24 + 16)) | 1;
    v57[104] = v24;
    v57[105] = v24 + 32;
    v58 = 0;
    v59 = v25;
    v26 = sub_242C7FBF0();
    if (v26 != 4 && v58 == v59 >> 1)
    {
      if (v26 > 1u)
      {
        if (v26 == 2)
        {
          v53[0].i8[0] = 2;
          sub_242E414FC();
          sub_242F05D10();
          sub_242E415F8();
          v33 = v42;
          sub_242F05E00();
          (*(v43 + 8))(v22, v33);
          (*(v23 + 8))(v17, v15);
          swift_unknownObjectRelease();
          memcpy(v53, v52, 0x1A0uLL);
          sub_242E41810(v53);
        }

        else
        {
          v53[0].i8[0] = 3;
          sub_242E41454();
          sub_242F05D10();
          v61 = 0;
          sub_242E415F8();
          v36 = v44;
          sub_242F05E00();
          memcpy(v55, v56, sizeof(v55));
          v60 = 1;
          sub_242F05E00();
          (*(v45 + 8))(v21, v36);
          (*(v23 + 8))(v17, v15);
          swift_unknownObjectRelease();
          memcpy(&v52[416], v54, 0x1A0uLL);
          memcpy(v52, v55, 0x1A0uLL);
          memcpy(v53, v52, sizeof(v53));
          sub_242E4164C(v53);
        }
      }

      else
      {
        if (!v26)
        {
          v53[0].i8[0] = 0;
          sub_242E415A4();
          v27 = v50;
          sub_242F05D10();
          (*(v39 + 8))(v27, v38);
          (*(v23 + 8))(v17, v15);
          swift_unknownObjectRelease();
          sub_242D0B2E4(v57);
LABEL_14:
          memcpy(v46, v57, 0x340uLL);
          return __swift_destroy_boxed_opaque_existential_2Tm(v51);
        }

        v53[0].i8[0] = 1;
        sub_242E41550();
        v34 = v20;
        sub_242F05D10();
        sub_242E415F8();
        v35 = v41;
        sub_242F05E00();
        (*(v40 + 8))(v34, v35);
        (*(v23 + 8))(v17, v15);
        swift_unknownObjectRelease();
        memcpy(v53, v52, 0x1A0uLL);
        sub_242E419D4(v53);
      }

      memcpy(v57, v53, 0x340uLL);
      goto LABEL_14;
    }

    v28 = v17;
    v29 = sub_242F05B10();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
    *v31 = &type metadata for AppearanceType;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v23 + 8))(v28, v15);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v51);
}

uint64_t sub_242E3EB08()
{
  sub_242F06390();
  AppearanceType.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E3EB4C()
{
  sub_242F06390();
  AppearanceType.hash(into:)();
  return sub_242F063E0();
}

uint64_t static Dynamic.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a1;
  v55 = a2;
  v16 = type metadata accessor for DynamicAppearanceValue();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16);
  v46 = &v45 - v17;
  v51 = *(a3 - 8);
  MEMORY[0x28223BE20](v18);
  v45 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v57 = a4;
  v48 = a7;
  v49 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v61 = a8;
  v62 = a9;
  v63 = a10;
  v47 = a10;
  v20 = type metadata accessor for Dynamic();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v30 = &v45 - v29;
  v32 = *(v31 + 48);
  v33 = *(v21 + 16);
  v33(&v45 - v29, v54, v20, v28);
  (v33)(&v30[v32], v55, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v33)(v26, v30, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = v51;
      v41 = &v30[v32];
      v42 = v45;
      (*(v51 + 32))(v45, v41, a3);
      v38 = sub_242F04EE0();
      v43 = *(v40 + 8);
      v43(v42, a3);
      v43(v26, a3);
      goto LABEL_9;
    }

    (*(v51 + 8))(v26, a3);
    goto LABEL_7;
  }

  (v33)(v23, v30, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v52 + 8))(v23, v53);
LABEL_7:
    v38 = 0;
    v21 = v50;
    v20 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v35 = v52;
  v34 = v53;
  v36 = &v30[v32];
  v37 = v46;
  (*(v52 + 32))(v46, v36, v53);
  v38 = static DynamicAppearanceValue<A>.== infix(_:_:)();
  v39 = *(v35 + 8);
  v39(v37, v34);
  v39(v23, v34);
LABEL_9:
  (*(v21 + 8))(v30, v20);
  return v38 & 1;
}

uint64_t sub_242E3F074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C676E6973 && a2 == 0xE600000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E3F13C(char a1)
{
  if (a1)
  {
    return 0x63696D616E7964;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_242E3F170(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_242F06110();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_242E3F2A0()
{
  sub_242F06390();
  sub_242C5BB50(v2, *v0);
  return sub_242F063E0();
}

uint64_t sub_242E3F334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3F074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3F37C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C8F750();
  *a1 = result;
  return result;
}

uint64_t sub_242E3F3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3F40C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242E3F48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3F4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242E3F534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3F170(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E3F580@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E3F5C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3F61C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Dynamic.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v69 = a2[7];
  v9 = a2[8];
  v8 = a2[9];
  v61 = v4;
  v62 = v3;
  v63 = v5;
  v64 = v6;
  v10 = v5;
  v56 = a1;
  v57 = v5;
  v65 = v7;
  v66 = v69;
  v67 = v9;
  v68 = v8;
  v55 = v8;
  v45 = type metadata accessor for Dynamic.DynamicCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v52 = sub_242F05F30();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = v38 - v11;
  v54 = v3;
  v49 = type metadata accessor for DynamicAppearanceValue();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v38 - v12;
  v61 = v4;
  v62 = v3;
  v63 = v10;
  v64 = v6;
  v13 = v69;
  v65 = v7;
  v66 = v69;
  v67 = v9;
  v68 = v8;
  v14 = type metadata accessor for Dynamic.SingleCodingKeys();
  v15 = swift_getWitnessTable();
  v40 = v14;
  v38[1] = v15;
  v43 = sub_242F05F30();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = v38 - v16;
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v17);
  v38[0] = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v4;
  v62 = v54;
  v63 = v57;
  v64 = v6;
  v53 = v4;
  v54 = v6;
  v65 = v7;
  v66 = v13;
  v51 = v9;
  v67 = v9;
  v68 = v55;
  type metadata accessor for Dynamic.CodingKeys();
  swift_getWitnessTable();
  v23 = sub_242F05F30();
  v57 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v38 - v24;
  __swift_project_boxed_opaque_existential_2Tm(v56, v56[3]);
  sub_242F064C0();
  (*(v19 + 16))(v22, v58, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v48;
    v27 = v46;
    v28 = v22;
    v29 = v49;
    (*(v48 + 32))(v46, v28, v49);
    LOBYTE(v61) = 1;
    v30 = v47;
    v58 = v23;
    sub_242F05E40();
    v59 = v69;
    v60 = v51;
    swift_getWitnessTable();
    v31 = v52;
    sub_242F05F20();
    (*(v50 + 8))(v30, v31);
    (*(v26 + 8))(v27, v29);
    v23 = v58;
  }

  else
  {
    v32 = v41;
    v33 = v38[0];
    v34 = v53;
    (*(v41 + 32))(v38[0], v22, v53);
    LOBYTE(v61) = 0;
    v35 = v39;
    sub_242F05E40();
    v36 = v43;
    sub_242F05F20();
    (*(v42 + 8))(v35, v36);
    (*(v32 + 8))(v33, v34);
  }

  return (*(v57 + 8))(v25, v23);
}

uint64_t Dynamic.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicAppearanceValue();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v2, a2, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v16, v4);
    MEMORY[0x245D279A0](1);
    sub_242F04D90();
    sub_242F04D90();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    MEMORY[0x245D279A0](0);
    sub_242F04D90();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t Dynamic.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  Dynamic.hash(into:)(v3, a1);
  return sub_242F063E0();
}

uint64_t Dynamic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v95 = a1;
  v78 = a9;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v91 = a6;
  v92 = a7;
  v93 = a8;
  v94 = a10;
  v76 = type metadata accessor for Dynamic.DynamicCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v70 = sub_242F05E20();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v77 = &v59 - v17;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v82 = a5;
  v91 = a6;
  v92 = a7;
  v93 = a8;
  v94 = a10;
  v18 = type metadata accessor for Dynamic.SingleCodingKeys();
  v19 = swift_getWitnessTable();
  v73 = v18;
  v72 = v19;
  v65 = sub_242F05E20();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v74 = &v59 - v20;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v91 = a6;
  v92 = a7;
  v93 = a8;
  v94 = a10;
  type metadata accessor for Dynamic.CodingKeys();
  v83 = swift_getWitnessTable();
  v79 = sub_242F05E20();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v22 = &v59 - v21;
  v67 = a2;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  v66 = a3;
  v69 = a4;
  *&v90 = a4;
  *(&v90 + 1) = v82;
  v91 = a6;
  v92 = a7;
  v71 = a7;
  v82 = a8;
  v93 = a8;
  v94 = a10;
  v23 = type metadata accessor for Dynamic();
  v63 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v59 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v59 - v30;
  __swift_project_boxed_opaque_existential_2Tm(v95, v95[3]);
  v80 = v22;
  v32 = v84;
  sub_242F06480();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v95);
  }

  v61 = v28;
  v62 = v25;
  v83 = 0;
  v60 = v31;
  v84 = v23;
  v33 = v82;
  v34 = v80;
  v35 = v79;
  *&v87 = sub_242F05E10();
  sub_242F053E0();
  swift_getWitnessTable();
  *&v89 = sub_242F05910();
  *(&v89 + 1) = v36;
  *&v90 = v37;
  *(&v90 + 1) = v38;
  sub_242F05900();
  swift_getWitnessTable();
  sub_242F055C0();
  v39 = v87;
  if (v87 == 2 || (v59 = v89, v87 = v89, v88 = v90, (sub_242F05610() & 1) == 0))
  {
    v44 = sub_242F05B10();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
    *v46 = v84;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v81 + 8))(v34, v35);
    goto LABEL_8;
  }

  if ((v39 & 1) == 0)
  {
    LOBYTE(v87) = 0;
    v48 = v74;
    v49 = v35;
    v50 = v83;
    sub_242F05D10();
    v43 = v78;
    if (!v50)
    {
      v51 = v61;
      v52 = v65;
      sub_242F05E00();
      (*(v64 + 8))(v48, v52);
      (*(v81 + 8))(v34, v49);
      swift_unknownObjectRelease();
      v56 = v84;
      goto LABEL_14;
    }

    (*(v81 + 8))(v34, v49);
LABEL_8:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v95);
  }

  LOBYTE(v87) = 1;
  v40 = v77;
  v41 = v35;
  v42 = v83;
  sub_242F05D10();
  v43 = v78;
  if (v42)
  {
    (*(v81 + 8))(v34, v41);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v95);
  }

  type metadata accessor for DynamicAppearanceValue();
  v85 = v71;
  v86 = v33;
  swift_getWitnessTable();
  v53 = v62;
  v54 = v70;
  sub_242F05E00();
  v55 = v81;
  v51 = v53;
  (*(v68 + 8))(v40, v54);
  (*(v55 + 8))(v34, v41);
  swift_unknownObjectRelease();
  v56 = v84;
LABEL_14:
  swift_storeEnumTagMultiPayload();
  v57 = *(v63 + 32);
  v58 = v60;
  v57(v60, v51, v56);
  v57(v43, v58, v56);
  return __swift_destroy_boxed_opaque_existential_2Tm(v95);
}

uint64_t sub_242E4097C(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  Dynamic.hash(into:)(v4, a2);
  return sub_242F063E0();
}

uint64_t DynamicAppearanceValue<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a4;
  type metadata accessor for DynamicAppearanceValue.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_242F05F30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  v13 = 0;
  v9 = v11[3];
  sub_242F05F20();
  if (!v9)
  {
    v12 = 1;
    sub_242F05F20();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DynamicAppearanceValue<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v24 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v22 - v8;
  type metadata accessor for DynamicAppearanceValue.CodingKeys();
  swift_getWitnessTable();
  v30 = sub_242F05E20();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v22 - v9;
  v11 = type metadata accessor for DynamicAppearanceValue();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v14 = v31;
  sub_242F06480();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v15 = v13;
  v31 = v11;
  v16 = v25;
  v17 = v26;
  v33 = 0;
  sub_242F05E00();
  v18 = v28;
  v28 = *(v17 + 32);
  (v28)(v15, v18, a2);
  v32 = 1;
  sub_242F05E00();
  (*(v27 + 8))(v10, v30);
  v19 = v31;
  (v28)(&v15[*(v31 + 28)], v16, a2);
  v20 = v23;
  (*(v23 + 16))(v24, v15, v19);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return (*(v20 + 8))(v15, v19);
}

uint64_t DynamicAppearanceValue<A>.hashValue.getter()
{
  sub_242F06390();
  sub_242F04D90();
  sub_242F04D90();
  return sub_242F063E0();
}

uint64_t sub_242E41090()
{
  sub_242F06390();
  DynamicAppearanceValue<A>.hash(into:)();
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI14AppearanceTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v3, sizeof(__src));
  memcpy(v18, v4, sizeof(v18));
  memcpy(v19, v3, sizeof(v19));
  memcpy(v20, v4, sizeof(v20));
  v5 = sub_242D0B464(v20);
  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = sub_242C56CEC(v20);
      memcpy(v15, __src, sizeof(v15));
      if (sub_242D0B464(v15) == 1)
      {
LABEL_10:
        v10 = sub_242C56CEC(v15);
        memcpy(v14, v6, sizeof(v14));
        memcpy(v13, v10, sizeof(v13));
        sub_242D0BDE0(__src, v12);
        sub_242D0BDE0(__dst, v12);
        sub_242D0BDE0(__src, v12);
        sub_242D0BDE0(__dst, v12);
        v9 = _s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(v14, v13);
        sub_242E43138(v18);
        sub_242E431A0(__src);
        sub_242E431A0(__dst);
        return v9 & 1;
      }
    }

    else
    {
      v6 = sub_242C56CEC(v20);
      memcpy(v15, __src, sizeof(v15));
      if (!sub_242D0B464(v15))
      {
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    memcpy(v15, __src, sizeof(v15));
    if (sub_242D0B464(v15) == 3)
    {
      sub_242E43138(v18);
      v9 = 1;
      return v9 & 1;
    }

    goto LABEL_13;
  }

  v7 = sub_242C56CEC(v20);
  memcpy(v15, __src, sizeof(v15));
  if (sub_242D0B464(v15) != 2)
  {
LABEL_13:
    sub_242D0BDE0(__src, v15);
    sub_242D0BDE0(__dst, v15);
LABEL_14:
    sub_242E43138(v18);
    v9 = 0;
    return v9 & 1;
  }

  v8 = sub_242C56CEC(v15);
  memcpy(v14, v7, sizeof(v14));
  memcpy(v13, v8, sizeof(v13));
  sub_242D0BDE0(__src, v12);
  sub_242D0BDE0(__dst, v12);
  sub_242C8DFF4(v7 + 416, v12);
  sub_242C8DFF4(v8 + 416, v12);
  if ((_s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(v14, v13) & 1) == 0)
  {
    sub_242D53D78(v8 + 416);
    sub_242D53D78(v7 + 416);
    goto LABEL_14;
  }

  memcpy(v12, (v7 + 416), 0x1A0uLL);
  memcpy(v14, (v8 + 416), sizeof(v14));
  v9 = _s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(v12, v14);
  sub_242E43138(v18);
  sub_242D53D78(v8 + 416);
  sub_242D53D78(v7 + 416);
  return v9 & 1;
}

unint64_t sub_242E41400()
{
  result = qword_27ECF9678;
  if (!qword_27ECF9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9678);
  }

  return result;
}

unint64_t sub_242E41454()
{
  result = qword_27ECF9680;
  if (!qword_27ECF9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9680);
  }

  return result;
}

unint64_t sub_242E414A8()
{
  result = qword_27ECF9688;
  if (!qword_27ECF9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9688);
  }

  return result;
}

unint64_t sub_242E414FC()
{
  result = qword_27ECF9690;
  if (!qword_27ECF9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9690);
  }

  return result;
}

unint64_t sub_242E41550()
{
  result = qword_27ECF9698;
  if (!qword_27ECF9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9698);
  }

  return result;
}

unint64_t sub_242E415A4()
{
  result = qword_27ECF96A0;
  if (!qword_27ECF96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF96A0);
  }

  return result;
}

unint64_t sub_242E415F8()
{
  result = qword_27ECF96D0;
  if (!qword_27ECF96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF96D0);
  }

  return result;
}

int8x16_t sub_242E4164C(int8x16_t *a1)
{
  v1 = a1[51].i64[0] & 0xFFFFFFFFFFFFFF8;
  v2 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  v3 = a1[51].i64[1] & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v4 = vandq_s8(a1[1], v2);
  *a1 = vandq_s8(*a1, v2);
  a1[1] = v4;
  v5 = vandq_s8(a1[3], v2);
  a1[2] = vandq_s8(a1[2], v2);
  a1[3] = v5;
  v6 = vandq_s8(a1[5], v2);
  a1[4] = vandq_s8(a1[4], v2);
  a1[5] = v6;
  v7 = vandq_s8(a1[7], v2);
  a1[6] = vandq_s8(a1[6], v2);
  a1[7] = v7;
  v8 = vandq_s8(a1[9], v2);
  a1[8] = vandq_s8(a1[8], v2);
  a1[9] = v8;
  v9 = vandq_s8(a1[11], v2);
  a1[10] = vandq_s8(a1[10], v2);
  a1[11] = v9;
  v10 = vandq_s8(a1[13], v2);
  a1[12] = vandq_s8(a1[12], v2);
  a1[13] = v10;
  v11 = vandq_s8(a1[15], v2);
  a1[14] = vandq_s8(a1[14], v2);
  a1[15] = v11;
  v12 = vandq_s8(a1[17], v2);
  a1[16] = vandq_s8(a1[16], v2);
  a1[17] = v12;
  v13 = vandq_s8(a1[19], v2);
  a1[18] = vandq_s8(a1[18], v2);
  a1[19] = v13;
  v14 = vandq_s8(a1[21], v2);
  a1[20] = vandq_s8(a1[20], v2);
  a1[21] = v14;
  v15 = vandq_s8(a1[23], v2);
  a1[22] = vandq_s8(a1[22], v2);
  a1[23] = v15;
  v16 = vandq_s8(a1[25], v2);
  a1[24] = vandq_s8(a1[24], v2);
  a1[25] = v16;
  v17 = vandq_s8(a1[27], v2);
  a1[26] = vandq_s8(a1[26], v2);
  a1[27] = v17;
  v18 = vandq_s8(a1[29], v2);
  a1[28] = vandq_s8(a1[28], v2);
  a1[29] = v18;
  v19 = vandq_s8(a1[31], v2);
  a1[30] = vandq_s8(a1[30], v2);
  a1[31] = v19;
  v20 = vandq_s8(a1[33], v2);
  a1[32] = vandq_s8(a1[32], v2);
  a1[33] = v20;
  v21 = vandq_s8(a1[35], v2);
  a1[34] = vandq_s8(a1[34], v2);
  a1[35] = v21;
  v22 = vandq_s8(a1[37], v2);
  a1[36] = vandq_s8(a1[36], v2);
  a1[37] = v22;
  v23 = vandq_s8(a1[39], v2);
  a1[38] = vandq_s8(a1[38], v2);
  a1[39] = v23;
  v24 = vandq_s8(a1[41], v2);
  a1[40] = vandq_s8(a1[40], v2);
  a1[41] = v24;
  v25 = vandq_s8(a1[43], v2);
  a1[42] = vandq_s8(a1[42], v2);
  a1[43] = v25;
  v26 = vandq_s8(a1[45], v2);
  a1[44] = vandq_s8(a1[44], v2);
  a1[45] = v26;
  v27 = vandq_s8(a1[47], v2);
  a1[46] = vandq_s8(a1[46], v2);
  a1[47] = v27;
  v28 = vandq_s8(a1[49], v2);
  a1[48] = vandq_s8(a1[48], v2);
  a1[49] = v28;
  result = vandq_s8(a1[50], v2);
  a1[50] = result;
  a1[51].i64[0] = v1;
  a1[51].i64[1] = v3;
  return result;
}

int8x16_t sub_242E41810(int8x16_t *a1)
{
  v1 = a1[51].i64[0] & 0xFFFFFFFFFFFFFF8;
  v2 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  v3 = a1[51].i64[1] & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
  v4 = vandq_s8(a1[1], v2);
  *a1 = vandq_s8(*a1, v2);
  a1[1] = v4;
  v5 = vandq_s8(a1[3], v2);
  a1[2] = vandq_s8(a1[2], v2);
  a1[3] = v5;
  v6 = vandq_s8(a1[5], v2);
  a1[4] = vandq_s8(a1[4], v2);
  a1[5] = v6;
  v7 = vandq_s8(a1[7], v2);
  a1[6] = vandq_s8(a1[6], v2);
  a1[7] = v7;
  v8 = vandq_s8(a1[9], v2);
  a1[8] = vandq_s8(a1[8], v2);
  a1[9] = v8;
  v9 = vandq_s8(a1[11], v2);
  a1[10] = vandq_s8(a1[10], v2);
  a1[11] = v9;
  v10 = vandq_s8(a1[13], v2);
  a1[12] = vandq_s8(a1[12], v2);
  a1[13] = v10;
  v11 = vandq_s8(a1[15], v2);
  a1[14] = vandq_s8(a1[14], v2);
  a1[15] = v11;
  v12 = vandq_s8(a1[17], v2);
  a1[16] = vandq_s8(a1[16], v2);
  a1[17] = v12;
  v13 = vandq_s8(a1[19], v2);
  a1[18] = vandq_s8(a1[18], v2);
  a1[19] = v13;
  v14 = vandq_s8(a1[21], v2);
  a1[20] = vandq_s8(a1[20], v2);
  a1[21] = v14;
  v15 = vandq_s8(a1[23], v2);
  a1[22] = vandq_s8(a1[22], v2);
  a1[23] = v15;
  v16 = vandq_s8(a1[25], v2);
  a1[24] = vandq_s8(a1[24], v2);
  a1[25] = v16;
  v17 = vandq_s8(a1[27], v2);
  a1[26] = vandq_s8(a1[26], v2);
  a1[27] = v17;
  v18 = vandq_s8(a1[29], v2);
  a1[28] = vandq_s8(a1[28], v2);
  a1[29] = v18;
  v19 = vandq_s8(a1[31], v2);
  a1[30] = vandq_s8(a1[30], v2);
  a1[31] = v19;
  v20 = vandq_s8(a1[33], v2);
  a1[32] = vandq_s8(a1[32], v2);
  a1[33] = v20;
  v21 = vandq_s8(a1[35], v2);
  a1[34] = vandq_s8(a1[34], v2);
  a1[35] = v21;
  v22 = vandq_s8(a1[37], v2);
  a1[36] = vandq_s8(a1[36], v2);
  a1[37] = v22;
  v23 = vandq_s8(a1[39], v2);
  a1[38] = vandq_s8(a1[38], v2);
  a1[39] = v23;
  v24 = vandq_s8(a1[41], v2);
  a1[40] = vandq_s8(a1[40], v2);
  a1[41] = v24;
  v25 = vandq_s8(a1[43], v2);
  a1[42] = vandq_s8(a1[42], v2);
  a1[43] = v25;
  v26 = vandq_s8(a1[45], v2);
  a1[44] = vandq_s8(a1[44], v2);
  a1[45] = v26;
  v27 = vandq_s8(a1[47], v2);
  a1[46] = vandq_s8(a1[46], v2);
  a1[47] = v27;
  v28 = vandq_s8(a1[49], v2);
  a1[48] = vandq_s8(a1[48], v2);
  a1[49] = v28;
  result = vandq_s8(a1[50], v2);
  a1[50] = result;
  a1[51].i64[0] = v1;
  a1[51].i64[1] = v3;
  return result;
}

int8x16_t sub_242E419D4(int8x16_t *a1)
{
  v1 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  v2 = vandq_s8(a1[1], v1);
  *a1 = vandq_s8(*a1, v1);
  a1[1] = v2;
  v3 = vandq_s8(a1[3], v1);
  a1[2] = vandq_s8(a1[2], v1);
  a1[3] = v3;
  v4 = vandq_s8(a1[5], v1);
  a1[4] = vandq_s8(a1[4], v1);
  a1[5] = v4;
  v5 = vandq_s8(a1[7], v1);
  a1[6] = vandq_s8(a1[6], v1);
  a1[7] = v5;
  v6 = vandq_s8(a1[9], v1);
  a1[8] = vandq_s8(a1[8], v1);
  a1[9] = v6;
  v7 = vandq_s8(a1[11], v1);
  a1[10] = vandq_s8(a1[10], v1);
  a1[11] = v7;
  v8 = vandq_s8(a1[13], v1);
  a1[12] = vandq_s8(a1[12], v1);
  a1[13] = v8;
  v9 = vandq_s8(a1[15], v1);
  a1[14] = vandq_s8(a1[14], v1);
  a1[15] = v9;
  v10 = vandq_s8(a1[17], v1);
  a1[16] = vandq_s8(a1[16], v1);
  a1[17] = v10;
  v11 = vandq_s8(a1[19], v1);
  a1[18] = vandq_s8(a1[18], v1);
  a1[19] = v11;
  v12 = vandq_s8(a1[21], v1);
  a1[20] = vandq_s8(a1[20], v1);
  a1[21] = v12;
  v13 = vandq_s8(a1[23], v1);
  a1[22] = vandq_s8(a1[22], v1);
  a1[23] = v13;
  v14 = vandq_s8(a1[25], v1);
  a1[24] = vandq_s8(a1[24], v1);
  a1[25] = v14;
  v15 = vandq_s8(a1[27], v1);
  a1[26] = vandq_s8(a1[26], v1);
  a1[27] = v15;
  v16 = vandq_s8(a1[29], v1);
  a1[28] = vandq_s8(a1[28], v1);
  a1[29] = v16;
  v17 = vandq_s8(a1[31], v1);
  a1[30] = vandq_s8(a1[30], v1);
  a1[31] = v17;
  v18 = vandq_s8(a1[33], v1);
  a1[32] = vandq_s8(a1[32], v1);
  a1[33] = v18;
  v19 = vandq_s8(a1[35], v1);
  a1[34] = vandq_s8(a1[34], v1);
  a1[35] = v19;
  v20 = vandq_s8(a1[37], v1);
  a1[36] = vandq_s8(a1[36], v1);
  a1[37] = v20;
  v21 = vandq_s8(a1[39], v1);
  a1[38] = vandq_s8(a1[38], v1);
  a1[39] = v21;
  v22 = vandq_s8(a1[41], v1);
  a1[40] = vandq_s8(a1[40], v1);
  a1[41] = v22;
  v23 = vandq_s8(a1[43], v1);
  a1[42] = vandq_s8(a1[42], v1);
  a1[43] = v23;
  v24 = vandq_s8(a1[45], v1);
  a1[44] = vandq_s8(a1[44], v1);
  a1[45] = v24;
  v25 = vandq_s8(a1[47], v1);
  a1[46] = vandq_s8(a1[46], v1);
  a1[47] = v25;
  v26 = vandq_s8(a1[49], v1);
  a1[48] = vandq_s8(a1[48], v1);
  a1[49] = v26;
  v27 = vandq_s8(a1[50], v1);
  result = vandq_s8(a1[51], v1);
  a1[50] = v27;
  a1[51] = result;
  return result;
}

unint64_t sub_242E41BF8()
{
  result = qword_27ECF96D8;
  if (!qword_27ECF96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF96D8);
  }

  return result;
}

unint64_t sub_242E41C50()
{
  result = qword_27ECF96E0[0];
  if (!qword_27ECF96E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF96E0);
  }

  return result;
}

uint64_t sub_242E41D14()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E41D84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_242E41ED4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_242E420F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 832))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) | (*(a1 + 24) >> 36) & 0xF000000 | ((*(a1 + 24) & 7) << 21) | (*(a1 + 32) >> 29) & 0x80000000 | ((*(a1 + 32) & 7) << 28);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

__n128 sub_242E4219C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 824) = 0;
    result.n128_u64[0] = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 808) = 0u;
    *(a1 + 792) = 0u;
    *(a1 + 776) = 0u;
    *(a1 + 760) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 832) = 1;
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
      v4 = -a2;
      v5 = vdupq_n_s64(v4);
      *a1 = (v4 | (v4 << 57)) & 0xF000000000000007;
      v6 = vdupq_n_s64(7uLL);
      *(a1 + 8) = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_242F3A9A0), v6), vandq_s8(vshlq_u64(v5, xmmword_242F3A9B0), vdupq_n_s64(0xF000000000000000)));
      v7 = vdupq_n_s64(0x1000000000000000uLL);
      v7.i64[0] = (v4 << 36) & 0xF000000000000000;
      *(a1 + 24) = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_242F3A9C0), v6), v7);
      bzero((a1 + 40), 0x318uLL);
      return result;
    }

    *(a1 + 832) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_242E42330(int8x16_t *a1, uint64_t a2)
{
  if (a2 < 3)
  {
    v4 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
    v5 = a1[51].i64[0] & 0xFFFFFFFFFFFFFF8;
    v6 = a1[51].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    v7 = vandq_s8(a1[1], v4);
    *a1 = vandq_s8(*a1, v4);
    a1[1] = v7;
    v8 = vandq_s8(a1[3], v4);
    a1[2] = vandq_s8(a1[2], v4);
    a1[3] = v8;
    v9 = vandq_s8(a1[5], v4);
    a1[4] = vandq_s8(a1[4], v4);
    a1[5] = v9;
    v10 = vandq_s8(a1[7], v4);
    a1[6] = vandq_s8(a1[6], v4);
    a1[7] = v10;
    v11 = vandq_s8(a1[9], v4);
    a1[8] = vandq_s8(a1[8], v4);
    a1[9] = v11;
    v12 = vandq_s8(a1[11], v4);
    a1[10] = vandq_s8(a1[10], v4);
    a1[11] = v12;
    v13 = vandq_s8(a1[13], v4);
    a1[12] = vandq_s8(a1[12], v4);
    a1[13] = v13;
    v14 = vandq_s8(a1[15], v4);
    a1[14] = vandq_s8(a1[14], v4);
    a1[15] = v14;
    v15 = vandq_s8(a1[17], v4);
    a1[16] = vandq_s8(a1[16], v4);
    a1[17] = v15;
    v16 = vandq_s8(a1[19], v4);
    a1[18] = vandq_s8(a1[18], v4);
    a1[19] = v16;
    v17 = vandq_s8(a1[21], v4);
    a1[20] = vandq_s8(a1[20], v4);
    a1[21] = v17;
    v18 = vandq_s8(a1[23], v4);
    a1[22] = vandq_s8(a1[22], v4);
    a1[23] = v18;
    v19 = vandq_s8(a1[25], v4);
    a1[24] = vandq_s8(a1[24], v4);
    a1[25] = v19;
    v20 = vandq_s8(a1[27], v4);
    a1[26] = vandq_s8(a1[26], v4);
    a1[27] = v20;
    v21 = vandq_s8(a1[29], v4);
    a1[28] = vandq_s8(a1[28], v4);
    a1[29] = v21;
    v22 = vandq_s8(a1[31], v4);
    a1[30] = vandq_s8(a1[30], v4);
    a1[31] = v22;
    v23 = vandq_s8(a1[33], v4);
    a1[32] = vandq_s8(a1[32], v4);
    a1[33] = v23;
    v24 = vandq_s8(a1[35], v4);
    a1[34] = vandq_s8(a1[34], v4);
    a1[35] = v24;
    v25 = vandq_s8(a1[37], v4);
    a1[36] = vandq_s8(a1[36], v4);
    a1[37] = v25;
    v26 = vandq_s8(a1[39], v4);
    a1[38] = vandq_s8(a1[38], v4);
    a1[39] = v26;
    v27 = vandq_s8(a1[41], v4);
    a1[40] = vandq_s8(a1[40], v4);
    a1[41] = v27;
    v28 = vandq_s8(a1[43], v4);
    a1[42] = vandq_s8(a1[42], v4);
    a1[43] = v28;
    v29 = vandq_s8(a1[45], v4);
    a1[44] = vandq_s8(a1[44], v4);
    a1[45] = v29;
    v30 = vandq_s8(a1[47], v4);
    a1[46] = vandq_s8(a1[46], v4);
    a1[47] = v30;
    v31 = vandq_s8(a1[49], v4);
    a1[48] = vandq_s8(a1[48], v4);
    a1[49] = v31;
    result = vandq_s8(a1[50], v4);
    a1[50] = result;
    a1[51].i64[0] = v5;
    a1[51].i64[1] = v6;
  }

  else
  {
    a1->i64[0] = 8 * (a2 - 3);
    bzero(&a1->u64[1], 0x330uLL);
    a1[51].i64[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_242E42564()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DynamicAppearanceValue();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242E425E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v3 = ((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 < 2)
    {
LABEL_26:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_26;
  }

LABEL_15:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_242E42744(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_242E429A4()
{
  result = qword_27ECF99E8;
  if (!qword_27ECF99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF99E8);
  }

  return result;
}

unint64_t sub_242E429FC()
{
  result = qword_27ECF99F0;
  if (!qword_27ECF99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF99F0);
  }

  return result;
}

unint64_t sub_242E42A54()
{
  result = qword_27ECF99F8;
  if (!qword_27ECF99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF99F8);
  }

  return result;
}

unint64_t sub_242E42AAC()
{
  result = qword_27ECF9A00;
  if (!qword_27ECF9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A00);
  }

  return result;
}

unint64_t sub_242E42C54()
{
  result = qword_27ECF9A08;
  if (!qword_27ECF9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A08);
  }

  return result;
}

unint64_t sub_242E42CAC()
{
  result = qword_27ECF9A10;
  if (!qword_27ECF9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A10);
  }

  return result;
}

unint64_t sub_242E42D04()
{
  result = qword_27ECF9A18;
  if (!qword_27ECF9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A18);
  }

  return result;
}

unint64_t sub_242E42D5C()
{
  result = qword_27ECF9A20;
  if (!qword_27ECF9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A20);
  }

  return result;
}

unint64_t sub_242E42DB4()
{
  result = qword_27ECF9A28;
  if (!qword_27ECF9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A28);
  }

  return result;
}

unint64_t sub_242E42E0C()
{
  result = qword_27ECF9A30;
  if (!qword_27ECF9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A30);
  }

  return result;
}

unint64_t sub_242E42E64()
{
  result = qword_27ECF9A38;
  if (!qword_27ECF9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A38);
  }

  return result;
}

unint64_t sub_242E42EBC()
{
  result = qword_27ECF9A40;
  if (!qword_27ECF9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A40);
  }

  return result;
}

unint64_t sub_242E42F14()
{
  result = qword_27ECF9A48;
  if (!qword_27ECF9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A48);
  }

  return result;
}

unint64_t sub_242E42F6C()
{
  result = qword_27ECF9A50;
  if (!qword_27ECF9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A50);
  }

  return result;
}

uint64_t sub_242E42FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144656C676E6973 && a2 == 0xEA00000000006B72;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C656C676E6973 && a2 == 0xEB00000000746867 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5C790 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E43138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotificationModel.Text.title.getter()
{
  if (*(v0 + 32) > 1u)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t NotificationModel.Text.body.getter()
{
  v1 = *(v0 + 32);
  if (*(v0 + 32))
  {
    v2 = (v0 + 16);
    if (v1 != 1)
    {
      v2 = v0;
    }

    v1 = *v2;
  }

  return v1;
}

uint64_t static NotificationModel.validateSymbol(symbol:automakerSymbolValidator:)(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v6 = *a1;
    v7 = objc_opt_self();

    v8 = sub_242F04F00();
    v9 = [v7 _systemImageNamed_];

    if (v9)
    {
    }

    else if (!a2 || (, v11 = a2(v6, v3), sub_242D0DC4C(a2, a3), (v11 & 1) == 0))
    {

      v10 = v6;
      goto LABEL_9;
    }

    v10 = 0;
LABEL_9:
    sub_242CD54A4(v6, v3);
    return v10;
  }

  return 0;
}

uint64_t NotificationModel.Text.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_242F05A80();

  strcpy(v7, "Text(title: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  if (v5)
  {
    if (v5 == 1)
    {

      MEMORY[0x245D26660](v1, v2);

      MEMORY[0x245D26660](0x203A79646F62202CLL, 0xE800000000000000);

      v1 = v4;
    }

    else
    {
      MEMORY[0x245D26660](7104878, 0xE300000000000000);

      MEMORY[0x245D26660](0x203A79646F62202CLL, 0xE800000000000000);

      v3 = v2;
    }
  }

  else
  {

    MEMORY[0x245D26660](v1, v2);

    MEMORY[0x245D26660](0x203A79646F62202CLL, 0xE800000000000000);
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x245D26660](v1, v3);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return v7[0];
}

uint64_t NotificationModel.Symbol.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F05A80();

  strcpy(v8, "Symbol(name: ");
  HIWORD(v8[1]) = -4864;
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](0x3A726F6C6F63202CLL, 0xE900000000000020);
  if (v3)
  {
    v4 = sub_242F046F0();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x245D26660](v4, v6);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return v8[0];
}

uint64_t NotificationModel.Symbol.init(name:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 NotificationModel.init(id:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 112);
  *(a4 + 112) = *(a3 + 96);
  *(a4 + 128) = v4;
  *(a4 + 144) = *(a3 + 128);
  v5 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v5;
  v6 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v6;
  result = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = result;
  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a4;
  a5[2] = sub_242D5A6E0;
  a5[3] = result;
  return result;
}

uint64_t NotificationModel.isFocusable.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128);
  v46 = *(v0 + 112);
  v47 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v42 = *(v0 + 48);
  v43 = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 96);
  v44 = *(v0 + 80);
  v45 = v6;
  v7 = *(v0 + 32);
  v41[0] = *(v0 + 16);
  v41[1] = v7;
  v8 = *(v0 + 128);
  v49[6] = v46;
  v49[7] = v8;
  v49[2] = v42;
  v49[3] = v5;
  v49[4] = v44;
  v49[5] = v1;
  v48 = *(v0 + 144);
  v50 = *(v0 + 144);
  v49[0] = v41[0];
  v49[1] = v3;
  v9 = sub_242D3A260(v49);
  v10 = sub_242C578A0(v49);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = &type metadata for NotificationModel.FancyModel;
      v39 = &type metadata for NotificationModel.FancyModel;
      v12 = sub_242D3A370();
      v40 = v12;
      v19 = swift_allocObject();
      v38[0] = v19;
      v20 = *(v10 + 112);
      v22 = *(v10 + 64);
      v21 = *(v10 + 80);
      v19[7] = *(v10 + 96);
      v19[8] = v20;
      v19[5] = v22;
      v19[6] = v21;
      v23 = *(v10 + 48);
      v25 = *v10;
      v24 = *(v10 + 16);
      v19[3] = *(v10 + 32);
      v19[4] = v23;
      v19[1] = v25;
      v19[2] = v24;
      goto LABEL_9;
    }

    v11 = &type metadata for NotificationModel.InferredNotificationModel;
    v39 = &type metadata for NotificationModel.InferredNotificationModel;
    v12 = sub_242D3A26C();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    v28 = *(v10 + 96);
    v27 = *(v10 + 112);
    v29 = *(v10 + 80);
    *(v26 + 144) = *(v10 + 128);
    *(v26 + 112) = v28;
    *(v26 + 128) = v27;
    *(v26 + 96) = v29;
LABEL_8:
    *(v26 + 16) = *v10;
    v30 = *(v10 + 64);
    v32 = *(v10 + 16);
    v31 = *(v10 + 32);
    *(v26 + 64) = *(v10 + 48);
    *(v26 + 80) = v30;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = &type metadata for NotificationModel.ModalAlertModel;
    v39 = &type metadata for NotificationModel.ModalAlertModel;
    v12 = sub_242D3A418();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    goto LABEL_8;
  }

  v11 = &type metadata for NotificationModel.MinimalNotificationModel;
  v39 = &type metadata for NotificationModel.MinimalNotificationModel;
  v12 = sub_242D3A3C4();
  v40 = v12;
  v13 = swift_allocObject();
  v38[0] = v13;
  v14 = *(v10 + 96);
  v16 = *(v10 + 48);
  v15 = *(v10 + 64);
  v13[6] = *(v10 + 80);
  v13[7] = v14;
  v13[4] = v16;
  v13[5] = v15;
  v18 = *(v10 + 16);
  v17 = *(v10 + 32);
  v13[1] = *v10;
  v13[2] = v18;
  v13[3] = v17;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v38, v11);
  v33 = *(v12 + 8);
  v34 = *(v33 + 8);
  sub_242D3A2C0(v41, &v37);
  v35 = v34(v11, v33);
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  return v35 & 1;
}

uint64_t (*NotificationModel.TrailingButtonConfiguration.handler.getter())()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242D5A674;
}

uint64_t NotificationModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationModel.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 128);
  v20 = *(v1 + 112);
  v21 = v3;
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v16 = *(v1 + 48);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 96);
  v18 = *(v1 + 80);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 32);
  v15[0] = *(v1 + 16);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 128);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 144);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_242D3A2C0(v15, v14);
}

__n128 NotificationModel.style.setter(uint64_t a1)
{
  v3 = *(v1 + 128);
  v11[6] = *(v1 + 112);
  v11[7] = v3;
  v12 = *(v1 + 144);
  v4 = *(v1 + 64);
  v11[2] = *(v1 + 48);
  v11[3] = v4;
  v5 = *(v1 + 96);
  v11[4] = *(v1 + 80);
  v11[5] = v5;
  v6 = *(v1 + 32);
  v11[0] = *(v1 + 16);
  v11[1] = v6;
  sub_242E468BC(v11);
  v7 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v7;
  *(v1 + 144) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v8;
  v9 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v9;
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t NotificationModel.Style.isFocusable.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v46 = *(v0 + 96);
  v47 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v42 = *(v0 + 32);
  v43 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v44 = *(v0 + 64);
  v45 = v6;
  v7 = *(v0 + 16);
  v41[0] = *v0;
  v41[1] = v7;
  v8 = *(v0 + 112);
  v49[6] = v46;
  v49[7] = v8;
  v49[2] = v42;
  v49[3] = v5;
  v49[4] = v44;
  v49[5] = v1;
  v48 = *(v0 + 128);
  v50 = *(v0 + 128);
  v49[0] = v41[0];
  v49[1] = v3;
  v9 = sub_242D3A260(v49);
  v10 = sub_242C578A0(v49);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = &type metadata for NotificationModel.FancyModel;
      v39 = &type metadata for NotificationModel.FancyModel;
      v12 = sub_242D3A370();
      v40 = v12;
      v19 = swift_allocObject();
      v38[0] = v19;
      v20 = *(v10 + 112);
      v22 = *(v10 + 64);
      v21 = *(v10 + 80);
      v19[7] = *(v10 + 96);
      v19[8] = v20;
      v19[5] = v22;
      v19[6] = v21;
      v23 = *(v10 + 48);
      v25 = *v10;
      v24 = *(v10 + 16);
      v19[3] = *(v10 + 32);
      v19[4] = v23;
      v19[1] = v25;
      v19[2] = v24;
      goto LABEL_9;
    }

    v11 = &type metadata for NotificationModel.InferredNotificationModel;
    v39 = &type metadata for NotificationModel.InferredNotificationModel;
    v12 = sub_242D3A26C();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    v28 = *(v10 + 96);
    v27 = *(v10 + 112);
    v29 = *(v10 + 80);
    *(v26 + 144) = *(v10 + 128);
    *(v26 + 112) = v28;
    *(v26 + 128) = v27;
    *(v26 + 96) = v29;
LABEL_8:
    *(v26 + 16) = *v10;
    v30 = *(v10 + 64);
    v32 = *(v10 + 16);
    v31 = *(v10 + 32);
    *(v26 + 64) = *(v10 + 48);
    *(v26 + 80) = v30;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = &type metadata for NotificationModel.ModalAlertModel;
    v39 = &type metadata for NotificationModel.ModalAlertModel;
    v12 = sub_242D3A418();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    goto LABEL_8;
  }

  v11 = &type metadata for NotificationModel.MinimalNotificationModel;
  v39 = &type metadata for NotificationModel.MinimalNotificationModel;
  v12 = sub_242D3A3C4();
  v40 = v12;
  v13 = swift_allocObject();
  v38[0] = v13;
  v14 = *(v10 + 96);
  v16 = *(v10 + 48);
  v15 = *(v10 + 64);
  v13[6] = *(v10 + 80);
  v13[7] = v14;
  v13[4] = v16;
  v13[5] = v15;
  v18 = *(v10 + 16);
  v17 = *(v10 + 32);
  v13[1] = *v10;
  v13[2] = v18;
  v13[3] = v17;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v38, v11);
  v33 = *(v12 + 8);
  v34 = *(v33 + 8);
  sub_242D3A2C0(v41, &v37);
  v35 = v34(v11, v33);
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  return v35 & 1;
}

uint64_t sub_242E43D70()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128);
  v46 = *(v0 + 112);
  v47 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v42 = *(v0 + 48);
  v43 = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 96);
  v44 = *(v0 + 80);
  v45 = v6;
  v7 = *(v0 + 32);
  v41[0] = *(v0 + 16);
  v41[1] = v7;
  v8 = *(v0 + 128);
  v49[6] = v46;
  v49[7] = v8;
  v49[2] = v42;
  v49[3] = v5;
  v49[4] = v44;
  v49[5] = v1;
  v48 = *(v0 + 144);
  v50 = *(v0 + 144);
  v49[0] = v41[0];
  v49[1] = v3;
  v9 = sub_242D3A260(v49);
  v10 = sub_242C578A0(v49);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = &type metadata for NotificationModel.FancyModel;
      v39 = &type metadata for NotificationModel.FancyModel;
      v12 = sub_242D3A370();
      v40 = v12;
      v19 = swift_allocObject();
      v38[0] = v19;
      v20 = *(v10 + 112);
      v22 = *(v10 + 64);
      v21 = *(v10 + 80);
      v19[7] = *(v10 + 96);
      v19[8] = v20;
      v19[5] = v22;
      v19[6] = v21;
      v23 = *(v10 + 48);
      v25 = *v10;
      v24 = *(v10 + 16);
      v19[3] = *(v10 + 32);
      v19[4] = v23;
      v19[1] = v25;
      v19[2] = v24;
      goto LABEL_9;
    }

    v11 = &type metadata for NotificationModel.InferredNotificationModel;
    v39 = &type metadata for NotificationModel.InferredNotificationModel;
    v12 = sub_242D3A26C();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    v28 = *(v10 + 96);
    v27 = *(v10 + 112);
    v29 = *(v10 + 80);
    *(v26 + 144) = *(v10 + 128);
    *(v26 + 112) = v28;
    *(v26 + 128) = v27;
    *(v26 + 96) = v29;
LABEL_8:
    *(v26 + 16) = *v10;
    v30 = *(v10 + 64);
    v32 = *(v10 + 16);
    v31 = *(v10 + 32);
    *(v26 + 64) = *(v10 + 48);
    *(v26 + 80) = v30;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = &type metadata for NotificationModel.ModalAlertModel;
    v39 = &type metadata for NotificationModel.ModalAlertModel;
    v12 = sub_242D3A418();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    goto LABEL_8;
  }

  v11 = &type metadata for NotificationModel.MinimalNotificationModel;
  v39 = &type metadata for NotificationModel.MinimalNotificationModel;
  v12 = sub_242D3A3C4();
  v40 = v12;
  v13 = swift_allocObject();
  v38[0] = v13;
  v14 = *(v10 + 96);
  v16 = *(v10 + 48);
  v15 = *(v10 + 64);
  v13[6] = *(v10 + 80);
  v13[7] = v14;
  v13[4] = v16;
  v13[5] = v15;
  v18 = *(v10 + 16);
  v17 = *(v10 + 32);
  v13[1] = *v10;
  v13[2] = v18;
  v13[3] = v17;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v38, v11);
  v33 = *(v12 + 8);
  v34 = *(v33 + 8);
  sub_242D3A2C0(v41, &v37);
  v35 = v34(v11, v33);
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  return v35 & 1;
}

uint64_t NotificationModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v46 = *(v0 + 7);
  v47 = v3;
  v48 = v0[18];
  v4 = *(v0 + 4);
  v42 = *(v0 + 3);
  v43 = v4;
  v5 = *(v0 + 6);
  v44 = *(v0 + 5);
  v45 = v5;
  v6 = *(v0 + 2);
  v40 = *(v0 + 1);
  v41 = v6;
  v38 = 540697705;
  v39 = 0xE400000000000000;
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](32, 0xE100000000000000);
  v49[6] = v46;
  v49[7] = v47;
  v50 = v48;
  v49[2] = v42;
  v49[3] = v43;
  v49[4] = v44;
  v49[5] = v45;
  v49[0] = v40;
  v49[1] = v41;
  v7 = sub_242D3A260(v49);
  v8 = sub_242C578A0(v49);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = &type metadata for NotificationModel.FancyModel;
      v36 = &type metadata for NotificationModel.FancyModel;
      v37 = sub_242D3A370();
      v16 = swift_allocObject();
      v35[0] = v16;
      v17 = *(v8 + 112);
      v19 = *(v8 + 64);
      v18 = *(v8 + 80);
      v16[7] = *(v8 + 96);
      v16[8] = v17;
      v16[5] = v19;
      v16[6] = v18;
      v20 = *(v8 + 48);
      v22 = *v8;
      v21 = *(v8 + 16);
      v16[3] = *(v8 + 32);
      v16[4] = v20;
      v16[1] = v22;
      v16[2] = v21;
      goto LABEL_9;
    }

    v9 = &type metadata for NotificationModel.InferredNotificationModel;
    v36 = &type metadata for NotificationModel.InferredNotificationModel;
    v37 = sub_242D3A26C();
    v23 = swift_allocObject();
    v35[0] = v23;
    v25 = *(v8 + 96);
    v24 = *(v8 + 112);
    v26 = *(v8 + 80);
    *(v23 + 144) = *(v8 + 128);
    *(v23 + 112) = v25;
    *(v23 + 128) = v24;
    *(v23 + 96) = v26;
LABEL_8:
    *(v23 + 16) = *v8;
    v27 = *(v8 + 64);
    v29 = *(v8 + 16);
    v28 = *(v8 + 32);
    *(v23 + 64) = *(v8 + 48);
    *(v23 + 80) = v27;
    *(v23 + 32) = v29;
    *(v23 + 48) = v28;
    goto LABEL_9;
  }

  if (v7)
  {
    v9 = &type metadata for NotificationModel.ModalAlertModel;
    v36 = &type metadata for NotificationModel.ModalAlertModel;
    v37 = sub_242D3A418();
    v23 = swift_allocObject();
    v35[0] = v23;
    goto LABEL_8;
  }

  v9 = &type metadata for NotificationModel.MinimalNotificationModel;
  v36 = &type metadata for NotificationModel.MinimalNotificationModel;
  v37 = sub_242D3A3C4();
  v10 = swift_allocObject();
  v35[0] = v10;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  v10[6] = *(v8 + 80);
  v10[7] = v11;
  v10[4] = v13;
  v10[5] = v12;
  v15 = *(v8 + 16);
  v14 = *(v8 + 32);
  v10[1] = *v8;
  v10[2] = v15;
  v10[3] = v14;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v35, v9);
  sub_242D3A2C0(&v40, &v34);
  v30 = sub_242F05F60();
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_2Tm(v35);
  MEMORY[0x245D26660](v30, v32);

  return v38;
}

uint64_t NotificationModel.Style.description.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v43 = *(v0 + 96);
  v44 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v39 = *(v0 + 32);
  v40 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v41 = *(v0 + 64);
  v42 = v6;
  v7 = *(v0 + 16);
  v38[0] = *v0;
  v38[1] = v7;
  v8 = *(v0 + 112);
  v46[6] = v43;
  v46[7] = v8;
  v46[2] = v39;
  v46[3] = v5;
  v46[4] = v41;
  v46[5] = v1;
  v45 = *(v0 + 128);
  v47 = *(v0 + 128);
  v46[0] = v38[0];
  v46[1] = v3;
  v9 = sub_242D3A260(v46);
  v10 = sub_242C578A0(v46);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = &type metadata for NotificationModel.FancyModel;
      v36 = &type metadata for NotificationModel.FancyModel;
      v37 = sub_242D3A370();
      v18 = swift_allocObject();
      v35[0] = v18;
      v19 = *(v10 + 112);
      v21 = *(v10 + 64);
      v20 = *(v10 + 80);
      v18[7] = *(v10 + 96);
      v18[8] = v19;
      v18[5] = v21;
      v18[6] = v20;
      v22 = *(v10 + 48);
      v24 = *v10;
      v23 = *(v10 + 16);
      v18[3] = *(v10 + 32);
      v18[4] = v22;
      v18[1] = v24;
      v18[2] = v23;
      goto LABEL_9;
    }

    v11 = &type metadata for NotificationModel.InferredNotificationModel;
    v36 = &type metadata for NotificationModel.InferredNotificationModel;
    v37 = sub_242D3A26C();
    v25 = swift_allocObject();
    v35[0] = v25;
    v27 = *(v10 + 96);
    v26 = *(v10 + 112);
    v28 = *(v10 + 80);
    *(v25 + 144) = *(v10 + 128);
    *(v25 + 112) = v27;
    *(v25 + 128) = v26;
    *(v25 + 96) = v28;
LABEL_8:
    *(v25 + 16) = *v10;
    v29 = *(v10 + 64);
    v31 = *(v10 + 16);
    v30 = *(v10 + 32);
    *(v25 + 64) = *(v10 + 48);
    *(v25 + 80) = v29;
    *(v25 + 32) = v31;
    *(v25 + 48) = v30;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = &type metadata for NotificationModel.ModalAlertModel;
    v36 = &type metadata for NotificationModel.ModalAlertModel;
    v37 = sub_242D3A418();
    v25 = swift_allocObject();
    v35[0] = v25;
    goto LABEL_8;
  }

  v11 = &type metadata for NotificationModel.MinimalNotificationModel;
  v36 = &type metadata for NotificationModel.MinimalNotificationModel;
  v37 = sub_242D3A3C4();
  v12 = swift_allocObject();
  v35[0] = v12;
  v13 = *(v10 + 96);
  v15 = *(v10 + 48);
  v14 = *(v10 + 64);
  v12[6] = *(v10 + 80);
  v12[7] = v13;
  v12[4] = v15;
  v12[5] = v14;
  v17 = *(v10 + 16);
  v16 = *(v10 + 32);
  v12[1] = *v10;
  v12[2] = v17;
  v12[3] = v16;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v35, v11);
  sub_242D3A2C0(v38, &v34);
  v32 = sub_242F05F60();
  __swift_destroy_boxed_opaque_existential_2Tm(v35);
  return v32;
}

uint64_t NotificationModel.Style.validate(errors:automakerSymbolValidator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v51 = *(v3 + 96);
  v52 = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v47 = *(v3 + 32);
  v48 = v10;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v49 = *(v3 + 64);
  v50 = v12;
  v13 = *(v3 + 16);
  v46[0] = *v3;
  v46[1] = v13;
  v14 = *(v3 + 112);
  v54[6] = v51;
  v54[7] = v14;
  v54[2] = v47;
  v54[3] = v11;
  v54[4] = v49;
  v54[5] = v7;
  v53 = *(v3 + 128);
  v55 = *(v3 + 128);
  v54[0] = v46[0];
  v54[1] = v9;
  v15 = sub_242D3A260(v54);
  v16 = sub_242C578A0(v54);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = &type metadata for NotificationModel.FancyModel;
      v44 = &type metadata for NotificationModel.FancyModel;
      v18 = sub_242D3A370();
      v45 = v18;
      v25 = swift_allocObject();
      v43[0] = v25;
      v26 = *(v16 + 112);
      v28 = *(v16 + 64);
      v27 = *(v16 + 80);
      v25[7] = *(v16 + 96);
      v25[8] = v26;
      v25[5] = v28;
      v25[6] = v27;
      v29 = *(v16 + 48);
      v31 = *v16;
      v30 = *(v16 + 16);
      v25[3] = *(v16 + 32);
      v25[4] = v29;
      v25[1] = v31;
      v25[2] = v30;
      goto LABEL_9;
    }

    v17 = &type metadata for NotificationModel.InferredNotificationModel;
    v44 = &type metadata for NotificationModel.InferredNotificationModel;
    v18 = sub_242D3A26C();
    v45 = v18;
    v32 = swift_allocObject();
    v43[0] = v32;
    v34 = *(v16 + 96);
    v33 = *(v16 + 112);
    v35 = *(v16 + 80);
    *(v32 + 144) = *(v16 + 128);
    *(v32 + 112) = v34;
    *(v32 + 128) = v33;
    *(v32 + 96) = v35;
LABEL_8:
    *(v32 + 16) = *v16;
    v36 = *(v16 + 64);
    v38 = *(v16 + 16);
    v37 = *(v16 + 32);
    *(v32 + 64) = *(v16 + 48);
    *(v32 + 80) = v36;
    *(v32 + 32) = v38;
    *(v32 + 48) = v37;
    goto LABEL_9;
  }

  if (v15)
  {
    v17 = &type metadata for NotificationModel.ModalAlertModel;
    v44 = &type metadata for NotificationModel.ModalAlertModel;
    v18 = sub_242D3A418();
    v45 = v18;
    v32 = swift_allocObject();
    v43[0] = v32;
    goto LABEL_8;
  }

  v17 = &type metadata for NotificationModel.MinimalNotificationModel;
  v44 = &type metadata for NotificationModel.MinimalNotificationModel;
  v18 = sub_242D3A3C4();
  v45 = v18;
  v19 = swift_allocObject();
  v43[0] = v19;
  v20 = *(v16 + 96);
  v22 = *(v16 + 48);
  v21 = *(v16 + 64);
  v19[6] = *(v16 + 80);
  v19[7] = v20;
  v19[4] = v22;
  v19[5] = v21;
  v24 = *(v16 + 16);
  v23 = *(v16 + 32);
  v19[1] = *v16;
  v19[2] = v24;
  v19[3] = v23;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v43, v17);
  v39 = *(v18 + 32);
  sub_242D3A2C0(v46, &v42);
  v40 = v39(a1, a2, a3, v17, v18);
  __swift_destroy_boxed_opaque_existential_2Tm(v43);
  return v40;
}

void NotificationModel.Style.correct(validationError:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = v2[7];
  v101[6] = v2[6];
  v101[7] = v9;
  v102 = *(v2 + 16);
  v10 = v2[3];
  v101[2] = v2[2];
  v101[3] = v10;
  v11 = v2[5];
  v101[4] = v2[4];
  v101[5] = v11;
  v12 = v2[1];
  v101[0] = *v2;
  v101[1] = v12;
  v13 = sub_242D3A260(v101);
  if (v13 <= 1)
  {
    if (!v13)
    {
      v14 = sub_242C578A0(v101);
      v15 = *(v14 + 16);
      v71 = *v14;
      v72 = v15;
      v16 = *(v14 + 40);
      v73 = *(v14 + 32);
      v18 = *(v14 + 48);
      v17 = *(v14 + 56);
      v19 = *(v14 + 64);
      v20 = *(v14 + 80);
      v61 = *(v14 + 72);
      v62 = *(v14 + 88);
      v70 = *(v14 + 96);
      if (v8 == 1)
      {
        v38 = v19;
        v39 = v20;
        v40 = v2[7];
        v98 = v2[6];
        v99 = v40;
        v100 = *(v2 + 16);
        v41 = v2[3];
        v94 = v2[2];
        v95 = v41;
        v42 = v2[5];
        v96 = v2[4];
        v97 = v42;
        v43 = v2[1];
        v92 = *v2;
        v93 = v43;
        v44 = sub_242C578A0(&v92);
        sub_242E46984(v44, &v83);
        sub_242CD54A4(v16, v18);
        v17 = 0;
        v18 = 0;
        v16 = 0;
      }

      else
      {
        if (v8 == 5)
        {
          if (!(v6 | v4 | v5 | v7) || (v21 = v6 | v4 | v7, (v5 - 1) <= 1) && !v21)
          {
            v74 = v71;
            v75 = v72;
            *&v76 = v73;
            *(&v76 + 1) = v16;
            *&v77 = v18;
            *(&v77 + 1) = v17;
            *&v78 = v19;
            *(&v78 + 1) = v61;
            *&v79 = v20;
            *(&v79 + 1) = v62;
            v80 = v70;
            v22 = *v2;
            v23 = v2[1];
            v24 = v2[3];
            v85 = v2[2];
            v86 = v24;
            v83 = v22;
            v84 = v23;
            v25 = v2[4];
            v26 = v2[5];
            v27 = v2[6];
            v28 = v2[7];
            v91 = *(v2 + 16);
            v89 = v27;
            v90 = v28;
            v87 = v25;
            v88 = v26;
            v29 = sub_242C578A0(&v83);
            sub_242E46984(v29, &v92);
            sub_242E469F4(&v74);
LABEL_14:
            sub_242E46904(&v92);
LABEL_27:
            v58 = v99;
            *(a2 + 96) = v98;
            *(a2 + 112) = v58;
            *(a2 + 128) = v100;
            v59 = v95;
            *(a2 + 32) = v94;
            *(a2 + 48) = v59;
            v60 = v97;
            *(a2 + 64) = v96;
            *(a2 + 80) = v60;
            v37 = v92;
            v36 = v93;
            goto LABEL_28;
          }

          if (v5 == 5 && !v21)
          {
            v45 = v2[7];
            v98 = v2[6];
            v99 = v45;
            v100 = *(v2 + 16);
            v46 = v2[3];
            v94 = v2[2];
            v95 = v46;
            v47 = v2[5];
            v96 = v2[4];
            v97 = v47;
            v48 = v2[1];
            v92 = *v2;
            v93 = v48;
            v49 = v19;
            v50 = sub_242C578A0(&v92);
            sub_242E46984(v50, &v83);
            sub_242D3D654(v49, v61);
            v51 = 0;
            v39 = 0;
            v52 = 0;
            v38 = 0;
LABEL_25:
            v63 = v71;
            v64 = v72;
            v69 = v70;
            *&v65 = v73;
            *(&v65 + 1) = v16;
            *&v66 = v18;
            *(&v66 + 1) = v17;
            *&v67 = v38;
            *(&v67 + 1) = v52;
            *&v68 = v39;
            *(&v68 + 1) = v51;
            v74 = v71;
            v75 = v72;
            *&v76 = v73;
            *(&v76 + 1) = v16;
            *&v77 = v18;
            *(&v77 + 1) = v17;
            *&v78 = v38;
            *(&v78 + 1) = v52;
            *&v79 = v39;
            *(&v79 + 1) = v51;
            v80 = v70;
            sub_242E03284(&v63, &v92);
            sub_242E469F4(&v74);
            v87 = v67;
            v88 = v68;
            v89 = v69;
            v83 = v63;
            v84 = v64;
            v85 = v65;
            v86 = v66;
            sub_242D966F8(&v83);
            goto LABEL_26;
          }
        }

        v38 = v19;
        v39 = v20;
        v53 = v2[7];
        v98 = v2[6];
        v99 = v53;
        v100 = *(v2 + 16);
        v54 = v2[3];
        v94 = v2[2];
        v95 = v54;
        v55 = v2[5];
        v96 = v2[4];
        v97 = v55;
        v56 = v2[1];
        v92 = *v2;
        v93 = v56;
        v57 = sub_242C578A0(&v92);
        sub_242E46984(v57, &v83);
      }

      v52 = v61;
      v51 = v62;
      goto LABEL_25;
    }

    v31 = sub_242C578A0(v101);
    v93 = v31[1];
    v94 = v31[2];
    v95 = v31[3];
    v96 = v31[4];
    v92 = *v31;
    *&v83 = v5;
    *(&v83 + 1) = v4;
    *&v84 = v6;
    *(&v84 + 1) = v7;
    LOBYTE(v85) = v8;
    NotificationModel.ModalAlertModel.correct(validationError:)(&v83, &v74);
    if (!v78)
    {
      goto LABEL_14;
    }

    v83 = v74;
    v84 = v75;
    v85 = v76;
    v86 = v77;
    v87 = v78;
    sub_242E46970(&v83);
LABEL_26:
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v94 = v85;
    v95 = v86;
    v96 = v87;
    v97 = v88;
    v92 = v83;
    v93 = v84;
    nullsub_2(&v92);
    goto LABEL_27;
  }

  if (v13 == 2)
  {
    v30 = sub_242C578A0(v101);
    v96 = v30[4];
    v97 = v30[5];
    v98 = v30[6];
    v99 = v30[7];
    v92 = *v30;
    v93 = v30[1];
    v94 = v30[2];
    v95 = v30[3];
    *&v83 = v5;
    *(&v83 + 1) = v4;
    *&v84 = v6;
    *(&v84 + 1) = v7;
    LOBYTE(v85) = v8;
    NotificationModel.FancyModel.correct(validationError:)(&v83, &v74);
    if (sub_242E46944(&v74) == 1)
    {
      goto LABEL_14;
    }

    v87 = v78;
    v88 = v79;
    v89 = v80;
    v90 = v81;
    v83 = v74;
    v84 = v75;
    v85 = v76;
    v86 = v77;
    sub_242E4695C(&v83);
    goto LABEL_26;
  }

  v32 = sub_242C578A0(v101);
  v88 = *(v32 + 80);
  v89 = *(v32 + 96);
  v90 = *(v32 + 112);
  v91 = *(v32 + 128);
  v84 = *(v32 + 16);
  v85 = *(v32 + 32);
  v86 = *(v32 + 48);
  v87 = *(v32 + 64);
  v83 = *v32;
  *&v74 = v5;
  *(&v74 + 1) = v4;
  *&v75 = v6;
  *(&v75 + 1) = v7;
  LOBYTE(v76) = v8;
  NotificationModel.InferredNotificationModel.correct(validationError:)(&v74, &v92);
  if (sub_242E468EC(&v92) == 1)
  {
    sub_242E46904(&v83);
  }

  else
  {
    v80 = v98;
    v81 = v99;
    v82 = v100;
    v76 = v94;
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v74 = v92;
    v75 = v93;
    sub_242E46930(&v74);
    v89 = v80;
    v90 = v81;
    v91 = v82;
    v85 = v76;
    v86 = v77;
    v87 = v78;
    v88 = v79;
    v83 = v74;
    v84 = v75;
    nullsub_2(&v83);
  }

  v33 = v90;
  *(a2 + 96) = v89;
  *(a2 + 112) = v33;
  *(a2 + 128) = v91;
  v34 = v86;
  *(a2 + 32) = v85;
  *(a2 + 48) = v34;
  v35 = v88;
  *(a2 + 64) = v87;
  *(a2 + 80) = v35;
  v37 = v83;
  v36 = v84;
LABEL_28:
  *a2 = v37;
  *(a2 + 16) = v36;
}

uint64_t sub_242E44C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v51 = *(v3 + 96);
  v52 = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v47 = *(v3 + 32);
  v48 = v10;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v49 = *(v3 + 64);
  v50 = v12;
  v13 = *(v3 + 16);
  v46[0] = *v3;
  v46[1] = v13;
  v14 = *(v3 + 112);
  v54[6] = v51;
  v54[7] = v14;
  v54[2] = v47;
  v54[3] = v11;
  v54[4] = v49;
  v54[5] = v7;
  v53 = *(v3 + 128);
  v55 = *(v3 + 128);
  v54[0] = v46[0];
  v54[1] = v9;
  v15 = sub_242D3A260(v54);
  v16 = sub_242C578A0(v54);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = &type metadata for NotificationModel.FancyModel;
      v44 = &type metadata for NotificationModel.FancyModel;
      v18 = sub_242D3A370();
      v45 = v18;
      v25 = swift_allocObject();
      v43[0] = v25;
      v26 = *(v16 + 112);
      v28 = *(v16 + 64);
      v27 = *(v16 + 80);
      v25[7] = *(v16 + 96);
      v25[8] = v26;
      v25[5] = v28;
      v25[6] = v27;
      v29 = *(v16 + 48);
      v31 = *v16;
      v30 = *(v16 + 16);
      v25[3] = *(v16 + 32);
      v25[4] = v29;
      v25[1] = v31;
      v25[2] = v30;
      goto LABEL_9;
    }

    v17 = &type metadata for NotificationModel.InferredNotificationModel;
    v44 = &type metadata for NotificationModel.InferredNotificationModel;
    v18 = sub_242D3A26C();
    v45 = v18;
    v32 = swift_allocObject();
    v43[0] = v32;
    v34 = *(v16 + 96);
    v33 = *(v16 + 112);
    v35 = *(v16 + 80);
    *(v32 + 144) = *(v16 + 128);
    *(v32 + 112) = v34;
    *(v32 + 128) = v33;
    *(v32 + 96) = v35;
LABEL_8:
    *(v32 + 16) = *v16;
    v36 = *(v16 + 64);
    v38 = *(v16 + 16);
    v37 = *(v16 + 32);
    *(v32 + 64) = *(v16 + 48);
    *(v32 + 80) = v36;
    *(v32 + 32) = v38;
    *(v32 + 48) = v37;
    goto LABEL_9;
  }

  if (v15)
  {
    v17 = &type metadata for NotificationModel.ModalAlertModel;
    v44 = &type metadata for NotificationModel.ModalAlertModel;
    v18 = sub_242D3A418();
    v45 = v18;
    v32 = swift_allocObject();
    v43[0] = v32;
    goto LABEL_8;
  }

  v17 = &type metadata for NotificationModel.MinimalNotificationModel;
  v44 = &type metadata for NotificationModel.MinimalNotificationModel;
  v18 = sub_242D3A3C4();
  v45 = v18;
  v19 = swift_allocObject();
  v43[0] = v19;
  v20 = *(v16 + 96);
  v22 = *(v16 + 48);
  v21 = *(v16 + 64);
  v19[6] = *(v16 + 80);
  v19[7] = v20;
  v19[4] = v22;
  v19[5] = v21;
  v24 = *(v16 + 16);
  v23 = *(v16 + 32);
  v19[1] = *v16;
  v19[2] = v24;
  v19[3] = v23;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v43, v17);
  v39 = *(v18 + 32);
  sub_242D3A2C0(v46, &v42);
  v40 = v39(a1, a2, a3, v17, v18);
  __swift_destroy_boxed_opaque_existential_2Tm(v43);
  return v40;
}

uint64_t sub_242E44EA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v46 = *(v0 + 96);
  v47 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v42 = *(v0 + 32);
  v43 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v44 = *(v0 + 64);
  v45 = v6;
  v7 = *(v0 + 16);
  v41[0] = *v0;
  v41[1] = v7;
  v8 = *(v0 + 112);
  v49[6] = v46;
  v49[7] = v8;
  v49[2] = v42;
  v49[3] = v5;
  v49[4] = v44;
  v49[5] = v1;
  v48 = *(v0 + 128);
  v50 = *(v0 + 128);
  v49[0] = v41[0];
  v49[1] = v3;
  v9 = sub_242D3A260(v49);
  v10 = sub_242C578A0(v49);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = &type metadata for NotificationModel.FancyModel;
      v39 = &type metadata for NotificationModel.FancyModel;
      v12 = sub_242D3A370();
      v40 = v12;
      v19 = swift_allocObject();
      v38[0] = v19;
      v20 = *(v10 + 112);
      v22 = *(v10 + 64);
      v21 = *(v10 + 80);
      v19[7] = *(v10 + 96);
      v19[8] = v20;
      v19[5] = v22;
      v19[6] = v21;
      v23 = *(v10 + 48);
      v25 = *v10;
      v24 = *(v10 + 16);
      v19[3] = *(v10 + 32);
      v19[4] = v23;
      v19[1] = v25;
      v19[2] = v24;
      goto LABEL_9;
    }

    v11 = &type metadata for NotificationModel.InferredNotificationModel;
    v39 = &type metadata for NotificationModel.InferredNotificationModel;
    v12 = sub_242D3A26C();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    v28 = *(v10 + 96);
    v27 = *(v10 + 112);
    v29 = *(v10 + 80);
    *(v26 + 144) = *(v10 + 128);
    *(v26 + 112) = v28;
    *(v26 + 128) = v27;
    *(v26 + 96) = v29;
LABEL_8:
    *(v26 + 16) = *v10;
    v30 = *(v10 + 64);
    v32 = *(v10 + 16);
    v31 = *(v10 + 32);
    *(v26 + 64) = *(v10 + 48);
    *(v26 + 80) = v30;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    goto LABEL_9;
  }

  if (v9)
  {
    v11 = &type metadata for NotificationModel.ModalAlertModel;
    v39 = &type metadata for NotificationModel.ModalAlertModel;
    v12 = sub_242D3A418();
    v40 = v12;
    v26 = swift_allocObject();
    v38[0] = v26;
    goto LABEL_8;
  }

  v11 = &type metadata for NotificationModel.MinimalNotificationModel;
  v39 = &type metadata for NotificationModel.MinimalNotificationModel;
  v12 = sub_242D3A3C4();
  v40 = v12;
  v13 = swift_allocObject();
  v38[0] = v13;
  v14 = *(v10 + 96);
  v16 = *(v10 + 48);
  v15 = *(v10 + 64);
  v13[6] = *(v10 + 80);
  v13[7] = v14;
  v13[4] = v16;
  v13[5] = v15;
  v18 = *(v10 + 16);
  v17 = *(v10 + 32);
  v13[1] = *v10;
  v13[2] = v18;
  v13[3] = v17;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v38, v11);
  v33 = *(v12 + 8);
  v34 = *(v33 + 8);
  sub_242D3A2C0(v41, &v37);
  v35 = v34(v11, v33);
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  return v35 & 1;
}

double NotificationModel.Text.init(title:body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    if (a4)
    {
      *(a5 + 16) = a3;
      *(a5 + 24) = a4;
      *(a5 + 32) = 1;
    }

    else
    {
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
    }
  }

  else if (a4)
  {
    *a5 = a3;
    *(a5 + 8) = a4;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 2;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = -1;
  }

  return result;
}

uint64_t NotificationModel.Symbol.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationModel.Symbol.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationModel.Symbol.color.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NotificationModel.TrailingButtonConfiguration.symbolName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationModel.TrailingButtonConfiguration.symbolName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationModel.TrailingButtonConfiguration.handler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 16) = sub_242D5D19C;
  *(v2 + 24) = v5;
  return result;
}

uint64_t (*NotificationModel.TrailingButtonConfiguration.handler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242D5D194;
  a1[1] = v5;

  return sub_242E453A4;
}

uint64_t sub_242E453A4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 16) = sub_242D5D19C;
    *(v4 + 24) = v5;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    *(v4 + 16) = sub_242D5D19C;
    *(v4 + 24) = v7;
  }

  return result;
}

uint64_t static NotificationModel.TrailingButtonConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110();
  }
}

void NotificationModel.ValidationError.correct(on:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 8);
  v35[6] = *(a1 + 7);
  v35[7] = v7;
  v36 = a1[18];
  v8 = *(a1 + 4);
  v35[2] = *(a1 + 3);
  v35[3] = v8;
  v9 = *(a1 + 6);
  v35[4] = *(a1 + 5);
  v35[5] = v9;
  v10 = *(a1 + 2);
  v35[0] = *(a1 + 1);
  v35[1] = v10;
  v11 = *(v2 + 32);
  v12 = v2[1];
  v41 = *v2;
  v42 = v12;
  LOBYTE(v43) = v11;
  sub_242D3A2C0(v35, &v25);
  NotificationModel.Style.correct(validationError:)(&v41, v39);
  v13 = *(a1 + 8);
  v37[6] = *(a1 + 7);
  v37[7] = v13;
  v38 = a1[18];
  v14 = *(a1 + 4);
  v37[2] = *(a1 + 3);
  v37[3] = v14;
  v15 = *(a1 + 6);
  v37[4] = *(a1 + 5);
  v37[5] = v15;
  v16 = *(a1 + 2);
  v37[0] = *(a1 + 1);
  v37[1] = v16;
  sub_242E468BC(v37);
  v47 = v39[6];
  v48 = v39[7];
  v49 = v40;
  v43 = v39[2];
  v44 = v39[3];
  v45 = v39[4];
  v46 = v39[5];
  v41 = v39[0];
  v42 = v39[1];
  if (sub_242E46A48(&v41) == 1)
  {
    sub_242D966D8(&v25);
    v17 = v32;
    *(a2 + 96) = v31;
    *(a2 + 112) = v17;
    *(a2 + 128) = v33;
    *(a2 + 144) = v34;
    v18 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v18;
    v19 = v30;
    *(a2 + 64) = v29;
    *(a2 + 80) = v19;
    v20 = v26;
    *a2 = v25;
    *(a2 + 16) = v20;
  }

  else
  {
    v32 = v47;
    v33 = v48;
    v34 = v49;
    v28 = v43;
    v29 = v44;
    v31 = v46;
    v30 = v45;
    v27 = v42;
    v26 = v41;
    *&v25 = v6;
    *(&v25 + 1) = v5;
    nullsub_2(&v25);
    v21 = v32;
    *(a2 + 96) = v31;
    *(a2 + 112) = v21;
    *(a2 + 128) = v33;
    *(a2 + 144) = v34;
    v22 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v22;
    v23 = v30;
    *(a2 + 64) = v29;
    *(a2 + 80) = v23;
    v24 = v26;
    *a2 = v25;
    *(a2 + 16) = v24;
  }
}

uint64_t NotificationModel.ValidationError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  if (v4 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v4 != 1)
      {
        sub_242F05A80();

        v15 = 0xD000000000000018;
        MEMORY[0x245D26660](v1, v2);
        MEMORY[0x245D26660](0xD000000000000015, 0x8000000242F5C850);
        v12 = sub_242F05F60();
        MEMORY[0x245D26660](v12);

        return v15;
      }

      sub_242F05A80();

      v15 = 0xD000000000000020;
      v5 = v1;
      v6 = v2;
    }

    else
    {
      sub_242F05A80();

      v15 = 0x206E6F69746341;
      v9 = sub_242F05F60();
      MEMORY[0x245D26660](v9);

      v6 = 0x8000000242F5C8E0;
      v5 = 0xD000000000000016;
    }

LABEL_11:
    MEMORY[0x245D26660](v5, v6);
    return v15;
  }

  if (v4 == 3)
  {
    sub_242F05A80();

    v15 = 0x206E6F74747542;
    v10 = sub_242F05F60();
    MEMORY[0x245D26660](v10);

    v8 = "howing a highlight";
    v5 = 0xD000000000000029;
    goto LABEL_10;
  }

  if (v4 == 4)
  {
    sub_242F05A80();

    v15 = 0x206E6F74747542;
    v7 = sub_242F05F60();
    MEMORY[0x245D26660](v7);

    v8 = "missing trailing button";
    v5 = 0xD000000000000022;
LABEL_10:
    v6 = v8 | 0x8000000000000000;
    goto LABEL_11;
  }

  v13 = *(v0 + 24);
  if (!(v3 | v2 | v1 | v13))
  {
    return 0x6920646920656854;
  }

  result = 0xD000000000000016;
  v14 = v3 | v2 | v13;
  if (v1 == 1 && !v14)
  {
    return 0xD000000000000017;
  }

  if (v1 != 2 || v14)
  {
    if (v1 == 3 && !v14)
    {
      return 0xD000000000000011;
    }

    if (v1 == 4 && !v14)
    {
      return 0xD00000000000001ELL;
    }

    return 0xD000000000000017;
  }

  return result;
}

uint64_t NotificationModel.validate(automakerSymbolValidator:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 8);
  v55 = *(v2 + 7);
  v56 = v7;
  v57 = v2[18];
  v8 = *(v2 + 4);
  v51 = *(v2 + 3);
  v52 = v8;
  v9 = *(v2 + 6);
  v53 = *(v2 + 5);
  v54 = v9;
  v10 = *(v2 + 2);
  v11 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v6) & 0xF;
  }

  v49 = *(v2 + 1);
  v50 = v10;
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = sub_242C832C4(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_242C832C4((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
    v15[64] = 5;
  }

  v47[6] = v55;
  v47[7] = v56;
  v48 = v57;
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v53;
  v47[5] = v54;
  v47[0] = v49;
  v47[1] = v50;
  v16 = sub_242D3A260(v47);
  v17 = sub_242C578A0(v47);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = &type metadata for NotificationModel.FancyModel;
      v45 = &type metadata for NotificationModel.FancyModel;
      v19 = sub_242D3A370();
      v46 = v19;
      v26 = swift_allocObject();
      v44[0] = v26;
      v27 = *(v17 + 112);
      v29 = *(v17 + 64);
      v28 = *(v17 + 80);
      v26[7] = *(v17 + 96);
      v26[8] = v27;
      v26[5] = v29;
      v26[6] = v28;
      v30 = *(v17 + 48);
      v32 = *v17;
      v31 = *(v17 + 16);
      v26[3] = *(v17 + 32);
      v26[4] = v30;
      v26[1] = v32;
      v26[2] = v31;
      goto LABEL_16;
    }

    v18 = &type metadata for NotificationModel.InferredNotificationModel;
    v45 = &type metadata for NotificationModel.InferredNotificationModel;
    v19 = sub_242D3A26C();
    v46 = v19;
    v33 = swift_allocObject();
    v44[0] = v33;
    v35 = *(v17 + 96);
    v34 = *(v17 + 112);
    v36 = *(v17 + 80);
    *(v33 + 144) = *(v17 + 128);
    *(v33 + 112) = v35;
    *(v33 + 128) = v34;
    *(v33 + 96) = v36;
LABEL_15:
    *(v33 + 16) = *v17;
    v37 = *(v17 + 64);
    v39 = *(v17 + 16);
    v38 = *(v17 + 32);
    *(v33 + 64) = *(v17 + 48);
    *(v33 + 80) = v37;
    *(v33 + 32) = v39;
    *(v33 + 48) = v38;
    goto LABEL_16;
  }

  if (v16)
  {
    v18 = &type metadata for NotificationModel.ModalAlertModel;
    v45 = &type metadata for NotificationModel.ModalAlertModel;
    v19 = sub_242D3A418();
    v46 = v19;
    v33 = swift_allocObject();
    v44[0] = v33;
    goto LABEL_15;
  }

  v18 = &type metadata for NotificationModel.MinimalNotificationModel;
  v45 = &type metadata for NotificationModel.MinimalNotificationModel;
  v19 = sub_242D3A3C4();
  v46 = v19;
  v20 = swift_allocObject();
  v44[0] = v20;
  v21 = *(v17 + 96);
  v23 = *(v17 + 48);
  v22 = *(v17 + 64);
  v20[6] = *(v17 + 80);
  v20[7] = v21;
  v20[4] = v23;
  v20[5] = v22;
  v25 = *(v17 + 16);
  v24 = *(v17 + 32);
  v20[1] = *v17;
  v20[2] = v25;
  v20[3] = v24;
LABEL_16:
  __swift_project_boxed_opaque_existential_2Tm(v44, v18);
  v40 = *(v19 + 32);
  sub_242D3A2C0(&v49, v43);
  sub_242D3A2C0(&v49, v43);
  v41 = v40(v12, a1, a2, v18, v19);
  __swift_destroy_boxed_opaque_existential_2Tm(v44);

  sub_242E468BC(&v49);
  return v41;
}

Swift::Double_optional __swiftcall NotificationModel.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_242CD52B8(v18, v2, v10, v9, 0);
      sub_242CD52B8(v3, v2, v5, v4, 0);
      sub_242CD5324(v3, v2, v5, v4, 0);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 0;
      goto LABEL_30;
    }

    v20 = sub_242F06110();
    sub_242CD52B8(v8, v7, v10, v9, 0);
    sub_242CD52B8(v3, v2, v5, v4, 0);
    sub_242CD5324(v3, v2, v5, v4, 0);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 0;
LABEL_28:
    sub_242CD5324(v21, v22, v23, v24, v25);
    return v20 & 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v26 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_242CD52B8(v26, v2, v10, v9, 2);
      sub_242CD52B8(v3, v2, v5, v4, 2);
      sub_242CD5324(v3, v2, v5, v4, 2);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 2;
      goto LABEL_30;
    }

    v20 = sub_242F06110();
    sub_242CD52B8(v8, v7, v10, v9, 2);
    sub_242CD52B8(v3, v2, v5, v4, 2);
    sub_242CD5324(v3, v2, v5, v4, 2);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    sub_242CD52B8(*a2, *(a2 + 8), v10, v9, v11);
    sub_242CD52B8(v3, v2, v5, v4, v6);
    sub_242CD5324(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_25:
    sub_242CD5324(v28, v29, v30, v31, v32);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_242F06110() & 1) == 0)
  {
    sub_242CD52B8(v8, v7, v10, v9, 1);
    sub_242CD52B8(v3, v2, v5, v4, 1);
    sub_242CD5324(v3, v2, v5, v4, 1);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = 1;
    goto LABEL_25;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_242F06110();
    sub_242CD52B8(v8, v7, v10, v9, 1);
    sub_242CD52B8(v3, v2, v5, v4, 1);
    sub_242CD5324(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_28;
  }

  sub_242CD52B8(v8, v7, v5, v4, 1);
  sub_242CD52B8(v3, v2, v5, v4, 1);
  sub_242CD5324(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_30:
  sub_242CD5324(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV6SymbolV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_242F06110(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {

        v7 = sub_242F04710();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v76 = *(a1 + 96);
  v77 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v72 = *(a1 + 32);
  v73 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v74 = *(a1 + 64);
  v75 = v7;
  v8 = *(a1 + 16);
  v71[0] = *a1;
  v71[1] = v8;
  v9 = a2[5];
  v10 = a2[7];
  v85 = a2[6];
  v86 = v10;
  v11 = a2[1];
  v12 = a2[3];
  v81 = a2[2];
  v82 = v12;
  v13 = a2[3];
  v14 = a2[5];
  v83 = a2[4];
  v84 = v14;
  v15 = a2[1];
  v79 = *a2;
  v80 = v15;
  v16 = *(a1 + 80);
  v17 = *(a1 + 112);
  v88[6] = *(a1 + 96);
  v88[7] = v17;
  v18 = *(a1 + 16);
  v19 = *(a1 + 48);
  v88[2] = *(a1 + 32);
  v88[3] = v19;
  v88[4] = *(a1 + 64);
  v88[5] = v16;
  v88[0] = *a1;
  v88[1] = v18;
  v95 = v9;
  v96 = v85;
  v97 = a2[7];
  v91 = v11;
  v92 = v81;
  v93 = v13;
  v94 = v83;
  v90 = v79;
  v20 = *(a1 + 112);
  v99[6] = v76;
  v99[7] = v20;
  v99[2] = v72;
  v99[3] = v6;
  v99[4] = v74;
  v99[5] = v2;
  v78 = *(a1 + 128);
  v87 = *(a2 + 16);
  v21 = *(a2 + 16);
  v89 = *(a1 + 128);
  v98 = v21;
  v100 = *(a1 + 128);
  v99[0] = v71[0];
  v99[1] = v4;
  v22 = sub_242D3A260(v99);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v29 = sub_242C578A0(v99);
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v64 = v81;
      v65 = v82;
      v66 = v83;
      v67 = v84;
      v62 = v79;
      v63 = v80;
      if (sub_242D3A260(&v62) == 2)
      {
        v30 = sub_242C578A0(&v62);
        v31 = v29[5];
        v55 = v29[4];
        v56 = v31;
        v32 = v29[7];
        v57 = v29[6];
        v58 = v32;
        v33 = v29[1];
        v51 = *v29;
        v52 = v33;
        v34 = v29[3];
        v53 = v29[2];
        v54 = v34;
        v47 = v30[4];
        v48 = v30[5];
        v49 = v30[6];
        v50 = v30[7];
        v43 = *v30;
        v44 = v30[1];
        v45 = v30[2];
        v46 = v30[3];
        sub_242D3A2C0(&v79, v60);
        sub_242D3A2C0(v71, v60);
        sub_242D3A2C0(v71, v60);
        sub_242D3A2C0(&v79, v60);
        v28 = _s14CarPlayAssetUI17NotificationModelV05FancyF0V2eeoiySbAE_AEtFZ_0(&v51, &v43);
        goto LABEL_11;
      }
    }

    else
    {
      v35 = sub_242C578A0(v99);
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v64 = v81;
      v65 = v82;
      v66 = v83;
      v67 = v84;
      v62 = v79;
      v63 = v80;
      if (sub_242D3A260(&v62) == 3)
      {
        v36 = sub_242C578A0(&v62);
        v60[5] = *(v35 + 80);
        v60[6] = *(v35 + 96);
        v60[7] = *(v35 + 112);
        v61 = *(v35 + 128);
        v60[1] = *(v35 + 16);
        v60[2] = *(v35 + 32);
        v60[3] = *(v35 + 48);
        v60[4] = *(v35 + 64);
        v60[0] = *v35;
        v37 = *(v36 + 112);
        v57 = *(v36 + 96);
        v58 = v37;
        v59 = *(v36 + 128);
        v38 = *(v36 + 48);
        v53 = *(v36 + 32);
        v54 = v38;
        v39 = *(v36 + 80);
        v55 = *(v36 + 64);
        v56 = v39;
        v40 = *(v36 + 16);
        v51 = *v36;
        v52 = v40;
        sub_242D3A2C0(&v79, &v43);
        sub_242D3A2C0(v71, &v43);
        sub_242D3A2C0(v71, &v43);
        sub_242D3A2C0(&v79, &v43);
        v28 = _s14CarPlayAssetUI17NotificationModelV08InferredeF0V2eeoiySbAE_AEtFZ_0(v60, &v51);
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if (v22)
  {
    sub_242C578A0(v99);
    goto LABEL_12;
  }

  v23 = sub_242C578A0(v99);
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  v67 = v84;
  v62 = v79;
  v63 = v80;
  if (sub_242D3A260(&v62))
  {
LABEL_12:
    sub_242D3A2C0(v71, &v62);
    sub_242D3A2C0(&v79, &v62);
    sub_242E471D8(v88);
    v41 = 0;
    return v41 & 1;
  }

  v24 = sub_242C578A0(&v62);
  v25 = v23[5];
  v55 = v23[4];
  v56 = v25;
  v57 = v23[6];
  v26 = v23[1];
  v51 = *v23;
  v52 = v26;
  v27 = v23[3];
  v53 = v23[2];
  v54 = v27;
  v46 = v24[3];
  v47 = v24[4];
  v48 = v24[5];
  v49 = v24[6];
  v43 = *v24;
  v44 = v24[1];
  v45 = v24[2];
  sub_242D3A2C0(&v79, v60);
  sub_242D3A2C0(v71, v60);
  sub_242D3A2C0(v71, v60);
  sub_242D3A2C0(&v79, v60);
  v28 = _s14CarPlayAssetUI17NotificationModelV07MinimaleF0V2eeoiySbAE_AEtFZ_0(&v51, &v43);
LABEL_11:
  v41 = v28;
  sub_242E471D8(v88);
  sub_242E468BC(&v79);
  sub_242E468BC(v71);
  return v41 & 1;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v48[6] = *(a1 + 7);
  v48[7] = v6;
  v49 = a1[18];
  v7 = *(a1 + 4);
  v48[2] = *(a1 + 3);
  v48[3] = v7;
  v8 = *(a1 + 6);
  v48[4] = *(a1 + 5);
  v48[5] = v8;
  v9 = *(a1 + 2);
  v48[0] = *(a1 + 1);
  v48[1] = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 8);
  v50[6] = *(a2 + 7);
  v50[7] = v12;
  v51 = a2[18];
  v13 = *(a2 + 4);
  v50[2] = *(a2 + 3);
  v50[3] = v13;
  v14 = *(a2 + 6);
  v50[4] = *(a2 + 5);
  v50[5] = v14;
  v15 = *(a2 + 2);
  v50[0] = *(a2 + 1);
  v50[1] = v15;
  if (v4 == v10 && v5 == v11 || (v16 = 0, (sub_242F06110() & 1) != 0))
  {
    v17 = *(a1 + 8);
    v41 = *(a1 + 7);
    v42 = v17;
    v43 = a1[18];
    v18 = *(a1 + 4);
    v37 = *(a1 + 3);
    v38 = v18;
    v19 = *(a1 + 6);
    v39 = *(a1 + 5);
    v40 = v19;
    v20 = *(a1 + 2);
    v35 = *(a1 + 1);
    v36 = v20;
    v21 = *(a2 + 8);
    v32 = *(a2 + 7);
    v33 = v21;
    v34 = a2[18];
    v22 = *(a2 + 4);
    v28 = *(a2 + 3);
    v29 = v22;
    v23 = *(a2 + 6);
    v30 = *(a2 + 5);
    v31 = v23;
    v24 = *(a2 + 2);
    v26 = *(a2 + 1);
    v27 = v24;
    sub_242D3A2C0(v48, v46);
    sub_242D3A2C0(v50, v46);
    v16 = _s14CarPlayAssetUI17NotificationModelV5StyleO2eeoiySbAE_AEtFZ_0(&v35, &v26);
    v44[6] = v32;
    v44[7] = v33;
    v45 = v34;
    v44[2] = v28;
    v44[3] = v29;
    v44[4] = v30;
    v44[5] = v31;
    v44[0] = v26;
    v44[1] = v27;
    sub_242E468BC(v44);
    v46[6] = v41;
    v46[7] = v42;
    v47 = v43;
    v46[2] = v37;
    v46[3] = v38;
    v46[4] = v39;
    v46[5] = v40;
    v46[0] = v35;
    v46[1] = v36;
    sub_242E468BC(v46);
  }

  return v16 & 1;
}

uint64_t sub_242E468EC(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_242E46904(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3FFFFFFFCLL;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_242E46944(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242E46984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E46A48(uint64_t a1)
{
  if ((*(a1 + 32) >> 2) > 0x80000000)
  {
    return -(*(a1 + 32) >> 2);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_242E46A60(uint64_t a1)
{
  result = sub_242E46A88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242E46A88()
{
  result = qword_27ECF9A68[0];
  if (!qword_27ECF9A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF9A68);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_242E46B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_242E46B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E46C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_242E46C50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV15ValidationErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_242E46D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242E46D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_242E46DDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_242E46E08()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E46E78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_242E46FB8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_242E471D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.dataSourceManager.getter()
{
  sub_242DB2134();
  sub_242F04010();
  if (v2[8])
  {
    sub_242C6D138(v2, &qword_27ECF5A40);
    return 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_242C6D138(v2, &qword_27ECF5A48);
    return Strong;
  }
}

uint64_t EnvironmentValues.dataSourceManager.setter(uint64_t a1)
{
  if (a1)
  {
    swift_weakInit();
    swift_weakAssign();
  }

  sub_242DB2134();
  sub_242F04020();
}

uint64_t DataSourceManager.__allocating_init(_:preLoadAll:)(uint64_t (*a1)(char *, void, void), uint64_t a2, char a3)
{
  swift_allocObject();
  v6 = sub_242E47C14(a1, a2, a3);

  return v6;
}

uint64_t sub_242E473B4(char *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  LOBYTE(v26) = *a1;
  v8 = InstrumentDataIdentifier.rawValue.getter();
  if (a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v28 = v8;
  v29 = v9;

  MEMORY[0x245D26660](v10, v11);

  swift_beginAccess();
  v12 = *(v3 + 16);
  if (*(v12 + 16) && (, v13 = sub_242CE519C(v28, v29), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {

    v17 = *(v4 + 32);
    LOBYTE(v26) = v7;
    v16 = v17(&v26, a2, a3);
    v26 = InstrumentDataIdentifier.rawValue.getter();
    v27 = v18;

    MEMORY[0x245D26660](v10, v11);

    v19 = v26;
    v20 = v27;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_242CDF694(v16, v19, v20, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v25;
    swift_endAccess();
    if (*(v4 + 24) == 1 && (*(v16 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) & 1) == 0)
    {
      *(v16 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 1;
      v22 = *(v16 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);

      v22(v23);
    }
  }

  return v16;
}

uint64_t DataSourceManager.init(_:preLoadAll:)(uint64_t (*a1)(char *, void, void), uint64_t a2, char a3)
{
  v3 = sub_242E47C14(a1, a2, a3);

  return v3;
}

uint64_t sub_242E47624()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * v9)));
    if ((*(v10 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) & 1) == 0)
    {
      *(v10 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 1;
      v11 = *(v10 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);

      v11(v12);
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 24) = 1;
      return result;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242E4776C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_10:
    v9 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v10 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables;
    swift_beginAccess();
    *(v9 + v10) = MEMORY[0x277D84FA0];

    if (*(v9 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) == 1)
    {
      sub_242CA321C(v9 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue, v12, &qword_27ECF85E0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242CA321C(v12, v11, &qword_27ECF85E0);

      sub_242F03A90();
      sub_242C6D138(v12, &qword_27ECF85E0);
    }

    v4 &= v4 - 1;
    *(v9 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 24) = 0;
      return result;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataSourceManager.deinit()
{

  return v0;
}

uint64_t DataSourceManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_242E479D8@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_27ECEF6F8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_242CA321C(&qword_27ECF9AF8, v1, &qword_27ECF5A40);
}

void (*EnvironmentValues.dataSourceManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_242DB2134();
  sub_242F04010();
  if (*(v4 + 8))
  {
    sub_242C6D138(v4, &qword_27ECF5A40);
    Strong = 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_242C6D138(v4, &qword_27ECF5A48);
  }

  *(v4 + 16) = Strong;
  return sub_242E47B2C;
}

void sub_242E47B2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    if (v3)
    {
      goto LABEL_5;
    }

    *v2 = 0;
  }

  else
  {
    if (v3)
    {
LABEL_5:
      swift_weakInit();
      swift_weakAssign();
      goto LABEL_8;
    }

    *v2 = 0;
  }

LABEL_8:
  v2[8] = v3 == 0;
  sub_242F04020();

  free(v2);
}

uint64_t sub_242E47C14(uint64_t (*a1)(char *, void, void), uint64_t a2, char a3)
{
  v4 = v3;
  v30 = v4;
  *(v4 + 16) = MEMORY[0x277D84F98];
  v7 = v4 + 16;
  *(v7 + 8) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  if ((a3 & 1) == 0)
  {
    return v30;
  }

  v8 = 0x20u;
  while (1)
  {
    v33 = byte_28557AC00[v8];
    v9 = v33;
    v10 = InstrumentDataIdentifier.rawValue.getter();
    v12 = v11;
    v32[0] = v9;
    v13 = a1(v32, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v7;
    v31 = *v7;
    *v7 = 0x8000000000000000;
    v16 = sub_242CE519C(v10, v12);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_242D08698(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_242CE519C(v10, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v24 = v31;
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v28 = v16;
    sub_242D037D0();
    v16 = v28;
    v24 = v31;
    if (v22)
    {
LABEL_3:
      *(v24[7] + 8 * v16) = v13;

      goto LABEL_4;
    }

LABEL_11:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v25 = (v24[6] + 16 * v16);
    *v25 = v10;
    v25[1] = v12;
    *(v24[7] + 8 * v16) = v13;
    v26 = v24[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    v24[2] = v27;
LABEL_4:
    *v7 = v24;
    swift_endAccess();
    if (++v8 == 118)
    {
      return v30;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t SlotView.init(slot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  v4 = type metadata accessor for SlotView();
  v5 = *(v4 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8);
  swift_storeEnumTagMultiPayload();
  return sub_242DD665C(a1, a2 + *(v4 + 28), type metadata accessor for Slot);
}

uint64_t sub_242E47FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_242CA321C(a1, &v9 - v6, &qword_27ECF3030);
  sub_242CA321C(v7, v4, &qword_27ECF3030);
  sub_242D97074();
  sub_242F04020();
  return sub_242C6D138(v7, &qword_27ECF3030);
}

double sub_242E480F0@<D0>(_OWORD *a1@<X8>)
{
  sub_242D97434();
  sub_242F04010();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242E48140(void *a1)
{
  sub_242CA0064(*a1, a1[1]);
  sub_242D97434();
  return sub_242F04020();
}

uint64_t type metadata accessor for SlotView()
{
  result = qword_27ECF9B08;
  if (!qword_27ECF9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242E481E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SlotView();
  sub_242CA321C(v1 + *(v10 + 24), v9, &qword_27ECF2CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CF6B3C(v9, a1, &qword_27ECF3030);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SlotView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SlotView() + 28);
  v4 = v3 + *(type metadata accessor for Slot() + 36);

  return sub_242E48424(v4, a1);
}

uint64_t sub_242E48424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B68);
  MEMORY[0x28223BE20](v35);
  v38 = &v31 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B40);
  MEMORY[0x28223BE20](v37);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B30);
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B50);
  MEMORY[0x28223BE20](v34);
  v11 = (&v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for Instrument();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, v14, &qword_27ECF0B08);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_242C6D138(v14, &qword_27ECF0B08);
    v19 = 1;
    v20 = v40;
  }

  else
  {
    sub_242DD665C(v14, v18, type metadata accessor for Instrument);
    *v11 = sub_242F04A70();
    v11[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B70);
    sub_242E48B0C(v2, v18);
    if (v18[*(v15 + 24) + 25] == 1)
    {
      v22 = (v2 + *(type metadata accessor for SlotView() + 28));
      v23 = v22[5];
      if (v23 == 1)
      {
        sub_242DA1AC8();
      }

      else if (v23)
      {
        sub_242DA0C08(*v22, v49);
        v45 = v49[4];
        v46 = v49[5];
        v47 = v49[6];
        v41 = v49[0];
        v42 = v49[1];
        v48 = v50;
        v43 = v49[2];
        v44 = v49[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5728);
        sub_242C7E000(&qword_27ECF5730, &qword_27ECF5728);
      }

      else
      {
        sub_242DA1B1C();
      }

      v25 = sub_242F049C0();
      v26 = v33;
      sub_242CA321C(v11, v33, &qword_27ECF9B50);
      v27 = v26 + *(v37 + 36);
      *v27 = v25;
      *(v27 + 8) = 256;
      v28 = v26;
      v29 = v32;
      sub_242CF6B3C(v28, v32, &qword_27ECF9B40);
      sub_242CA321C(v29, v38, &qword_27ECF9B40);
      swift_storeEnumTagMultiPayload();
      sub_242E49A4C();
      sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50);
      v24 = v36;
      sub_242F041C0();
      sub_242C6D138(v29, &qword_27ECF9B40);
    }

    else
    {
      sub_242CA321C(v11, v38, &qword_27ECF9B50);
      swift_storeEnumTagMultiPayload();
      sub_242E49A4C();
      sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50);
      v24 = v36;
      sub_242F041C0();
    }

    sub_242C6D138(v11, &qword_27ECF9B50);
    sub_242E49DF4(v18, type metadata accessor for Instrument);
    v20 = v40;
    sub_242CF6B3C(v24, v40, &qword_27ECF9B30);
    v19 = 0;
  }

  return (*(v8 + 56))(v20, v19, 1, v39);
}

uint64_t sub_242E48B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B78);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v41 = type metadata accessor for InstrumentView();
  MEMORY[0x28223BE20](v41);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B80);
  MEMORY[0x28223BE20](v37);
  v39 = &v32 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B88);
  MEMORY[0x28223BE20](v38);
  v35 = &v32 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B90);
  MEMORY[0x28223BE20](v42);
  v40 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_242F04000();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v36 = a1;
  if (*(a1 + 32) == 1)
  {
    v43[0] = v19;
  }

  else
  {
    v32 = v16;

    sub_242F05710();
    v20 = sub_242F04360();
    v33 = a2;
    v21 = v20;
    sub_242F03930();

    a2 = v33;
    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v19, 0);
    (*(v15 + 8))(v18, v32);
    v19 = v43[0];
  }

  v43[71] = v19;
  sub_242E49D8C(a2, v13, type metadata accessor for Instrument);
  v22 = type metadata accessor for Instrument();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  v23 = LayoutOutput.isVisible(_:)(v13);
  sub_242C6D138(v13, &qword_27ECF0B08);
  if (v23)
  {
    memcpy(v43, (a2 + *(v22 + 20)), 0x238uLL);
    v24 = sub_242C9E788(v43);
    if (v24 != 6 && v24)
    {
      v28 = v41;
      v29 = v34;
      sub_242E49D8C(a2, &v34[*(v41 + 28)], type metadata accessor for Instrument);
      type metadata accessor for LayoutTreatment(0);
      sub_242E49D44(&qword_27ECF5910, type metadata accessor for LayoutTreatment);
      *v29 = sub_242F03E60();
      *(v29 + 8) = v30;
      *(v29 + 16) = swift_getKeyPath();
      *(v29 + 24) = 0;
      v31 = *(v28 + 24);
      *(v29 + v31) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918);
      swift_storeEnumTagMultiPayload();
      sub_242E49D8C(v29, v39, type metadata accessor for InstrumentView);
      swift_storeEnumTagMultiPayload();
      sub_242E49C18(&qword_27ECF9BA0, &qword_27ECF9B88, &unk_242F3CDB8, sub_242E49C94);
      sub_242E49D44(&qword_27ECF9BC0, type metadata accessor for InstrumentView);
      v26 = v40;
      sub_242F041C0();
      sub_242E49DF4(v29, type metadata accessor for InstrumentView);
    }

    else
    {
      sub_242C556B4(v43);
      v25 = v35;
      sub_242E49278(a2, v35);
      sub_242CA321C(v25, v39, &qword_27ECF9B88);
      swift_storeEnumTagMultiPayload();
      sub_242E49C18(&qword_27ECF9BA0, &qword_27ECF9B88, &unk_242F3CDB8, sub_242E49C94);
      sub_242E49D44(&qword_27ECF9BC0, type metadata accessor for InstrumentView);
      v26 = v40;
      sub_242F041C0();
      sub_242C6D138(v25, &qword_27ECF9B88);
    }

    sub_242CA321C(v26, v6, &qword_27ECF9B90);
    swift_storeEnumTagMultiPayload();
    sub_242E49B30();
    sub_242F041C0();
    return sub_242C6D138(v26, &qword_27ECF9B90);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_242E49B30();
    return sub_242F041C0();
  }
}

uint64_t sub_242E49278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F38);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = (&v32 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BB0);
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v32 - v14;
  v15 = sub_242F04000();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  if (*(v2 + 16) != 1)
  {
    v32 = v2[1];
    v33 = v17;

    sub_242F05710();
    v34 = v9;
    v35 = v10;
    v23 = sub_242F04360();
    v9 = v34;
    v10 = v35;
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242E188A8(v20, v32, 0);
    (*(v16 + 8))(v19, v33);
    v20 = v44;
    v21 = v45;
    if (v44)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 1;
    return (*(v42 + 56))(v43, v24, 1, v13);
  }

  v21 = v2[1];
  sub_242CA0064(*v2, v21);
  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_242E481E0(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_242D0DC4C(v20, v21);
    sub_242C6D138(v8, &qword_27ECF3030);
    v22 = 1;
  }

  else
  {
    sub_242CF6B3C(v8, v12, &qword_27ECF3028);
    v25 = v2 + *(type metadata accessor for SlotView() + 28);

    v26 = v20(v25, v36, v12);
    sub_242D0DC4C(v20, v21);
    sub_242D0DC4C(v20, v21);
    sub_242C6D138(v12, &qword_27ECF3028);
    v27 = type metadata accessor for Slot();
    v28 = v38;
    sub_242CA321C(v25 + *(v27 + 44), v38, &qword_27ECF2140);
    v29 = v37;
    sub_242CF6B3C(v28, v37 + *(v41 + 52), &qword_27ECF2138);
    *v29 = v26;
    sub_242CF6B3C(v29, v40, &qword_27ECF8F38);
    v22 = 0;
  }

  v30 = v40;
  (*(v39 + 56))(v40, v22, 1, v41);
  sub_242CF6B3C(v30, v43, &qword_27ECF9BB0);
  v24 = 0;
  return (*(v42 + 56))(v43, v24, 1, v13);
}

uint64_t sub_242E497E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 28);
  v5 = v4 + *(type metadata accessor for Slot() + 36);

  return sub_242E48424(v5, a2);
}

void sub_242E49860()
{
  sub_242DB2054(319, &qword_27ECF8EE0, &qword_27ECF8EE8);
  if (v0 <= 0x3F)
  {
    sub_242E49944();
    if (v1 <= 0x3F)
    {
      sub_242DB2054(319, &qword_27ECF8EF0, &qword_27ECF3030);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Slot();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E49944()
{
  if (!qword_27ECF84A0)
  {
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF84A0);
    }
  }
}

unint64_t sub_242E49994()
{
  result = qword_27ECF9B28;
  if (!qword_27ECF9B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9B30);
    sub_242E49A4C();
    sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9B28);
  }

  return result;
}

unint64_t sub_242E49A4C()
{
  result = qword_27ECF9B38;
  if (!qword_27ECF9B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9B40);
    sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50);
    sub_242C7E000(&qword_27ECF9B58, &qword_27ECF9B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9B38);
  }

  return result;
}

unint64_t sub_242E49B30()
{
  result = qword_27ECF9B98;
  if (!qword_27ECF9B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9B90);
    sub_242E49C18(&qword_27ECF9BA0, &qword_27ECF9B88, &unk_242F3CDB8, sub_242E49C94);
    sub_242E49D44(&qword_27ECF9BC0, type metadata accessor for InstrumentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9B98);
  }

  return result;
}

uint64_t sub_242E49C18(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E49C94()
{
  result = qword_27ECF9BA8;
  if (!qword_27ECF9BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF9BB0);
    sub_242C7E000(&qword_27ECF9BB8, &qword_27ECF8F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9BA8);
  }

  return result;
}

uint64_t sub_242E49D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242E49D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E49DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_242E49E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_242E49EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E49F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NotificationView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BC8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = *(v1 + 120);
  v45 = *(v1 + 104);
  v46 = v10;
  v47 = *(v1 + 136);
  v48 = *(v1 + 152);
  v11 = *(v1 + 56);
  v41 = *(v1 + 40);
  v42 = v11;
  v12 = *(v1 + 88);
  v43 = *(v1 + 72);
  v44 = v12;
  v13 = *(v1 + 24);
  v39 = *(v1 + 8);
  v40 = v13;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
  swift_storeEnumTagMultiPayload();
  v14 = v4[7];
  *(v6 + v14) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v15 = v4[8];
  *(v6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08);
  swift_storeEnumTagMultiPayload();
  v16 = v4[9];
  *(v6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BD0);
  swift_storeEnumTagMultiPayload();
  v17 = v6 + v4[10];
  v18 = v46;
  *(v17 + 6) = v45;
  *(v17 + 7) = v18;
  *(v17 + 8) = v47;
  *(v17 + 18) = v48;
  v19 = v42;
  *(v17 + 2) = v41;
  *(v17 + 3) = v19;
  v20 = v44;
  *(v17 + 4) = v43;
  *(v17 + 5) = v20;
  v21 = v40;
  *v17 = v39;
  *(v17 + 1) = v21;
  sub_242E4A350(&v39, v38);
  LODWORD(v16) = sub_242F03C00();
  if (v16 == sub_242F03C00())
  {
    sub_242F04A50();
  }

  else
  {
    sub_242F04A60();
  }

  sub_242F03E40();
  sub_242E4A3AC(v6, v9);
  v22 = &v9[*(v7 + 36)];
  v23 = v38[5];
  *(v22 + 4) = v38[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v38[6];
  v24 = v38[1];
  *v22 = v38[0];
  *(v22 + 1) = v24;
  v25 = v38[3];
  *(v22 + 2) = v38[2];
  *(v22 + 3) = v25;
  if (qword_27ECEF4B8 != -1)
  {
    swift_once();
  }

  v26 = sub_242F039A0();
  v27 = __swift_project_value_buffer(v26, qword_27ED5D2C8);
  v36 = 540697705;
  v37 = 0xE400000000000000;
  MEMORY[0x245D26660](v39, *(&v39 + 1));
  v28 = v36;
  v29 = v37;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BD8) + 36);
  (*(*(v26 - 8) + 16))(v30, v27, v26);
  v31 = type metadata accessor for AppearanceLogger();
  v32 = v30 + *(v31 + 20);
  *v32 = "Remote Notification";
  *(v32 + 8) = 19;
  *(v32 + 16) = 2;
  v33 = (v30 + *(v31 + 24));
  *v33 = v28;
  v33[1] = v29;
  return sub_242E4A410(v9, a1);
}