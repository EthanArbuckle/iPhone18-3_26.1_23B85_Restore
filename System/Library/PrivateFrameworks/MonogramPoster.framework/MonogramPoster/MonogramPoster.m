uint64_t sub_2166272F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2166453E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2166273B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2166453E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21662747C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_216627544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

double sub_216627608()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB15A8);
  v1 = __swift_project_value_buffer(v0, qword_27CAB15A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216645CB0;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_216645CD0;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216645CF0;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216645D00;
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
  *(v2 + 328) = 0x3FF3194ED3AF7C52;
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
  *(v2 + 400) = xmmword_216645D20;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC852DA3573C9FFLL;
  *(v2 + 480) = 0x3FC8CCCCCCCCCCCDLL;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216645D30;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216645D40;
  *(v2 + 592) = xmmword_216645D50;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA23A74A93BA1CLL;
  *(v2 + 624) = 0x3FC8CCCCCCCCCCCDLL;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216645D60;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC62BA989A43AC6;
  *(v2 + 768) = 0x3FD2AAAAAAAAAAABLL;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216645D70;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FDFEE308EBFB40DLL;
  *(v2 + 912) = 0x3FD9777777777777;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216645D80;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF3194ED3AF7C52;
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
  *(v2 + 1120) = xmmword_216645D90;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC8E745E0EFA13ALL;
  *(v2 + 1200) = 0x3FE3AAAAAAAAAAABLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216645DA0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FE9FE8C5FB4C44DLL;
  *(v2 + 1344) = 0x3FE3CCCCCCCCCCCDLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216645DB0;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC6C01535201201;
  *(v2 + 1488) = 0x3FEC333333333333;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216645DC0;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFA3FAB901C870;
  *(v2 + 1632) = 0x3FEAAAAAAAAAAAABLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216645DD0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF2F433E8D08683;
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
  *(v2 + 1840) = xmmword_216645DE0;
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
  *(v2 + 1912) = 0x3FC8E745E0EFA13ALL;
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
  *(v2 + 1984) = xmmword_216645DF0;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA23A74A93BA1CLL;
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
  *(v2 + 2128) = xmmword_216645E00;
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

uint64_t static GradientDefinition.lemonLime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB15A8);

  return sub_21662855C(v3, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21662855C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientDefinition();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2166285D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166285F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_2166286EC(uint64_t a1, unint64_t *a2)
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

double sub_216628738()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1660);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1660);
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

uint64_t static GradientDefinition.mintAzure.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1660);

  return sub_21662855C(v3, a1);
}

unint64_t UIColor.monogramColorDescription.getter()
{
  v10[17] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = 0;
  v7 = 0;
  v8 = 0;
  [v0 getRed:v10 green:&v9 blue:&v8 alpha:&v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1678, &qword_216645FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216645FC0;
  *(inited + 32) = 6579570;
  *(inited + 40) = 0xE300000000000000;
  v2 = v9;
  *(inited + 48) = v10[0];
  *(inited + 56) = 0x6E65657267;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 1702194274;
  *(inited + 88) = 0xE400000000000000;
  v3 = v7;
  *(inited + 96) = v8;
  *(inited + 104) = 0x6168706C61;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v3;
  v4 = sub_216629C10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1680, &qword_216645FD8);
  swift_arrayDestroy();
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

UIColor __swiftcall UIColor.init(monogramColorDescription:)(Swift::OpaquePointer monogramColorDescription)
{
  if (!*(monogramColorDescription._rawValue + 2))
  {
    v3 = 1.0;
    v4 = 1.0;
LABEL_14:
    v7 = 1.0;
LABEL_15:
    v10 = 1.0;
    goto LABEL_16;
  }

  v2 = sub_2166299B8(6579570, 0xE300000000000000);
  v3 = 1.0;
  v4 = 1.0;
  if (v5)
  {
    v4 = *(*(monogramColorDescription._rawValue + 7) + 8 * v2);
  }

  if (!*(monogramColorDescription._rawValue + 2))
  {
    goto LABEL_14;
  }

  v6 = sub_2166299B8(0x6E65657267, 0xE500000000000000);
  v7 = 1.0;
  if (v8)
  {
    v7 = *(*(monogramColorDescription._rawValue + 7) + 8 * v6);
  }

  if (!*(monogramColorDescription._rawValue + 2))
  {
    goto LABEL_15;
  }

  v9 = sub_2166299B8(1702194274, 0xE400000000000000);
  v10 = 1.0;
  if (v11)
  {
    v3 = *(*(monogramColorDescription._rawValue + 7) + 8 * v9);
  }

  if (*(monogramColorDescription._rawValue + 2))
  {
    v12 = sub_2166299B8(0x6168706C61, 0xE500000000000000);
    if (v13)
    {
      v10 = *(*(monogramColorDescription._rawValue + 7) + 8 * v12);
    }
  }

LABEL_16:

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v14 initWithRed:v4 green:v7 blue:v3 alpha:v10];
}

__n128 UIColor.truncatedKey.getter()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0.0;
  v12[0] = 0;
  v9 = 0.0;
  v10 = 0.0;
  [v0 getRed:v12 green:&v11 blue:&v10 alpha:&v9];
  *&v1.f64[0] = v12[0];
  v2.f64[0] = v10;
  v1.f64[1] = v11;
  v2.f64[1] = v9;
  v3 = vdupq_n_s64(0x412E848000000000uLL);
  v8 = vdivq_f64(vrndmq_f64(vmulq_f64(v2, v3)), v3);
  v4 = vdivq_f64(vrndmq_f64(vmulq_f64(v1, v3)), v3);
  v11 = v4.f64[1];
  v12[0] = *&v4.f64[0];
  v10 = v8.f64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1688, &qword_2166470C0);
  v5 = swift_allocObject();
  v5[1] = xmmword_216645FC0;
  result = v4;
  v5[2] = v4;
  v5[3] = v8;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2166299B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_216645820();
  sub_216645600();
  v6 = sub_216645860();

  return sub_216629A9C(a1, a2, v6);
}

unint64_t sub_216629A30(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_216645820();
  sub_21662F7B8(v6, a1);
  v4 = sub_216645860();

  return sub_216629B54(a1, v4);
}

unint64_t sub_216629A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_216645800())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_216629B54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_216629C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1690, &qword_216645FE8);
    v3 = sub_216645710();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2166299B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_216629D14()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1698);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1698);
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
  *(v2 + 328) = 0x3FF2F8B14D5C7A6ELL;
  *(v2 + 336) = 0xBFA4444444444444;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216646030;
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
  *(v2 + 688) = xmmword_216646070;
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
  *(v2 + 1048) = 0x3FF2F8B14D5C7A6ELL;
  *(v2 + 1056) = 0x3FD6888888888889;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_2166460A0;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC99FAB95BC1B77;
  *(v2 + 1200) = 0x3FE4AAAAAAAAAAABLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_2166460B0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA51BCFE8A97C2;
  *(v2 + 1344) = 0x3FE4AAAAAAAAAAABLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_2166460C0;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC57343D4D7C08ALL;
  *(v2 + 1488) = 0x3FEC99999999999ALL;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_2166460D0;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE0252DE7E28C8FLL;
  *(v2 + 1632) = 0x3FEABBBBBBBBBBBCLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_2166460E0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF30B3EC2CBF556;
  *(v2 + 1776) = 0x3FECCCCCCCCCCCCDLL;
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
  *(v2 + 1840) = xmmword_2166460F0;
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
  *(v2 + 1912) = 0x3FC99FAB95BC1B77;
  *(v2 + 1920) = 0x3FF1E66666666666;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216646100;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA51BCFE8A97C2;
  *(v2 + 2064) = 0x3FF1E66666666666;
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
  *(v2 + 2128) = xmmword_216646110;
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

uint64_t static GradientDefinition.capuccino.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1698);

  return sub_21662855C(v3, a1);
}

uint64_t static MonogramPosterUtilities.isMonogramSupported(for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16B0, &qword_216646130);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216646120;
  v3 = [a1 givenName];
  v4 = sub_2166455E0();
  v6 = v5;

  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = [a1 middleName];
  v8 = sub_2166455E0();
  v10 = v9;

  *(v2 + 48) = v8;
  *(v2 + 56) = v10;
  v11 = [a1 familyName];
  v12 = sub_2166455E0();
  v14 = v13;

  *(v2 + 64) = v12;
  *(v2 + 72) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16B8, &qword_216646138);
  sub_21662AD80();
  v15 = sub_2166455C0();
  v17 = v16;

  LOBYTE(v2) = _s14MonogramPoster0aB9UtilitiesV02isA9Supported3forSbSS_tFZ_0(v15, v17);

  return v2 & 1;
}

unint64_t sub_21662AD80()
{
  result = qword_2811AB7F8;
  if (!qword_2811AB7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB16B8, &qword_216646138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB7F8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21662AE30()
{
  v0 = sub_216645460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16C0, &qword_216646168) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v25 - v6;
  v8 = sub_216645410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 preferredLocalizations];

  v15 = sub_216645630();
  if (v15[2])
  {
    v16 = v15[4];
    v17 = v15[5];

    sub_216645440();

    sub_216645400();
    sub_2166453F0();
    sub_216645450();
    (*(v1 + 8))(v4, v0);
    v18 = sub_216645430();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_21662B394(v7);
      v20 = 0;
    }

    else
    {
      v21 = sub_216645420();
      v23 = v22;
      (*(v19 + 8))(v7, v18);
      if (v21 == 24938 && v23 == 0xE200000000000000 || (sub_216645800() & 1) != 0 || v21 == 28523 && v23 == 0xE200000000000000 || (sub_216645800() & 1) != 0 || v21 == 26746 && v23 == 0xE200000000000000 || (sub_216645800() & 1) != 0 || v21 == 29281 && v23 == 0xE200000000000000)
      {

        v20 = 1;
      }

      else
      {
        v20 = sub_216645800();
      }
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {

    v20 = 0;
  }

  return v20 & 1;
}

uint64_t _s14MonogramPoster0aB9UtilitiesV02isA9Supported3forSbSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_2166455D0();
    v4 = CNIsChineseJapaneseKoreanString();

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = sub_2166455D0();
      v7 = CNIsArabicString();

      v5 = v7 ^ 1;
    }
  }

  else
  {
    v5 = sub_21662AE30() ^ 1;
  }

  return v5 & 1;
}

uint64_t getEnumTagSinglePayload for MonogramPosterUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MonogramPosterUtilities(_WORD *result, int a2, int a3)
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

