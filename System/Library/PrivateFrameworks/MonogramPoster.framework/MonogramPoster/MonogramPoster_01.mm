uint64_t storeEnumTagSinglePayload for MonogramPosterUserInfoKey(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_21663CCB4()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB18D8);
  v1 = __swift_project_value_buffer(v0, qword_27CAB18D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_2166473C0;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_2166473D0;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_2166473E0;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_2166473F0;
  *(v2 + 272) = v11;
  *(v2 + 280) = 0x4010000000000000;
  *(v2 + 288) = xmmword_216645D10;
  *(v2 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 312) = v12;
  *(v2 + 248) = 0;
  sub_216645470();
  v13 = sub_216645500();
  sub_216645580();
  v15 = v14;
  sub_216645540();
  *(v2 + 328) = 0x3FF31DCC383B703DLL;
  *(v2 + 336) = 0xBFB9111111111111;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216647400;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC876D43EC46D00;
  *(v2 + 480) = 0x3FC9111111111111;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216647410;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216645EF0;
  *(v2 + 592) = xmmword_216647420;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA2CA213ABA1F3;
  *(v2 + 624) = 0x3FC9111111111111;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216647430;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC607AF805397C5;
  *(v2 + 768) = 0x3FD2CCCCCCCCCCCDLL;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216647440;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FD9DDDDDDDDDDDELL;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216647450;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF31DCC383B703DLL;
  *(v2 + 1056) = 0x3FD3BBBBBBBBBBBCLL;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216647460;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1200) = 0x3FE3BBBBBBBBBBBCLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216647470;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA078728CCAC24;
  *(v2 + 1344) = 0x3FE3DDDDDDDDDDDELL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647480;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v2 + 1488) = 0x3FEC444444444444;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_2166479C0;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFB5F0244941E2;
  *(v2 + 1632) = 0x3FEABBBBBBBBBBBCLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_2166479D0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v2 + 1776) = 0x3FEC555555555555;
  *(v2 + 1784) = v43;
  *(v2 + 1792) = 0x4010000000000000;
  *(v2 + 1800) = v44;
  *(v2 + 1808) = xmmword_216645CE0;
  *(v2 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1760) = 0;
  sub_216645470();
  v45 = sub_216645500();
  sub_216645570();
  v47 = v46;
  sub_216645560();
  *(v2 + 1840) = xmmword_2166473A0;
  *(v2 + 1856) = v45;
  *(v2 + 1864) = 0x4010000000000000;
  *(v2 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1880) = v47;
  *(v2 + 1888) = v48;
  *(v2 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1832) = 0;
  sub_216645470();
  v49 = sub_216645500();
  sub_216645560();
  *(v2 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1920) = 0x3FF0800000000000;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216646D00;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v2 + 2064) = 0x3FF0800000000000;
  *(v2 + 2072) = v53;
  *(v2 + 2080) = xmmword_216645CC0;
  *(v2 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2104) = v54;
  *(v2 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2048) = 0;
  sub_216645470();
  v55 = sub_216645500();
  sub_216645580();
  v57 = v56;
  sub_216645560();
  *(v2 + 2128) = xmmword_2166474B0;
  *(v2 + 2144) = v55;
  *(v2 + 2152) = 0x4010000000000000;
  *(v2 + 2160) = v57;
  *(v2 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2176) = v58;
  *(v2 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1658, &unk_216645E60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_216645E10;
  sub_216645470();
  *(v59 + 32) = sub_216645500();
  sub_216645470();
  *(v59 + 40) = sub_216645500();
  sub_2166453D0();
  *(v1 + v0[5]) = 5;
  *(v1 + v0[6]) = 6;
  *(v1 + v0[7]) = v2;
  v60 = v1 + v0[8];
  *v60 = xmmword_216645E20;
  *(v60 + 16) = 0x3FDCCCCCCCCCCCCDLL;
  *(v60 + 24) = 0;
  v61 = (v1 + v0[9]);
  result = 0.0;
  *v61 = 0u;
  v61[1] = 0u;
  *(v1 + v0[10]) = v59;
  return result;
}

uint64_t static GradientDefinition.orangeTeal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1618 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB18D8);

  return sub_21662855C(v3, a1);
}

