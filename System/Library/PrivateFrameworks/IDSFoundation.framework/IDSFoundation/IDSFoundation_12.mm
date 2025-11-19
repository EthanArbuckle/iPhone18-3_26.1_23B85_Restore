uint64_t sub_1A7D25690(void **a1, unsigned __int8 *a2)
{
  v4 = *a1;
  sub_1A7D25A14(a2, v8);
  sub_1A7D25A14(a2, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A7D60334(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  sub_1A7D25A14(a2, v8);
  sub_1A7D25530(v7, a2);
  sub_1A7D25A4C(a2);
  *a1 = v4;
  sub_1A7D25A4C(a2);
  return sub_1A7D25A4C(a2);
}

uint64_t sub_1A7D25748(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_1A7E22B70();

  v5 = 0xE700000000000000;
  v6 = 0x6C6C65436E6F4ELL;
  if (v3 != 1)
  {
    v6 = 7958081;
    v5 = 0xE300000000000000;
  }

  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1819043139;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v7, v8);

  v9 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1A7CCCAA4(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a1 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    result = sub_1A7CCCAA4((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v13;
  v14 = v9 + 16 * v12;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x80000001A7EAEB10;
  *a1 = v9;
  v15 = *(v9 + 24);
  if ((v12 + 2) > (v15 >> 1))
  {
    result = sub_1A7CCCAA4((v15 > 1), v12 + 2, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 2;
  v16 = v9 + 16 * v13;
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = 0x80000001A7EAEB30;
  *a1 = v9;
  v17 = *(v4 + 16);
  if (v17)
  {
    v18 = v4 + 32;
    do
    {
      v19 = LinkEndpoint.uniqueID.getter();
      MEMORY[0x1AC561C90](v19);

      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1A7CCCAA4((v20 > 1), v21 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = 8237;
      *(v22 + 40) = 0xE200000000000000;
      v18 += 8;
      --v17;
    }

    while (v17);
    *a1 = v9;
  }

  return result;
}

uint64_t sub_1A7D25988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1A7D259CC(uint64_t *a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  return v3(v4, v5, &v7);
}

uint64_t sub_1A7D25A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7D25AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D25B5C()
{
  result = qword_1EB2B5B80;
  if (!qword_1EB2B5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B80);
  }

  return result;
}

__n128 sub_1A7D25BB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A7D25BC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A7D25C0C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1A7D25C7C()
{
  result = qword_1EB2B5B88;
  if (!qword_1EB2B5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B88);
  }

  return result;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.cli.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7463656E6E6F43;
  v4 = 0x80000001A7EAEB70;
  v5 = 0xD000000000000018;
  result = 0x656E6E6F63736944;
  if (*v1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v5 = 0x656E6E6F63736944;
    v4 = 0xEA00000000007463;
    v7 = 1;
  }

  if (*v1)
  {
    v3 = v5;
    v2 = v4;
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 17) = v8;
  return result;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.interfaceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.localRAT.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.remoteRAT.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.kind.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.ipFamily.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

unint64_t IDSLinksCompactQualityReport.MetadataMeasurement.dict.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 5);
  v18 = *(v0 + 4);
  v19 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 9);
  v20 = *(v0 + 8);
  v21 = *(v0 + 10);
  v8 = *(v0 + 11);
  v10 = *(v0 + 12);
  v9 = *(v0 + 13);
  sub_1A7CC7FFC(&qword_1EB2B5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47510;
  *(inited + 32) = 116;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 28017;
  *(inited + 56) = 0xE200000000000000;
  v13 = MEMORY[0x1E69E6530];
  *(inited + 72) = v12;
  *(inited + 80) = 118;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v13;
  *(inited + 128) = 25705;
  *(inited + 136) = 0xE200000000000000;
  v14 = MEMORY[0x1E69E7230];
  *(inited + 144) = v1;
  *(inited + 168) = v14;
  *(inited + 176) = 6580585;
  *(inited + 184) = 0xE300000000000000;
  *(inited + 192) = v3;
  *(inited + 216) = v13;
  *(inited + 224) = 20073;
  *(inited + 232) = 0xE200000000000000;
  *(inited + 240) = v2;
  *(inited + 248) = v4;
  *(inited + 264) = v12;
  *(inited + 272) = 21100;
  *(inited + 280) = 0xE200000000000000;
  *(inited + 288) = v18;
  *(inited + 296) = v5;
  *(inited + 312) = v12;
  *(inited + 320) = 21106;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 336) = v19;
  *(inited + 344) = v6;
  *(inited + 360) = v12;
  *(inited + 368) = 107;
  *(inited + 376) = 0xE100000000000000;
  *(inited + 384) = v20;
  *(inited + 392) = v7;
  *(inited + 408) = v12;
  *(inited + 416) = 28777;
  *(inited + 424) = 0xE200000000000000;
  *(inited + 432) = v21;
  *(inited + 440) = v8;
  *(inited + 456) = v12;
  *(inited + 464) = 21603;
  *(inited + 472) = 0xE200000000000000;
  v15 = MEMORY[0x1E69E63B0];
  *(inited + 480) = v10;
  *(inited + 504) = v15;
  *(inited + 512) = 21604;
  *(inited + 520) = 0xE200000000000000;
  *(inited + 552) = v15;
  *(inited + 528) = v9;

  v16 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_1A7D26084(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496B6E696CLL;
    v6 = 0x6361667265746E69;
    if (a1 != 2)
    {
      v6 = 0x5441526C61636F6CLL;
    }

    if (a1)
    {
      v5 = 0x74736E496B6E696CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x796C696D61467069;
    v2 = 0x547463656E6E6F63;
    if (a1 != 7)
    {
      v2 = 0x656E6E6F63736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x415265746F6D6572;
    if (a1 != 4)
    {
      v3 = 1684957547;
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

uint64_t sub_1A7D261CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D2A95C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D26200(uint64_t a1)
{
  v2 = sub_1A7D29478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D2623C(uint64_t a1)
{
  v2 = sub_1A7D29478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5B98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v17 - v6;
  v8 = v1[1];
  v17[8] = v1[2];
  v17[9] = v8;
  v9 = v1[3];
  v17[6] = v1[4];
  v17[7] = v9;
  v10 = v1[5];
  v12 = v1[7];
  v11 = v1[8];
  v17[2] = v1[6];
  v17[3] = v12;
  v17[0] = v11;
  v13 = v1[10];
  v17[1] = v1[9];
  v17[4] = v13;
  v17[5] = v10;
  v14 = v1[11];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29478();
  sub_1A7E23260();
  v27 = 0;
  v15 = v18;
  sub_1A7E23040();
  if (!v15)
  {
    v18 = v14;
    v26 = 1;
    sub_1A7E23020();
    v25 = 2;
    sub_1A7E22FF0();
    v24 = 3;
    sub_1A7E22FF0();
    v23 = 4;
    sub_1A7E22FF0();
    v22 = 5;
    sub_1A7E22FF0();
    v21 = 6;
    sub_1A7E22FF0();
    v20 = 7;
    sub_1A7E23010();
    v19 = 8;
    sub_1A7E23010();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5BA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29478();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v48[0] = 0;
  v10 = sub_1A7E22F40();
  v48[0] = 1;
  v11 = sub_1A7E22F20();
  v48[0] = 2;
  v38 = sub_1A7E22EF0();
  v40 = v12;
  v48[0] = 3;
  v13 = sub_1A7E22EF0();
  v39 = v14;
  v33 = v13;
  v48[0] = 4;
  v37 = 0;
  v32 = sub_1A7E22EF0();
  v36 = v15;
  v48[0] = 5;
  v31 = sub_1A7E22EF0();
  v35 = v16;
  v48[0] = 6;
  v30 = sub_1A7E22EF0();
  v34 = v17;
  v48[0] = 7;
  sub_1A7E22F10();
  v19 = v18;
  v62 = 8;
  sub_1A7E22F10();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  LOBYTE(v41) = v10;
  *(&v41 + 1) = v11;
  *&v42 = v38;
  v22 = v40;
  *(&v42 + 1) = v40;
  *&v43 = v33;
  v23 = v39;
  *(&v43 + 1) = v39;
  *&v44 = v32;
  v24 = v36;
  *(&v44 + 1) = v36;
  *&v45 = v31;
  v25 = v35;
  *(&v45 + 1) = v35;
  *&v46 = v30;
  *(&v46 + 1) = v34;
  *&v47 = v19;
  *(&v47 + 1) = v21;
  v26 = v46;
  a2[4] = v45;
  a2[5] = v26;
  a2[6] = v47;
  v27 = v42;
  *a2 = v41;
  a2[1] = v27;
  v28 = v44;
  a2[2] = v43;
  a2[3] = v28;
  sub_1A7D294CC(&v41, v48);
  sub_1A7B0CD6C(a1);
  v48[0] = v10;
  v49 = v11;
  v50 = v38;
  v51 = v22;
  v52 = v33;
  v53 = v23;
  v54 = v32;
  v55 = v24;
  v56 = v31;
  v57 = v25;
  v58 = v30;
  v59 = v34;
  v60 = v19;
  v61 = v21;
  return sub_1A7D29504(v48);
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.intervals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.localRAT.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.remoteRAT.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.isExpensive.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.isConstrained.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

unint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.dict.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A7CC7FFC(&qword_1EB2B5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47520;
  *(inited + 32) = 116;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 25969;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v8;
  *(inited + 80) = 118;
  v9 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v9;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v2;
  *(inited + 168) = v9;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5BB0);
  *(inited + 192) = v1;
  *(inited + 216) = v10;
  *(inited + 224) = 21100;
  *(inited + 232) = 0xE200000000000000;
  v11 = sub_1A7CC7FFC(&qword_1EB2B4AA0);
  *(inited + 240) = v4;
  *(inited + 264) = v11;
  *(inited + 272) = 21106;
  *(inited + 280) = 0xE200000000000000;
  *(inited + 288) = v3;
  *(inited + 312) = v11;
  *(inited + 320) = 101;
  *(inited + 328) = 0xE100000000000000;
  v12 = sub_1A7CC7FFC(&qword_1EB2B5BB8);
  *(inited + 336) = v6;
  *(inited + 360) = v12;
  *(inited + 368) = 99;
  *(inited + 408) = v12;
  *(inited + 376) = 0xE100000000000000;
  *(inited + 384) = v5;

  v13 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_1A7D26EB8()
{
  v1 = *v0;
  v2 = 0x74736E496B6E696CLL;
  v3 = 0x415265746F6D6572;
  v4 = 0x736E657078457369;
  if (v1 != 4)
  {
    v4 = 0x7274736E6F437369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61767265746E69;
  if (v1 != 1)
  {
    v5 = 0x5441526C61636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A7D26F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D2AC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D26FC0(uint64_t a1)
{
  v2 = sub_1A7D29534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D26FFC(uint64_t a1)
{
  v2 = sub_1A7D29534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5BC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v17 = v1[2];
  v18 = v8;
  v10 = v1[5];
  v15 = v1[4];
  v16 = v9;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29534();
  sub_1A7E23260();
  LOBYTE(v21) = 0;
  v11 = v19;
  sub_1A7E23020();
  if (!v11)
  {
    v13 = v16;
    v12 = v17;
    v21 = v18;
    v20 = 1;
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    sub_1A7D29588();
    sub_1A7E23030();
    v21 = v12;
    v20 = 2;
    sub_1A7CC7FFC(&qword_1EB2B4AA0);
    sub_1A7D29604();
    sub_1A7E23030();
    v21 = v13;
    v20 = 3;
    sub_1A7E23030();
    v21 = v15;
    v20 = 4;
    sub_1A7CC7FFC(&qword_1EB2B5BB8);
    sub_1A7D29680();
    sub_1A7E23030();
    v21 = v10;
    v20 = 5;
    sub_1A7E23030();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5BE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v17 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29534();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v22) = 0;
    v20 = sub_1A7E22F20();
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    v21 = 1;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v19 = a2;
    v11 = v22;
    sub_1A7CC7FFC(&qword_1EB2B4AA0);
    v21 = 2;
    sub_1A7D29778();
    sub_1A7E22F30();
    v18 = v6;
    v12 = v22;
    v21 = 3;
    sub_1A7E22F30();
    v13 = v22;
    sub_1A7CC7FFC(&qword_1EB2B5BB8);
    v21 = 4;
    v17[1] = sub_1A7D297F4();
    sub_1A7E22F30();
    v14 = v22;
    v21 = 5;
    sub_1A7E22F30();
    (*(v18 + 8))(v9, v5);
    v15 = v22;
    v16 = v19;
    *v19 = v20;
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v13;
    v16[4] = v14;
    v16[5] = v15;

    sub_1A7B0CD6C(a1);
  }
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.intervals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.rtts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t IDSLinksCompactQualityReport.StatsMeasurement.dict.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1A7CC7FFC(&qword_1EB2B5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47530;
  *(inited + 32) = 116;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 29553;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = 118;
  v6 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v6;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v2;
  *(inited + 168) = v6;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5BB0);
  *(inited + 192) = v1;
  *(inited + 216) = v7;
  *(inited + 224) = 114;
  *(inited + 264) = v7;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = v3;

  v8 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1A7D27918()
{
  v1 = 0x6C61767265746E69;
  if (*v0 != 1)
  {
    v1 = 1937011826;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736E496B6E696CLL;
  }
}

uint64_t sub_1A7D2797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D2AE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D279A4(uint64_t a1)
{
  v2 = sub_1A7D29870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D279E0(uint64_t a1)
{
  v2 = sub_1A7D29870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5C08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = v9;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29870();
  sub_1A7E23260();
  LOBYTE(v16) = 0;
  sub_1A7E23020();
  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    sub_1A7D29588();
    sub_1A7E23030();
    v16 = v10;
    v15 = 2;
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5C18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29870();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v15) = 0;
    v13 = sub_1A7E22F20();
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    v14 = 1;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v11 = v15;
    v14 = 2;
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v12 = v15;
    *a2 = v13;
    a2[1] = v11;
    a2[2] = v12;

    sub_1A7B0CD6C(a1);
  }
}

unint64_t IDSLinksCompactQualityReport.PacketStatsMeasurement.dict.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A7CC7FFC(&qword_1EB2B5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47520;
  *(inited + 32) = 116;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 28785;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v8;
  *(inited + 80) = 118;
  v9 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v9;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v2;
  *(inited + 168) = v9;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5BB0);
  *(inited + 192) = v1;
  *(inited + 216) = v10;
  *(inited + 224) = 29552;
  *(inited + 232) = 0xE200000000000000;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5C20);
  *(inited + 240) = v4;
  *(inited + 264) = v11;
  *(inited + 272) = 29296;
  *(inited + 280) = 0xE200000000000000;
  *(inited + 288) = v3;
  *(inited + 312) = v11;
  *(inited + 320) = 29538;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 336) = v6;
  *(inited + 360) = v11;
  *(inited + 368) = 29282;
  *(inited + 408) = v11;
  *(inited + 376) = 0xE200000000000000;
  *(inited + 384) = v5;

  v12 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1A7D280B0()
{
  v1 = *v0;
  v2 = 0x74736E496B6E696CLL;
  v3 = 0x527374656B636170;
  v4 = 0x6E65537365747962;
  if (v1 != 4)
  {
    v4 = 0x6365527365747962;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61767265746E69;
  if (v1 != 1)
  {
    v5 = 0x537374656B636170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A7D281A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D2AFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D281C8(uint64_t a1)
{
  v2 = sub_1A7D298C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D28204(uint64_t a1)
{
  v2 = sub_1A7D298C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.PacketStatsMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5C28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - v7;
  v9 = v1[1];
  v10 = v1[3];
  v19 = v1[2];
  v20 = v9;
  v11 = v1[5];
  v17 = v1[4];
  v18 = v10;
  v16 = v11;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D298C4();
  v12 = v4;
  sub_1A7E23260();
  LOBYTE(v22) = 0;
  sub_1A7E23020();
  if (!v2)
  {
    v14 = v18;
    v13 = v19;
    v22 = v20;
    v21 = 1;
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    sub_1A7D29588();
    sub_1A7E23030();
    v22 = v13;
    v21 = 2;
    sub_1A7CC7FFC(&qword_1EB2B5C20);
    sub_1A7D29918();
    sub_1A7E23030();
    v22 = v14;
    v21 = 3;
    sub_1A7E23030();
    v22 = v17;
    v21 = 4;
    sub_1A7E23030();
    v22 = v16;
    v21 = 5;
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v8, v12);
}

uint64_t IDSLinksCompactQualityReport.PacketStatsMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D298C4();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v25) = 0;
    v23 = sub_1A7E22F20();
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    v24 = 1;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v11 = v25;
    v12 = sub_1A7CC7FFC(&qword_1EB2B5C20);
    v24 = 2;
    v22 = sub_1A7D29994();
    sub_1A7E22F30();
    v21 = a2;
    v13 = v25;
    v24 = 3;
    sub_1A7E22F30();
    v14 = v12;
    v15 = v25;
    v24 = 4;
    v20[1] = v14;
    sub_1A7E22F30();
    v16 = v6;
    v17 = v25;
    v24 = 5;
    sub_1A7E22F30();
    (*(v16 + 8))(v9, v5);
    v18 = v25;
    v19 = v21;
    *v21 = v23;
    v19[1] = v11;
    v19[2] = v13;
    v19[3] = v15;
    v19[4] = v17;
    v19[5] = v18;

    sub_1A7B0CD6C(a1);
  }
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.intervals.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.averageRTTs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.acksMissing.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t IDSLinksCompactQualityReport.BurstMeasurement.dict.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1A7CC7FFC(&qword_1EB2B5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47540;
  *(inited + 32) = 116;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 25201;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v7;
  *(inited + 80) = 118;
  v8 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v8;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v1;
  *(inited + 168) = v8;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5BB0);
  *(inited + 192) = v4;
  *(inited + 216) = v9;
  *(inited + 224) = 114;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = v3;
  *(inited + 264) = v9;
  *(inited + 272) = 6451312;
  v10 = MEMORY[0x1E69E7668];
  *(inited + 280) = 0xE300000000000000;
  *(inited + 288) = v2;
  *(inited + 312) = v10;
  *(inited + 320) = 28001;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 360) = sub_1A7CC7FFC(&qword_1EB2B5C50);
  *(inited + 336) = v5;

  v11 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1A7D28BBC()
{
  v1 = *v0;
  v2 = 0x74736E496B6E696CLL;
  v3 = 0x6C61767265746E69;
  v4 = 0x5265676172657661;
  if (v1 != 3)
  {
    v4 = 0x7373694D736B6361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x507374656B636170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A7D28C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D2B1C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D28CAC(uint64_t a1)
{
  v2 = sub_1A7D29A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D28CE8(uint64_t a1)
{
  v2 = sub_1A7D29A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5C58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  v18 = *(v1 + 8);
  v9 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v15 = *(v1 + 32);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29A10();
  v10 = v4;
  sub_1A7E23260();
  LOBYTE(v20) = 0;
  sub_1A7E23020();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v16;
  v13 = v17;
  v14 = v15;
  LOBYTE(v20) = 1;
  sub_1A7E23060();
  v20 = v13;
  v19 = 2;
  sub_1A7CC7FFC(&qword_1EB2B5BB0);
  sub_1A7D29588();
  sub_1A7E23030();
  v20 = v12;
  v19 = 3;
  sub_1A7E23030();
  v20 = v14;
  v19 = 4;
  sub_1A7CC7FFC(&qword_1EB2B5C50);
  sub_1A7D29A64();
  sub_1A7E23030();
  return (*(v5 + 8))(v8, v10);
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5C70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29A10();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v18) = 0;
    v16 = sub_1A7E22F20();
    LOBYTE(v18) = 1;
    v15 = sub_1A7E22F60();
    sub_1A7CC7FFC(&qword_1EB2B5BB0);
    v17 = 2;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v11 = v18;
    v17 = 3;
    sub_1A7E22F30();
    v12 = v18;
    sub_1A7CC7FFC(&qword_1EB2B5C50);
    v17 = 4;
    sub_1A7D29AE0();
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v13 = v18;
    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;

    sub_1A7B0CD6C(a1);
  }
}

uint64_t IDSLinksCompactQualityReport.measurements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.asArray.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEBF4(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      sub_1A7CC99E0(v4, v11);
      v5 = v12;
      v6 = v13;
      sub_1A7CC9878(v11, v12);
      v7 = (*(v6 + 24))(v5, v6);
      sub_1A7B0CD6C(v11);
      v14 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1A7CCEBF4((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_1A7D29478()
{
  result = qword_1EB2B5BA0;
  if (!qword_1EB2B5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BA0);
  }

  return result;
}

unint64_t sub_1A7D29534()
{
  result = qword_1EB2B5BC8;
  if (!qword_1EB2B5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BC8);
  }

  return result;
}

unint64_t sub_1A7D29588()
{
  result = qword_1EB2B5BD0;
  if (!qword_1EB2B5BD0)
  {
    sub_1A7CC9830(&qword_1EB2B5BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BD0);
  }

  return result;
}

unint64_t sub_1A7D29604()
{
  result = qword_1EB2B5BD8;
  if (!qword_1EB2B5BD8)
  {
    sub_1A7CC9830(&qword_1EB2B4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BD8);
  }

  return result;
}

unint64_t sub_1A7D29680()
{
  result = qword_1EB2B5BE0;
  if (!qword_1EB2B5BE0)
  {
    sub_1A7CC9830(&qword_1EB2B5BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BE0);
  }

  return result;
}

unint64_t sub_1A7D296FC()
{
  result = qword_1EB2B5BF0;
  if (!qword_1EB2B5BF0)
  {
    sub_1A7CC9830(&qword_1EB2B5BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BF0);
  }

  return result;
}

unint64_t sub_1A7D29778()
{
  result = qword_1EB2B5BF8;
  if (!qword_1EB2B5BF8)
  {
    sub_1A7CC9830(&qword_1EB2B4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BF8);
  }

  return result;
}

unint64_t sub_1A7D297F4()
{
  result = qword_1EB2B5C00;
  if (!qword_1EB2B5C00)
  {
    sub_1A7CC9830(&qword_1EB2B5BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C00);
  }

  return result;
}

unint64_t sub_1A7D29870()
{
  result = qword_1EB2B5C10;
  if (!qword_1EB2B5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C10);
  }

  return result;
}

unint64_t sub_1A7D298C4()
{
  result = qword_1EB2B5C30;
  if (!qword_1EB2B5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C30);
  }

  return result;
}

unint64_t sub_1A7D29918()
{
  result = qword_1EB2B5C38;
  if (!qword_1EB2B5C38)
  {
    sub_1A7CC9830(&qword_1EB2B5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C38);
  }

  return result;
}

unint64_t sub_1A7D29994()
{
  result = qword_1EB2B5C48;
  if (!qword_1EB2B5C48)
  {
    sub_1A7CC9830(&qword_1EB2B5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C48);
  }

  return result;
}

unint64_t sub_1A7D29A10()
{
  result = qword_1EB2B5C60;
  if (!qword_1EB2B5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C60);
  }

  return result;
}

unint64_t sub_1A7D29A64()
{
  result = qword_1EB2B5C68;
  if (!qword_1EB2B5C68)
  {
    sub_1A7CC9830(&qword_1EB2B5C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C68);
  }

  return result;
}

unint64_t sub_1A7D29AE0()
{
  result = qword_1EB2B5C78;
  if (!qword_1EB2B5C78)
  {
    sub_1A7CC9830(&qword_1EB2B5C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C78);
  }

  return result;
}

unint64_t sub_1A7D29B88()
{
  result = qword_1EB2B2A18;
  if (!qword_1EB2B2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A18);
  }

  return result;
}

unint64_t sub_1A7D29BDC()
{
  result = qword_1EB2B2A20;
  if (!qword_1EB2B2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A20);
  }

  return result;
}

unint64_t sub_1A7D29C5C()
{
  result = qword_1EB2B2A30;
  if (!qword_1EB2B2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A30);
  }

  return result;
}

unint64_t sub_1A7D29CB0()
{
  result = qword_1EB2B2A38;
  if (!qword_1EB2B2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A38);
  }

  return result;
}

unint64_t sub_1A7D29D30()
{
  result = qword_1EB2B2A48;
  if (!qword_1EB2B2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A48);
  }

  return result;
}

unint64_t sub_1A7D29D84()
{
  result = qword_1EB2B2A50;
  if (!qword_1EB2B2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A50);
  }

  return result;
}

unint64_t sub_1A7D29E04()
{
  result = qword_1EB2B2A00;
  if (!qword_1EB2B2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A00);
  }

  return result;
}

unint64_t sub_1A7D29E58()
{
  result = qword_1EB2B2A08;
  if (!qword_1EB2B2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A08);
  }

  return result;
}

uint64_t sub_1A7D29ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A7D29F14()
{
  result = qword_1EB2B2A60;
  if (!qword_1EB2B2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A60);
  }

  return result;
}

unint64_t sub_1A7D29F68()
{
  result = qword_1EB2B2A68;
  if (!qword_1EB2B2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A68);
  }

  return result;
}

__n128 sub_1A7D29FE0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A7D2A004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A7D2A04C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D2A0C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A7D2A110(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A7D2A160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A7D2A1A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A7D2A204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A7D2A24C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IDSLinksCompactQualityReport.MetadataMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSLinksCompactQualityReport.MetadataMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A7D2A438()
{
  result = qword_1EB2B5C80;
  if (!qword_1EB2B5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C80);
  }

  return result;
}

unint64_t sub_1A7D2A490()
{
  result = qword_1EB2B5C88;
  if (!qword_1EB2B5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C88);
  }

  return result;
}

unint64_t sub_1A7D2A4E8()
{
  result = qword_1EB2B5C90;
  if (!qword_1EB2B5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C90);
  }

  return result;
}