uint64_t sub_21662B394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16C0, &qword_216646168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GradientDefinition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2166453E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21662B544()
{
  v1 = *v0;
  sub_216645820();
  MEMORY[0x21CE94DC0](v1);
  return sub_216645860();
}

uint64_t sub_21662B5B8()
{
  v1 = *v0;
  sub_216645820();
  MEMORY[0x21CE94DC0](v1);
  return sub_216645860();
}

uint64_t sub_21662B5FC()
{
  v1 = 0x59737569646172;
  if (*v0 != 1)
  {
    v1 = 0x616D676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x58737569646172;
  }
}

uint64_t sub_21662B654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216630EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21662B694(uint64_t a1)
{
  v2 = sub_21662B93C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21662B6D0(uint64_t a1)
{
  v2 = sub_21662B93C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientDefinition.CenterMovementConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16C8, &qword_216646180);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662B93C();
  sub_216645880();
  v16 = v10;
  v15 = 0;
  sub_21662B990();
  sub_2166457F0();
  if (!v2)
  {
    v16 = v9;
    v15 = 1;
    sub_2166457F0();
    v16 = v11;
    v15 = 2;
    sub_2166457F0();
  }

  return (*(v5 + 8))(v8, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21662B93C()
{
  result = qword_2811AB938;
  if (!qword_2811AB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB938);
  }

  return result;
}

unint64_t sub_21662B990()
{
  result = qword_2811ABA00;
  if (!qword_2811ABA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ABA00);
  }

  return result;
}

uint64_t GradientDefinition.CenterMovementConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CE94DE0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CE94DE0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x21CE94DE0](*&v5);
}

uint64_t GradientDefinition.CenterMovementConfiguration.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_216645820();
  GradientDefinition.CenterMovementConfiguration.hash(into:)();
  return sub_216645860();
}

uint64_t GradientDefinition.CenterMovementConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16D0, &qword_216646188);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662B93C();
  sub_216645870();
  if (!v2)
  {
    v16 = 0;
    sub_21662BE18();
    sub_216645790();
    v11 = v17;
    v16 = 1;
    sub_216645790();
    v13 = v17;
    v16 = 2;
    sub_216645790();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21662BD24()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_216645820();
  GradientDefinition.CenterMovementConfiguration.hash(into:)();
  return sub_216645860();
}

uint64_t sub_21662BD7C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_216645820();
  GradientDefinition.CenterMovementConfiguration.hash(into:)();
  return sub_216645860();
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

unint64_t sub_21662BE18()
{
  result = qword_2811AB9F8;
  if (!qword_2811AB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9F8);
  }

  return result;
}

uint64_t GradientDefinition.TextPlatterConfiguration.color.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GradientDefinition.TextPlatterConfiguration.init(diameter:color:blurRadius:opacity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

MonogramPoster::GradientDefinition::TextPlatterConfiguration::CodingKeys_optional __swiftcall GradientDefinition.TextPlatterConfiguration.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_216645720();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GradientDefinition.TextPlatterConfiguration.CodingKeys.stringValue.getter()
{
  v1 = 0x726574656D616964;
  v2 = 0x6964615272756C62;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_21662C05C()
{
  v1 = *v0;
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

uint64_t sub_21662C120()
{
  *v0;
  *v0;
  *v0;
  sub_216645600();
}

uint64_t sub_21662C1D0()
{
  v1 = *v0;
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

void sub_21662C29C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x726574656D616964;
  v4 = 0xEA00000000007375;
  v5 = 0x6964615272756C62;
  if (*v1 != 2)
  {
    v5 = 0x7974696361706FLL;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21662C31C()
{
  v1 = 0x726574656D616964;
  v2 = 0x6964615272756C62;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_21662C3DC(uint64_t a1)
{
  v2 = sub_21662C680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21662C418(uint64_t a1)
{
  v2 = sub_21662C680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientDefinition.TextPlatterConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16D8, &qword_216646190);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662C680();
  sub_216645880();
  v19 = v9;
  v23 = 0;
  sub_21662B990();
  sub_2166457F0();
  if (!v2)
  {
    v19 = sub_216642258();
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = 1;
    sub_21662F4E4();
    sub_2166457F0();
    v19 = v12;
    v23 = 2;
    sub_2166457F0();
    v19 = v11;
    v23 = 3;
    sub_2166457F0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21662C680()
{
  result = qword_2811AB960;
  if (!qword_2811AB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB960);
  }

  return result;
}

uint64_t GradientDefinition.TextPlatterConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = sub_2166454B0();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16E8, &qword_216646198);
  v8 = *(v25 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662C680();
  sub_216645870();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v7;
  v22 = v4;
  v13 = v8;
  v14 = v24;
  v27 = 0;
  sub_21662BE18();
  v15 = v25;
  sub_216645790();
  v16 = v26;
  v27 = 1;
  sub_21662F538();
  sub_216645790();
  (*(v23 + 104))(v21, *MEMORY[0x277CE0EE0], v22);
  v17 = sub_2166454F0();
  v27 = 2;
  sub_216645790();
  v18 = v26;
  v27 = 3;
  sub_216645790();
  (*(v13 + 8))(v11, v15);
  v19 = v26;
  *v14 = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GradientDefinition.TextPlatterConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CE94DE0](*&v1);
  sub_2166454E0();
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x21CE94DE0](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x21CE94DE0](*&v6);
}

uint64_t GradientDefinition.TextPlatterConfiguration.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_216645820();
  GradientDefinition.TextPlatterConfiguration.hash(into:)();
  return sub_216645860();
}

uint64_t sub_21662CB84()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_216645820();
  GradientDefinition.TextPlatterConfiguration.hash(into:)();
  return sub_216645860();
}

uint64_t sub_21662CBE4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_216645820();
  GradientDefinition.TextPlatterConfiguration.hash(into:)();
  return sub_216645860();
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.colors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_216645720();

  *a1 = v2 != 0;
  return result;
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_216645720();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21662CD88()
{
  sub_216645820();
  sub_216645600();
  return sub_216645860();
}

uint64_t sub_21662CDEC()
{
  sub_216645820();
  sub_216645600();
  return sub_216645860();
}

uint64_t sub_21662CE38@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_216645720();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21662CEB8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_216645720();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21662CF1C(uint64_t a1)
{
  v2 = sub_21662FB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21662CF58(uint64_t a1)
{
  v2 = sub_21662FB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.encode(to:)(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB16F0, &qword_2166461A0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v25 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662FB44();
  sub_216645880();
  v11 = *(v9 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v25[1] = v2;
    v26 = v5;
    v27 = v4;
    v32 = MEMORY[0x277D84F90];
    sub_21662F58C(0, v11, 0);
    sub_21662FB98();
    v12 = v32;
    v13 = (v9 + 32);
    do
    {
      v14 = *v13;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      swift_retain_n();
      v15 = sub_216645650();
      [v15 getRed:&v31 green:&v30 blue:&v29 alpha:&v28];

      v17 = v30;
      v16 = v31;
      v19 = v28;
      v18 = v29;
      v32 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21662F58C((v20 > 1), v21 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v21 + 1;
      v22 = (v12 + 32 * v21);
      v22[4] = v16;
      v22[5] = v17;
      v22[6] = v18;
      v22[7] = v19;
      ++v13;
      --v11;
    }

    while (v11);
    v5 = v26;
    v4 = v27;
  }

  v32 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1700, &qword_2166461A8);
  sub_21662FBE4(&qword_27CAB1708, sub_21662F4E4);
  sub_2166457F0();

  result = (*(v5 + 8))(v8, v4);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v4 = sub_2166454B0();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1710, &qword_2166461B0);
  v31 = *(v8 - 8);
  v9 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662FB44();
  sub_216645870();
  if (!v2)
  {
    v29 = v4;
    v13 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1700, &qword_2166461A8);
    sub_21662FBE4(&qword_2811AB810, sub_21662F538);
    sub_216645790();
    v14 = *(v35 + 16);
    if (v14)
    {
      v26[0] = v11;
      v26[1] = 0;
      v27 = v8;
      v28 = a1;
      v34 = MEMORY[0x277D84F90];
      v15 = v35;
      sub_2166456C0();
      v33 = *MEMORY[0x277CE0EE0];
      v16 = v29;
      v17 = *(v30 + 104);
      v30 = v15;
      v18 = (v15 + 56);
      do
      {
        v19 = *(v18 - 3);
        v20 = *(v18 - 2);
        v21 = *(v18 - 1);
        v22 = *v18;
        v17(v7, v33, v16);
        sub_2166454F0();
        sub_2166456A0();
        v23 = *(v34 + 16);
        sub_2166456D0();
        sub_2166456E0();
        sub_2166456B0();
        v18 += 4;
        --v14;
      }

      while (v14);
      (*(v31 + 8))(v26[0], v27);

      v24 = v34;
      a1 = v28;
      v13 = v32;
    }

    else
    {

      (*(v31 + 8))(v11, v8);
      v24 = MEMORY[0x277D84F90];
    }

    *v13 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static GradientDefinition.PairedAvatarBackgroundRepresentation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 == *(*a2 + 16))
  {
    if (!v4 || v2 == v3)
    {
      v9 = 1;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v8 = *v6++;

        v9 = sub_2166454C0();

        if ((v9 & 1) == 0)
        {
          break;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21662D688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        v7 = sub_2166454C0();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21662D740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 80);
    v22 = *(a1 + 64);
    v23 = v3;
    v24 = *(a1 + 96);
    v4 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = v4;
    v5 = *(a2 + 80);
    v27 = *(a2 + 64);
    v28 = v5;
    v29 = *(a2 + 96);
    v6 = *(a2 + 48);
    v25 = *(a2 + 32);
    v26 = v6;
    if (v20 == v25)
    {
      v8 = (a1 + 104);
      v9 = (a2 + 104);
      while (1)
      {
        sub_216631008(&v20, v19);
        sub_216631008(&v25, v19);
        if ((sub_216645530() & 1) == 0)
        {
          break;
        }

        v10 = sub_2166454C0();
        sub_216631064(&v25);
        sub_216631064(&v20);
        if ((v10 & 1) != 0 && *&v22 == *&v27 && *(&v22 + 1) == *(&v27 + 1) && *&v23 == *&v28 && *(&v23 + 1) == *(&v28 + 1) && v24 == v29)
        {
          if (!--v2)
          {
            return 1;
          }

          v11 = v8[3];
          v22 = v8[2];
          v23 = v11;
          v12 = *(v8 + 8);
          v14 = *v8;
          v13 = v8[1];
          v8 = (v8 + 72);
          v20 = v14;
          v21 = v13;
          v15 = v9[3];
          v27 = v9[2];
          v28 = v15;
          v16 = *(v9 + 8);
          v18 = *v9;
          v17 = v9[1];
          v9 = (v9 + 72);
          v24 = v12;
          v29 = v16;
          v25 = v18;
          v26 = v17;
          if (v20 == v18)
          {
            continue;
          }
        }

        return 0;
      }

      sub_216631064(&v25);
      sub_216631064(&v20);
    }

    return 0;
  }

  return 1;
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x21CE94DC0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;

      sub_2166454E0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t GradientDefinition.PairedAvatarBackgroundRepresentation.hashValue.getter()
{
  v1 = *v0;
  sub_216645820();
  MEMORY[0x21CE94DC0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;

      sub_2166454E0();

      --v2;
    }

    while (v2);
  }

  return sub_216645860();
}

uint64_t sub_21662DA3C()
{
  v1 = *v0;
  result = MEMORY[0x21CE94DC0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;

      sub_2166454E0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21662DAA8()
{
  v1 = *v0;
  sub_216645820();
  MEMORY[0x21CE94DC0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;

      sub_2166454E0();

      --v2;
    }

    while (v2);
  }

  return sub_216645860();
}

uint64_t GradientDefinition.width.setter(uint64_t a1)
{
  result = type metadata accessor for GradientDefinition();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t GradientDefinition.height.setter(uint64_t a1)
{
  result = type metadata accessor for GradientDefinition();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t GradientDefinition.points.getter()
{
  v1 = *(v0 + *(type metadata accessor for GradientDefinition() + 28));
}

uint64_t GradientDefinition.points.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GradientDefinition() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

__n128 GradientDefinition.movementConfiguration.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GradientDefinition() + 32));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  return result;
}

__n128 GradientDefinition.movementConfiguration.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for GradientDefinition() + 32));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t GradientDefinition.textPlatterConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GradientDefinition() + 36);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 GradientDefinition.textPlatterConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GradientDefinition() + 36);
  v4 = *(v3 + 8);

  result = *a1;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  return result;
}