double sub_21663DBDC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB18F0);
  v1 = __swift_project_value_buffer(v0, qword_27CAB18F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_2166479E0;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_2166479F0;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216647A00;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216647A10;
  *(v2 + 272) = v11;
  *(v2 + 280) = 0x4010000000000000;
  *(v2 + 288) = xmmword_216645D10;
  *(v2 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 312) = v12;
  *(v2 + 248) = 0;
  sub_216645470();
  v13 = sub_216645500();
  sub_216645580();
  v15 = v14;
  sub_216645540();
  *(v2 + 328) = 0x3FF31DC2CBF68D4ALL;
  *(v2 + 336) = 0xBFB999999999999ALL;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216647A20;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC876884AB61200;
  *(v2 + 480) = 0x3FC8CCCCCCCCCCCDLL;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216647A30;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216647A40;
  *(v2 + 592) = xmmword_216647A50;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA2C9882ECEE27;
  *(v2 + 624) = 0x3FC8CCCCCCCCCCCDLL;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216647A60;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC607FB7461F2C5;
  *(v2 + 768) = 0x3FD2AAAAAAAAAAABLL;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216647A70;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE0000000000000;
  *(v2 + 912) = 0x3FD9777777777777;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216647A80;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF31DC2CBF68D4ALL;
  *(v2 + 1056) = 0x3FD399999999999ALL;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216647A90;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90AF3F631E93BLL;
  *(v2 + 1200) = 0x3FE3AAAAAAAAAAABLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216647AA0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA077D980DF858;
  *(v2 + 1344) = 0x3FE3CCCCCCCCCCCDLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647AB0;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC69C671FDDCA00;
  *(v2 + 1488) = 0x3FEC333333333333;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647AC0;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFB5CA2A421462;
  *(v2 + 1632) = 0x3FEAAAAAAAAAAAABLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216647AD0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF2F8A7E117977BLL;
  *(v2 + 1776) = 0x3FEC444444444444;
  *(v2 + 1784) = v43;
  *(v2 + 1792) = 0x4010000000000000;
  *(v2 + 1800) = v44;
  *(v2 + 1808) = xmmword_216645CE0;
  *(v2 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1760) = 0;
  sub_216645470();
  v45 = sub_216645500();
  sub_216645570();
  v47 = v46;
  sub_216645560();
  *(v2 + 1840) = xmmword_216647AE0;
  *(v2 + 1856) = v45;
  *(v2 + 1864) = 0x4010000000000000;
  *(v2 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1880) = v47;
  *(v2 + 1888) = v48;
  *(v2 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1832) = 0;
  sub_216645470();
  v49 = sub_216645500();
  sub_216645560();
  *(v2 + 1912) = 0x3FC90AF3F631E93BLL;
  *(v2 + 1920) = 0x3FF0777777777777;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216647AF0;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA2C9882ECEE27;
  *(v2 + 2064) = 0x3FF0777777777777;
  *(v2 + 2072) = v53;
  *(v2 + 2080) = xmmword_216645CC0;
  *(v2 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2104) = v54;
  *(v2 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2048) = 0;
  sub_216645470();
  v55 = sub_216645500();
  sub_216645580();
  v57 = v56;
  sub_216645560();
  *(v2 + 2128) = xmmword_216647B00;
  *(v2 + 2144) = v55;
  *(v2 + 2152) = 0x4010000000000000;
  *(v2 + 2160) = v57;
  *(v2 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2176) = v58;
  *(v2 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1658, &unk_216645E60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_216645E10;
  sub_216645470();
  *(v59 + 32) = sub_216645500();
  sub_216645470();
  *(v59 + 40) = sub_216645500();
  sub_2166453D0();
  *(v1 + v0[5]) = 5;
  *(v1 + v0[6]) = 6;
  *(v1 + v0[7]) = v2;
  v60 = v1 + v0[8];
  *v60 = xmmword_216645E20;
  *(v60 + 16) = 0x3FDCCCCCCCCCCCCDLL;
  *(v60 + 24) = 0;
  v61 = (v1 + v0[9]);
  result = 0.0;
  *v61 = 0u;
  v61[1] = 0u;
  *(v1 + v0[10]) = v59;
  return result;
}

uint64_t static GradientDefinition.lavenderPine.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB18F0);

  return sub_21662855C(v3, a1);
}