unint64_t sub_1A7D2A540()
{
  result = qword_1EB2B5C98;
  if (!qword_1EB2B5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C98);
  }

  return result;
}

unint64_t sub_1A7D2A598()
{
  result = qword_1EB2B5CA0;
  if (!qword_1EB2B5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CA0);
  }

  return result;
}

unint64_t sub_1A7D2A5F0()
{
  result = qword_1EB2B5CA8;
  if (!qword_1EB2B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CA8);
  }

  return result;
}

unint64_t sub_1A7D2A648()
{
  result = qword_1EB2B5CB0;
  if (!qword_1EB2B5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CB0);
  }

  return result;
}

unint64_t sub_1A7D2A6A0()
{
  result = qword_1EB2B5CB8;
  if (!qword_1EB2B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CB8);
  }

  return result;
}

unint64_t sub_1A7D2A6F8()
{
  result = qword_1EB2B5CC0;
  if (!qword_1EB2B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CC0);
  }

  return result;
}

unint64_t sub_1A7D2A750()
{
  result = qword_1EB2B5CC8;
  if (!qword_1EB2B5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CC8);
  }

  return result;
}

unint64_t sub_1A7D2A7A8()
{
  result = qword_1EB2B5CD0;
  if (!qword_1EB2B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CD0);
  }

  return result;
}

unint64_t sub_1A7D2A800()
{
  result = qword_1EB2B5CD8;
  if (!qword_1EB2B5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CD8);
  }

  return result;
}

unint64_t sub_1A7D2A858()
{
  result = qword_1EB2B5CE0;
  if (!qword_1EB2B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CE0);
  }

  return result;
}

unint64_t sub_1A7D2A8B0()
{
  result = qword_1EB2B5CE8;
  if (!qword_1EB2B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CE8);
  }

  return result;
}

unint64_t sub_1A7D2A908()
{
  result = qword_1EB2B5CF0;
  if (!qword_1EB2B5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CF0);
  }

  return result;
}

uint64_t sub_1A7D2A95C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496B6E696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xED0000656D614E65 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x796C696D61467069 && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x547463656E6E6F63 && a2 == 0xEB00000000656D69 || (sub_1A7E230D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEE00656D69547463)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2AC5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E657078457369 && a2 == 0xEB00000000657669 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274736E6F437369 && a2 == 0xED000064656E6961)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2AE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1937011826 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2AFA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537374656B636170 && a2 == 0xEB00000000746E65 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x527374656B636170 && a2 == 0xEF64657669656365 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65537365747962 && a2 == 0xE900000000000074 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6365527365747962 && a2 == 0xED00006465766965)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2B1C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x507374656B636170 && a2 == 0xEF74737275427265 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5265676172657661 && a2 == 0xEB00000000735454 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373694D736B6361 && a2 == 0xEB00000000676E69)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2B3E4()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBE3C((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  return swift_dynamicCast() & v3;
}

uint64_t sub_1A7D2B464(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B5CF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1A7E231D0();
}

uint64_t CLIDefaultPrinter.init(printer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CLIDefaultPrinter.print(cliFormattable:)(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1A7CC9878(a1, v3);
  v15[0] = 0;
  v5 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v5, v15))
  {
    v6 = 80;
  }

  else
  {
    v6 = WORD1(v15[0]);
  }

  (*(v4 + 16))(v15, v6, 0, 1, v3, v4);
  v7 = v16;
  v8 = v17;
  sub_1A7CC9878(v15, v16);
  v9 = (*(v8 + 24))(v7, v8);
  sub_1A7B0CD6C(v15);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      v2(v12, v13);

      v11 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1A7D2B670()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC0B0);
  sub_1A7B0CB00(v4, qword_1EB2DC0B0);
  sub_1A7CC7FFC(&qword_1EB2B5680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418D0;
  v6 = sub_1A7D2B80C();
  *(v5 + 32) = &type metadata for LEToolCommand;
  *(v5 + 40) = v6;
  v7 = sub_1A7D2B860();
  *(v5 + 48) = &type metadata for IDSToolPacketLogCommand;
  *(v5 + 56) = v7;
  v8 = sub_1A7E21EF0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1A7E21F40();
}

unint64_t sub_1A7D2B80C()
{
  result = qword_1EB2B5D00;
  if (!qword_1EB2B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D00);
  }

  return result;
}

unint64_t sub_1A7D2B860()
{
  result = qword_1EB2B5D08;
  if (!qword_1EB2B5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D08);
  }

  return result;
}

uint64_t sub_1A7D2B8C4()
{
  sub_1A7D2BA50();
  sub_1A7E21E90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D2B94C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B3010 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E21F80();
  v3 = sub_1A7B0CB00(v2, qword_1EB2DC0B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A7D2B9F8()
{
  result = qword_1EB2B5D10;
  if (!qword_1EB2B5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D10);
  }

  return result;
}

unint64_t sub_1A7D2BA50()
{
  result = qword_1EB2B5D18;
  if (!qword_1EB2B5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D18);
  }

  return result;
}

unint64_t sub_1A7D2BAA8()
{
  result = qword_1EB2B5D20;
  if (!qword_1EB2B5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D20);
  }

  return result;
}

uint64_t sub_1A7D2BAFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7D2BD28(a1);
}

uint64_t sub_1A7D2BBA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D2BC00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E48128;
  *(v3 + 24) = v1;

  sub_1A7D21128(v4, &unk_1A7E44460, v3, v2);
}

uint64_t sub_1A7D2BC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return sub_1A7D2BAFC(a1);
}

uint64_t sub_1A7D2BD28(uint64_t a1)
{
  v1[21] = a1;
  sub_1A7CC7FFC(&qword_1EB2B4A80);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for LinkState(0);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D2BE24, 0, 0);
}