uint64_t GradientDefinition.pairedAvatarBackgroundRepresentation.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for GradientDefinition() + 40));
}

uint64_t GradientDefinition.pairedAvatarBackgroundRepresentation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for GradientDefinition() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

MonogramPoster::GradientDefinition::CodingKeys_optional __swiftcall GradientDefinition.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_216645720();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MonogramPoster::GradientDefinition::CodingKeys_optional __swiftcall GradientDefinition.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = GradientDefinition.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_21662E068()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6874646977;
    if (v1 != 1)
    {
      v5 = 0x746867696568;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0xD000000000000024;
    if (v1 == 5)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0x73746E696F70;
    if (v1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21662E150()
{
  *v0;
  sub_216645600();
}

void sub_21662E268(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE200000000000000;
    v9 = 0xE500000000000000;
    v10 = 0x6874646977;
    if (v2 != 1)
    {
      v10 = 0x746867696568;
      v9 = 0xE600000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 25705;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000216648170;
    v4 = 0xD000000000000024;
    if (v2 == 5)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v3 = 0x8000000216648190;
    }

    v5 = 0xE600000000000000;
    v6 = 0x73746E696F70;
    if (v2 != 3)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000216648150;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_21662E384(uint64_t a1)
{
  v2 = sub_21662FCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21662E3C0(uint64_t a1)
{
  v2 = sub_21662FCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientDefinition.hash(into:)(uint64_t a1)
{
  sub_2166453E0();
  sub_2166304D8(&qword_27CAB1718, MEMORY[0x277CC95F0]);
  sub_2166455B0();
  v3 = type metadata accessor for GradientDefinition();
  MEMORY[0x21CE94DC0](*(v1 + v3[5]));
  MEMORY[0x21CE94DC0](*(v1 + v3[6]));
  sub_21662F6B0(a1, *(v1 + v3[7]));
  v4 = (v1 + v3[8]);
  if (*(v4 + 24) == 1)
  {
    sub_216645840();
  }

  else
  {
    v6 = v4[1];
    v5 = v4[2];
    v7 = *v4;
    sub_216645840();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CE94DE0](v8);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CE94DE0](v9);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x21CE94DE0](v10);
  }

  v11 = (v1 + v3[9]);
  if (v11[1])
  {
    v13 = v11[2];
    v12 = v11[3];
    v14 = *v11;
    sub_216645840();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x21CE94DE0](v15);
    sub_2166454E0();
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x21CE94DE0](v16);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x21CE94DE0](v17);
  }

  else
  {
    sub_216645840();
  }

  v18 = *(v1 + v3[10]);
  result = MEMORY[0x21CE94DC0](*(v18 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = (v18 + 32);
    do
    {
      v22 = *v21++;

      sub_2166454E0();

      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t GradientDefinition.hashValue.getter()
{
  sub_216645820();
  GradientDefinition.hash(into:)(v1);
  return sub_216645860();
}

uint64_t sub_21662E610()
{
  sub_216645820();
  GradientDefinition.hash(into:)(v1);
  return sub_216645860();
}

uint64_t sub_21662E654()
{
  sub_216645820();
  GradientDefinition.hash(into:)(v1);
  return sub_216645860();
}

uint64_t sub_21662E690@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2166453E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GradientDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1720, &qword_2166461B8);
  v31 = *(v3 - 8);
  v4 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v30 - v5;
  v7 = type metadata accessor for GradientDefinition();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2166453D0();
  v11 = &v10[v7[8]];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v11[24] = 1;
  v12 = v7;
  v13 = v10;
  v14 = &v10[v7[9]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v34 = v14;
  v35 = a1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662FCA8();
  v16 = v33;
  sub_216645870();
  if (v16)
  {
    v19 = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v20 = sub_2166453E0();
    (*(*(v20 - 8) + 8))(v13, v20);
    v21 = *(v19 + 1);
  }

  else
  {
    v17 = v31;
    v18 = v32;
    LOBYTE(v36) = 1;
    *(v13 + v7[5]) = sub_216645780();
    LOBYTE(v36) = 2;
    *(v13 + v7[6]) = sub_216645780();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1728, &qword_2166461C0);
    v38 = 3;
    sub_21662FCFC(&qword_2811AB800, sub_21662FD74);
    sub_216645790();
    *(v13 + v7[7]) = v36;
    v38 = 4;
    sub_21662FDC8();
    sub_216645740();
    v23 = v37;
    v24 = BYTE8(v37);
    *v11 = v36;
    *(v11 + 2) = v23;
    v11[24] = v24;
    v38 = 5;
    sub_21662FE1C();
    sub_216645740();
    v25 = v34;
    v26 = *(v34 + 1);
    v33 = v36;
    v30 = v37;

    v27 = v30;
    *v25 = v33;
    *(v25 + 1) = v27;
    v38 = 6;
    sub_21662FE70();
    sub_216645740();
    v28 = v36;
    if (v36)
    {
      v29 = v18;
    }

    else
    {
      v29 = v18;
      if (qword_2811AB968 != -1)
      {
        swift_once();
      }

      v28 = *(__swift_project_value_buffer(v12, qword_2811AB970) + *(v12 + 40));
    }

    (*(v17 + 8))(v6, v3);
    *(v13 + *(v12 + 40)) = v28;
    sub_21662855C(v13, v29);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_21662FEC4(v13);
  }
}

uint64_t GradientDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1730, &qword_2166461C8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21662FCA8();
  sub_216645880();
  v20[0] = 0;
  sub_2166453E0();
  sub_2166304D8(&qword_27CAB1738, MEMORY[0x277CC95F0]);
  sub_2166457F0();
  if (!v2)
  {
    v11 = type metadata accessor for GradientDefinition();
    v12 = *(v3 + v11[5]);
    v20[0] = 1;
    sub_2166457E0();
    v13 = *(v3 + v11[6]);
    v20[0] = 2;
    sub_2166457E0();
    *v20 = *(v3 + v11[7]);
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1728, &qword_2166461C0);
    sub_21662FCFC(&qword_27CAB1740, sub_21662FF20);
    sub_2166457F0();
    v14 = v3 + v11[8];
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    *v20 = *v14;
    *&v20[16] = v15;
    LOBYTE(v21) = v16;
    v22 = 4;
    sub_21662FF74();
    sub_2166457A0();
    v17 = v3 + v11[9];
    v18 = *(v17 + 24);
    *v20 = *v17;
    *&v20[8] = *(v17 + 8);
    v21 = v18;
    v22 = 5;
    sub_21662FFC8();

    sub_2166457A0();

    *v20 = *(v3 + v11[10]);
    v22 = 6;
    sub_21663001C();

    sub_2166457F0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GradientDefinition.ColorConfiguration.topColor.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GradientDefinition.ColorConfiguration.midColor.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GradientDefinition.ColorConfiguration.bottomColor.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t GradientDefinition.ColorConfiguration.blendedBottomColor.getter()
{
  v1 = sub_216645520();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v6 = *(v0 + 16);
  sub_216645510();
  v8 = sub_2166454D0();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t GradientDefinition.ColorConfiguration.focalColor.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t GradientDefinition.ColorConfiguration.textPlatterColor.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t GradientDefinition.ColorConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();

  return sub_2166454E0();
}

uint64_t GradientDefinition.ColorConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_216645820();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  return sub_216645860();
}

uint64_t sub_21662F348()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_216645820();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  return sub_216645860();
}

uint64_t sub_21662F3D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();

  return sub_2166454E0();
}

uint64_t sub_21662F454()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_216645820();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  sub_2166454E0();
  return sub_216645860();
}

unint64_t sub_21662F4E4()
{
  result = qword_27CAB16E0;
  if (!qword_27CAB16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB16E0);
  }

  return result;
}

unint64_t sub_21662F538()
{
  result = qword_2811AB9C8;
  if (!qword_2811AB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9C8);
  }

  return result;
}

