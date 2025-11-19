uint64_t sub_24A6B91A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_24A67E0F0(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6B91F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B9238()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B9278()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A6B92C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9308()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B9348()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_24A6B948C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9620@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24A6B9650(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[28];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[29];
    goto LABEL_15;
  }

  v13 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[30];
    goto LABEL_15;
  }

  v14 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[31];
    goto LABEL_15;
  }

  v15 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[32];
    goto LABEL_15;
  }

  v17 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[39];

  return v18(v19, a2, v17);
}

uint64_t sub_24A6B98E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B9948@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  v11 = v3[4];
  v12 = v6;
  v10[0] = v4;
  v10[1] = v5;
  a2[2] = v11;
  a2[3] = v6;
  v7 = v3[3];
  *a2 = v3[2];
  a2[1] = v7;
  return sub_24A7E42C8(v10, v9);
}

uint64_t sub_24A6B99B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_24A6B99FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

uint64_t sub_24A6B9A40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24A6B9A90()
{
  v1 = *(v0 + 16);

  sub_24A79CFB0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24A6B9AD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A6B9B0C()
{
  v1 = sub_24A82C8B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6B9BD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9C78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6B9CBC()
{
  MEMORY[0x24C21E2C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9CF4()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_24A67E0F0(v0[3], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6B9D8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6B9DF8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[24];

  v14 = v0[26];

  v15 = v0[28];

  v16 = v0[30];

  v17 = v0[32];

  v18 = v0[34];

  v19 = v0[36];

  v20 = v0[38];

  return MEMORY[0x2821FE8E8](v0, 312, 7);
}

uint64_t sub_24A6B9EC8()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  v8 = sub_24A82CAE4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_24A6BA01C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[25])
  {
    v2 = v0[5];

    v3 = v0[6];

    v4 = v0[8];

    v5 = v0[10];

    v6 = v0[12];

    v7 = v0[14];

    v8 = v0[16];

    v9 = v0[18];

    v10 = v0[20];

    v11 = v0[22];

    v12 = v0[24];

    v13 = v0[25];

    v14 = v0[27];

    v15 = v0[29];

    v16 = v0[31];

    v17 = v0[33];

    v18 = v0[35];

    v19 = v0[37];

    v20 = v0[39];
  }

  return MEMORY[0x2821FE8E8](v0, 320, 7);
}

uint64_t sub_24A6BA104()
{
  v1 = *v0;
  v2 = 0x656E6E6F63736964;
  v3 = 0x6465686361747461;
  v4 = 0x6465686361746564;
  if (v1 != 3)
  {
    v4 = 0x6465746365746564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657463656E6E6F63;
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

uint64_t sub_24A6BA1F4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6BA23C()
{
  v1 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A6BA30C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6BA364()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24A82CA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 2);

  if (*(v0 + 3))
  {
    v10 = *(v0 + 4);
  }

  v11 = (v3 + 40) & ~v3;
  v12 = (v11 + v4 + v7) & ~v7;
  (*(v2 + 8))(&v0[v11], v1);
  (*(v6 + 8))(&v0[v12], v5);

  return MEMORY[0x2821FE8E8](v0, ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_24A6BA4D0()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  if (*(v0 + v10))
  {
    v12 = *(v0 + v10 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v3 | v8 | 7);
}

uint64_t sub_24A6BA640()
{
  v15 = sub_24A82CAA4();
  v1 = *(v15 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24A82CA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  (*(v1 + 8))(v0 + v3, v15);
  (*(v6 + 8))(v0 + v8, v5);
  v12 = *(v0 + v9);

  if (*(v0 + v10))
  {
    v13 = *(v0 + v10 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | v7 | 7);
}

uint64_t sub_24A6BA820()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A6BA944()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  if (*(v0 + v3 + 176))
  {
    v7 = *(v5 + 16);

    v8 = *(v5 + 24);

    v9 = *(v5 + 40);

    v10 = *(v5 + 56);

    v11 = *(v5 + 72);

    v12 = *(v5 + 88);

    v13 = *(v5 + 104);

    v14 = *(v5 + 120);

    v15 = *(v5 + 136);

    v16 = *(v5 + 152);

    v17 = *(v5 + 168);

    v18 = *(v5 + 176);

    v19 = *(v5 + 192);

    v20 = *(v5 + 208);

    v21 = *(v5 + 224);

    v22 = *(v5 + 240);

    v23 = *(v5 + 256);

    v24 = *(v5 + 272);

    v25 = *(v5 + 288);
  }

  v26 = *(v5 + 344);

  v27 = *(v5 + 360);

  v28 = *(v5 + 376);

  v29 = v5 + v1[13];
  v30 = type metadata accessor for FMIPItemLostModeMetadata();
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    v31 = *(v29 + 8);

    v32 = *(v29 + 24);

    v33 = *(v30 + 24);
    v34 = sub_24A82CA34();
    (*(*(v34 - 8) + 8))(v29 + v33, v34);
    v35 = *(v29 + *(v30 + 28) + 8);
  }

  v36 = *(v5 + v1[14] + 8);

  v37 = *(v5 + v1[15] + 8);

  v38 = v5 + v1[16];
  if (*(v38 + 8))
  {

    v39 = *(v38 + 24);
  }

  v40 = v5 + v1[17];
  v41 = *(v40 + 16);

  v42 = *(v40 + 32);

  v43 = *(v5 + v1[18] + 8);

  v44 = *(v5 + v1[20] + 8);

  v45 = *(v5 + v1[23]);

  v46 = (v5 + v1[24]);
  type metadata accessor for FMIPProductType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48 = *(v46 + 3);
    }

    else if (EnumCaseMultiPayload || !*(v46 + 3))
    {
      goto LABEL_16;
    }

    v49 = *(v46 + 5);

    v50 = *(v46 + 7);

    goto LABEL_16;
  }

  v51 = type metadata accessor for FMIPHawkeyeProductInformation();
  if (!(*(*(v51 - 1) + 48))(v46, 1, v51))
  {
    v52 = *(v46 + 3);

    v53 = *(v46 + 5);

    v54 = *(v46 + 7);

    v55 = v51[12];
    v56 = sub_24A82C8B4();
    v57 = *(*(v56 - 8) + 8);
    v57(&v46[v55], v56);
    v57(&v46[v51[13]], v56);
    v57(&v46[v51[14]], v56);
    v57(&v46[v51[15]], v56);
    v57(&v46[v51[16]], v56);
    v57(&v46[v51[17]], v56);
  }

LABEL_16:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6BAD60()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6BADA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6BADE0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6BAE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A6BAEE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL sub_24A6BAFDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t getEnumTagSinglePayload for FMIPDeviceState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMIPDeviceState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void *sub_24A6BB0B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A6BB0E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t FMIPBeaconShareDirection.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore28FMIPDeviceConnectedStateTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BB270()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

unint64_t FMIPBeaconShareState.baseState.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3 == 1)
  {
    v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    return FMIPBeaconShareState.baseState.getter();
  }

  if (!v3)
  {
    v4 = *(v2 + 16);
    return FMIPBeaconShareState.baseState.getter();
  }

  *a1 = v2;

  return sub_24A6BB350(v2);
}

unint64_t sub_24A6BB350(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t static FMIPBeaconShareState.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      goto LABEL_7;
    }

LABEL_35:
    sub_24A6BB350(*a2);
    sub_24A6BB350(v2);
    sub_24A6BB5A4(v2);
    sub_24A6BB5A4(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4 != 1)
  {
    v8 = __ROR8__(v2 ^ 0x8000000000000000, 3);
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v3 != 0x8000000000000008)
          {
            goto LABEL_35;
          }

          sub_24A6BB5A4(*a1);
          v9 = 0x8000000000000008;
        }

        else
        {
          if (v3 != 0x8000000000000000)
          {
            goto LABEL_35;
          }

          sub_24A6BB5A4(*a1);
          v9 = 0x8000000000000000;
        }

        goto LABEL_32;
      }

      if (v8 != 2)
      {
        if (v3 != 0x8000000000000018)
        {
          goto LABEL_35;
        }

        sub_24A6BB5A4(*a1);
        v9 = 0x8000000000000018;
        goto LABEL_32;
      }

      v10 = 0x8000000000000010;
      if (v3 != 0x8000000000000010)
      {
        goto LABEL_35;
      }
    }

    else if (v8 <= 5)
    {
      if (v8 != 4)
      {
        if (v3 != 0x8000000000000028)
        {
          goto LABEL_35;
        }

        sub_24A6BB5A4(*a1);
        v9 = 0x8000000000000028;
        goto LABEL_32;
      }

      v10 = 0x8000000000000020;
      if (v3 != 0x8000000000000020)
      {
        goto LABEL_35;
      }
    }

    else if (v8 == 6)
    {
      v10 = 0x8000000000000030;
      if (v3 != 0x8000000000000030)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v8 == 7)
      {
        if (v3 != 0x8000000000000038)
        {
          goto LABEL_35;
        }

        sub_24A6BB5A4(*a1);
        v9 = 0x8000000000000038;
LABEL_32:
        sub_24A6BB5A4(v9);
        v7 = 1;
        return v7 & 1;
      }

      v10 = 0x8000000000000040;
      if (v3 != 0x8000000000000040)
      {
        goto LABEL_35;
      }
    }

    sub_24A6BB5A4(*a1);
    v9 = v10;
    goto LABEL_32;
  }

  if (v3 >> 62 != 1)
  {
    goto LABEL_35;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_7:
  v12 = v6;
  v13 = v5;
  sub_24A6BB350(v3);
  sub_24A6BB350(v2);
  v7 = static FMIPBeaconShareState.== infix(_:_:)(&v13, &v12);
  sub_24A6BB5A4(v2);
  sub_24A6BB5A4(v3);
  return v7 & 1;
}

unint64_t sub_24A6BB5A4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t FMIPBeaconShareState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    v7 = *(v3 + 16);
    v6 = 7;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = 8;
LABEL_5:
    MEMORY[0x24C21D5E0](v6);
    return FMIPBeaconShareState.hash(into:)(a1);
  }

  v9 = __ROR8__(v3 ^ 0x8000000000000000, 3);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = v9 != 0;
    }
  }

  else if (v9 <= 5)
  {
    if (v9 == 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }
  }

  else if (v9 == 6)
  {
    v10 = 6;
  }

  else if (v9 == 7)
  {
    v10 = 9;
  }

  else
  {
    v10 = 10;
  }

  return MEMORY[0x24C21D5E0](v10);
}

uint64_t FMIPBeaconShareState.hashValue.getter()
{
  v2[9] = *v0;
  sub_24A82DCC4();
  FMIPBeaconShareState.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6BB714()
{
  v2[9] = *v0;
  sub_24A82DCC4();
  FMIPBeaconShareState.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6BB764()
{
  v2[9] = *v0;
  sub_24A82DCC4();
  FMIPBeaconShareState.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t FMIPBeaconShare.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82CAA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMIPBeaconShare.beaconIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPBeaconShare(0) + 20);
  v4 = sub_24A82CAA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPBeaconShare.ownerHandle.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPBeaconShare.shareeHandle.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t FMIPBeaconShare.state.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FMIPBeaconShare(0) + 32));
  *a1 = v3;

  return sub_24A6BB350(v3);
}

uint64_t FMIPBeaconShare.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPBeaconShare(0) + 36);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPBeaconShare.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPBeaconShare(0) + 40);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPBeaconShare.delegatedSharesURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPBeaconShare(0) + 44);

  return sub_24A696E10(v3, a1);
}

uint64_t sub_24A6BBA94(uint64_t *a1, uint64_t *a2)
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