double sub_21663EAF0()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1908);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216645FF0;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_216646000;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216646010;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216646020;
  *(v2 + 272) = v11;
  *(v2 + 280) = 0x4010000000000000;
  *(v2 + 288) = xmmword_216645D10;
  *(v2 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 312) = v12;
  *(v2 + 248) = 0;
  sub_216645470();
  v13 = sub_216645500();
  sub_216645580();
  v15 = v14;
  sub_216645540();
  *(v2 + 328) = 0x3FF30B3EC2CBF556;
  *(v2 + 336) = 0xBFA7777777777777;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216647310;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC90B3FEA40443BLL;
  *(v2 + 480) = 0x3FC4444444444444;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216646040;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216646050;
  *(v2 + 592) = xmmword_216646060;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA51BCFE8A97C2;
  *(v2 + 624) = 0x3FC4444444444444;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216647B10;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC607AF805397C5;
  *(v2 + 768) = 0x3FD5777777777777;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216646080;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FD8222222222222;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216646090;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF30B3EC2CBF556;
  *(v2 + 1056) = 0x3FD6222222222222;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216647B20;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1200) = 0x3FE5444444444444;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216647B30;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v2 + 1344) = 0x3FE5444444444444;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647B40;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC607AF805397C5;
  *(v2 + 1488) = 0x3FED333333333333;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647380;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE00012FD0396C0;
  *(v2 + 1632) = 0x3FEB555555555555;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216647390;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF30B3EC2CBF556;
  *(v2 + 1776) = 0x3FED333333333333;
  *(v2 + 1784) = v43;
  *(v2 + 1792) = 0x4010000000000000;
  *(v2 + 1800) = v44;
  *(v2 + 1808) = xmmword_216645CE0;
  *(v2 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1760) = 0;
  sub_216645470();
  v45 = sub_216645500();
  sub_216645570();
  v47 = v46;
  sub_216645560();
  *(v2 + 1840) = xmmword_216647B50;
  *(v2 + 1856) = v45;
  *(v2 + 1864) = 0x4010000000000000;
  *(v2 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1880) = v47;
  *(v2 + 1888) = v48;
  *(v2 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1832) = 0;
  sub_216645470();
  v49 = sub_216645500();
  sub_216645560();
  *(v2 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1920) = 0x3FF1222222222222;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216647B60;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v2 + 2064) = 0x3FF1222222222222;
  *(v2 + 2072) = v53;
  *(v2 + 2080) = xmmword_216645CC0;
  *(v2 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2104) = v54;
  *(v2 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2048) = 0;
  sub_216645470();
  v55 = sub_216645500();
  sub_216645580();
  v57 = v56;
  sub_216645560();
  *(v2 + 2128) = xmmword_216647B70;
  *(v2 + 2144) = v55;
  *(v2 + 2152) = 0x4010000000000000;
  *(v2 + 2160) = v57;
  *(v2 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2176) = v58;
  *(v2 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1658, &unk_216645E60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_216645E10;
  sub_216645470();
  *(v59 + 32) = sub_216645500();
  sub_216645470();
  *(v59 + 40) = sub_216645500();
  sub_2166453D0();
  *(v1 + v0[5]) = 5;
  *(v1 + v0[6]) = 6;
  *(v1 + v0[7]) = v2;
  v60 = v1 + v0[8];
  *v60 = xmmword_216645E20;
  *(v60 + 16) = 0x3FDCCCCCCCCCCCCDLL;
  *(v60 + 24) = 0;
  v61 = (v1 + v0[9]);
  result = 0.0;
  *v61 = 0u;
  v61[1] = 0u;
  *(v1 + v0[10]) = v59;
  return result;
}

uint64_t static GradientDefinition.opal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1908);

  return sub_21662855C(v3, a1);
}

uint64_t sub_21663F9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1930, &qword_216647BA8);
  v0 = type metadata accessor for GradientDefinition();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_216647B80;
  v4 = v3 + v2;
  if (qword_27CAB1640 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27CAB1938);
  sub_21662855C(v5, v4);
  if (qword_27CAB1620 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27CAB18F0);
  sub_21662855C(v6, v4 + v1);
  if (qword_27CAB15A0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27CAB15A8);
  sub_21662855C(v7, v4 + 2 * v1);
  if (qword_27CAB15C0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CAB1660);
  sub_21662855C(v8, v4 + 3 * v1);
  if (qword_27CAB1618 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27CAB18D8);
  sub_21662855C(v9, v4 + 4 * v1);
  if (qword_27CAB1608 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27CAB1898);
  result = sub_21662855C(v10, v4 + 5 * v1);
  qword_27CAB1920 = v3;
  return result;
}

uint64_t sub_21663FC68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1930, &qword_216647BA8);
  v0 = type metadata accessor for GradientDefinition();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_216647B90;
  v4 = v3 + v2;
  if (qword_27CAB15D0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27CAB17B8);
  sub_21662855C(v5, v4);
  if (qword_27CAB15C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27CAB1698);
  sub_21662855C(v6, v4 + v1);
  if (qword_27CAB15F0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27CAB1850);
  sub_21662855C(v7, v4 + 2 * v1);
  if (qword_27CAB1610 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CAB18B0);
  sub_21662855C(v8, v4 + 3 * v1);
  if (qword_27CAB1628 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27CAB1908);
  sub_21662855C(v9, v4 + 4 * v1);
  if (qword_27CAB1600 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27CAB1880);
  sub_21662855C(v10, v4 + 5 * v1);
  if (qword_27CAB1648 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_27CAB1950);
  sub_21662855C(v11, v4 + 6 * v1);
  if (qword_27CAB15F8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_27CAB1868);
  result = sub_21662855C(v12, v4 - v1 + 8 * v1);
  qword_27CAB1928 = v3;
  return result;
}

uint64_t sub_21663FFB8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t static GradientDefinition.allColors.getter()
{
  if (qword_27CAB1630 != -1)
  {
    swift_once();
  }

  v0 = qword_27CAB1920;
  v1 = qword_27CAB1638;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_2166402A0(v2);
  return v0;
}