char *sub_21662F58C(char *a1, int64_t a2, char a3)
{
  result = sub_21662F5AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21662F5AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB17B0, &unk_216646C00);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_21662F6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CE94DC0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 + 1);
      v10 = v5[2];
      v11 = v5[3];
      v12 = v5[4];
      v13 = v5[5];
      v14 = v5[6];
      sub_216645840();

      sub_216645550();
      sub_2166454E0();
      if (v10 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v10;
      }

      MEMORY[0x21CE94DE0](*&v15);
      if (v11 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v11;
      }

      MEMORY[0x21CE94DE0](*&v16);
      if (v12 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v12;
      }

      MEMORY[0x21CE94DE0](*&v17);
      if (v13 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v13;
      }

      MEMORY[0x21CE94DE0](*&v18);
      if (v14 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v14;
      }

      MEMORY[0x21CE94DE0](*&v19);

      v5 += 9;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21662F7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CE94DC0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x21CE94DE0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s14MonogramPoster18GradientDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2166453C0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GradientDefinition();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_21662D740(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    return 0;
  }

  v6 = v5;
  v7 = v5[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 24);
  v10 = a2 + v7;
  if (v9)
  {
    if ((*(v10 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v10 + 24))
    {
      return 0;
    }

    v11 = *v8 == *v10 && v8[1] == *(v10 + 8);
    if (!v11 || v8[2] != *(v10 + 16))
    {
      return 0;
    }
  }

  v13 = v5[9];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = a2 + v13;
  v17 = *(v16 + 8);
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_27;
    }

    v25 = *(v16 + 8);
    goto LABEL_26;
  }

  if (!v17)
  {
LABEL_26:

    return 0;
  }

  v18 = *v14;
  v20 = v14[2];
  v19 = v14[3];
  v21 = *v16;
  v23 = *(v16 + 16);
  v22 = *(v16 + 24);

  if (v18 == v21)
  {

    v24 = sub_2166454C0();

    if ((v24 & 1) != 0 && v20 == v23)
    {

      v6 = v5;
      if (v19 != v22)
      {
        return 0;
      }

LABEL_27:
      v26 = v6[10];
      v27 = *(a1 + v26);
      v28 = *(a2 + v26);

      v29 = sub_21662D688(v27, v28);

      return v29 & 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _s14MonogramPoster18GradientDefinitionV18ColorConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if ((sub_2166454C0() & 1) == 0 || (sub_2166454C0() & 1) == 0 || (sub_2166454C0() & 1) == 0 || (sub_2166454C0() & 1) == 0)
  {
    return 0;
  }

  return sub_2166454C0();
}

uint64_t _s14MonogramPoster18GradientDefinitionV24TextPlatterConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v4 = *(a2 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = sub_2166454C0() & (v6 == v3);
  if (v5 == v2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21662FB44()
{
  result = qword_2811AB910;
  if (!qword_2811AB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB910);
  }

  return result;
}

unint64_t sub_21662FB98()
{
  result = qword_27CAB16F8;
  if (!qword_27CAB16F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB16F8);
  }

  return result;
}

uint64_t sub_21662FBE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB1700, &qword_2166461A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GradientDefinition()
{
  result = qword_2811AB8D8;
  if (!qword_2811AB8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21662FCA8()
{
  result = qword_2811AB998;
  if (!qword_2811AB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB998);
  }

  return result;
}

uint64_t sub_21662FCFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB1728, &qword_2166461C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21662FD74()
{
  result = qword_2811AB9A0;
  if (!qword_2811AB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB9A0);
  }

  return result;
}

unint64_t sub_21662FDC8()
{
  result = qword_2811AB920;
  if (!qword_2811AB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB920);
  }

  return result;
}

unint64_t sub_21662FE1C()
{
  result = qword_2811AB948;
  if (!qword_2811AB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB948);
  }

  return result;
}

unint64_t sub_21662FE70()
{
  result = qword_2811AB8F8;
  if (!qword_2811AB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB8F8);
  }

  return result;
}

uint64_t sub_21662FEC4(uint64_t a1)
{
  v2 = type metadata accessor for GradientDefinition();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21662FF20()
{
  result = qword_27CAB1748;
  if (!qword_27CAB1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1748);
  }

  return result;
}

unint64_t sub_21662FF74()
{
  result = qword_27CAB1750;
  if (!qword_27CAB1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1750);
  }

  return result;
}

unint64_t sub_21662FFC8()
{
  result = qword_27CAB1758;
  if (!qword_27CAB1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1758);
  }

  return result;
}

unint64_t sub_21663001C()
{
  result = qword_27CAB1760;
  if (!qword_27CAB1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1760);
  }

  return result;
}

unint64_t sub_216630074()
{
  result = qword_27CAB1768;
  if (!qword_27CAB1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1768);
  }

  return result;
}

unint64_t sub_2166300CC()
{
  result = qword_27CAB1770;
  if (!qword_27CAB1770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1770);
  }

  return result;
}

unint64_t sub_216630124()
{
  result = qword_2811AB950;
  if (!qword_2811AB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB950);
  }

  return result;
}

unint64_t sub_21663017C()
{
  result = qword_2811AB958;
  if (!qword_2811AB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB958);
  }

  return result;
}

unint64_t sub_2166301D4()
{
  result = qword_27CAB1778;
  if (!qword_27CAB1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1778);
  }

  return result;
}

unint64_t sub_21663022C()
{
  result = qword_27CAB1780;
  if (!qword_27CAB1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1780);
  }

  return result;
}

unint64_t sub_216630284()
{
  result = qword_2811AB900;
  if (!qword_2811AB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB900);
  }

  return result;
}

unint64_t sub_2166302DC()
{
  result = qword_2811AB908;
  if (!qword_2811AB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB908);
  }

  return result;
}

unint64_t sub_216630334()
{
  result = qword_27CAB1788;
  if (!qword_27CAB1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1788);
  }

  return result;
}

unint64_t sub_21663038C()
{
  result = qword_27CAB1790;
  if (!qword_27CAB1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1790);
  }

  return result;
}

unint64_t sub_2166303E4()
{
  result = qword_2811AB988;
  if (!qword_2811AB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB988);
  }

  return result;
}

unint64_t sub_21663043C()
{
  result = qword_2811AB990;
  if (!qword_2811AB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB990);
  }

  return result;
}

uint64_t sub_2166304D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21663056C()
{
  result = qword_27CAB17A0;
  if (!qword_27CAB17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB17A0);
  }

  return result;
}

void sub_2166305E8()
{
  sub_2166453E0();
  if (v0 <= 0x3F)
  {
    sub_216630720(319, &qword_2811AB808, &type metadata for MeshGradientPoint, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_216630720(319, &qword_2811AB918, &type metadata for GradientDefinition.CenterMovementConfiguration, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216630720(319, &qword_2811AB940, &type metadata for GradientDefinition.TextPlatterConfiguration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216630720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GradientDefinition.CenterMovementConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GradientDefinition.CenterMovementConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
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

uint64_t sub_2166307EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_216630834(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GradientDefinition.TextPlatterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GradientDefinition.TextPlatterConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2166309EC(uint64_t *a1, int a2)
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

uint64_t sub_216630A34(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GradientDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GradientDefinition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_216630BFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_216630C44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GradientDefinition.CenterMovementConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GradientDefinition.CenterMovementConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216630DF0()
{
  result = qword_27CAB17A8;
  if (!qword_27CAB17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB17A8);
  }

  return result;
}

unint64_t sub_216630E48()
{
  result = qword_2811AB928;
  if (!qword_2811AB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB928);
  }

  return result;
}

unint64_t sub_216630EA0()
{
  result = qword_2811AB930;
  if (!qword_2811AB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AB930);
  }

  return result;
}

uint64_t sub_216630EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x58737569646172 && a2 == 0xE700000000000000;
  if (v4 || (sub_216645800() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x59737569646172 && a2 == 0xE700000000000000 || (sub_216645800() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D676973 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_216645800();

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

double sub_2166310D0()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB17B8);
  v1 = __swift_project_value_buffer(v0, qword_27CAB17B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216646C10;
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
  *(v2 + 328) = 0x3FF289608CBF9903;
  *(v2 + 336) = 0xBFA5555555555555;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216646C20;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC90B3FEA40443BLL;
  *(v2 + 480) = 0x3FC6EEEEEEEEEEEFLL;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216646C30;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216646C40;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x3FD999999999999ALL;
  *(v2 + 576) = xmmword_216645D10;
  *(v2 + 592) = xmmword_216645D10;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA51BCFE8A97C2;
  *(v2 + 624) = 0x3FC6EEEEEEEEEEEFLL;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216646C30;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216646C50;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFBCFC6F6F2AFD4DLL;
  *(v2 + 768) = 0x3FD3777777777777;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216646C60;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x3FF8000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FDA222222222222;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216646C70;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216646C80;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x3FF8000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF289608CBF9903;
  *(v2 + 1056) = 0x3FD4444444444444;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216646C90;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1200) = 0x3FE3AAAAAAAAAAABLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216646CA0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216646CB0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4000000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v2 + 1344) = 0x3FE3AAAAAAAAAAABLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216646CA0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216646CC0;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFBCFC6F6F2AFD4DLL;
  *(v2 + 1488) = 0x3FEB555555555555;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216646CD0;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE00012FD0396C0;
  *(v2 + 1632) = 0x3FEA222222222222;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216646CE0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF289608CBF9903;
  *(v2 + 1776) = 0x3FEB666666666666;
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
  *(v2 + 1840) = xmmword_216646CF0;
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
  *(v2 + 2128) = xmmword_216646D10;
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

uint64_t static GradientDefinition.deepIndigo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB17B8);

  return sub_21662855C(v3, a1);
}

double sub_216631FE8()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB17D0);
  v1 = __swift_project_value_buffer(v0, qword_27CAB17D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216646D20;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_216646D30;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216646D40;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216646D50;
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
  *(v2 + 328) = 0x3FF289608CBF9903;
  *(v2 + 336) = 0xBFA4444444444444;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216646D60;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC876D43EC46D00;
  *(v2 + 480) = 0x3FC8000000000000;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216646D70;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216645EF0;
  *(v2 + 592) = xmmword_216646D80;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA2CA213ABA1F3;
  *(v2 + 624) = 0x3FC8000000000000;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216646D90;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC28D2967F86144;
  *(v2 + 768) = 0x3FD6AAAAAAAAAAABLL;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216646DA0;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FDFB5F0244941E2;
  *(v2 + 912) = 0x3FDD555555555555;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216646DB0;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF276D317501E1BLL;
  *(v2 + 1056) = 0x3FD7777777777777;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216646DC0;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1200) = 0x3FE4111111111111;
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
  *(v2 + 1336) = 0x3FEA51BCFE8A97C2;
  *(v2 + 1344) = 0x3FE4777777777777;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216646DD0;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC1F8BDBC7C8A09;
  *(v2 + 1488) = 0x3FEC444444444444;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216646DE0;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE00012FD0396C0;
  *(v2 + 1632) = 0x3FEADDDDDDDDDDDELL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216646DF0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF2AE7B779E8ED1;
  *(v2 + 1776) = 0x3FECCCCCCCCCCCCDLL;
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
  *(v2 + 1840) = xmmword_216646E00;
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
  *(v2 + 2128) = xmmword_216646E10;
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

uint64_t static GradientDefinition.defaultNaturalDark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB17D0);

  return sub_21662855C(v3, a1);
}