uint64_t sub_1A7D2BE24()
{
  v1 = LinkEngine.linkConnector.getter();
  v41 = v2;
  if (v1)
  {
    v3 = *(v0 + 168);
    v4 = sub_1A7CC7FFC(&qword_1EB2B4A58);
    *(v0 + 80) = v4;
    *(v0 + 88) = sub_1A7CC97CC();
    os_unfair_lock_lock((v3 + 16));
    *(v0 + 56) = *(v3 + 24);

    os_unfair_lock_unlock((v3 + 16));
    v5 = sub_1A7CC9878((v0 + 56), v4);
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    *(v0 + 40) = swift_getAssociatedTypeWitness();
    *(v0 + 48) = swift_getAssociatedConformanceWitness();
    v8 = sub_1A7CC98BC((v0 + 16));
    v9 = -1 << *(*v7 + 32);
    v10 = ~v9;
    v11 = (*v7 + 64);
    v12 = *v11;
    v13 = -v9;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    *v8 = *v7;
    v8[1] = v11;
    v8[2] = v10;
    v8[3] = 0;
    v8[4] = v14 & v12;

    sub_1A7B0CD6C(v0 + 56);
    sub_1A7CC9920(v0 + 16, *(v0 + 40));
    sub_1A7E22A00();
    for (i = *(v0 + 160); i; i = *(v0 + 160))
    {
      os_unfair_lock_lock((i + 40));
      v16 = type metadata accessor for LinkStateComponent(0);
      v17 = v16;
      v18 = *(i + 48);
      if (*(v18 + 16) && (v19 = sub_1A7CD0DFC(v16), (v20 & 1) != 0))
      {
        sub_1A7B0CD10(*(v18 + 56) + 32 * v19, v0 + 96);
      }

      else
      {
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      v21 = *(v0 + 192);
      os_unfair_lock_unlock((i + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      v22 = swift_dynamicCast();
      v23 = *(v17 - 8);
      v42 = *(v23 + 56);
      v42(v21, v22 ^ 1u, 1, v17);
      v43 = *(v23 + 48);
      v24 = v43(v21, 1, v17);
      v25 = *(v0 + 224);
      v26 = *(v0 + 192);
      if (v24)
      {
        sub_1A7CD9FEC(v26);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v27 = *(v0 + 216);
        v28 = *(v0 + 192);
        sub_1A7CD0EC4(v26, v27);
        sub_1A7CD9FEC(v28);
        sub_1A7CF4888(v27, v25, type metadata accessor for LinkState);
      }

      v29 = *(v0 + 224);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v30 = *(v0 + 208);
        v31 = *(v0 + 176);
        v32 = *(v0 + 184);
        sub_1A7CD0E68(v29);
        sub_1A7E22CC0();
        swift_storeEnumTagMultiPayload();
        sub_1A7CD0EC4(v30, v32);
        v42(v32, 0, 1, v17);
        os_unfair_lock_lock((i + 40));
        sub_1A7CDA3E0(v32, v31);
        v33 = v43(v31, 1, v17);
        v34 = *(v0 + 176);
        if (v33 == 1)
        {
          sub_1A7CD9FEC(*(v0 + 176));
          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
        }

        else
        {
          *(v0 + 152) = v17;
          v35 = sub_1A7CC98BC((v0 + 128));
          sub_1A7CF4888(v34, v35, type metadata accessor for LinkStateComponent);
        }

        v36 = *(v0 + 208);
        v37 = *(v0 + 184);
        sub_1A7CC8D74(v0 + 128, v17);
        os_unfair_lock_unlock((i + 40));
        sub_1A7CD0E68(v36);
        sub_1A7CD9FEC(v37);
        ObjectType = swift_getObjectType();
        (*(v41 + 8))(i, ObjectType);
      }

      else
      {

        sub_1A7CD0E68(v29);
      }

      sub_1A7CC9920(v0 + 16, *(v0 + 40));
      sub_1A7E22A00();
    }

    swift_unknownObjectRelease();
    sub_1A7B0CD6C(v0 + 16);
  }

  v39 = *(v0 + 8);

  return v39();
}

double sub_1A7D2C3A8()
{
  *&result = 0x1010100000001;
  qword_1EB2DC298 = 0x1010100000001;
  return result;
}

double sub_1A7D2C3BC()
{
  result = 7.74859723e-304;
  qword_1EB2DC2A0 = 0x101010001000101;
  return result;
}

uint64_t LinkEndpoint.uniqueID.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = ((v3 + 63) >> 6);

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    while (1)
    {
LABEL_10:
      v10 = __clz(__rbit64(v5)) | (v7 << 6);
      v11 = *(*(v1 + 48) + 8 * v10);
      sub_1A7B0CD10(*(v1 + 56) + 32 * v10, v34);
      v33 = v11;
      sub_1A7B0CD10(v34, v28);
      sub_1A7CC7FFC(&qword_1EB2B5040);
      sub_1A7CC7FFC(&qword_1EB2B4C90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }

      v5 &= v5 - 1;
      sub_1A7CC9970(&v33, &qword_1EB2B5D28);
      if (*(&v30 + 1))
      {
        break;
      }

      sub_1A7CC9970(&v29, &qword_1EB2B5D30);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    sub_1A7B14FF0(&v29, v32);
    sub_1A7B14FF0(v32, &v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A7CCCCBC(0, v8[2] + 1, 1, v8);
    }

    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1A7CCCCBC((v12 > 1), v13 + 1, 1, v8);
    }

    v8[2] = v13 + 1;
    sub_1A7B14FF0(&v29, &v8[5 * v13 + 4]);
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v33 = v8;

  sub_1A7D2C8A8(&v33);

  v14 = v33;
  v15 = v33[2];
  if (v15)
  {
    *&v32[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v15, 0);
    v16 = *&v32[0];
    v17 = (v14 + 4);
    do
    {
      sub_1A7CC99E0(v17, &v33);
      v18 = v35;
      v19 = v36;
      sub_1A7CC9878(&v33, v35);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      sub_1A7B0CD6C(&v33);
      *&v32[0] = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_1A7CCE918((v23 > 1), v24 + 1, 1);
        v16 = *&v32[0];
      }

      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v17 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v33 = v16;
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v26 = sub_1A7E221F0();

  return v26;
}

uint64_t LinkEndpoint.components.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

IDSFoundation::LinkEndpoint __swiftcall LinkEndpoint.init()()
{
  v1 = v0;
  result.components._rawValue = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  v1->components._rawValue = result.components._rawValue;
  return result;
}

uint64_t sub_1A7D2C828(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A7D2C8A8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D602F8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A7D2C914(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A7D2C914(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A7E23080();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A7CC7FFC(&qword_1EB2B4C90);
        v5 = sub_1A7E22580();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A7D2CBE0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A7D2CA1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A7D2CA1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v28 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_1A7CC99E0(v5, &v25);
      sub_1A7CC99E0(v5 - 40, v22);
      v7 = v26;
      v8 = v27;
      sub_1A7CC9878(&v25, v26);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      v13 = v23;
      v12 = v24;
      sub_1A7CC9878(v22, v23);
      if (v9 == (*(v12 + 8))(v13, v12) && v11 == v14)
      {

        sub_1A7B0CD6C(v22);
        result = sub_1A7B0CD6C(&v25);
LABEL_5:
        a3 = v28 + 1;
        v5 = v21 + 40;
        v6 = v20 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_1A7E230D0();

      sub_1A7B0CD6C(v22);
      result = sub_1A7B0CD6C(&v25);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1A7B14FF0(v5, &v25);
      v17 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v17;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1A7B14FF0(&v25, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A7D2CBE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v105 = v5;
      v129 = v8;
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v5 = *&v8[16 * v106 + 24];
          sub_1A7D2D4A4((*a3 + 40 * v107), (*a3 + 40 * *&v8[16 * v106 + 16]), *a3 + 40 * v5, v6);
          if (v105)
          {
          }

          if (v5 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A7CF0024(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v108 = &v8[16 * v106];
          *v108 = v107;
          *(v108 + 1) = v5;
          v129 = v8;
          result = sub_1A7CEFF98(v106 - 1);
          v8 = v129;
          v106 = *(v129 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_1A7CF0024(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v121 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1A7CC99E0(*a3 + 40 * v7, &v126);
      v113 = v9;
      sub_1A7CC99E0(v10 + 40 * v9, v123);
      v11 = v127;
      v12 = v128;
      sub_1A7CC9878(&v126, v127);
      v13 = (*(v12 + 8))(v11, v12);
      v15 = v14;
      v16 = v124;
      v17 = v125;
      sub_1A7CC9878(v123, v124);
      v19 = v13 == (*(v17 + 8))(v16, v17) && v15 == v18;
      v110 = v5;
      if (v19)
      {
        v119 = 0;
      }

      else
      {
        v119 = sub_1A7E230D0();
      }

      sub_1A7B0CD6C(v123);
      result = sub_1A7B0CD6C(&v126);
      v20 = v113 + 2;
      v21 = v10 + 40 * v113 + 80;
      v117 = v6;
      v22 = 40 * v113 + 40;
      v8 = v121;
      do
      {
        v24 = v20;
        v25 = v7;
        v5 = v22;
        if (v20 >= v6)
        {
          break;
        }

        sub_1A7CC99E0(v21, &v126);
        sub_1A7CC99E0(v21 - 40, v123);
        v26 = v127;
        v27 = v128;
        sub_1A7CC9878(&v126, v127);
        v28 = (*(v27 + 8))(v26, v27);
        v30 = v29;
        v32 = v124;
        v31 = v125;
        sub_1A7CC9878(v123, v124);
        v34 = v28 == (*(v31 + 8))(v32, v31) && v30 == v33;
        v23 = v34 ? 0 : sub_1A7E230D0();

        sub_1A7B0CD6C(v123);
        result = sub_1A7B0CD6C(&v126);
        v20 = v24 + 1;
        v21 += 40;
        v7 = v25 + 1;
        v22 = v5 + 40;
        v8 = v121;
        v6 = v117;
      }

      while (((v119 ^ v23) & 1) == 0);
      if (v119)
      {
        v9 = v113;
        if (v24 < v113)
        {
          goto LABEL_134;
        }

        if (v113 < v24)
        {
          v6 = v113;
          v35 = 40 * v113;
          do
          {
            if (v6 != v25)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v38 = v37 + v35;
              v39 = v37 + v5;
              sub_1A7B14FF0((v37 + v35), &v126);
              v40 = *(v39 + 32);
              v41 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v41;
              *(v38 + 32) = v40;
              result = sub_1A7B14FF0(&v126, v39);
            }

            ++v6;
            v5 -= 40;
            v35 += 40;
          }

          while (v6 < v25--);
        }

        v7 = v24;
        v5 = v110;
      }

      else
      {
        v7 = v24;
        v5 = v110;
        v9 = v113;
      }
    }

    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_1A7CCC08C((v58 > 1), v59 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_73:
          if (v67)
          {
            goto LABEL_121;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_124;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_128;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_87:
        if (v85)
        {
          goto LABEL_123;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_94:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        sub_1A7D2D4A4((*a3 + 40 * v102), (*a3 + 40 * *&v8[16 * v63 + 32]), *a3 + 40 * v103, v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A7CF0024(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v129 = v8;
        result = sub_1A7CEFF98(v63);
        v8 = v129;
        v60 = *(v129 + 2);
        v7 = v6;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v43)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v44 = *a3;
  v45 = *a3 + 40 * v7;
  v114 = v9;
  v115 = v43;
  v46 = v9 - v7;
LABEL_42:
  v118 = v45;
  v120 = v7;
  v116 = v46;
  while (1)
  {
    sub_1A7CC99E0(v45, &v126);
    sub_1A7CC99E0(v45 - 40, v123);
    v47 = v127;
    v48 = v128;
    sub_1A7CC9878(&v126, v127);
    v49 = (*(v48 + 8))(v47, v48);
    v51 = v50;
    v52 = v124;
    v6 = v125;
    sub_1A7CC9878(v123, v124);
    if (v49 == (*(v6 + 8))(v52, v6) && v51 == v53)
    {

      sub_1A7B0CD6C(v123);
      sub_1A7B0CD6C(&v126);
LABEL_41:
      v7 = v120 + 1;
      v45 = v118 + 40;
      v46 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v111;
        v8 = v121;
        v9 = v114;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v55 = sub_1A7E230D0();

    sub_1A7B0CD6C(v123);
    result = sub_1A7B0CD6C(&v126);
    if ((v55 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v44)
    {
      break;
    }

    sub_1A7B14FF0(v45, &v126);
    v56 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v56;
    *(v45 + 32) = *(v45 - 8);
    sub_1A7B14FF0(&v126, v45 - 40);
    v45 -= 40;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1A7D2D4A4(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1A7CC99E0(v30, v55);
          v33 = v29;
          sub_1A7CC99E0(v29, v52);
          v34 = v56;
          v35 = v57;
          sub_1A7CC9878(v55, v56);
          v36 = (*(v35 + 8))(v34, v35);
          v38 = v37;
          v40 = v53;
          v39 = v54;
          sub_1A7CC9878(v52, v53);
          v42 = v36 == (*(v39 + 8))(v40, v39) && v38 == v41;
          v43 = v42 ? 0 : sub_1A7E230D0();

          sub_1A7B0CD6C(v52);
          sub_1A7B0CD6C(v55);
          if (v43)
          {
            break;
          }

          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v32 = v30 > v51;
          v30 -= 40;
          v29 = v33;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            v4 = v51;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 1);
          *(v5 + 32) = *(v33 + 4);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1A7CC99E0(v7, v55);
        sub_1A7CC99E0(v4, v52);
        v14 = v56;
        v15 = v57;
        sub_1A7CC9878(v55, v56);
        v16 = (*(v15 + 8))(v14, v15);
        v18 = v17;
        v19 = v53;
        v20 = v54;
        sub_1A7CC9878(v52, v53);
        v22 = v16 == (*(v20 + 8))(v19, v20) && v18 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_1A7E230D0();

        sub_1A7B0CD6C(v52);
        sub_1A7B0CD6C(v55);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      sub_1A7B0CD6C(v52);
      sub_1A7B0CD6C(v55);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

uint64_t sub_1A7D2D920()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC2A8);
  sub_1A7B0CB00(v4, qword_1EB2DC2A8);
  sub_1A7CC7FFC(&qword_1EB2B5680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418D0;
  v6 = type metadata accessor for IDSToolPacketLogDumpCommand();
  v7 = sub_1A7D2DD0C(&qword_1EB2B5D48, type metadata accessor for IDSToolPacketLogDumpCommand);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = type metadata accessor for IDSToolPacketLogClearCommand();
  v9 = sub_1A7D2DD0C(&qword_1EB2B5D50, type metadata accessor for IDSToolPacketLogClearCommand);
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v10 = sub_1A7E21EF0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D2DB28()
{
  sub_1A7D2B860();
  sub_1A7E21E90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D2DBB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B47A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E21F80();
  v3 = sub_1A7B0CB00(v2, qword_1EB2DC2A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A7D2DC5C()
{
  result = qword_1EB2B5D38;
  if (!qword_1EB2B5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D38);
  }

  return result;
}

unint64_t sub_1A7D2DCB8()
{
  result = qword_1EB2B5D40;
  if (!qword_1EB2B5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D40);
  }

  return result;
}

uint64_t sub_1A7D2DD0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A7D2DD64()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC2C0);
  sub_1A7B0CB00(v4, qword_1EB2DC2C0);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D2DEA8()
{
  v1[9] = v0;
  type metadata accessor for LEToolOptions();
  v1[10] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[11] = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B7CA0);
  v1[12] = swift_task_alloc();
  type metadata accessor for LEToolLinksRequest(0);
  v1[13] = swift_task_alloc();
  v2 = sub_1A7CC7FFC(&qword_1EB2B5DC8);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D2E030, 0, 0);
}

uint64_t sub_1A7D2E030()
{
  type metadata accessor for LEToolLinksListCommand();
  sub_1A7CC7FFC(&qword_1EB2B5D78);
  sub_1A7E21FC0();
  v25 = v0;
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A7CCECAC(0, v2, 0);
    v3 = 32;
    v4 = v26;
    do
    {
      v5 = *(v1 + v3);
      v6 = 0x7032702D736469;
      if (v5 != 1)
      {
        v6 = 0x72762D736469;
      }

      v7 = 0xE700000000000000;
      if (v5 != 1)
      {
        v7 = 0xE600000000000000;
      }

      if (*(v1 + v3))
      {
        v8 = v6;
      }

      else
      {
        v8 = 0x616C65722D736469;
      }

      if (*(v1 + v3))
      {
        v9 = v7;
      }

      else
      {
        v9 = 0xE900000000000079;
      }

      v11 = *(v26 + 16);
      v10 = *(v26 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_1A7CCECAC((v10 > 1), v11 + 1, 1);
      }

      *(v26 + 16) = v11 + 1;
      v12 = v26 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v13 = v0[15];
  v14 = v25[16];
  v15 = v25[13];
  v16 = v25[14];
  v17 = v25[11];
  v18 = v25[12];
  v19 = swift_task_alloc();
  v25[17] = v19;
  *(v19 + 16) = v4;
  v25[8] = type metadata accessor for LEToolLink();
  sub_1A7E21BC0();

  (*(v13 + 16))(v18, v14, v16);
  v20 = *(v13 + 56);
  v20(v18, 0, 1, v16);
  v20(v15, 1, 1, v16);
  sub_1A7D30374(v18, v15);
  sub_1A7D30C00(v15, v17, type metadata accessor for LEToolLinksRequest);
  type metadata accessor for LEToolRequest(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5690);
  sub_1A7E21DC0();
  v25[5] = &type metadata for CLIDefaultPrinter;
  v25[6] = &protocol witness table for CLIDefaultPrinter;
  v25[2] = sub_1A7D2B464;
  v25[3] = 0;
  v21 = swift_task_alloc();
  v25[18] = v21;
  *v21 = v25;
  v21[1] = sub_1A7D2E374;
  v22 = v25[10];
  v23 = v25[11];

  return sub_1A7DE8A40(v23, v22, (v25 + 2));
}

uint64_t sub_1A7D2E374()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(v2 + 152) = v0;

  sub_1A7D30BA0(v4, type metadata accessor for LEToolOptions);
  sub_1A7D30BA0(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C(v2 + 16);
  if (v0)
  {
    v5 = sub_1A7D2E5D4;
  }

  else
  {
    v5 = sub_1A7D2E4F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A7D2E4F8()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1A7D30BA0(v1, type metadata accessor for LEToolLinksRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A7D2E5D4()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1A7D30BA0(v1, type metadata accessor for LEToolLinksRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A7D2E6B0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v41 = a2;
  v2 = sub_1A7CC7FFC(&qword_1EB2B5DD0);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v40 = &v34 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5DD8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5DE0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - v14;
  v16 = sub_1A7CC7FFC(&qword_1EB2B5DE8);
  v17 = *(v16 - 8);
  v35 = v16;
  v36 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v34 - v19;
  v21 = sub_1A7CC7FFC(&qword_1EB2B5DF0);
  v22 = *(v21 - 8);
  v38 = v21;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v34 = &v34 - v24;
  sub_1A7CF3788(&qword_1EB2B5DF8, &qword_1EB2B5DD8);
  sub_1A7E217D0();
  swift_getKeyPath();
  sub_1A7E21760();

  (*(v7 + 8))(v10, v6);
  sub_1A7CC7FFC(&qword_1EB2B5E00);
  sub_1A7CC7FFC(&qword_1EB2B5E08);
  sub_1A7CF3788(&qword_1EB2B5E10, &qword_1EB2B5DE0);
  sub_1A7CF3788(&qword_1EB2B5E18, &qword_1EB2B5E00);
  sub_1A7E21780();
  (*(v12 + 8))(v15, v11);
  v44 = v37;
  sub_1A7CC7FFC(&qword_1EB2B5E20);
  sub_1A7CF3788(&qword_1EB2B5E28, &qword_1EB2B5DE8);
  sub_1A7CF3788(&qword_1EB2B5E30, &qword_1EB2B5E20);
  v25 = v34;
  v26 = v35;
  sub_1A7E21770();
  (*(v36 + 8))(v20, v26);
  v45 = 0;
  v27 = v40;
  sub_1A7E217C0();
  v28 = sub_1A7CC7FFC(&qword_1EB2B5E38);
  v29 = v41;
  v41[3] = v28;
  v29[4] = sub_1A7D303EC();
  sub_1A7CC98BC(v29);
  sub_1A7CF3788(&qword_1EB2B5EF0, &qword_1EB2B5DF0);
  sub_1A7CF3788(&qword_1EB2B5EF8, &qword_1EB2B5DD0);
  v30 = v25;
  v31 = v38;
  v32 = v42;
  sub_1A7E217B0();
  (*(v43 + 8))(v27, v32);
  return (*(v39 + 8))(v30, v31);
}

uint64_t sub_1A7D2ECE4()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5E78);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - v3;
  sub_1A7CF3788(&qword_1EB2B5F28, &qword_1EB2B5E78);
  sub_1A7E217D0();
  swift_getKeyPath();
  sub_1A7E21760();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1A7D2EE34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5E90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1A7CF3788(&qword_1EB2B5F00, &qword_1EB2B5E90);
  sub_1A7E217D0();
  v10 = a2;
  sub_1A7CC7FFC(&qword_1EB2B5EA0);
  sub_1A7CF3788(&qword_1EB2B5F08, &qword_1EB2B5EA0);
  sub_1A7CF3788(&qword_1EB2B5F10, &qword_1EB2B5E08);
  sub_1A7E21790();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A7D2F014@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5EE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5EB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v14 - v11;
  v14[1] = a1;
  sub_1A7CC7FFC(&qword_1EB2B5E08);
  sub_1A7E217C0();
  sub_1A7CF3788(&qword_1EB2B5F18, &qword_1EB2B5EE0);
  sub_1A7E217D0();
  sub_1A7CF3788(&qword_1EB2B5F20, &qword_1EB2B5EB0);
  sub_1A7CF3788(&qword_1EB2B5F10, &qword_1EB2B5E08);
  sub_1A7CD35B8();
  sub_1A7E217A0();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1A7D2F298()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B59C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D30324(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  type metadata accessor for LEToolLinksListCommand();
  sub_1A7E21D80();
  sub_1A7E21DB0();
  v6 = sub_1A7E21DA0();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_1A7D30AF8();
  return sub_1A7E21FB0();
}

uint64_t sub_1A7D2F47C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_1A7CC7FFC(&qword_1EB2B5D78);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v3);
  v36 = &v31 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v31 - v7;
  v39 = sub_1A7CC7FFC(&qword_1EB2B5F38);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v8);
  v10 = &v31 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B59C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v31 - v13;
  v15 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = type metadata accessor for LEToolLinksListCommand();
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D30324(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  v22 = *(v18 + 28);
  sub_1A7E21D80();
  sub_1A7E21DB0();
  v23 = sub_1A7E21DA0();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  sub_1A7D30AF8();
  sub_1A7E21FB0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D30B4C();
  v24 = v40;
  sub_1A7E23250();
  if (!v24)
  {
    v26 = v35;
    v25 = v36;
    v42 = 0;
    sub_1A7CF3788(&qword_1EB2B56D8, &qword_1EB2B5690);
    sub_1A7E22F30();
    (*(v26 + 40))(v21, v38, v5);
    v41 = 1;
    sub_1A7CF3788(&qword_1EB2B5F48, &qword_1EB2B5D78);
    v27 = v25;
    v28 = v34;
    v29 = v39;
    sub_1A7E22F30();
    (*(v37 + 8))(v10, v29);
    (*(v32 + 40))(&v21[v22], v27, v28);
    sub_1A7D30C00(v21, v33, type metadata accessor for LEToolLinksListCommand);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D30BA0(v21, type metadata accessor for LEToolLinksListCommand);
}

uint64_t sub_1A7D2FA18()
{
  if (*v0)
  {
    return 0x646E694B6B6E696CLL;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_1A7D2FA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E694B6B6E696CLL && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7D2FB3C(uint64_t a1)
{
  v2 = sub_1A7D30B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D2FB78(uint64_t a1)
{
  v2 = sub_1A7D30B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D2FBB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D2DEA8();
}

uint64_t sub_1A7D2FC80()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC2D8);
  sub_1A7B0CB00(v4, qword_1EB2DC2D8);
  sub_1A7CC7FFC(&qword_1EB2B5680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  v6 = type metadata accessor for LEToolLinksListCommand();
  v7 = sub_1A7D30324(&qword_1EB2B5D70, type metadata accessor for LEToolLinksListCommand);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = sub_1A7E21EF0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D2FE3C()
{
  sub_1A7D2FF44();
  sub_1A7E21E90();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A7D2FEEC()
{
  result = qword_1EB2B5D58;
  if (!qword_1EB2B5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D58);
  }

  return result;
}

unint64_t sub_1A7D2FF44()
{
  result = qword_1EB2B5D60;
  if (!qword_1EB2B5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D60);
  }

  return result;
}

unint64_t sub_1A7D2FF9C()
{
  result = qword_1EB2B5D68;
  if (!qword_1EB2B5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D68);
  }

  return result;
}

uint64_t type metadata accessor for LEToolLinksListCommand()
{
  result = qword_1EB2B5D80;
  if (!qword_1EB2B5D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D30064()
{
  sub_1A7D0293C();
  if (v0 <= 0x3F)
  {
    sub_1A7D300E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7D300E8()
{
  if (!qword_1EB2B5D90)
  {
    sub_1A7CC9830(&qword_1EB2B5D98);
    v0 = sub_1A7E21FF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B5D90);
    }
  }
}

unint64_t sub_1A7D301A4()
{
  result = qword_1EB2B5DA8;
  if (!qword_1EB2B5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5DA8);
  }

  return result;
}

unint64_t sub_1A7D301F8()
{
  result = qword_1EB2B5DB0;
  if (!qword_1EB2B5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5DB0);
  }

  return result;
}

uint64_t sub_1A7D30324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A7D30374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D303EC()
{
  result = qword_1EB2B5E40;
  if (!qword_1EB2B5E40)
  {
    sub_1A7CC9830(&qword_1EB2B5E38);
    sub_1A7D30478();
    sub_1A7D30A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E40);
  }

  return result;
}

unint64_t sub_1A7D30478()
{
  result = qword_1EB2B5E48;
  if (!qword_1EB2B5E48)
  {
    sub_1A7CC9830(&qword_1EB2B5DF0);
    sub_1A7D30504();
    sub_1A7D306F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E48);
  }

  return result;
}

unint64_t sub_1A7D30504()
{
  result = qword_1EB2B5E50;
  if (!qword_1EB2B5E50)
  {
    sub_1A7CC9830(&qword_1EB2B5DE8);
    sub_1A7D30590();
    sub_1A7D30640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E50);
  }

  return result;
}

unint64_t sub_1A7D30590()
{
  result = qword_1EB2B5E58;
  if (!qword_1EB2B5E58)
  {
    sub_1A7CC9830(&qword_1EB2B5DE0);
    sub_1A7CF3788(&qword_1EB2B5E60, &qword_1EB2B5DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E58);
  }

  return result;
}

unint64_t sub_1A7D30640()
{
  result = qword_1EB2B5E68;
  if (!qword_1EB2B5E68)
  {
    sub_1A7CC9830(&qword_1EB2B5E00);
    sub_1A7CF3788(&qword_1EB2B5E70, &qword_1EB2B5E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E68);
  }

  return result;
}

unint64_t sub_1A7D306F0()
{
  result = qword_1EB2B5E80;
  if (!qword_1EB2B5E80)
  {
    sub_1A7CC9830(&qword_1EB2B5E20);
    sub_1A7CF3788(&qword_1EB2B5E88, &qword_1EB2B5E90);
    sub_1A7D307A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E80);
  }

  return result;
}

unint64_t sub_1A7D307A8()
{
  result = qword_1EB2B5E98;
  if (!qword_1EB2B5E98)
  {
    sub_1A7CC9830(&qword_1EB2B5EA0);
    sub_1A7D30860();
    sub_1A7CF3788(&qword_1EB2B5ED8, &qword_1EB2B5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E98);
  }

  return result;
}

unint64_t sub_1A7D30860()
{
  result = qword_1EB2B5EA8;
  if (!qword_1EB2B5EA8)
  {
    sub_1A7CC9830(&qword_1EB2B5EB0);
    sub_1A7D3094C(&qword_1EB2B5EB8, sub_1A7D309C4);
    sub_1A7D3094C(&qword_1EB2B5EC8, sub_1A7D30A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5EA8);
  }

  return result;
}

uint64_t sub_1A7D3094C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B5E08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7D309C4()
{
  result = qword_1EB2B5EC0;
  if (!qword_1EB2B5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5EC0);
  }

  return result;
}

unint64_t sub_1A7D30A18()
{
  result = qword_1EB2B5ED0;
  if (!qword_1EB2B5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5ED0);
  }

  return result;
}

unint64_t sub_1A7D30A6C()
{
  result = qword_1EB2B5EE8;
  if (!qword_1EB2B5EE8)
  {
    sub_1A7CC9830(&qword_1EB2B5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5EE8);
  }

  return result;
}

unint64_t sub_1A7D30AF8()
{
  result = qword_1EB2B5F30;
  if (!qword_1EB2B5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F30);
  }

  return result;
}

unint64_t sub_1A7D30B4C()
{
  result = qword_1EB2B5F40;
  if (!qword_1EB2B5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F40);
  }

  return result;
}

uint64_t sub_1A7D30BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7D30C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D30C7C()
{
  result = qword_1EB2B5F50;
  if (!qword_1EB2B5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F50);
  }

  return result;
}

unint64_t sub_1A7D30CD4()
{
  result = qword_1EB2B5F58;
  if (!qword_1EB2B5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F58);
  }

  return result;
}

unint64_t sub_1A7D30D2C()
{
  result = qword_1EB2B5F60;
  if (!qword_1EB2B5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F60);
  }

  return result;
}

uint64_t LinkEngineConnectFirstController.__allocating_init(fallbackDelay:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LinkEngineConnectFirstController.update(linkConnector:scheduler:links:behavior:now:)(uint64_t a1, void (**a2)(unint64_t, uint64_t), void *a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v12 = a3[3];
  v13 = a3[4];
  v14 = sub_1A7CC9878(a3, v12);
  return sub_1A7D339FC(a1, a2, v14, a4, a5, a6, v6, v12, v13) & 1;
}

uint64_t sub_1A7D30E50()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5F68);
  sub_1A7B0CB00(v0, qword_1EB2B5F68);
  return sub_1A7E22050();
}

uint64_t LinkEngineConnectFirstController.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t LinkEngineConnectFirstController.init(fallbackDelay:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1A7D30F70(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v25 - v8;
  v10 = sub_1A7E22CF0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v25 - v17;
  LinkEngineLink.state.getter(v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = v9;
LABEL_6:
    sub_1A7CD0E68(v23);
    v21 = 1;
    return v21 & 1;
  }

  v19 = v9;
  v20 = *(v11 + 32);
  v20(v18, v19, v10);
  LinkEngineLink.state.getter(v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v11 + 8))(v18, v10);
    v23 = v5;
    goto LABEL_6;
  }

  v20(v14, v5, v10);
  v21 = sub_1A7E22CB0();
  v22 = *(v11 + 8);
  v22(v14, v10);
  v22(v18, v10);
  return v21 & 1;
}

uint64_t sub_1A7D311D4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A7D6035C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A7D31250(v6);
  return sub_1A7E22C00();
}

void sub_1A7D31250(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A7E23080();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LinkEngineLink();
        v6 = sub_1A7E22580();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1A7D31A3C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A7D31354(0, v2, 1, a1);
  }
}

void sub_1A7D31354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v82 = &v67 - v13;
  v87 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v87, v14);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v76 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v74 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v67 - v24;
  v26 = sub_1A7E22CF0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v73 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v81 = &v67 - v32;
  v68 = a2;
  if (a3 != a2)
  {
    v33 = *a4;
    v79 = type metadata accessor for LinkStateComponent(0);
    v80 = v79 - 8;
    v78 = (v27 + 32);
    v75 = (v27 + 8);
    v34 = v79;
    v83 = v33;
    v35 = (v33 + 8 * a3 - 8);
    v36 = a1 - a3;
LABEL_5:
    v71 = a3;
    v37 = *(v83 + 8 * a3);
    v69 = v36;
    v70 = v35;
    while (1)
    {
      v88 = v36;
      v38 = *v35;

      v91 = v38;

      os_unfair_lock_lock(v37 + 10);
      v39 = *&v37[12]._os_unfair_lock_opaque;
      if (*(v39 + 16) && (v40 = sub_1A7CD0DFC(v34), (v41 & 1) != 0))
      {
        sub_1A7B0CD10(*(v39 + 56) + 32 * v40, &v89);
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
      }

      os_unfair_lock_unlock(v37 + 10);
      v42 = sub_1A7CC7FFC(&qword_1EB2B66D0);
      v43 = v82;
      v86 = v42;
      v44 = swift_dynamicCast();
      v45 = *(v34 - 8);
      v85 = *(v45 + 56);
      v85(v43, v44 ^ 1u, 1, v34);
      v84 = *(v45 + 48);
      if (v84(v43, 1, v34))
      {
        sub_1A7CC9970(v43, &qword_1EB2B4A80);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v46 = v26;
        v47 = v25;
        v48 = v74;
        sub_1A7CD0EC4(v43, v74);
        sub_1A7CC9970(v43, &qword_1EB2B4A80);
        v49 = v48;
        v25 = v47;
        v26 = v46;
        v34 = v79;
        sub_1A7CDA450(v49, v25, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v50 = *v78;
      (*v78)(v81, v25, v26);
      v51 = v91;
      os_unfair_lock_lock(v91 + 10);
      v52 = *&v51[12]._os_unfair_lock_opaque;
      if (*(v52 + 16) && (v53 = sub_1A7CD0DFC(v34), (v54 & 1) != 0))
      {
        sub_1A7B0CD10(*(v52 + 56) + 32 * v53, &v89);
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
      }

      os_unfair_lock_unlock(v91 + 10);
      v55 = v77;
      v56 = swift_dynamicCast();
      v85(v55, v56 ^ 1u, 1, v34);
      if (v84(v55, 1, v34))
      {
        sub_1A7CC9970(v55, &qword_1EB2B4A80);
        v57 = v76;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v58 = v72;
        sub_1A7CD0EC4(v55, v72);
        sub_1A7CC9970(v55, &qword_1EB2B4A80);
        v59 = v58;
        v57 = v76;
        sub_1A7CDA450(v59, v76, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*v75)(v81, v26);
        sub_1A7CD0E68(v57);

        v34 = v79;
        goto LABEL_26;
      }

      v60 = v73;
      v50(v73, v57, v26);
      v61 = v81;
      v62 = sub_1A7E22CB0();
      v63 = *v75;
      (*v75)(v60, v26);
      v63(v61, v26);

      v34 = v79;
      v64 = v88;
      if ((v62 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_27:
      if (!v83)
      {
        __break(1u);
        return;
      }

      v65 = *v35;
      v37 = v35[1];
      *v35 = v37;
      v35[1] = v65;
      --v35;
      v66 = __CFADD__(v64, 1);
      v36 = v64 + 1;
      if (v66)
      {
LABEL_4:
        a3 = v71 + 1;
        v35 = v70 + 1;
        v36 = v69 - 1;
        if (v71 + 1 == v68)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    sub_1A7CD0E68(v25);

LABEL_26:
    v64 = v88;
    goto LABEL_27;
  }
}

void sub_1A7D31A3C(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v193 = a4;
  v194 = a1;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v188 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v197 = &v188 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v202 = &v188 - v20;
  v221 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v221, v21);
  v207 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v211 = &v188 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v209 = &v188 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v188 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v191 = &v188 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v196 = &v188 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v195 = &v188 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v203 = &v188 - v44;
  v219 = sub_1A7E22CF0();
  MEMORY[0x1EEE9AC00](v219, v45);
  v208 = &v188 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v217 = &v188 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v192 = &v188 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v201 = &v188 - v56;
  v57 = a3[1];
  if (v57 < 1)
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v60 = *v194;
    if (!*v194)
    {
      goto LABEL_175;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_168:
      v59 = sub_1A7CF0024(v59);
    }

    v228 = v59;
    v184 = *(v59 + 2);
    if (v184 >= 2)
    {
      while (*a3)
      {
        v185 = *&v59[16 * v184];
        v186 = *&v59[16 * v184 + 24];
        sub_1A7D32C6C((*a3 + 8 * v185), (*a3 + 8 * *&v59[16 * v184 + 16]), (*a3 + 8 * v186), v60);
        if (v5)
        {
          goto LABEL_146;
        }

        if (v186 < v185)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1A7CF0024(v59);
        }

        if (v184 - 2 >= *(v59 + 2))
        {
          goto LABEL_163;
        }

        v187 = &v59[16 * v184];
        *v187 = v185;
        *(v187 + 1) = v186;
        v228 = v59;
        sub_1A7CEFF98(v184 - 1);
        v59 = v228;
        v184 = *(v228 + 2);
        if (v184 <= 1)
        {
          goto LABEL_146;
        }
      }

      goto LABEL_172;
    }

LABEL_146:
  }

  else
  {
    v224 = v32;
    v58 = 0;
    v214 = (v55 + 32);
    v212 = (v55 + 8);
    v59 = MEMORY[0x1E69E7CC0];
    v199 = a3;
    v210 = v10;
    v216 = v14;
    while (1)
    {
      v60 = v58;
      v61 = v58 + 1;
      if (v58 + 1 >= v57)
      {
        ++v58;
LABEL_34:
        v96 = v193;
        goto LABEL_41;
      }

      v218 = v57;
      v62 = *a3;
      *&v226 = *(*a3 + 8 * v61);
      v225 = *(v62 + 8 * v58);

      LODWORD(v220) = sub_1A7D30F70(&v226, &v225);
      if (v5)
      {

        return;
      }

      v63 = v58 + 2;
      v190 = v58;
      if (v58 + 2 >= v218)
      {
        v58 += 2;
        v96 = v193;
        goto LABEL_38;
      }

      v189 = v59;
      v64 = (v62 + 8 * v58 + 16);
      v200 = 0;
      while (1)
      {
        v206 = v63;
        v72 = *(v64 - 1);
        v71 = *v64;

        v223 = v72;

        os_unfair_lock_lock((v71 + 40));
        v73 = type metadata accessor for LinkStateComponent(0);
        v74 = v73;
        v75 = *(v71 + 48);
        if (*(v75 + 16))
        {
          v76 = sub_1A7CD0DFC(v73);
          v77 = v203;
          if (v78)
          {
            sub_1A7B0CD10(*(v75 + 56) + 32 * v76, &v226);
          }

          else
          {
            v226 = 0u;
            v227 = 0u;
          }
        }

        else
        {
          v226 = 0u;
          v227 = 0u;
          v77 = v203;
        }

        os_unfair_lock_unlock((v71 + 40));
        v79 = sub_1A7CC7FFC(&qword_1EB2B66D0);
        v80 = v202;
        v222 = v79;
        v81 = swift_dynamicCast();
        v82 = *(v74 - 8);
        v83 = *(v82 + 56);
        v83(v80, v81 ^ 1u, 1, v74);
        v84 = *(v82 + 48);
        if (v84(v80, 1, v74))
        {
          sub_1A7CC9970(v80, &qword_1EB2B4A80);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v85 = v195;
          sub_1A7CD0EC4(v80, v195);
          sub_1A7CC9970(v80, &qword_1EB2B4A80);
          v86 = v85;
          v77 = v203;
          sub_1A7CDA450(v86, v203, type metadata accessor for LinkState);
        }

        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1A7CD0E68(v77);

          v5 = v200;
          a3 = v199;
          goto LABEL_31;
        }

        v215 = *v214;
        v215(v201, v77, v219);
        v87 = v223;
        os_unfair_lock_lock(v223 + 10);
        v88 = *&v87[12]._os_unfair_lock_opaque;
        if (*(v88 + 16))
        {
          v89 = sub_1A7CD0DFC(v74);
          if (v90)
          {
            sub_1A7B0CD10(*(v88 + 56) + 32 * v89, &v226);
          }

          else
          {
            v226 = 0u;
            v227 = 0u;
          }
        }

        else
        {
          v226 = 0u;
          v227 = 0u;
        }

        os_unfair_lock_unlock(v223 + 10);
        v91 = v197;
        v92 = swift_dynamicCast();
        v83(v91, v92 ^ 1u, 1, v74);
        if (v84(v91, 1, v74))
        {
          sub_1A7CC9970(v91, &qword_1EB2B4A80);
          v93 = v196;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v94 = v191;
          sub_1A7CD0EC4(v91, v191);
          sub_1A7CC9970(v91, &qword_1EB2B4A80);
          v95 = v94;
          v93 = v196;
          sub_1A7CDA450(v95, v196, type metadata accessor for LinkState);
        }

        v5 = v200;
        a3 = v199;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v212)(v201, v219);
          sub_1A7CD0E68(v93);

LABEL_31:
          v58 = v206;
          if ((v220 & 1) == 0)
          {
            v96 = v193;
            v59 = v189;
            v60 = v190;
            goto LABEL_41;
          }

          goto LABEL_10;
        }

        v65 = v192;
        v66 = v219;
        v215(v192, v93, v219);
        v67 = a3;
        v68 = v201;
        LODWORD(v222) = sub_1A7E22CB0();
        v69 = *v212;
        (*v212)(v65, v66);
        v70 = v68;
        a3 = v67;
        v69(v70, v66);

        v58 = v206;
        if ((v220 ^ v222))
        {
          break;
        }

LABEL_10:
        v63 = v58 + 1;
        ++v64;
        if (v218 == v58 + 1)
        {
          v61 = v58;
          v58 = v218;
          goto LABEL_37;
        }
      }

      v61 = v206 - 1;
LABEL_37:
      v96 = v193;
      v59 = v189;
LABEL_38:
      v60 = v190;
      if ((v220 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (v58 < v190)
      {
        break;
      }

      if (v190 <= v61)
      {
        v178 = 8 * v58 - 8;
        v179 = 8 * v190;
        v180 = v58;
        v181 = v190;
        while (1)
        {
          if (v181 != --v180)
          {
            v183 = *a3;
            if (!*a3)
            {
              goto LABEL_173;
            }

            v182 = *(v183 + v179);
            *(v183 + v179) = *(v183 + v178);
            *(v183 + v178) = v182;
          }

          ++v181;
          v178 -= 8;
          v179 += 8;
          if (v181 >= v180)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_41:
      v97 = a3[1];
      if (v58 >= v97)
      {
        goto LABEL_79;
      }

      if (__OFSUB__(v58, v60))
      {
        goto LABEL_165;
      }

      if (v58 - v60 >= v96)
      {
        goto LABEL_79;
      }

      if (__OFADD__(v60, v96))
      {
        goto LABEL_166;
      }

      if (&v60[v96] >= v97)
      {
        v98 = a3[1];
      }

      else
      {
        v98 = &v60[v96];
      }

      if (v98 < v60)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (v58 == v98)
      {
        goto LABEL_79;
      }

      v189 = v59;
      v200 = v5;
      v99 = *a3;
      v222 = type metadata accessor for LinkStateComponent(0);
      v215 = (v222 - 8);
      v218 = v99;
      v100 = (v99 + 8 * v58 - 8);
      v190 = v60;
      v101 = &v60[-v58];
      v198 = v98;
      while (2)
      {
        v206 = v58;
        v102 = *(v218 + 8 * v58);
        v204 = v101;
        v205 = v100;
        while (2)
        {
          v103 = *v100;

          v223 = v103;

          os_unfair_lock_lock(v102 + 10);
          v104 = *&v102[12]._os_unfair_lock_opaque;
          if (*(v104 + 16) && (v105 = sub_1A7CD0DFC(v222), (v106 & 1) != 0))
          {
            sub_1A7B0CD10(*(v104 + 56) + 32 * v105, &v226);
          }

          else
          {
            v226 = 0u;
            v227 = 0u;
          }

          os_unfair_lock_unlock(v102 + 10);
          v107 = sub_1A7CC7FFC(&qword_1EB2B66D0);
          v108 = v216;
          v220 = v107;
          v109 = v222;
          v110 = swift_dynamicCast();
          v111 = *(v109 - 8);
          v112 = *(v111 + 56);
          v112(v108, v110 ^ 1u, 1, v109);
          v113 = *(v111 + 48);
          if (v113(v108, 1, v109))
          {
            sub_1A7CC9970(v108, &qword_1EB2B4A80);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v114 = v209;
            sub_1A7CD0EC4(v108, v209);
            sub_1A7CC9970(v108, &qword_1EB2B4A80);
            sub_1A7CDA450(v114, v224, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v119 = v224;
LABEL_73:
            sub_1A7CD0E68(v119);

            goto LABEL_74;
          }

          v213 = *v214;
          v213(v217, v224, v219);
          v115 = v223;
          os_unfair_lock_lock(v223 + 10);
          v116 = *&v115[12]._os_unfair_lock_opaque;
          if (*(v116 + 16) && (v117 = sub_1A7CD0DFC(v222), (v118 & 1) != 0))
          {
            sub_1A7B0CD10(*(v116 + 56) + 32 * v117, &v226);
          }

          else
          {
            v226 = 0u;
            v227 = 0u;
          }

          os_unfair_lock_unlock(v223 + 10);
          v120 = v210;
          v121 = v222;
          v122 = swift_dynamicCast();
          v112(v120, v122 ^ 1u, 1, v121);
          if (v113(v120, 1, v121))
          {
            sub_1A7CC9970(v120, &qword_1EB2B4A80);
            v123 = v211;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v124 = v207;
            sub_1A7CD0EC4(v120, v207);
            sub_1A7CC9970(v120, &qword_1EB2B4A80);
            v123 = v211;
            sub_1A7CDA450(v124, v211, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*v212)(v217, v219);
            v119 = v123;
            goto LABEL_73;
          }

          v125 = v208;
          v126 = v219;
          v213(v208, v123, v219);
          v127 = v217;
          v128 = sub_1A7E22CB0();
          v129 = *v212;
          (*v212)(v125, v126);
          v129(v127, v126);

          if ((v128 & 1) == 0)
          {
            break;
          }

LABEL_74:
          if (!v218)
          {
            goto LABEL_170;
          }

          v130 = *v100;
          v102 = v100[1];
          *v100 = v102;
          v100[1] = v130;
          --v100;
          if (!__CFADD__(v101++, 1))
          {
            continue;
          }

          break;
        }

        v58 = v206 + 1;
        v100 = v205 + 1;
        v101 = v204 - 1;
        if ((v206 + 1) != v198)
        {
          continue;
        }

        break;
      }

      v58 = v198;
      v5 = v200;
      a3 = v199;
      v59 = v189;
      v60 = v190;
LABEL_79:
      if (v58 < v60)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1A7CCC08C(0, *(v59 + 2) + 1, 1, v59);
      }

      v133 = *(v59 + 2);
      v132 = *(v59 + 3);
      v134 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        v59 = sub_1A7CCC08C((v132 > 1), v133 + 1, 1, v59);
      }

      *(v59 + 2) = v134;
      v135 = &v59[16 * v133];
      *(v135 + 4) = v60;
      *(v135 + 5) = v58;
      v60 = *v194;
      if (!*v194)
      {
        goto LABEL_174;
      }

      if (v133)
      {
        while (1)
        {
          v136 = v134 - 1;
          if (v134 >= 4)
          {
            break;
          }

          if (v134 == 3)
          {
            v137 = *(v59 + 4);
            v138 = *(v59 + 5);
            v147 = __OFSUB__(v138, v137);
            v139 = v138 - v137;
            v140 = v147;
LABEL_99:
            if (v140)
            {
              goto LABEL_153;
            }

            v153 = &v59[16 * v134];
            v155 = *v153;
            v154 = *(v153 + 1);
            v156 = __OFSUB__(v154, v155);
            v157 = v154 - v155;
            v158 = v156;
            if (v156)
            {
              goto LABEL_156;
            }

            v159 = &v59[16 * v136 + 32];
            v161 = *v159;
            v160 = *(v159 + 1);
            v147 = __OFSUB__(v160, v161);
            v162 = v160 - v161;
            if (v147)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v157, v162))
            {
              goto LABEL_160;
            }

            if (v157 + v162 >= v139)
            {
              if (v139 < v162)
              {
                v136 = v134 - 2;
              }

              goto LABEL_120;
            }

            goto LABEL_113;
          }

          v163 = &v59[16 * v134];
          v165 = *v163;
          v164 = *(v163 + 1);
          v147 = __OFSUB__(v164, v165);
          v157 = v164 - v165;
          v158 = v147;
LABEL_113:
          if (v158)
          {
            goto LABEL_155;
          }

          v166 = &v59[16 * v136];
          v168 = *(v166 + 4);
          v167 = *(v166 + 5);
          v147 = __OFSUB__(v167, v168);
          v169 = v167 - v168;
          if (v147)
          {
            goto LABEL_158;
          }

          if (v169 < v157)
          {
            goto LABEL_3;
          }

LABEL_120:
          v174 = v136 - 1;
          if (v136 - 1 >= v134)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          if (!*a3)
          {
            goto LABEL_171;
          }

          v175 = *&v59[16 * v174 + 32];
          v176 = *&v59[16 * v136 + 40];
          sub_1A7D32C6C((*a3 + 8 * v175), (*a3 + 8 * *&v59[16 * v136 + 32]), (*a3 + 8 * v176), v60);
          if (v5)
          {
            goto LABEL_146;
          }

          if (v176 < v175)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1A7CF0024(v59);
          }

          if (v174 >= *(v59 + 2))
          {
            goto LABEL_150;
          }

          v177 = &v59[16 * v174];
          *(v177 + 4) = v175;
          *(v177 + 5) = v176;
          v228 = v59;
          sub_1A7CEFF98(v136);
          v59 = v228;
          v134 = *(v228 + 2);
          if (v134 <= 1)
          {
            goto LABEL_3;
          }
        }

        v141 = &v59[16 * v134 + 32];
        v142 = *(v141 - 64);
        v143 = *(v141 - 56);
        v147 = __OFSUB__(v143, v142);
        v144 = v143 - v142;
        if (v147)
        {
          goto LABEL_151;
        }

        v146 = *(v141 - 48);
        v145 = *(v141 - 40);
        v147 = __OFSUB__(v145, v146);
        v139 = v145 - v146;
        v140 = v147;
        if (v147)
        {
          goto LABEL_152;
        }

        v148 = &v59[16 * v134];
        v150 = *v148;
        v149 = *(v148 + 1);
        v147 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v147)
        {
          goto LABEL_154;
        }

        v147 = __OFADD__(v139, v151);
        v152 = v139 + v151;
        if (v147)
        {
          goto LABEL_157;
        }

        if (v152 >= v144)
        {
          v170 = &v59[16 * v136 + 32];
          v172 = *v170;
          v171 = *(v170 + 1);
          v147 = __OFSUB__(v171, v172);
          v173 = v171 - v172;
          if (v147)
          {
            goto LABEL_161;
          }

          if (v139 < v173)
          {
            v136 = v134 - 2;
          }

          goto LABEL_120;
        }

        goto LABEL_99;
      }

LABEL_3:
      v57 = a3[1];
      if (v58 >= v57)
      {
        goto LABEL_136;
      }
    }

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
LABEL_175:
    __break(1u);
  }
}