size_t sub_2166400C8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1930, &qword_216647BA8);
  v10 = *(type metadata accessor for GradientDefinition() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GradientDefinition() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2166402A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2166400C8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for GradientDefinition();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double sub_2166403CC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1938);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216647BB0;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_216647BC0;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216647BD0;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216647BE0;
  *(v2 + 272) = v11;
  *(v2 + 280) = 0x4010000000000000;
  *(v2 + 288) = xmmword_216645D10;
  *(v2 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 312) = v12;
  *(v2 + 248) = 0;
  sub_216645470();
  v13 = sub_216645500();
  sub_216645580();
  v15 = v14;
  sub_216645540();
  *(v2 + 328) = 0x3FF42F98B537AFE1;
  *(v2 + 336) = 0xBFA6666666666666;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216647BF0;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC97BB18C6B7875;
  *(v2 + 480) = 0x3FC6EEEEEEEEEEEFLL;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216647C00;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216647C10;
  *(v2 + 592) = xmmword_216647C20;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA6DDD2051A5BALL;
  *(v2 + 624) = 0x3FC6EEEEEEEEEEEFLL;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216647C30;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC5973DDE28638BLL;
  *(v2 + 768) = 0x3FD3555555555555;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216647C40;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE01C33323ECFD6;
  *(v2 + 912) = 0x3FDA222222222222;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216647C50;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF42F98B537AFE1;
  *(v2 + 1056) = 0x3FD4222222222222;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216647C60;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC97BB18C6B7875;
  *(v2 + 1200) = 0x3FE399999999999ALL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216647C70;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA48C23572AFEBLL;
  *(v2 + 1344) = 0x3FE399999999999ALL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647C80;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC62BA989A43AC6;
  *(v2 + 1488) = 0x3FEACCCCCCCCCCCDLL;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647C90;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFEE308EBFB40DLL;
  *(v2 + 1632) = 0x3FE9AAAAAAAAAAABLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216647CA0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF41D0B3FC834FALL;
  *(v2 + 1776) = 0x3FEADDDDDDDDDDDELL;
  *(v2 + 1784) = v43;
  *(v2 + 1792) = 0x4010000000000000;
  *(v2 + 1800) = v44;
  *(v2 + 1808) = xmmword_216645CE0;
  *(v2 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1760) = 0;
  sub_216645470();
  v45 = sub_216645500();
  sub_216645570();
  v47 = v46;
  sub_216645560();
  *(v2 + 1840) = xmmword_216647CB0;
  *(v2 + 1856) = v45;
  *(v2 + 1864) = 0x4010000000000000;
  *(v2 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1880) = v47;
  *(v2 + 1888) = v48;
  *(v2 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1832) = 0;
  sub_216645470();
  v49 = sub_216645500();
  sub_216645560();
  *(v2 + 1912) = 0x3FC97BB18C6B7875;
  *(v2 + 1920) = 0x3FF0800000000000;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216647CC0;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA48C23572AFEBLL;
  *(v2 + 2064) = 0x3FF0800000000000;
  *(v2 + 2072) = v53;
  *(v2 + 2080) = xmmword_216645CC0;
  *(v2 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2104) = v54;
  *(v2 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2048) = 0;
  sub_216645470();
  v55 = sub_216645500();
  sub_216645580();
  v57 = v56;
  sub_216645560();
  *(v2 + 2128) = xmmword_216647CD0;
  *(v2 + 2144) = v55;
  *(v2 + 2152) = 0x4010000000000000;
  *(v2 + 2160) = v57;
  *(v2 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2176) = v58;
  *(v2 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1658, &unk_216645E60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_216645E10;
  sub_216645470();
  *(v59 + 32) = sub_216645500();
  sub_216645470();
  *(v59 + 40) = sub_216645500();
  sub_2166453D0();
  *(v1 + v0[5]) = 5;
  *(v1 + v0[6]) = 6;
  *(v1 + v0[7]) = v2;
  v60 = v1 + v0[8];
  *v60 = xmmword_216645E20;
  *(v60 + 16) = 0x3FDCCCCCCCCCCCCDLL;
  *(v60 + 24) = 0;
  v61 = (v1 + v0[9]);
  result = 0.0;
  *v61 = 0u;
  v61[1] = 0u;
  *(v1 + v0[10]) = v59;
  return result;
}

uint64_t static GradientDefinition.bannanaStrawberry.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1938);

  return sub_21662855C(v3, a1);
}