MonogramPoster::MonogramPosterBackgroundColor __swiftcall MonogramPosterBackgroundColor.init(topColor:bottomColor:)(UIColor topColor, UIColor bottomColor)
{
  v2->super.isa = topColor.super.isa;
  v2[1].super.isa = bottomColor.super.isa;
  result.bottomColor = bottomColor;
  result.topColor = topColor;
  return result;
}

id sub_216632FF0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.658823529 green:0.678431373 blue:0.729411765 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.529411765 green:0.549019608 blue:0.588235294 alpha:1.0];
  qword_2811ACCD8 = v0;
  unk_2811ACCE0 = result;
  return result;
}

id sub_216633084()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.839215686 green:0.803921569 blue:0.97254902 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.709803922 green:0.643137255 blue:0.949019608 alpha:1.0];
  qword_2811ACC08 = v0;
  unk_2811ACC10 = result;
  return result;
}

id sub_21663311C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.701960784 green:0.835294118 blue:0.937254902 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.454901961 green:0.698039216 blue:0.88627451 alpha:1.0];
  qword_2811ACCE8 = v0;
  unk_2811ACCF0 = result;
  return result;
}

id sub_2166331B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.964705882 green:0.721568627 blue:0.8 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.937254902 green:0.490196078 blue:0.639215686 alpha:1.0];
  qword_2811ACCC8 = v0;
  unk_2811ACCD0 = result;
  return result;
}

id sub_216633244()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.960784314 green:0.850980392 blue:0.68627451 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.929411765 green:0.725490196 blue:0.431372549 alpha:1.0];
  qword_2811ACBF8 = v0;
  unk_2811ACC00 = result;
  return result;
}

id sub_2166332D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.792156863 green:0.949019608 blue:0.741176471 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.623529412 green:0.905882353 blue:0.529411765 alpha:1.0];
  qword_2811ACCB8 = v0;
  unk_2811ACCC0 = result;
  return result;
}

id sub_21663336C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.882352941 green:0.776470588 blue:0.764705882 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.788235294 green:0.592156863 blue:0.57254902 alpha:1.0];
  qword_2811ACCF8 = v0;
  unk_2811ACD00 = result;
  return result;
}

id sub_216633408()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.941176471 green:0.764705882 blue:0.662745098 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.894117647 green:0.568627451 blue:0.388235294 alpha:1.0];
  qword_2811ACC18 = v0;
  unk_2811ACC20 = result;
  return result;
}

id sub_2166334A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.839215686 green:0.807843137 blue:0.870588235 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.705882353 green:0.647058824 blue:0.764705882 alpha:1.0];
  qword_2811ACC58 = v0;
  unk_2811ACC60 = result;
  return result;
}

id sub_21663353C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.843137255 blue:0.905882353 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.603921569 green:0.717647059 blue:0.82745098 alpha:1.0];
  qword_2811ACC88 = v0;
  unk_2811ACC90 = result;
  return result;
}

id sub_2166335D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.815686275 green:0.909803922 blue:0.917647059 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.666666667 green:0.835294118 blue:0.847058824 alpha:1.0];
  qword_2811ACC78 = v0;
  unk_2811ACC80 = result;
  return result;
}

id sub_216633668()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.941176471 green:0.717647059 blue:0.925490196 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.890196078 green:0.48627451 blue:0.866666667 alpha:1.0];
  qword_2811ACC28 = v0;
  unk_2811ACC30 = result;
  return result;
}

id sub_216633708()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.666666667 green:0.941176471 blue:0.949019608 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.396078431 green:0.894117647 blue:0.905882353 alpha:1.0];
  qword_2811ACCA8 = v0;
  unk_2811ACCB0 = result;
  return result;
}

id sub_2166337A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.694117647 green:0.956862745 blue:0.764705882 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.443137255 green:0.921568627 blue:0.568627451 alpha:1.0];
  qword_2811ACC98 = v0;
  unk_2811ACCA0 = result;
  return result;
}

id sub_21663383C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.850980392 green:0.831372549 blue:0.811764706 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.725490196 green:0.694117647 blue:0.654901961 alpha:1.0];
  qword_2811ACC48 = v0;
  unk_2811ACC50 = result;
  return result;
}

id sub_2166338D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.901960784 green:0.839215686 blue:0.749019608 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.819607843 green:0.705882353 blue:0.541176471 alpha:1.0];
  qword_2811ACC38 = v0;
  unk_2811ACC40 = result;
  return result;
}

id sub_216633964()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.831372549 green:0.866666667 blue:0.815686275 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.690196078 green:0.760784314 blue:0.666666667 alpha:1.0];
  qword_2811ACC68 = v0;
  unk_2811ACC70 = result;
  return result;
}

id sub_2166339FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  qword_2811ACBE8 = v0;
  unk_2811ACBF0 = result;
  return result;
}

id sub_216633A80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1800, &qword_2166470D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216647060;
  if (qword_2811ABA80 != -1)
  {
    swift_once();
  }

  v1 = qword_2811ACCD8;
  v2 = unk_2811ACCE0;
  *(v0 + 32) = qword_2811ACCD8;
  *(v0 + 40) = v2;
  v3 = qword_2811ABA78;
  v4 = v1;
  v5 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_2811ACCC8;
  v7 = unk_2811ACCD0;
  *(v0 + 48) = qword_2811ACCC8;
  *(v0 + 56) = v7;
  v8 = qword_2811ABA90;
  v9 = v6;
  v10 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_2811ACCF8;
  v12 = unk_2811ACD00;
  *(v0 + 64) = qword_2811ACCF8;
  *(v0 + 72) = v12;
  v13 = qword_2811ABA20;
  v14 = v11;
  v15 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_2811ACC18;
  v17 = unk_2811ACC20;
  *(v0 + 80) = qword_2811ACC18;
  *(v0 + 88) = v17;
  v18 = qword_2811ABA10;
  v19 = v16;
  v20 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = qword_2811ACBF8;
  v22 = unk_2811ACC00;
  *(v0 + 96) = qword_2811ACBF8;
  *(v0 + 104) = v22;
  v23 = qword_2811ABA70;
  v24 = v21;
  v25 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = qword_2811ACCB8;
  v27 = unk_2811ACCC0;
  *(v0 + 112) = qword_2811ACCB8;
  *(v0 + 120) = v27;
  v28 = qword_2811ABA88;
  v29 = v26;
  v30 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = qword_2811ACCE8;
  v32 = unk_2811ACCF0;
  *(v0 + 128) = qword_2811ACCE8;
  *(v0 + 136) = v32;
  v33 = qword_2811ABA18;
  v34 = v31;
  v35 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v36 = qword_2811ACC08;
  v37 = unk_2811ACC10;
  *(v0 + 144) = qword_2811ACC08;
  *(v0 + 152) = v37;
  v38 = qword_2811ABA40;
  v39 = v36;
  v40 = v37;
  if (v38 != -1)
  {
    swift_once();
  }

  v41 = qword_2811ACC58;
  v42 = unk_2811ACC60;
  *(v0 + 160) = qword_2811ACC58;
  *(v0 + 168) = v42;
  v43 = qword_2811ABA58;
  v44 = v41;
  v45 = v42;
  if (v43 != -1)
  {
    swift_once();
  }

  v46 = qword_2811ACC88;
  v47 = unk_2811ACC90;
  *(v0 + 176) = qword_2811ACC88;
  *(v0 + 184) = v47;
  v48 = qword_2811ABA50;
  v49 = v46;
  v50 = v47;
  if (v48 != -1)
  {
    swift_once();
  }

  v51 = qword_2811ACC78;
  v52 = unk_2811ACC80;
  *(v0 + 192) = qword_2811ACC78;
  *(v0 + 200) = v52;
  v53 = qword_2811ABA28;
  v54 = v51;
  v55 = v52;
  if (v53 != -1)
  {
    swift_once();
  }

  v56 = qword_2811ACC28;
  v57 = unk_2811ACC30;
  *(v0 + 208) = qword_2811ACC28;
  *(v0 + 216) = v57;
  v58 = qword_2811ABA68;
  v59 = v56;
  v60 = v57;
  if (v58 != -1)
  {
    swift_once();
  }

  v61 = qword_2811ACCA8;
  v62 = unk_2811ACCB0;
  *(v0 + 224) = qword_2811ACCA8;
  *(v0 + 232) = v62;
  v63 = qword_2811ABA60;
  v64 = v61;
  v65 = v62;
  if (v63 != -1)
  {
    swift_once();
  }

  v66 = qword_2811ACC98;
  v67 = unk_2811ACCA0;
  *(v0 + 240) = qword_2811ACC98;
  *(v0 + 248) = v67;
  v68 = qword_2811ABA38;
  v69 = v66;
  v70 = v67;
  if (v68 != -1)
  {
    swift_once();
  }

  v71 = qword_2811ACC48;
  v72 = unk_2811ACC50;
  *(v0 + 256) = qword_2811ACC48;
  *(v0 + 264) = v72;
  v73 = qword_2811ABA30;
  v74 = v71;
  v75 = v72;
  if (v73 != -1)
  {
    swift_once();
  }

  v76 = qword_2811ACC38;
  v77 = unk_2811ACC40;
  *(v0 + 272) = qword_2811ACC38;
  *(v0 + 280) = v77;
  v78 = qword_2811ABA48;
  v79 = v76;
  v80 = v77;
  if (v78 != -1)
  {
    swift_once();
  }

  v81 = qword_2811ACC68;
  v82 = unk_2811ACC70;
  *(v0 + 288) = qword_2811ACC68;
  *(v0 + 296) = v82;
  v83 = qword_2811ABA08;
  v84 = v81;
  v85 = v82;
  if (v83 != -1)
  {
    swift_once();
  }

  v87 = qword_2811ACBE8;
  v86 = unk_2811ACBF0;
  v90 = unk_2811ACBF0;
  *(v0 + 304) = qword_2811ACBE8;
  *(v0 + 312) = v86;
  off_2811ABAA0 = v0;
  v88 = v87;

  return v90;
}

uint64_t MonogramPosterBackgroundColors.getter()
{
  if (qword_2811ABA98 != -1)
  {
    swift_once();
  }
}