uint64_t FMIPBeaconShare.visitorCount.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void sub_24A6BBB50(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - v8;
  v9 = sub_24A82C8B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a2;
  v13 = [a1 identifier];
  sub_24A82CA84();

  v14 = [a1 beaconIdentifier];
  v15 = type metadata accessor for FMIPBeaconShare(0);
  v16 = a3 + v15[5];
  sub_24A82CA84();

  v17 = [a1 owner];
  v18 = [v17 destination];

  v19 = sub_24A82CFC4();
  v21 = v20;

  v22 = (a3 + v15[6]);
  *v22 = v19;
  v22[1] = v21;
  v23 = [a1 sharee];
  v24 = v9;
  v25 = [v23 destination];

  v26 = sub_24A82CFC4();
  v28 = v27;

  v29 = (a3 + v15[7]);
  *v29 = v26;
  v29[1] = v28;
  v30 = &off_278FE8000;
  *(a3 + v15[8]) = v50;
  v31 = [a1 creationDate];
  v32 = a3 + v15[9];
  sub_24A82C9F4();

  v33 = [a1 expirationDate];
  v34 = a3 + v15[10];
  sub_24A82C9F4();

  v35 = [a1 sharee];
  v36 = [v35 type];

  if (v36 != 2)
  {
    goto LABEL_4;
  }

  v37 = [a1 &off_278FE8170 + 2];
  v38 = [v37 destination];

  sub_24A82CFC4();
  v39 = v49;
  sub_24A82C8A4();

  if ((*(v10 + 48))(v39, 1, v24) == 1)
  {
    sub_24A67F378(v39, &unk_27EF5CCB8, &qword_24A82FDB0);
    v30 = &off_278FE8000;
LABEL_4:
    v40 = 1;
    (*(v10 + 56))(a3 + v15[11], 1, 1, v24);
    v41 = 0;
LABEL_7:
    v44 = a3 + v15[12];
    *v44 = v41;
    *(v44 + 8) = v40;
    *(a3 + v15[13]) = [a1 delegationStatus];
    v45 = [a1 v30[108]];
    v46 = [v45 type];

    *(a3 + v15[14]) = v46 == 3;
    return;
  }

  v42 = v48;
  (*(v10 + 32))(v48, v39, v24);
  v43 = v15[11];
  (*(v10 + 16))(a3 + v43, v42, v24);
  (*(v10 + 56))(a3 + v43, 0, 1, v24);
  v41 = [a1 visitorCount];
  (*(v10 + 8))(v42, v24);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v30 = &off_278FE8000;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static FMIPBeaconShare.directionSort(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPBeaconShare(0);
  v5 = v4[7];
  v6 = (a1 + v4[6]);
  v7 = *v6 == *(a1 + v5) && v6[1] == *(a1 + v5 + 8);
  if (v7 || (sub_24A82DC04() & 1) != 0)
  {
    return 1;
  }

  v9 = (a2 + v4[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = (a2 + v4[7]);
  v13 = v10 == *v12 && v11 == v12[1];
  if (v13 || (sub_24A82DC04() & 1) != 0)
  {
    return 0;
  }

  v14 = v4[9];

  return sub_24A82C9B4();
}

BOOL FMIPBeaconShare.isDefaultOwnedShare.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2 == 0x6F6C4072656E776FLL && v2[1] == 0xEF74736F686C6163;
  result = 0;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {
    v4 = (v0 + *(v1 + 24));
    v5 = *v4 == 0x6F6C4072656E776FLL && v4[1] == 0xEF74736F686C6163;
    if (v5 || (sub_24A82DC04() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FMIPBeaconShare.direction.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for FMIPBeaconShare(0);
  v4 = (v1 + *(v3 + 28));
  v5 = *v4 == 0x6F6C4072656E776FLL && v4[1] == 0xEF74736F686C6163;
  if (v5 || (sub_24A82DC04() & 1) != 0 || ((v6 = (v1 + *(v3 + 24)), *v6 == 0x6F6C4072656E776FLL) ? (v7 = v6[1] == 0xEF74736F686C6163) : (v7 = 0), v7 || (result = sub_24A82DC04(), (result & 1) != 0)))
  {
    v9 = (v1 + *(v3 + 24));
    v10 = *v9;
    v11 = v9[1];
    v12 = [objc_opt_self() SPOwner];
    v13 = [v12 destination];

    v14 = sub_24A82CFC4();
    v16 = v15;

    if (v10 == v14 && v11 == v16)
    {

      v19 = 1;
    }

    else
    {
      v18 = sub_24A82DC04();

      v19 = v18 & 1;
    }
  }

  else
  {
    v19 = 2;
  }

  *a1 = v19;
  return result;
}

uint64_t FMIPBeaconShare.shareIncludesMe.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2 == 0x6F6C4072656E776FLL && v2[1] == 0xEF74736F686C6163;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {
    return 1;
  }

  v4 = (v0 + *(v1 + 24));
  if (*v4 == 0x6F6C4072656E776FLL && v4[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPBeaconShare.amOwner.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 24));
  if (*v1 == 0x6F6C4072656E776FLL && v1[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPBeaconShare.amSharee.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPBeaconShare(0) + 24));
  if (*v1 == 0x6F6C4072656E776FLL && v1[1] == 0xEF74736F686C6163)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_24A82DC04() ^ 1;
  }

  return v3 & 1;
}

uint64_t FMIPBeaconShare.otherPartyHandle.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2;
  v4 = *v2 == 0x6F6C4072656E776FLL && v2[1] == 0xEF74736F686C6163;
  if (v4 || (v5 = *v2, v6 = v2[1], (sub_24A82DC04() & 1) != 0) || ((v7 = (v0 + *(v1 + 24)), *v7 == 0x6F6C4072656E776FLL) ? (v8 = v7[1] == 0xEF74736F686C6163) : (v8 = 0), v8 || (sub_24A82DC04() & 1) != 0))
  {
    v9 = (v0 + *(v1 + 24));
    v11 = *v9;
    v10 = v9[1];
    v12 = [objc_opt_self() SPOwner];
    v13 = [v12 destination];

    v14 = sub_24A82CFC4();
    v16 = v15;

    if (v11 == v14 && v10 == v16)
    {
    }

    else
    {
      v18 = sub_24A82DC04();

      if ((v18 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = v3;
LABEL_19:

  return v11;
}

uint64_t FMIPBeaconShare.requiresResponse.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = *(v0 + *(v1 + 32));
  if (v2 < 0)
  {
    v10 = 0;
    if (((1 << __ROR8__(v2 & 0x7FFFFFFFFFFFFFFFLL, 3)) & 0x1EB) != 0)
    {
      return v10;
    }
  }

  v3 = (v0 + *(v1 + 28));
  if (*v3 == 0x6F6C4072656E776FLL && v3[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  v5 = v1;
  v6 = *v3;
  if (sub_24A82DC04())
  {
    return 1;
  }

  v7 = (v0 + *(v5 + 24));
  if (*v7 == 0x6F6C4072656E776FLL && v7[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPBeaconShare.otherShareeShouldBeHidden.getter()
{
  v1 = type metadata accessor for FMIPBeaconShare(0);
  v2 = *(v0 + *(v1 + 32));
  if ((v2 & 0x8000000000000000) == 0 || (v9 = 0, ((1 << __ROR8__(v2 & 0x7FFFFFFFFFFFFFFFLL, 3)) & 0x1EB) == 0))
  {
    v3 = (v0 + *(v1 + 28));
    v4 = *v3 == 0x6F6C4072656E776FLL && v3[1] == 0xEF74736F686C6163;
    if (v4 || (v5 = v1, v6 = *v3, (sub_24A82DC04() & 1) != 0) || ((v7 = (v0 + *(v5 + 24)), *v7 == 0x6F6C4072656E776FLL) ? (v8 = v7[1] == 0xEF74736F686C6163) : (v8 = 0), v8))
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_24A82DC04() ^ 1;
    }
  }

  return v9 & 1;
}

uint64_t FMIPBeaconShare.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0]);
  sub_24A82CF64();
  v13 = type metadata accessor for FMIPBeaconShare(0);
  v14 = v1 + v13[5];
  sub_24A82CF64();
  v15 = (v2 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_24A82D094();
  v18 = (v2 + v13[7]);
  v19 = *v18;
  v20 = v18[1];
  sub_24A82D094();
  v28[1] = *(v2 + v13[8]);
  FMIPBeaconShareState.hash(into:)(a1);
  v21 = v13[9];
  sub_24A82CA34();
  sub_24A6C84B4(&qword_27EF5CCC8, 255, MEMORY[0x277CC9578]);
  sub_24A82CF64();
  v22 = v2 + v13[10];
  sub_24A82CF64();
  sub_24A696E10(v2 + v13[11], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_24A82DCE4();
    sub_24A6C84B4(&qword_27EF5CCD0, 255, MEMORY[0x277CC9260]);
    sub_24A82CF64();
    (*(v5 + 8))(v8, v4);
  }

  v23 = (v2 + v13[12]);
  if (*(v23 + 8) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    v24 = *v23;
    sub_24A82DCE4();
    MEMORY[0x24C21D5E0](v24);
  }

  v25 = *(v2 + v13[13]);
  sub_24A82DCE4();
  v26 = *(v2 + v13[14]);
  return sub_24A82DCE4();
}

uint64_t FMIPBeaconShare.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCBDC()
{
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCC20()
{
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCC70()
{
  v1 = v0;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000002ALL, 0x800000024A844610);
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
  v2 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A844640);
  v3 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v4 = v0 + *(v3 + 20);
  v5 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v5);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A844660);
  v7 = *(v1 + *(v3 + 24));
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A6BCE08(uint64_t a1)
{
  v3 = v1;
  sub_24A82DCC4();
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0]);
  sub_24A82CF64();
  v4 = v1 + *(a1 + 20);
  sub_24A82CF64();
  v6 = *(v3 + *(a1 + 24));
  FMIPBeaconShareState.hash(into:)(v7);
  return sub_24A82DD24();
}

uint64_t sub_24A6BCEE0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0]);
  sub_24A82CF64();
  v6 = v2 + *(a2 + 20);
  sub_24A82CF64();
  v8 = *(v4 + *(a2 + 24));
  return FMIPBeaconShareState.hash(into:)(a1);
}

uint64_t sub_24A6BCFA8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_24A82DCC4();
  sub_24A82CAA4();
  sub_24A6C84B4(&qword_281514670, 255, MEMORY[0x277CC95F0]);
  sub_24A82CF64();
  v5 = v2 + *(a2 + 20);
  sub_24A82CF64();
  v7 = *(v4 + *(a2 + 24));
  FMIPBeaconShareState.hash(into:)(v8);
  return sub_24A82DD24();
}

uint64_t sub_24A6BD0A4()
{
  v1 = sub_24A82C514();
  v0[27] = v1;
  v0[28] = sub_24A6C84B4(&unk_281514680, 255, MEMORY[0x277D08A28]);
  v2 = sub_24A697E3C(v0 + 24);
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D089D8], v1);
  LOBYTE(v1) = sub_24A82C4D4();
  sub_24A6876E8(v0 + 24);
  if (v1)
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    v0[34] = sub_24A6797D0(v3, qword_281518D70);
    v4 = sub_24A82CD94();
    v5 = sub_24A82D504();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A675000, v4, v5, "FMIPBeaconSharingController: Starting...", v6, 2u);
      MEMORY[0x24C21E1D0](v6, -1, -1);
    }

    v7 = v0[33];

    v8 = *(v7 + 112);
    v0[22] = sub_24A6CA184;
    v0[23] = v7;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24A6BD990;
    v0[21] = &unk_285DC1218;
    v9 = _Block_copy(v0 + 18);
    v0[35] = v9;
    v10 = v0[23];

    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_24A6BD488;
    v11 = swift_continuation_init();
    v0[17] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24A6BDA40;
    v0[13] = &unk_285DC1240;
    v0[14] = v11;
    [v8 startRefreshingSharesWithBlock:v9 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v12 = sub_24A82CDC4();
    sub_24A6797D0(v12, qword_281518D70);
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24A675000, v13, v14, "FMIPBeaconSharingController: Not starting since FF disabled.", v15, 2u);
      MEMORY[0x24C21E1D0](v15, -1, -1);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_24A6BD488()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 264);
  if (v3)
  {
    v5 = sub_24A6BD7C0;
  }

  else
  {
    v5 = sub_24A6BD5A8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24A6BD5A8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 304);
  _Block_release(*(v0 + 280));
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconSharingController: Started sharing controller: %{BOOL}d", v5, 8u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  *(*(v0 + 264) + 120) = v2;
  v6 = swift_task_alloc();
  *(v0 + 296) = v6;
  *v6 = v0;
  v6[1] = sub_24A6BD6CC;
  v7 = *(v0 + 264);

  return sub_24A6BE07C();
}