uint64_t sub_1A7D32C6C(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v142 = (&v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v144 = (&v132 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v143 = &v132 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v147 = (&v132 - v19);
  v155 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v155, v20);
  v135 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v132 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v137 = &v132 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v138 = &v132 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v133 = &v132 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v140 = &v132 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v136 = &v132 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v139 = (&v132 - v43);
  v153 = sub_1A7E22CF0();
  v44 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v45);
  v141 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v148 = &v132 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v134 = &v132 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v55 = a2;
  v146 = &v132 - v56;
  v57 = a2 - a1;
  v58 = v57 / 8;
  v59 = a3 - v55;
  v60 = a3 - v55 + 7;
  if (a3 - v55 >= 0)
  {
    v60 = a3 - v55;
  }

  v61 = v60 >> 3;
  if (v58 >= v60 >> 3)
  {
    if (a4 != v55 || &v55[8 * v61] <= a4)
    {
      v97 = v55;
      memmove(a4, v55, 8 * v61);
      v55 = v97;
    }

    v154 = &a4[8 * v61];
    if (v59 < 8 || v55 <= a1)
    {
      v96 = v55;
    }

    else
    {
      v146 = (v44 + 32);
      v139 = (v44 + 8);
      v152 = a4;
      v98 = v144;
      v140 = v25;
      v149 = a1;
      do
      {
        v150 = v55;
        v99 = v55 - 8;
        v100 = a3 - 8;
        v101 = v154;
        v102 = v138;
        v143 = v99;
        while (1)
        {
          v103 = *(v101 - 1);
          v104 = *v99;

          v158 = v104;

          os_unfair_lock_lock(v103 + 10);
          v105 = type metadata accessor for LinkStateComponent(0);
          v106 = v105;
          v107 = *&v103[12]._os_unfair_lock_opaque;
          v108 = *(v107 + 16);
          v151 = v100;
          v145 = v101 - 8;
          if (v108 && (v109 = sub_1A7CD0DFC(v105), (v110 & 1) != 0))
          {
            sub_1A7B0CD10(*(v107 + 56) + 32 * v109, &v156);
          }

          else
          {
            v156 = 0u;
            v157 = 0u;
          }

          v147 = v103;
          os_unfair_lock_unlock(v103 + 10);
          sub_1A7CC7FFC(&qword_1EB2B66D0);
          v111 = swift_dynamicCast();
          v112 = *(v106 - 8);
          v113 = *(v112 + 56);
          v113(v98, v111 ^ 1u, 1, v106);
          v114 = *(v112 + 48);
          if (v114(v98, 1, v106))
          {
            sub_1A7CC9970(v98, &qword_1EB2B4A80);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v115 = v137;
            sub_1A7CD0EC4(v98, v137);
            sub_1A7CC9970(v98, &qword_1EB2B4A80);
            v116 = v115;
            v102 = v138;
            sub_1A7CDA450(v116, v138, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1A7CD0E68(v102);

            a3 = v151;
            a4 = v152;
            goto LABEL_67;
          }

          v117 = *v146;
          (*v146)(v148, v102, v153);
          v118 = v158;
          os_unfair_lock_lock(v158 + 10);
          v119 = *&v118[12]._os_unfair_lock_opaque;
          if (*(v119 + 16) && (v120 = sub_1A7CD0DFC(v106), (v121 & 1) != 0))
          {
            sub_1A7B0CD10(*(v119 + 56) + 32 * v120, &v156);
          }

          else
          {
            v156 = 0u;
            v157 = 0u;
          }

          os_unfair_lock_unlock(v158 + 10);
          v122 = v142;
          v123 = swift_dynamicCast();
          v113(v122, v123 ^ 1u, 1, v106);
          if (v114(v122, 1, v106))
          {
            sub_1A7CC9970(v122, &qword_1EB2B4A80);
            v124 = v140;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v125 = v135;
            sub_1A7CD0EC4(v122, v135);
            sub_1A7CC9970(v122, &qword_1EB2B4A80);
            v124 = v140;
            sub_1A7CDA450(v125, v140, type metadata accessor for LinkState);
          }

          a3 = v151;
          a4 = v152;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          v126 = v141;
          v127 = v153;
          v117(v141, v124, v153);
          v128 = v148;
          v129 = sub_1A7E22CB0();
          v130 = *v139;
          (*v139)(v126, v127);
          v130(v128, v127);

          v98 = v144;
          if (v129)
          {
            goto LABEL_67;
          }

          v99 = v143;
          v101 = v145;
          if (a3 + 8 != v154)
          {
            *a3 = *v145;
          }

          v100 = a3 - 8;
          v154 = v101;
          if (v101 <= a4)
          {
            v154 = v101;
            v96 = v150;
            goto LABEL_74;
          }
        }

        (*v139)(v148, v153);
        sub_1A7CD0E68(v124);

        v98 = v144;
LABEL_67:
        v96 = v143;
        if (a3 + 8 != v150)
        {
          *a3 = *v143;
        }

        if (v154 <= a4)
        {
          break;
        }

        v55 = v96;
      }

      while (v96 > v149);
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v58] <= a4)
    {
      v62 = v55;
      memmove(a4, a1, 8 * v58);
      v55 = v62;
    }

    v154 = &a4[8 * v58];
    if (v57 >= 8 && v55 < a3)
    {
      v145 = (v44 + 32);
      v142 = (v44 + 8);
      v63 = v147;
      v64 = v139;
      v151 = a3;
      while (1)
      {
        v150 = v55;
        v65 = *v55;
        v66 = *a4;

        v158 = v66;

        os_unfair_lock_lock((v65 + 40));
        v67 = type metadata accessor for LinkStateComponent(0);
        v68 = v67;
        v69 = *(v65 + 48);
        v70 = *(v69 + 16);
        v152 = a4;
        v149 = a1;
        if (v70 && (v71 = sub_1A7CD0DFC(v67), (v72 & 1) != 0))
        {
          sub_1A7B0CD10(*(v69 + 56) + 32 * v71, &v156);
        }

        else
        {
          v156 = 0u;
          v157 = 0u;
        }

        os_unfair_lock_unlock((v65 + 40));
        v148 = sub_1A7CC7FFC(&qword_1EB2B66D0);
        v73 = swift_dynamicCast();
        v74 = *(v68 - 8);
        v75 = *(v74 + 56);
        v75(v63, v73 ^ 1u, 1, v68);
        v76 = *(v74 + 48);
        if (v76(v63, 1, v68))
        {
          sub_1A7CC9970(v63, &qword_1EB2B4A80);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v77 = v136;
          sub_1A7CD0EC4(v63, v136);
          sub_1A7CC9970(v63, &qword_1EB2B4A80);
          v78 = v77;
          v64 = v139;
          sub_1A7CDA450(v78, v139, type metadata accessor for LinkState);
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v80 = v158;
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        v144 = *v145;
        v144(v146, v64, v153);
        os_unfair_lock_lock(v80 + 10);
        v81 = *&v80[12]._os_unfair_lock_opaque;
        if (*(v81 + 16) && (v82 = sub_1A7CD0DFC(v68), (v83 & 1) != 0))
        {
          sub_1A7B0CD10(*(v81 + 56) + 32 * v82, &v156);
        }

        else
        {
          v156 = 0u;
          v157 = 0u;
        }

        os_unfair_lock_unlock(v80 + 10);
        v85 = v143;
        v86 = swift_dynamicCast();
        v75(v85, v86 ^ 1u, 1, v68);
        if (v76(v85, 1, v68))
        {
          sub_1A7CC9970(v85, &qword_1EB2B4A80);
          v87 = v140;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v88 = v133;
          sub_1A7CD0EC4(v85, v133);
          sub_1A7CC9970(v85, &qword_1EB2B4A80);
          v87 = v140;
          sub_1A7CDA450(v88, v140, type metadata accessor for LinkState);
        }

        a4 = v152;
        v84 = v149;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v142)(v146, v153);
          sub_1A7CD0E68(v87);

LABEL_32:
          v63 = v147;
LABEL_33:
          v93 = v150;
          v55 = v150 + 8;
          v95 = v151;
          if (v84 == v150)
          {
            goto LABEL_35;
          }

LABEL_34:
          *v84 = *v93;
          goto LABEL_35;
        }

        v89 = v134;
        v90 = v153;
        v144(v134, v87, v153);
        v91 = v146;
        LODWORD(v148) = sub_1A7E22CB0();
        v92 = *v142;
        (*v142)(v89, v90);
        v92(v91, v90);

        v63 = v147;
        if (v148)
        {
          goto LABEL_33;
        }

        v93 = a4;
        v94 = v84 == a4;
        a4 += 8;
        v55 = v150;
        v95 = v151;
        if (!v94)
        {
          goto LABEL_34;
        }

LABEL_35:
        a1 = v84 + 8;
        if (a4 >= v154 || v55 >= v95)
        {
          goto LABEL_37;
        }
      }

      sub_1A7CD0E68(v64);

      a4 = v152;
      v84 = v149;
      goto LABEL_32;
    }

LABEL_37:
    v96 = a1;
  }