void sub_216634064()
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (qword_2811ABA98 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v0 = *(off_2811ABAA0 + 2);
    if (!v0)
    {
      break;
    }

    v1 = (off_2811ABAA0 + 40);
    v2 = MEMORY[0x277D84F98];
    v27 = vdupq_n_s64(0x412E848000000000uLL);
    while (1)
    {
      v6 = *(v1 - 1);
      v7 = *v1;
      v32 = 0.0;
      v33[0] = 0;
      v30 = 0.0;
      v31 = 0.0;
      v8 = v6;
      v9 = v7;
      [v9 getRed:v33 green:&v32 blue:&v31 alpha:&v30];
      *&v10.f64[0] = v33[0];
      v11.f64[0] = v31;
      v10.f64[1] = v32;
      v11.f64[1] = v30;
      v12 = vdivq_f64(vrndmq_f64(vmulq_f64(v10, v27)), v27);
      v33[0] = *&v12.f64[0];
      v28 = vdivq_f64(vrndmq_f64(vmulq_f64(v11, v27)), v27);
      v29 = v12;
      v32 = v12.f64[1];
      v31 = v28.f64[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1688, &qword_2166470C0);
      v13 = swift_allocObject();
      v13[1] = xmmword_216645FC0;
      v13[2] = v29;
      v13[3] = v28;
      v5 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = v2;
      v15 = sub_216629A30(v13);
      v17 = v2[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        break;
      }

      v21 = v16;
      if (v2[3] < v20)
      {
        sub_216634554(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_216629A30(v13);
        if ((v21 & 1) != (v22 & 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB17F0, &qword_2166470C8);
          sub_216645810();
          __break(1u);
          return;
        }

LABEL_11:
        v2 = v33[0];
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v25 = v15;
      sub_216634830();
      v15 = v25;
      v2 = v33[0];
      if (v21)
      {
LABEL_4:
        v3 = v2[7];
        v4 = *(v3 + 8 * v15);
        *(v3 + 8 * v15) = v5;

        v5 = v4;
        goto LABEL_5;
      }

LABEL_12:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      *(v2[6] + 8 * v15) = v13;
      *(v2[7] + 8 * v15) = v5;
      v23 = v2[2];
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_19;
      }

      v2[2] = v24;

LABEL_5:
      v1 += 2;
      if (!--v0)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v2 = MEMORY[0x277D84F98];
LABEL_17:
  qword_27CAB17E8 = v2;
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t MonogramPosterBackgroundColorBottomToTop.getter()
{
  if (qword_27CAB15E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t MonogramPosterBackgroundColorBottomToTop.setter(uint64_t a1)
{
  if (qword_27CAB15E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27CAB17E8 = a1;
}

uint64_t (*MonogramPosterBackgroundColorBottomToTop.modify())()
{
  if (qword_27CAB15E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2166344C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_216634508(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_216634554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB17F8, &qword_2166470D0);
  v40 = a2;
  result = sub_216645700();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v24 = v23;
      }

      v25 = *(v8 + 40);
      sub_216645820();
      MEMORY[0x21CE94DC0](*(v22 + 16));
      v26 = *(v22 + 16);
      if (v26)
      {
        v27 = (v22 + 32);
        do
        {
          v28 = *v27++;
          v29 = v28;
          if (v28 == 0.0)
          {
            v29 = 0.0;
          }

          MEMORY[0x21CE94DE0](*&v29);
          --v26;
        }

        while (v26);
      }

      result = sub_216645860();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v23;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v23;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_40;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_40:
  *v3 = v8;
  return result;
}

id sub_216634830()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB17F8, &qword_2166470D0);
  v2 = *v0;
  v3 = sub_2166456F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21663499C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216634A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MonogramPosterConfiguration.topBackgroundColorDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for MonogramPosterConfiguration() + 20));
}

uint64_t type metadata accessor for MonogramPosterConfiguration()
{
  result = qword_2811AB9E8;
  if (!qword_2811AB9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MonogramPosterConfiguration.topBackgroundColorDescription.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MonogramPosterConfiguration() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MonogramPosterConfiguration.backgroundColorDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for MonogramPosterConfiguration() + 24));
}

uint64_t MonogramPosterConfiguration.backgroundColorDescription.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MonogramPosterConfiguration() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MonogramPosterConfiguration.initials.getter()
{
  v1 = (v0 + *(type metadata accessor for MonogramPosterConfiguration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MonogramPosterConfiguration.initials.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MonogramPosterConfiguration() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MonogramPosterConfiguration.monogramSupportedForName.setter(char a1)
{
  result = type metadata accessor for MonogramPosterConfiguration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

void MonogramPosterConfiguration.init(gradientDefinition:initials:supportedForName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for GradientDefinition();
  v11 = *(*(v10 - 8) + 56);
  v11(a5, 1, 1, v10);
  sub_216636938(a5, &qword_27CAB1820, &qword_2166470E0);
  sub_2166351EC(a1, a5, type metadata accessor for GradientDefinition);
  v11(a5, 0, 1, v10);
  v12 = type metadata accessor for MonogramPosterConfiguration();
  v13 = (a5 + v12[7]);
  *v13 = a2;
  v13[1] = a3;
  *(a5 + v12[8]) = a4;
  sub_21662FB98();
  v14 = *(a1 + *(v10 + 28));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 72 * v15 - 16);

    v17 = sub_216645650();
    v18 = UIColor.monogramColorDescription.getter();

    *(a5 + v12[6]) = v18;
    if (*(v14 + 16))
    {
      v19 = *(v14 + 56);

      v20 = sub_216645650();
      v21 = UIColor.monogramColorDescription.getter();

      sub_216636350(a1, type metadata accessor for GradientDefinition);
      *(a5 + v12[5]) = v21;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void MonogramPosterConfiguration.init(backgroundColor:initials:supportedForName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = type metadata accessor for GradientDefinition();
  (*(*(v11 - 8) + 56))(a5, 1, 1, v11);
  v12 = UIColor.monogramColorDescription.getter();
  v13 = type metadata accessor for MonogramPosterConfiguration();
  *(a5 + v13[6]) = v12;
  v14 = UIColor.monogramColorDescription.getter();

  *(a5 + v13[5]) = v14;
  v15 = (a5 + v13[7]);
  *v15 = a2;
  v15[1] = a3;
  *(a5 + v13[8]) = a4;
}

void sub_21663504C()
{
  v0 = type metadata accessor for MonogramPosterConfiguration();
  __swift_allocate_value_buffer(v0, qword_27CAB1808);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1808);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 whiteColor];
  v5 = type metadata accessor for GradientDefinition();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v1 + v0[6]) = UIColor.monogramColorDescription.getter();
  v6 = UIColor.monogramColorDescription.getter();

  *(v1 + v0[5]) = v6;
  v7 = (v1 + v0[7]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v1 + v0[8]) = 1;
}

uint64_t static MonogramPosterConfiguration.silhouette.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MonogramPosterConfiguration();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1808);
  return sub_2166351EC(v3, a1, type metadata accessor for MonogramPosterConfiguration);
}

uint64_t sub_2166351EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MonogramPosterConfiguration.debugDescription.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = v13 - v2;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_216645680();
  MEMORY[0x21CE94BA0](0xD000000000000028, 0x8000000216648250);
  v4 = type metadata accessor for MonogramPosterConfiguration();
  MEMORY[0x21CE94BA0](*(v0 + v4[7]), *(v0 + v4[7] + 8));
  MEMORY[0x21CE94BA0](0xD00000000000001DLL, 0x8000000216648280);
  if (*(v0 + v4[8]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v4[8]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x21CE94BA0](v5, v6);

  MEMORY[0x21CE94BA0](0xD000000000000022, 0x80000002166482A0);
  v7 = *(v0 + v4[5]);
  v8 = sub_216645590();
  MEMORY[0x21CE94BA0](v8);

  MEMORY[0x21CE94BA0](0xD00000000000001FLL, 0x80000002166482D0);
  v9 = *(v0 + v4[6]);
  v10 = sub_216645590();
  MEMORY[0x21CE94BA0](v10);

  MEMORY[0x21CE94BA0](0xD000000000000016, 0x80000002166482F0);
  sub_21663499C(v0, v3);
  v11 = sub_2166455F0();
  MEMORY[0x21CE94BA0](v11);

  return v13[0];
}

uint64_t sub_216635488(uint64_t result, uint64_t a2)
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
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_2166299B8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
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

unint64_t sub_2166355C4()
{
  v1 = *v0;
  v2 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21663566C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216636780(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2166356A0(uint64_t a1)
{
  v2 = sub_216636234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2166356DC(uint64_t a1)
{
  v2 = sub_216636234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramPosterConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1828, &qword_2166470E8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216636234();
  sub_216645880();
  LOBYTE(v19) = 0;
  type metadata accessor for GradientDefinition();
  sub_216636288(&qword_2811AB8F0);
  sub_2166457A0();
  if (!v2)
  {
    v11 = type metadata accessor for MonogramPosterConfiguration();
    v19 = *(v3 + v11[5]);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1830, &qword_2166470F0);
    sub_2166362CC(&qword_2811AB820, sub_21662B990);
    sub_2166457F0();
    v19 = *(v3 + v11[6]);
    v18 = 2;
    sub_2166457F0();
    v12 = (v3 + v11[7]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v19) = 3;
    sub_2166457B0();
    v15 = *(v3 + v11[8]);
    LOBYTE(v19) = 4;
    sub_2166457C0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MonogramPosterConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v23 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1838, &qword_2166470F8);
  v7 = *(v25 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v23 - v9;
  v27 = type metadata accessor for MonogramPosterConfiguration();
  v11 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GradientDefinition();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = a1[3];
  v16 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_216636234();
  sub_216645870();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    return sub_216636938(v13, &qword_27CAB1820, &qword_2166470E0);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_216636288(&qword_2811AB8E8);
    sub_216645740();
    sub_216634A14(v6, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1830, &qword_2166470F0);
    v28 = 1;
    sub_2166362CC(&qword_2811AB818, sub_21662BE18);
    sub_216645790();
    v17 = v27;
    *&v13[*(v27 + 20)] = v29;
    v28 = 2;
    sub_216645790();
    *&v13[v17[6]] = v29;
    LOBYTE(v29) = 3;
    v18 = sub_216645750();
    v19 = &v13[v17[7]];
    *v19 = v18;
    v19[1] = v20;
    LOBYTE(v29) = 4;
    v21 = sub_216645760();
    (*(v7 + 8))(v10, v25);
    v13[v17[8]] = v21 & 1;
    sub_2166351EC(v13, v24, type metadata accessor for MonogramPosterConfiguration);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return sub_216636350(v13, type metadata accessor for MonogramPosterConfiguration);
  }
}

uint64_t _s14MonogramPoster0aB13ConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientDefinition();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1820, &qword_2166470E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1848, &unk_216647300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20]();
  v15 = &v26 - v14;
  v16 = *(v13 + 56);
  sub_21663499C(a1, &v26 - v14);
  sub_21663499C(a2, &v15[v16]);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) == 1)
  {
    if (v17(&v15[v16], 1, v4) == 1)
    {
      sub_216636938(v15, &qword_27CAB1820, &qword_2166470E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_21663499C(v15, v11);
  if (v17(&v15[v16], 1, v4) == 1)
  {
    sub_216636350(v11, type metadata accessor for GradientDefinition);
LABEL_6:
    sub_216636938(v15, &qword_27CAB1848, &unk_216647300);
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  sub_216636998(&v15[v16], v8);
  v18 = _s14MonogramPoster18GradientDefinitionV2eeoiySbAC_ACtFZ_0(v11, v8);
  sub_216636350(v8, type metadata accessor for GradientDefinition);
  sub_216636350(v11, type metadata accessor for GradientDefinition);
  sub_216636938(v15, &qword_27CAB1820, &qword_2166470E0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = type metadata accessor for MonogramPosterConfiguration();
  if ((sub_216635488(*(a1 + v19[5]), *(a2 + v19[5])) & 1) == 0 || (sub_216635488(*(a1 + v19[6]), *(a2 + v19[6])) & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = v19[7];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_216645800() & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = *(a1 + v19[8]) ^ *(a2 + v19[8]) ^ 1;
  return v24 & 1;
}

unint64_t sub_216636234()
{
  result = qword_2811ABAB8[0];
  if (!qword_2811ABAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811ABAB8);
  }

  return result;
}

uint64_t sub_216636288(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GradientDefinition();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166362CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB1830, &qword_2166470F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216636350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2166363D8()
{
  sub_216636470();
  if (v0 <= 0x3F)
  {
    sub_2166364C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216636470()
{
  if (!qword_2811AB890)
  {
    type metadata accessor for GradientDefinition();
    v0 = sub_216645660();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AB890);
    }
  }
}

void sub_2166364C8()
{
  if (!qword_2811AB828)
  {
    v0 = sub_2166455A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AB828);
    }
  }
}

uint64_t getEnumTagSinglePayload for MonogramPosterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonogramPosterConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21663667C()
{
  result = qword_27CAB1840;
  if (!qword_27CAB1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB1840);
  }

  return result;
}

unint64_t sub_2166366D4()
{
  result = qword_2811ABAA8;
  if (!qword_2811ABAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ABAA8);
  }

  return result;
}

unint64_t sub_21663672C()
{
  result = qword_2811ABAB0;
  if (!qword_2811ABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ABAB0);
  }

  return result;
}

uint64_t sub_216636780(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000216648310 == a2 || (sub_216645800() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000216648330 == a2 || (sub_216645800() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002166481C0 == a2 || (sub_216645800() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (sub_216645800() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000216648350 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_216645800();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_216636938(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_216636998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientDefinition();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2166369FC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1850);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1850);
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
  *(v2 + 328) = 0x3FF2E623D7ECFF87;
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
  *(v2 + 688) = xmmword_216647320;
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
  *(v2 + 768) = 0x3FD4CCCCCCCCCCCDLL;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216647330;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FD7777777777777;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216647340;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF2E623D7ECFF87;
  *(v2 + 1056) = 0x3FD5777777777777;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216647350;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC90B3FEA40443BLL;
  *(v2 + 1200) = 0x3FE4EEEEEEEEEEEFLL;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216647360;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v2 + 1344) = 0x3FE4EEEEEEEEEEEFLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647370;
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
  *(v2 + 1768) = 0x3FF2E623D7ECFF87;
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
  *(v2 + 2128) = xmmword_2166473B0;
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

uint64_t static GradientDefinition.charcoal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1850);

  return sub_21662855C(v3, a1);
}

double sub_2166377CC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1868);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1868);
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
  *(v2 + 1488) = 0x3FEB111111111111;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647490;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFB5F0244941E2;
  *(v2 + 1632) = 0x3FE9888888888889;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_2166474A0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF2F8B14D5C7A6ELL;
  *(v2 + 1776) = 0x3FEB222222222222;
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