double sub_2166412DC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1950);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216645E90;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_216645EA0;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216645EB0;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216645EC0;
  *(v2 + 272) = v11;
  *(v2 + 280) = 0x4010000000000000;
  *(v2 + 288) = xmmword_216645D10;
  *(v2 + 304) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 312) = v12;
  *(v2 + 248) = 0;
  sub_216645470();
  v13 = sub_216645500();
  sub_216645580();
  v15 = v14;
  sub_216645540();
  *(v2 + 328) = 0x3FF31DCC383B703DLL;
  *(v2 + 336) = 0xBFB8888888888889;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216645ED0;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC876D43EC46D00;
  *(v2 + 480) = 0x3FC9555555555555;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216645EE0;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216645EF0;
  *(v2 + 592) = xmmword_216645F00;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA2CA213ABA1F3;
  *(v2 + 624) = 0x3FC9555555555555;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216645F10;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC607AF805397C5;
  *(v2 + 768) = 0x3FD2EEEEEEEEEEEFLL;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216645F20;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FDA000000000000;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216645F30;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF31DCC383B703DLL;
  *(v2 + 1056) = 0x3FD3DDDDDDDDDDDELL;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216645F40;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1200) = 0x3FE3CCCCCCCCCCCDLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216645F50;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA078728CCAC24;
  *(v2 + 1344) = 0x3FE3EEEEEEEEEEEFLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216645F60;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC69C1B2BCF6F01;
  *(v2 + 1488) = 0x3FEC555555555555;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216645F70;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFB5F0244941E2;
  *(v2 + 1632) = 0x3FEACCCCCCCCCCCDLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216645F80;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v2 + 1776) = 0x3FEC666666666666;
  *(v2 + 1784) = v43;
  *(v2 + 1792) = 0x4010000000000000;
  *(v2 + 1800) = v44;
  *(v2 + 1808) = xmmword_216645CE0;
  *(v2 + 1824) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1760) = 0;
  sub_216645470();
  v45 = sub_216645500();
  sub_216645570();
  v47 = v46;
  sub_216645560();
  *(v2 + 1840) = xmmword_216645F90;
  *(v2 + 1856) = v45;
  *(v2 + 1864) = 0x4010000000000000;
  *(v2 + 1872) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1880) = v47;
  *(v2 + 1888) = v48;
  *(v2 + 1896) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1832) = 0;
  sub_216645470();
  v49 = sub_216645500();
  sub_216645560();
  *(v2 + 1912) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1920) = 0x3FF0888888888889;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216645FA0;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA2CA213ABA1F3;
  *(v2 + 2064) = 0x3FF0888888888889;
  *(v2 + 2072) = v53;
  *(v2 + 2080) = xmmword_216645CC0;
  *(v2 + 2096) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2104) = v54;
  *(v2 + 2112) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2048) = 0;
  sub_216645470();
  v55 = sub_216645500();
  sub_216645580();
  v57 = v56;
  sub_216645560();
  *(v2 + 2128) = xmmword_216645FB0;
  *(v2 + 2144) = v55;
  *(v2 + 2152) = 0x4010000000000000;
  *(v2 + 2160) = v57;
  *(v2 + 2168) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2176) = v58;
  *(v2 + 2184) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 2120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1658, &unk_216645E60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_216645E10;
  sub_216645470();
  *(v59 + 32) = sub_216645500();
  sub_216645470();
  *(v59 + 40) = sub_216645500();
  sub_2166453D0();
  *(v1 + v0[5]) = 5;
  *(v1 + v0[6]) = 6;
  *(v1 + v0[7]) = v2;
  v60 = v1 + v0[8];
  *v60 = xmmword_216645E20;
  *(v60 + 16) = 0x3FDCCCCCCCCCCCCDLL;
  *(v60 + 24) = 0;
  v61 = (v1 + v0[9]);
  result = 0.0;
  *v61 = 0u;
  v61[1] = 0u;
  *(v1 + v0[10]) = v59;
  return result;
}

uint64_t static GradientDefinition.red.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1648 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1950);

  return sub_21662855C(v3, a1);
}

uint64_t sub_2166421FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21664221C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

double sub_216642258()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = 0;
  v3 = 0;
  v4 = 0;
  sub_21662FB98();

  v0 = sub_216645650();
  [v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3];

  result = *v6;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2166422F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1968, &qword_216647D60);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216642628();
  sub_216645880();
  v14 = 0;
  sub_2166457D0();
  if (!v1)
  {
    v13 = 1;
    sub_2166457D0();
    v12 = 2;
    sub_2166457D0();
    v11 = 3;
    sub_2166457D0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2166424D0()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_216642538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21664267C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216642560(uint64_t a1)
{
  v2 = sub_216642628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21664259C(uint64_t a1)
{
  v2 = sub_216642628();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2166425D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2166427DC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_216642608(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_2166422F8(a1);
}

unint64_t sub_216642628()
{
  result = qword_2811AB9E0;
  if (!qword_2811AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9E0);
  }

  return result;
}

uint64_t sub_21664267C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_216645800() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_216645800() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_216645800() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_216645800();

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

double sub_2166427DC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1970, &qword_216647D68);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216642628();
  sub_216645870();
  v11[15] = 0;
  sub_216645770();
  v9 = v8;
  v11[14] = 1;
  sub_216645770();
  v11[13] = 2;
  sub_216645770();
  v11[12] = 3;
  sub_216645770();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2166429EC()
{
  result = qword_27CAB1978;
  if (!qword_27CAB1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1978);
  }

  return result;
}

unint64_t sub_216642A44()
{
  result = qword_2811AB9D0;
  if (!qword_2811AB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9D0);
  }

  return result;
}

unint64_t sub_216642A9C()
{
  result = qword_2811AB9D8;
  if (!qword_2811AB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9D8);
  }

  return result;
}