uint64_t sub_24A6BD6CC()
{
  v1 = *(*v0 + 296);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A6BD7C0()
{
  v21 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  swift_willThrow();
  _Block_release(v1);
  v4 = v2;
  v5 = sub_24A82CD94();
  v6 = sub_24A82D4E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[29];
    v10 = v0[30];
    v12 = v0[31];
    v13 = sub_24A82DC74();
    v15 = sub_24A68761C(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPBeaconSharingController: Failed to start sharing controller: %s", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {
    v16 = v0[36];
  }

  *(v0[33] + 120) = 0;
  v17 = swift_task_alloc();
  v0[37] = v17;
  *v17 = v0;
  v17[1] = sub_24A6BD6CC;
  v18 = v0[33];

  return sub_24A6BE07C();
}

uint64_t sub_24A6BD990(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
  sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t sub_24A6BDA40(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_24A67DF6C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24A6BDB2C()
{
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  v0[23] = sub_24A6797D0(v1, qword_281518D70);
  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconSharingController: Stoppping...", v4, 2u);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  v5 = v0[22];

  v6 = *(v5 + 112);
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_24A6BDD08;
  v7 = swift_continuation_init();
  v0[17] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A6BDA40;
  v0[13] = &unk_285DC11F0;
  v0[14] = v7;
  [v6 stopRefreshingSharesWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A6BDD08()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_24A6BDEF8;
  }

  else
  {
    v5 = sub_24A6BDE28;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24A6BDE28()
{
  v1 = *(v0 + 184);
  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconSharingController: Successfully stopped sharing controller", v4, 2u);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24A6BDEF8()
{
  v19 = v0;
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();
  v3 = v2;
  v4 = sub_24A82CD94();
  v5 = sub_24A82D4E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_24A82DC74();
    v14 = sub_24A68761C(v12, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPBeaconSharingController: Failed to stop sharing controller: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  else
  {
    v15 = v0[24];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24A6BE09C()
{
  v1 = *(v0[19] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24A6BE1BC;
  v2 = swift_continuation_init();
  v0[17] = sub_24A6BBA94(&qword_27EF5CF30, &qword_24A830DE8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A6BE394;
  v0[13] = &unk_285DC11C8;
  v0[14] = v2;
  [v1 sharingLimitsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A6BE1BC()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A6BE2B0, v1, 0);
}

void sub_24A6BE2B0()
{
  v8 = v0;
  v1 = *(v0 + 144);
  v2 = [v1 maxCircleMembers];
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v1 maxDelegatedShares];

  if (v4 < 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(v0 + 152);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7[0] = v3;
    v7[1] = v4;
    sub_24A74EB80(v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = *(v0 + 8);

  v6();
}

uint64_t sub_24A6BE394(uint64_t a1, void *a2)
{
  v3 = sub_24A67DF6C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_24A6BE3F8()
{
  v96 = type metadata accessor for FMIPBeaconShare(0);
  v1 = *(*(v96 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v96);
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v99 = &v96 - v5;
  MEMORY[0x28223BE20](v4);
  v98 = &v96 - v6;
  v110 = sub_24A82CAA4();
  v7 = *(v110 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v110);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v96 - v11;
  v12 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v97 = v0;
  v17 = *(v0 + 136);

  v18 = sub_24A789DD4(MEMORY[0x277D84F90]);
  v19 = *(v17 + 16);
  v102 = v7;
  if (v19)
  {
    v20 = 0;
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = *(v12 + 20);
    v107 = *(v12 + 24);
    v108 = v22;
    v106 = v17 + v21;
    v109 = (v7 + 16);
    v105 = (v7 + 8);
    v104 = v17;
    v103 = v13;
    do
    {
      if (v20 >= *(v17 + 16))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        swift_once();
        goto LABEL_44;
      }

      sub_24A6CA090(v106 + *(v13 + 72) * v20, v16, type metadata accessor for FMIPBeaconShareStateOverride);
      v25 = *v109;
      v26 = v18;
      v27 = v111;
      (*v109)(v111, &v16[v108], v110);
      v28 = v16;
      v29 = *&v16[v107];
      sub_24A6BB350(v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v26;
      v31 = sub_24A77EDF8(v27);
      v33 = v26;
      v34 = v31;
      v35 = *(v33 + 16);
      v36 = (v32 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_56;
      }

      v38 = v32;
      if (*(v33 + 24) >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v115;
          if (v32)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_24A785D3C();
          v18 = v115;
          if (v38)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_24A780CBC(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_24A77EDF8(v111);
        if ((v38 & 1) != (v40 & 1))
        {
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

        v34 = v39;
        v18 = v115;
        if (v38)
        {
LABEL_3:
          v23 = *(v18 + 56);
          v24 = *(v23 + 8 * v34);
          *(v23 + 8 * v34) = v29;
          sub_24A6BB5A4(v24);
          (*v105)(v111, v110);
          v16 = v28;
          sub_24A6CA0F8(v28, type metadata accessor for FMIPBeaconShareStateOverride);
          goto LABEL_4;
        }
      }

      v41 = v19;
      *(v18 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v42 = v102;
      v43 = *(v18 + 48) + *(v102 + 72) * v34;
      v44 = v111;
      v19 = v18;
      v45 = v110;
      (v25)(v43, v111, v110);
      *(*(v19 + 56) + 8 * v34) = v29;
      v46 = v45;
      v18 = v19;
      (*(v42 + 8))(v44, v46);
      v16 = v28;
      sub_24A6CA0F8(v28, type metadata accessor for FMIPBeaconShareStateOverride);
      v47 = *(v19 + 16);
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_57;
      }

      *(v19 + 16) = v49;
      v19 = v41;
LABEL_4:
      ++v20;
      v13 = v103;
      v17 = v104;
    }

    while (v19 != v20);
  }

  v111 = v18;

  v50 = *(v97 + 128);
  if ((v50 & 0xC000000000000001) != 0)
  {
    if (v50 < 0)
    {
      v51 = *(v97 + 128);
    }

    v52 = *(v97 + 128);

    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
    sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
    sub_24A82D414();
    v50 = v115;
    v53 = v116;
    v54 = v117;
    v55 = v118;
    v19 = v119;
  }

  else
  {
    v56 = -1 << *(v50 + 32);
    v53 = v50 + 56;
    v54 = ~v56;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v19 = v58 & *(v50 + 56);
    v59 = *(v97 + 128);

    v55 = 0;
  }

  v107 = v54;
  v108 = v50;
  v60 = (v54 + 64) >> 6;
  v109 = (v102 + 8);
  while (v50 < 0)
  {
    v72 = sub_24A82D784();
    v69 = v101;
    if (!v72)
    {
      goto LABEL_42;
    }

    v112 = v72;
    sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
    swift_dynamicCast();
    v71 = v113[0];
    v68 = v55;
    v70 = v19;
    if (!v113[0])
    {
      goto LABEL_42;
    }

LABEL_37:
    v73 = [v71 identifier];
    sub_24A82CA84();

    if (*(v111 + 16) && (v74 = sub_24A77EDF8(v69), (v75 & 1) != 0))
    {
      v61 = *(*(v111 + 56) + 8 * v74);
      sub_24A6BB350(v61);
      (*v109)(v69, v110);
    }

    else
    {
      (*v109)(v69, v110);
      v76 = [v71 state];
      if ((v76 - 1) <= 6)
      {
        v61 = *&asc_24A8318B8[8 * (v76 - 1)];
      }

      else
      {
        v61 = 0x8000000000000000;
      }
    }

    v113[0] = v61;
    v62 = v71;
    sub_24A6BB350(v61);
    v63 = v98;
    sub_24A6BBB50(v62, v113, v98);
    v64 = v100;
    sub_24A6CA090(v63, v100, type metadata accessor for FMIPBeaconShare);
    v65 = v99;
    sub_24A70B86C(v99, v64);
    sub_24A6BB5A4(v61);

    sub_24A6CA0F8(v65, type metadata accessor for FMIPBeaconShare);
    sub_24A6CA0F8(v63, type metadata accessor for FMIPBeaconShare);
    v55 = v68;
    v19 = v70;
    v50 = v108;
  }

  v66 = v55;
  v67 = v19;
  v68 = v55;
  v69 = v101;
  if (!v19)
  {
    while (1)
    {
      v68 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v68 >= v60)
      {
        goto LABEL_42;
      }

      v67 = *(v53 + 8 * v68);
      ++v66;
      if (v67)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_33:
  v70 = (v67 - 1) & v67;
  v71 = *(*(v50 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v67)))));
  if (v71)
  {
    goto LABEL_37;
  }

LABEL_42:

  sub_24A6BAFBC();
  v19 = v114;
  v77 = *(v97 + 144);

  v78 = sub_24A7B4308(v19, v77);

  if (v78)
  {
  }

  if (qword_281512DE0 != -1)
  {
    goto LABEL_58;
  }

LABEL_44:
  v79 = sub_24A82CDC4();
  sub_24A6797D0(v79, qword_281518D70);
  v80 = sub_24A82CD94();
  v81 = sub_24A82D504();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v113[0] = v83;
    *v82 = 136315138;
    sub_24A6C84B4(&qword_27EF5CF28, 255, type metadata accessor for FMIPBeaconShare);

    v84 = sub_24A82D3B4();
    v86 = v85;

    v87 = sub_24A68761C(v84, v86, v113);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_24A675000, v80, v81, "FMIPBeaconSharingController: Did calculate shares update: %s", v82, 0xCu);
    sub_24A6876E8(v83);
    MEMORY[0x24C21E1D0](v83, -1, -1);
    MEMORY[0x24C21E1D0](v82, -1, -1);
  }

  v88 = sub_24A82C514();
  v113[3] = v88;
  v113[4] = sub_24A6C84B4(&unk_281514680, 255, MEMORY[0x277D08A28]);
  v89 = sub_24A697E3C(v113);
  (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D089D8], v88);
  LOBYTE(v88) = sub_24A82C4D4();
  sub_24A6876E8(v113);
  if (v88)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_24A74ECD8(v90);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v91 = sub_24A82CD94();
    v92 = sub_24A82D504();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_24A675000, v91, v92, "FMIPBeaconSharingController: Not forwarding share updates due to FF disabled.", v93, 2u);
      MEMORY[0x24C21E1D0](v93, -1, -1);
    }
  }

  v94 = *(v97 + 144);
  *(v97 + 144) = v19;
}

uint64_t sub_24A6BEF44@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *a2;
  v18 = *(v9 + 28);
  v19 = sub_24A82CAA4();
  (*(*(v19 - 8) + 16))(a3 + v18, a1, v19);
  sub_24A6BB350(v17);
  sub_24A82CA94();
  *(a3 + *(v9 + 32)) = v17;
  sub_24A6CA090(a3, v16, type metadata accessor for FMIPBeaconShareStateOverride);
  swift_beginAccess();
  v20 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_24A77FF40(0, v20[2] + 1, 1, v20);
    *(v4 + 136) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_24A77FF40(v22 > 1, v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_24A6CA2B0(v16, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, type metadata accessor for FMIPBeaconShareStateOverride);
  *(v4 + 136) = v20;
  swift_endAccess();
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518D70);
  sub_24A6CA090(a3, v14, type metadata accessor for FMIPBeaconShareStateOverride);
  v25 = sub_24A82CD94();
  v26 = sub_24A82D504();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315138;
    v29 = sub_24A6BCC70();
    v31 = v30;
    sub_24A6CA0F8(v14, type metadata accessor for FMIPBeaconShareStateOverride);
    v32 = sub_24A68761C(v29, v31, &v35);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPBeaconSharingController: Added beacon share state override: %s", v27, 0xCu);
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v28, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  else
  {

    sub_24A6CA0F8(v14, type metadata accessor for FMIPBeaconShareStateOverride);
  }

  return sub_24A6BE3F8();
}

int64_t sub_24A6BF2EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518D70);
  sub_24A6CA090(a1, v7, type metadata accessor for FMIPBeaconShareStateOverride);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = sub_24A6BCC70();
    v15 = v14;
    sub_24A6CA0F8(v7, type metadata accessor for FMIPBeaconShareStateOverride);
    v16 = sub_24A68761C(v13, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconSharingController: Removing beacon share state override: %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  else
  {

    v17 = sub_24A6CA0F8(v7, type metadata accessor for FMIPBeaconShareStateOverride);
  }

  MEMORY[0x28223BE20](v17);
  *(&v20 - 2) = a1;
  swift_beginAccess();
  result = sub_24A6C77F0(sub_24A6C9E04, (&v20 - 4));
  v19 = *(*(v2 + 136) + 16);
  if (v19 < result)
  {
    __break(1u);
  }

  else
  {
    sub_24A6C9F6C(result, v19);
    swift_endAccess();
    return sub_24A6BE3F8();
  }

  return result;
}

uint64_t sub_24A6BF584(uint64_t a1, uint64_t a2)
{
  if (sub_24A82CA74() & 1) != 0 && (v4 = type metadata accessor for FMIPBeaconShareStateOverride(0), v5 = *(v4 + 20), (sub_24A82CA74()))
  {
    v6 = *(v4 + 24);
    v7 = *(a1 + v6);
    v11 = *(a2 + v6);
    v8 = v11;
    v12 = v7;
    sub_24A6BB350(v7);
    sub_24A6BB350(v11);
    v9 = static FMIPBeaconShareState.== infix(_:_:)(&v12, &v11);
    sub_24A6BB5A4(v8);
    sub_24A6BB5A4(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_24A6BF634(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24A6BF658, v2, 0);
}

uint64_t sub_24A6BF658()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 128);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  sub_24A79ED0C(sub_24A6C9DE4, v3, v2);
  v5 = v4;

  if (v5 && (v6 = [v5 state], v5, (v6 - 1) <= 6))
  {
    v7 = *&asc_24A8318B8[8 * (v6 - 1)];
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  **(v0 + 16) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24A6BF75C(id *a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_24A82CA84();

  v8 = sub_24A82CA74();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_24A6BF868(uint64_t a1, uint64_t (*a2)(char *, void), uint64_t a3)
{
  type metadata accessor for FMIPAcceptShareAction(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {

    return sub_24A6C0D50(v5, a2, a3);
  }

  else
  {
    type metadata accessor for FMIPDeclineShareAction(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {

      return sub_24A6C131C(v7, a2, a3);
    }

    else
    {
      type metadata accessor for FMIPWithdrawShareAction(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {

        return sub_24A6C09B8(v8, a2, a3);
      }

      else
      {
        if (qword_281512DE0 != -1)
        {
          swift_once();
        }

        v9 = sub_24A82CDC4();
        sub_24A6797D0(v9, qword_281518D70);

        v10 = sub_24A82CD94();
        v11 = sub_24A82D4E4();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v17 = v13;
          *v12 = 136315138;
          v14 = sub_24A7E2164();
          v16 = sub_24A68761C(v14, v15, &v17);

          *(v12 + 4) = v16;
          _os_log_impl(&dword_24A675000, v10, v11, "FMIPBeaconSharingController: Unknown action received: %s", v12, 0xCu);
          sub_24A6876E8(v13);
          MEMORY[0x24C21E1D0](v13, -1, -1);
          MEMORY[0x24C21E1D0](v12, -1, -1);
        }

        v18 = 4;
        return a2(&v18, 0);
      }
    }
  }
}

uint64_t sub_24A6BFAC4(uint64_t *a1, void (*a2)(void, void, void), uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v62 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v62 - v10;
  v11 = sub_24A82CAA4();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v71 = a1;
  v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles);
  v16 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  v18 = v15 + 40;
  v19 = 0x277D49000;
  v65 = v15 + 40;
LABEL_2:
  v20 = (v18 + 16 * v14);
  while (v17 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
LABEL_26:
      swift_once();
LABEL_17:
      v33 = sub_24A82CDC4();
      sub_24A6797D0(v33, qword_281518D70);

      v34 = sub_24A82CD94();
      v35 = sub_24A82D504();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_24A68761C(*(v3 + *v19 + 352), *(v3 + *v19 + 360), aBlock);
        *(v36 + 12) = 2080;
        v38 = MEMORY[0x24C21CB60](v15, MEMORY[0x277D837D0]);
        v40 = sub_24A68761C(v38, v39, aBlock);

        *(v36 + 14) = v40;
        _os_log_impl(&dword_24A675000, v34, v35, "FMIPBeaconSharingController: Failed to run a share action for item: %s to %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v37, -1, -1);
        MEMORY[0x24C21E1D0](v36, -1, -1);
      }

      v41 = v67;
      v42 = v64;
      LOBYTE(aBlock[0]) = 4;
      sub_24A6CA090(v3 + *v19, v64, type metadata accessor for FMIPItem);
      v43 = type metadata accessor for FMIPItem();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = sub_24A789FBC(MEMORY[0x277D84F90]);
      v41(aBlock, v42, v44);

      return sub_24A67F378(v42, &qword_27EF5D018, &qword_24A830E38);
    }

    ++v14;
    v3 = v20 + 2;
    v22 = *(v20 - 1);
    v21 = *v20;

    v23 = sub_24A82CF94();

    v24 = [objc_opt_self() handleWithString_];

    v20 = v3;
    if (v24)
    {
      MEMORY[0x24C21CB10]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A82D274();
      }

      sub_24A82D2C4();
      v16 = aBlock[0];
      v18 = v65;
      goto LABEL_2;
    }
  }

  v26 = sub_24A713D74(v16);

  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_24A82D744();
  }

  else
  {
    v27 = *(v26 + 16);
  }

  v28 = v70;
  v3 = v71;
  v29 = v69;
  v30 = v66;
  v19 = &OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  if (!v27)
  {

LABEL_16:
    if (qword_281512DE0 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v32 = *(v71 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v31 = *(v71 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {

    sub_24A67F378(v30, &qword_27EF5D020, &qword_24A830E40);
    goto LABEL_16;
  }

  (*(v29 + 32))(v63, v30, v28);
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v46 = sub_24A82CDC4();
  sub_24A6797D0(v46, qword_281518D70);

  v47 = sub_24A82CD94();
  v48 = sub_24A82D504();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_24A68761C(v32, v31, aBlock);
    *(v49 + 12) = 2080;
    v51 = MEMORY[0x24C21CB60](v15, MEMORY[0x277D837D0]);
    v53 = sub_24A68761C(v51, v52, aBlock);

    *(v49 + 14) = v53;
    _os_log_impl(&dword_24A675000, v47, v48, "FMIPBeaconSharingController: Sending share action for item: %s to %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v50, -1, -1);
    MEMORY[0x24C21E1D0](v49, -1, -1);
  }

  v54 = v63;
  v55 = *(v62 + 112);
  v56 = sub_24A82CA64();
  sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
  sub_24A6AB7EC(&qword_27EF5D030, &qword_27EF5D028, 0x277D49670);
  v57 = sub_24A82D394();

  v58 = swift_allocObject();
  v59 = v67;
  v60 = v68;
  v58[2] = v71;
  v58[3] = v59;
  v58[4] = v60;
  aBlock[4] = sub_24A6CA48C;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6C08D8;
  aBlock[3] = &unk_285DC13D0;
  v61 = _Block_copy(aBlock);

  [v55 share:v56 recipients:v57 completion:v61];
  _Block_release(v61);

  return (*(v69 + 8))(v54, v70);
}

uint64_t sub_24A6C02B8(char a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  v8 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518D70);

  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    HIDWORD(v29) = v14;
    v16 = v15;
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v16 = 136315650;
    *(v16 + 4) = sub_24A68761C(*(a3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352), *(a3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360), v31);
    *(v16 + 12) = 2080;
    v17 = MEMORY[0x24C21CB60](*(a3 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles), MEMORY[0x277D837D0]);
    v19 = a4;
    v20 = sub_24A68761C(v17, v18, v31);

    *(v16 + 14) = v20;
    a4 = v19;
    *(v16 + 22) = 1024;
    *(v16 + 24) = a1 & 1;
    _os_log_impl(&dword_24A675000, v13, BYTE4(v29), "FMIPBeaconSharingController: Share action for item: %s sent to %s: %{BOOL}d", v16, 0x1Cu);
    v21 = v30;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  sub_24A6C0654(a2);
  if (*(v22 + 16))
  {
    sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
    v23 = sub_24A82D974();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v31[0] = v23;

  sub_24A6C7C0C(v24, 1, v31);

  if (a1)
  {
    v25 = 2;
  }

  else
  {
    v25 = 4;
  }

  v26 = v31[0];
  LOBYTE(v31[0]) = v25;
  sub_24A6CA090(a3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v11, type metadata accessor for FMIPItem);
  v27 = type metadata accessor for FMIPItem();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  a4(v31, v11, v26);

  return sub_24A67F378(v11, &qword_27EF5D018, &qword_24A830E38);
}

void sub_24A6C0654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x277D84F90];
    sub_24A6FC8E0(0, v1, 0);
    v3 = v2 + 64;
    v4 = -1 << *(v2 + 32);
    v5 = sub_24A82D6C4();
    v6 = 0;
    v7 = *(v2 + 36);
    v28 = v2 + 72;
    v29 = v1;
    v30 = v7;
    v31 = v2 + 64;
    v32 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v33 = v6;
      v10 = *(*(v2 + 48) + 8 * v5);
      v11 = *(*(v2 + 56) + 8 * v5);
      v12 = v10;
      v13 = v11;
      v14 = [v12 destination];
      v15 = sub_24A82CFC4();
      v17 = v16;

      v19 = *(v34 + 16);
      v18 = *(v34 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24A6FC8E0((v18 > 1), v19 + 1, 1);
      }

      *(v34 + 16) = v19 + 1;
      v20 = (v34 + 24 * v19);
      v20[4] = v15;
      v20[5] = v17;
      v20[6] = v11;
      v2 = v32;
      v8 = 1 << *(v32 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v3 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v7 = v30;
      if (v30 != *(v32 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_24A6CA498(v5, v30, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_24A6CA498(v5, v30, 0);
      }

LABEL_4:
      v6 = v33 + 1;
      v5 = v8;
      if (v33 + 1 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_24A6C08D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  sub_24A6AB7EC(&qword_27EF5D030, &qword_27EF5D028, 0x277D49670);
  v5 = sub_24A82CEF4();

  v4(a2, v5);
}

uint64_t sub_24A6C09E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[13] = v9;
  v7[14] = *(v9 + 64);
  v7[15] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = OBJC_IVAR____TtC8FMIPCore21FMIPItemSharingAction_shareIdentifier;
  v7[16] = v10;
  v7[17] = v11;
  v7[8] = 0x8000000000000038;

  return MEMORY[0x2822009F8](sub_24A6C0AD0, a4, 0);
}

uint64_t sub_24A6C0AD0()
{
  v1 = v0[9];
  sub_24A6BEF44(v0[10] + v0[17], v0 + 8, v0[16]);
  v0[18] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24A6C0B4C, 0, 0);
}

uint64_t sub_24A6C0B4C()
{
  v16 = v0[18];
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v14 = *(v0 + 5);
  v7 = v14 + v0[17];
  v15 = sub_24A82CA64();
  sub_24A6CA090(v2, v1, type metadata accessor for FMIPBeaconShareStateOverride);
  v8 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v14;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  sub_24A6CA2B0(v1, v9 + v8, type metadata accessor for FMIPBeaconShareStateOverride);
  v0[6] = sub_24A6C9CC4;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A7FD664;
  v0[5] = &unk_285DC1178;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v16 removeShare:v15 completion:v10];
  _Block_release(v10);

  sub_24A6CA0F8(v2, type metadata accessor for FMIPBeaconShareStateOverride);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24A6C0D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6CADF4, a4, 0);
}

uint64_t sub_24A6C0D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = OBJC_IVAR____TtC8FMIPCore21FMIPItemSharingAction_shareIdentifier;
  v7[17] = v10;
  v7[18] = v11;
  v12 = swift_task_alloc();
  v7[19] = v12;
  *v12 = v7;
  v12[1] = sub_24A6C0EA0;

  return sub_24A6BF634((v7 + 8), a5 + v11);
}

uint64_t sub_24A6C0EA0()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A6C0F9C, 0, 0);
}

uint64_t sub_24A6C0F9C()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[20] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[9] = v3;
  sub_24A6BB350(v2);

  return MEMORY[0x2822009F8](sub_24A6C102C, v1, 0);
}

uint64_t sub_24A6C102C()
{
  v1 = v0[10];
  sub_24A6BEF44(v0[11] + v0[18], v0 + 9, v0[17]);
  sub_24A6BB5A4(v0[9]);
  v0[21] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24A6C10B0, 0, 0);
}

uint64_t sub_24A6C10B0()
{
  v16 = v0[21];
  v17 = v0[20];
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[10];
  v14 = *(v0 + 11);
  v7 = v14 + v0[18];
  v15 = sub_24A82CA64();
  sub_24A6CA090(v1, v2, type metadata accessor for FMIPBeaconShareStateOverride);
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v14;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  sub_24A6CA2B0(v2, v9 + v8, type metadata accessor for FMIPBeaconShareStateOverride);
  v0[6] = sub_24A6C990C;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A7FD664;
  v0[5] = &unk_285DC10D8;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v16 acceptShare:v15 completion:v10];
  _Block_release(v10);

  sub_24A6BB5A4(v17);
  sub_24A6CA0F8(v1, type metadata accessor for FMIPBeaconShareStateOverride);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24A6C129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6C12BC, a4, 0);
}

uint64_t sub_24A6C12BC()
{
  v1 = v0[2];
  sub_24A6BF2EC(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24A6C1344(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v9 = v6;
  v13 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v33 - v15;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518D70);

  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = a6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33[1] = a5;
    v23 = v22;
    v37 = v22;
    *v21 = 136315138;
    sub_24A82CAA4();
    v34 = v6;
    v24 = a3;
    v25 = a2;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v26 = sub_24A82DB84();
    v28 = sub_24A68761C(v26, v27, &v37);

    *(v21 + 4) = v28;
    a2 = v25;
    a3 = v24;
    v9 = v34;
    _os_log_impl(&dword_24A675000, v18, v19, v36, v21, 0xCu);
    sub_24A6876E8(v23);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    v29 = v21;
    a6 = v35;
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  v30 = sub_24A82D354();
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v9;
  v31[5] = a1;
  v31[6] = a2;
  v31[7] = a3;

  sub_24A7382F4(0, 0, v16, a6, v31);
}

uint64_t sub_24A6C161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = OBJC_IVAR____TtC8FMIPCore21FMIPItemSharingAction_shareIdentifier;
  v7[17] = v10;
  v7[18] = v11;
  v12 = swift_task_alloc();
  v7[19] = v12;
  *v12 = v7;
  v12[1] = sub_24A6C1744;

  return sub_24A6BF634((v7 + 8), a5 + v11);
}

uint64_t sub_24A6C1744()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A6C1840, 0, 0);
}