uint64_t static GradientDefinition.yellow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB15F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1868);

  return sub_21662855C(v3, a1);
}

double sub_2166386DC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1880);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1880);
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
  *(v2 + 328) = 0x3FF289608CBF9903;
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
  *(v2 + 688) = xmmword_2166474C0;
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
  *(v2 + 1048) = 0x3FF289608CBF9903;
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
  *(v2 + 1120) = xmmword_2166474D0;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC876D43EC46D00;
  *(v2 + 1200) = 0x3FE3666666666666;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_2166474E0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA078728CCAC24;
  *(v2 + 1344) = 0x3FE3777777777777;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_2166474F0;
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
  *(v2 + 1488) = 0x3FEB222222222222;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647500;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE0252DE7E28C8FLL;
  *(v2 + 1632) = 0x3FEA333333333333;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216647510;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF289608CBF9903;
  *(v2 + 1776) = 0x3FEC333333333333;
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
  *(v2 + 1840) = xmmword_216647520;
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
  *(v2 + 1920) = 0x3FF0DDDDDDDDDDDELL;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216647530;
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
  *(v2 + 2064) = 0x3FF0DDDDDDDDDDDELL;
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
  *(v2 + 2128) = xmmword_216647540;
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

uint64_t static GradientDefinition.green.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1600 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1880);

  return sub_21662855C(v3, a1);
}

double sub_2166395FC()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB1898);
  v1 = __swift_project_value_buffer(v0, qword_27CAB1898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216647550;
  *(v2 + 56) = v3;
  *(v2 + 64) = xmmword_216645CC0;
  *(v2 + 80) = v5;
  *(v2 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 96) = v6;
  *(v2 + 32) = 0;
  sub_216645470();
  v7 = sub_216645500();
  sub_216645540();
  *(v2 + 112) = xmmword_216647560;
  *(v2 + 128) = v7;
  *(v2 + 136) = xmmword_216645CC0;
  *(v2 + 152) = xmmword_216645CE0;
  *(v2 + 168) = v8;
  *(v2 + 104) = 0;
  sub_216645470();
  v9 = sub_216645500();
  sub_216645540();
  *(v2 + 184) = xmmword_216647570;
  *(v2 + 200) = v9;
  *(v2 + 208) = xmmword_216645CC0;
  *(v2 + 224) = xmmword_216645CE0;
  *(v2 + 240) = v10;
  *(v2 + 176) = 0;
  sub_216645470();
  v11 = sub_216645500();
  sub_216645540();
  *(v2 + 256) = xmmword_216647580;
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
  *(v2 + 328) = 0x3FF32BDC491EF73ALL;
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
  *(v2 + 400) = xmmword_216647590;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC8E745E0EFA13ALL;
  *(v2 + 480) = 0x3FC9DDDDDDDDDDDELL;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_2166475A0;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_2166475B0;
  *(v2 + 592) = xmmword_2166475C0;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA48C23572AFEBLL;
  *(v2 + 624) = 0x3FC9DDDDDDDDDDDELL;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_2166475D0;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFC62BA989A43AC6;
  *(v2 + 768) = 0x3FD4888888888889;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_2166475E0;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FDFEE308EBFB40DLL;
  *(v2 + 912) = 0x3FDB555555555555;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_2166475F0;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF3194ED3AF7C52;
  *(v2 + 1056) = 0x3FD5777777777777;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_216647600;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC97BB18C6B7875;
  *(v2 + 1200) = 0x3FE5222222222222;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_216647610;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA23A74A93BA1CLL;
  *(v2 + 1344) = 0x3FE5444444444444;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647620;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFC5973DDE28638BLL;
  *(v2 + 1488) = 0x3FED777777777777;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647630;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE01C33323ECFD6;
  *(v2 + 1632) = 0x3FEBEEEEEEEEEEEFLL;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216647640;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF3194ED3AF7C52;
  *(v2 + 1776) = 0x3FED888888888889;
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
  *(v2 + 1840) = xmmword_216647650;
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
  *(v2 + 1912) = 0x3FCA101D37E74FB0;
  *(v2 + 1920) = 0x3FF0D55555555555;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_216647660;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA6DDD2051A5BALL;
  *(v2 + 2064) = 0x3FF0D55555555555;
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
  *(v2 + 2128) = xmmword_216647670;
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

uint64_t static GradientDefinition.peachPlum.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1608 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB1898);

  return sub_21662855C(v3, a1);
}

double sub_21663A53C()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_27CAB18B0);
  v1 = __swift_project_value_buffer(v0, qword_27CAB18B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216647680;
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
  *(v2 + 328) = 0x3FF37A8F8368D6C2;
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
  *(v2 + 400) = xmmword_216647690;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC90B3FEA40443BLL;
  *(v2 + 480) = 0x3FC1DDDDDDDDDDDELL;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_2166476A0;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216646050;
  *(v2 + 592) = xmmword_216646060;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA51BCFE8A97C2;
  *(v2 + 624) = 0x3FC1DDDDDDDDDDDELL;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_2166476B0;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFCBD3E4332A0014;
  *(v2 + 768) = 0x3FD5333333333333;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_2166476C0;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FD999999999999ALL;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_2166476D0;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF37A8F8368D6C2;
  *(v2 + 1056) = 0x3FD5555555555555;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_2166476E0;
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
  *(v2 + 1264) = xmmword_2166476F0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v2 + 1344) = 0x3FE3BBBBBBBBBBBCLL;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_216647700;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFCBD3E4332A0014;
  *(v2 + 1488) = 0x3FEB444444444444;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647710;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FE00012FD0396C0;
  *(v2 + 1632) = 0x3FE9777777777777;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_216647720;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF37A8F8368D6C2;
  *(v2 + 1776) = 0x3FEB555555555555;
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
  *(v2 + 1840) = xmmword_216647730;
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
  *(v2 + 2128) = xmmword_216647740;
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

uint64_t static GradientDefinition.nebiolo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB1610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_27CAB18B0);

  return sub_21662855C(v3, a1);
}