LABEL_74:
  if (v96 != a4 || v96 >= &a4[(v154 - a4 + (v154 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v96, a4, 8 * ((v154 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1A7D339FC(uint64_t a1, void (**a2)(unint64_t, uint64_t), uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v303 = a7;
  v317 = a6;
  v312 = a2;
  v310 = a1;
  v320 = sub_1A7E22CF0();
  v12 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320, v13);
  *&v291 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v280 - v17;
  v19 = sub_1A7CC7FFC(&qword_1EB2B5B78);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v297 = &v280 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v286 = &v280 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v301 = &v280 - v27;
  v28 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v287 = &v280 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v290 = &v280 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v292 = (&v280 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v300 = &v280 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v314 = &v280 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v302 = &v280 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v311 = &v280 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v315 = &v280 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v280 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v308 = (&v280 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v319 = (&v280 - v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  v309 = &v280 - v64;
  v65 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v289 = &v280 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v69);
  v299 = (&v280 - v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  v296 = &v280 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v313 = &v280 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v307 = &v280 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v298 = &v280 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v305 = (&v280 - v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  v306 = (&v280 - v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  v316 = (&v280 - v91);
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = &v280 - v94;
  MEMORY[0x1EEE9AC00](v96, v97);
  v318 = (&v280 - v98);
  MEMORY[0x1EEE9AC00](v99, v100);
  v304 = (&v280 - v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v105 = &v280 - v104;
  v108 = MEMORY[0x1EEE9AC00](v106, v107);
  v293 = v110;
  v111 = *(v110 + 16);
  v294 = &v280 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = a8;
  v111(v108);
  v112 = *a5;
  v322 = a4;
  v323 = v65;
  v113 = a4 >> 62;
  if (v112 == 1)
  {
    if (!v113)
    {
      v114 = *((v322 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v114)
      {
        goto LABEL_164;
      }

LABEL_4:
      v115 = type metadata accessor for LinkStateComponent(0);
      if (v114 < 1)
      {
        goto LABEL_167;
      }

      v116 = v115;
      v18 = 0;
      v316 = (v322 & 0xC000000000000001);
      v303 = v322 & 0xFFFFFFFFFFFFFF8;
      v313 = (v115 - 8);
      v307 = v12 + 8;
      v306 = (v12 + 16);
      v305 = (v312 + 3);
      v311 = v105;
      v117 = v309;
      v314 = v114;
      v315 = v115;
      do
      {
        if (v316)
        {
          v118 = MEMORY[0x1AC562480](v18, v322);
        }

        else
        {
          if (v18 >= *(v303 + 16))
          {
            goto LABEL_94;
          }

          v118 = *(v322 + 8 * v18 + 32);
        }

        os_unfair_lock_lock((v118 + 40));
        v119 = *(v118 + 48);
        v321 = (v118 + 48);
        if (*(v119 + 16) && (v120 = sub_1A7CD0DFC(v116), (v121 & 1) != 0))
        {
          sub_1A7B0CD10(*(v119 + 56) + 32 * v120, &v324);
        }

        else
        {
          v324 = 0u;
          v325 = 0u;
        }

        os_unfair_lock_unlock((v118 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0);
        v122 = swift_dynamicCast();
        v123 = *(v116 - 8);
        v12 = *(v123 + 56);
        (v12)(v117, v122 ^ 1u, 1, v116);
        v124 = *(v123 + 48);
        if (v124(v117, 1, v116))
        {
          v125 = v117;
          sub_1A7CC9970(v117, &qword_1EB2B4A80);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v126 = v304;
          sub_1A7CD0EC4(v117, v304);
          v125 = v117;
          sub_1A7CC9970(v117, &qword_1EB2B4A80);
          v105 = v311;
          sub_1A7CDA450(v126, v311, type metadata accessor for LinkState);
        }

        if (swift_getEnumCaseMultiPayload() >= 2)
        {

          sub_1A7CD0E68(v105);
          v117 = v125;
          v116 = v315;
        }

        else
        {
          v127 = v320;
          (*v307)(v105, v320);
          v128 = v318;
          (*v306)(v318, v317, v127);
          swift_storeEnumTagMultiPayload();
          v129 = v319;
          sub_1A7CD0EC4(v128, v319);
          v116 = v315;
          (v12)(v129, 0, 1, v315);
          os_unfair_lock_lock((v118 + 40));
          v130 = v308;
          v12 = &unk_1A7E41910;
          sub_1A7CD1F00(v129, v308, &qword_1EB2B4A80);
          if (v124(v130, 1, v116) == 1)
          {
            sub_1A7CC9970(v130, &qword_1EB2B4A80);
            v324 = 0u;
            v325 = 0u;
          }

          else
          {
            *(&v325 + 1) = v116;
            v131 = sub_1A7CC98BC(&v324);
            sub_1A7CDA450(v130, v131, type metadata accessor for LinkStateComponent);
          }

          sub_1A7CC8D74(&v324, v116);
          os_unfair_lock_unlock((v118 + 40));
          sub_1A7CD0E68(v318);
          sub_1A7CC9970(v319, &qword_1EB2B4A80);
          ObjectType = swift_getObjectType();
          v312[3](v118, ObjectType);

          v117 = v309;
          v105 = v311;
        }

        ++v18;
      }

      while (v314 != v18);
      goto LABEL_163;
    }

LABEL_96:
    v114 = sub_1A7E22DA0();
    if (!v114)
    {
      goto LABEL_164;
    }

    goto LABEL_4;
  }

  v327 = MEMORY[0x1E69E7CC0];
  if (v113)
  {
    v133 = sub_1A7E22DA0();
  }

  else
  {
    v133 = *((v322 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v283 = v18;
  v321 = v133;
  v288 = v12;
  if (!v133)
  {
    goto LABEL_54;
  }

  v134 = 0;
  v18 = v322 & 0xC000000000000001;
  v135 = v12;
  v12 = (v322 & 0xFFFFFFFFFFFFFF8);
  v319 = (v135 + 8);
  while (!v18)
  {
    if (v134 >= *(v12 + 2))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v105 = *(v322 + 8 * v134 + 32);

    v136 = (v134 + 1);
    if (__OFADD__(v134, 1))
    {
      goto LABEL_52;
    }

LABEL_33:
    os_unfair_lock_lock((v105 + 40));
    v137 = *(v105 + 48);
    if (*(v137 + 16) && (v138 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v139 & 1) != 0))
    {
      sub_1A7B0CD10(*(v137 + 56) + 32 * v138, &v324);
    }

    else
    {
      v324 = 0u;
      v325 = 0u;
    }

    os_unfair_lock_unlock((v105 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if (swift_dynamicCast() & 1) != 0 && v326 != 2 && (v326)
    {
    }

    else
    {
      os_unfair_lock_lock((v105 + 40));
      v140 = type metadata accessor for LinkStateComponent(0);
      v141 = v140;
      v142 = *(v105 + 48);
      if (*(v142 + 16) && (v143 = sub_1A7CD0DFC(v140), (v144 & 1) != 0))
      {
        sub_1A7B0CD10(*(v142 + 56) + 32 * v143, &v324);
      }

      else
      {
        v324 = 0u;
        v325 = 0u;
      }

      os_unfair_lock_unlock((v105 + 40));
      v145 = swift_dynamicCast();
      v146 = *(v141 - 8);
      (*(v146 + 56))(v55, v145 ^ 1u, 1, v141);
      if ((*(v146 + 48))(v55, 1, v141))
      {
        sub_1A7CC9970(v55, &qword_1EB2B4A80);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v147 = v316;
        sub_1A7CD0EC4(v55, v316);
        sub_1A7CC9970(v55, &qword_1EB2B4A80);
        sub_1A7CDA450(v147, v95, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v319)(v95, v320);
        sub_1A7E22BF0();
        sub_1A7E22C40();
        sub_1A7E22C50();
        sub_1A7E22C00();
      }

      else
      {

        sub_1A7CD0E68(v95);
      }
    }

    ++v134;
    if (v136 == v321)
    {
      goto LABEL_53;
    }
  }

  v105 = MEMORY[0x1AC562480](v134, v322);
  v136 = (v134 + 1);
  if (!__OFADD__(v134, 1))
  {
    goto LABEL_33;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v12 = v288;
LABEL_54:

  *&v324 = sub_1A7DB25A8(v148);
  sub_1A7D311D4(&v324);
  v149 = v320;
  v18 = v306;

  v114 = v324;
  if ((v324 & 0x8000000000000000) != 0 || (v324 & 0x4000000000000000) != 0)
  {
    if (sub_1A7E22DA0())
    {
      goto LABEL_57;
    }
  }

  else if (*(v324 + 16))
  {
LABEL_57:
    if ((v114 & 0xC000000000000001) != 0)
    {
      goto LABEL_168;
    }

    if (*(v114 + 16))
    {
      v309 = *(v114 + 32);

      goto LABEL_60;
    }

    __break(1u);

    __break(1u);
    return result;
  }

  v203 = *(v12 + 7);
  v309 = v12 + 56;
  v308 = v203;
  (v203)(v301, 1, 1, v149);
  if (!v321)
  {
LABEL_159:
    v274 = v301;
    v275 = v286;
    sub_1A7CD1F00(v301, v286, &qword_1EB2B5B78);
    v276 = v288;
    if ((*(v288 + 6))(v275, 1, v149) == 1)
    {
      sub_1A7CC9970(v274, &qword_1EB2B5B78);
      v277 = v275;
    }

    else
    {
      v278 = v283;
      v276[4](v283, v275, v149);
      (*(a9 + 24))(v278, v295, a9);
      (v276[1])(v278, v149);
      v277 = v274;
    }

    sub_1A7CC9970(v277, &qword_1EB2B5B78);
LABEL_163:
    v114 = 0;
    goto LABEL_164;
  }

  v105 = 0;
  v311 = v322 & 0xC000000000000001;
  v307 = (v322 & 0xFFFFFFFFFFFFFF8);
  v306 = (v288 + 16);
  v281 = v312 + 2;
  v305 = (v288 + 8);
  v304 = v312 + 1;
  v284 = (v288 + 32);
  v205 = 1;
  *&v204 = 136315650;
  v282 = v204;
  *&v204 = 136315394;
  v280 = v204;
  while (2)
  {
    if (v311)
    {
      v206 = MEMORY[0x1AC562480](v105, v322);
      v207 = (v105 + 1);
      if (__OFADD__(v105, 1))
      {
        goto LABEL_165;
      }

LABEL_110:
      os_unfair_lock_lock((v206 + 40));
      v18 = v206 + 48;
      v208 = *(v206 + 48);
      if (*(v208 + 16) && (v209 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v210 & 1) != 0))
      {
        sub_1A7B0CD10(*(v208 + 56) + 32 * v209, &v324);
      }

      else
      {
        v324 = 0u;
        v325 = 0u;
      }

      os_unfair_lock_unlock((v206 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if (swift_dynamicCast() & 1) != 0 && v327 != 2 && (v327)
      {

        v114 = v321;
        if (v207 == v321)
        {
          goto LABEL_159;
        }

        goto LABEL_103;
      }

      v318 = v207;
      os_unfair_lock_lock((v206 + 40));
      v211 = type metadata accessor for LinkStateComponent(0);
      v212 = v211;
      v213 = *v18;
      v214 = *(*v18 + 16);
      v319 = v105;
      if (v214 && (v215 = sub_1A7CD0DFC(v211), (v216 & 1) != 0))
      {
        sub_1A7B0CD10(*(v213 + 56) + 32 * v215, &v324);
      }

      else
      {
        v324 = 0u;
        v325 = 0u;
      }

      os_unfair_lock_unlock((v206 + 40));
      v217 = v314;
      v218 = swift_dynamicCast();
      v219 = *(v212 - 8);
      v315 = *(v219 + 56);
      (v315)(v217, v218 ^ 1u, 1, v212);
      v220 = *(v219 + 48);
      v114 = v219 + 48;
      v316 = v220;
      if ((v220)(v217, 1, v212))
      {
        sub_1A7CC9970(v217, &qword_1EB2B4A80);
        v221 = v313;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v222 = v296;
        sub_1A7CD0EC4(v217, v296);
        sub_1A7CC9970(v217, &qword_1EB2B4A80);
        v221 = v313;
        sub_1A7CDA450(v222, v313, type metadata accessor for LinkState);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 4) >= 2)
        {
          if ((*(v221 + 9) & 1) == 0)
          {

            goto LABEL_155;
          }

          if (qword_1EB2B47C0 != -1)
          {
            swift_once();
          }

          v249 = sub_1A7E22060();
          sub_1A7B0CB00(v249, qword_1EB2B5F68);

          v250 = sub_1A7E22040();
          v251 = sub_1A7E228F0();

          if (os_log_type_enabled(v250, v251))
          {
            v252 = swift_slowAlloc();
            v302 = swift_slowAlloc();
            *&v324 = v302;
            *v252 = v280;
            v285 = v251;
            v253 = *(v206 + 16);
            v254 = *(v206 + 24);

            v255 = sub_1A7B0CB38(v253, v254, &v324);

            *(v252 + 4) = v255;
            *(v252 + 12) = 2080;
            v256 = v298;
            LinkEngineLink.state.getter(v298);
            v257 = LinkState.description.getter();
            v259 = v258;
            sub_1A7CD0E68(v256);
            v260 = sub_1A7B0CB38(v257, v259, &v324);

            *(v252 + 14) = v260;
            _os_log_impl(&dword_1A7AD9000, v250, v285, "%s: %s -> connecting (reconnect)", v252, 0x16u);
            v261 = v302;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v261, -1, -1);
            MEMORY[0x1AC5654B0](v252, -1, -1);
          }

          v262 = v301;
          v263 = v287;
          v264 = v289;
          v149 = v320;
          (*v306)(v289, v317, v320);
          swift_storeEnumTagMultiPayload();
          v265 = v264;
          v266 = v290;
          sub_1A7CD0EC4(v265, v290);
          (v315)(v266, 0, 1, v212);
          os_unfair_lock_lock((v206 + 40));
          sub_1A7CD1F00(v266, v263, &qword_1EB2B4A80);
          if ((v316)(v263, 1, v212) == 1)
          {
            sub_1A7CC9970(v263, &qword_1EB2B4A80);
            v324 = 0u;
            v325 = 0u;
          }

          else
          {
            *(&v325 + 1) = v212;
            v271 = sub_1A7CC98BC(&v324);
            sub_1A7CDA450(v263, v271, type metadata accessor for LinkStateComponent);
          }

          v105 = v319;
          sub_1A7CC8D74(&v324, v212);
          os_unfair_lock_unlock((v206 + 40));
          sub_1A7CD0E68(v289);
          sub_1A7CC9970(v290, &qword_1EB2B4A80);
          v272 = swift_getObjectType();
          v312[2](v206, v272);
          v273 = v297;
          sub_1A7E22CD0();

          sub_1A7CC9970(v262, &qword_1EB2B5B78);
          (v308)(v273, 0, 1, v149);
          sub_1A7D25AEC(v273, v262);
          v205 = 0;
          v114 = v321;
          if (v318 == v321)
          {
            goto LABEL_159;
          }

LABEL_103:
          ++v105;
          continue;
        }

        if ((v205 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v18 = v291;
          (*v284)(v291, v221, v149);
          sub_1A7E22CE0();
          v245 = sub_1A7E232A0();
          v114 = v321;
          v246 = v318;
          v105 = v319;
          if (v245)
          {
            v247 = v297;
            sub_1A7E22CD0();

            (*v305)(v18, v149);
            v248 = v301;
            sub_1A7CC9970(v301, &qword_1EB2B5B78);
            (v308)(v247, 0, 1, v149);
            sub_1A7D25AEC(v247, v248);
            v205 = 0;
            if (v246 == v114)
            {
              goto LABEL_159;
            }
          }

          else
          {
            (*v305)(v18, v149);

            if (v246 == v114)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_103;
        }

        if (EnumCaseMultiPayload == 1)
        {

          sub_1A7CD0E68(v221);
LABEL_155:
          v114 = v321;
          v105 = v319;
          if (v318 == v321)
          {
            goto LABEL_159;
          }

          goto LABEL_103;
        }

        (*v305)(v221, v149);
        if ((v205 & 1) == 0)
        {
LABEL_147:

          if (v318 == v321)
          {
            goto LABEL_159;
          }

          v205 = 0;
          v105 = v319 + 1;
          continue;
        }
      }

      if (qword_1EB2B47C0 != -1)
      {
        swift_once();
      }

      v224 = sub_1A7E22060();
      sub_1A7B0CB00(v224, qword_1EB2B5F68);

      v225 = sub_1A7E22040();
      v226 = sub_1A7E228F0();

      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        v302 = swift_slowAlloc();
        *&v324 = v302;
        *v227 = v282;
        v228 = sub_1A7E22230();
        v285 = v226;
        v230 = sub_1A7B0CB38(v228, v229, &v324);

        *(v227 + 4) = v230;
        *(v227 + 12) = 2080;
        v231 = *(v206 + 16);
        v232 = *(v206 + 24);

        v233 = sub_1A7B0CB38(v231, v232, &v324);

        *(v227 + 14) = v233;
        *(v227 + 22) = 2080;
        v234 = v298;
        LinkEngineLink.state.getter(v298);
        v235 = LinkState.description.getter();
        v237 = v236;
        sub_1A7CD0E68(v234);
        v238 = sub_1A7B0CB38(v235, v237, &v324);

        *(v227 + 24) = v238;
        _os_log_impl(&dword_1A7AD9000, v225, v285, "%s %s: %s -> connecting", v227, 0x20u);
        v239 = v302;
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v239, -1, -1);
        v240 = v227;
        v149 = v320;
        MEMORY[0x1AC5654B0](v240, -1, -1);
      }

      v241 = v292;
      v242 = v299;
      (*v306)(v299, v317, v149);
      swift_storeEnumTagMultiPayload();
      v243 = v242;
      v244 = v300;
      sub_1A7CD0EC4(v243, v300);
      (v315)(v244, 0, 1, v212);
      os_unfair_lock_lock((v206 + 40));
      sub_1A7CD1F00(v244, v241, &qword_1EB2B4A80);
      if ((v316)(v241, 1, v212) == 1)
      {
        sub_1A7CC9970(v241, &qword_1EB2B4A80);
        v324 = 0u;
        v325 = 0u;
      }

      else
      {
        *(&v325 + 1) = v212;
        v267 = sub_1A7CC98BC(&v324);
        sub_1A7CDA450(v241, v267, type metadata accessor for LinkStateComponent);
      }

      v268 = v319;
      sub_1A7CC8D74(&v324, v212);
      os_unfair_lock_unlock((v206 + 40));
      sub_1A7CD0E68(v299);
      sub_1A7CC9970(v300, &qword_1EB2B4A80);
      v269 = swift_getObjectType();
      v312[1](v206, v269);
      v270 = v297;
      sub_1A7E22CD0();

      v114 = v301;
      sub_1A7CC9970(v301, &qword_1EB2B5B78);
      (v308)(v270, 0, 1, v149);
      sub_1A7D25AEC(v270, v114);
      if (v318 == v321)
      {
        goto LABEL_159;
      }

      v205 = 0;
      v105 = v268 + 1;
      continue;
    }

    break;
  }

  if (v105 >= *(v307 + 2))
  {
    goto LABEL_166;
  }

  v206 = *(v322 + 8 * v105 + 32);

  v207 = (v105 + 1);
  if (!__OFADD__(v105, 1))
  {
    goto LABEL_110;
  }

LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  v309 = MEMORY[0x1AC562480](0, v114);
LABEL_60:

  if (qword_1EB2B47C0 != -1)
  {
    swift_once();
  }

  v150 = sub_1A7E22060();
  v151 = sub_1A7B0CB00(v150, qword_1EB2B5F68);
  v152 = v309;

  v300 = v151;
  v153 = sub_1A7E22040();
  v154 = sub_1A7E228F0();

  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *&v324 = v156;
    *v155 = 136315138;
    v157 = *(v152 + 2);
    v158 = *(v152 + 3);

    v159 = sub_1A7B0CB38(v157, v158, &v324);

    *(v155 + 4) = v159;
    _os_log_impl(&dword_1A7AD9000, v153, v154, "earliest connected link: %s", v155, 0xCu);
    sub_1A7B0CD6C(v156);
    MEMORY[0x1AC5654B0](v156, -1, -1);
    MEMORY[0x1AC5654B0](v155, -1, -1);
  }

  if (v321)
  {
    v160 = v322;
    v314 = (v322 & 0xC000000000000001);
    v12 = type metadata accessor for LinkStateComponent(0);
    v161 = 0;
    v301 = v160 & 0xFFFFFFFFFFFFFF8;
    v313 = v12 - 8;
    v304 = (v288 + 8);
    v299 = (v288 + 16);
    v297 = (v312 + 3);
    *&v162 = 136315906;
    v291 = v162;
    do
    {
      if (v314)
      {
        v105 = MEMORY[0x1AC562480](v161, v322);
        v163 = (v161 + 1);
        if (__OFADD__(v161, 1))
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (v161 >= *(v301 + 16))
        {
          goto LABEL_95;
        }

        v105 = *(v322 + 8 * v161 + 32);

        v163 = (v161 + 1);
        if (__OFADD__(v161, 1))
        {
          goto LABEL_93;
        }
      }

      os_unfair_lock_lock((v105 + 40));
      v164 = *(v105 + 48);
      v319 = (v105 + 48);
      if (*(v164 + 16) && (v165 = sub_1A7CD0DFC(v12), (v166 & 1) != 0))
      {
        sub_1A7B0CD10(*(v164 + 56) + 32 * v165, &v324);
      }

      else
      {
        v324 = 0u;
        v325 = 0u;
      }

      os_unfair_lock_unlock((v105 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      v167 = v315;
      v168 = swift_dynamicCast();
      v169 = *(v12 - 1);
      v316 = *(v169 + 56);
      (v316)(v167, v168 ^ 1u, 1, v12);
      v318 = *(v169 + 48);
      if ((v318)(v167, 1, v12))
      {
        sub_1A7CC9970(v167, &qword_1EB2B4A80);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v170 = v305;
        sub_1A7CD0EC4(v167, v305);
        sub_1A7CC9970(v167, &qword_1EB2B4A80);
        v171 = v170;
        v18 = v306;
        sub_1A7CDA450(v171, v306, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() >= 2)
      {

        sub_1A7CD0E68(v18);
      }

      else
      {
        (*v304)(v18, v320);
        if (v105 != v309)
        {
          v308 = v163;
          v172 = v18;
          v173 = v309;

          v174 = sub_1A7E22040();
          v175 = sub_1A7E228F0();
          v176 = v173;

          LODWORD(v303) = v175;
          if (os_log_type_enabled(v174, v175))
          {
            v177 = swift_slowAlloc();
            v296 = swift_slowAlloc();
            *&v324 = v296;
            *v177 = v291;
            v292 = v174;
            v178 = *(v105 + 16);
            v179 = *(v105 + 24);

            v180 = sub_1A7B0CB38(v178, v179, &v324);

            *(v177 + 4) = v180;
            *(v177 + 12) = 2080;
            v181 = *(v176 + 2);
            v182 = *(v176 + 3);

            v183 = sub_1A7B0CB38(v181, v182, &v324);

            *(v177 + 14) = v183;
            *(v177 + 22) = 2080;
            v184 = v298;
            LinkEngineLink.state.getter(v298);
            v185 = LinkState.description.getter();
            v187 = v186;
            sub_1A7CD0E68(v184);
            v188 = sub_1A7B0CB38(v185, v187, &v324);

            *(v177 + 24) = v188;
            *(v177 + 32) = 2080;
            LinkEngineLink.state.getter(v184);
            v189 = LinkState.description.getter();
            v191 = v190;
            v192 = v184;
            v193 = v302;
            sub_1A7CD0E68(v192);
            v194 = sub_1A7B0CB38(v189, v191, &v324);
            v18 = v306;

            *(v177 + 34) = v194;
            v195 = v292;
            _os_log_impl(&dword_1A7AD9000, v292, v303, "%s: Disconnecting because it is not %s; state: %s, earlier link state: %s", v177, 0x2Au);
            v196 = v296;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v196, -1, -1);
            MEMORY[0x1AC5654B0](v177, -1, -1);
          }

          else
          {

            v193 = v302;
            v18 = v172;
          }

          v197 = v307;
          (*v299)(v307, v317, v320);
          swift_storeEnumTagMultiPayload();
          v198 = v197;
          v199 = v311;
          sub_1A7CD0EC4(v198, v311);
          (v316)(v199, 0, 1, v12);
          os_unfair_lock_lock((v105 + 40));
          sub_1A7CD1F00(v199, v193, &qword_1EB2B4A80);
          v200 = (v318)(v193, 1, v12);
          v163 = v308;
          if (v200 == 1)
          {
            sub_1A7CC9970(v193, &qword_1EB2B4A80);
            v324 = 0u;
            v325 = 0u;
          }

          else
          {
            *(&v325 + 1) = v12;
            v201 = sub_1A7CC98BC(&v324);
            sub_1A7CDA450(v193, v201, type metadata accessor for LinkStateComponent);
          }

          sub_1A7CC8D74(&v324, v12);
          os_unfair_lock_unlock((v105 + 40));
          sub_1A7CD0E68(v307);
          sub_1A7CC9970(v311, &qword_1EB2B4A80);
          v202 = swift_getObjectType();
          v312[3](v105, v202);
        }
      }

      ++v161;
    }

    while (v163 != v321);
  }

  v114 = 1;
LABEL_164:
  (*(v293 + 8))(v294, v295);
  return v114;
}

unint64_t sub_1A7D35E78()
{
  result = qword_1EB2B5F80;
  if (!qword_1EB2B5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F80);
  }

  return result;
}

uint64_t sub_1A7D35F2C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D90);
  sub_1A7B0CB00(v0, qword_1EB2B2D90);
  return sub_1A7E22050();
}

uint64_t LEToolLinksListRequest.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5DC8);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_1A7D30374(a1, a2);
}

uint64_t sub_1A7D3603C()
{
  v0 = sub_1A7E21830();
  sub_1A7CC7A10(v0, qword_1EB2B5F88);
  sub_1A7B0CB00(v0, qword_1EB2B5F88);
  return sub_1A7D36088();
}

uint64_t sub_1A7D36088()
{
  sub_1A7E21800();
  type metadata accessor for LEToolLink();
  sub_1A7E21820();
  sub_1A7E21820();
  sub_1A7E21820();
  sub_1A7E21820();
  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();
}

uint64_t sub_1A7D3627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D3630C(uint64_t a1)
{
  v2 = sub_1A7D365E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D36348(uint64_t a1)
{
  v2 = sub_1A7D365E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D36390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LEToolLinksListRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5FA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D365E4();
  sub_1A7E23260();
  if (qword_1EB2B47D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E21830();
  sub_1A7B0CB00(v7, qword_1EB2B5F88);
  sub_1A7CC7FFC(&qword_1EB2B5DC8);
  sub_1A7D369A0(&qword_1EB2B5FB0);
  sub_1A7E22F90();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A7D365E4()
{
  result = qword_1EB2B5FA8;
  if (!qword_1EB2B5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5FA8);
  }

  return result;
}

uint64_t LEToolLinksListRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v22 = &v21 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5FB8);
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for LEToolLinksListRequest(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7CC7FFC(&qword_1EB2B5DC8);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D365E4();
  sub_1A7E23250();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    if (qword_1EB2B47D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1A7E21830();
    sub_1A7B0CB00(v18, qword_1EB2B5F88);
    sub_1A7D369A0(&qword_1EB2B5FC0);
    sub_1A7E22E80();
    (*(v16 + 8))(v10, v7);
    v19 = v23;
    sub_1A7D30374(v17, v14);
    sub_1A7D3705C(v14, v19, type metadata accessor for LEToolLinksListRequest);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D36944(v14);
}

uint64_t sub_1A7D36944(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLinksListRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D369A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B5DC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D36A08(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5FA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D365E4();
  sub_1A7E23260();
  if (qword_1EB2B47D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E21830();
  sub_1A7B0CB00(v7, qword_1EB2B5F88);
  sub_1A7CC7FFC(&qword_1EB2B5DC8);
  sub_1A7D369A0(&qword_1EB2B5FB0);
  sub_1A7E22F90();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A7D36BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D36C5C(uint64_t a1)
{
  v2 = sub_1A7D37008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D36C98(uint64_t a1)
{
  v2 = sub_1A7D37008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D36CD4(uint64_t a1)
{
  v2 = sub_1A7D370C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D36D10(uint64_t a1)
{
  v2 = sub_1A7D370C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinksRequest.encode(to:)(void *a1)
{
  v18 = sub_1A7CC7FFC(&qword_1EB2B5FC8);
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v17 - v4;
  v6 = type metadata accessor for LEToolLinksRequest(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A7CC7FFC(&qword_1EB2B5FD0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - v13;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D37008();
  sub_1A7E23260();
  sub_1A7D3705C(v17, v9, type metadata accessor for LEToolLinksRequest);
  sub_1A7D370C4();
  sub_1A7E22F80();
  type metadata accessor for LEToolLinksListRequest(0);
  sub_1A7D37504(&qword_1EB2B5FE8);
  v15 = v18;
  sub_1A7E23030();
  sub_1A7D36944(v9);
  (*(v2 + 8))(v5, v15);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1A7D37008()
{
  result = qword_1EB2B5FD8;
  if (!qword_1EB2B5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5FD8);
  }

  return result;
}

uint64_t sub_1A7D3705C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D370C4()
{
  result = qword_1EB2B5FE0;
  if (!qword_1EB2B5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5FE0);
  }

  return result;
}

uint64_t LEToolLinksRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = type metadata accessor for LEToolLinksRequest(0);
  MEMORY[0x1EEE9AC00](v25, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A7CC7FFC(&qword_1EB2B5FF0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5FF8);
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D37008();
  v14 = v33;
  sub_1A7E23250();
  if (v14)
  {
    goto LABEL_10;
  }

  v33 = a1;
  v16 = v26;
  v15 = v27;
  v17 = sub_1A7E22F70();
  v18 = (2 * *(v17 + 16)) | 1;
  v29 = v17;
  v30 = v17 + 32;
  v31 = 0;
  v32 = v18;
  v19 = v13;
  if ((sub_1A7CDB53C() & 1) != 0 || v31 != v32 >> 1)
  {
    v21 = sub_1A7E22BD0();
    swift_allocError();
    v23 = v22;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v23 = v25;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v28 + 8))(v19, v10);
    swift_unknownObjectRelease();
    a1 = v33;
LABEL_10:
    v20 = a1;
    return sub_1A7B0CD6C(v20);
  }

  sub_1A7D370C4();
  sub_1A7E22E70();
  type metadata accessor for LEToolLinksListRequest(0);
  sub_1A7D37504(&qword_1EB2B6000);
  v25 = v13;
  sub_1A7E22F30();
  (*(v16 + 8))(v9, v6);
  (*(v28 + 8))(v25, v10);
  swift_unknownObjectRelease();
  sub_1A7D37548(v5, v15);
  v20 = v33;
  return sub_1A7B0CD6C(v20);
}

uint64_t sub_1A7D37504(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LEToolLinksListRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D37548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolLinksRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A7D37604()
{
  sub_1A7D37670();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A7D37670()
{
  if (!qword_1EB2B6018)
  {
    sub_1A7CC9830(&qword_1EB2B5DC8);
    v0 = sub_1A7E229A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B6018);
    }
  }
}

uint64_t sub_1A7D376D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolLinksListRequest(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1A7B11FC4);
}

uint64_t sub_1A7D3772C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7D377A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LEToolLinksListRequest(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1A7B11FC0);
}

uint64_t sub_1A7D3780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7D37888(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLinksListRequest(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_1A7D37670();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

unint64_t sub_1A7D37974()
{
  result = qword_1EB2B6030;
  if (!qword_1EB2B6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6030);
  }

  return result;
}

unint64_t sub_1A7D379CC()
{
  result = qword_1EB2B6038;
  if (!qword_1EB2B6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6038);
  }

  return result;
}

unint64_t sub_1A7D37A24()
{
  result = qword_1EB2B6040;
  if (!qword_1EB2B6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6040);
  }

  return result;
}

unint64_t sub_1A7D37A7C()
{
  result = qword_1EB2B6048;
  if (!qword_1EB2B6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6048);
  }

  return result;
}

unint64_t sub_1A7D37AD4()
{
  result = qword_1EB2B6050;
  if (!qword_1EB2B6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6050);
  }

  return result;
}

unint64_t sub_1A7D37B2C()
{
  result = qword_1EB2B6058;
  if (!qword_1EB2B6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6058);
  }

  return result;
}

unint64_t sub_1A7D37B84()
{
  result = qword_1EB2B6060;
  if (!qword_1EB2B6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6060);
  }

  return result;
}

unint64_t sub_1A7D37BDC()
{
  result = qword_1EB2B6068;
  if (!qword_1EB2B6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6068);
  }

  return result;
}

unint64_t sub_1A7D37C34()
{
  result = qword_1EB2B6070;
  if (!qword_1EB2B6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6070);
  }

  return result;
}

void IDSToolPacketLogResponse.print(to:style:)(void *a1)
{
  if (*(v1 + 8))
  {
    sub_1A7CC9878(a1, a1[3]);
    sub_1A7E22B70();

    v2 = CLIString.description.getter();
    v4 = v3;

    MEMORY[0x1AC561C90](v2, v4);

    v5._countAndFlagsBits = 0xD000000000000016;
    v5._object = 0x80000001A7EAEE50;
    CLIPrinter.print(_:)(v5);
  }

  else
  {
    sub_1A7CC9878(a1, a1[3]);
    v6._object = 0x80000001A7EAEE30;
    v6._countAndFlagsBits = 0xD000000000000014;
    CLIPrinter.print(_:)(v6);
  }
}

void sub_1A7D37E04(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  sub_1A7D37E5C(a1, a2);
}

void sub_1A7D37E5C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  v71[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7E222E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1A7CC7FFC(&unk_1EB2B7BF0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v68 - v16;
  v68 = type metadata accessor for IDSLinksQualityReportBuilder();
  v18 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v68 - v28;
  if (a1 == 1)
  {
    v35 = *(v2 + 16);
    os_unfair_lock_lock((v35 + 200));
    sub_1A7CC9600((v35 + 208), v70);
    os_unfair_lock_unlock((v35 + 200));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    type metadata accessor for IDSLinksQualityReportBuilderComponent();
    if (swift_dynamicCast())
    {
      v37 = v68;
      v36 = v69;
      if (v71[0])
      {
        v38 = (v71[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
        os_unfair_lock_lock((v71[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
        v39 = sub_1A7CC7FFC(&qword_1EB2B53D8);
        sub_1A7D3B8CC(v38 + *(v39 + 28), v13, type metadata accessor for IDSLinksQualityReportBuilder);
        os_unfair_lock_unlock(v38);

        (*(v18 + 56))(v13, 0, 1, v37);
        sub_1A7D3B934(v13, v25, type metadata accessor for IDSLinksQualityReportBuilder);
LABEL_26:
        v65 = *&v25[*(v37 + 20)];

        sub_1A7D3B99C(v25, type metadata accessor for IDSLinksQualityReportBuilder);
        *v36 = v65;
        *(v36 + 1) = 0;
        *(v36 + 16) = 0;
        return;
      }
    }

    else
    {
      v37 = v68;
      v36 = v69;
    }

    (*(v18 + 56))(v13, 1, 1, v37);
    sub_1A7E22050();
    v64 = *(v37 + 20);
    *&v25[v64] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v18 + 48))(v13, 1, v37) != 1)
    {
      sub_1A7CC9970(v13, &unk_1EB2B7BF0);
    }

    goto LABEL_26;
  }

  if (a1 == 2)
  {
    v30 = *(v2 + 16);
    os_unfair_lock_lock((v30 + 200));
    sub_1A7CC9600((v30 + 208), v70);
    os_unfair_lock_unlock((v30 + 200));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    type metadata accessor for IDSLinksQualityReportBuilderComponent();
    if (swift_dynamicCast())
    {
      v31 = v68;
      v32 = v69;
      if (v71[0])
      {
        v33 = (v71[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
        os_unfair_lock_lock((v71[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
        v34 = sub_1A7CC7FFC(&qword_1EB2B53D8);
        sub_1A7D3B8CC(v33 + *(v34 + 28), v17, type metadata accessor for IDSLinksQualityReportBuilder);
        os_unfair_lock_unlock(v33);

        (*(v18 + 56))(v17, 0, 1, v31);
        sub_1A7D3B934(v17, v29, type metadata accessor for IDSLinksQualityReportBuilder);
        goto LABEL_18;
      }
    }

    else
    {
      v31 = v68;
      v32 = v69;
    }

    (*(v18 + 56))(v17, 1, 1, v31);
    sub_1A7E22050();
    v47 = *(v31 + 20);
    *&v29[v47] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v18 + 48))(v17, 1, v31) != 1)
    {
      sub_1A7CC9970(v17, &unk_1EB2B7BF0);
    }

LABEL_18:

    v49 = sub_1A7DBB5A0(v48);

    sub_1A7D3B99C(v29, type metadata accessor for IDSLinksQualityReportBuilder);
    v71[0] = v49;
    if (qword_1EB2B2D88 != -1)
    {
      swift_once();
    }

    v50 = sub_1A7E22060();
    v51 = sub_1A7B0CB00(v50, qword_1EB2B2D90);
    sub_1A7D96B84(v51, v71, v70);

    v52 = v70[0];
    v53 = objc_opt_self();
    v70[0] = v52;
    IDSLinksCompactQualityReport.asArray.getter();
    sub_1A7CC7FFC(&unk_1EB2B66C0);
    v54 = sub_1A7E22520();

    v70[0] = 0;
    v55 = [v53 dataWithJSONObject:v54 options:0 error:v70];

    v56 = v70[0];
    if (v55)
    {
      v57 = sub_1A7E21A10();
      v59 = v58;

      sub_1A7E222D0();
      v60 = sub_1A7E222B0();
      v62 = v61;
      sub_1A7CC7E50(v57, v59);

      if (v62)
      {
        *v32 = v60;
        *(v32 + 1) = v62;
        v63 = 2;
LABEL_29:
        *(v32 + 16) = v63;
        return;
      }
    }

    else
    {
      v66 = v56;
      v67 = sub_1A7E217F0();

      swift_willThrow();
    }

    *v32 = 0;
    *(v32 + 1) = 0;
    v63 = 3;
    goto LABEL_29;
  }

  v40 = *(v2 + 16);
  os_unfair_lock_lock((v40 + 200));
  sub_1A7CC9600((v40 + 208), v70);
  os_unfair_lock_unlock((v40 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSLinksQualityReportBuilderComponent();
  if ((swift_dynamicCast() & 1) != 0 && v71[0])
  {
    v41 = (v71[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
    os_unfair_lock_lock((v71[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
    v42 = sub_1A7CC7FFC(&qword_1EB2B53D8);
    sub_1A7D3B8CC(v41 + *(v42 + 28), v9, type metadata accessor for IDSLinksQualityReportBuilder);
    os_unfair_lock_unlock(v41);

    (*(v18 + 56))(v9, 0, 1, v68);
    sub_1A7D3B934(v9, v21, type metadata accessor for IDSLinksQualityReportBuilder);
  }

  else
  {
    v44 = v68;
    (*(v18 + 56))(v9, 1, 1, v68);
    sub_1A7E22050();
    v45 = *(v44 + 20);
    *&v21[v45] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v18 + 48))(v9, 1, v44) != 1)
    {
      sub_1A7CC9970(v9, &unk_1EB2B7BF0);
    }
  }

  v71[0] = a1;
  v43.value.syncTokenByLinkCycle._rawValue = v71;
  IDSLinksQualityReportBuilder.delta(since:)(v43);
  sub_1A7D3B99C(v21, type metadata accessor for IDSLinksQualityReportBuilder);
  v46 = v69;
  *v69 = *v70;
  *(v46 + 16) = 1;
}

uint64_t sub_1A7D38804(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v96 = &v94 - v8;
  v99 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v99, v9);
  v98 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v95 = &v94 - v13;
  v14 = type metadata accessor for LEToolLink();
  v104 = *(v14 - 8);
  v105 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v94 - v20;
  v21 = *(a1 + 16);
  v170 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEB90(0, v21, 0);
  v22 = v170;
  v23 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a1 + 64);
  v106 = a1;
  v102 = v21;
  v103 = a1 + 64;
  if (v21)
  {
    v101 = v5;
    v27 = (63 - v24) >> 6;
    v108 = type metadata accessor for LinkStateComponent(0);
    v100 = v108 - 8;

    v21 = 0;
    v29 = 0;
    v107 = v27;
    while (1)
    {
      if (!v26)
      {
        do
        {
          v30 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (v30 >= v27)
          {
            goto LABEL_67;
          }

          v26 = *(v23 + 8 * v30);
          ++v21;
        }

        while (!v26);
        v21 = v30;
      }

      v31 = *(*(a1 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v26)))));
      v32 = *(v31 + 24);
      v110 = *(v31 + 16);

      v111 = v32;

      os_unfair_lock_lock((v31 + 40));
      v33 = *(v31 + 48);
      if (*(v33 + 16) && (v34 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v35 & 1) != 0))
      {
        sub_1A7B0CD10(*(v33 + 56) + 32 * v34, &v165);
      }

      else
      {
        v165 = 0u;
        v166 = 0u;
      }

      v112 = v29;
      v171 = v22;
      os_unfair_lock_unlock((v31 + 40));
      v109 = sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v36 = v167;
      v37 = v168;
      v38 = v169;
      if (v167 == 1)
      {
        goto LABEL_22;
      }

      sub_1A7CDB7B8(v167);
      sub_1A7CDBC48(v36);
      if (v36)
      {
        v129 = v37;
        LinkEndpoint.toolRepresentation.getter(&v137);
        v128 = v38;
        LinkEndpoint.toolRepresentation.getter(&v144);
        sub_1A7CE0528(v36, &v127);
        v39 = v127;
        sub_1A7CDB84C(v36);
        v40 = MEMORY[0x1E69E7CC0];
        if (v39)
        {
          v40 = v39;
        }

        v134 = v141;
        v135 = v142;
        LOWORD(v136[0]) = v143;
        v130 = v137;
        v131 = v138;
        v132 = v139;
        v133 = v140;
        *(v136 + 8) = v144;
        *(&v136[1] + 8) = v145;
        *(&v136[2] + 8) = v146;
        WORD4(v136[6]) = v150;
        *(&v136[5] + 8) = v149;
        *(&v136[4] + 8) = v148;
        *(&v136[3] + 8) = v147;
        v115 = v139;
        v116 = v140;
        v113 = v137;
        v114 = v138;
        v119 = v136[0];
        v120 = v136[1];
        v117 = v141;
        v118 = v142;
        v124 = v136[5];
        v125 = v136[6];
        v122 = v136[3];
        v123 = v136[4];
        v121 = v136[2];
        v126 = v40;
        nullsub_15(&v113);
        v161 = v123;
        v162 = v124;
        v163 = v125;
        v164 = v126;
        v157 = v119;
        v158 = v120;
        v159 = v121;
        v160 = v122;
        v153 = v115;
        v154 = v116;
        v155 = v117;
        v156 = v118;
        v151 = v113;
        v152 = v114;
        goto LABEL_24;
      }

LABEL_23:
      sub_1A7D21964(&v151);
LABEL_24:
      v41 = v101;
      os_unfair_lock_lock((v31 + 40));
      v42 = *(v31 + 48);
      if (*(v42 + 16) && (v43 = sub_1A7CD0DFC(v108), (v44 & 1) != 0))
      {
        sub_1A7B0CD10(*(v42 + 56) + 32 * v43, &v113);
      }

      else
      {
        v113 = 0u;
        v114 = 0u;
      }

      os_unfair_lock_unlock((v31 + 40));
      v45 = v108;
      v46 = swift_dynamicCast();
      v47 = *(v45 - 8);
      (*(v47 + 56))(v41, v46 ^ 1u, 1, v45);
      v48 = *(v105 + 24);
      if ((*(v47 + 48))(v41, 1, v45))
      {
        sub_1A7CC9970(v41, &qword_1EB2B4A80);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v49 = v98;
        sub_1A7D3B8CC(v41, v98, type metadata accessor for LinkState);
        sub_1A7CC9970(v41, &qword_1EB2B4A80);
        sub_1A7D3B934(v49, &v17[v48], type metadata accessor for LinkState);
      }

      v50 = v112;

      v51 = v111;
      *v17 = v110;
      *(v17 + 1) = v51;
      v52 = v156;
      *(v17 + 5) = v155;
      *(v17 + 6) = v52;
      v53 = v154;
      *(v17 + 3) = v153;
      *(v17 + 4) = v53;
      v54 = v160;
      *(v17 + 9) = v159;
      *(v17 + 10) = v54;
      v55 = v158;
      *(v17 + 7) = v157;
      *(v17 + 8) = v55;
      *(v17 + 28) = v164;
      v56 = v163;
      *(v17 + 12) = v162;
      *(v17 + 13) = v56;
      *(v17 + 11) = v161;
      v57 = v152;
      *(v17 + 1) = v151;
      *(v17 + 2) = v57;
      v22 = v171;
      v59 = *(v171 + 16);
      v58 = *(v171 + 24);
      v170 = v171;
      if (v59 >= v58 >> 1)
      {
        sub_1A7CCEB90(v58 > 1, v59 + 1, 1);
        v22 = v170;
      }

      v29 = v50 + 1;
      v26 &= v26 - 1;
      *(v22 + 16) = v59 + 1;
      result = sub_1A7D3B934(v17, v22 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v59, type metadata accessor for LEToolLink);
      v23 = v103;
      a1 = v106;
      v27 = v107;
      if (v29 == v102)
      {
        goto LABEL_36;
      }
    }

    v167 = 1;
    v168 = 0;
    v169 = 0;
LABEL_22:
    sub_1A7CDBC48(1);
    goto LABEL_23;
  }

  v27 = (63 - v24) >> 6;

LABEL_36:
  v107 = v27;
  if (!v26)
  {
    goto LABEL_37;
  }

  do
  {
LABEL_41:
    v61 = *(*(a1 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v26)))));
    v62 = *(v61 + 16);
    v63 = *(v61 + 24);

    os_unfair_lock_lock((v61 + 40));
    v64 = *(v61 + 48);
    v65 = *(v64 + 16);
    v111 = v62;
    if (v65 && (v66 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v67 & 1) != 0))
    {
      sub_1A7B0CD10(*(v64 + 56) + 32 * v66, &v165);
    }

    else
    {
      v165 = 0u;
      v166 = 0u;
    }

    v171 = v22;
    os_unfair_lock_unlock((v61 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    v68 = swift_dynamicCast();
    v112 = v63;
    if ((v68 & 1) == 0)
    {
      v167 = 1;
      v168 = 0;
      v169 = 0;
LABEL_52:
      sub_1A7CDBC48(1);
LABEL_53:
      sub_1A7D21964(&v151);
      goto LABEL_54;
    }

    v70 = v167;
    v69 = v168;
    if (v167 == 1)
    {
      goto LABEL_52;
    }

    v71 = v169;
    sub_1A7CDB7B8(v167);
    sub_1A7CDBC48(v70);
    if (!v70)
    {
      goto LABEL_53;
    }

    v129 = v69;
    LinkEndpoint.toolRepresentation.getter(&v137);
    v128 = v71;
    LinkEndpoint.toolRepresentation.getter(&v144);
    sub_1A7CE0528(v70, &v127);
    v72 = v127;
    sub_1A7CDB84C(v70);
    v73 = MEMORY[0x1E69E7CC0];
    if (v72)
    {
      v73 = v72;
    }

    v134 = v141;
    v135 = v142;
    LOWORD(v136[0]) = v143;
    v130 = v137;
    v131 = v138;
    v132 = v139;
    v133 = v140;
    *(v136 + 8) = v144;
    *(&v136[1] + 8) = v145;
    *(&v136[2] + 8) = v146;
    WORD4(v136[6]) = v150;
    *(&v136[5] + 8) = v149;
    *(&v136[4] + 8) = v148;
    *(&v136[3] + 8) = v147;
    v115 = v139;
    v116 = v140;
    v113 = v137;
    v114 = v138;
    v119 = v136[0];
    v120 = v136[1];
    v117 = v141;
    v118 = v142;
    v124 = v136[5];
    v125 = v136[6];
    v122 = v136[3];
    v123 = v136[4];
    v121 = v136[2];
    v126 = v73;
    nullsub_15(&v113);
    v161 = v123;
    v162 = v124;
    v163 = v125;
    v164 = v126;
    v157 = v119;
    v158 = v120;
    v159 = v121;
    v160 = v122;
    v153 = v115;
    v154 = v116;
    v155 = v117;
    v156 = v118;
    v151 = v113;
    v152 = v114;
LABEL_54:
    v74 = v96;
    os_unfair_lock_lock((v61 + 40));
    v75 = type metadata accessor for LinkStateComponent(0);
    v76 = v75;
    v77 = *(v61 + 48);
    if (*(v77 + 16) && (v78 = sub_1A7CD0DFC(v75), (v79 & 1) != 0))
    {
      sub_1A7B0CD10(*(v77 + 56) + 32 * v78, &v113);
    }

    else
    {
      v113 = 0u;
      v114 = 0u;
    }

    os_unfair_lock_unlock((v61 + 40));
    v80 = swift_dynamicCast();
    v81 = *(v76 - 8);
    (*(v81 + 56))(v74, v80 ^ 1u, 1, v76);
    v82 = *(v105 + 24);
    if ((*(v81 + 48))(v74, 1, v76))
    {
      sub_1A7CC9970(v74, &qword_1EB2B4A80);
      v83 = v97;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v84 = v95;
      sub_1A7D3B8CC(v74, v95, type metadata accessor for LinkState);
      sub_1A7CC9970(v74, &qword_1EB2B4A80);
      v83 = v97;
      sub_1A7D3B934(v84, &v97[v82], type metadata accessor for LinkState);
    }

    v85 = v112;

    *v83 = v111;
    *(v83 + 8) = v85;
    v86 = v156;
    *(v83 + 80) = v155;
    *(v83 + 96) = v86;
    v87 = v154;
    *(v83 + 48) = v153;
    *(v83 + 64) = v87;
    v88 = v160;
    *(v83 + 144) = v159;
    *(v83 + 160) = v88;
    v89 = v158;
    *(v83 + 112) = v157;
    *(v83 + 128) = v89;
    *(v83 + 224) = v164;
    v90 = v163;
    *(v83 + 192) = v162;
    *(v83 + 208) = v90;
    *(v83 + 176) = v161;
    v91 = v152;
    *(v83 + 16) = v151;
    *(v83 + 32) = v91;
    v22 = v171;
    v93 = *(v171 + 16);
    v92 = *(v171 + 24);
    v170 = v171;
    if (v93 >= v92 >> 1)
    {
      sub_1A7CCEB90(v92 > 1, v93 + 1, 1);
      v83 = v97;
      v22 = v170;
    }

    v26 &= v26 - 1;
    *(v22 + 16) = v93 + 1;
    result = sub_1A7D3B934(v83, v22 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v93, type metadata accessor for LEToolLink);
    a1 = v106;
    v27 = v107;
    v23 = v103;
  }

  while (v26);
LABEL_37:
  while (1)
  {
    v60 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v60 >= v27)
    {

      return v22;
    }

    v26 = *(v23 + 8 * v60);
    ++v21;
    if (v26)
    {
      v21 = v60;
      goto LABEL_41;
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1A7D39440()
{
  if (qword_1EB2B2FA0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB2DC0A0);
  v1 = qword_1EB2DC0A8;
  v0[25] = qword_1EB2DC0A8;

  os_unfair_lock_unlock(&dword_1EB2DC0A0);
  if (v1 >> 62)
  {
    result = sub_1A7E22DA0();
    v0[26] = result;
    if (result)
    {
LABEL_5:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC0];
        v0[27] = 0;
        v0[28] = v3;
        v4 = v0[25];
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1AC562480](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v0[29] = v5;
        v6 = swift_task_alloc();
        v0[30] = v6;
        *v6 = v0;
        v6[1] = sub_1A7D395E8;
        v7 = v0[24];

        return sub_1A7DE2130((v0 + 13), v7);
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[26] = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  v8 = v0[1];
  v9 = MEMORY[0x1E69E7CC0];

  return v8(v9);
}

uint64_t sub_1A7D395E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D396E4, 0, 0);
}

uint64_t sub_1A7D396E4()
{
  v1 = *(v0 + 152);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v1;
  *(v0 + 80) = *(v0 + 168);
  *(v0 + 96) = *(v0 + 184);
  v2 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 224);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7CCDC84(0, *(v4 + 2) + 1, 1, *(v0 + 224));
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1A7CCDC84((v5 > 1), v6 + 1, 1, v4);
  }

  v8 = *(v0 + 208);
  v7 = *(v0 + 216);

  *(v4 + 2) = v6 + 1;
  v9 = &v4[88 * v6];
  v10 = *(v0 + 32);
  *(v9 + 2) = *(v0 + 16);
  *(v9 + 3) = v10;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  *(v9 + 14) = *(v0 + 96);
  *(v9 + 5) = v12;
  *(v9 + 6) = v13;
  *(v9 + 4) = v11;
  if (v7 + 1 == v8)
  {

    v14 = *(v0 + 8);

    return v14(v4);
  }

  else
  {
    v16 = *(v0 + 216) + 1;
    *(v0 + 216) = v16;
    *(v0 + 224) = v4;
    v17 = *(v0 + 200);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1AC562480]();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    *(v0 + 232) = v18;
    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    *v19 = v0;
    v19[1] = sub_1A7D395E8;
    v20 = *(v0 + 192);

    return sub_1A7DE2130(v0 + 104, v20);
  }
}

uint64_t sub_1A7D398D8(uint64_t a1)
{
  v1[3] = a1;
  sub_1A7CC7FFC(&unk_1EB2B7CA0);
  v1[4] = swift_task_alloc();
  v2 = sub_1A7CC7FFC(&qword_1EB2B5DC8);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for LEToolLinksListRequest(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolLinksRequest(0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for LEToolRequest(0);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D39A70, 0, 0);
}

uint64_t sub_1A7D39A70()
{
  v45 = v0;
  if (qword_1EB2B2DC8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB2DC090);
  v1 = qword_1EB2DC098;

  os_unfair_lock_unlock(&dword_1EB2DC090);
  v2 = v1;
  if (v1 >> 62)
  {
    result = sub_1A7E22DA0();
    v2 = v1;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_25:
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_5:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[6];
  v39 = v2 & 0xC000000000000001;
  v35 = (v5 + 48);
  v33 = (v5 + 8);
  v34 = (v5 + 32);
  v41 = v2;
  v42 = MEMORY[0x1E69E7CC0];
  v40 = result;
  do
  {
    if (v39)
    {
      v6 = MEMORY[0x1AC562480](v4);
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    sub_1A7D3B8CC(v0[3], v0[12], type metadata accessor for LEToolRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v0[12];
    if (EnumCaseMultiPayload == 3)
    {
      v19 = *v8;
      sub_1A7D37E5C(*v8, &v43);
      sub_1A7D3B854(v19);
      v20 = *(&v43 + 1);
      v17 = v43;
      v21 = v44;
      v22 = v37 & 0xF00000000000FFFFLL | 0x800000000000000;
      v23 = 0x1000000000000000;
      v37 = v22;
    }

    else if (EnumCaseMultiPayload)
    {
      v22 = v38 & 0xF00000000000FFFFLL | 0x800000000000000;
      sub_1A7D3B99C(v8, type metadata accessor for LEToolRequest);
      v17 = 0;
      v20 = 0;
      v21 = 0;
      v23 = 0x4000000000000000;
      v38 = v22;
    }

    else
    {
      v10 = v0[9];
      v9 = v0[10];
      v11 = v0[8];
      v13 = v0[4];
      v12 = v0[5];
      sub_1A7D3B934(v8, v9, type metadata accessor for LEToolLinksRequest);
      sub_1A7D3B8CC(v9, v10, type metadata accessor for LEToolLinksRequest);
      sub_1A7D3B934(v10, v11, type metadata accessor for LEToolLinksListRequest);
      v14 = *(v6 + 16);
      os_unfair_lock_lock((v14 + 16));
      v15 = *(v14 + 24);

      os_unfair_lock_unlock((v14 + 16));
      v16 = sub_1A7D38804(v15);

      sub_1A7D36390(v11, v13);
      if ((*v35)(v13, 1, v12) == 1)
      {
        v17 = v16;
        v18 = v0[4];
        sub_1A7D3B99C(v0[8], type metadata accessor for LEToolLinksListRequest);
        sub_1A7CC9970(v18, &unk_1EB2B7CA0);
      }

      else
      {
        (*v34)(v0[7], v0[4], v0[5]);
        v0[2] = v16;

        sub_1A7CC7FFC(&qword_1EB2B7CB0);
        sub_1A7D3B868();
        v24 = sub_1A7E22490();
        v26 = v0[7];
        v25 = v0[8];
        v27 = v0[5];
        v28 = v24;

        (*v33)(v26, v27);
        sub_1A7D3B99C(v25, type metadata accessor for LEToolLinksListRequest);

        v17 = v28;
      }

      sub_1A7D3B99C(v0[10], type metadata accessor for LEToolLinksRequest);
      v20 = 0;
      v21 = 0;
      v23 = 0;
      v22 = v36 & 0xF00000000000FFFFLL | 0x800000000000000;
      v36 = v22;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1A7CCDC84(0, *(v42 + 2) + 1, 1, v42);
    }

    v30 = *(v42 + 2);
    v29 = *(v42 + 3);
    if (v30 >= v29 >> 1)
    {
      v42 = sub_1A7CCDC84((v29 > 1), v30 + 1, 1, v42);
    }

    ++v4;

    v2 = v41;
    *(v42 + 2) = v30 + 1;
    v31 = &v42[88 * v30];
    *(v31 + 4) = v17;
    *(v31 + 5) = v20;
    *(v31 + 6) = v21;
    *(v31 + 7) = v23;
    *(v31 + 8) = 0;
    *(v31 + 13) = v22;
  }

  while (v40 != v4);
LABEL_26:

  v32 = v0[1];

  return v32(v42);
}

uint64_t sub_1A7D3A004(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for IDSToolRequest(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3A09C, 0, 0);
}

uint64_t sub_1A7D3A09C()
{
  sub_1A7E21720();
  swift_allocObject();
  sub_1A7E21710();
  sub_1A7D3B79C();
  sub_1A7E21700();

  sub_1A7E21750();
  swift_allocObject();
  v0[13] = sub_1A7E21740();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1A7D3A200;
  v2 = v0[12];

  return sub_1A7D3A4F8((v0 + 2), v2);
}

uint64_t sub_1A7D3A200()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1A7D3A478;
  }

  else
  {
    v2 = sub_1A7D3A31C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7D3A31C()
{
  *(v0 + 40) = *(v0 + 16);
  v1 = *(v0 + 120);
  *(v0 + 56) = *(v0 + 32);
  sub_1A7D3B7F4();
  v2 = sub_1A7E21730();
  v4 = v3;
  v5 = *(v0 + 96);

  if (v1)
  {
    sub_1A7D3B848();
    sub_1A7D3B99C(v5, type metadata accessor for IDSToolRequest);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_1A7D3B848();
    sub_1A7D3B99C(v5, type metadata accessor for IDSToolRequest);

    v8 = *(v0 + 8);

    return v8(v2, v4);
  }
}

uint64_t sub_1A7D3A478()
{
  sub_1A7D3B99C(*(v0 + 96), type metadata accessor for IDSToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3A4F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A7E21850();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1A7E21940();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for IDSToolRequest.Request(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3A67C, 0, 0);
}

uint64_t sub_1A7D3A67C()
{
  sub_1A7D3B8CC(*(v0 + 24), *(v0 + 104), type metadata accessor for IDSToolRequest.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 104);
  if (EnumCaseMultiPayload == 1)
  {
    *(v0 + 184) = *v2;
    if (qword_1EB2B2DB0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EB2DC088;

    return MEMORY[0x1EEE6DFA0](sub_1A7D3AB9C, v3, 0);
  }

  else
  {
    sub_1A7D3B934(v2, *(v0 + 88), type metadata accessor for LEToolRequestMessage);
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1A7D3A7FC;
    v5 = *(v0 + 88);

    return sub_1A7D39420(v5);
  }
}

uint64_t sub_1A7D3A7FC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D3AF20, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[17] = v4;
    *v4 = v3;
    v4[1] = sub_1A7D3A988;
    v5 = v3[11];

    return sub_1A7D398D8(v5);
  }
}

uint64_t sub_1A7D3A988(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {

    v5 = sub_1A7D3AFDC;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1A7D3AAB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A7D3AAB8()
{
  v1 = v0[11];
  v2 = v0[2];
  v5 = v0[15];
  sub_1A7DDF56C(v0[19]);
  sub_1A7D3B99C(v1, type metadata accessor for LEToolRequestMessage);
  *v2 = v5;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A7D3AB9C()
{
  if (*(v0 + 184))
  {
    sub_1A7D0D48C();
    v1 = sub_1A7D3ADD8;
  }

  else
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    sub_1A7E218D0();
    (*(v7 + 104))(v6, *MEMORY[0x1E6968F70], v8);
    sub_1A7CC7DFC();
    sub_1A7E21910();
    (*(v7 + 8))(v6, v8);
    v9 = *(v5 + 8);
    v9(v3, v4);
    sub_1A7D0C510(v2);
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    *(v0 + 160) = sub_1A7E218F0();
    *(v0 + 168) = v12;
    v9(v10, v11);
    v1 = sub_1A7D3AD2C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A7D3AD2C()
{
  v1 = v0[21];
  v2 = v0[2];
  *v2 = v0[20];
  *(v2 + 8) = v1;
  *(v2 + 16) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A7D3ADD8()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A7D3AE80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3AF20()
{
  sub_1A7D3B99C(*(v0 + 88), type metadata accessor for LEToolRequestMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3AFDC()
{
  sub_1A7D3B99C(*(v0 + 88), type metadata accessor for LEToolRequestMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3B22C(void *a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_1A7E21A10();
  v7 = v6;

  v2[3] = v5;
  v2[4] = v7;
  type metadata accessor for IDSToolRequestHandler();
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_1A7D3B304;

  return sub_1A7D3A004(v5, v7);
}

uint64_t sub_1A7D3B304(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  sub_1A7CC7E50(v9, v8);
  if (v4)
  {
    if (v10)
    {
      v12 = *(v7 + 16);
      v13 = sub_1A7E217E0();

      (v12)[2](v12, 0, v13);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v10)
  {
    v14 = *(v7 + 16);
    v15 = sub_1A7E219F0();
    sub_1A7CC7E50(a1, a2);
    (v14)[2](v14, v15, 0);
    _Block_release(v14);
  }

  else
  {
    sub_1A7CC7E50(a1, a2);
  }

  v16 = *(v11 + 8);

  return v16();
}

IDSToolObjCRequestHandler __swiftcall IDSToolObjCRequestHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IDSToolObjCRequestHandler()
{
  result = qword_1EB2B6078;
  if (!qword_1EB2B6078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6078);
  }

  return result;
}

uint64_t sub_1A7D3B628()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A7CD2A2C;

  return sub_1A7D3B22C(v2, v3);
}

uint64_t sub_1A7D3B6DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7DE50A4(v2, v3, v4);
}

unint64_t sub_1A7D3B79C()
{
  result = qword_1EB2B6080;
  if (!qword_1EB2B6080)
  {
    type metadata accessor for IDSToolRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6080);
  }

  return result;
}