uint64_t sub_24A6C1840()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[20] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[9] = v3 | 0x4000000000000000;
  sub_24A6BB350(v2);

  return MEMORY[0x2822009F8](sub_24A6C18D4, v1, 0);
}

uint64_t sub_24A6C18D4()
{
  v1 = v0[10];
  sub_24A6BEF44(v0[11] + v0[18], v0 + 9, v0[17]);
  sub_24A6BB5A4(v0[9]);
  v0[21] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24A6C1958, 0, 0);
}

uint64_t sub_24A6C1958()
{
  v16 = v0[21];
  v17 = v0[20];
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[10];
  v14 = *(v0 + 11);
  v7 = v14 + v0[18];
  v15 = sub_24A82CA64();
  sub_24A6CA090(v1, v2, type metadata accessor for FMIPBeaconShareStateOverride);
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v14;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  sub_24A6CA2B0(v2, v9 + v8, type metadata accessor for FMIPBeaconShareStateOverride);
  v0[6] = sub_24A6C95EC;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A7FD664;
  v0[5] = &unk_285DC1038;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v16 declineShare:v15 completion:v10];
  _Block_release(v10);

  sub_24A6BB5A4(v17);
  sub_24A6CA0F8(v1, type metadata accessor for FMIPBeaconShareStateOverride);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24A6C1B44(int a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10)
{
  v41 = a8;
  v47 = a7;
  v44 = a5;
  v45 = a4;
  v43 = a2;
  v42 = a1;
  v11 = a10;
  v12 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518D70);

  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = a10;
    v24 = v23;
    v48 = v23;
    *v22 = 136315394;
    sub_24A82CAA4();
    v39 = a6;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v25 = sub_24A82DB84();
    v27 = sub_24A68761C(v25, v26, &v48);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = v42;
    if (v42)
    {
      v29 = 0x73736563637573;
    }

    else
    {
      v29 = 0x64656C696166;
    }

    if (v42)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE600000000000000;
    }

    v31 = sub_24A68761C(v29, v30, &v48);

    *(v22 + 14) = v31;
    a6 = v39;
    _os_log_impl(&dword_24A675000, v19, v20, v41, v22, 0x16u);
    swift_arrayDestroy();
    v32 = v24;
    v11 = v40;
    MEMORY[0x24C21E1D0](v32, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  else
  {

    v28 = v42;
  }

  if (v28)
  {
    v33 = 2;
  }

  else
  {
    v33 = 4;
  }

  v49 = v33;
  v45(&v49, v43);
  v34 = sub_24A82D354();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  sub_24A6CA090(v47, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPBeaconShareStateOverride);
  v35 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = a6;
  sub_24A6CA2B0(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for FMIPBeaconShareStateOverride);

  sub_24A7382F4(0, 0, v17, v11, v36);
}