double sub_21663B42C()
{
  v0 = type metadata accessor for GradientDefinition();
  __swift_allocate_value_buffer(v0, qword_2811AB970);
  v1 = __swift_project_value_buffer(v0, qword_2811AB970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB1650, "<(");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_216645CA0;
  type metadata accessor for CGColor(0);
  sub_216645470();
  v3 = sub_216645500();
  sub_216645570();
  v5 = v4;
  sub_216645540();
  *(v2 + 40) = xmmword_216646C10;
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
  *(v2 + 328) = 0x3FF289608CBF9903;
  *(v2 + 336) = 0xBFA5555555555555;
  *(v2 + 344) = v13;
  *(v2 + 352) = 0x4010000000000000;
  *(v2 + 360) = v15;
  *(v2 + 368) = xmmword_216645CE0;
  *(v2 + 384) = v16;
  *(v2 + 320) = 0;
  sub_216645470();
  v17 = sub_216645500();
  sub_216645570();
  *(v2 + 400) = xmmword_216647750;
  *(v2 + 416) = v17;
  *(v2 + 424) = 0x4010000000000000;
  *(v2 + 432) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 440) = v18;
  *(v2 + 448) = xmmword_216645D10;
  *(v2 + 392) = 0;
  sub_216645470();
  v19 = sub_216645500();
  *(v2 + 472) = 0x3FC99FAB95BC1B77;
  *(v2 + 480) = 0x3FC4000000000000;
  *(v2 + 488) = v19;
  *(v2 + 496) = xmmword_216645CC0;
  *(v2 + 512) = xmmword_216645CE0;
  *(v2 + 528) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 464) = 0;
  sub_216645470();
  v20 = sub_216645500();
  *(v2 + 544) = xmmword_216647760;
  *(v2 + 560) = v20;
  *(v2 + 568) = 0x4010000000000000;
  *(v2 + 576) = xmmword_216647770;
  *(v2 + 592) = xmmword_216647780;
  *(v2 + 536) = 1;
  sub_216645470();
  v21 = sub_216645500();
  *(v2 + 616) = 0x3FEA76D7E9698D91;
  *(v2 + 624) = 0x3FC4000000000000;
  *(v2 + 632) = v21;
  *(v2 + 640) = xmmword_216645CC0;
  *(v2 + 656) = xmmword_216645CE0;
  *(v2 + 672) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 608) = 0;
  sub_216645470();
  v22 = sub_216645500();
  sub_216645580();
  *(v2 + 688) = xmmword_216647790;
  *(v2 + 704) = v22;
  *(v2 + 712) = 0x4010000000000000;
  *(v2 + 720) = v23;
  *(v2 + 728) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 736) = xmmword_216645D10;
  *(v2 + 680) = 0;
  sub_216645470();
  v24 = sub_216645500();
  sub_216645570();
  *(v2 + 760) = 0xBFBCFC6F6F2AFD4DLL;
  *(v2 + 768) = 0x3FD3777777777777;
  *(v2 + 776) = v24;
  *(v2 + 784) = xmmword_216645CC0;
  *(v2 + 800) = v25;
  *(v2 + 808) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 816) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 752) = 0;
  sub_216645470();
  v26 = sub_216645500();
  *(v2 + 832) = xmmword_216646C60;
  *(v2 + 848) = v26;
  *(v2 + 856) = 0x4010000000000000;
  *(v2 + 864) = xmmword_216645D10;
  *(v2 + 880) = xmmword_216645D10;
  *(v2 + 824) = 0;
  sub_216645470();
  v27 = sub_216645500();
  *(v2 + 904) = 0x3FE00012FD0396C0;
  *(v2 + 912) = 0x3FDA222222222222;
  *(v2 + 920) = v27;
  *(v2 + 928) = xmmword_216645CC0;
  *(v2 + 944) = xmmword_216645CE0;
  *(v2 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 896) = 0;
  sub_216645470();
  v28 = sub_216645500();
  *(v2 + 976) = xmmword_216646C80;
  *(v2 + 992) = v28;
  *(v2 + 1000) = 0x4010000000000000;
  *(v2 + 1008) = xmmword_216645D10;
  *(v2 + 1024) = xmmword_216645D10;
  *(v2 + 968) = 0;
  sub_216645470();
  v29 = sub_216645500();
  sub_216645580();
  *(v2 + 1048) = 0x3FF289608CBF9903;
  *(v2 + 1056) = 0x3FD4444444444444;
  *(v2 + 1064) = v29;
  *(v2 + 1072) = 0x4010000000000000;
  *(v2 + 1080) = v30;
  *(v2 + 1088) = xmmword_216645CE0;
  *(v2 + 1104) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1040) = 0;
  sub_216645470();
  v31 = sub_216645500();
  sub_216645570();
  *(v2 + 1120) = xmmword_2166477A0;
  *(v2 + 1136) = v31;
  *(v2 + 1144) = 0x4010000000000000;
  *(v2 + 1152) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1160) = v32;
  *(v2 + 1168) = xmmword_216645D10;
  *(v2 + 1112) = 0;
  sub_216645470();
  v33 = sub_216645500();
  *(v2 + 1192) = 0x3FC7E268934895C5;
  *(v2 + 1200) = 0x3FE4000000000000;
  *(v2 + 1208) = v33;
  *(v2 + 1216) = xmmword_216645CC0;
  *(v2 + 1232) = xmmword_216645CE0;
  *(v2 + 1248) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1184) = 0;
  sub_216645470();
  v34 = sub_216645500();
  *(v2 + 1264) = xmmword_2166477B0;
  *(v2 + 1280) = v34;
  *(v2 + 1288) = 0x4010000000000000;
  *(v2 + 1296) = xmmword_216645D10;
  *(v2 + 1312) = xmmword_216645D10;
  *(v2 + 1256) = 0;
  sub_216645470();
  v35 = sub_216645500();
  *(v2 + 1336) = 0x3FEA2CA213ABA1F3;
  *(v2 + 1344) = 0x3FE4333333333333;
  *(v2 + 1352) = v35;
  *(v2 + 1360) = xmmword_216645CC0;
  *(v2 + 1376) = xmmword_216645CE0;
  *(v2 + 1392) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1328) = 0;
  sub_216645470();
  v36 = sub_216645500();
  sub_216645580();
  *(v2 + 1408) = xmmword_2166477C0;
  *(v2 + 1424) = v36;
  *(v2 + 1432) = 0x4010000000000000;
  *(v2 + 1440) = v37;
  *(v2 + 1448) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1456) = xmmword_216645D10;
  *(v2 + 1400) = 0;
  sub_216645470();
  v38 = sub_216645500();
  sub_216645570();
  *(v2 + 1480) = 0xBFBE2546C622ABC3;
  *(v2 + 1488) = 0x3FEABBBBBBBBBBBCLL;
  *(v2 + 1496) = v38;
  *(v2 + 1504) = xmmword_216645CC0;
  *(v2 + 1520) = v39;
  *(v2 + 1528) = 0xFFEFFFFFFFFFFFFFLL;
  *(v2 + 1536) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1472) = 0;
  sub_216645470();
  v40 = sub_216645500();
  *(v2 + 1552) = xmmword_216647490;
  *(v2 + 1568) = v40;
  *(v2 + 1576) = 0x4010000000000000;
  *(v2 + 1584) = xmmword_216645D10;
  *(v2 + 1600) = xmmword_216645D10;
  *(v2 + 1544) = 0;
  sub_216645470();
  v41 = sub_216645500();
  *(v2 + 1624) = 0x3FDFB5F0244941E2;
  *(v2 + 1632) = 0x3FE9888888888889;
  *(v2 + 1640) = v41;
  *(v2 + 1648) = xmmword_216645CC0;
  *(v2 + 1664) = xmmword_216645CE0;
  *(v2 + 1680) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1616) = 0;
  sub_216645470();
  v42 = sub_216645500();
  *(v2 + 1696) = xmmword_2166474A0;
  *(v2 + 1712) = v42;
  *(v2 + 1720) = 0x4010000000000000;
  *(v2 + 1728) = xmmword_216645D10;
  *(v2 + 1744) = xmmword_216645D10;
  *(v2 + 1688) = 0;
  sub_216645470();
  v43 = sub_216645500();
  sub_216645580();
  *(v2 + 1768) = 0x3FF276D317501E1BLL;
  *(v2 + 1776) = 0x3FEACCCCCCCCCCCDLL;
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
  *(v2 + 1840) = xmmword_2166477D0;
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
  *(v2 + 1912) = 0x3FC876D43EC46D00;
  *(v2 + 1920) = 0x3FF13BBBBBBBBBBCLL;
  *(v2 + 1928) = v49;
  *(v2 + 1936) = xmmword_216645CC0;
  *(v2 + 1952) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1960) = v50;
  *(v2 + 1968) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1904) = 0;
  sub_216645470();
  v51 = sub_216645500();
  sub_216645560();
  *(v2 + 1984) = xmmword_2166477E0;
  *(v2 + 2000) = v51;
  *(v2 + 2008) = 0x4010000000000000;
  *(v2 + 2016) = xmmword_216645D10;
  *(v2 + 2032) = v52;
  *(v2 + 2040) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 1976) = 0;
  sub_216645470();
  v53 = sub_216645500();
  sub_216645560();
  *(v2 + 2056) = 0x3FEA078728CCAC24;
  *(v2 + 2064) = 0x3FF13BBBBBBBBBBCLL;
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
  *(v2 + 2128) = xmmword_2166477F0;
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

uint64_t static GradientDefinition.defaultNaturalLight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811AB968 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GradientDefinition();
  v3 = __swift_project_value_buffer(v2, qword_2811AB970);

  return sub_21662855C(v3, a1);
}

uint64_t MonogramPosterColorDescriptionKey.rawValue.getter()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
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

MonogramPoster::MonogramPosterUserInfoKey_optional __swiftcall MonogramPosterUserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_216645720();

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

unint64_t MonogramPosterUserInfoKey.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_21663C51C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = "groundRepresentation";
  }

  else
  {
    v5 = "backgroundColorDescription";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v8 = "backgroundColorDescription";
  }

  else
  {
    v8 = "groundRepresentation";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_216645800();
  }

  return v10 & 1;
}

uint64_t sub_21663C5C8()
{
  v1 = *v0;
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

uint64_t sub_21663C648()
{
  *v0;
  sub_216645600();
}

uint64_t sub_21663C6B4()
{
  v1 = *v0;
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

uint64_t sub_21663C730@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_216645720();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21663C790(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "backgroundColorDescription";
  }

  else
  {
    v3 = "groundRepresentation";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

MonogramPoster::MonogramPosterColorDescriptionKey_optional __swiftcall MonogramPosterColorDescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_216645720();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21663C838()
{
  v1 = *v0;
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

uint64_t sub_21663C8E0()
{
  *v0;
  *v0;
  *v0;
  sub_216645600();
}

uint64_t sub_21663C974()
{
  v1 = *v0;
  sub_216645820();
  sub_216645600();

  return sub_216645860();
}

void sub_21663CA24(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_21663CA9C()
{
  result = qword_27CAB18C8;
  if (!qword_27CAB18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB18C8);
  }

  return result;
}

unint64_t sub_21663CAF4()
{
  result = qword_27CAB18D0;
  if (!qword_27CAB18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB18D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonogramPosterUserInfoKey(unsigned __int8 *a1, unsigned int a2)
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