uint64_t MeshGradientPoint.init(location:color:mass:minimumX:maximumX:minimumY:maximumY:isFocalPoint:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = result;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = a10;
  *a3 = a2;
  return result;
}

uint64_t sub_216642B0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726574656D616964;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000007375;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6964615272756C62;
    }

    else
    {
      v6 = 0x7974696361706FLL;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x726F6C6F63;
    }

    else
    {
      v6 = 0x726574656D616964;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6964615272756C62;
  v10 = 0xEA00000000007375;
  if (a2 != 2)
  {
    v9 = 0x7974696361706FLL;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x726F6C6F63;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_216645800();
  }

  return v13 & 1;
}

uint64_t sub_216642C4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x6874646977;
    if (a1 != 1)
    {
      v10 = 0x746867696568;
      v9 = 0xE600000000000000;
    }

    if (a1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 25705;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x8000000216648170;
    v4 = 0xD000000000000024;
    if (a1 == 5)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v3 = 0x8000000216648190;
    }

    v5 = 0xE600000000000000;
    v6 = 0x73746E696F70;
    if (a1 != 3)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000216648150;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE500000000000000;
        if (v7 != 0x6874646977)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        if (v7 != 0x746867696568)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      if (v7 != 25705)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x8000000216648170;
      if (v7 != 0xD000000000000018)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v11 = 0x8000000216648190;
      if (v7 != 0xD000000000000024)
      {
LABEL_42:
        v12 = sub_216645800();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE600000000000000;
    if (v7 != 0x73746E696F70)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v11 = 0x8000000216648150;
    if (v7 != 0xD000000000000015)
    {
      goto LABEL_42;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_42;
  }

  v12 = 1;
LABEL_43:

  return v12 & 1;
}

uint64_t sub_216642E7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x596D756D6978616DLL;
  if (a1 != 6)
  {
    v5 = 0x506C61636F467369;
    v4 = 0xEC000000746E696FLL;
  }

  v6 = 0x586D756D6978616DLL;
  if (a1 != 4)
  {
    v6 = 0x596D756D696E696DLL;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1936941421;
  if (a1 != 2)
  {
    v8 = 0x586D756D696E696DLL;
    v7 = 0xE800000000000000;
  }

  v9 = 0x726F6C6F63;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x726F6C6F63)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936941421)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = 0xE800000000000000;
    v13 = 1768843629;