void sub_24A6C1F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Requesting share of beacon: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v15 = *(v3 + 112);
  v16 = sub_24A82CA64();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v19[4] = sub_24A6CA440;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_24A7FD664;
  v19[3] = &unk_285DC1380;
  v18 = _Block_copy(v19);

  [v15 requestShare:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_24A6C2204(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    sub_24A82CAA4();
    v12 = a4;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v13 = sub_24A82DB84();
    v15 = sub_24A68761C(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    if (a1)
    {
      v16 = 0x73736563637573;
    }

    else
    {
      v16 = 0x64656C696166;
    }

    if (a1)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    v18 = sub_24A68761C(v16, v17, &v21);
    a4 = v12;

    *(v10 + 14) = v18;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Share request for beacon action completed: %s, status: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  if (a1)
  {
    v19 = 2;
  }

  else
  {
    v19 = 4;
  }

  v22 = v19;
  return a4(&v22, a2);
}

void sub_24A6C2474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v23 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Requesting share of beacon: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    v15 = v10;
    a2 = v23;
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = objc_allocWithZone(MEMORY[0x277D49628]);
  v17 = sub_24A82CA64();
  v18 = [v16 initWithBeaconIdentifier_];

  v19 = *(v4 + 112);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v4;
  v20[5] = v18;
  aBlock[4] = sub_24A6CA4EC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6C2AE0;
  aBlock[3] = &unk_285DC1470;
  v21 = _Block_copy(aBlock);

  v22 = v18;

  [v19 isBeaconDelegated:v22 completion:v21];
  _Block_release(v21);
}

void sub_24A6C274C(uint64_t a1, uint64_t a2, void (*a3)(void *, char *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = aBlock - v16;
  v18 = sub_24A82C8B4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = aBlock - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A696E10(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24A67F378(v17, &unk_27EF5CCB8, &qword_24A82FDB0);
    v23 = *(a5 + 112);
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    aBlock[4] = sub_24A6CA4F8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6C2AE0;
    aBlock[3] = &unk_285DC14C0;
    v25 = _Block_copy(aBlock);

    [v23 delegatedShare:a6 completion:v25];
    _Block_release(v25);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    LOBYTE(aBlock[0]) = 2;
    (*(v19 + 16))(v15, v22, v18);
    (*(v19 + 56))(v15, 0, 1, v18);
    a3(aBlock, v15, 0);
    sub_24A67F378(v15, &unk_27EF5CCB8, &qword_24A82FDB0);
    (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_24A6C2A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v6 = sub_24A82C8B4();
  if ((*(*(v6 - 8) + 48))(a1, 1, v6) == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  v9 = v7;
  return a3(&v9, a1, a2);
}

uint64_t sub_24A6C2AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_24A82C884();
    v12 = sub_24A82C8B4();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_24A82C8B4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_24A67F378(v9, &unk_27EF5CCB8, &qword_24A82FDB0);
}

void sub_24A6C2C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v22 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    v15 = v10;
    a2 = v22;
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = objc_allocWithZone(MEMORY[0x277D49628]);
  v17 = sub_24A82CA64();
  v18 = [v16 initWithBeaconIdentifier_];

  v19 = *(v4 + 112);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_24A6CA4A4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A7FD664;
  aBlock[3] = &unk_285DC1420;
  v21 = _Block_copy(aBlock);

  [v19 stopTemporaryItemLocationShare:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_24A6C2EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518D70);
  swift_retain_n();
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315394;
    sub_24A82CAA4();
    v26 = v11;
    v17 = a3;
    v18 = a2;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v19 = sub_24A82DB84();
    v21 = sub_24A68761C(v19, v20, &v27);

    *(v15 + 4) = v21;
    a2 = v18;
    a3 = v17;
    v4 = v3;
    v11 = v26;
    *(v15 + 12) = 1024;
    v22 = *(a1 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force);

    *(v15 + 14) = v22;

    _os_log_impl(&dword_24A675000, v13, v14, "FMIPBeaconSharingController: Stopping sharing of beacon: %s, forced? %{BOOL}d", v15, 0x12u);
    sub_24A6876E8(v16);
    MEMORY[0x24C21E1D0](v16, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  else
  {
  }

  v23 = sub_24A82D354();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v4;
  v24[5] = a1;
  v24[6] = a2;
  v24[7] = a3;

  sub_24A7382F4(0, 0, v11, &unk_24A830E18, v24);
}

uint64_t sub_24A6C3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[53] = a6;
  v7[54] = a7;
  v7[51] = a4;
  v7[52] = a5;
  v9 = *(*(sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80) - 8) + 64) + 15;
  v7[55] = swift_task_alloc();
  v10 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[56] = v10;
  v11 = *(v10 + 64) + 15;
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v12 = type metadata accessor for FMIPBeaconShare(0);
  v7[59] = v12;
  v13 = *(v12 - 8);
  v7[60] = v13;
  v14 = *(v13 + 64) + 15;
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A6C3380, a4, 0);
}

uint64_t sub_24A6C3380()
{
  *(v0 + 504) = *(*(v0 + 408) + 144);

  return MEMORY[0x2822009F8](sub_24A6C33F4, 0, 0);
}

uint64_t sub_24A6C33F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 504);
  v6 = *(v5 + 32);
  *(v3 + 635) = v6;
  v7 = 1 << v6;
  v8 = *(v5 + 56);
  v9 = v7 < 64;
  v10 = -1 << v7;
  if (v9)
  {
    v11 = ~v10;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  *(v3 + 512) = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  *(v3 + 520) = MEMORY[0x277D84F90];
  if ((v11 & v8) != 0)
  {
    while (1)
    {
      a1 = *(v3 + 504);
LABEL_10:
      *(v3 + 536) = v4;
      *(v3 + 528) = v12;
      v14 = *(v3 + 512);
      v15 = *(v3 + 488);
      v16 = *(v3 + 496);
      v17 = *(v3 + 472);
      v18 = *(v3 + 416);
      sub_24A6CA090(*(a1 + 48) + *(*(v3 + 480) + 72) * (__clz(__rbit64(v12)) | (v4 << 6)), v16, type metadata accessor for FMIPBeaconShare);
      sub_24A6CA2B0(v16, v15, type metadata accessor for FMIPBeaconShare);
      v19 = *(v17 + 20);
      if (sub_24A82CA74())
      {
        break;
      }

      v12 &= v12 - 1;
      a1 = sub_24A6CA0F8(*(v3 + 488), type metadata accessor for FMIPBeaconShare);
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    a2 = *(v3 + 408);
    *(v3 + 400) = 0x8000000000000038;
    v21 = sub_24A6C35F4;
  }

  else
  {
    while (1)
    {
LABEL_6:
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      a1 = *(v3 + 504);
      if (v13 >= (((1 << *(v3 + 635)) + 63) >> 6))
      {
        break;
      }

      v12 = *(a1 + 8 * v13 + 56);
      ++v4;
      if (v12)
      {
        v4 = v13;
        goto LABEL_10;
      }
    }

    v20 = *(v3 + 416);

    a2 = *(v3 + 408);
    if (*(v20 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force))
    {
      v21 = sub_24A6C3920;
    }

    else
    {
      v21 = sub_24A6C409C;
    }
  }

  a1 = v21;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24A6C35F4()
{
  v1 = v0[51];
  sub_24A6BEF44(v0[61], v0 + 50, v0[58]);

  return MEMORY[0x2822009F8](sub_24A6C3668, 0, 0);
}

uint64_t sub_24A6C3668()
{
  v1 = *(v0 + 520);
  sub_24A6CA090(*(v0 + 464), *(v0 + 456), type metadata accessor for FMIPBeaconShareStateOverride);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 520);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_21:
    v3 = sub_24A77FF40(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_24A77FF40(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 488);
  v7 = *(v0 + 456);
  v8 = *(v0 + 448);
  sub_24A6CA0F8(*(v0 + 464), type metadata accessor for FMIPBeaconShareStateOverride);
  sub_24A6CA0F8(v6, type metadata accessor for FMIPBeaconShare);
  v3[2] = v5 + 1;
  sub_24A6CA2B0(v7, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, type metadata accessor for FMIPBeaconShareStateOverride);
  v9 = *(v0 + 536);
  v10 = (*(v0 + 528) - 1) & *(v0 + 528);
  *(v0 + 520) = v3;
  if (v10)
  {
    while (1)
    {
      v11 = *(v0 + 504);
LABEL_10:
      *(v0 + 536) = v9;
      *(v0 + 528) = v10;
      v13 = *(v0 + 512);
      v14 = *(v0 + 488);
      v3 = *(v0 + 496);
      v15 = *(v0 + 472);
      v16 = *(v0 + 416);
      sub_24A6CA090(*(v11 + 48) + *(*(v0 + 480) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), v3, type metadata accessor for FMIPBeaconShare);
      sub_24A6CA2B0(v3, v14, type metadata accessor for FMIPBeaconShare);
      v17 = *(v15 + 20);
      if (sub_24A82CA74())
      {
        break;
      }

      v10 &= v10 - 1;
      sub_24A6CA0F8(*(v0 + 488), type metadata accessor for FMIPBeaconShare);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v19 = *(v0 + 408);
    *(v0 + 400) = 0x8000000000000038;
    v20 = sub_24A6C35F4;
  }

  else
  {
    while (1)
    {
LABEL_6:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v0 + 504);
      if (v12 >= (((1 << *(v0 + 635)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_10;
      }
    }

    v18 = *(v0 + 416);

    v19 = *(v0 + 408);
    if (*(v18 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force))
    {
      v20 = sub_24A6C3920;
    }

    else
    {
      v20 = sub_24A6C409C;
    }
  }

  return MEMORY[0x2822009F8](v20, v19, 0);
}

uint64_t sub_24A6C3948()
{
  v1 = v0[68];
  v2 = v0[52] + v0[64];
  v3 = sub_24A82CA64();
  v0[69] = v3;
  v0[18] = v0;
  v0[23] = v0 + 634;
  v0[19] = sub_24A6C3A88;
  v4 = swift_continuation_init();
  v0[49] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_24A6BDA40;
  v0[45] = &unk_285DC1330;
  v0[46] = v4;
  [v1 forceStopSharing:v3 completion:v0 + 42];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_24A6C3A88()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 560) = v2;
  if (v2)
  {
    v3 = sub_24A6C4D2C;
  }

  else
  {
    v3 = sub_24A6C3B98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A6C3B98()
{
  v41 = v0;

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 416);
  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518D70);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v9 = sub_24A82DB84();
    v11 = sub_24A68761C(v9, v10, &v40);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A675000, v3, v4, "Force Stopped sharing for beacon: %s succeeded", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  *(v0 + 600) = *(v0 + 544);
  *(v0 + 592) = 0;
  if (*(*(v0 + 416) + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) == 1)
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
      v38 = *(v0 + 416);
    }

    *(v0 + 608) = sub_24A6797D0(v2, qword_281518D70);

    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 512);
      v15 = *(v0 + 416);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = v17;
      *v16 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
      v18 = sub_24A82DB84();
      v20 = sub_24A68761C(v18, v19, &v40);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v16, 0xCu);
      sub_24A6876E8(v17);
      MEMORY[0x24C21E1D0](v17, -1, -1);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v21 = *(v0 + 512);
    v22 = *(v0 + 416);
    v23 = objc_allocWithZone(MEMORY[0x277D49628]);
    v24 = sub_24A82CA64();
    *(v0 + 616) = [v23 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v25 = *(v0 + 520);
    v26 = *(v0 + 440);
    v27 = *(v0 + 408);
    v28 = sub_24A82D354();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v25;
    v29[5] = v27;

    sub_24A7382F4(0, 0, v26, &unk_24A830E28, v29);

    v30 = *(v0 + 424);
    v31 = *(v0 + 432);
    LOBYTE(v40) = 2;
    v30(&v40, 0);
    v33 = *(v0 + 488);
    v32 = *(v0 + 496);
    v35 = *(v0 + 456);
    v34 = *(v0 + 464);
    v36 = *(v0 + 440);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_24A6C40C4()
{
  v1 = v0[71];
  v2 = v0[52] + v0[64];
  v3 = sub_24A82CA64();
  v0[72] = v3;
  v0[2] = v0;
  v0[7] = v0 + 79;
  v0[3] = sub_24A6C4204;
  v4 = swift_continuation_init();
  v0[33] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_24A6BDA40;
  v0[29] = &unk_285DC12B8;
  v0[30] = v4;
  [v1 stopSharing:v3 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A6C4204()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  if (v2)
  {
    v3 = sub_24A6C52EC;
  }

  else
  {
    v3 = sub_24A6C4314;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A6C4314()
{
  v41 = v0;

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 416);
  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518D70);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v9 = sub_24A82DB84();
    v11 = sub_24A68761C(v9, v10, &v40);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A675000, v3, v4, "Stopped sharing for beacon: %s succeeded", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  *(v0 + 600) = *(v0 + 568);
  *(v0 + 592) = 0;
  if (*(*(v0 + 416) + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) == 1)
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
      v38 = *(v0 + 416);
    }

    *(v0 + 608) = sub_24A6797D0(v2, qword_281518D70);

    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 512);
      v15 = *(v0 + 416);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = v17;
      *v16 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
      v18 = sub_24A82DB84();
      v20 = sub_24A68761C(v18, v19, &v40);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v16, 0xCu);
      sub_24A6876E8(v17);
      MEMORY[0x24C21E1D0](v17, -1, -1);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v21 = *(v0 + 512);
    v22 = *(v0 + 416);
    v23 = objc_allocWithZone(MEMORY[0x277D49628]);
    v24 = sub_24A82CA64();
    *(v0 + 616) = [v23 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v25 = *(v0 + 520);
    v26 = *(v0 + 440);
    v27 = *(v0 + 408);
    v28 = sub_24A82D354();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v25;
    v29[5] = v27;

    sub_24A7382F4(0, 0, v26, &unk_24A830E28, v29);

    v30 = *(v0 + 424);
    v31 = *(v0 + 432);
    LOBYTE(v40) = 2;
    v30(&v40, 0);
    v33 = *(v0 + 488);
    v32 = *(v0 + 496);
    v35 = *(v0 + 456);
    v34 = *(v0 + 464);
    v36 = *(v0 + 440);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_24A6C4818()
{
  v1 = v0[77];
  v2 = v0[75];
  v0[10] = v0;
  v0[15] = v0 + 633;
  v0[11] = sub_24A6C4944;
  v3 = swift_continuation_init();
  v0[41] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_24A6BDA40;
  v0[37] = &unk_285DC1308;
  v0[38] = v3;
  [v2 stopTemporaryItemLocationShare:v1 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_24A6C4944()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 624) = v2;
  if (v2)
  {
    v3 = sub_24A6C58AC;
  }

  else
  {
    v3 = sub_24A6C4A54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A6C4A54()
{
  v33 = v0;
  v1 = v0[76];
  v2 = v0[52];

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[77];
  if (v5)
  {
    v7 = v0[64];
    v8 = v0[52];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v11 = sub_24A82DB84();
    v13 = sub_24A68761C(v11, v12, &v32);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A675000, v3, v4, "Stopped delegated share for beacon: %s succeeded", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v14 = v0[74];
  v15 = v0[65];
  v16 = v0[55];
  v17 = v0[51];
  v18 = sub_24A82D354();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = v17;

  sub_24A7382F4(0, 0, v16, &unk_24A830E28, v19);

  v21 = v0[53];
  v20 = v0[54];
  if (v14)
  {
    v31 = 4;
    v22 = v14;
    v21(&v31, v14);
  }

  else
  {
    v30 = 2;
    v21(&v30, 0);
  }

  v24 = v0[61];
  v23 = v0[62];
  v26 = v0[57];
  v25 = v0[58];
  v27 = v0[55];

  v28 = v0[1];

  return v28();
}

uint64_t sub_24A6C4D2C()
{
  v53 = v0;
  v1 = v0[70];
  v2 = v0[69];
  swift_willThrow();

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v3 = v0[70];
  v4 = v0[52];
  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518D70);

  v6 = v3;
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[70];
    v10 = v0[64];
    v11 = v0[52];
    v12 = swift_slowAlloc();
    v51 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52[0] = v14;
    *v12 = 136315394;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v15 = sub_24A82DB84();
    v17 = sub_24A68761C(v15, v16, v52);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_24A675000, v7, v8, "forceStopSharing for %s failed due to %{public}@", v12, 0x16u);
    sub_24A67F378(v13, &qword_27EF5D010, &qword_24A830E30);
    v20 = v13;
    v5 = v51;
    MEMORY[0x24C21E1D0](v20, -1, -1);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v21 = v0[70];
  v0[75] = v0[68];
  v0[74] = v21;
  if (*(v0[52] + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
      v49 = v0[52];
    }

    v0[76] = sub_24A6797D0(v5, qword_281518D70);

    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[64];
      v25 = v0[52];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52[0] = v27;
      *v26 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
      v28 = sub_24A82DB84();
      v30 = sub_24A68761C(v28, v29, v52);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v26, 0xCu);
      sub_24A6876E8(v27);
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v26, -1, -1);
    }

    v31 = v0[64];
    v32 = v0[52];
    v33 = objc_allocWithZone(MEMORY[0x277D49628]);
    v34 = sub_24A82CA64();
    v0[77] = [v33 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v35 = v0[65];
    v36 = v0[55];
    v37 = v0[51];
    v38 = sub_24A82D354();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v35;
    v39[5] = v37;

    sub_24A7382F4(0, 0, v36, &unk_24A830E28, v39);

    v40 = v0[53];
    v41 = v0[54];
    if (v21)
    {
      LOBYTE(v52[0]) = 4;
      v42 = v21;
      v40(v52, v21);
    }

    else
    {
      LOBYTE(v52[0]) = 2;
      v40(v52, 0);
    }

    v44 = v0[61];
    v43 = v0[62];
    v46 = v0[57];
    v45 = v0[58];
    v47 = v0[55];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_24A6C52EC()
{
  v53 = v0;
  v1 = v0[73];
  v2 = v0[72];
  swift_willThrow();

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v3 = v0[73];
  v4 = v0[52];
  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518D70);

  v6 = v3;
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[73];
    v10 = v0[64];
    v11 = v0[52];
    v12 = swift_slowAlloc();
    v51 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52[0] = v14;
    *v12 = 136315394;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v15 = sub_24A82DB84();
    v17 = sub_24A68761C(v15, v16, v52);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_24A675000, v7, v8, "stopSharing for %s failed due to %{public}@", v12, 0x16u);
    sub_24A67F378(v13, &qword_27EF5D010, &qword_24A830E30);
    v20 = v13;
    v5 = v51;
    MEMORY[0x24C21E1D0](v20, -1, -1);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v21 = v0[73];
  v0[75] = v0[71];
  v0[74] = v21;
  if (*(v0[52] + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
      v49 = v0[52];
    }

    v0[76] = sub_24A6797D0(v5, qword_281518D70);

    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[64];
      v25 = v0[52];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52[0] = v27;
      *v26 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
      v28 = sub_24A82DB84();
      v30 = sub_24A68761C(v28, v29, v52);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v26, 0xCu);
      sub_24A6876E8(v27);
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v26, -1, -1);
    }

    v31 = v0[64];
    v32 = v0[52];
    v33 = objc_allocWithZone(MEMORY[0x277D49628]);
    v34 = sub_24A82CA64();
    v0[77] = [v33 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v35 = v0[65];
    v36 = v0[55];
    v37 = v0[51];
    v38 = sub_24A82D354();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v35;
    v39[5] = v37;

    sub_24A7382F4(0, 0, v36, &unk_24A830E28, v39);

    v40 = v0[53];
    v41 = v0[54];
    if (v21)
    {
      LOBYTE(v52[0]) = 4;
      v42 = v21;
      v40(v52, v21);
    }

    else
    {
      LOBYTE(v52[0]) = 2;
      v40(v52, 0);
    }

    v44 = v0[61];
    v43 = v0[62];
    v46 = v0[57];
    v45 = v0[58];
    v47 = v0[55];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_24A6C58AC()
{
  v40 = v0;
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[52];
  swift_willThrow();

  v5 = v1;
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[78];
    v38 = v0[74];
    v9 = v0[64];
    v10 = v0[52];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39[0] = v13;
    *v11 = 136315394;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0]);
    v14 = sub_24A82DB84();
    v16 = sub_24A68761C(v14, v15, v39);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_24A675000, v6, v7, "stopTemporaryItemLocationShare for %s failed due to %{public}@", v11, 0x16u);
    sub_24A67F378(v12, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    v19 = v38;
  }

  else
  {
    v19 = v0[74];
  }

  v20 = v0[78];
  v21 = v0[65];
  v22 = v0[55];
  v23 = v0[51];
  v24 = sub_24A82D354();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v21;
  v25[5] = v23;

  sub_24A7382F4(0, 0, v22, &unk_24A830E28, v25);

  if (v20)
  {
    v27 = v0[53];
    v26 = v0[54];
    LOBYTE(v39[0]) = 4;
    v28 = v20;
    v27(v39, v20);
  }

  else
  {
    v29 = v0[53];
    v30 = v0[54];
    LOBYTE(v39[0]) = 2;
    v29(v39, 0);
  }

  v32 = v0[61];
  v31 = v0[62];
  v34 = v0[57];
  v33 = v0[58];
  v35 = v0[55];

  v36 = v0[1];

  return v36();
}

uint64_t sub_24A6C5C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6C5C38, 0, 0);
}

uint64_t sub_24A6C5C38()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
    *(v0 + 56) = *(v3 + 80);
    *(v0 + 40) = *(v3 + 72);
    *(v0 + 48) = 0;

    return MEMORY[0x2822009F8](sub_24A6C5D30, v2, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24A6C5D30()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = v1 + 1;
  sub_24A6BF2EC(*(v0 + 16) + ((*(v0 + 56) + 32) & ~*(v0 + 56)) + *(v0 + 40) * v1);
  if (v4 == v2)
  {
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    ++*(v0 + 48);
    v7 = *(v0 + 24);

    return MEMORY[0x2822009F8](sub_24A6C5D30, v7, 0);
  }
}

uint64_t sub_24A6C5E08()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  sub_24A6BAF88((v0 + 19));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