LABEL_40:
    if (v10 != (v13 | 0x586D756D00000000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    v12 = 0xE800000000000000;
    if (a2 == 4)
    {
      v13 = 1769496941;
      goto LABEL_40;
    }

    v14 = 1768843629;
LABEL_37:
    if (v10 != (v14 | 0x596D756D00000000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 == 6)
  {
    v12 = 0xE800000000000000;
    v14 = 1769496941;
    goto LABEL_37;
  }

  v12 = 0xEC000000746E696FLL;
  if (v10 != 0x506C61636F467369)
  {
LABEL_45:
    v15 = sub_216645800();
    goto LABEL_46;
  }

LABEL_43:
  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_2166430C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_216645800();
  }

  return v11 & 1;
}

uint64_t sub_2166431DC()
{
  sub_216645600();
}

uint64_t sub_216643304()
{
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

uint64_t sub_216643440()
{
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

uint64_t sub_216643558()
{
  v0 = sub_2166454A0();
  __swift_allocate_value_buffer(v0, qword_2811ACBD0);
  __swift_project_value_buffer(v0, qword_2811ACBD0);
  return sub_216645490();
}

double MeshGradientPoint.location.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MeshGradientPoint.color.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

MonogramPoster::MeshGradientPoint::CodingKeys_optional __swiftcall MeshGradientPoint.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_216645720();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MonogramPoster::MeshGradientPoint::CodingKeys_optional __swiftcall MeshGradientPoint.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = MeshGradientPoint.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_21664382C()
{
  v1 = *v0;
  v2 = 0x6E6F697461636F6CLL;
  v3 = 0x596D756D6978616DLL;
  if (v1 != 6)
  {
    v3 = 0x506C61636F467369;
  }

  v4 = 0x586D756D6978616DLL;
  if (v1 != 4)
  {
    v4 = 0x596D756D696E696DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1936941421;
  if (v1 != 2)
  {
    v5 = 0x586D756D696E696DLL;
  }

  if (*v0)
  {
    v2 = 0x726F6C6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_216643954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697461636F6CLL;
  v5 = 0xE800000000000000;
  v6 = 0x596D756D6978616DLL;
  if (v2 != 6)
  {
    v6 = 0x506C61636F467369;
    v5 = 0xEC000000746E696FLL;
  }

  v7 = 0x586D756D6978616DLL;
  if (v2 != 4)
  {
    v7 = 0x596D756D696E696DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1936941421;
  if (v2 != 2)
  {
    v9 = 0x586D756D696E696DLL;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x726F6C6F63;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_216643A90(uint64_t a1)
{
  v2 = sub_216643E54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216643ACC(uint64_t a1)
{
  v2 = sub_216643E54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MeshGradientPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1980, &qword_216647E90);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v22 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 2);
  v22 = *(v1 + 3);
  v13 = v1[4];
  v12 = v1[5];
  v15 = v1[6];
  v14 = v1[7];
  v16 = v1[8];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216643E54();
  sub_216645880();
  v23 = v10;
  v24 = v11;
  v27 = 0;
  type metadata accessor for CGPoint(0);
  sub_2166443F4(&qword_27CAB1988);
  sub_2166457F0();
  if (!v2)
  {
    v23 = sub_216642258();
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = 1;
    sub_21662F4E4();
    sub_2166457F0();
    v23 = v13;
    v27 = 2;
    sub_21662B990();
    sub_2166457F0();
    v23 = v12;
    v27 = 3;
    sub_2166457F0();
    v23 = v15;
    v27 = 4;
    sub_2166457F0();
    v23 = v14;
    v27 = 5;
    sub_2166457F0();
    v23 = v16;
    v27 = 6;
    sub_2166457F0();
    LOBYTE(v23) = 7;
    sub_2166457C0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_216643E54()
{
  result = qword_2811AB9C0;
  if (!qword_2811AB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9C0);
  }

  return result;
}

uint64_t MeshGradientPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_2166454B0();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1990, &qword_216647E98);
  v8 = *(v36 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v34 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_216643E54();
  v14 = v11;
  sub_216645870();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v15 = v35;
  v16 = v8;
  type metadata accessor for CGPoint(0);
  LOBYTE(v38) = 0;
  sub_2166443F4(&qword_2811AB7E8);
  v17 = v36;
  v18 = v14;
  sub_216645790();
  v19 = v43;
  v20 = v44;
  LOBYTE(v38) = 1;
  sub_21662F538();
  sub_216645790();
  (*(v15 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v21 = sub_2166454F0();
  LOBYTE(v38) = 2;
  sub_21662BE18();
  sub_216645790();
  v22 = v43;
  LOBYTE(v38) = 3;
  sub_216645790();
  v23 = v43;
  LOBYTE(v38) = 4;
  sub_216645790();
  v24 = v43;
  LOBYTE(v38) = 5;
  sub_216645790();
  v25 = v43;
  LOBYTE(v38) = 6;
  sub_216645790();
  v26 = v43;
  LOBYTE(v43) = 7;
  v27 = sub_216645730();
  (*(v16 + 8))(v18, v17);
  LOBYTE(v18) = v27 & 1;
  LOBYTE(v38) = v27 & 1;
  *(&v38 + 1) = v52[0];
  DWORD1(v38) = *(v52 + 3);
  *(&v38 + 1) = v19;
  *&v39 = v20;
  *(&v39 + 1) = v21;
  *&v40 = v22;
  *(&v40 + 1) = v23;
  *&v41 = v24;
  *(&v41 + 1) = v25;
  v42 = v26;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v34;
  *(v34 + 64) = v26;
  v32[2] = v30;
  v32[3] = v31;
  *v32 = v28;
  v32[1] = v29;
  sub_216631008(&v38, &v43);
  __swift_destroy_boxed_opaque_existential_1(v37);
  LOBYTE(v43) = v18;
  *(&v43 + 1) = v52[0];
  HIDWORD(v43) = *(v52 + 3);
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v51 = v26;
  return sub_216631064(&v43);
}

uint64_t sub_2166443F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MeshGradientPoint.push(by:focalPoint:sigma:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(v5 + 1);
  v48 = *v5;
  v49 = v11;
  v12 = *(v5 + 3);
  v50 = *(v5 + 2);
  v51 = v12;
  v52 = v5[8];
  v14 = *(&v48 + 1);
  v13 = *&v49;
  v15 = sqrt((*(&v48 + 1) - a3) * (*(&v48 + 1) - a3) + (*&v49 - a4) * (*&v49 - a4));
  v43 = exp(-(v15 * v15) / ((a5 + a5) * a5));
  v44 = v50;
  v16 = v43 / *&v50;
  v17 = a4 - v10;
  v18 = (a3 - v9) * (v43 / *&v50);
  v19 = v17 * (v43 / *&v50);
  if (qword_2811AB830 != -1)
  {
    swift_once();
  }

  v20 = *(&v48 + 1) + v18;
  v21 = *&v49 + v19;
  v22 = sub_2166454A0();
  __swift_project_value_buffer(v22, qword_2811ACBD0);
  sub_216631008(&v48, &v46);
  v23 = sub_216645480();
  v24 = sub_216645640();
  sub_216631064(&v48);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136316418;
    v46 = v14;
    v47 = v13;
    v27 = sub_2166455F0();
    v29 = sub_21664497C(v27, v28, &v45);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v46 = a3;
    v47 = a4;
    v30 = sub_2166455F0();
    v32 = sub_21664497C(v30, v31, &v45);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v20;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v21;
    *(v25 + 42) = 2048;
    *(v25 + 44) = v16;
    *(v25 + 52) = 2048;
    *(v25 + 54) = v43;
    _os_log_impl(&dword_216626000, v23, v24, "Transformed point %s by forcingPoint: %s) to x: %f, y: %f, factor %f falloff: %f", v25, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x21CE951C0](v26, -1, -1);
    MEMORY[0x21CE951C0](v25, -1, -1);
  }

  v33 = *(&v50 + 1);
  v34 = v51;
  if (*(&v50 + 1) > *&v51)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (*(&v50 + 1) >= v20)
  {
    v35 = *(&v50 + 1);
    if ((~*(&v50 + 1) & 0x7FF0000000000000) == 0)
    {
      if ((*(&v50 + 1) & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v35 = v20;
      }

      else
      {
        v35 = *(&v50 + 1);
      }
    }
  }

  else
  {
    v35 = v20;
  }

  if (v35 <= *&v51)
  {
    v36 = v35;
  }

  else
  {
    v36 = *&v51;
    if ((~v51 & 0x7FF0000000000000) == 0)
    {
      if ((v51 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *&v51;
      }
    }
  }

  v37 = *(&v51 + 1);
  v38 = v52;
  if (*(&v51 + 1) > v52)
  {
    goto LABEL_33;
  }

  if (*(&v51 + 1) >= v21)
  {
    v39 = *(&v51 + 1);
    if ((~*(&v51 + 1) & 0x7FF0000000000000) == 0)
    {
      if ((*(&v51 + 1) & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v39 = v13 + v19;
      }

      else
      {
        v39 = *(&v51 + 1);
      }
    }
  }

  else
  {
    v39 = v13 + v19;
  }

  if (v39 <= v52)
  {
    v40 = v39;
  }

  else
  {
    v40 = v52;
    if ((~*&v52 & 0x7FF0000000000000) == 0)
    {
      if ((*&v52 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v40 = v39;
      }

      else
      {
        v40 = v52;
      }
    }
  }

  v41 = *(&v49 + 1);
  v42 = v48;
  *(a2 + 8) = v36;
  *(a2 + 16) = v40;
  *(a2 + 24) = v41;
  *(a2 + 32) = v44;
  *(a2 + 40) = v33;
  *(a2 + 48) = v34;
  *(a2 + 56) = v37;
  *(a2 + 64) = v38;
  *a2 = v42;
  sub_216631008(&v48, &v46);
}

uint64_t MeshGradientPoint.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  sub_216645840();
  sub_216645550();
  sub_2166454E0();
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x21CE94DE0](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  MEMORY[0x21CE94DE0](*&v11);
  if (v7 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7;
  }

  MEMORY[0x21CE94DE0](*&v12);
  if (v8 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x21CE94DE0](*&v13);
  if (v9 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v9;
  }

  return MEMORY[0x21CE94DE0](*&v14);
}

uint64_t MeshGradientPoint.hashValue.getter()
{
  sub_216645820();
  MeshGradientPoint.hash(into:)();
  return sub_216645860();
}

uint64_t sub_2166448FC()
{
  sub_216645820();
  MeshGradientPoint.hash(into:)();
  return sub_216645860();
}

uint64_t sub_216644940()
{
  sub_216645820();
  MeshGradientPoint.hash(into:)();
  return sub_216645860();
}

uint64_t sub_21664497C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_216644A48(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_216645360(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_216644A48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_216644B54(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_216645690();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_216644B54(uint64_t a1, unint64_t a2)
{
  v4 = sub_216644BA0(a1, a2);
  sub_216644CD0(&unk_2828FDF48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_216644BA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_216644DBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_216645690();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_216645620();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_216644DBC(v10, 0);
        result = sub_216645670();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_216644CD0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_216644E30(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_216644DBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB19A0, &unk_216648120);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_216644E30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB19A0, &unk_216648120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t _s14MonogramPoster17MeshGradientPointV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v4 = *(a1 + 8);
  v5 = *(a2 + 3);
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v6 = *(a2 + 8);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  if ((sub_216645530() & 1) == 0)
  {
    return 0;
  }

  v11 = sub_2166454C0();
  v12 = vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v13), vceqq_f64(v16, v14)));
  v12.i16[0] = vminv_u16(v12);
  return v11 & v12.i32[0] & (v4 == v6);
}

unint64_t sub_216644FE8()
{
  result = qword_27CAB1998;
  if (!qword_27CAB1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1998);
  }

  return result;
}

unint64_t sub_216645040()
{
  result = qword_2811AB9B0;
  if (!qword_2811AB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9B0);
  }

  return result;
}

unint64_t sub_216645098()
{
  result = qword_2811AB9B8;
  if (!qword_2811AB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9B8);
  }

  return result;
}

unint64_t sub_2166450F0()
{
  result = qword_2811AB9A8;
  if (!qword_2811AB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9A8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_216645168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2166451B0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MeshGradientPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshGradientPoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_216645360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}