_DWORD *sub_24A6C5E6C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A6C5E88(uint64_t a1, id *a2)
{
  result = sub_24A82CFA4();
  *a2 = 0;
  return result;
}

uint64_t sub_24A6C5F00(uint64_t a1, id *a2)
{
  v3 = sub_24A82CFB4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24A6C5F80@<X0>(uint64_t *a1@<X8>)
{
  sub_24A82CFC4();
  v2 = sub_24A82CF94();

  *a1 = v2;
  return result;
}

uint64_t sub_24A6C5FC4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE28, 255, type metadata accessor for SPPairingSessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C6034(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE28, 255, type metadata accessor for SPPairingSessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C60A4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C6114(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C6184(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C61F4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C6264(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE70, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C62D4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE70, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C6344(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C63B4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_24A82CD84();
}

uint64_t sub_24A6C6400()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_24A82CD74();
}

uint64_t sub_24A6C6480(uint64_t a1)
{
  v2 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C64F0(uint64_t a1)
{
  v2 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6560(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C65F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C6674()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_24A82CD84();
}

uint64_t sub_24A6C66C0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_24A82CD74();
}

uint64_t sub_24A6C6730()
{
  sub_24A82DCC4();
  v1 = *v0;
  swift_getWitnessTable();
  sub_24A82CD74();
  return sub_24A82DD24();
}

uint64_t sub_24A6C67A4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C6814(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6884(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C6918(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C69A8(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C6A18(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6A88(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C6B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C6BAC(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C6C1C(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6C8C(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C6D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C6DA0()
{
  v2 = *v0;
  sub_24A82DCC4();
  sub_24A82CF64();
  return sub_24A82DD24();
}

uint64_t sub_24A6C6E00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_24A82CD64();
}

uint64_t sub_24A6C6E6C(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D170, 255, type metadata accessor for SPBeaconType);
  v3 = sub_24A6C84B4(&qword_27EF5D178, 255, type metadata accessor for SPBeaconType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C6F30(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D120, 255, type metadata accessor for CommandError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C6FA0(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D120, 255, type metadata accessor for CommandError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C7010(uint64_t a1)
{
  v2 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C7080()
{
  sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError);

  return sub_24A82C794();
}

uint64_t sub_24A6C7108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_24A82CD64();
}

uint64_t sub_24A6C7174(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEF8, 255, type metadata accessor for SPBeaconTaskName);
  v3 = sub_24A6C84B4(&qword_27EF5CF00, 255, type metadata accessor for SPBeaconTaskName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C7238(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_281512B90, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_24A6C84B4(&qword_27EF5D198, 255, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C72FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82CF94();

  *a2 = v5;
  return result;
}

uint64_t sub_24A6C7344(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D180, 255, type metadata accessor for FileProtectionType);
  v3 = sub_24A6C84B4(&unk_27EF5D188, 255, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C7408(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D160, 255, type metadata accessor for SPBeaconLocationSource);
  v3 = sub_24A6C84B4(&qword_27EF5D168, 255, type metadata accessor for SPBeaconLocationSource);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C74CC()
{
  sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError);

  return sub_24A82C794();
}

uint64_t sub_24A6C7554()
{
  sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError);

  return sub_24A82C794();
}

uint64_t sub_24A6C75DC()
{
  sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError);

  return sub_24A82C794();
}

uint64_t sub_24A6C7664()
{
  v1 = *v0;
  v2 = sub_24A82CFC4();
  v3 = MEMORY[0x24C21CA70](v2);

  return v3;
}

uint64_t sub_24A6C76A0()
{
  v1 = *v0;
  sub_24A82CFC4();
  sub_24A82D094();
}

uint64_t sub_24A6C76F4()
{
  v1 = *v0;
  sub_24A82CFC4();
  sub_24A82DCC4();
  sub_24A82D094();
  v2 = sub_24A82DD24();

  return v2;
}

uint64_t sub_24A6C7768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24A82CFC4();
  v6 = v5;
  if (v4 == sub_24A82CFC4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6C77F0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_24A6C7B20(a1, a2, *v2);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v14;
    v38 = v11;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        sub_24A6CA090(v24 + v25 * v20, v40, type metadata accessor for FMIPBeaconShareStateOverride);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = sub_24A6CA0F8(v26, type metadata accessor for FMIPBeaconShareStateOverride);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = sub_24A6CA090(v24 + v25 * v44, v37, type metadata accessor for FMIPBeaconShareStateOverride);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_24A6CA090(v24 + v43, v38, type metadata accessor for FMIPBeaconShareStateOverride);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_24A766C48(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = sub_24A6CA02C(v38, v17 + v42 + v32);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_24A6CA02C(v37, v34 + v33);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A6C7B20(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_24A6C7C0C(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_24A6A2D48(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_24A781098(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_24A6A2D48(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_24A82DC44();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_24A785FBC();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v8;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24A82D854();
    MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A844730);
    sub_24A82D914();
    MEMORY[0x24C21C9E0](39, 0xE100000000000000);
    sub_24A82D934();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v28 = *a3;

      v29 = v8;
      v30 = sub_24A6A2D48(v7, v6);
      v32 = v28[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v28[3] < v34)
      {
        sub_24A781098(v34, 1);
        v35 = *a3;
        v30 = sub_24A6A2D48(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v8;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_24A6C7FA0(uint64_t a1, uint64_t a2)
{
  if (sub_24A82CA74() & 1) != 0 && (v4 = type metadata accessor for FMIPBeaconShareStateOverride(0), v5 = *(v4 + 20), (sub_24A82CA74()))
  {
    v6 = *(v4 + 24);
    v7 = *(a1 + v6);
    v11 = *(a2 + v6);
    v8 = v11;
    v12 = v7;
    sub_24A6BB350(v7);
    sub_24A6BB350(v11);
    v9 = static FMIPBeaconShareState.== infix(_:_:)(&v12, &v11);
    sub_24A6BB5A4(v8);
    sub_24A6BB5A4(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s8FMIPCore15FMIPBeaconShareV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5D040, &unk_24A830E50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  if ((sub_24A82CA74() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = type metadata accessor for FMIPBeaconShare(0);
  v18 = v17[5];
  if ((sub_24A82CA74() & 1) == 0)
  {
    goto LABEL_20;
  }

  v19 = v17[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = v17[7];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_20;
  }

  v47 = v5;
  v48 = v17;
  v28 = v17[8];
  v29 = *(a1 + v28);
  v49 = *(a2 + v28);
  v30 = v49;
  v50 = v29;
  sub_24A6BB350(v29);
  sub_24A6BB350(v30);
  v31 = static FMIPBeaconShareState.== infix(_:_:)(&v50, &v49);
  sub_24A6BB5A4(v30);
  sub_24A6BB5A4(v29);
  if ((v31 & 1) == 0)
  {
    goto LABEL_20;
  }

  v32 = v48;
  v33 = v48[9];
  if ((sub_24A82C9E4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v34 = v32[10];
  if ((sub_24A82C9E4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = v32[11];
  v36 = *(v13 + 48);
  sub_24A696E10(a1 + v35, v16);
  sub_24A696E10(a2 + v35, &v16[v36]);
  v37 = v47;
  v38 = *(v47 + 48);
  if (v38(v16, 1, v4) != 1)
  {
    sub_24A696E10(v16, v12);
    if (v38(&v16[v36], 1, v4) != 1)
    {
      (*(v37 + 32))(v8, &v16[v36], v4);
      sub_24A6C84B4(&qword_27EF5D048, 255, MEMORY[0x277CC9260]);
      v41 = sub_24A82CF84();
      v42 = *(v37 + 8);
      v42(v8, v4);
      v42(v12, v4);
      sub_24A67F378(v16, &unk_27EF5CCB8, &qword_24A82FDB0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    (*(v37 + 8))(v12, v4);
LABEL_19:
    sub_24A67F378(v16, &qword_27EF5D040, &unk_24A830E50);
    goto LABEL_20;
  }

  if (v38(&v16[v36], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_24A67F378(v16, &unk_27EF5CCB8, &qword_24A82FDB0);
LABEL_23:
  v43 = v48[12];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v39 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v39)
    {
      return v39 & 1;
    }

    goto LABEL_29;
  }

  if (*v44 != *v46)
  {
    LOBYTE(v39) = 1;
  }

  if ((v39 & 1) == 0)
  {
LABEL_29:
    if (*(a1 + v48[13]) == *(a2 + v48[13]))
    {
      LOBYTE(v39) = *(a1 + v48[14]) ^ *(a2 + v48[14]) ^ 1;
      return v39 & 1;
    }
  }

LABEL_20:
  LOBYTE(v39) = 0;
  return v39 & 1;
}

uint64_t sub_24A6C84B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A6C8500()
{
  result = qword_27EF5CCD8;
  if (!qword_27EF5CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CCD8);
  }

  return result;
}

unint64_t sub_24A6C8558()
{
  result = qword_27EF5CCE0;
  if (!qword_27EF5CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBeaconShareDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMIPBeaconShareDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A6C8774(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_24A6C879C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24A6C87F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_24A6C8858(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMIPBeaconSharingLimits(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBeaconSharingLimits(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FMIPBeaconSharingLimits(uint64_t result, int a2, int a3)
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

uint64_t sub_24A6C89D0()
{
  result = sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24A6C8ED0()
{
  result = qword_27EF5CE50;
  if (!qword_27EF5CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CE50);
  }

  return result;
}

uint64_t sub_24A6C9518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A6CADE0;

  return sub_24A6C161C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6C9614(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A6C0D30(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A6C970C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A6CADE0;

  return sub_24A6C0D78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6C97E0()
{
  v1 = (type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = sub_24A82CAA4();
  v9 = *(*(v8 - 8) + 8);
  v9(&v0[v3], v8);
  v9(&v0[v3 + v1[7]], v8);
  sub_24A6BB5A4(*&v0[v3 + v1[8]]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6C99D4()
{
  v1 = (type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_24A82CAA4();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[7], v7);
  sub_24A6BB5A4(*(v0 + v3 + v1[8]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6C9AF8(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A6C129C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A6C9BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A6CADE0;

  return sub_24A6C09E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6C9CEC(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A6C0D30(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_24A6C9E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_24A6C9F6C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_24A77FF40(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_24A6C9E24(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24A6CA02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CA090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6CA0F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6CA18C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6CA1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A6CADE0;

  return sub_24A6C3210(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6CA2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6CA318(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

uint64_t sub_24A6CA380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6C5C18(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6CA44C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6CA498(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24A6CA4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  v7 = v5;
  return v3(&v7);
}

uint64_t getEnumTagSinglePayload for FMOSActivity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMOSActivity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t FMIPConnectAction.__allocating_init(device:enabled:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  FMIPConnectAction.init(device:enabled:)(a1, a2);
  return v7;
}

uint64_t FMIPConnectAction.init(device:enabled:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled) = a2;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v3 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v2;
}

uint64_t sub_24A6CAF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FMIPConnectAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled) == *(a2 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6CB004()
{
  v1 = sub_24A6FDDC4();
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v2, v3);

  MEMORY[0x24C21C9E0](0x64656C62616E6520, 0xEA0000000000203ALL);

  return v1;
}

uint64_t FMIPConnectAction.__deallocating_deinit()
{
  v0 = *FMIPDeviceAction.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A6CB164(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled) == *(*a2 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, *a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for FMIPConnectAction()
{
  result = qword_27EF5D210;
  if (!qword_27EF5D210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6CB28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemAction.__allocating_init(item:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A6CB364(a1, v5 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v5;
}

uint64_t sub_24A6CB364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CB3F0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPItemAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMIPItemAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v4 = v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  MEMORY[0x24C21C9E0](*(v4 + 44), *(v4 + 45));
  MEMORY[0x24C21C9E0](0x27203A656D616E20, 0xE800000000000000);
  v5 = type metadata accessor for FMIPItem();
  MEMORY[0x24C21C9E0](*&v4[*(v5 + 56)], *&v4[*(v5 + 56) + 8]);
  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A656369766564, 0xE800000000000000);

  return 60;
}

unint64_t sub_24A6CB660()
{
  result = qword_281512BE0;
  if (!qword_281512BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BE0);
  }

  return result;
}

uint64_t type metadata accessor for FMIPItemAction()
{
  result = qword_27EF5D220;
  if (!qword_27EF5D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6CB72C()
{
  result = type metadata accessor for FMIPItem();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FMIPSafeLocationType.sortOrder.getter()
{
  if (*v0)
  {
    return 1;
  }

  else
  {
    return 100;
  }
}

FMIPCore::FMIPSafeLocationType_optional __swiftcall FMIPSafeLocationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24A6CB838@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

FMIPCore::FMIPSafeLocationApprovalState_optional __swiftcall FMIPSafeLocationApprovalState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMIPSafeLocation.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id FMIPSafeLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  v3 = *(v1 + 18);
  v4 = *(v1 + 19);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return v5;
}

uint64_t FMIPSafeLocation.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x120uLL);
  memcpy(a1, (v1 + 40), 0x120uLL);
  return sub_24A6CB940(__dst, v4);
}

uint64_t sub_24A6CB940(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *FMIPSafeLocation.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 40), 0x120uLL);
  sub_24A67F378(__dst, &unk_27EF5E0D0, &qword_24A8319E0);
  return memcpy((v1 + 40), a1, 0x120uLL);
}

uint64_t FMIPSafeLocation.name.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return v1;
}

uint64_t sub_24A6CBA8C()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6CBB84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A6CD808();
  *a2 = result;
  return result;
}

void sub_24A6CBBB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xED00006574617453;
  v8 = 0x6C61766F72707061;
  if (v2 != 4)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007265;
  v10 = 0x696669746E656469;
  if (v2 != 1)
  {
    v10 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_24A6CBC74()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 1701869940;
  v4 = 0x6C61766F72707061;
  if (v1 != 4)
  {
    v4 = 1701667182;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
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

uint64_t sub_24A6CBD30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A6CD808();
  *a1 = result;
  return result;
}

uint64_t sub_24A6CBD64(uint64_t a1)
{
  v2 = sub_24A6CC934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6CBDA0(uint64_t a1)
{
  v2 = sub_24A6CC934();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FMIPSafeLocation.init(safeLocation:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A68808C(v36);
  memcpy(v35, v36, sizeof(v35));
  v9 = a1;
  FMIPLocation.init(safeLocation:)(v9, v37);
  v10 = v37[0];
  v33 = BYTE2(v37[0]);
  v34 = BYTE1(v37[0]);
  v32 = BYTE3(v37[0]);
  v31 = v37[1];
  v11 = v37[2];
  v12 = [v9 identifier];
  sub_24A82CA84();

  v13 = sub_24A82CA54();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  memcpy(v37, v35, 0x120uLL);
  sub_24A67F378(v37, &unk_27EF5E0D0, &qword_24A8319E0);
  memcpy(v35, v36, sizeof(v35));
  v16 = [v9 type];
  v17 = [v9 approvalState];
  v18 = [v9 name];
  if (v18)
  {
    v30 = v16;
    v19 = v15;
    v20 = v13;
    v21 = v10;
    v22 = v18;
    v23 = sub_24A82CFC4();
    v25 = v24;

    v10 = v21;
    v13 = v20;
    v15 = v19;
    v16 = v30;
  }

  else
  {

    v23 = 0;
    v25 = 0;
  }

  if (v17 >= 4)
  {
    v26 = 0;
  }

  else
  {
    v26 = v17;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v10;
  v27 = v33;
  *(a2 + 17) = v34;
  *(a2 + 18) = v27;
  *(a2 + 19) = v32;
  *(a2 + 24) = v31;
  *(a2 + 32) = v11;
  result = memcpy((a2 + 40), v35, 0x120uLL);
  *(a2 + 328) = v16 == 1;
  *(a2 + 329) = v26;
  *(a2 + 336) = v23;
  *(a2 + 344) = v25;
  return result;
}

void *FMIPSafeLocation.init(location:identifier:address:type:approvalState:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v17 = *a5;
  v19 = *a6;
  sub_24A68808C(__src);
  memcpy((a7 + 40), __src, 0x120uLL);
  *(a7 + 16) = v11;
  *(a7 + 17) = v12;
  *(a7 + 18) = v13;
  *(a7 + 19) = v14;
  *(a7 + 24) = v15;
  *(a7 + 32) = v16;
  *a7 = a2;
  *(a7 + 8) = a3;
  memcpy(__dst, a4, sizeof(__dst));
  nullsub_1(__dst);
  memcpy(v22, (a7 + 40), 0x120uLL);
  sub_24A67F378(v22, &unk_27EF5E0D0, &qword_24A8319E0);
  result = memcpy((a7 + 40), __dst, 0x120uLL);
  *(a7 + 328) = v17;
  *(a7 + 329) = v19;
  *(a7 + 336) = 0;
  *(a7 + 344) = 0;
  return result;
}

uint64_t FMIPSafeLocation.init(safeLocation:newLocation:)@<X0>(void *__src@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  sub_24A68808C(__srca);
  *(a3 + 16) = v5;
  *(a3 + 17) = v6;
  *(a3 + 18) = v7;
  *(a3 + 19) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  v11 = __dst[1];
  *a3 = __dst[0];
  *(a3 + 8) = v11;
  memcpy(v18, __srca, sizeof(v18));

  sub_24A6CB940(&__dst[5], &v15);
  sub_24A67F378(v18, &unk_27EF5E0D0, &qword_24A8319E0);
  memcpy((a3 + 40), &__dst[5], 0x120uLL);
  *(a3 + 328) = __dst[41];
  v12 = __dst[42];
  v13 = __dst[43];

  result = sub_24A6CC294(__dst);
  *(a3 + 336) = v12;
  *(a3 + 344) = v13;
  return result;
}

void *FMIPSafeLocation.init(identifier:label:location:placemark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_24A68808C(__src);
  memcpy((a7 + 40), __src, 0x120uLL);
  __dst[0] = 4;
  v14 = a5;
  FMIPLocation.init(location:type:)(v14, __dst, v25);
  v15 = v25[0];
  v16 = BYTE1(v25[0]);
  v17 = BYTE2(v25[0]);
  v21 = BYTE3(v25[0]);
  v20 = v25[1];
  v18 = v25[2];

  FMIPAddress.init(label:placemark:)(a6, a3, a4, v23);

  *a7 = a1;
  *(a7 + 8) = a2;
  memcpy(__dst, v23, sizeof(__dst));
  nullsub_1(__dst);
  memcpy(v25, (a7 + 40), 0x120uLL);
  sub_24A67F378(v25, &unk_27EF5E0D0, &qword_24A8319E0);
  result = memcpy((a7 + 40), __dst, 0x120uLL);
  *(a7 + 16) = v15;
  *(a7 + 17) = v16;
  *(a7 + 18) = v17;
  *(a7 + 19) = v21;
  *(a7 + 24) = v20;
  *(a7 + 32) = v18;
  *(a7 + 328) = 256;
  *(a7 + 336) = a3;
  *(a7 + 344) = a4;
  return result;
}

uint64_t FMIPSafeLocation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D230, &qword_24A8319E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_24A68808C(v50);
  memcpy(v49, v50, sizeof(v49));
  v10 = a1[3];
  v11 = a1[4];
  v39 = a1;
  sub_24A67DF6C(a1, v10);
  sub_24A6CC934();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(v39);
    memcpy(v41, v49, 0x120uLL);
    return sub_24A67F378(v41, &unk_27EF5E0D0, &qword_24A8319E0);
  }

  else
  {
    v12 = v6;
    v38 = a2;
    LOBYTE(v41[0]) = 1;
    v13 = v5;
    v15 = sub_24A82DA44();
    v17 = v16;
    v47[295] = 0;
    sub_24A684C3C();
    sub_24A82DA34();
    memcpy(v46, v48, sizeof(v46));
    memcpy(v47, v49, 0x120uLL);
    sub_24A67F378(v47, &unk_27EF5E0D0, &qword_24A8319E0);
    memcpy(v49, v46, sizeof(v49));
    LOBYTE(v40[0]) = 2;
    sub_24A687EF0();
    sub_24A82DA84();
    v34 = LOBYTE(v41[0]);
    v35 = BYTE1(v41[0]);
    v18 = BYTE2(v41[0]);
    v19 = BYTE3(v41[0]);
    v36 = v41[1];
    v20 = v41[2];
    LOBYTE(v41[0]) = 5;
    v31 = sub_24A82DA04();
    v32 = v19;
    v33 = v18;
    v37 = v21;
    LOBYTE(v41[0]) = 3;
    v22 = sub_24A82DA74();
    LOBYTE(v41[0]) = 4;
    v23 = sub_24A82DA74();
    v24 = v22 == 1;
    v29 = v24;
    (*(v12 + 8))(v9, v13);
    if (v23 >= 4)
    {
      LODWORD(v23) = 0;
    }

    v30 = v23;
    v40[0] = v15;
    v40[1] = v17;
    v25 = v34;
    LOBYTE(v40[2]) = v34;
    BYTE1(v40[2]) = v35;
    BYTE2(v40[2]) = v33;
    BYTE3(v40[2]) = v32;
    v26 = v36;
    v40[3] = v36;
    v40[4] = v20;
    memcpy(&v40[5], v46, 0x120uLL);
    LOBYTE(v40[41]) = v24;
    BYTE1(v40[41]) = v23;
    v27 = v31;
    v28 = v37;
    v40[42] = v31;
    v40[43] = v37;
    memcpy(v38, v40, 0x160uLL);
    sub_24A6CC988(v40, v41);
    sub_24A6876E8(v39);
    v41[0] = v15;
    v41[1] = v17;
    LOBYTE(v41[2]) = v25;
    BYTE1(v41[2]) = v35;
    BYTE2(v41[2]) = v33;
    BYTE3(v41[2]) = v32;
    v41[3] = v26;
    v41[4] = v20;
    memcpy(&v41[5], v46, 0x120uLL);
    v42 = v29;
    v43 = v30;
    v44 = v27;
    v45 = v28;
    return sub_24A6CC294(v41);
  }
}

unint64_t sub_24A6CC934()
{
  result = qword_27EF5D238;
  if (!qword_27EF5D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D238);
  }

  return result;
}

uint64_t FMIPSafeLocation.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D240, &unk_24A8319F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v30 = v1[1];
  v9 = *(v1 + 16);
  v28 = *(v1 + 17);
  v29 = v9;
  v27 = *(v1 + 18);
  v25 = *(v1 + 19);
  v26 = v1[3];
  v10 = v1[4];
  memcpy(v38, v1 + 5, 0x120uLL);
  v24 = *(v1 + 328);
  v23 = *(v1 + 329);
  v11 = v1[43];
  v21 = v1[42];
  v22 = v11;
  v12 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6CC934();
  v13 = v3;
  sub_24A82DD84();
  v37[0] = 1;
  v14 = v31;
  sub_24A82DB04();
  if (!v14)
  {
    v16 = v27;
    v15 = v28;
    v17 = v29;
    memcpy(v37, v38, sizeof(v37));
    v36[295] = 0;
    sub_24A6CB940(v38, v36);
    sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CCD3C();
    sub_24A82DB44();
    memcpy(v36, v37, 0x120uLL);
    sub_24A67F378(v36, &unk_27EF5E0D0, &qword_24A8319E0);
    LOBYTE(v33) = v17;
    BYTE1(v33) = v15;
    BYTE2(v33) = v16;
    BYTE3(v33) = v25;
    v18 = v26;
    v34 = v26;
    v35 = v10;
    v32 = 2;
    sub_24A6CCE5C();
    v19 = v18;
    sub_24A82DB44();

    LOBYTE(v33) = 3;
    sub_24A82DB34();
    LOBYTE(v33) = 4;
    sub_24A82DB34();
    v33 = v21;
    v34 = v22;
    v32 = 5;
    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();
  }

  return (*(v4 + 8))(v7, v13);
}

unint64_t sub_24A6CCD3C()
{
  result = qword_2815145D8;
  if (!qword_2815145D8)
  {
    sub_24A6CCDC0(&unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CCE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145D8);
  }

  return result;
}

uint64_t sub_24A6CCDC0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_24A6CCE08()
{
  result = qword_2815145E8;
  if (!qword_2815145E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145E8);
  }

  return result;
}

unint64_t sub_24A6CCE5C()
{
  result = qword_2815144C8;
  if (!qword_2815144C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144C8);
  }

  return result;
}

unint64_t sub_24A6CCEB0()
{
  result = qword_281512BD0;
  if (!qword_281512BD0)
  {
    sub_24A6CCDC0(&qword_27EF5D248, &unk_24A834970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BD0);
  }

  return result;
}

uint64_t FMIPSafeLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24A82D094();
}

uint64_t FMIPSafeLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CCFB8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CD004()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24A82D094();
}

uint64_t sub_24A6CD00C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore16FMIPSafeLocationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v32 = *(a1 + 17);
  v33 = *(a1 + 16);
  v30 = *(a1 + 19);
  v31 = *(a1 + 18);
  v6 = a1[3];
  v7 = a1[4];
  memcpy(__dst, a1 + 5, sizeof(__dst));
  v26 = *(a1 + 329);
  v23 = a1[42];
  v24 = a1[43];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v28 = *(a1 + 328);
  v29 = *(a2 + 19);
  v13 = a2[3];
  v14 = a2[4];
  memcpy(__src, a2 + 5, 0x120uLL);
  v27 = *(a2 + 328);
  v25 = *(a2 + 329);
  v15 = a2[42];
  v16 = a2[43];
  v22 = v15;
  if ((v4 != v8 || v5 != v9) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v40[0]) = v33;
  BYTE1(v40[0]) = v32;
  BYTE2(v40[0]) = v31;
  BYTE3(v40[0]) = v30;
  v40[1] = v6;
  v40[2] = v7;
  LOBYTE(v38[0]) = v10;
  BYTE1(v38[0]) = v11;
  BYTE2(v38[0]) = v12;
  BYTE3(v38[0]) = v29;
  v38[1] = v13;
  v38[2] = v14;
  v17 = v6;
  v18 = v13;
  v19 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v40, v38);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  memcpy(v40, __dst, 0x120uLL);
  memcpy(&v40[36], __src, 0x120uLL);
  memcpy(v41, __dst, sizeof(v41));
  if (sub_24A6921A8(v41) != 1)
  {
    memcpy(v39, v40, sizeof(v39));
    memcpy(v37, v40, sizeof(v37));
    memcpy(v38, &v40[36], 0x120uLL);
    if (sub_24A6921A8(v38) != 1)
    {
      memcpy(v36, &v40[36], sizeof(v36));
      v20 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v37, v36);
      memcpy(v34, v36, sizeof(v34));
      sub_24A6CB940(__dst, v35);
      sub_24A6CB940(__src, v35);
      sub_24A6CB940(v39, v35);
      sub_24A6CD854(v34);
      memcpy(v35, v37, sizeof(v35));
      sub_24A6CD854(v35);
      memcpy(v36, v40, sizeof(v36));
      sub_24A67F378(v36, &unk_27EF5E0D0, &qword_24A8319E0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    memcpy(v36, v40, sizeof(v36));
    sub_24A6CB940(__dst, v35);
    sub_24A6CB940(__src, v35);
    sub_24A6CB940(v39, v35);
    sub_24A6CD854(v36);
LABEL_11:
    memcpy(v38, v40, sizeof(v38));
    sub_24A67F378(v38, &qword_27EF5D280, &unk_24A831EC0);
    return 0;
  }

  memcpy(v38, &v40[36], 0x120uLL);
  if (sub_24A6921A8(v38) != 1)
  {
    sub_24A6CB940(__dst, v39);
    sub_24A6CB940(__src, v39);
    goto LABEL_11;
  }

  memcpy(v39, v40, sizeof(v39));
  sub_24A6CB940(__dst, v37);
  sub_24A6CB940(__src, v37);
  sub_24A67F378(v39, &unk_27EF5E0D0, &qword_24A8319E0);
LABEL_13:
  if (v28 == v27 && v26 == v25)
  {
    if (v24)
    {
      if (v16 && (v23 == v22 && v24 == v16 || (sub_24A82DC04() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24A6CD438()
{
  result = qword_27EF5D250;
  if (!qword_27EF5D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D250);
  }

  return result;
}

unint64_t sub_24A6CD490()
{
  result = qword_27EF5D258;
  if (!qword_27EF5D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D258);
  }

  return result;
}

unint64_t sub_24A6CD4E8()
{
  result = qword_27EF5D260;
  if (!qword_27EF5D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBatteryStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A6CD5EC(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A6CD60C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_24A6CD654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6CD704()
{
  result = qword_27EF5D268;
  if (!qword_27EF5D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D268);
  }

  return result;
}

unint64_t sub_24A6CD75C()
{
  result = qword_27EF5D270;
  if (!qword_27EF5D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D270);
  }

  return result;
}

unint64_t sub_24A6CD7B4()
{
  result = qword_27EF5D278;
  if (!qword_27EF5D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D278);
  }

  return result;
}

uint64_t sub_24A6CD808()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A6CD8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemGroupAction.__allocating_init(itemGroup:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A6CD998(a1, v5 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup);
  return v5;
}

uint64_t sub_24A6CD998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CDA24(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPItemGroupAction.__deallocating_deinit()
{
  sub_24A6CDA24(v0 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMIPItemGroupAction.description.getter()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v4 = (v0 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup);
  MEMORY[0x24C21C9E0](v4[1], v4[2]);
  MEMORY[0x24C21C9E0](0x27203A656D616E20, 0xE800000000000000);
  MEMORY[0x24C21C9E0](v4[3], v4[4]);
  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A70756F7267, 0xE700000000000000);

  return 60;
}

uint64_t type metadata accessor for FMIPItemGroupAction()
{
  result = qword_27EF5D288;
  if (!qword_27EF5D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6CDCDC()
{
  result = type metadata accessor for FMIPItemGroup();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FMIPItemRole.emoji.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FMIPItemRole.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_24A6CDE04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x696A6F6D65;
  if (v2 != 1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0xE500000000000000;
  v8 = 0x696A6F6D65;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A6CDEF0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6CDF8C()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6CE014()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6CE0AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A6CEC48();
  *a2 = result;
  return result;
}

void sub_24A6CE0DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE500000000000000;
  v5 = 0x696A6F6D65;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A6CE134()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24A6CE188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A6CEC48();
  *a1 = result;
  return result;
}

uint64_t sub_24A6CE1B0(uint64_t a1)
{
  v2 = sub_24A6CE42C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6CE1EC(uint64_t a1)
{
  v2 = sub_24A6CE42C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPItemRole.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D298, &qword_24A831F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6CE42C();
  sub_24A82DD64();
  if (!v2)
  {
    v24 = 1;
    v11 = sub_24A82DA44();
    v13 = v12;
    v14 = v11;
    v23 = 0;
    v21 = sub_24A82DA74();
    v22 = 2;
    v16 = sub_24A82DA44();
    v17 = v9;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    *a2 = v21;
    a2[1] = v14;
    a2[2] = v13;
    a2[3] = v16;
    a2[4] = v19;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A6CE42C()
{
  result = qword_27EF5D2A0;
  if (!qword_27EF5D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2A0);
  }

  return result;
}

uint64_t FMIPItemRole.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5D2A8, &qword_24A831F60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[0] = v1[2];
  v14[1] = v9;
  v14[2] = v1[4];
  v14[3] = v11;
  v12 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6CE42C();
  sub_24A82DD84();
  v17 = 0;
  sub_24A82DB34();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 2;
  sub_24A82DB04();
  v15 = 1;
  sub_24A82DB04();
  return (*(v5 + 8))(v8, v4);
}

uint64_t static FMIPItemRole.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPItemRole.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x24C21D5E0](*v0);
  sub_24A82D094();

  return sub_24A82D094();
}

uint64_t FMIPItemRole.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CE814(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t sub_24A6CE8C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CE948()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x24C21D5E0](*v0);
  sub_24A82D094();

  return sub_24A82D094();
}

uint64_t sub_24A6CE9B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  return sub_24A82DD24();
}

unint64_t sub_24A6CEA38()
{
  result = qword_27EF5D2B0;
  if (!qword_27EF5D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2B0);
  }

  return result;
}

__n128 sub_24A6CEA8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A6CEAA0(uint64_t a1, int a2)
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

uint64_t sub_24A6CEAE8(uint64_t result, int a2, int a3)
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

unint64_t sub_24A6CEB44()
{
  result = qword_27EF5D2B8;
  if (!qword_27EF5D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2B8);
  }

  return result;
}

unint64_t sub_24A6CEB9C()
{
  result = qword_27EF5D2C0;
  if (!qword_27EF5D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2C0);
  }

  return result;
}

unint64_t sub_24A6CEBF4()
{
  result = qword_27EF5D2C8;
  if (!qword_27EF5D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2C8);
  }

  return result;
}

uint64_t sub_24A6CEC48()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A6CEED4()
{
  qword_27EF5D2D0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

const char *FMOSActivity.init(_:parent:options:)@<X0>(const char *description@<X0>, char a2@<W2>, os_activity_t *a3@<X3>, os_activity_flag_t *a4@<X4>, os_activity_t *a5@<X8>)
{
  if (a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!description)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    v6 = _os_activity_create(&dword_24A675000, description, *a3, *a4);
    description = swift_unknownObjectRelease();
    *a5 = v6;
    return description;
  }

LABEL_7:
  __break(1u);
  return description;
}

uint64_t sub_24A6CEFCC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;

  return swift_unknownObjectRetain();
}

uint64_t FMOSActivity.apply(execute:)(const void *a1)
{
  result = _Block_copy(a1);
  v3 = *v1;
  if (v3)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A6A0BB0;
    *(v6 + 24) = v5;
    v9[4] = sub_24A680678;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24A6805E4;
    v9[3] = &unk_285DC1AF8;
    v7 = _Block_copy(v9);

    os_activity_apply(v3, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

const void *static FMOSActivity.start(_:execute:)(const char *a1, int a2, char a3, void *aBlock)
{
  result = _Block_copy(aBlock);
  v7 = result;
  if (qword_281513E40 == -1)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_once();
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = _os_activity_create(&dword_24A675000, a1, qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v9 = _Block_copy(v7);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A6CF738;
  *(v11 + 24) = v10;
  v13[4] = sub_24A6CF73C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A6805E4;
  v13[3] = &unk_285DC1B70;
  v12 = _Block_copy(v13);

  os_activity_apply(v8, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v7);
  result = swift_unknownObjectRelease();
  if (v12)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_24A6CF394()
{
  result = qword_27EF5D2E0;
  if (!qword_27EF5D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2E0);
  }

  return result;
}

unint64_t sub_24A6CF3EC()
{
  result = qword_27EF5D2E8;
  if (!qword_27EF5D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2E8);
  }

  return result;
}

unint64_t sub_24A6CF444()
{
  result = qword_27EF5D2F0;
  if (!qword_27EF5D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2F0);
  }

  return result;
}

unint64_t sub_24A6CF49C()
{
  result = qword_27EF5D2F8;
  if (!qword_27EF5D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2F8);
  }

  return result;
}

BOOL sub_24A6CF52C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24A6CF55C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24A6CF588@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_24A6CF660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24A6CF6BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double FMIPProductType.productInformation.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FMIPProductType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 24) = &type metadata for FMIPZeusProductInformation;
      *(a1 + 32) = &protocol witness table for FMIPZeusProductInformation;
      v16 = swift_allocObject();
      *a1 = v16;
      v17 = *(v14 + 3);
      *(v16 + 48) = *(v14 + 2);
      *(v16 + 64) = v17;
      *(v16 + 80) = *(v14 + 8);
      v18 = *(v14 + 1);
      *(v16 + 16) = *v14;
      *(v16 + 32) = v18;
    }

    else
    {
      sub_24A6CFA6C(v14, v10);
      sub_24A67E964(v10, v8, &qword_27EF5D360, &unk_24A836200);
      v22 = type metadata accessor for FMIPHawkeyeProductInformation();
      if ((*(*(v22 - 8) + 48))(v8, 1, v22) == 1)
      {
        sub_24A67F378(v10, &qword_27EF5D360, &unk_24A836200);
        sub_24A67F378(v8, &qword_27EF5D360, &unk_24A836200);
        *&v18 = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0;
      }

      else
      {
        *(a1 + 24) = v22;
        *(a1 + 32) = &protocol witness table for FMIPHawkeyeProductInformation;
        v23 = sub_24A697E3C(a1);
        sub_24A6D2750(v8, v23, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A67F378(v10, &qword_27EF5D360, &unk_24A836200);
      }
    }
  }

  else
  {
    v19 = *(v14 + 3);
    if (v19)
    {
      *(a1 + 24) = &type metadata for FMIPB389ProductInformation;
      *(a1 + 32) = &protocol witness table for FMIPB389ProductInformation;
      v20 = swift_allocObject();
      *a1 = v20;
      *(v20 + 16) = *v14;
      *(v20 + 32) = *(v14 + 2);
      *(v20 + 40) = v19;
      v18 = *(v14 + 2);
      v21 = *(v14 + 3);
      *(v20 + 48) = v18;
      *(v20 + 64) = v21;
      *(v20 + 80) = *(v14 + 8);
    }

    else
    {
      *(a1 + 32) = 0;
      *&v18 = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return *&v18;
}

uint64_t sub_24A6CFA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPProductType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CFA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CFADC()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6CFB24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v57 - v6;
  v8 = type metadata accessor for FMIPProductType();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  sub_24A67DF6C(a1, v12);
  v14 = (*(v13 + 32))(v12, v13);
  v15 = *MEMORY[0x277D49818];
  v16 = sub_24A82CFC4();
  v18 = v17;
  if (v16 == sub_24A82CFC4() && v18 == v19)
  {
    goto LABEL_15;
  }

  v21 = sub_24A82DC04();

  if (v21)
  {
LABEL_6:

LABEL_16:
    sub_24A698230(a1, v58);
    FMIPHawkeyeProductInformation.init(beacon:)(v58, v7);
    sub_24A6CFA6C(v7, v11);
    goto LABEL_17;
  }

  v22 = *MEMORY[0x277D49808];
  v23 = sub_24A82CFC4();
  v25 = v24;
  if (v23 == sub_24A82CFC4() && v25 == v26)
  {
LABEL_15:

    goto LABEL_16;
  }

  v28 = sub_24A82DC04();

  if (v28)
  {
    goto LABEL_6;
  }

  v29 = *MEMORY[0x277D49810];
  v30 = sub_24A82CFC4();
  v32 = v31;
  if (v30 != sub_24A82CFC4() || v32 != v33)
  {
    v35 = sub_24A82DC04();

    if (v35)
    {

      goto LABEL_20;
    }

    v40 = *MEMORY[0x277D49830];
    v41 = sub_24A82CFC4();
    v43 = v42;
    if (v41 == sub_24A82CFC4() && v43 == v44)
    {
      goto LABEL_26;
    }

    v45 = sub_24A82DC04();

    if ((v45 & 1) == 0)
    {
      v46 = *MEMORY[0x277D49838];
      v47 = sub_24A82CFC4();
      v49 = v48;
      if (v47 == sub_24A82CFC4() && v49 == v50)
      {
LABEL_26:

        goto LABEL_31;
      }

      v51 = sub_24A82DC04();

      if ((v51 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    while (1)
    {
LABEL_31:
      sub_24A82D934();
      __break(1u);
LABEL_32:
      v52 = *MEMORY[0x277D49828];
      v53 = sub_24A82CFC4();
      v55 = v54;
      if (v53 == sub_24A82CFC4() && v55 == v56)
      {
      }

      else
      {
        sub_24A82DC04();
      }
    }
  }

LABEL_20:
  v36 = a1[3];
  v37 = a1[4];
  sub_24A67DF6C(a1, v36);
  if ((*(v37 + 160))(v36, v37))
  {
    sub_24A698230(a1, v57);
    FMIPZeusProductInformation.init(beacon:)(v57, v58);
  }

  else
  {
    sub_24A698230(a1, v57);
    FMIPB389ProductInformation.init(beacon:)(v57, v58);
  }

  v38 = v58[3];
  *(v11 + 2) = v58[2];
  *(v11 + 3) = v38;
  *(v11 + 8) = v59;
  v39 = v58[1];
  *v11 = v58[0];
  *(v11 + 1) = v39;
LABEL_17:
  swift_storeEnumTagMultiPayload();
  sub_24A6D2750(v11, a2, type metadata accessor for FMIPProductType);
  return sub_24A6876E8(a1);
}

uint64_t sub_24A6D0128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  if (![a1 isPosh])
  {
    v12 = [a1 type];
    v13 = *MEMORY[0x277D49808];
    v14 = sub_24A82CFC4();
    v16 = v15;
    if (v14 == sub_24A82CFC4() && v16 == v17)
    {
      goto LABEL_14;
    }

    v19 = sub_24A82DC04();

    if ((v19 & 1) == 0)
    {
      v12 = [a1 type];
      v20 = *MEMORY[0x277D49818];
      v21 = sub_24A82CFC4();
      v23 = v22;
      if (v21 == sub_24A82CFC4() && v23 == v24)
      {
LABEL_14:

        goto LABEL_15;
      }

      v25 = sub_24A82DC04();

      if ((v25 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    FMIPHawkeyeProductInformation.init(beacon:)(a1, v7);
    sub_24A6CFA6C(v7, a2);
    type metadata accessor for FMIPProductType();
    return swift_storeEnumTagMultiPayload();
  }

  v8 = [a1 productInformation];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v8 isAirTag];

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:

  type metadata accessor for FMIPProductType();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;

  return swift_storeEnumTagMultiPayload();
}

BOOL FMIPProductType.isZeus.getter()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  sub_24A6D236C(v4, type metadata accessor for FMIPProductType);
  return v5;
}

BOOL _s8FMIPCore15FMIPProductTypeO10supportsR1Sbvg_0()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_24A67F378(v4, &qword_27EF5D360, &unk_24A836200);
  }

  else
  {
    sub_24A6D236C(v4, type metadata accessor for FMIPProductType);
  }

  return EnumCaseMultiPayload < 2;
}

BOOL FMIPProductType.isAccessory.getter()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_24A67F378(v4, &qword_27EF5D360, &unk_24A836200);
  }

  else
  {
    sub_24A6D236C(v4, type metadata accessor for FMIPProductType);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t FMIPProductType.coreLocationBeaconType.getter()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v4);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_24A67F378(v4, &qword_27EF5D360, &unk_24A836200);
    return 3;
  }

  else
  {
    sub_24A6D236C(v4, type metadata accessor for FMIPProductType);
    return 1;
  }
}

uint64_t FMIPProductType.hash(into:)()
{
  v1 = type metadata accessor for FMIPHawkeyeProductInformation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for FMIPProductType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v16 + 3);
      v35 = *(v16 + 2);
      v36 = v18;
      v37 = *(v16 + 8);
      v19 = *(v16 + 1);
      v33 = *v16;
      v34 = v19;
      MEMORY[0x24C21D5E0](1);
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v28 = v33;
      v29 = v34;
      FMIPZeusProductInformation.hash(into:)();
      return sub_24A6D23CC(&v33);
    }

    else
    {
      sub_24A6CFA6C(v16, v12);
      MEMORY[0x24C21D5E0](2);
      sub_24A67E964(v12, v10, &qword_27EF5D360, &unk_24A836200);
      if ((*(v2 + 48))(v10, 1, v1) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        sub_24A6D2750(v10, v5, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)();
        sub_24A6D236C(v5, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      return sub_24A67F378(v12, &qword_27EF5D360, &unk_24A836200);
    }
  }

  else
  {
    v26 = *v16;
    v21 = *(v16 + 3);
    v27 = *(v16 + 2);
    v22 = *(v16 + 3);
    v23 = *(v16 + 2);
    v24 = v22;
    v25 = *(v16 + 8);
    MEMORY[0x24C21D5E0](0);
    if (v21)
    {
      v28 = v26;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      *&v29 = v27;
      *(&v29 + 1) = v21;
      sub_24A82DCE4();
      FMIPB389ProductInformation.hash(into:)();
      v35 = v30;
      v36 = v31;
      v37 = v32;
      v33 = v28;
      v34 = v29;
      return sub_24A6D2420(&v33);
    }

    else
    {
      return sub_24A82DCE4();
    }
  }
}

uint64_t FMIPProductType.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPProductType.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6D0AB0()
{
  sub_24A82DCC4();
  FMIPProductType.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6D0AF4()
{
  sub_24A82DCC4();
  FMIPProductType.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6D0B34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1937073530;
  if (v2 != 1)
  {
    v5 = 0x6579656B776168;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 959984482;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1937073530;
  if (*a2 != 1)
  {
    v8 = 0x6579656B776168;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 959984482;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A6D0C1C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D0CB0()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6D0D30()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D0DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A6D2B14();
  *a2 = result;
  return result;
}

void sub_24A6D0DF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1937073530;
  if (v2 != 1)
  {
    v5 = 0x6579656B776168;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 959984482;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A6D0EF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x800000024A843480;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0x800000024A843480;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6D0F94()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D1014()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6D1080()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D10FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A6D115C(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A843480;
  v3 = 1701869940;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_24A6D1198()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_24A6D11D0@<X0>(char *a1@<X8>)
{
  v2 = sub_24A82D9C4();

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

uint64_t sub_24A6D1240(uint64_t a1)
{
  v2 = sub_24A6D2474();

  return MEMORY[0x2821FE718](a1, v2);
}