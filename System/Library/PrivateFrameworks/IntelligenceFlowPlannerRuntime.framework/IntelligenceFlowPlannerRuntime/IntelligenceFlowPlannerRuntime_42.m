uint64_t sub_22C70C2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C70C380(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22C70C400()
{
  v1 = v0[191];
  v2 = v0[151];
  v3 = v0[148];
  v4 = v0[147];
}

void sub_22C70C434()
{
  v1 = v0[191];
  v2 = v0[151];
  v3 = v0[148];
}

uint64_t sub_22C70C484()
{
  v2 = v0[55];
  result = v0[56];
  v3 = v0[54];
  v5 = v0[50];
  v4 = v0[51];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[40];
  v11 = v0[37];
  v13 = v0[33];
  v12 = v0[34];
  return result;
}

void sub_22C70C4AC()
{
  v1 = v0[180];
  v2 = v0[177];
  v3 = v0[172];
  v4 = v0[166];
}

void sub_22C70C4C0()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[151];
  v4 = v0[148];
  v5 = v0[147];
}

uint64_t sub_22C70C4D8()
{
  result = v0;
  v3 = *(v1 - 136);
  v4 = *(v1 - 112);
  return result;
}

void sub_22C70C4FC()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[85];
  v10 = v0[84];
  v11 = v0[83];
  v12 = v0[82];
  v13 = v0[81];
  v14 = v0[80];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[74];
  v19 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[61];
  v30 = v0[60];
  v31 = v0[59];
  v32 = v0[58];
}

uint64_t sub_22C70C5D8()
{
  v2 = *(v1 + 496);
  v3 = *(*(v1 + 504) + 96);
  return v0;
}

uint64_t sub_22C70C5E8()
{
  v5 = v1[48];
  v4 = v1[49];
  *(v2 - 256) = v0;
  *(v2 - 248) = v4;
  v6 = v1[45];
  *(v2 - 240) = v5;
  *(v2 - 232) = v6;
  v7 = v1[41];
  *(v2 - 224) = v1[42];
  *(v2 - 216) = v7;
  v8 = v1[39];
  *(v2 - 208) = v1[40];
  *(v2 - 200) = v8;
  v9 = v1[37];
  *(v2 - 192) = v1[38];
  *(v2 - 184) = v9;
  v10 = v1[35];
  *(v2 - 176) = v1[36];
  *(v2 - 168) = v10;
  v11 = v1[31];
  *(v2 - 160) = v1[34];
  *(v2 - 152) = v11;
  v12 = v1[25];
  *(v2 - 144) = v1[28];
  *(v2 - 136) = v12;
  v13 = v1[19];
  *(v2 - 128) = v1[22];
  *(v2 - 120) = v13;
  v14 = v1[13];
  *(v2 - 112) = v1[16];
  *(v2 - 104) = v14;
}

uint64_t sub_22C70C658()
{
  v3 = v0[51];
  *(v1 - 256) = v0[52];
  *(v1 - 248) = v3;
  v5 = v0[46];
  v4 = v0[47];
  *(v1 - 240) = v0[50];
  *(v1 - 232) = v4;
  v6 = v0[45];
  *(v1 - 224) = v5;
  *(v1 - 216) = v6;
  v7 = v0[41];
  *(v1 - 208) = v0[42];
  *(v1 - 200) = v7;
  v8 = v0[37];
  *(v1 - 192) = v0[38];
  *(v1 - 184) = v8;
  v10 = v0[30];
  v9 = v0[31];
  *(v1 - 176) = v0[34];
  *(v1 - 168) = v9;
  v11 = v0[29];
  *(v1 - 160) = v10;
  *(v1 - 152) = v11;
  v12 = v0[25];
  *(v1 - 144) = v0[26];
  *(v1 - 136) = v12;
  v13 = v0[23];
  *(v1 - 128) = v0[24];
  *(v1 - 120) = v13;
  *(v1 - 112) = v0[22];
}

uint64_t sub_22C70C6C0(uint64_t a1)
{
  *(a1 + 8) = sub_22C6EB148;
  v2 = v1[23];
  v3 = v1[19];
  v4 = v1[20];
  return v1[18];
}

void sub_22C70C6F4()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v7 = v0[42];
}

uint64_t sub_22C70C71C(uint64_t a1)
{
  *(a1 + 8) = sub_22C6D3768;
  v2 = v1[151];
  v3 = v1[114];
  return v1[111];
}

uint64_t sub_22C70C754()
{
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[116];

  return sub_22C70C2F0(v7, type metadata accessor for ValueResolver);
}

uint64_t sub_22C70C79C()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_22C70C874(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 56);

  return sub_22C90699C();
}

uint64_t sub_22C70C8B0()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  result = v0[45];
  v8 = v0[43];
  v9 = v0[34];
  v10 = v0[31];
  v11 = v0[32];
  v12 = *(v0[44] + 8);
  return result;
}

uint64_t sub_22C70C8D8()
{
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[31];
  v5 = v0[28];

  return type metadata accessor for Interpreter2();
}

uint64_t sub_22C70C98C()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_22C70C9AC()
{
  v3 = v0[114];
  v4 = v0[56];
  v5 = v0[53];
  v6 = v0[54];
  v7 = v0[52];
  *(v1 - 120) = v0[57];
  *(v1 - 112) = v7;
  v8 = v0[38];
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
}

uint64_t sub_22C70C9DC(uint64_t a1)
{
  v5 = v2 + *(a1 + 28);
  v6 = v1 + *(v3 + 28);

  return sub_22C378AB0(v5, v6);
}

uint64_t sub_22C70C9FC()
{
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
  v6 = *(v1 - 112);
}

void sub_22C70CA38()
{
  v2 = v0[187];
  v3 = v0[165];
  v4 = v0[150];
  v5 = v0[148];
  *(v1 - 136) = v0[147];
  *(v1 - 128) = v4;
}

void sub_22C70CA60()
{
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
}

uint64_t sub_22C70CA6C()
{
  v3 = *(v1 + 736);
  v4 = *(v1 + 728);
  v5 = *(v3 + 40);
  return *(v0 + 56) + *(v3 + 72) * v2;
}

void sub_22C70CA88()
{
  v1 = *(v0 - 496);
  v2 = *(v0 - 376);
  v3 = *(v0 - 400);
}

uint64_t sub_22C70CAA4()
{
  v2 = v0[40];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[33];
  v7 = v0[30];
}

void sub_22C70CAF4()
{
  v3 = v1[154];
  v4 = v1[153];
  *(v2 - 128) = v1[151];
  *(v2 - 120) = v0;
  v5 = v1[148];
  v6 = v1[147];
}

uint64_t sub_22C70CB34()
{
  v6 = *v5;
  *(v4 + 80) = v1;
  *(v4 + 88) = v0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v6;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  sub_22C36C730(v2, v4 + 96);
  sub_22C36FF94(v3);
}

void sub_22C70CB8C()
{
  *(v2 - 120) = *(*(v2 - 104) + 184);
  *(v2 - 112) = v0;
  v4 = *(*(v2 - 104) + 88);
  v5 = *(*(v2 - 104) + 80);
}

void sub_22C70CBD4()
{
  v1 = v0[150];
  v2 = v0[148];
  v3 = v0[147];
}

void sub_22C70CBE4()
{
  v1 = v0[150];
  v2 = v0[148];
  v3 = v0[147];
}

void sub_22C70CBF4()
{
  v1 = v0[112];
  v2 = v0[11];
  v3 = v0[8];
}

uint64_t sub_22C70CC04()
{
  result = v0[62];
  v2 = v0[60];
  v3 = *(v0[61] + 8);
  return result;
}

uint64_t sub_22C70CC24()
{
  v2 = *(v0 - 208);

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22C70CC58()
{
  v1 = v0[180];
  v2 = v0[177];
  v3 = v0[172];
  v4 = v0[166];
  v5 = v0[129];
}

void sub_22C70CC7C(uint64_t a1@<X8>)
{
  *(v3 - 176) = v1;
  *(v3 - 168) = a1;
  v4 = v2[33];
  *(v3 - 160) = v2[34];
  *(v3 - 152) = v4;
  v5 = v2[31];
  *(v3 - 144) = v2[32];
  *(v3 - 136) = v5;
}

uint64_t sub_22C70CC94()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  result = v0[51];
  v5 = v0[48];
  v6 = *(v0[49] + 8);
  return result;
}

void sub_22C70CCAC()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 536);
  v3 = *(v0 - 544);
}

uint64_t sub_22C70CCC4()
{
  v3 = *(*(v1 + 808) + 48);
  v4 = *(v0 + 8);
  return v2;
}

void sub_22C70CCDC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 496);
  v2 = *(v1 + 504);
  v4 = *(a1 + 8);
}

void sub_22C70CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 136);

  sub_22C6A5BEC(v32 - 136, v34, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C70CD28()
{
  v2 = v0[180];
  v3 = v0[177];
  v4 = v0[43];
  v5 = v0[12];

  return sub_22C90878C();
}

uint64_t sub_22C70CD4C()
{
  v2 = v0[173];
  v3 = v0[151];
  v4 = v0[147];
  v5 = v0[7];
  v6 = v0[5];
}

uint64_t sub_22C70CD70()
{
  v2 = *(v0 - 184);

  return sub_22C90878C();
}

uint64_t sub_22C70CD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 312);

  return sub_22C70C2F0(v4, a2);
}

void sub_22C70CDA8(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;

  sub_22C3B74E0(0, v1, 0);
}

void sub_22C70CDCC(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  sub_22C3B74E0(0, v1, 0);
}

uint64_t sub_22C70CE2C()
{
  result = v0[134];
  v2 = v0[132];
  v3 = *(v0[133] + 8);
  return result;
}

uint64_t sub_22C70CE40()
{
  result = v0[146];
  v2 = v0[144];
  v3 = *(v0[145] + 8);
  return result;
}

uint64_t sub_22C70CE8C()
{
  result = v0;
  v3 = *(v1 - 208);
  v4 = *(v1 - 464);
  return result;
}

uint64_t sub_22C70CEAC()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_22C70CF94()
{
  result = v0 + 69;
  v3 = *(v1 - 144) | 0x8000000000000000;
  return result;
}

uint64_t static InterpreterError.errorDomain.getter()
{
  swift_beginAccess();

  return sub_22C36BBCC();
}

uint64_t static InterpreterError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27D9BF868 = a1;
  off_27D9BF870 = a2;
}

uint64_t (*static InterpreterError.errorDomain.modify())()
{
  sub_22C36BBCC();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_22C70D0AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27D9BF870;
  *a1 = qword_27D9BF868;
  a1[1] = v2;
}

uint64_t sub_22C70D0FC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27D9BF868 = v2;
  off_27D9BF870 = v1;
}

uint64_t InterpreterError.errorCode.getter()
{
  v0 = type metadata accessor for InterpreterError();
  v1 = sub_22C36985C(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C36BBCC();
  sub_22C70D42C(v7, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 2;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_22C5F889C(v6);
      result = 8;
      break;
    case 2:
      sub_22C5F889C(v6);
      result = 9;
      break;
    case 3:
      sub_22C5F889C(v6);
      result = 10;
      break;
    case 4:
      sub_22C5F889C(v6);
      result = 11;
      break;
    case 5:
      sub_22C5F889C(v6);
      result = 16;
      break;
    case 6:
      v11 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      v12 = sub_22C9093BC();
      sub_22C36985C(v12);
      (*(v13 + 8))(v6 + v11);
      v14 = sub_22C90941C();
      sub_22C36985C(v14);
      (*(v15 + 8))(v6);
      result = 19;
      break;
    case 7:
      sub_22C5F889C(v6);
      result = 29;
      break;
    case 8:
      sub_22C5F889C(v6);
      result = 30;
      break;
    case 9:
      sub_22C5F889C(v6);
      result = 31;
      break;
    case 10:
      sub_22C5F889C(v6);
      result = 34;
      break;
    case 11:
      sub_22C5F889C(v6);
      result = 37;
      break;
    case 12:
      sub_22C5F889C(v6);
      result = 39;
      break;
    case 13:
      return result;
    case 14:
      result = 12;
      break;
    case 15:
      result = 14;
      break;
    case 16:
      result = 15;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 21;
      break;
    case 20:
      result = 22;
      break;
    case 21:
      result = 23;
      break;
    case 22:
      result = 24;
      break;
    case 23:
      result = 25;
      break;
    case 24:
      result = 27;
      break;
    case 25:
      result = 26;
      break;
    case 26:
      result = 28;
      break;
    case 27:
      result = 32;
      break;
    case 28:
      result = 33;
      break;
    case 29:
      result = 35;
      break;
    case 30:
      result = 36;
      break;
    case 31:
      result = 38;
      break;
    case 32:
      result = 40;
      break;
    case 33:
      result = 41;
      break;
    default:
      sub_22C5F889C(v6);
      result = 1;
      break;
  }

  return result;
}

uint64_t type metadata accessor for InterpreterError()
{
  result = qword_27D9BF880;
  if (!qword_27D9BF880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C70D42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterpreterError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InterpreterError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_22C90941C();
  v3 = sub_22C369824(v2);
  v75 = v4;
  v76 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v77 = sub_22C9093BC();
  v10 = sub_22C369824(v77);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C901FAC();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = v25 - v24;
  sub_22C36BA0C();
  v27 = type metadata accessor for InterpreterError();
  v28 = sub_22C36985C(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v33 = (v32 - v31);
  sub_22C70D42C(v1, v32 - v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = *v33;
      v41 = *(v33 + 1);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      v43 = 0x64496C6F6F74;
      v44 = 0xE600000000000000;
      goto LABEL_11;
    case 2u:
      v40 = *v33;
      v41 = *(v33 + 1);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      v43 = 0x6574656D61726170;
      v44 = 0xEB00000000644972;
LABEL_11:
      *(inited + 32) = v43;
      *(inited + 40) = v44;
      goto LABEL_12;
    case 3u:
      v45 = *v33;
      v46 = *(v33 + 1);
      v47 = *(v33 + 2);
      v48 = *(v33 + 3);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_22C90F870;
      *(v49 + 32) = 0x644965707974;
      *(v49 + 40) = 0xE600000000000000;
      v50 = MEMORY[0x277D837D0];
      *(v49 + 48) = v45;
      *(v49 + 56) = v46;
      *(v49 + 72) = v50;
      *(v49 + 80) = 0x644965736163;
      *(v49 + 120) = v50;
      *(v49 + 88) = 0xE600000000000000;
      *(v49 + 96) = v47;
      *(v49 + 104) = v48;
      goto LABEL_2;
    case 4u:
      (*(v12 + 32))(v17, v33, v77);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_22C90F800;
      *(v35 + 32) = 0x65756C6176;
      *(v35 + 40) = 0xE500000000000000;
      v36 = sub_22C90938C();
      *(v35 + 72) = MEMORY[0x277D837D0];
      *(v35 + 48) = v36;
      *(v35 + 56) = v37;
      sub_22C909F0C();
      v38 = sub_22C70EB90();
      v39(v38);
      return v1;
    case 5u:
    case 0xBu:
      sub_22C5F889C(v33);
      goto LABEL_2;
    case 6u:
      v64 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      (*(v75 + 32))(v9, v33, v76);
      (*(v12 + 32))(v17, &v33[v64], v77);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_22C90F870;
      *(v65 + 32) = 1701869940;
      *(v65 + 40) = 0xE400000000000000;
      v66 = sub_22C9093EC();
      v1 = MEMORY[0x277D837D0];
      *(v65 + 48) = v66;
      *(v65 + 56) = v67;
      *(v65 + 72) = v1;
      *(v65 + 80) = 0x65756C6176;
      *(v65 + 88) = 0xE500000000000000;
      v68 = sub_22C90938C();
      *(v65 + 120) = v1;
      *(v65 + 96) = v68;
      *(v65 + 104) = v69;
      sub_22C909F0C();
      v70 = sub_22C70EB90();
      v71(v70);
      (*(v75 + 8))(v9, v76);
      return v1;
    case 7u:
    case 8u:
      v72 = sub_22C36B474();
      v73(v72);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      goto LABEL_18;
    case 9u:
      v58 = sub_22C36B474();
      v59(v58);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      v57 = v60 | 2;
      goto LABEL_18;
    case 0xAu:
      v61 = sub_22C36B474();
      v62(v61);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      v57 = v63 + 18;
      goto LABEL_18;
    case 0xCu:
      v40 = *v33;
      v41 = *(v33 + 1);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = 0xD00000000000001BLL;
      *(inited + 40) = 0x800000022C933B90;
LABEL_12:
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v40;
      *(inited + 56) = v41;
      goto LABEL_2;
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
LABEL_2:
      v1 = sub_22C909F0C();
      break;
    default:
      v51 = sub_22C36B474();
      v52(v51);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      v57 = v56 - 1;
LABEL_18:
      *(v54 + 32) = v57;
      *(v54 + 40) = v55;
      v74 = sub_22C901F9C();
      *(v53 + 72) = MEMORY[0x277D84CC0];
      *(v53 + 48) = v74;
      v1 = sub_22C909F0C();
      (*(v21 + 8))(v26, v18);
      break;
  }

  return v1;
}

uint64_t static InterpreterError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v177 = a1;
  v178 = a2;
  v2 = sub_22C90941C();
  v3 = sub_22C369824(v2);
  v171 = v4;
  v172 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v170 = v8 - v7;
  sub_22C36BA0C();
  v9 = sub_22C9093BC();
  v10 = sub_22C369824(v9);
  v173 = v11;
  v174 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v162 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v169 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v161 = &v154 - v18;
  sub_22C36BA0C();
  v19 = sub_22C901FAC();
  v175 = sub_22C369824(v19);
  v176 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v175);
  sub_22C3698E4();
  v160 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v159 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v158 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v157 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  v156 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v155 = &v154 - v33;
  sub_22C36BA0C();
  v34 = type metadata accessor for InterpreterError();
  v35 = sub_22C36985C(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v163 = v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  v168 = v40;
  sub_22C369930();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  v167 = v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  v165 = v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  v164 = v46;
  sub_22C369930();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v154 - v49;
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  v166 = v51;
  sub_22C369930();
  v53 = MEMORY[0x28223BE20](v52);
  v55 = (&v154 - v54);
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v154 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = (&v154 - v60);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = (&v154 - v63);
  v65 = MEMORY[0x28223BE20](v62);
  v67 = (&v154 - v66);
  MEMORY[0x28223BE20](v65);
  v69 = &v154 - v68;
  v70 = sub_22C3A5908(&qword_27D9BF878, &qword_22C923418);
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v70 - 8);
  v74 = &v154 - v73;
  v75 = &v154 + *(v72 + 56) - v73;
  sub_22C70D42C(v177, &v154 - v73);
  v177 = v75;
  sub_22C70D42C(v178, v75);
  v178 = v74;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v108 = sub_22C38BF84();
      sub_22C70D42C(v108, v67);
      v92 = *v67;
      v91 = v67[1];
      if (sub_22C387440() != 1)
      {
        goto LABEL_75;
      }

      goto LABEL_31;
    case 2u:
      v94 = sub_22C38BF84();
      sub_22C70D42C(v94, v64);
      v92 = *v64;
      v91 = v64[1];
      if (sub_22C387440() != 2)
      {
        goto LABEL_75;
      }

      goto LABEL_31;
    case 3u:
      v95 = sub_22C38BF84();
      sub_22C70D42C(v95, v61);
      v97 = *v61;
      v96 = v61[1];
      v99 = v61[2];
      v98 = v61[3];
      v100 = v177;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_75:

LABEL_76:
        sub_22C70E7DC(v55);
        goto LABEL_77;
      }

      v101 = *v100;
      v102 = v100[1];
      v104 = v100[2];
      v103 = v100[3];
      if (v97 == v101 && v96 == v102)
      {
      }

      else
      {
        sub_22C3806B8();
        v106 = sub_22C90B4FC();

        if ((v106 & 1) == 0)
        {

          goto LABEL_92;
        }
      }

      if (v99 == v104 && v98 == v103)
      {
LABEL_72:

LABEL_70:
        v119 = v55;
        goto LABEL_71;
      }

      v152 = sub_22C90B4FC();

      if (v152)
      {
        goto LABEL_70;
      }

LABEL_92:
      v119 = v55;
LABEL_93:
      sub_22C5F889C(v119);
LABEL_77:
      v87 = 0;
      return v87 & 1;
    case 4u:
      v83 = sub_22C38BF84();
      sub_22C70D42C(v83, v58);
      if (sub_22C388900() == 4)
      {
        v85 = v173;
        v84 = v174;
        v86 = v161;
        (*(v173 + 32))(v161, v75, v174);
        v87 = sub_22C9093AC();
        v88 = *(v85 + 8);
        v88(v86, v84);
        v88(v58, v84);
        goto LABEL_82;
      }

      (*(v173 + 8))(v58, v174);
      goto LABEL_76;
    case 5u:
      sub_22C70D42C(v178, v55);
      v114 = *v55;
      v113 = v55[1];
      if (sub_22C387440() != 5)
      {

        v55 = v178;
        goto LABEL_76;
      }

      v115 = *v67;
      v116 = v67[1];
      if (v114 == v115 && v113 == v116)
      {

        v119 = v178;
      }

      else
      {
        sub_22C36BBCC();
        v118 = sub_22C90B4FC();

        v119 = v178;
        if ((v118 & 1) == 0)
        {
          goto LABEL_93;
        }
      }

LABEL_71:
      sub_22C5F889C(v119);
      v87 = 1;
      return v87 & 1;
    case 6u:
      v120 = sub_22C38BF84();
      v121 = v166;
      sub_22C70D42C(v120, v166);
      v122 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      v123 = v177;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        (*(v173 + 8))(v121 + v122, v174);
        (*(v171 + 8))(v121, v172);
        goto LABEL_76;
      }

      v124 = v171;
      (*(v171 + 32))(v170, v123, v172);
      v125 = v173;
      v126 = v174;
      v127 = *(v173 + 32);
      v127(v169, v121 + v122, v174);
      v128 = v123 + v122;
      v129 = v162;
      v127(v162, v128, v126);
      v130 = sub_22C90940C();
      v131 = *(v124 + 8);
      v132 = v121;
      v133 = v172;
      v131(v132, v172);
      if (v130)
      {
        v134 = v169;
        v87 = sub_22C9093AC();
        v135 = *(v125 + 8);
        v135(v129, v126);
        v135(v134, v126);
        v131(v170, v133);
        goto LABEL_82;
      }

      v153 = *(v125 + 8);
      v153(v129, v126);
      v153(v169, v126);
      v131(v170, v133);
      goto LABEL_92;
    case 7u:
      v107 = sub_22C38BF84();
      sub_22C70D42C(v107, v50);
      if (sub_22C388900() != 7)
      {
        goto LABEL_58;
      }

      sub_22C70EB68();
      v82 = v156;
      goto LABEL_55;
    case 8u:
      v139 = sub_22C38BF84();
      v50 = v164;
      sub_22C70D42C(v139, v164);
      v140 = v177;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_58;
      }

      v142 = v175;
      v141 = v176;
      v143 = v157;
      (*(v176 + 32))(v157, v140, v175);
      v87 = sub_22C901F6C();
      v144 = *(v141 + 8);
      v144(v143, v142);
      v145 = sub_22C3806B8();
      (v144)(v145);
      goto LABEL_82;
    case 9u:
      v93 = sub_22C38BF84();
      v50 = v165;
      sub_22C70D42C(v93, v165);
      if (sub_22C388900() != 9)
      {
        goto LABEL_58;
      }

      sub_22C70EB68();
      v82 = v158;
      goto LABEL_55;
    case 0xAu:
      v136 = sub_22C38BF84();
      v50 = v167;
      sub_22C70D42C(v136, v167);
      if (sub_22C388900() != 10)
      {
        goto LABEL_58;
      }

      sub_22C70EB68();
      v82 = v159;
      goto LABEL_55;
    case 0xBu:
      v80 = sub_22C38BF84();
      v50 = v168;
      sub_22C70D42C(v80, v168);
      if (sub_22C388900() != 11)
      {
LABEL_58:
        v77 = *(v176 + 8);
        v78 = v50;
        goto LABEL_59;
      }

      sub_22C70EB68();
      v82 = v160;
LABEL_55:
      v137 = v175;
      v81(v82, v75, v175);
      sub_22C3806B8();
      v87 = sub_22C901F6C();
      v138 = *(v69 + 1);
      v138(v82, v137);
      v138(v50, v137);
      goto LABEL_82;
    case 0xCu:
      v89 = sub_22C38BF84();
      v90 = v163;
      sub_22C70D42C(v89, v163);
      v92 = *v90;
      v91 = v90[1];
      if (sub_22C387440() != 12)
      {
        goto LABEL_75;
      }

LABEL_31:
      v109 = *v67;
      v110 = v67[1];
      if (v92 == v109 && v91 == v110)
      {
        goto LABEL_72;
      }

      sub_22C36BBCC();
      v112 = sub_22C90B4FC();

      if ((v112 & 1) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_70;
    case 0xDu:
      v79 = sub_22C70EB78() == 13;
      goto LABEL_68;
    case 0xEu:
      v79 = sub_22C70EB78() == 14;
      goto LABEL_68;
    case 0xFu:
      v79 = sub_22C70EB78() == 15;
      goto LABEL_68;
    case 0x10u:
      v79 = sub_22C70EB78() == 16;
      goto LABEL_68;
    case 0x11u:
      v79 = sub_22C70EB78() == 17;
      goto LABEL_68;
    case 0x12u:
      v79 = sub_22C70EB78() == 18;
      goto LABEL_68;
    case 0x13u:
      v79 = sub_22C70EB78() == 19;
      goto LABEL_68;
    case 0x14u:
      v79 = sub_22C70EB78() == 20;
      goto LABEL_68;
    case 0x15u:
      v79 = sub_22C70EB78() == 21;
      goto LABEL_68;
    case 0x16u:
      v79 = sub_22C70EB78() == 22;
      goto LABEL_68;
    case 0x17u:
      v79 = sub_22C70EB78() == 23;
      goto LABEL_68;
    case 0x18u:
      v79 = sub_22C70EB78() == 24;
      goto LABEL_68;
    case 0x19u:
      v79 = sub_22C70EB78() == 25;
      goto LABEL_68;
    case 0x1Au:
      v79 = sub_22C70EB78() == 26;
      goto LABEL_68;
    case 0x1Bu:
      v79 = sub_22C70EB78() == 27;
      goto LABEL_68;
    case 0x1Cu:
      v79 = sub_22C70EB78() == 28;
      goto LABEL_68;
    case 0x1Du:
      v79 = sub_22C70EB78() == 29;
      goto LABEL_68;
    case 0x1Eu:
      v79 = sub_22C70EB78() == 30;
      goto LABEL_68;
    case 0x1Fu:
      v79 = sub_22C70EB78() == 31;
      goto LABEL_68;
    case 0x20u:
      v79 = sub_22C70EB78() == 32;
      goto LABEL_68;
    case 0x21u:
      v79 = sub_22C70EB78() == 33;
LABEL_68:
      v55 = v178;
      if (!v79)
      {
        goto LABEL_76;
      }

      goto LABEL_70;
    default:
      v76 = sub_22C38BF84();
      sub_22C70D42C(v76, v69);
      if (sub_22C388900())
      {
        v77 = *(v176 + 8);
        v78 = v69;
LABEL_59:
        v77(v78, v175);
        goto LABEL_76;
      }

      v148 = v175;
      v147 = v176;
      (*(v176 + 32))(v155, v75, v175);
      v87 = sub_22C901F6C();
      v149 = *(v147 + 8);
      v150 = sub_22C3806B8();
      v149(v150);
      (v149)(v69, v148);
LABEL_82:
      sub_22C5F889C(v55);
      return v87 & 1;
  }
}

uint64_t sub_22C70E7DC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF878, &qword_22C923418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C70E844(uint64_t a1)
{
  v2 = sub_22C70EB10(&qword_27D9BF8A8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C70E89C(uint64_t a1)
{
  v2 = sub_22C70EB10(&qword_27D9BF8A8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C70E938()
{
  v0 = sub_22C901FAC();
  if (v1 <= 0x3F)
  {
    v2 = sub_22C70EA18();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_22C70EA40();
    if (v4 > 0x3F)
    {
      return v2;
    }

    v2 = sub_22C9093BC();
    if (v5 > 0x3F)
    {
      return v2;
    }

    sub_22C70EA9C();
    if (v6 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_22C70EA18()
{
  result = qword_27D9BF890;
  if (!qword_27D9BF890)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D9BF890);
  }

  return result;
}

void sub_22C70EA40()
{
  if (!qword_27D9BF898)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF898);
    }
  }
}

void sub_22C70EA9C()
{
  if (!qword_27D9BF8A0)
  {
    sub_22C90941C();
    sub_22C9093BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF8A0);
    }
  }
}

uint64_t sub_22C70EB10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InterpreterError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C70EB78()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

void sub_22C70EBA4()
{
  sub_22C36BA7C();
  v41 = v0;
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BD7E0, &qword_22C9192F0);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  v9 = sub_22C9094EC();
  v10 = sub_22C369824(v9);
  v39 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = v38 - v18;
  sub_22C51E290();
  sub_22C70F1D0();
  v21 = v20;
  sub_22C51E290();
  sub_22C70F408();
  sub_22C51E290();
  sub_22C70F644();
  v23 = v22;
  sub_22C51E290();
  v40 = v2;
  sub_22C710384();
  sub_22C36D0A8(v8, 1, v9);
  if (v31)
  {
    sub_22C376B84(v8, &qword_27D9BD7E0, &qword_22C9192F0);
  }

  else
  {
    v38[1] = v23;
    LODWORD(v41) = v21;
    v24 = v39;
    v25 = *(v39 + 32);
    v25(v19, v8, v9);
    v26 = sub_22C51E290();
    sub_22C710DF4(v26);
    v25(v16, v19, v9);
    v27 = *(v24 + 88);
    v28 = sub_22C36A724();
    v30 = v29(v28);
    v31 = v30 == *MEMORY[0x277D72CB8] || v30 == *MEMORY[0x277D72C70];
    if (!v31 && v30 != *MEMORY[0x277D72CA8] && v30 != *MEMORY[0x277D72D00] && v30 != *MEMORY[0x277D72CD8] && v30 != *MEMORY[0x277D72C98])
    {
      v35 = *(v24 + 8);
      v36 = sub_22C36A724();
      v37(v36);
    }
  }

  sub_22C36CC48();
}

void sub_22C70EE70()
{
  sub_22C36BA7C();
  v1 = sub_22C90952C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v7 = sub_22C9093BC();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C370654();
  sub_22C712EB8();
  v13 = sub_22C90905C();
  v14 = 0;
  v19 = *(v13 + 16);
  while (1)
  {
    if (v19 == v14)
    {
LABEL_7:

      sub_22C36CC48();
      return;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    (*(v10 + 16))(v0, v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v7);
    sub_22C90935C();
    if (qword_27D9BA708 != -1)
    {
      swift_once();
    }

    sub_22C37AA60(v1, qword_27D9BF8B0);
    sub_22C713EB4(&qword_28142FA78, MEMORY[0x277D72D58]);
    v15 = sub_22C90A0BC();
    v16 = *(v4 + 8);
    v17 = sub_22C36A724();
    v18(v17);
    (*(v10 + 8))(v0, v7);
    ++v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_22C70F0F4()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9BF8B0);
  v1 = sub_22C37AA60(v0, qword_27D9BF8B0);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022C92EB40;
  v2[4] = 0xD000000000000012;
  v2[5] = 0x800000022C92EB70;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

void sub_22C70F1D0()
{
  sub_22C36BA7C();
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C37FDDC();
  v15 = sub_22C9067CC();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C370654();
  sub_22C36A204();
  sub_22C70FC3C();
  sub_22C36D0A8(v0, 1, v15);
  if (v21)
  {
    sub_22C376B84(v0, &qword_27D9BF8C8, &qword_22C923558);
  }

  else
  {
    v22 = sub_22C374EF8();
    v23(v22);
    v24 = sub_22C712A4C();
    (*(v18 + 8))(v1, v15);
    if (v24)
    {
      goto LABEL_8;
    }
  }

  sub_22C903F8C();
  v25 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C383098();
  if (os_log_type_enabled(v25, v26))
  {
    *sub_22C36D240() = 0;
    sub_22C377620(&dword_22C366000, v27, v28, "Provided statementId does not contain a search request with an on-screen reference parameter");
    sub_22C36D69C();
  }

  (*(v5 + 8))(v10, v2);
LABEL_8:
  sub_22C36CC48();
}

void sub_22C70F408()
{
  sub_22C36BA7C();
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C37FDDC();
  v15 = sub_22C9067CC();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C370654();
  sub_22C36A204();
  sub_22C70FC3C();
  sub_22C36D0A8(v0, 1, v15);
  if (v21)
  {
    sub_22C376B84(v0, &qword_27D9BF8C8, &qword_22C923558);
  }

  else
  {
    v22 = sub_22C374EF8();
    v23(v22);
    v24 = sub_22C7116FC();
    (*(v18 + 8))(v1, v15);
    if (v24 != 2)
    {
      goto LABEL_8;
    }
  }

  sub_22C903F8C();
  v25 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C383098();
  if (os_log_type_enabled(v25, v26))
  {
    *sub_22C36D240() = 0;
    sub_22C377620(&dword_22C366000, v27, v28, "provided statementId is not a part of a hydration context request");
    sub_22C36D69C();
  }

  (*(v5 + 8))(v10, v2);
LABEL_8:
  sub_22C36CC48();
}

void sub_22C70F644()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v69 = &v64 - v5;
  sub_22C36BA0C();
  v6 = sub_22C9067CC();
  v7 = sub_22C369824(v6);
  v70 = v8;
  v71 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v67 = v12 - v11;
  sub_22C36BA0C();
  v13 = sub_22C9063DC();
  v14 = sub_22C369824(v13);
  v72 = v15;
  v73 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v68 = v18 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v65 = &v64 - v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  v66 = v23;
  sub_22C36BA0C();
  v24 = sub_22C90952C();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C3A5908(&qword_27D9BF8D0, &unk_22C923560);
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  v38 = &v64 - v37;
  v39 = sub_22C90681C();
  v40 = sub_22C369824(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  sub_22C37FDDC();
  sub_22C70FC3C();
  sub_22C36D0A8(v38, 1, v39);
  if (v45)
  {
    sub_22C376B84(v38, &qword_27D9BF8D0, &unk_22C923560);
  }

  else
  {
    (*(v42 + 32))(v0, v38, v39);
    sub_22C90680C();
    if ((*(v27 + 88))(v32, v24) == *MEMORY[0x277D72D28])
    {
      (*(v27 + 8))(v32, v24);
      v46 = v66;
      sub_22C903F8C();
      v47 = sub_22C9063CC();
      v48 = sub_22C90AABC();
      if (os_log_type_enabled(v47, v48))
      {
        *sub_22C36D240() = 0;
        sub_22C376864(&dword_22C366000, v49, v50, "Implicit AER search");
        sub_22C3699EC();
      }

      (*(v72 + 8))(v46, v73);
      (*(v42 + 8))(v0, v39);
      goto LABEL_20;
    }

    (*(v42 + 8))(v0, v39);
    (*(v27 + 8))(v32, v24);
  }

  sub_22C36A204();
  v51 = v69;
  sub_22C70FC3C();
  v52 = v71;
  sub_22C36D0A8(v51, 1, v71);
  v53 = v70;
  if (v45)
  {
    sub_22C376B84(v51, &qword_27D9BF8C8, &qword_22C923558);
LABEL_14:
    v55 = v68;
    sub_22C903F8C();
    v56 = sub_22C9063CC();
    v57 = sub_22C90AABC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_22C36D240();
      *v58 = 0;
      _os_log_impl(&dword_22C366000, v56, v57, "Found no valid AER request", v58, 2u);
      sub_22C3699EC();
    }

    (*(v72 + 8))(v55, v73);
    goto LABEL_20;
  }

  v54 = v67;
  (*(v70 + 32))(v67, v51, v52);
  if (sub_22C71113C() == 2)
  {
    (*(v53 + 8))(v54, v52);
    goto LABEL_14;
  }

  v59 = v65;
  sub_22C903F8C();
  v60 = sub_22C9063CC();
  v61 = sub_22C90AABC();
  if (os_log_type_enabled(v60, v61))
  {
    *sub_22C36D240() = 0;
    sub_22C376864(&dword_22C366000, v62, v63, "Explicit AER search");
    sub_22C3699EC();
  }

  (*(v72 + 8))(v59, v73);
  (*(v53 + 8))(v54, v52);
LABEL_20:
  sub_22C36CC48();
}

void sub_22C70FC3C()
{
  sub_22C36BA7C();
  v124 = v1;
  v132 = v2;
  v133 = v3;
  v120 = v4;
  v6 = v5;
  v7 = sub_22C9063DC();
  v8 = sub_22C369824(v7);
  v128 = v9;
  v129 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v127 = v13 - v12;
  sub_22C36BA0C();
  v119 = sub_22C90682C();
  v14 = sub_22C369824(v119);
  v117 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v118 = v19 - v18;
  sub_22C36BA0C();
  v20 = sub_22C901FAC();
  v21 = sub_22C369824(v20);
  v130 = v22;
  v131 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v126 = v25 - v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  v121 = v28;
  v29 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  v123 = &v114 - v33;
  sub_22C36BA0C();
  v122 = sub_22C908CEC();
  v34 = sub_22C369824(v122);
  v116 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v115 = v39 - v38;
  sub_22C36BA0C();
  v40 = sub_22C90654C();
  v41 = sub_22C369824(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v46 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v46);
  v48 = *(v47 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v49);
  sub_22C370654();
  v50 = sub_22C9070DC();
  v51 = sub_22C369824(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v58 = v57 - v56;
  sub_22C646D68(v6, v59, v60, v61, v62, v63, v64, v65, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v6);
  sub_22C36D0A8(v0, 1, v50);
  if (v66)
  {
    sub_22C376B84(v0, &qword_27D9BAA18, &qword_22C911C40);
LABEL_9:
    v76 = v130;
    v75 = v131;
    goto LABEL_10;
  }

  (*(v53 + 32))(v58, v0, v50);
  sub_22C90702C();
  v67 = *(v43 + 88);
  v68 = sub_22C37F370();
  if (v69(v68) != *MEMORY[0x277D1DA48])
  {
    v80 = sub_22C38745C();
    v81(v80);
    v82 = *(v43 + 8);
    v83 = sub_22C37F370();
    v84(v83);
    goto LABEL_9;
  }

  v70 = *(v43 + 8);
  v71 = sub_22C37F370();
  v72(v71);
  v73 = v121;
  sub_22C9068FC();
  v74 = v123;
  sub_22C3A97AC();
  v76 = v130;
  v75 = v131;
  (*(v130 + 8))(v73, v131);
  v77 = v122;
  sub_22C36D0A8(v74, 1, v122);
  if (v66)
  {
    v78 = sub_22C38745C();
    v79(v78);
    sub_22C376B84(v74, &qword_27D9BF740, &unk_22C923A40);
  }

  else
  {
    v98 = v115;
    v99 = v116;
    (*(v116 + 32))(v115, v74, v77);
    v100 = v118;
    sub_22C908CCC();
    (*(v99 + 8))(v98, v77);
    v101 = sub_22C38745C();
    v102(v101);
    v103 = v117;
    v104 = (*(v117 + 88))(v100, v119);
    if (v104 == *v120)
    {
      v105 = *(v103 + 96);
      v106 = sub_22C36A724();
      v107(v106);
      v108 = v132(0);
      sub_22C36BBA8(v108);
      v110 = v133;
      (*(v109 + 32))(v133, v100, v108);
      v96 = v110;
      v97 = 0;
      v95 = v108;
      goto LABEL_14;
    }

    v111 = *(v103 + 8);
    v112 = sub_22C36A724();
    v113(v112);
  }

LABEL_10:
  v85 = v127;
  sub_22C903F8C();
  v86 = v126;
  (*(v76 + 16))(v126, v125, v75);
  v87 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C383098();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v134 = v90;
    *v89 = 136315138;
    sub_22C713EB4(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v91 = sub_22C90B47C();
    v93 = v92;
    (*(v76 + 8))(v86, v75);
    v94 = sub_22C36F9F4(v91, v93, &v134);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_22C366000, v87, v53, v124, v89, 0xCu);
    sub_22C36FF94(v90);
    sub_22C36D69C();
    sub_22C3699EC();
  }

  else
  {

    (*(v76 + 8))(v86, v75);
  }

  (*(v128 + 8))(v85, v129);
  v95 = v132(0);
  v96 = v133;
  v97 = 1;
LABEL_14:
  sub_22C36C640(v96, v97, 1, v95);
  sub_22C36CC48();
}

void sub_22C710384()
{
  sub_22C36BA7C();
  v141 = v1;
  v142 = v0;
  v3 = v2;
  v4 = sub_22C907D6C();
  v5 = sub_22C369824(v4);
  v130 = v6;
  v131 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v129 = v10 - v9;
  sub_22C36BA0C();
  v11 = sub_22C90952C();
  v12 = sub_22C369824(v11);
  v132 = v13;
  v133 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v140 = (v16 - v17);
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v139 = v19;
  sub_22C36BA0C();
  v128 = sub_22C90941C();
  v20 = sub_22C369824(v128);
  v127 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v126 = v25 - v24;
  sub_22C36BA0C();
  v26 = sub_22C9063DC();
  v27 = sub_22C369824(v26);
  v137 = v28;
  v138 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369ABC();
  v134 = v31 - v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  v135 = v34;
  v35 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  v40 = &v126 - v39;
  v41 = sub_22C90769C();
  v42 = sub_22C369824(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v49 = v48 - v47;
  v50 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v51 = sub_22C369914(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369ABC();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v126 - v58;
  v60 = sub_22C908ABC();
  v61 = sub_22C369824(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C369838();
  v68 = v67 - v66;
  v136 = v3;
  sub_22C907D5C();
  sub_22C908ADC();
  v69 = v49;
  v70 = v60;
  (*(v44 + 8))(v69, v41);
  v71 = sub_22C37F370();
  sub_22C711034(v71, v72);
  sub_22C36D0A8(v56, 1, v60);
  if (v87)
  {
    sub_22C376B84(v56, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C90735C();
    sub_22C3A5F00();
    v73 = swift_allocError();
    v74 = v144;
    v75 = v143[1];
    *v76 = v143[0];
    *(v76 + 16) = v75;
    *(v76 + 32) = v74;
    swift_willThrow();
    sub_22C376B84(v59, &qword_27D9BC0B0, &unk_22C912AD0);
    v77 = v135;
    sub_22C903F8C();
    v78 = v73;
    v79 = sub_22C9063CC();
    v80 = sub_22C90AACC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = v73;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v84;
      *v82 = v84;
      _os_log_impl(&dword_22C366000, v79, v80, "Unable to resolve context into valid tool to check parameters: %@", v81, 0xCu);
      sub_22C376B84(v82, &qword_27D9BB158, qword_22C910FD0);
      sub_22C3699EC();
      sub_22C36D69C();
    }

    else
    {
    }

    (*(v137 + 8))(v77, v138);
LABEL_22:
    v119 = sub_22C9094EC();
    v120 = v141;
    goto LABEL_25;
  }

  sub_22C376B84(v59, &qword_27D9BC0B0, &unk_22C912AD0);
  (*(v63 + 32))(v68, v56, v60);
  v85 = sub_22C908AAC();
  MEMORY[0x28223BE20](v85);
  *(&v126 - 2) = v136;
  sub_22C6B0844();

  v86 = sub_22C90981C();
  v88 = sub_22C36D0A8(v40, 1, v86);
  v89 = v63;
  if (v87)
  {
    sub_22C376B84(v40, &qword_27D9BC0C0, &unk_22C911FA0);
    v90 = v134;
    sub_22C903F8C();
    v92 = v129;
    v91 = v130;
    v93 = v131;
    (*(v130 + 16))(v129, v136, v131);
    v94 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C383098();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v135 = v68;
      v98 = v97;
      *&v143[0] = v97;
      *v96 = 136315138;
      v99 = sub_22C907D2C();
      v100 = v92;
      v102 = v101;
      (*(v91 + 8))(v100, v93);
      v103 = sub_22C36F9F4(v99, v102, v143);

      *(v96 + 4) = v103;
      _os_log_impl(&dword_22C366000, v94, v68, "Unable to extract typeIdentifiers from parameter: %s", v96, 0xCu);
      sub_22C36FF94(v98);
      sub_22C36D69C();
      sub_22C3699EC();

      (*(v137 + 8))(v134, v138);
      (*(v89 + 8))(v135, v70);
    }

    else
    {

      (*(v91 + 8))(v92, v93);
      (*(v137 + 8))(v90, v138);
      (*(v89 + 8))(v68, v60);
    }

    v121 = v141;
    v119 = sub_22C9094EC();
    v120 = v121;
LABEL_25:
    sub_22C36C640(v120, 1, 1, v119);
LABEL_26:
    sub_22C36CC48();
    return;
  }

  v134 = v60;
  v135 = v68;
  v131 = v63;
  v104 = v126;
  MEMORY[0x2318B6CE0](v88);
  sub_22C36BBA8(v86);
  (*(v105 + 8))(v40, v86);
  v106 = sub_22C9093DC();
  (*(v127 + 8))(v104, v128);
  v107 = 0;
  v108 = 1 << *(v106 + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & *(v106 + 56);
  v111 = (v108 + 63) >> 6;
  v112 = v132;
  v113 = v133;
  v142 = v132 + 16;
  v137 = v132 + 88;
  v138 = v132 + 32;
  LODWORD(v136) = *MEMORY[0x277D72D50];
  v114 = (v132 + 8);
  v116 = v139;
  v115 = v140;
  if (v110)
  {
    while (1)
    {
      v117 = v107;
LABEL_18:
      (*(v112 + 16))(v116, *(v106 + 48) + *(v112 + 72) * (__clz(__rbit64(v110)) | (v117 << 6)), v113);
      (*(v112 + 32))(v115, v116, v113);
      v118 = (*(v112 + 88))(v115, v113);
      if (v118 == v136)
      {
        break;
      }

      v110 &= v110 - 1;
      (*v114)(v115, v113);
      v107 = v117;
      if (!v110)
      {
        goto LABEL_15;
      }
    }

    (*(v131 + 8))(v135, v134);

    (*(v112 + 96))(v115, v113);
    v122 = *v115;
    v123 = sub_22C9094EC();
    swift_projectBox();
    sub_22C36BBA8(v123);
    v125 = v141;
    (*(v124 + 16))(v141);
    sub_22C36C640(v125, 0, 1, v123);

    goto LABEL_26;
  }

LABEL_15:
  while (1)
  {
    v117 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if (v117 >= v111)
    {
      (*(v131 + 8))(v135, v134);

      goto LABEL_22;
    }

    v110 = *(v106 + 56 + 8 * v117);
    ++v107;
    if (v110)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22C711034(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7110A4()
{
  v0 = sub_22C9097DC();
  v2 = v1;
  if (v0 == sub_22C907D2C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22C90B4FC();
  }

  return v5 & 1;
}

uint64_t sub_22C71113C()
{
  v0 = sub_22C9063DC();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90906C();
  v52 = *(v4 - 8);
  v5 = v52[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = sub_22C9093BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v44 - v22;
  v24 = MEMORY[0x2318B3C90](v21);
  sub_22C6053C8(v24, v14);

  if (sub_22C370B74(v14, 1, v15) == 1)
  {
    sub_22C376B84(v14, &qword_27D9BB908, &qword_22C910960);
    return 2;
  }

  (*(v16 + 32))(v23, v14, v15);
  (*(v16 + 16))(v20, v23, v15);
  if ((*(v16 + 88))(v20, v15) != *MEMORY[0x277D729E0])
  {
    v41 = *(v16 + 8);
    v41(v23, v15);
    v41(v20, v15);
    return 2;
  }

  v49 = v3;
  (*(v16 + 96))(v20, v15);
  v25 = *v20;
  v26 = swift_projectBox();
  v27 = v52;
  v28 = v52[2];
  v28(v10, v26, v4);

  v29 = *(sub_22C90905C() + 16);

  if (!v29)
  {
    (v27[1])(v10, v4);
    (*(v16 + 8))(v23, v15);
    return 2;
  }

  sub_22C903F8C();
  v28(v8, v10, v4);
  v30 = sub_22C9063CC();
  v31 = sub_22C90AABC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v46 = v32;
    v48 = swift_slowAlloc();
    v53 = v48;
    *v32 = 136315138;
    v47 = v31;
    sub_22C90905C();
    v45 = MEMORY[0x2318B7AD0]();
    v34 = v33;

    v35 = v52[1];
    v35(v8, v4);
    v36 = v35;
    v37 = sub_22C36F9F4(v45, v34, &v53);

    v38 = v46;
    *(v46 + 1) = v37;
    v39 = v38;
    _os_log_impl(&dword_22C366000, v30, v47, "Found valid typeIdentifiers on search query: %s", v38, 0xCu);
    v40 = v48;
    sub_22C36FF94(v48);
    MEMORY[0x2318B9880](v40, -1, -1);
    MEMORY[0x2318B9880](v39, -1, -1);

    (*(v50 + 8))(v49, v51);
    v36(v10, v4);
  }

  else
  {

    v43 = v52[1];
    v43(v8, v4);
    (*(v50 + 8))(v49, v51);
    v43(v10, v4);
  }

  (*(v16 + 8))(v23, v15);
  return 1;
}

uint64_t sub_22C7116FC()
{
  v160 = sub_22C9063DC();
  v0 = *(v160 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v160);
  v172 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v143 = &v127 - v5;
  MEMORY[0x28223BE20](v4);
  v140 = &v127 - v6;
  v158 = sub_22C90977C();
  v166 = *(v158 - 8);
  v7 = *(v166 + 64);
  MEMORY[0x28223BE20](v158);
  v157 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22C9094AC();
  v150 = *(v156 - 8);
  v9 = *(v150 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90952C();
  v142 = *(v11 - 8);
  v12 = *(v142 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v159 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v163 = (&v127 - v16);
  MEMORY[0x28223BE20](v15);
  v176 = &v127 - v17;
  v175 = sub_22C90919C();
  v141 = *(v175 - 8);
  v18 = *(v141 + 64);
  MEMORY[0x28223BE20](v175);
  v164 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C90906C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v144 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v152 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v127 - v28;
  v30 = sub_22C9093BC();
  v177 = *(v30 - 8);
  v31 = *(v177 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v139 = &v127 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v178 = &v127 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v165 = &v127 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = (&v127 - v42);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v127 - v45;
  v47 = MEMORY[0x2318B3C90](v44);
  sub_22C6053C8(v47, v29);

  if (sub_22C370B74(v29, 1, v30) == 1)
  {
    sub_22C376B84(v29, &qword_27D9BB908, &qword_22C910960);
LABEL_30:
    v105 = v172;
    sub_22C903F8C();
    v106 = sub_22C9063CC();
    v107 = sub_22C90AABC();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_22C366000, v106, v107, "SearchTool has empty requested properties, no hydration contexts to check", v108, 2u);
      MEMORY[0x2318B9880](v108, -1, -1);

      (*(v0 + 8))(v105, v160);
      return 2;
    }

    (*(v0 + 8))(v105, v160);
    return 2;
  }

  v48 = v177;
  (*(v177 + 32))(v46, v29, v30);
  v49 = *(v48 + 16);
  v161 = v48 + 16;
  v49(v43, v46, v30);
  v173 = *(v48 + 88);
  v174 = v48 + 88;
  if (v173(v43, v30) != *MEMORY[0x277D729E0])
  {
    v104 = *(v177 + 8);
    v104(v46, v30);
    v104(v43, v30);
    goto LABEL_30;
  }

  v171 = v49;
  v133 = v46;
  v50 = *(v177 + 96);
  v154 = v177 + 96;
  v153 = v50;
  v50(v43, v30);
  v51 = *v43;
  v52 = swift_projectBox();
  v53 = v144;
  (*(v21 + 16))(v144, v52, v20);

  v54 = v21;
  v55 = *(sub_22C90905C() + 16);

  if (!v55)
  {
    (*(v54 + 8))(v53, v20);
    (*(v177 + 8))(v133, v30);
    goto LABEL_30;
  }

  v128 = v34;
  v129 = v54;
  v130 = v20;
  v131 = v0;
  result = sub_22C90905C();
  v172 = result;
  v58 = v164;
  v57 = v165;
  v59 = v159;
  v60 = v176;
  v170 = *(result + 16);
  if (v170)
  {
    v61 = 0;
    v169 = &v172[(*(v177 + 80) + 32) & ~*(v177 + 80)];
    v168 = *MEMORY[0x277D72A38];
    v62 = (v177 + 8);
    v149 = (v141 + 16);
    v148 = (v142 + 16);
    v167 = (v142 + 88);
    v147 = *MEMORY[0x277D72D18];
    v162 = (v142 + 8);
    v137 = (v142 + 32);
    v146 = (v142 + 96);
    v136 = (v150 + 16);
    v135 = (v166 + 8);
    v134 = (v150 + 8);
    v145 = *MEMORY[0x277D72D28];
    v142 += 104;
    v150 = v141 + 8;
    v141 = 0x800000022C933910;
    v132 = "searchAnswerValue";
    v138 = v11;
    v151 = (v177 + 8);
    do
    {
      if (v61 >= *(v172 + 2))
      {
        __break(1u);
        return result;
      }

      v166 = *(v177 + 72);
      v63 = v171;
      v171(v57, &v169[v166 * v61], v30);
      v63(v178, v57, v30);
      v64 = v178;
      v65 = v173(v178, v30);
      if (v65 == v168)
      {
        v153(v64, v30);
        v66 = *v64;
        v67 = swift_projectBox();
        (*v149)(v58, v67, v175);

        sub_22C9090AC();
        (*v148)(v59, v60, v11);
        v68 = *v167;
        v69 = (*v167)(v59, v11);
        v70 = v60;
        if (v69 == v147)
        {
          (*v146)(v59, v11);
          v71 = *v59;
          v72 = swift_projectBox();
          v73 = v155;
          v74 = v156;
          (*v136)(v155, v72, v156);

          v75 = swift_allocObject();
          v76 = v157;
          sub_22C90948C();
          v77 = sub_22C9096FC();
          v79 = v78;
          (*v135)(v76, v158);
          v75[2] = v77;
          v75[3] = v79;
          v80 = sub_22C90949C();
          v82 = v81;
          v83 = v73;
          v11 = v138;
          v84 = v74;
          v59 = v159;
          (*v134)(v83, v84);
          v85 = *v162;
          (*v162)(v70, v11);
          v75[4] = v80;
          v75[5] = v82;
          v86 = v163;
          *v163 = v75;
          v57 = v165;
          v87 = v145;
          (*v142)(v86, v145, v11);
        }

        else
        {
          v85 = *v162;
          (*v162)(v59, v11);
          v86 = v163;
          (*v137)(v163, v70, v11);
          v87 = v145;
        }

        v91 = v68(v86, v11) == v87;
        v62 = v151;
        if (v91)
        {
          (*v146)(v86, v11);
          v90 = *(*v86 + 32);
          v89 = *(*v86 + 40);

          v91 = v90 == 0xD000000000000015 && v141 == v89;
          v58 = v164;
          if (v91)
          {

            v60 = v176;
          }

          else
          {
            v92 = sub_22C90B4FC();

            v60 = v176;
            if ((v92 & 1) == 0)
            {
              (*v150)(v58, v175);
              v57 = v165;
              result = (*v62)(v165, v30);
              goto LABEL_25;
            }
          }

          v93 = sub_22C90914C();
          if (*(v93 + 16))
          {
            v94 = sub_22C36E2BC(0xD000000000000010, v132 | 0x8000000000000000);
            if (v95)
            {
              v109 = v94;

              v110 = v152;
              v111 = v171;
              v171(v152, *(v93 + 56) + v109 * v166, v30);

              sub_22C36C640(v110, 0, 1, v30);
              sub_22C376B84(v110, &qword_27D9BB908, &qword_22C910960);
              v112 = v140;
              sub_22C903F8C();
              v113 = v139;
              v114 = v165;
              v111(v139, v165, v30);
              v115 = sub_22C9063CC();
              v116 = sub_22C90AABC();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v179 = v118;
                *v117 = 136315138;
                v111(v128, v113, v30);
                v119 = sub_22C90A1AC();
                v120 = v113;
                v122 = v121;
                v123 = v58;
                v124 = *v151;
                (*v151)(v120, v30);
                v125 = sub_22C36F9F4(v119, v122, &v179);

                *(v117 + 4) = v125;
                _os_log_impl(&dword_22C366000, v115, v116, "Found valid hydrationContext on property: %s", v117, 0xCu);
                sub_22C36FF94(v118);
                MEMORY[0x2318B9880](v118, -1, -1);
                MEMORY[0x2318B9880](v117, -1, -1);

                (*(v131 + 8))(v140, v160);
                (*v150)(v123, v175);
                v124(v165, v30);
                (*(v129 + 8))(v144, v130);
                v124(v133, v30);
              }

              else
              {

                v126 = *v151;
                (*v151)(v113, v30);
                (*(v131 + 8))(v112, v160);
                (*v150)(v58, v175);
                v126(v114, v30);
                (*(v129 + 8))(v144, v130);
                v126(v133, v30);
              }

              return 1;
            }
          }

          (*v150)(v58, v175);
          v57 = v165;
          (*v62)(v165, v30);
          v96 = v152;
          sub_22C36C640(v152, 1, 1, v30);
          result = sub_22C376B84(v96, &qword_27D9BB908, &qword_22C910960);
        }

        else
        {
          v58 = v164;
          (*v150)(v164, v175);
          (*v62)(v57, v30);
          result = (v85)(v86, v11);
          v60 = v176;
        }
      }

      else
      {
        v88 = *v62;
        (*v62)(v57, v30);
        result = v88(v64, v30);
        v60 = v176;
      }

LABEL_25:
      ++v61;
    }

    while (v170 != v61);
  }

  v97 = v143;
  sub_22C903F8C();
  v98 = sub_22C9063CC();
  v99 = sub_22C90AABC();
  if (!os_log_type_enabled(v98, v99))
  {

    (*(v131 + 8))(v97, v160);
    (*(v129 + 8))(v144, v130);
    (*(v177 + 8))(v133, v30);
    return 2;
  }

  v100 = 2;
  v101 = swift_slowAlloc();
  v102 = v177;
  v103 = v101;
  *v101 = 0;
  _os_log_impl(&dword_22C366000, v98, v99, "Found no valid hydrationContexts on requestedProperties", v101, 2u);
  MEMORY[0x2318B9880](v103, -1, -1);

  (*(v131 + 8))(v97, v160);
  (*(v129 + 8))(v144, v130);
  (*(v102 + 8))(v133, v30);
  return v100;
}

uint64_t sub_22C712A4C()
{
  v0 = sub_22C9063DC();
  v34 = *(v0 - 8);
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90931C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_22C9093BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  v21 = MEMORY[0x2318B3C90](v18);
  sub_22C6053C8(v21, v11);

  if (sub_22C370B74(v11, 1, v12) == 1)
  {
    sub_22C376B84(v11, &qword_27D9BB908, &qword_22C910960);
  }

  else
  {
    v32 = v0;
    v22 = *(v13 + 32);
    v22(v20, v11, v12);
    v22(v17, v20, v12);
    if ((*(v13 + 88))(v17, v12) == *MEMORY[0x277D72A58])
    {
      (*(v13 + 96))(v17, v12);
      v23 = *v17;
      v24 = swift_projectBox();
      v25 = v33;
      (*(v33 + 16))(v7, v24, v4);
      if ((*(v25 + 88))(v7, v4) == *MEMORY[0x277D72988])
      {
        (*(v25 + 96))(v7, v4);
        v26 = *v7;

        return v26;
      }

      (*(v25 + 8))(v7, v4);
    }

    else
    {
      (*(v13 + 8))(v17, v12);
    }

    v0 = v32;
  }

  sub_22C903F8C();
  v27 = sub_22C9063CC();
  v28 = sub_22C90AABC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22C366000, v27, v28, "SearchTool query does not have 'onScreenReference'", v29, 2u);
    MEMORY[0x2318B9880](v29, -1, -1);
  }

  (*(v34 + 8))(v3, v0);
  return 0;
}

uint64_t sub_22C712EB8()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_22C9067CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C70FC3C();
  if (sub_22C370B74(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v13, v8, v9);
    if (sub_22C7131A8())
    {
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v18 = sub_22C713820();
      (*(v10 + 8))(v13, v9);
      if ((v18 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 1;
  }

  sub_22C376B84(v8, &qword_27D9BF8C8, &qword_22C923558);
LABEL_3:
  sub_22C903F8C();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AABC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22C366000, v14, v15, "provided statementId is not a part of a PQA request", v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_22C7131A8()
{
  v0 = sub_22C9063DC();
  v57 = *(v0 - 8);
  v1 = *(v57 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - v5;
  v56 = sub_22C90906C();
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  v8 = MEMORY[0x28223BE20](v56);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v11;
  v12 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v16 = sub_22C9093BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  v25 = MEMORY[0x2318B3C90](v22);
  sub_22C6053C8(v25, v15);

  if (sub_22C370B74(v15, 1, v16) == 1)
  {
    sub_22C376B84(v15, &qword_27D9BB908, &qword_22C910960);
LABEL_9:
    sub_22C903F8C();
    v43 = sub_22C9063CC();
    v44 = sub_22C90AABC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22C366000, v43, v44, "SearchTool query does not have non-empty 'requestedProperties'", v45, 2u);
      MEMORY[0x2318B9880](v45, -1, -1);
    }

    (*(v57 + 8))(v4, v0);
    return 0;
  }

  (*(v17 + 32))(v24, v15, v16);
  (*(v17 + 16))(v21, v24, v16);
  if ((*(v17 + 88))(v21, v16) != *MEMORY[0x277D729E0])
  {
    v42 = *(v17 + 8);
    v42(v24, v16);
    v42(v21, v16);
    goto LABEL_9;
  }

  v52 = v6;
  v53 = v0;
  (*(v17 + 96))(v21, v16);
  v26 = *v21;
  v27 = swift_projectBox();
  v28 = v54;
  v29 = *(v54 + 16);
  v29(v55, v27, v56);

  v30 = *(sub_22C90905C() + 16);

  if (!v30)
  {
    (*(v28 + 8))(v55, v56);
    (*(v17 + 8))(v24, v16);
    v0 = v53;
    goto LABEL_9;
  }

  v31 = v52;
  sub_22C903F8C();
  v29(v10, v55, v56);
  v32 = sub_22C9063CC();
  v33 = sub_22C90AABC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v50 = v34;
    v51 = swift_slowAlloc();
    v58 = v51;
    *v34 = 136315138;
    sub_22C90905C();
    v49 = MEMORY[0x2318B7AD0]();
    v36 = v35;

    v54 = *(v54 + 8);
    v37 = v10;
    v38 = v56;
    (v54)(v37, v56);
    v39 = sub_22C36F9F4(v49, v36, &v58);

    v40 = v50;
    *(v50 + 1) = v39;
    _os_log_impl(&dword_22C366000, v32, v33, "SearchTool query has non-empty 'requestedProperties':\n%s", v40, 0xCu);
    v41 = v51;
    sub_22C36FF94(v51);
    MEMORY[0x2318B9880](v41, -1, -1);
    MEMORY[0x2318B9880](v40, -1, -1);

    (*(v57 + 8))(v31, v53);
    (v54)(v55, v38);
  }

  else
  {

    v47 = *(v54 + 8);
    v48 = v56;
    v47(v10, v56);
    (*(v57 + 8))(v31, v53);
    v47(v55, v48);
  }

  (*(v17 + 8))(v24, v16);
  return 1;
}

uint64_t sub_22C713820()
{
  v52 = sub_22C9063DC();
  v0 = *(v52 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v52);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v49 = &v47 - v5;
  v6 = sub_22C9093BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v50 = &v47 - v12;
  v13 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v47 - v18);
  v20 = sub_22C90919C();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2318B3C90](v22);
  sub_22C6053C8(v25, v19);

  if (sub_22C370B74(v19, 1, v6) == 1)
  {
    sub_22C376B84(v19, &qword_27D9BB908, &qword_22C910960);
LABEL_13:
    sub_22C903F8C();
    v44 = sub_22C9063CC();
    v45 = sub_22C90AABC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22C366000, v44, v45, "SearchTool query does not have 'describe' defined or set to true", v46, 2u);
      MEMORY[0x2318B9880](v46, -1, -1);
    }

    (*(v0 + 8))(v4, v52);
    return 0;
  }

  if ((*(v7 + 88))(v19, v6) != *MEMORY[0x277D72A38])
  {
    (*(v7 + 8))(v19, v6);
    goto LABEL_13;
  }

  v48 = v0;
  (*(v7 + 96))(v19, v6);
  v26 = *v19;
  v27 = swift_projectBox();
  v28 = v20;
  v29 = v51;
  (*(v51 + 16))(v24, v27, v28);

  v30 = sub_22C90914C();
  sub_22C6053C8(v30, v17);

  if (sub_22C370B74(v17, 1, v6) == 1)
  {
    (*(v29 + 8))(v24, v28);
    sub_22C376B84(v17, &qword_27D9BB908, &qword_22C910960);
LABEL_12:
    v0 = v48;
    goto LABEL_13;
  }

  v31 = v28;
  v32 = v50;
  (*(v7 + 32))(v50, v17, v6);
  v33 = sub_22C90931C();
  v34 = swift_allocBox();
  *v35 = 1;
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D72988], v33);
  *v11 = v34;
  (*(v7 + 104))(v11, *MEMORY[0x277D72A58], v6);
  LOBYTE(v33) = sub_22C9093AC();
  v36 = *(v7 + 8);
  v36(v11, v6);
  if ((v33 & 1) == 0)
  {
    v36(v32, v6);
    (*(v51 + 8))(v24, v28);
    goto LABEL_12;
  }

  v37 = v49;
  sub_22C903F8C();
  v38 = sub_22C9063CC();
  v39 = sub_22C90AABC();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v48;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22C366000, v38, v39, "SearchTool query has 'describe' set to true", v42, 2u);
    MEMORY[0x2318B9880](v42, -1, -1);
  }

  (*(v41 + 8))(v37, v52);
  v36(v50, v6);
  (*(v51 + 8))(v24, v31);
  return 1;
}

uint64_t sub_22C713EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SearchRouter.run(structuredSearch:transcript:followupIsClientAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v88 = a3;
  v89 = a2;
  v93 = a4;
  v5 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v84 - v7;
  v9 = sub_22C90952C();
  v10 = sub_22C369824(v9);
  v91 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v84 - v18;
  MEMORY[0x28223BE20](v17);
  v92 = &v84 - v20;
  v21 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v84 - v23;
  v25 = sub_22C90941C();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  sub_22C9082FC();
  if (sub_22C370B74(v24, 1, v25) == 1)
  {
    v33 = &qword_27D9BC028;
    v34 = &unk_22C9134B0;
    v35 = v24;
LABEL_5:
    result = sub_22C36DD28(v35, v33, v34);
LABEL_6:
    *v93 = 0;
    return result;
  }

  (*(v28 + 32))(v32, v24, v25);
  v36 = sub_22C9093DC();
  sub_22C58B0F8(v36);

  if (sub_22C370B74(v8, 1, v9) == 1)
  {
    v37 = sub_22C36B48C();
    v38(v37);
    v33 = &qword_27D9BB0C0;
    v34 = &qword_22C90D960;
    v35 = v8;
    goto LABEL_5;
  }

  v40 = v9;
  v87 = v32;
  v41 = v91;
  v42 = v92;
  (*(v91 + 32))(v92, v8, v9);
  v43 = *(v41 + 16);
  v44 = v42;
  v45 = v41;
  v43(v19, v44, v9);
  v46 = (*(v41 + 88))(v19, v9);
  if (v46 == *MEMORY[0x277D72D50])
  {
    v43(v16, v19, v9);
    v47 = v41;
    v48 = *(v41 + 96);
    v85 = v40;
    v48(v16, v40);
    v49 = *v16;
    v50 = sub_22C9094EC();
    v84 = v49;
    v51 = swift_projectBox();
    v52 = (*(*(v50 - 1) + 88))(v51, v50);
    if (v52 == *MEMORY[0x277D72D00])
    {
      v86 = v19;
      sub_22C5EA364();
      v50 = v53;
      v55 = v89;
      v54 = v90;
      sub_22C5F29CC(v53, v89);
      sub_22C378550();
      if ((v40 & 1) == 0)
      {
        sub_22C5EA364();
        sub_22C5F29CC(v56, v55);
        sub_22C378550();
        sub_22C5EA364();
        sub_22C5F29CC(v57, v55);
        sub_22C378550();
LABEL_35:
        type metadata accessor for SearchRoutingError();
        sub_22C714844();
        swift_allocError();
        v50 = v78;
        v79 = sub_22C90832C();
        sub_22C36985C(v79);
        (*(v80 + 16))(v50, v54);
        swift_willThrow();
        v81 = sub_22C3737A8();
        v50(v81);
        v82 = sub_22C36B48C();
        v83(v82);

        goto LABEL_15;
      }

      v58 = sub_22C3737A8();
      v50(v58);
      v59 = sub_22C36B48C();
      v60(v59);

      if (v88)
      {
        v61 = 2;
      }

      else
      {
        v61 = 3;
      }

LABEL_14:
      *v93 = v61;
LABEL_15:
      v62 = v86;
      return (v50)(v62, v54);
    }

    v54 = v90;
    if (v52 == *MEMORY[0x277D72CD8])
    {
      v67 = sub_22C3737A8();
      v50(v67);
      v68 = sub_22C36B48C();
      v69(v68);

      if (v88)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }

      *v93 = v70;
      v62 = v19;
      return (v50)(v62, v54);
    }

    v86 = v19;
    if (v52 == *MEMORY[0x277D72C98])
    {
      sub_22C5EA364();
      v50 = v72;
      sub_22C5F29CC(v72, v89);
      sub_22C378550();
      if ((v40 & 1) == 0)
      {
        goto LABEL_35;
      }

      v73 = sub_22C3737A8();
      v50(v73);
      v74 = sub_22C36B48C();
      v75(v74);

      v61 = 3;
      goto LABEL_14;
    }

    v71 = *(v47 + 8);
    v40 = v85;
    v71(v92, v85);
    v76 = sub_22C36B48C();
    v77(v76);

    goto LABEL_29;
  }

  v86 = v19;
  if (v46 != *MEMORY[0x277D72D28])
  {
    v71 = *(v41 + 8);
    v71(v92, v9);
    (*(v28 + 8))(v87, v25);
LABEL_29:
    *v93 = 0;
    return (v71)(v86, v40);
  }

  sub_22C5EA364();
  v64 = sub_22C5F29CC(v63, v89);

  v65 = *(v45 + 8);
  v65(v92, v9);
  (*(v28 + 8))(v87, v25);
  if (!v64)
  {
    result = (v65)(v86, v9);
    goto LABEL_6;
  }

  if (v88)
  {
    v66 = 2;
  }

  else
  {
    v66 = 3;
  }

  *v93 = v66;
  return (v65)(v86, v9);
}

uint64_t SearchRouting.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t static SearchRoutingError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF8E0, &qword_22C923570);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - v7;
  v9 = *(v6 + 56);
  sub_22C71489C(a1, &v14 - v7);
  sub_22C71489C(a2, &v8[v9]);
  LOBYTE(a2) = sub_22C90831C();
  v10 = sub_22C90832C();
  sub_22C36985C(v10);
  v12 = *(v11 + 8);
  v12(&v8[v9], v10);
  v12(v8, v10);
  return a2 & 1;
}

uint64_t type metadata accessor for SearchRoutingError()
{
  result = qword_27D9BF8F0;
  if (!qword_27D9BF8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22C714844()
{
  result = qword_27D9BF8D8;
  if (!qword_27D9BF8D8)
  {
    type metadata accessor for SearchRoutingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF8D8);
  }

  return result;
}

uint64_t sub_22C71489C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchRoutingError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C714904()
{
  result = qword_27D9BF8E8;
  if (!qword_27D9BF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF8E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRouting(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C714A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90832C();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C714A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90832C();

  return sub_22C36C640(a1, a2, a3, v6);
}

uint64_t sub_22C714AD4(uint64_t a1)
{
  v2 = sub_22C90832C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

IntelligenceFlowPlannerRuntime::SiriResponseMode __swiftcall SiriResponseMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C3858B4();
  v10 = sub_22C36B49C(v3, MEMORY[0x277D837D0], v4, v5, v6, v7, v8, v9, 0x6C6E4F6563696F76);
  if (v10)
  {
    if (sub_22C36B49C(v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v15, v16, 0x726F466563696F76))
    {
      sub_22C3737BC();
      if (sub_22C36B49C(v18, MEMORY[0x277D837D0], v19, v20, v21, v22, v23, v24, v17 & 0xFFFFFFFFFFFFLL | 0x4F79000000000000))
      {
        sub_22C3737BC();
        v33 = sub_22C36B49C(v26, MEMORY[0x277D837D0], v27, v28, v29, v30, v31, v32, v25 & 0xFFFFFFFFFFFFLL | 0x4679000000000000) == 0;

        v35 = 4 * v33;
      }

      else
      {

        v35 = 3;
      }
    }

    else
    {

      v35 = 2;
    }
  }

  else
  {

    v35 = 1;
  }

  *v2 = v35;
  return result;
}

uint64_t SiriResponseMode.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6C6E4F6563696F76;
      break;
    case 2:
      result = 0x726F466563696F76;
      break;
    case 3:
      result = 0x4F79616C70736964;
      break;
    case 4:
      result = 0x4679616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C714D88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_22C3D45D8();
}

uint64_t sub_22C714DAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriResponseMode.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_22C714DEC@<X0>(uint64_t *a1@<X8>)
{
  result = SiriResponseMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C714E18()
{
  result = qword_27D9BF900;
  if (!qword_27D9BF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriResponseMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t StepResolution.toEventPayloads(omittingResponseEvents:)(int a1)
{
  v287 = a1;
  v2 = sub_22C9072BC();
  v3 = sub_22C369824(v2);
  v281 = v4;
  v282 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  *&v280 = v7;
  sub_22C36BA0C();
  v8 = sub_22C907FCC();
  v9 = sub_22C369824(v8);
  v278 = v10;
  v279 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v277 = v13;
  sub_22C36BA0C();
  v14 = sub_22C90771C();
  v15 = sub_22C369824(v14);
  v275 = v16;
  v276 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v274 = v19;
  sub_22C36BA0C();
  v20 = sub_22C9085EC();
  v21 = sub_22C369824(v20);
  v272 = v22;
  v273 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C3698A8();
  sub_22C3698F8(v25);
  v26 = sub_22C906A3C();
  v27 = sub_22C36A7A4(v26, &v298);
  v269 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C3698F8(v31);
  v32 = sub_22C907CCC();
  v33 = sub_22C36A7A4(v32, &v296);
  v267 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v38 = sub_22C90792C();
  v39 = sub_22C36A7A4(v38, &v294);
  v266 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v43);
  v44 = sub_22C906F1C();
  v45 = sub_22C36A7A4(v44, v292);
  v265 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  sub_22C3698F8(v49);
  v50 = sub_22C906CAC();
  v51 = sub_22C36A7A4(v50, &v289);
  v264 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C3698F8(v55);
  v56 = sub_22C9073AC();
  v57 = sub_22C36A7A4(v56, &v286);
  v263 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698A8();
  sub_22C3698F8(v61);
  v62 = sub_22C9063DC();
  v63 = sub_22C36A7A4(v62, v270);
  v250 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C3698A8();
  sub_22C3698F8(v67);
  v68 = sub_22C9089DC();
  v69 = sub_22C369824(v68);
  v290 = v70;
  v291 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22C3698A8();
  sub_22C3698F8(v73);
  v74 = sub_22C90819C();
  v75 = sub_22C369824(v74);
  v283 = v76;
  v284 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C3698F8(&v248 - v80);
  v81 = sub_22C9026BC();
  v82 = sub_22C36A7A4(v81, &v282);
  v260 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22C3698A8();
  sub_22C3698F8(v86);
  v87 = sub_22C907DEC();
  v88 = sub_22C36A7A4(v87, &v280);
  v258 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22C3698A8();
  sub_22C3698F8(v92);
  v93 = sub_22C906ECC();
  v94 = sub_22C369824(v93);
  v285 = v95;
  v286 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22C3698A8();
  v288 = v98;
  sub_22C36BA0C();
  v99 = sub_22C9078FC();
  v100 = sub_22C36A7A4(v99, &v277);
  v256 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22C3698A8();
  sub_22C3698F8(v104);
  v105 = sub_22C90693C();
  v106 = sub_22C36A7A4(v105, &v272);
  v255 = v107;
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22C369838();
  v112 = v111 - v110;
  v113 = sub_22C908CEC();
  v114 = sub_22C369824(v113);
  v254 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22C369838();
  v120 = v119 - v118;
  v121 = sub_22C90674C();
  v122 = sub_22C369824(v121);
  v252 = v123;
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v122);
  sub_22C369838();
  v128 = v127 - v126;
  v129 = sub_22C9086FC();
  v130 = sub_22C369824(v129);
  v132 = v131;
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v130);
  sub_22C369838();
  v137 = v136 - v135;
  v138 = type metadata accessor for StepResolution();
  v139 = sub_22C7177C8(v138);
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  sub_22C369838();
  v144 = v143 - v142;
  sub_22C716438(v289, v143 - v142);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C38746C(v271);
      v195(v128, v144, v121);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v196 = v290;
      v197 = *(v290 + 72);
      v198 = *(v290 + 80);
      v148 = sub_22C38891C();
      *(v148 + 16) = xmmword_22C90F800;
      v199 = sub_22C370938(v148, v120);
      v200(v199, v128, v121);
      (*(v196 + 104))(v1 + v148, *MEMORY[0x277D1E7A0], v291);
      (*(v120 + 8))(v128, v121);
      return v148;
    case 2u:
      v175 = v254;
      (*(v254 + 32))(v120, v144, v113);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      *(v148 + 16) = xmmword_22C90F800;
      v176 = sub_22C370938(v148, v175);
      v177(v176, v120, v113);
      v178 = *MEMORY[0x277D1E730];
      v179 = sub_22C37A288();
      v180(v179);
      (*(v175 + 8))(v120, v113);
      return v148;
    case 3u:
      v185 = v255;
      v186 = v253;
      (*(v255 + 32))(v112, v144, v253);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      *(v148 + 16) = xmmword_22C90F800;
      v187 = sub_22C370938(v148, v185);
      v188(v187, v112, v186);
      v189 = *MEMORY[0x277D1E708];
      v190 = sub_22C37A288();
      v191(v190);
      (*(v185 + 8))(v112, v186);
      return v148;
    case 4u:
      sub_22C38746C(&v276);
      sub_22C717788();
      sub_22C3833A4();
      v166();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v167 = sub_22C3737D0(v148, xmmword_22C90F800);
      v168(v167);
      v158 = MEMORY[0x277D1E830];
      goto LABEL_28;
    case 5u:
      v201 = v285;
      v202 = v286;
      v203 = v288;
      (*(v285 + 32))(v288, v144, v286);
      v204 = v257;
      sub_22C906EBC();
      sub_22C36D2E8(&v280 + 8);
      sub_22C907DAC();
      sub_22C36FB04(&v279);
      v205(v204, v259);
      v206 = v260;
      v207 = v261;
      LODWORD(v289) = (*(v260 + 88))(v144, v261);
      v208 = *MEMORY[0x277D1CBF0];
      (*(v206 + 8))(v144, v207);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v209 = v290;
      v210 = (*(v290 + 80) + 32) & ~*(v290 + 80);
      v282 = *(v290 + 72);
      v148 = swift_allocObject();
      v280 = xmmword_22C90F800;
      *(v148 + 16) = xmmword_22C90F800;
      v211 = *(v201 + 16);
      v211(v148 + v210, v203, v202);
      v212 = *MEMORY[0x277D1E798];
      v281 = *(v209 + 104);
      v281(v148 + v210, v212, v291);
      if (v289 == v208)
      {
        (*(v201 + 8))(v203, v202);
      }

      else if (v287)
      {
        (*(v285 + 8))(v288, v286);
      }

      else
      {
        sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
        v238 = v285;
        v239 = *(v285 + 72);
        v240 = (*(v285 + 80) + 32) & ~*(v285 + 80);
        v241 = swift_allocObject();
        *(v241 + 16) = v280;
        v242 = v286;
        v211(v241 + v240, v288, v286);
        v243 = v248;
        sub_22C90679C();
        v245 = v283;
        v244 = v284;
        v246 = v249;
        (*(v283 + 16))(v249, v243, v284);
        v281(v246, *MEMORY[0x277D1E838], v291);
        sub_22C5908A0();
        v148 = v247;
        (*(v245 + 8))(v243, v244);
        (*(v238 + 8))(v288, v242);
        *(v148 + 16) = 2;
        (*(v209 + 32))(v148 + v210 + v282, v246, v291);
      }

      return v148;
    case 6u:
      v218 = v283;
      v217 = v284;
      v219 = v262;
      (*(v283 + 32))(v262, v144, v284);
      v220 = v290;
      if (v287)
      {
        sub_22C36D2E8(v268);
        sub_22C903F8C();
        v1 = sub_22C9063CC();
        v221 = sub_22C90AADC();
        if (os_log_type_enabled(v1, v221))
        {
          v222 = swift_slowAlloc();
          *v222 = 0;
          _os_log_impl(&dword_22C366000, v1, v221, "WARNING: Interpreter is requesting response gen! This is old behaviour and should be switched to .continuePlanning", v222, 2u);
          MEMORY[0x2318B9880](v222, -1, -1);
        }

        sub_22C36FB04(&v269);
        v223(v144, v251);
      }

      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v224 = *(v220 + 72);
      v225 = *(v220 + 80);
      v148 = sub_22C38891C();
      *(v148 + 16) = xmmword_22C90F800;
      v226 = sub_22C370938(v148, v218);
      v227(v226, v219, v217);
      (*(v220 + 104))(v1 + v148, *MEMORY[0x277D1E838], v291);
      (*(v218 + 8))(v219, v217);
      return v148;
    case 7u:
      sub_22C38746C(&v285);
      sub_22C717788();
      sub_22C3833A4();
      v192();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v193 = sub_22C3737D0(v148, xmmword_22C90F800);
      v194(v193);
      v158 = MEMORY[0x277D1E728];
      goto LABEL_28;
    case 8u:
      sub_22C38746C(&v288);
      sub_22C717788();
      sub_22C3833A4();
      v231();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v232 = sub_22C3737D0(v148, xmmword_22C90F800);
      v233(v232);
      v158 = MEMORY[0x277D1E738];
      goto LABEL_28;
    case 9u:
      sub_22C38746C(&v291);
      sub_22C717788();
      sub_22C3833A4();
      v172();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v173 = sub_22C3737D0(v148, xmmword_22C90F800);
      v174(v173);
      v158 = MEMORY[0x277D1E750];
      goto LABEL_28;
    case 0xAu:
      sub_22C38746C(&v293);
      sub_22C717788();
      sub_22C3833A4();
      v228();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v229 = sub_22C3737D0(v148, xmmword_22C90F800);
      v230(v229);
      v158 = MEMORY[0x277D1E800];
      goto LABEL_28;
    case 0xBu:
      sub_22C38746C(&v295);
      sub_22C717788();
      sub_22C3833A4();
      v163();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v164 = sub_22C3737D0(v148, xmmword_22C90F800);
      v165(v164);
      v158 = MEMORY[0x277D1E810];
      goto LABEL_28;
    case 0xCu:
      sub_22C38746C(&v297);
      sub_22C717788();
      sub_22C3833A4();
      v169();
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v170 = sub_22C3737D0(v148, xmmword_22C90F800);
      v171(v170);
      v158 = MEMORY[0x277D1E720];
      goto LABEL_28;
    case 0xDu:
      v120 = v272;
      v132 = v273;
      sub_22C37FF3C();
      v213 = sub_22C717788();
      v214(v213);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v215 = sub_22C3737D0(v148, xmmword_22C90F800);
      v216(v215);
      v158 = MEMORY[0x277D1E850];
      goto LABEL_28;
    case 0xEu:
      v137 = v274;
      v120 = v275;
      sub_22C37FF3C();
      v159 = sub_22C3806B8();
      v132 = v276;
      v160(v159);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v161 = sub_22C3737D0(v148, xmmword_22C90F800);
      v162(v161);
      v158 = MEMORY[0x277D1E7D0];
      goto LABEL_28;
    case 0xFu:
      v120 = v281;
      v132 = v282;
      sub_22C37FF3C();
      v137 = v280;
      v181 = sub_22C3806B8();
      v182(v181);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v183 = sub_22C3737D0(v148, xmmword_22C90F800);
      v184(v183);
      v158 = MEMORY[0x277D1E780];
      goto LABEL_28;
    case 0x10u:
      v137 = v277;
      v120 = v278;
      sub_22C37FF3C();
      v154 = sub_22C3806B8();
      v132 = v279;
      v155(v154);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      v156 = sub_22C3737D0(v148, xmmword_22C90F800);
      v157(v156);
      v158 = MEMORY[0x277D1E818];
LABEL_28:
      v234 = *v158;
      v235 = sub_22C37A288();
      v236(v235);
      (*(v120 + 8))(v137, v132);
      break;
    case 0x11u:
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      *(v148 + 16) = xmmword_22C90F800;
      sub_22C906F9C();
      (*(v121 + 104))(v1 + v148, *MEMORY[0x277D1E768], v291);
      break;
    case 0x12u:
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      *(v148 + 16) = xmmword_22C90F800;
      (*(v121 + 104))(v1 + v148, *MEMORY[0x277D1E860], v291);
      break;
    default:
      v145 = *(v132 + 32);
      v146 = sub_22C3806B8();
      v147(v146);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v148 = sub_22C378568();
      *(v148 + 16) = xmmword_22C90F800;
      v149 = sub_22C370938(v148, v132);
      v150(v149, v137, v129);
      v151 = *MEMORY[0x277D1E710];
      v152 = sub_22C37A288();
      v153(v152);
      (*(v132 + 8))(v137, v129);
      break;
  }

  return v148;
}

uint64_t type metadata accessor for StepResolution()
{
  result = qword_27D9BF910;
  if (!qword_27D9BF910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C716438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepResolution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static StepResolution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v232 = a1;
  v4 = sub_22C907FCC();
  v5 = sub_22C369824(v4);
  v230 = v6;
  v231 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v9);
  v10 = sub_22C9072BC();
  v11 = sub_22C369824(v10);
  v228 = v12;
  v229 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v15);
  v16 = sub_22C90771C();
  v17 = sub_22C369824(v16);
  v226 = v18;
  v227 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  sub_22C3698F8(v21);
  v22 = sub_22C9085EC();
  v23 = sub_22C369824(v22);
  v224 = v24;
  v225 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  sub_22C3698F8(v27);
  v28 = sub_22C906A3C();
  v29 = sub_22C369824(v28);
  v222 = v30;
  v223 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  sub_22C3698F8(v33);
  v34 = sub_22C907CCC();
  v35 = sub_22C369824(v34);
  v220 = v36;
  v221 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C90792C();
  v41 = sub_22C369824(v40);
  v218 = v42;
  v219 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  sub_22C3698F8(v45);
  v46 = sub_22C906F1C();
  v47 = sub_22C369824(v46);
  v216 = v48;
  v217 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  sub_22C3698F8(v51);
  v52 = sub_22C906CAC();
  v53 = sub_22C369824(v52);
  v214 = v54;
  v215 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698A8();
  sub_22C3698F8(v57);
  v58 = sub_22C9073AC();
  v59 = sub_22C369824(v58);
  v212 = v60;
  v213 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v64 = sub_22C90819C();
  v65 = sub_22C36A7A4(v64, &v243);
  v210 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C3698F8(v69);
  v70 = sub_22C906ECC();
  v71 = sub_22C36A7A4(v70, &v241);
  v209 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C3698A8();
  sub_22C3698F8(v75);
  v76 = sub_22C9078FC();
  v77 = sub_22C36A7A4(v76, &v239);
  v208 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22C3698A8();
  sub_22C3698F8(v81);
  v82 = sub_22C90693C();
  v83 = sub_22C36A7A4(v82, &v237);
  v207 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22C3698A8();
  sub_22C3698F8(v87);
  v88 = sub_22C908CEC();
  v89 = sub_22C36A7A4(v88, &v235);
  v206 = v90;
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  sub_22C3698A8();
  sub_22C3698F8(v93);
  v94 = sub_22C90674C();
  v95 = sub_22C36A7A4(v94, v233);
  v205 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C3698A8();
  sub_22C3698F8(v99);
  v100 = sub_22C9086FC();
  v101 = sub_22C36A7A4(v100, &v231);
  v204 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  sub_22C3698A8();
  sub_22C3698F8(v105);
  v106 = type metadata accessor for StepResolution();
  v107 = sub_22C7177C8(v106);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v110);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v111);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v112);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v113);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v114);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v115);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v116);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v117);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA58();
  sub_22C3698D4();
  v121 = MEMORY[0x28223BE20](v120);
  v123 = v201 - v122;
  v124 = MEMORY[0x28223BE20](v121);
  v126 = v201 - v125;
  v127 = MEMORY[0x28223BE20](v124);
  v129 = v201 - v128;
  v130 = MEMORY[0x28223BE20](v127);
  v132 = v201 - v131;
  v133 = MEMORY[0x28223BE20](v130);
  v135 = v201 - v134;
  MEMORY[0x28223BE20](v133);
  v137 = v201 - v136;
  v138 = sub_22C3A5908(&qword_27D9BF908, &qword_22C9237C0);
  v139 = *(*(v138 - 8) + 64);
  v140 = MEMORY[0x28223BE20](v138 - 8);
  v142 = v201 - v141;
  v143 = *(v140 + 56);
  sub_22C716438(v232, v201 - v141);
  v232 = v143;
  sub_22C716438(a2, &v142[v143]);
  v144 = v142;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C716438(v142, v135);
      if (sub_22C717798() == 1)
      {
        sub_22C36C1DC();
        sub_22C36D9D0();
        sub_22C377640();
        v176();
        sub_22C3806B8();
        sub_22C90673C();
        goto LABEL_38;
      }

      sub_22C36FB04(&v232);
      v146 = v135;
      v147 = v233;
      goto LABEL_56;
    case 2u:
      sub_22C716438(v142, v132);
      if (sub_22C717798() == 2)
      {
        v164 = v206;
        sub_22C36C1DC();
        v165 = v201[2];
        sub_22C377640();
        v166();
        LOBYTE(v143) = sub_22C908CAC();
        v167 = *(v164 + 8);
        v167(v165, v142);
        v167(v132, v142);
        goto LABEL_40;
      }

      sub_22C36FB04(&v234);
      v146 = v132;
      v147 = &v235;
      goto LABEL_56;
    case 3u:
      sub_22C716438(v142, v129);
      if (sub_22C717798() == 3)
      {
        sub_22C36C1DC();
        sub_22C36D9D0();
        sub_22C377640();
        v171();
        sub_22C90691C();
        v172 = sub_22C7177B4();
        v2(v172);
        v173 = v129;
        goto LABEL_39;
      }

      sub_22C36FB04(&v236);
      v146 = v129;
      v147 = &v237;
      goto LABEL_56;
    case 4u:
      sub_22C716438(v142, v126);
      if (sub_22C717798() == 4)
      {
        sub_22C36D2E8(&v238);
        v156 = *(v155 + 32);
        v157 = v201[4];
        sub_22C377640();
        v158();
        LOBYTE(v143) = sub_22C9078DC();
        v159 = *(v132 + 1);
        v159(v157, v142);
        v159(v126, v142);
        goto LABEL_40;
      }

      sub_22C36FB04(&v238);
      v146 = v126;
      v147 = &v239;
      goto LABEL_56;
    case 5u:
      sub_22C716438(v142, v123);
      if (sub_22C717798() == 5)
      {
        sub_22C36C1DC();
        sub_22C36D9D0();
        sub_22C377640();
        v177();
        sub_22C906E8C();
        v178 = sub_22C7177B4();
        v2(v178);
        v173 = v123;
        goto LABEL_39;
      }

      sub_22C36FB04(&v240);
      v146 = v123;
      v147 = &v241;
      goto LABEL_56;
    case 6u:
      v181 = v203;
      sub_22C716438(v142, v203);
      if (sub_22C717798() == 6)
      {
        sub_22C36D2E8(&v242);
        v183 = v202;
        v184 = v211;
        (*(v182 + 32))(v202, &v142[v143], v211);
        LOBYTE(v143) = sub_22C90818C();
        v185 = *(v132 + 1);
        v185(v183, v184);
        v185(v181, v184);
        v186 = v142;
        goto LABEL_41;
      }

      sub_22C36FB04(&v242);
      v197(v181, v211);
      goto LABEL_63;
    case 7u:
      sub_22C376884(v142, &v220);
      if (sub_22C717798() == 7)
      {
        v142 = v213;
        sub_22C36C1DC();
        v174 = sub_22C717778();
        v175(v174);
        sub_22C3806B8();
        sub_22C90739C();
        goto LABEL_38;
      }

      v196 = v212;
      v195 = v213;
      goto LABEL_61;
    case 8u:
      sub_22C376884(v142, &v221);
      if (sub_22C717798() == 8)
      {
        v191 = v214;
        v190 = v215;
        sub_22C36C1DC();
        v192 = sub_22C36D9D0();
        v193(v192);
        sub_22C3806B8();
        LOBYTE(v143) = sub_22C906C7C();
        v194 = *(v191 + 8);
        v194(v132, v190);
        v194(v135, v190);
        goto LABEL_40;
      }

      v196 = v214;
      v195 = v215;
      goto LABEL_61;
    case 9u:
      sub_22C376884(v142, &v222);
      if (sub_22C717798() == 9)
      {
        v142 = v217;
        sub_22C36C1DC();
        v162 = sub_22C717778();
        v163(v162);
        sub_22C3806B8();
        sub_22C906EFC();
        goto LABEL_38;
      }

      v196 = v216;
      v195 = v217;
      goto LABEL_61;
    case 0xAu:
      sub_22C376884(v142, &v223);
      if (sub_22C717798() == 10)
      {
        v142 = v219;
        sub_22C36C1DC();
        v187 = sub_22C717778();
        v188(v187);
        sub_22C3806B8();
        sub_22C90790C();
        goto LABEL_38;
      }

      v196 = v218;
      v195 = v219;
      goto LABEL_61;
    case 0xBu:
      sub_22C376884(v142, &v224);
      if (sub_22C717798() == 11)
      {
        v142 = v221;
        sub_22C36C1DC();
        v153 = sub_22C717778();
        v154(v153);
        sub_22C3806B8();
        sub_22C907CAC();
        goto LABEL_38;
      }

      v196 = v220;
      v195 = v221;
      goto LABEL_61;
    case 0xCu:
      sub_22C376884(v142, &v225);
      if (sub_22C717798() == 12)
      {
        v142 = v223;
        sub_22C36C1DC();
        v160 = sub_22C717778();
        v161(v160);
        sub_22C3806B8();
        sub_22C901F6C();
        goto LABEL_38;
      }

      v196 = v222;
      v195 = v223;
      goto LABEL_61;
    case 0xDu:
      sub_22C376884(v142, &v226);
      if (sub_22C717798() == 13)
      {
        v142 = v225;
        sub_22C36C1DC();
        v179 = sub_22C717778();
        v180(v179);
        sub_22C3806B8();
        sub_22C90859C();
        goto LABEL_38;
      }

      v196 = v224;
      v195 = v225;
      goto LABEL_61;
    case 0xEu:
      sub_22C376884(v142, &v227);
      if (sub_22C717798() == 14)
      {
        v142 = v227;
        sub_22C36C1DC();
        v150 = sub_22C717778();
        v151(v150);
        v152 = sub_22C3806B8();
        MEMORY[0x2318B4BD0](v152);
        goto LABEL_38;
      }

      v196 = v226;
      v195 = v227;
      goto LABEL_61;
    case 0xFu:
      sub_22C376884(v142, &v228);
      if (sub_22C717798() == 15)
      {
        v142 = v229;
        sub_22C36C1DC();
        v168 = sub_22C717778();
        v169(v168);
        v170 = sub_22C3806B8();
        MEMORY[0x2318B4770](v170);
        goto LABEL_38;
      }

      v196 = v228;
      v195 = v229;
      goto LABEL_61;
    case 0x10u:
      sub_22C376884(v142, &v229);
      if (sub_22C717798() == 16)
      {
        v142 = v231;
        sub_22C36C1DC();
        v148 = sub_22C717778();
        v149(v148);
        sub_22C3806B8();
        sub_22C907FAC();
LABEL_38:
        v189 = sub_22C7177B4();
        v2(v189);
        v173 = v135;
        goto LABEL_39;
      }

      v196 = v230;
      v195 = v231;
LABEL_61:
      v145 = *(v196 + 8);
      v146 = v135;
      goto LABEL_62;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_63;
      }

      goto LABEL_35;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_63;
      }

LABEL_35:
      sub_22C71757C(v142);
      LOBYTE(v143) = 1;
      return v143 & 1;
    default:
      sub_22C716438(v142, v137);
      if (sub_22C717798())
      {
        sub_22C36FB04(&v230);
        v146 = v137;
        v147 = &v231;
LABEL_56:
        v195 = *(v147 - 32);
LABEL_62:
        v145(v146, v195);
LABEL_63:
        sub_22C717514(v142);
        LOBYTE(v143) = 0;
      }

      else
      {
        sub_22C36C1DC();
        sub_22C36D9D0();
        sub_22C377640();
        v199();
        sub_22C9086EC();
        v200 = sub_22C7177B4();
        v2(v200);
        v173 = v137;
LABEL_39:
        (v2)(v173, v142);
LABEL_40:
        v186 = v144;
LABEL_41:
        sub_22C71757C(v186);
      }

      return v143 & 1;
  }
}

uint64_t sub_22C717514(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF908, &qword_22C9237C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C71757C(uint64_t a1)
{
  v2 = type metadata accessor for StepResolution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C7175D8()
{
  result = sub_22C9086FC();
  if (v1 <= 0x3F)
  {
    result = sub_22C90674C();
    if (v2 <= 0x3F)
    {
      result = sub_22C908CEC();
      if (v3 <= 0x3F)
      {
        result = sub_22C90693C();
        if (v4 <= 0x3F)
        {
          result = sub_22C9078FC();
          if (v5 <= 0x3F)
          {
            result = sub_22C906ECC();
            if (v6 <= 0x3F)
            {
              result = sub_22C90819C();
              if (v7 <= 0x3F)
              {
                result = sub_22C9073AC();
                if (v8 <= 0x3F)
                {
                  result = sub_22C906CAC();
                  if (v9 <= 0x3F)
                  {
                    result = sub_22C906F1C();
                    if (v10 <= 0x3F)
                    {
                      result = sub_22C90792C();
                      if (v11 <= 0x3F)
                      {
                        result = sub_22C907CCC();
                        if (v12 <= 0x3F)
                        {
                          result = sub_22C906A3C();
                          if (v13 <= 0x3F)
                          {
                            result = sub_22C9085EC();
                            if (v14 <= 0x3F)
                            {
                              result = sub_22C90771C();
                              if (v15 <= 0x3F)
                              {
                                result = sub_22C9072BC();
                                if (v16 <= 0x3F)
                                {
                                  result = sub_22C907FCC();
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C717798()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C7177DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22C3A5908(&qword_27D9BF940, &qword_22C923880);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v5[7] = sub_22C36D0D4();
  v5[8] = swift_task_alloc();
  v9 = sub_22C8FFDBC();
  v5[9] = v9;
  sub_22C3699B8(v9);
  v5[10] = v10;
  v12 = *(v11 + 64);
  v5[11] = sub_22C3699D4();
  v13 = sub_22C9070DC();
  v5[12] = v13;
  sub_22C3699B8(v13);
  v5[13] = v14;
  v16 = *(v15 + 64);
  v5[14] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9BF978, &qword_22C9238C0);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  v5[15] = sub_22C3699D4();
  v20 = sub_22C9009AC();
  v5[16] = v20;
  sub_22C3699B8(v20);
  v5[17] = v21;
  v23 = *(v22 + 64);
  v5[18] = sub_22C3699D4();
  v24 = sub_22C3A5908(&qword_27D9BF948, &qword_22C923888);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  v5[19] = sub_22C3699D4();
  v27 = sub_22C3A5908(&qword_27D9BF958, &qword_22C923898);
  sub_22C369914(v27);
  v29 = *(v28 + 64);
  v5[20] = sub_22C3699D4();
  v30 = sub_22C3A5908(&qword_27D9BF950, &qword_22C923890);
  sub_22C369914(v30);
  v32 = *(v31 + 64);
  v5[21] = sub_22C3699D4();
  v33 = sub_22C3A5908(&qword_27D9BF930, &qword_22C923868);
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  v5[22] = sub_22C3699D4();
  v36 = sub_22C900A9C();
  v5[23] = v36;
  sub_22C3699B8(v36);
  v5[24] = v37;
  v39 = *(v38 + 64);
  v5[25] = sub_22C3699D4();
  v40 = sub_22C3A5908(&qword_27D9BF938, &unk_22C923870);
  sub_22C369914(v40);
  v42 = *(v41 + 64);
  v5[26] = sub_22C3699D4();
  v43 = sub_22C900ACC();
  v5[27] = v43;
  sub_22C3699B8(v43);
  v5[28] = v44;
  v46 = *(v45 + 64);
  v5[29] = sub_22C3699D4();
  v47 = sub_22C3A5908(&qword_27D9BF920, &qword_22C923860);
  sub_22C369914(v47);
  v49 = *(v48 + 64);
  v5[30] = sub_22C3699D4();
  v50 = sub_22C90098C();
  v5[31] = v50;
  sub_22C3699B8(v50);
  v5[32] = v51;
  v53 = *(v52 + 64);
  v5[33] = sub_22C3699D4();
  v54 = sub_22C900EDC();
  v5[34] = v54;
  sub_22C3699B8(v54);
  v5[35] = v55;
  v57 = *(v56 + 64);
  v5[36] = sub_22C36D0D4();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v58 = sub_22C9063DC();
  v5[49] = v58;
  sub_22C3699B8(v58);
  v5[50] = v59;
  v61 = *(v60 + 64);
  v5[51] = sub_22C36D0D4();
  v5[52] = swift_task_alloc();
  v62 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v62);
  v64 = *(v63 + 64);
  v5[53] = sub_22C36D0D4();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v65 = sub_22C90654C();
  v5[56] = v65;
  sub_22C3699B8(v65);
  v5[57] = v66;
  v68 = *(v67 + 64);
  v5[58] = sub_22C36D0D4();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v69 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v69);
  v71 = *(v70 + 64);
  v5[61] = sub_22C36D0D4();
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v72 = sub_22C901FAC();
  v5[72] = v72;
  sub_22C3699B8(v72);
  v5[73] = v73;
  v75 = *(v74 + 64);
  v5[74] = sub_22C36D0D4();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C717ED8, 0, 0);
}

void sub_22C717ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v13 = v12[72];
  v14 = v12[71];
  v15 = v12[5];
  v16 = v12[6];
  v18 = v12[3];
  v17 = v12[4];
  v19 = v12[2];
  Converter = type metadata accessor for StructuredQueryConverter(0);
  v21 = v19 + *(Converter + 20);
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  sub_22C726E1C(v16, v21);
  v22 = *(Converter + 24);
  v23 = sub_22C908AEC();
  v12[87] = v23;
  sub_22C3699C8(v23);
  v12[88] = v24;
  v735 = v22;
  (*(v24 + 16))(v22 + v19, v15);
  v25 = sub_22C900ECC();
  sub_22C68F4E8(v25, v26, v27, v28, v29, v30, v31, v32, v619, v620, v621, v623, v625, v628, v631, v634, v637, v640, v643, v646);
  v34 = v33;
  sub_22C6053E0(v18, v14);
  sub_22C369A54(v14);
  if (v66)
  {
    sub_22C3AC228(v12[71], &qword_27D9BC030, &unk_22C911CC0);
    goto LABEL_4;
  }

  v57 = v12[86];
  sub_22C37B730();
  v58 = v12[71];
  v59 = v12[55];
  v60 = v12[12];
  v62 = sub_22C36CB30(v61);
  v63(v62);
  sub_22C60539C(v57, v34);
  v64 = sub_22C36CCF8();
  sub_22C36D0A8(v64, v65, v60);
  if (v66)
  {
    v67 = v12[55];
    v68 = v12[3];

    sub_22C3AC228(v67, &qword_27D9BAA18, &qword_22C911C40);
LABEL_41:
    v137 = v12[86];
    v138 = v12[85];
    v139 = v12[73];
    v140 = v12[72];
    v141 = v12[52];
    sub_22C903F8C();
    v142 = *(v139 + 16);
    v143 = sub_22C36BA00();
    v144(v143);
    v145 = sub_22C9063CC();
    v146 = sub_22C90AADC();
    v147 = os_log_type_enabled(v145, v146);
    v148 = v12[85];
    v149 = v12[73];
    v150 = v12[72];
    v151 = v12[52];
    v152 = v12[49];
    v153 = v12[50];
    if (v147)
    {
      v154 = sub_22C36FB44();
      v748 = sub_22C370060();
      *v154 = 136315138;
      sub_22C727064();
      sub_22C726BA8(v155, v156);
      sub_22C90B47C();
      v157 = *(v149 + 8);
      v158 = sub_22C727100();
      v159(v158);
      v160 = sub_22C36D264();
      v163 = sub_22C36F9F4(v160, v161, v162);

      *(v154 + 4) = v163;
      _os_log_impl(&dword_22C366000, v145, v146, "expected BOOL for search.describe @ %s", v154, 0xCu);
      sub_22C36FF94(v748);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v153 + 8))(v151, v152);
    }

    else
    {

      v164 = *(v149 + 8);
      v165 = sub_22C727100();
      v166(v165);
      v167 = *(v153 + 8);
      v168 = sub_22C36D264();
      v170(v168, v169);
    }

    v171 = v12[86];
    v172 = v12[72];
    v174 = v12[5];
    v173 = v12[6];
    v175 = v12[4];
    type metadata accessor for StructuredQueryConverterError(0);
    sub_22C37689C();
    sub_22C726BA8(v176, v177);
    sub_22C36D148();
    *v178 = 0x6562697263736564;
    v178[1] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C3AC228(v173, &qword_27D9BF800, &qword_22C923130);
    sub_22C389164();
    v179(v174);
    v180 = sub_22C90880C();
    sub_22C369848(v180);
    (*(v181 + 8))(v175);
    v150(v171, v172);
    goto LABEL_47;
  }

  v69 = v19;
  v70 = v12[60];
  v72 = v12[56];
  v71 = v12[57];
  v73 = v12[55];
  v75 = v12[12];
  v74 = v12[13];
  sub_22C90702C();
  (*(v74 + 8))(v73, v75);
  v76 = *(v71 + 88);
  v77 = sub_22C37B220();
  v79 = v78(v77);
  v80 = v12[60];
  v81 = v12[56];
  v82 = v12[57];
  if (v79 != *MEMORY[0x277D1DAA8])
  {
    v128 = v12[3];

    v129 = *(v82 + 8);
    v130 = sub_22C36BBCC();
    v131(v130);
    goto LABEL_41;
  }

  v83 = *(v82 + 96);
  v84 = sub_22C36BBCC();
  v85(v84);
  v86 = sub_22C906F2C();
  sub_22C3699C8(v86);
  v88 = v87;
  v89 = *(v87 + 88);
  v90 = sub_22C36BBCC();
  if (v91(v90) != *MEMORY[0x277D1DED8])
  {
    v132 = v12[60];
    v133 = v12[3];

    v134 = *(v88 + 8);
    v135 = sub_22C36BBCC();
    v136(v135);
    goto LABEL_41;
  }

  v92 = v12[86];
  v93 = v12[73];
  v94 = v12[72];
  v95 = v12[60];
  v96 = v12[2];
  v97 = *(v88 + 96);
  v98 = sub_22C379ED8();
  v99(v98);
  v100 = *v95;
  sub_22C900CFC();
  (*(v93 + 8))(v92, v94);
  v19 = v69;
LABEL_4:
  sub_22C386618();
  v35 = v34;
  v36 = 0;
  sub_22C71D15C();
  v725 = v34;
  if (v37)
  {
    v744 = 0;
    v38 = v12[32];
    (*(v12[35] + 16))(v12[48], v12[2], v12[34]);
    sub_22C36D9DC();
    v728 = MEMORY[0x277D84F90];
    v711 = v39;
LABEL_6:
    v40 = (v39 + 16 * v19);
    while (1)
    {
      if (!v19)
      {
        v101 = v12[48];
        v103 = v12[34];
        v102 = v12[35];

        sub_22C900CDC();
        v104 = *(v102 + 8);
        v105 = sub_22C37B220();
        v106(v105);
        v36 = 0;
        v35 = v725;
        goto LABEL_25;
      }

      sub_22C72713C();
      if (v49)
      {
        break;
      }

      v42 = v12[30];
      v38 = v12[31];
      v43 = *(v40 - 1);
      v44 = *v40;

      sub_22C90097C();
      sub_22C369A54(v42);
      if (!v66)
      {
        v45 = *v720;
        (*v720)(v12[33], v12[30], v12[31]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_22C372414(v728);
        }

        else
        {
          sub_22C377B6C(isUniquelyReferenced_nonNull_native, v47, v48, v728);
          sub_22C590648();
          v728 = v55;
          sub_22C372414(v55);
        }

        if (v49)
        {
          sub_22C37090C(v50);
          sub_22C590648();
          v728 = v56;
        }

        ++v19;
        v51 = v12[33];
        v52 = v12[31];
        *(v728 + 16) = v38;
        sub_22C3737EC();
        v45(v53 + v54 * v40);
        v39 = v711;
        goto LABEL_6;
      }

      sub_22C3AC228(v12[30], &qword_27D9BF920, &qword_22C923860);
      sub_22C727130();
    }

    __break(1u);
    goto LABEL_82;
  }

LABEL_25:
  v107 = v12[3];
  sub_22C71D15C();
  if (v108)
  {
    v109 = v12[28];
    (*(v12[35] + 16))(v12[47], v12[2], v12[34]);
    sub_22C36D9DC();
    v729 = MEMORY[0x277D84F90];
    v712 = v110;
LABEL_27:
    v111 = (v110 + 16 * v19);
    while (1)
    {
      if (!v19)
      {
        v182 = v12[47];
        v184 = v12[34];
        v183 = v12[35];

        sub_22C900DBC();
        v185 = *(v183 + 8);
        v186 = sub_22C37B220();
        v187(v186);
        v35 = v725;
        goto LABEL_46;
      }

      sub_22C72713C();
      if (v49)
      {
        break;
      }

      v113 = v12[26];
      v112 = v12[27];
      v115 = *(v111 - 1);
      v114 = *v111;

      sub_22C37BD80();
      sub_22C900ABC();
      sub_22C369A54(v113);
      if (!v66)
      {
        v116 = *v720;
        (*v720)(v12[29], v12[26], v12[27]);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        if (v117)
        {
          sub_22C372414(v729);
        }

        else
        {
          sub_22C377B6C(v117, v118, v119, v729);
          sub_22C590710();
          v729 = v126;
          sub_22C372414(v126);
        }

        if (v120)
        {
          sub_22C37090C(v121);
          sub_22C590710();
          v729 = v127;
        }

        ++v19;
        v122 = v12[29];
        v123 = v12[27];
        *(v729 + 16) = v112;
        sub_22C3737EC();
        v116(v124 + v125 * v111);
        v110 = v712;
        goto LABEL_27;
      }

      sub_22C3AC228(v12[26], &qword_27D9BF938, &unk_22C923870);
      sub_22C727130();
    }

    __break(1u);
    goto LABEL_92;
  }

LABEL_46:
  v188 = v12[3];
  sub_22C71D15C();
  if (v189)
  {
    v206 = v12[24];
    (*(v12[35] + 16))(v12[46], v12[2], v12[34]);
    sub_22C36D9DC();
    v731 = MEMORY[0x277D84F90];
    v714 = v207;
LABEL_53:
    v208 = (v207 + 16 * v19);
    while (1)
    {
      if (!v19)
      {
        v224 = v12[46];
        v226 = v12[34];
        v225 = v12[35];

        sub_22C900D9C();
        v227 = *(v225 + 8);
        v228 = sub_22C37B220();
        v229(v228);
        v35 = v725;
        goto LABEL_66;
      }

      sub_22C72713C();
      if (v49)
      {
        break;
      }

      v209 = v12[22];
      v206 = v12[23];
      v211 = *(v208 - 1);
      v210 = *v208;

      sub_22C37BD80();
      sub_22C900A8C();
      sub_22C369A54(v209);
      if (!v66)
      {
        v212 = *v720;
        (*v720)(v12[25], v12[22], v12[23]);
        v213 = swift_isUniquelyReferenced_nonNull_native();
        if (v213)
        {
          sub_22C372414(v731);
        }

        else
        {
          sub_22C377B6C(v213, v214, v215, v731);
          sub_22C5907D8();
          v731 = v222;
          sub_22C372414(v222);
        }

        if (v216)
        {
          sub_22C37090C(v217);
          sub_22C5907D8();
          v731 = v223;
        }

        ++v19;
        v218 = v12[25];
        v219 = v12[23];
        *(v731 + 16) = v206;
        sub_22C3737EC();
        v212(v220 + v221 * v208);
        v207 = v714;
        goto LABEL_53;
      }

      sub_22C3AC228(v12[22], &qword_27D9BF930, &qword_22C923868);
      sub_22C727130();
    }

    __break(1u);
    goto LABEL_97;
  }

LABEL_66:
  v230 = v12[72];
  sub_22C6053E0(v12[3], v12[70]);
  v231 = sub_22C36CCF8();
  sub_22C36D0A8(v231, v232, v230);
  if (v66)
  {
    sub_22C3AC228(v12[70], &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    v233 = v12[84];
    sub_22C37B730();
    v234 = v12[70];
    v235 = v12[45];
    v236 = v35;
    v238 = v12[34];
    v237 = v12[35];
    v239 = v12[2];
    v241 = sub_22C36CB30(v240);
    v242(v241);
    v243 = *(v237 + 16);
    v244 = sub_22C37B220();
    v245(v244);
    v35 = v236;
    sub_22C71D49C(v236, v233, 0xD000000000000012, 0x800000022C933CE0);
    v246 = v12[84];
    v247 = v12[73];
    v248 = v12[72];
    v249 = v12[45];
    v251 = v12[34];
    v250 = v12[35];
    v252 = v12[21];
    sub_22C900BEC();
    sub_22C900DDC();
    v253 = sub_22C3805AC();
    v254(v253, v251);
    (*(v247 + 8))(v246, v248);
  }

  v255 = v12[72];
  sub_22C6053E0(v12[3], v12[69]);
  v256 = sub_22C36FD7C();
  sub_22C36D0A8(v256, v257, v255);
  if (v66)
  {
    sub_22C3AC228(v12[69], &qword_27D9BC030, &unk_22C911CC0);
    goto LABEL_72;
  }

  v261 = v12[44];
  v262 = v12[34];
  v263 = v12[35];
  v264 = v12[2];
  v265 = *(v12[73] + 32);
  v265(v12[83], v12[69], v12[72]);
  (*(v263 + 16))(v261, v264, v262);
  sub_22C63472C();
  sub_22C71D49C(v266, v267, v268, 0xED0000656D69745FLL);
  v732 = v12[44];
  v269 = v12[35];
  v722 = v12[34];
  v744 = v265;
  v288 = v12[72];
  v289 = v12[68];
  v290 = v12[20];
  v291 = v12[3];
  sub_22C900A5C();
  sub_22C900D5C();
  (*(v269 + 8))(v732, v722);
  sub_22C6053E0(v291, v289);
  v292 = sub_22C370B74(v289, 1, v288);
  v38 = v12[72];
  v41 = v12[68];
  if (v292 != 1)
  {
LABEL_82:
    v324 = v12[82];
    v325 = v12[54];
    v326 = v12[12];
    v744(v324, v41, v38);
    sub_22C60539C(v324, v725);
    v327 = sub_22C36FD7C();
    sub_22C36D0A8(v327, v328, v326);
    if (v66)
    {
      v329 = v12[54];
      v330 = v12[3];

      sub_22C3AC228(v329, &qword_27D9BAA18, &qword_22C911C40);
LABEL_99:
      v426 = v12[82];
      v427 = v12[81];
      v428 = v12[73];
      v429 = v12[72];
      v430 = v12[51];
      sub_22C903F8C();
      v431 = *(v428 + 16);
      v432 = sub_22C36BA00();
      v433(v432);
      v434 = sub_22C9063CC();
      v435 = sub_22C90AADC();
      v436 = os_log_type_enabled(v434, v435);
      v437 = v12[81];
      v438 = v12[73];
      v439 = v12[72];
      v441 = v12[50];
      v440 = v12[51];
      v442 = v12[49];
      if (v436)
      {
        v443 = sub_22C36FB44();
        v749 = sub_22C370060();
        *v443 = 136315138;
        sub_22C727064();
        sub_22C726BA8(v444, v445);
        sub_22C90B47C();
        v446 = sub_22C727118(*(v438 + 8));
        v447(v446);
        v448 = sub_22C36D264();
        v451 = sub_22C36F9F4(v448, v449, v450);

        *(v443 + 4) = v451;
        _os_log_impl(&dword_22C366000, v434, v435, "expected BOOL for search.pick_one @ %s", v443, 0xCu);
        sub_22C36FF94(v749);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v441 + 8))(v440, v442);
      }

      else
      {

        v452 = sub_22C727118(*(v438 + 8));
        v453(v452);
        v454 = *(v441 + 8);
        v455 = sub_22C36D264();
        v457(v455, v456);
      }

      v458 = v12[83];
      v459 = v12[82];
      v460 = v12[72];
      v462 = v12[5];
      v461 = v12[6];
      v463 = v12[4];
      type metadata accessor for StructuredQueryConverterError(0);
      sub_22C37689C();
      sub_22C726BA8(v464, v465);
      sub_22C36D148();
      *v466 = 0x656E6F5F6B636970;
      v466[1] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22C3AC228(v461, &qword_27D9BF800, &qword_22C923130);
      sub_22C389164();
      v467(v462);
      v468 = sub_22C90880C();
      sub_22C369848(v468);
      (*(v469 + 8))(v463);
      v735(v459, v460);
      v735(v458, v460);
LABEL_47:
      v190 = v12[86];
      v191 = v12[85];
      v192 = v12[84];
      v193 = v12[83];
      v194 = v12[82];
      v195 = v12[81];
      v196 = v12[80];
      sub_22C38681C();
      v622 = v12[75];
      v624 = v12[74];
      v626 = v12[71];
      v629 = v12[70];
      v632 = v12[69];
      v635 = v12[68];
      v638 = v12[67];
      v641 = v12[66];
      v644 = v12[65];
      v647 = v12[64];
      v649 = v12[63];
      v651 = v12[62];
      v653 = v12[61];
      v655 = v12[60];
      v657 = v12[59];
      v659 = v12[58];
      v661 = v12[55];
      v663 = v12[54];
      v665 = v12[53];
      v667 = v12[52];
      v669 = v12[51];
      v671 = v12[48];
      v673 = v12[47];
      v675 = v12[46];
      v677 = v12[45];
      v679 = v12[44];
      v681 = v12[43];
      v683 = v12[42];
      v685 = v12[41];
      v687 = v12[40];
      v689 = v12[39];
      v691 = v12[38];
      v693 = v12[37];
      v695 = v12[36];
      v697 = v12[33];
      v699 = v12[30];
      v701 = v12[29];
      v703 = v12[26];
      v705 = v12[25];
      v707 = v12[22];
      v709 = v12[21];
      v713 = v12[20];
      v717 = v12[19];
      v721 = v12[18];
      v726 = v12[15];
      v730 = v12[14];
      v736 = v12[11];
      v740 = v12[8];
      v742 = v12[7];
      sub_22C382864();

      v197 = v12[1];
LABEL_48:
      sub_22C372034();

      v199(v198, v199, v200, v201, v202, v203, v204, v205, a9, a10, a11, a12);
      return;
    }

    v360 = v12[59];
    v362 = v12[56];
    v361 = v12[57];
    v363 = v12[54];
    v365 = v12[12];
    v364 = v12[13];
    sub_22C90702C();
    (*(v364 + 8))(v363, v365);
    v366 = *(v361 + 88);
    v367 = sub_22C37B220();
    v369 = v368(v367);
    v370 = v12[59];
    v371 = v12[56];
    v36 = v12[57];
    if (v369 == *MEMORY[0x277D1DAA8])
    {
      v372 = *(v36 + 96);
      v373 = sub_22C36BBCC();
      v374(v373);
      v375 = sub_22C906F2C();
      sub_22C3699C8(v375);
      v377 = v376;
      v378 = *(v376 + 88);
      v379 = sub_22C36BBCC();
      if (v380(v379) == *MEMORY[0x277D1DED8])
      {
        v381 = v12[83];
        v382 = v12[82];
        v383 = v12[73];
        v384 = v12[72];
        v385 = v12[59];
        v386 = v12[2];
        v387 = *(v377 + 96);
        v388 = sub_22C379ED8();
        v389(v388);
        v390 = *v385;
        sub_22C900E5C();
        v391 = *(v383 + 8);
        v392 = sub_22C36CA88();
        v391(v392);
        (v391)(v381, v384);
        goto LABEL_77;
      }

      v421 = v12[59];
      v422 = v12[3];

      v423 = *(v377 + 8);
      v424 = sub_22C36BBCC();
      v425(v424);
      goto LABEL_99;
    }

LABEL_92:
    v393 = v12[3];

    v394 = *(v36 + 8);
    v395 = sub_22C36BBCC();
    v396(v395);
    goto LABEL_99;
  }

  v293 = v12[83];
  v294 = v12[73];
  v295 = v12[2];
  sub_22C3AC228(v12[68], &qword_27D9BC030, &unk_22C911CC0);
  sub_22C900E5C();
  (*(v294 + 8))(v293, v38);
LABEL_77:
  v35 = v725;
LABEL_72:
  v258 = v12[72];
  sub_22C6053E0(v12[3], v12[67]);
  v259 = sub_22C36CCF8();
  sub_22C36D0A8(v259, v260, v258);
  if (v66)
  {
    sub_22C3AC228(v12[67], &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    v270 = v12[80];
    sub_22C37B730();
    v271 = v12[67];
    v272 = v12[43];
    v273 = v12[34];
    v274 = v12[35];
    v275 = v12[2];
    v277 = sub_22C36CB30(v276);
    v278(v277);
    v279 = *(v274 + 16);
    v280 = sub_22C37B220();
    v281(v280);
    sub_22C71D49C(v35, v270, 0xD000000000000011, 0x800000022C92EA80);
    v282 = v12[80];
    v283 = v12[73];
    v284 = v12[72];
    v285 = v12[43];
    v287 = v12[34];
    v286 = v12[35];
    v296 = v12[19];
    sub_22C900ADC();
    sub_22C900CBC();
    v297 = sub_22C3805AC();
    v298(v297, v287);
    (*(v283 + 8))(v282, v284);
  }

  v299 = v12[72];
  v300 = v12[66];
  v301 = v12[3];
  sub_22C36BA00();
  sub_22C6053E0(v302, v303);
  v304 = sub_22C36FD7C();
  sub_22C36D0A8(v304, v305, v299);
  if (v66)
  {
    v306 = v12[35];
    sub_22C3AC228(v12[66], &qword_27D9BC030, &unk_22C911CC0);
    v314 = *(v306 + 16);
  }

  else
  {
    v307 = v12[79];
    sub_22C37B730();
    v308 = v12[42];
    v309 = v12[34];
    v310 = v12[35];
    v311 = v12[4];
    v312 = v12[2];
    (*(v313 + 32))(v307, v12[66]);
    v314 = *(v310 + 16);
    (v314)(v308, v312, v309);
    sub_22C63472C();
    sub_22C71E144(v315, v316, v317, 0xEB000000006D7265);
    v318 = v12[79];
    v319 = v12[73];
    v320 = v12[72];
    v321 = v12[42];
    v322 = v12[34];
    v323 = v12[35];
    sub_22C900D7C();
    v331 = *(v323 + 8);
    v332 = sub_22C36BBCC();
    v333(v332);
    (*(v319 + 8))(v318, v320);
  }

  v334 = v12[41];
  sub_22C727168();
  v314();
  v335 = sub_22C36BA00();
  sub_22C71EF2C(v335, v336);
  v337 = v12[3];
  v720 = v314;
  v338 = v12[72];
  v339 = v12[65];
  v340 = v12[41];
  v341 = v12[34];
  v342 = v12[35];
  sub_22C900EBC();
  v733 = *(v342 + 8);
  v733(v340, v341);
  sub_22C6053E0(v337, v339);
  v343 = sub_22C36FD7C();
  sub_22C36D0A8(v343, v344, v338);
  if (v66)
  {
    sub_22C3AC228(v12[65], &qword_27D9BC030, &unk_22C911CC0);
    v355 = v720;
  }

  else
  {
    v345 = v12[78];
    sub_22C37B730();
    v346 = v12[65];
    v347 = v12[40];
    v348 = v12[34];
    v349 = v12[4];
    v350 = v12[2];
    v352 = sub_22C36CB30(v351);
    v353(v352);
    v354 = v348;
    v355 = v720;
    (v720)(v347, v350, v354);
    sub_22C71E144(v349, v345, 1701669236, 0xE400000000000000);
    v356 = v12[78];
    v357 = v12[73];
    v718 = v12[72];
    v358 = v12[40];
    v359 = v12[34];
    sub_22C900E1C();
    v397 = sub_22C36BBCC();
    (v733)(v397);
    (*(v357 + 8))(v356, v718);
  }

  v398 = v12[39];
  sub_22C727168();
  v355();
  v399 = sub_22C36BA00();
  sub_22C71F7A8(v399, v400);
  v401 = v12[3];
  v206 = 0x656D616E5F676174;
  v402 = v12[72];
  v403 = v12[64];
  v404 = v12[39];
  v405 = v12[34];
  sub_22C900E3C();
  sub_22C382DBC();
  v406();
  sub_22C6053E0(v401, v403);
  sub_22C36D0A8(v403, 1, v402);
  if (v66)
  {
    sub_22C3AC228(v12[64], &qword_27D9BC030, &unk_22C911CC0);
    goto LABEL_103;
  }

LABEL_97:
  v407 = v12[77];
  sub_22C37B730();
  v408 = v12[64];
  v409 = v12[38];
  v410 = v12[34];
  v411 = v12[4];
  v412 = v12[2];
  v414 = sub_22C36CB30(v413);
  v415(v414);
  v416 = v409;
  v355 = v720;
  (v720)(v416, v412, v410);
  sub_22C71E144(v411, v407, v206, 0xE800000000000000);
  v417 = v12[77];
  v418 = v12[73];
  v405 = v12[72];
  v419 = v12[38];
  v420 = v12[34];
  sub_22C900E7C();
  sub_22C36BBCC();
  sub_22C382DBC();
  v470();
  (*(v418 + 8))(v417, v405);
LABEL_103:
  v471 = v725;
  v472 = v12[72];
  v473 = v12[63];
  sub_22C6053E0(v12[3], v473);
  sub_22C369A54(v473);
  if (v66)
  {
    sub_22C3AC228(v12[63], &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    v474 = v12[76];
    sub_22C37B730();
    v475 = v12[37];
    v476 = v12[34];
    v477 = v12[4];
    v478 = v12[2];
    (*(v479 + 32))(v474, v12[63]);
    (v355)(v475, v478, v476);
    sub_22C71E144(v477, v474, 0x6C6F635F67616C66, 0xEA0000000000726FLL);
    v480 = v12[76];
    v481 = v12[73];
    v405 = v12[72];
    v482 = v12[37];
    v483 = v12[34];
    sub_22C900E9C();
    sub_22C36BBCC();
    sub_22C382DBC();
    v484();
    (*(v481 + 8))(v480, v405);
  }

  sub_22C386618();
  sub_22C71D15C();
  v486 = v485;
  if (!v485)
  {
LABEL_121:
    v510 = v12[72];
    sub_22C6053E0(v12[3], v12[62]);
    v511 = sub_22C36FD7C();
    sub_22C36D0A8(v511, v512, v510);
    if (v66)
    {
      sub_22C3AC228(v12[62], &qword_27D9BC030, &unk_22C911CC0);
    }

    else
    {
      v526 = v12[75];
      sub_22C37B730();
      v527 = v12[4];
      v528 = v12[2];
      (*(v529 + 32))(v526, v12[62]);
      sub_22C63472C();
      v533 = sub_22C71E144(v530, v531, v532, 0xEC000000656D6974);
      v556 = v12[75];
      v557 = v12[73];
      v558 = v12[72];
      if (*(v533 + 16))
      {
        v559 = v12[2];
        sub_22C900D3C();
        v560 = sub_22C371810();
        v561(v560);
      }

      else
      {
        v606 = sub_22C371810();
        v607(v606);
      }
    }

    v513 = v12[72];
    sub_22C6053E0(v12[3], v12[61]);

    v514 = sub_22C36CCF8();
    sub_22C36D0A8(v514, v515, v513);
    if (v66)
    {
      v516 = v12[61];
      v518 = v12[5];
      v517 = v12[6];
      v519 = v12[4];

      sub_22C3AC228(v517, &qword_27D9BF800, &qword_22C923130);
      sub_22C389164();
      v520(v518);
      v521 = sub_22C90880C();
      sub_22C369848(v521);
      (*(v522 + 8))(v519);
      v523 = &qword_27D9BC030;
      v524 = &unk_22C911CC0;
      v525 = v516;
    }

    else
    {
      v534 = v12[74];
      sub_22C37B730();
      v535 = v12[61];
      v536 = v12[53];
      v537 = v12[12];
      v539 = sub_22C36CB30(v538);
      v540(v539);
      sub_22C60539C(v534, v725);

      v541 = sub_22C36CCF8();
      sub_22C36D0A8(v541, v542, v537);
      if (!v543)
      {
        v563 = v12[57];
        v562 = v12[58];
        v564 = v12[56];
        v565 = v12[53];
        v566 = v12[14];
        v567 = v12[12];
        v568 = sub_22C36CB30(v12[13]);
        v569(v568);
        sub_22C90702C();
        v570 = (*(v563 + 88))(v562, v564);
        if (v570 == *MEMORY[0x277D1DAA8])
        {
          (*(v12[57] + 96))(v12[58], v12[56]);
          v571 = sub_22C906F2C();
          sub_22C3699C8(v571);
          v573 = v572;
          v574 = *(v572 + 88);
          v575 = sub_22C36BA00();
          if (v576(v575) == *MEMORY[0x277D1DEF8])
          {
            v577 = v12[58];
            v578 = *(v573 + 96);
            v579 = sub_22C36BA00();
            v580(v579);
            v581 = *v577;
            v12[89] = v577[1];
            v582 = swift_task_alloc();
            v12[90] = v582;
            *v582 = v12;
            v582[1] = sub_22C71A9B8;
            v583 = v12[8];
            v584 = v12[2];
            sub_22C63472C();
            sub_22C372034();

            sub_22C721D6C(v585, v586, v587, v588);
            return;
          }

          v739 = v12[74];
          v608 = v12[73];
          v609 = v12[72];
          v747 = v12[58];
          v610 = v12[13];
          v611 = v12[14];
          v612 = sub_22C374588();
          sub_22C3AC228(v612, &qword_27D9BF800, &qword_22C923130);
          sub_22C389164();
          v613(v405);
          v614 = sub_22C90880C();
          sub_22C369848(v614);
          (*(v615 + 8))(v471);
          v616 = *(v610 + 8);
          v617 = sub_22C36CA88();
          v618(v617);
          (*(v608 + 8))(v739, v609);
          (*(v573 + 8))(v747, v571);
        }

        else
        {
          v590 = v12[74];
          v591 = v12[73];
          v592 = v12[72];
          v593 = v12[57];
          v746 = v12[58];
          v738 = v12[56];
          v594 = v12[13];
          v595 = v12[14];
          v596 = sub_22C374588();
          sub_22C3AC228(v596, &qword_27D9BF800, &qword_22C923130);
          sub_22C389164();
          v597(v405);
          v598 = sub_22C90880C();
          sub_22C369848(v598);
          (*(v599 + 8))(v471);
          v600 = *(v594 + 8);
          v601 = sub_22C36CA88();
          v602(v601);
          v603 = *(v591 + 8);
          v604 = sub_22C36BBCC();
          v605(v604);
          (*(v593 + 8))(v746, v738);
        }

        goto LABEL_131;
      }

      v544 = v12[74];
      v545 = v12[73];
      v546 = v12[72];
      v547 = v12[53];
      v548 = v12[5];
      v549 = v12[4];
      sub_22C3AC228(v12[6], &qword_27D9BF800, &qword_22C923130);
      sub_22C389164();
      v550(v548);
      v551 = sub_22C90880C();
      sub_22C369848(v551);
      (*(v552 + 8))(v549);
      v553 = *(v545 + 8);
      v554 = sub_22C36BBCC();
      v555(v554);
      v523 = &qword_27D9BAA18;
      v524 = &qword_22C911C40;
      v525 = v547;
    }

    sub_22C3AC228(v525, v523, v524);
LABEL_131:
    sub_22C37A298();
    v627 = v12[74];
    v630 = v12[71];
    v633 = v12[70];
    v636 = v12[69];
    v639 = v12[68];
    v642 = v12[67];
    v645 = v12[66];
    v648 = v12[65];
    v650 = v12[64];
    v652 = v12[63];
    v654 = v12[62];
    v656 = v12[61];
    v658 = v12[60];
    v660 = v12[59];
    v662 = v12[58];
    v664 = v12[55];
    v666 = v12[54];
    v668 = v12[53];
    v670 = v12[52];
    v672 = v12[51];
    v674 = v12[48];
    v676 = v12[47];
    v678 = v12[46];
    v680 = v12[45];
    v682 = v12[44];
    v684 = v12[43];
    v686 = v12[42];
    v688 = v12[41];
    v690 = v12[40];
    v692 = v12[39];
    v694 = v12[38];
    v696 = v12[37];
    v698 = v12[36];
    v700 = v12[33];
    v702 = v12[30];
    v704 = v12[29];
    v706 = v12[26];
    v708 = v12[25];
    v710 = v12[22];
    v716 = v12[21];
    v719 = v12[20];
    v724 = v12[19];
    v727 = v12[18];
    v734 = v12[15];
    v737 = v12[14];
    v741 = v12[11];
    v743 = v12[8];
    v745 = v12[7];

    sub_22C369C50();
    goto LABEL_48;
  }

  v487 = v12[17];
  (v355)(v12[36], v12[2], v12[34]);
  v488 = 0;
  v489 = *(v486 + 16);
  v715 = (v487 + 32);
  v490 = v486 + 40;
  v723 = MEMORY[0x277D84F90];
  v405 = &qword_22C9238C0;
LABEL_108:
  v491 = (v490 + 16 * v488);
  while (1)
  {
    if (v489 == v488)
    {
      v507 = v12[36];
      v508 = v12[34];

      sub_22C900D1C();
      sub_22C37B220();
      sub_22C382DBC();
      v509();
      goto LABEL_121;
    }

    sub_22C72713C();
    if (v49)
    {
      break;
    }

    v493 = v12[15];
    v492 = v12[16];
    v494 = *(v491 - 1);
    v471 = *v491;

    sub_22C90099C();
    sub_22C369A54(v493);
    if (!v66)
    {
      v495 = *v715;
      (*v715)(v12[18], v12[15], v12[16]);
      v496 = swift_isUniquelyReferenced_nonNull_native();
      if (v496)
      {
        sub_22C372414(v723);
      }

      else
      {
        sub_22C377B6C(v496, v497, v498, v723);
        sub_22C593E04();
        v723 = v505;
        sub_22C372414(v505);
      }

      if (v499)
      {
        sub_22C37090C(v500);
        sub_22C593E04();
        v723 = v506;
      }

      ++v488;
      v501 = v12[18];
      v502 = v12[16];
      *(v723 + 16) = v492;
      sub_22C3737EC();
      v495(v503 + v504 * v491);
      v490 = v486 + 40;
      goto LABEL_108;
    }

    sub_22C3AC228(v12[15], &qword_27D9BF978, &qword_22C9238C0);
    sub_22C727130();
  }

  __break(1u);
}

uint64_t sub_22C71A9B8()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = *(v2 + 712);

  if (v0)
  {
    v6 = sub_22C71B020;
  }

  else
  {
    v6 = sub_22C71AAEC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C71AAEC()
{
  v3 = v0[8];
  v2 = v0[9];
  sub_22C369A54(v3);
  if (v4)
  {
    v5 = v0[88];
    v6 = v0[87];
    v7 = v0[73];
    v85 = v0[72];
    v88 = v0[74];
    v8 = v0[13];
    v9 = v0[14];
    v10 = sub_22C374588();
    sub_22C3AC228(v10, &qword_27D9BF800, &qword_22C923130);
    v11 = *(v5 + 8);
    v12 = sub_22C379ED8();
    v13(v12);
    v14 = sub_22C90880C();
    sub_22C369848(v14);
    (*(v15 + 8))(v1);
    v16 = *(v8 + 8);
    v17 = sub_22C36CA88();
    v18(v17);
    (*(v7 + 8))(v88, v85);
    sub_22C3AC228(v3, &qword_27D9BF940, &qword_22C923880);
  }

  else
  {
    v19 = v0[88];
    v20 = v0[73];
    v86 = v0[72];
    v89 = v0[74];
    v21 = v0[13];
    v22 = v0[11];
    v81 = v0[12];
    v83 = v0[14];
    v23 = v0[10];
    v24 = v0[7];
    v73 = v0[6];
    v75 = v0[5];
    v77 = v0[87];
    v79 = v0[4];
    v25 = v0[2];
    (*(v23 + 32))(v22, v3, v2);
    (*(v23 + 16))(v24, v22, v2);
    sub_22C36C640(v24, 0, 1, v2);
    sub_22C900DFC();
    sub_22C3AC228(v73, &qword_27D9BF800, &qword_22C923130);
    (*(v19 + 8))(v75, v77);
    v26 = sub_22C90880C();
    sub_22C369848(v26);
    (*(v27 + 8))(v79);
    v28 = *(v23 + 8);
    v29 = sub_22C379ED8();
    v30(v29);
    (*(v21 + 8))(v83, v81);
    (*(v20 + 8))(v89, v86);
  }

  sub_22C37A298();
  v33 = v0[74];
  v34 = v0[71];
  v35 = v0[70];
  v36 = v0[69];
  v37 = v0[68];
  v38 = v0[67];
  v39 = v0[66];
  v40 = v0[65];
  v41 = v0[64];
  v42 = v0[63];
  v43 = v0[62];
  v44 = v0[61];
  v45 = v0[60];
  v46 = v0[59];
  v47 = v0[58];
  v48 = v0[55];
  v49 = v0[54];
  v50 = v0[53];
  v51 = v0[52];
  v52 = v0[51];
  v53 = v0[48];
  v54 = v0[47];
  v55 = v0[46];
  v56 = v0[45];
  v57 = v0[44];
  v58 = v0[43];
  v59 = v0[42];
  v60 = v0[41];
  v61 = v0[40];
  v62 = v0[39];
  v63 = v0[38];
  v64 = v0[37];
  v65 = v0[36];
  v66 = v0[33];
  v67 = v0[30];
  v68 = v0[29];
  v69 = v0[26];
  v70 = v0[25];
  v71 = v0[22];
  v72 = v0[21];
  v74 = v0[20];
  v76 = v0[19];
  v78 = v0[18];
  v80 = v0[15];
  v82 = v0[14];
  v84 = v0[11];
  v87 = v0[8];
  v90 = v0[7];

  sub_22C369C50();

  return v31();
}

uint64_t sub_22C71B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v13 = v12[88];
  v14 = v12[87];
  v90 = v12[74];
  v15 = v12[73];
  v16 = v12[72];
  v17 = v12[13];
  v18 = v12[14];
  v19 = v12[12];
  v20 = v12[5];
  v21 = v12[4];
  sub_22C3AC228(v12[6], &qword_27D9BF800, &qword_22C923130);
  (*(v13 + 8))(v20, v14);
  v22 = sub_22C90880C();
  sub_22C369848(v22);
  (*(v23 + 8))(v21);
  (*(v17 + 8))(v18, v19);
  (*(v15 + 8))(v90, v16);
  v91 = v12[91];
  v24 = v12[86];
  v25 = v12[85];
  v26 = v12[84];
  v27 = v12[83];
  v28 = v12[82];
  v29 = v12[81];
  v30 = v12[80];
  sub_22C38681C();
  v41 = v12[75];
  v42 = v12[74];
  v43 = v12[71];
  v44 = v12[70];
  v45 = v12[69];
  v46 = v12[68];
  v47 = v12[67];
  v48 = v12[66];
  v49 = v12[65];
  v50 = v12[64];
  v51 = v12[63];
  v52 = v12[62];
  v53 = v12[61];
  v54 = v12[60];
  v55 = v12[59];
  v56 = v12[58];
  v57 = v12[55];
  v58 = v12[54];
  v59 = v12[53];
  v60 = v12[52];
  v61 = v12[51];
  v62 = v12[48];
  v63 = v12[47];
  v64 = v12[46];
  v65 = v12[45];
  v66 = v12[44];
  v67 = v12[43];
  v68 = v12[42];
  v69 = v12[41];
  v70 = v12[40];
  v71 = v12[39];
  v72 = v12[38];
  v73 = v12[37];
  v74 = v12[36];
  v75 = v12[33];
  v76 = v12[30];
  v77 = v12[29];
  v78 = v12[26];
  v79 = v12[25];
  v80 = v12[22];
  v81 = v12[21];
  v82 = v12[20];
  v83 = v12[19];
  v84 = v12[18];
  v85 = v12[15];
  v86 = v12[14];
  v87 = v12[11];
  v88 = v12[8];
  v89 = v12[7];
  sub_22C382864();

  v31 = v12[1];
  sub_22C372034();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_22C71BA0C()
{
  v1 = sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_22C900E2C();
  if (v7)
  {
    if (*(v7 + 16))
    {
      MEMORY[0x28223BE20](v7);
      sub_22C369920();
      *(v8 - 16) = v0;
      sub_22C793B68();
      v10 = v9;

      return v10;
    }
  }

  v11 = sub_22C900D6C();
  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];

    sub_22C3A5908(&qword_27D9BE3F0, &qword_22C91DA00);
    v14 = sub_22C90665C();
    sub_22C3699B8(v14);
    v16 = *(v15 + 72);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22C90F800;
    v19 = sub_22C90663C();
    v20 = sub_22C36C640(v6, 1, 1, v19);
    MEMORY[0x2318B3AB0](v20);
    sub_22C9065CC();
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t sub_22C71BBF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v348 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36D5B4();
  sub_22C36D234(v7);
  v8 = sub_22C3A5908(&qword_27D9BF940, &qword_22C923880);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v347 = v12;
  sub_22C36BA0C();
  v349 = sub_22C8FFDBC();
  v13 = sub_22C369824(v349);
  v343 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C36D234(v18 - v17);
  v19 = sub_22C3A5908(&qword_27D9BF948, &qword_22C923888);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C36D5B4();
  v352 = v23;
  sub_22C36BA0C();
  v357 = sub_22C900AFC();
  v24 = sub_22C369824(v357);
  v341 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  sub_22C36D234(v29 - v28);
  v30 = sub_22C3A5908(&qword_27D9BF950, &qword_22C923890);
  sub_22C369914(v30);
  v32 = *(v31 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  v346 = v34;
  sub_22C36BA0C();
  v350 = sub_22C900C0C();
  v35 = sub_22C369824(v350);
  v339 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  sub_22C36D234(v40 - v39);
  v41 = sub_22C3A5908(&qword_27D9BF958, &qword_22C923898);
  sub_22C369914(v41);
  v43 = *(v42 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v44);
  sub_22C36D5B4();
  v344 = v45;
  sub_22C36BA0C();
  v345 = sub_22C900A7C();
  v46 = sub_22C369824(v345);
  v337 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v336 = v51 - v50;
  sub_22C36BA0C();
  v52 = sub_22C90952C();
  v53 = sub_22C369824(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v60 = (v59 - v58);
  v360 = sub_22C9093BC();
  v61 = sub_22C369824(v360);
  v63 = v62;
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v61);
  v361 = &v336 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v69 = (&v336 - v68);
  v70 = sub_22C900CCC();
  v358 = v1;
  v359 = v63;
  v354 = v52;
  v355 = v60;
  v353 = v55;
  if (v70)
  {
    MEMORY[0x28223BE20](v70);
    sub_22C369920();
    *(v71 - 16) = v358;
    sub_22C7270C4();
    sub_22C3B4ABC();
    v351 = 0;

    sub_22C90906C();
    v72 = swift_allocBox();
    sub_22C380498();
    v73 = swift_allocObject();
    v74 = sub_22C38864C(v73, "com.apple.omniSearch.SearchToolExtension");
    *(v74 + 32) = 0x79547265746C6946;
    *(v74 + 40) = 0xEA00000000006570;
    *v60 = v74;
    (*(v55 + 104))(v60, *MEMORY[0x277D72D28], v52);
    v75 = v360;
    sub_22C90903C();
    *v69 = v72;
    v76 = MEMORY[0x277D729E0];
    (*(v63 + 104))(v69, *MEMORY[0x277D729E0], v75);
    v77 = sub_22C38747C(v63);
    v2 = v358;
    v78(v77);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v79 = sub_22C379A78();
    sub_22C62EC0C(v79, v80, 0xEA00000000006570, v81, v82, v83, v84, v85, v336, v337, v338, v339, v340, v341);
  }

  else
  {
    v351 = 0;
    v76 = MEMORY[0x277D729E0];
  }

  if (sub_22C900DAC())
  {
    sub_22C7270E0();
    MEMORY[0x28223BE20](v86);
    sub_22C369920();
    *(v87 - 16) = v2;
    sub_22C7270C4();
    v88 = v351;
    sub_22C3B4B00();

    sub_22C90906C();
    v89 = swift_allocBox();
    sub_22C380498();
    v90 = swift_allocObject();
    v91 = sub_22C38864C(v90, "com.apple.omniSearch.SearchToolExtension");
    strcpy((v91 + 32), "PreferredType");
    *(v91 + 46) = -4864;
    v92 = v355;
    *v355 = v91;
    v93 = *MEMORY[0x277D72D28];
    sub_22C727148();
    v94(v92);
    sub_22C90903C();
    *v69 = v89;
    v95 = *v76;
    v96 = sub_22C72707C();
    v97(v96);
    v98 = sub_22C38747C(v89);
    v99(v98);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v100 = sub_22C379A78();
    sub_22C62EC0C(v100, v101, 0xED00006570795464, v102, v103, v104, v105, v106, v336, v337, v338, v339, v340, v341);
  }

  else
  {
    v88 = v351;
  }

  v107 = v2;
  if (sub_22C900D8C())
  {
    sub_22C7270E0();
    MEMORY[0x28223BE20](v108);
    sub_22C369920();
    *(v109 - 16) = v2;
    sub_22C7270C4();
    sub_22C3B4B44();

    sub_22C90906C();
    v110 = swift_allocBox();
    sub_22C380498();
    v111 = swift_allocObject();
    v112 = sub_22C38864C(v111, "com.apple.omniSearch.SearchToolExtension");
    strcpy((v112 + 32), "ContainsType");
    *(v112 + 45) = 0;
    *(v112 + 46) = -5120;
    v113 = v355;
    *v355 = v112;
    v114 = *MEMORY[0x277D72D28];
    sub_22C727148();
    v115(v113);
    sub_22C385FA4();
    *v69 = v110;
    v116 = *MEMORY[0x277D729E0];
    v117 = sub_22C72707C();
    v118(v117);
    v119 = sub_22C38747C(v110);
    v120(v119);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v107 = v358;
    v121 = sub_22C379A78();
    sub_22C62EC0C(v121, v122, 0xEC00000065707954, v123, v124, v125, v126, v127, v336, v337, v338, v339, v340, v341);
  }

  if (sub_22C900D0C())
  {
    sub_22C7270E0();
    MEMORY[0x28223BE20](v128);
    sub_22C369920();
    *(v129 - 16) = v107;
    sub_22C7270C4();
    sub_22C3B4B88();
    v351 = v88;

    sub_22C90906C();
    v130 = swift_allocBox();
    sub_22C380498();
    v131 = swift_allocObject();
    v132 = sub_22C38864C(v131, "com.apple.omniSearch.SearchToolExtension");
    *(v132 + 32) = 0x7954656372756F53;
    *(v132 + 40) = 0xEA00000000006570;
    v133 = v355;
    *v355 = v132;
    v134 = *MEMORY[0x277D72D28];
    sub_22C727148();
    v135(v133);
    sub_22C385FA4();
    *v69 = v130;
    v136 = *MEMORY[0x277D729E0];
    v137 = sub_22C72707C();
    v138(v137);
    v139 = sub_22C38747C(v130);
    v140(v139);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v141 = sub_22C379A78();
    sub_22C62EC0C(v141, v142, 0xEA00000000006570, v143, v144, v145, v146, v147, v336, v337, v338, v339, v340, v341);
  }

  else
  {
    v351 = v88;
  }

  v148 = v346;
  v149 = v344;
  sub_22C900D4C();
  v150 = sub_22C36CCF8();
  v151 = v345;
  sub_22C36D0A8(v150, v152, v345);
  v356 = v69;
  if (v153)
  {
    sub_22C3AC228(v149, &qword_27D9BF958, &qword_22C923898);
  }

  else
  {
    v154 = v337;
    v155 = v336;
    (*(v337 + 32))(v336, v149, v151);
    v156 = sub_22C900A6C();
    sub_22C725158(0x547942726564724FLL, 0xEB00000000656D69, v156, v69);

    (*(v359 + 32))(v361, v69, v360);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v157 = sub_22C38A0DC();
    sub_22C62EC0C(v157, v158, 0xEB00000000656D69, v159, v160, v161, v162, v163, v336, v337, v338, v339, v340, v341);
    (*(v154 + 8))(v155, v151);
  }

  v164 = v357;
  v165 = v350;
  sub_22C900DCC();
  sub_22C369A54(v148);
  if (v153)
  {
    sub_22C3AC228(v148, &qword_27D9BF950, &qword_22C923890);
  }

  else
  {
    v166 = v339;
    (*(v339 + 32))(v338, v148, v165);
    v167 = sub_22C900BFC();
    sub_22C725158(0xD000000000000011, 0x800000022C933C80, v167, v356);

    v168 = *(v359 + 32);
    v169 = sub_22C7270D0();
    v170(v169);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v171 = sub_22C38A0DC();
    sub_22C62EC0C(v171, 0xD000000000000011, v172, v173, v174, v175, v176, v177, v336, v337, v338, v339, v340, v341);
    v178 = *(v166 + 8);
    v179 = sub_22C36D264();
    v180(v179);
    v164 = v357;
  }

  v181 = v352;
  sub_22C900CAC();
  v182 = sub_22C36CCF8();
  sub_22C36D0A8(v182, v183, v164);
  if (v153)
  {
    sub_22C3AC228(v181, &qword_27D9BF948, &qword_22C923888);
  }

  else
  {
    v184 = v341;
    v185 = v340;
    (*(v341 + 32))(v340, v181, v164);
    v186 = sub_22C900AEC();
    sub_22C725158(0x7469746E45707041, 0xEF73757461745379, v186, v356);

    v187 = *(v359 + 32);
    v188 = sub_22C7270D0();
    v189(v188);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v190 = sub_22C38A0DC();
    sub_22C62EC0C(v190, v191, 0xEF73757461745379, v192, v193, v194, v195, v196, v336, v337, v338, v339, v340, v341);
    (*(v184 + 8))(v185, v164);
  }

  v197 = sub_22C900D2C();
  if (v197)
  {
    v198 = v356;
    sub_22C7253F4(v197, v356);

    v199 = *(v359 + 32);
    v200 = sub_22C375AB8();
    v201 = v198;
    v203 = v202;
    v204(v200, v201);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C727090();
    v205 = sub_22C379A78();
    sub_22C62EC0C(v205, v206, 0xEB00000000656D69, v207, v208, v209, v210, v211, v336, v337, v338, v339, v340, v341);
  }

  else
  {
    v203 = v359;
  }

  v212 = sub_22C900D6C();
  v213 = v356;
  sub_22C7253F4(v212, v356);

  v214 = *(v203 + 32);
  v352 = v203 + 32;
  v357 = v214;
  v214(v361, v213, v360);
  swift_isUniquelyReferenced_nonNull_native();
  sub_22C727090();
  v215 = sub_22C379A78();
  sub_22C62EC0C(v215, v216, v217, v218, v219, v220, v221, v222, v336, v337, v338, v339, v340, v341);
  v223 = v362;
  v224 = sub_22C90931C();
  v225 = swift_allocBox();
  v227 = v226;
  *v226 = sub_22C900E4C() & 1;
  LODWORD(v359) = *MEMORY[0x277D72988];
  v228 = *(v224 - 8);
  v229 = v203;
  v230 = *(v228 + 104);
  v231 = v228 + 104;
  v230(v227);
  *v213 = v225;
  v232 = *MEMORY[0x277D72A58];
  v350 = *(v229 + 104);
  v233 = v360;
  v350(v213, v232, v360);
  v234 = v361;
  v357(v361, v213, v233);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v362 = v223;
  sub_22C62EC0C(v234, 0x656E4F6B636970, 0xE700000000000000, isUniquelyReferenced_nonNull_native, v236, v237, v238, v239, v336, v337, v338, v339, v340, v341);
  v240 = v362;
  v241 = swift_allocBox();
  v243 = v242;
  *v242 = sub_22C900CEC() & 1;
  v345 = v230;
  v346 = v224;
  v344 = v231;
  (v230)(v243, v359, v224);
  v244 = v350;
  *v213 = v241;
  LODWORD(v341) = v232;
  v245 = v358;
  v246 = v360;
  v359 = v229 + 104;
  v244(v213, v232, v360);
  v247 = v357;
  v248 = sub_22C375AB8();
  v247(v248, v213, v246);
  swift_isUniquelyReferenced_nonNull_native();
  v362 = v240;
  v249 = sub_22C379A78();
  sub_22C62EC0C(v249, v250, v251, v252, v253, v254, v255, v256, v336, v337, v338, v339, v340, v341);
  if (sub_22C900EAC())
  {
    sub_22C369A48();
    sub_22C90906C();
    v340 = swift_allocBox();
    sub_22C380498();
    v257 = swift_allocObject();
    v258 = sub_22C38864C(v257, "com.apple.omniSearch.SearchToolExtension");
    *(v258 + 32) = v259 - 21;
    *(v258 + 40) = 0x800000022C933C60;
    v260 = v355;
    *v355 = v258;
    v261 = *MEMORY[0x277D72D28];
    sub_22C727148();
    v263 = v262(v260);
    MEMORY[0x28223BE20](v263);
    sub_22C369920();
    *(v264 - 16) = v245;
    sub_22C7270C4();
    sub_22C3B4BCC();

    sub_22C90903C();
    v265 = v356;
    *v356 = v340;
    v266 = v360;
    v244(v265, *MEMORY[0x277D729E0], v360);
    v267 = sub_22C375AB8();
    v247(v267, v265, v266);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C7270B8();
    v268 = sub_22C379A78();
    sub_22C62EC0C(v268, v269, v270, v271, v272, v273, v274, v275, v336, v337, v338, v339, v340, v341);
    v276 = v265;
  }

  else
  {
    v266 = v360;
    v276 = v356;
  }

  v277 = sub_22C900E0C();
  if (v277)
  {
    sub_22C7253F4(v277, v276);

    v278 = sub_22C375AB8();
    v357(v278, v276, v266);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C7270B8();
    v279 = sub_22C379A78();
    sub_22C62EC0C(v279, 1701669236, 0xE400000000000000, v280, v281, v282, v283, v284, v336, v337, v338, v339, v340, v341);
  }

  v286 = v354;
  v285 = v355;
  if (sub_22C900E2C())
  {
    sub_22C369A48();
    sub_22C90906C();
    v355 = swift_allocBox();
    sub_22C380498();
    v287 = swift_allocObject();
    v288 = sub_22C38864C(v287, "com.apple.omniSearch.SearchToolExtension");
    *(v288 + 32) = v289 - 23;
    *(v288 + 40) = 0x800000022C933C40;
    *v285 = v288;
    v290 = (*(v353 + 104))(v285, *MEMORY[0x277D72D28], v286);
    MEMORY[0x28223BE20](v290);
    sub_22C369920();
    *(v291 - 16) = v245;
    sub_22C7270C4();
    sub_22C3B4C10();

    v266 = v360;
    sub_22C90903C();
    *v276 = v355;
    v350(v276, *MEMORY[0x277D729E0], v266);
    v292 = v361;
    v293 = sub_22C37FF20();
    v294 = v357;
    (v357)(v293);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C7270B8();
    sub_22C62EC0C(v292, 0x656C706F6570, 0xE600000000000000, v295, v296, v297, v298, v299, v336, v337, v338, v339, v340, v341);
    v300 = v349;
  }

  else
  {
    v300 = v349;
    v294 = v357;
  }

  v301 = sub_22C900E6C();
  if (v301)
  {
    sub_22C7253F4(v301, v276);

    v302 = v361;
    v303 = sub_22C37FF20();
    v294(v303);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C7270B8();
    sub_22C62EC0C(v302, 0x656D614E676174, 0xE700000000000000, v304, v305, v306, v307, v308, v336, v337, v338, v339, v340, v341);
  }

  v309 = sub_22C900E8C();
  if (v309)
  {
    sub_22C7253F4(v309, v276);

    v310 = v361;
    v311 = sub_22C37FF20();
    v294(v311);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C7270B8();
    sub_22C62EC0C(v310, 0x6F6C6F4367616C66, 0xE900000000000072, v312, v313, v314, v315, v316, v336, v337, v338, v339, v340, v341);
  }

  v317 = v347;
  sub_22C900DEC();
  sub_22C36D0A8(v317, 1, v300);
  if (v153)
  {
    sub_22C3AC228(v317, &qword_27D9BF940, &qword_22C923880);
  }

  else
  {
    v318 = v343;
    v319 = v300;
    v320 = v342;
    (*(v343 + 32))(v342, v317, v319);
    v321 = v346;
    v355 = swift_allocBox();
    v322 = v266;
    v324 = v323;
    MEMORY[0x2318AD280]();
    sub_22C90993C();
    v325 = sub_22C36CCF8();
    sub_22C36C640(v325, v326, 1, v327);
    sub_22C90923C();
    v345(v324, *MEMORY[0x277D72970], v321);
    *v276 = v355;
    v350(v276, v341, v322);
    v328 = sub_22C7270D0();
    (v357)(v328);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C7270B8();
    v329 = sub_22C38A0DC();
    sub_22C62EC0C(v329, 7368801, 0xE300000000000000, v330, v331, v332, v333, v334, v336, v337, v338, v339, v340, v341);
    (*(v318 + 8))(v320, v349);
  }

  sub_22C725BB0(0xD000000000000015, 0x800000022C933C20, v348);
}

void sub_22C71D15C()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22C369A48();
  v9 = sub_22C901FAC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v39 - v18;
  if (!*(v0 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_22C36E2BC(v6, v4);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v12 + 16))(v17, *(v0 + 56) + *(v12 + 72) * v19, v9);
  (*(v12 + 32))(v44, v17, v9);
  sub_22C722EA0(v8, v44, v6, v4);
  if (v1)
  {
    (*(v12 + 8))(v44, v9);
LABEL_5:
    sub_22C36FB20();
    return;
  }

  v22 = v21;
  v40 = v12;
  v41 = v9;
  v42 = 0;
  sub_22C72709C();
  v25 = *(v24 + 16);
  v26 = (v24 + 40);
  v27 = MEMORY[0x277D84F90];
  v43 = xmmword_22C90F800;
  while (1)
  {
    if (v25 == v2)
    {

      (*(v40 + 8))(v44, v41);
      goto LABEL_5;
    }

    if (v2 >= *(v22 + 16))
    {
      break;
    }

    v29 = *(v26 - 1);
    v28 = *v26;
    v30 = v29 == v23 && v28 == 0xE600000000000000;
    if (v30 || (sub_22C37BD80(), (sub_22C90B4FC() & 1) != 0))
    {
      v31 = &unk_283FAF0C8;
    }

    else
    {
      v38 = v29 == v6 && v28 == 0xE500000000000000;
      if (v38 || (sub_22C37BD80(), (sub_22C90B4FC() & 1) != 0))
      {
        v31 = &unk_283FAF108;
      }

      else
      {
        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        sub_22C380498();
        v31 = swift_allocObject();
        v31[1] = v43;
        *(v31 + 4) = v29;
        *(v31 + 5) = v28;
      }
    }

    v32 = *(v31 + 2);
    v33 = *(v27 + 16);
    v6 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_34;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v6 <= *(v27 + 24) >> 1)
    {
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_22C590270();
      v27 = v37;
      if (!v32)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    if ((*(v27 + 24) >> 1) - *(v27 + 16) < v32)
    {
      goto LABEL_35;
    }

    swift_arrayInitWithCopy();

    v34 = *(v27 + 16);
    v35 = __OFADD__(v34, v32);
    v36 = v34 + v32;
    if (v35)
    {
      goto LABEL_36;
    }

    *(v27 + 16) = v36;
LABEL_24:
    v26 += 2;
    ++v2;
    sub_22C72709C();
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void (*sub_22C71D49C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4))(char *, char *, uint64_t)
{
  v122 = a4;
  v113 = a3;
  v119 = a1;
  v116 = sub_22C901FAC();
  v120 = *(v116 - 8);
  v5 = *(v120 + 64);
  v6 = MEMORY[0x28223BE20](v116);
  v112 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v111 = &v106 - v9;
  MEMORY[0x28223BE20](v8);
  v109 = &v106 - v10;
  v11 = sub_22C9063DC();
  v117 = *(v11 - 8);
  v12 = *(v117 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v106 - v16;
  MEMORY[0x28223BE20](v15);
  v110 = &v106 - v17;
  v18 = sub_22C90654C();
  v115 = *(v18 - 8);
  v19 = *(v115 + 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v106 - v23;
  v25 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v106 - v27;
  v29 = sub_22C9070DC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v35 = a2;
  v37 = v36;
  sub_22C60539C(v35, v119);
  v38 = sub_22C370B74(v28, 1, v37);
  v118 = v11;
  if (v38 == 1)
  {
    sub_22C3AC228(v28, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C903F8C();
    v39 = v120;
    v40 = *(v120 + 16);
    v41 = v112;
    v42 = v34;
    v43 = v34;
    v44 = v116;
    v119 = v120 + 16;
    v40(v112, v43, v116);

    v45 = sub_22C9063CC();
    v46 = sub_22C90AADC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v115 = v40;
      v48 = v47;
      v114 = swift_slowAlloc();
      v123 = v114;
      *v48 = 136315394;
      *(v48 + 4) = sub_22C36F9F4(v113, v122, &v123);
      *(v48 + 12) = 2080;
      sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v49 = v46;
      v50 = sub_22C90B47C();
      v52 = v51;
      (*(v39 + 8))(v41, v44);
      v53 = sub_22C36F9F4(v50, v52, &v123);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_22C366000, v45, v49, "missing expression for search.%s @ statementId %s", v48, 0x16u);
      v54 = v114;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v54, -1, -1);
      v55 = v48;
      v40 = v115;
      MEMORY[0x2318B9880](v55, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v41, v44);
    }

    (*(v117 + 8))(v121, v118);
    type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    v40(v80, v42, v44);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v40;
  }

  v112 = v34;
  v56 = v120;
  v119 = v30;
  v57 = *(v30 + 32);
  v121 = v37;
  v57(v33, v28, v37);
  sub_22C90702C();
  v58 = v115;
  if ((*(v115 + 11))(v24, v18) == *MEMORY[0x277D1DAA8])
  {
    (*(v58 + 2))(v22, v24, v18);
    (*(v58 + 12))(v22, v18);
    v59 = sub_22C906F2C();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 88))(v22, v59);
    if (v61 == *MEMORY[0x277D1DEF8])
    {
      v107 = v24;
      v108 = v33;
      (*(v60 + 96))(v22, v59);
      v40 = *v22;
      v62 = *(v22 + 1);
      sub_22C903F8C();
      v63 = v56;
      v64 = *(v56 + 16);
      v65 = v109;
      v66 = v116;
      v64(v109, v112, v116);
      v67 = v122;

      v68 = sub_22C9063CC();
      v69 = sub_22C90AABC();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        LODWORD(v114) = v69;
        v71 = v67;
        v112 = v18;
        v72 = v70;
        v73 = swift_slowAlloc();
        v123 = v73;
        *v72 = 136315394;
        *(v72 + 4) = sub_22C36F9F4(v113, v71, &v123);
        *(v72 + 12) = 2080;
        sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v74 = sub_22C90B47C();
        v75 = v66;
        v77 = v76;
        (*(v63 + 8))(v65, v75);
        v78 = sub_22C36F9F4(v74, v77, &v123);

        *(v72 + 14) = v78;
        _os_log_impl(&dword_22C366000, v68, v114, "converting string to symbol for search.%s @ %s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v73, -1, -1);
        v79 = v72;
        v18 = v112;
        MEMORY[0x2318B9880](v79, -1, -1);
      }

      else
      {

        (*(v63 + 8))(v65, v66);
      }

      (*(v117 + 8))(v110, v118);
      (*(v119 + 8))(v108, v121);
      goto LABEL_14;
    }

    if (v61 == *MEMORY[0x277D1DF00])
    {
      v107 = v24;
      (*(v119 + 8))(v33, v121);
      (*(v60 + 96))(v22, v59);
      v40 = *v22;
      v81 = *(v22 + 1);
LABEL_14:
      (*(v115 + 1))(v107, v18);
      return v40;
    }

    (*(v60 + 8))(v22, v59);
  }

  v108 = v33;
  sub_22C903F8C();
  v82 = v56;
  v83 = *(v56 + 16);
  v84 = v111;
  v85 = v116;
  v83(v111, v112, v116);
  v86 = v122;

  v87 = sub_22C9063CC();
  v88 = sub_22C90AADC();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v107 = v24;
    v112 = v18;
    v90 = v89;
    v110 = swift_slowAlloc();
    v123 = v110;
    *v90 = 136315394;
    v91 = v113;
    *(v90 + 4) = sub_22C36F9F4(v113, v86, &v123);
    *(v90 + 12) = 2080;
    sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v92 = v88;
    v93 = sub_22C90B47C();
    v94 = v85;
    v96 = v95;
    (*(v82 + 8))(v84, v94);
    v97 = sub_22C36F9F4(v93, v96, &v123);

    *(v90 + 14) = v97;
    v98 = v91;
    _os_log_impl(&dword_22C366000, v87, v92, "expected symbol or string for search.%s @ %s", v90, 0x16u);
    v99 = v110;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v99, -1, -1);
    v100 = v90;
    v18 = v112;
    v24 = v107;
    v58 = v115;
    MEMORY[0x2318B9880](v100, -1, -1);

    (*(v117 + 8))(v114, v118);
  }

  else
  {

    (*(v82 + 8))(v84, v85);
    (*(v117 + 8))(v114, v118);
    v98 = v113;
  }

  v101 = v121;
  type metadata accessor for StructuredQueryConverterError(0);
  sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
  swift_allocError();
  *v102 = v98;
  v102[1] = v86;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v103 = *(v119 + 8);

  v103(v108, v101);
  v104 = *(v58 + 1);
  v40 = (v58 + 8);
  v104(v24, v18);
  return v40;
}

uint64_t sub_22C71E144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = a4;
  v121 = a3;
  v130 = a2;
  v5 = sub_22C90906C();
  v111 = *(v5 - 8);
  v112 = v5;
  v6 = *(v111 + 64);
  MEMORY[0x28223BE20](v5);
  v110 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C901FAC();
  v127 = *(v8 - 8);
  v9 = *(v127 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v120 = (&v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v116 = &v106 - v12;
  v13 = sub_22C9063DC();
  v122 = *(v13 - 8);
  v123 = v13;
  v14 = *(v122 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v128 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v118 = &v106 - v17;
  v18 = sub_22C90931C();
  v114 = *(v18 - 8);
  v115 = v18;
  v19 = *(v114 + 64);
  MEMORY[0x28223BE20](v18);
  v109 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22C9093BC();
  v125 = *(v119 - 8);
  v21 = *(v125 + 64);
  v22 = MEMORY[0x28223BE20](v119);
  v108 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v106 - v25;
  MEMORY[0x28223BE20](v24);
  v124 = &v106 - v26;
  v27 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v106 - v29;
  v31 = sub_22C9025EC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TranscriptValueFetcher(0);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22C90880C();
  (*(*(v41 - 8) + 16))(v40, a1, v41);
  sub_22C908C5C();
  sub_22C726BA8(&qword_2814357B0, MEMORY[0x277D1C338]);
  v42 = v8;
  *&v40[*(v37 + 28)] = sub_22C909F0C();
  v43 = v130;
  v129 = v40;
  sub_22C729D78(v130, v30);
  if (sub_22C370B74(v30, 1, v31) == 1)
  {
    sub_22C3AC228(v30, &qword_27D9BF610, &qword_22C922B50);
    sub_22C903F8C();
    v44 = v127;
    v45 = v120;
    v125 = *(v127 + 16);
    (v125)(v120, v43, v42);
    v46 = v126;

    v47 = sub_22C9063CC();
    v48 = sub_22C90AADC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v46;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v131 = v51;
      *v50 = 136315394;
      *(v50 + 4) = sub_22C36F9F4(v121, v49, &v131);
      *(v50 + 12) = 2080;
      sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v52 = sub_22C90B47C();
      v53 = v45;
      v55 = v54;
      (*(v44 + 8))(v53, v42);
      v56 = sub_22C36F9F4(v52, v55, &v131);

      *(v50 + 14) = v56;
      _os_log_impl(&dword_22C366000, v47, v48, "missing value for.%s @ statementId %s in transcript", v50, 0x16u);
      swift_arrayDestroy();
      v57 = v51;
      v43 = v130;
      MEMORY[0x2318B9880](v57, -1, -1);
      MEMORY[0x2318B9880](v50, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v45, v42);
    }

    (*(v122 + 8))(v128, v123);
    type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    v73 = v74;
    (v125)(v74, v43, v42);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_9:
    sub_22C726E8C(v129, type metadata accessor for TranscriptValueFetcher);
    return v73;
  }

  v58 = v127;
  v107 = v42;
  v120 = v32;
  v59 = *(v32 + 4);
  v128 = v31;
  v59(v35, v30, v31);
  v60 = v124;
  sub_22C90207C();
  v61 = v125;
  v62 = v119;
  v63 = (*(v125 + 88))(v60, v119);
  if (v63 == *MEMORY[0x277D72A58])
  {
    v64 = v113;
    (*(v61 + 16))(v113, v60, v62);
    (*(v61 + 96))(v64, v62);
    v65 = *v64;
    v66 = swift_projectBox();
    v68 = v114;
    v67 = v115;
    if ((*(v114 + 88))(v66, v115) == *MEMORY[0x277D729B8])
    {
      v69 = v109;
      (*(v68 + 16))(v109, v66, v67);
      (*(v68 + 96))(v69, v67);
      v70 = v35;
      v71 = *v69;
      v72 = *(v69 + 1);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_22C90F800;
      *(v73 + 32) = v71;
      *(v73 + 40) = v72;
      v120[1](v70, v128);
      sub_22C726E8C(v129, type metadata accessor for TranscriptValueFetcher);

      (*(v61 + 8))(v60, v62);
      return v73;
    }

    v75 = v62;
  }

  else
  {
    v75 = v62;
    if (v63 == *MEMORY[0x277D729E0])
    {
      v76 = v35;
      v78 = v124;
      v77 = v125;
      v79 = v108;
      (*(v125 + 16))(v108, v124, v75);
      (*(v77 + 96))(v79, v75);
      v80 = *v79;
      v81 = swift_projectBox();
      v73 = v110;
      v82 = v111;
      v83 = v112;
      (*(v111 + 16))(v110, v81, v112);
      sub_22C90905C();
      (*(v82 + 8))(v73, v83);

      v84 = (*(v77 + 8))(v78, v75);
      MEMORY[0x28223BE20](v84);
      v85 = v126;
      *(&v106 - 4) = v121;
      *(&v106 - 3) = v85;
      *(&v106 - 2) = v130;
      v86 = v117;
      v87 = sub_22C3B4104(sub_22C726EE0);
      if (!v86)
      {
        v73 = v87;

        v120[1](v76, v128);
        sub_22C726E8C(v129, type metadata accessor for TranscriptValueFetcher);
        return v73;
      }

      v120[1](v76, v128);
      goto LABEL_9;
    }
  }

  v119 = v35;
  v88 = v118;
  sub_22C903F8C();
  v89 = v58;
  v90 = *(v58 + 16);
  v91 = v116;
  v92 = v107;
  v90(v116, v130, v107);
  v93 = sub_22C9063CC();
  v94 = sub_22C90AADC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v131 = v96;
    *v95 = 136315138;
    sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v97 = sub_22C90B47C();
    v98 = v91;
    v100 = v99;
    (*(v89 + 8))(v98, v92);
    v101 = sub_22C36F9F4(v97, v100, &v131);

    *(v95 + 4) = v101;
    _os_log_impl(&dword_22C366000, v93, v94, "expected string or [string] @ statementId %s", v95, 0xCu);
    sub_22C36FF94(v96);
    MEMORY[0x2318B9880](v96, -1, -1);
    MEMORY[0x2318B9880](v95, -1, -1);

    (*(v122 + 8))(v118, v123);
  }

  else
  {

    (*(v89 + 8))(v91, v92);
    (*(v122 + 8))(v88, v123);
  }

  v102 = v120;
  type metadata accessor for StructuredQueryConverterError(0);
  sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
  swift_allocError();
  v73 = v126;
  *v103 = v121;
  v103[1] = v73;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v104 = v102[1];

  v104(v119, v128);
  sub_22C726E8C(v129, type metadata accessor for TranscriptValueFetcher);
  (*(v125 + 8))(v124, v75);
  return v73;
}

uint64_t sub_22C71EF2C(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v86 = sub_22C900C9C();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v86);
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v72 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - v10;
  v12 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v72 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = sub_22C901FAC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v83 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v78 = &v72 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v72 - v27;
  v88 = MEMORY[0x277D84F90];
  v82 = a1;
  sub_22C6053E0(a1, v19);
  if (sub_22C370B74(v19, 1, v20) == 1)
  {
    v77 = v2;
    sub_22C3AC228(v19, &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    (*(v21 + 32))(v28, v19, v20);
    v29 = v85;
    v30 = sub_22C71E144(v84, v28, 0x6E6F697461636F6CLL, 0xE800000000000000);
    if (v29)
    {
      return (*(v21 + 8))(v28, v20);
    }

    v32 = v30;
    v73 = v28;
    v77 = v2;
    v33 = *(v30 + 16);
    v85 = 0;
    if (v33)
    {
      v74 = v21;
      v75 = v20;
      v87 = MEMORY[0x277D84F90];
      sub_22C3B7590(0, v33, 0);
      v34 = v87;
      v72 = v32;
      v35 = (v32 + 40);
      do
      {
        v36 = *(v35 - 1);
        v37 = *v35;

        sub_22C900C8C();
        sub_22C900C3C();
        v87 = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22C3B7590(v38 > 1, v39 + 1, 1);
          v34 = v87;
        }

        *(v34 + 16) = v39 + 1;
        (*(v4 + 32))(v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v39, v11, v86);
        v35 += 2;
        --v33;
      }

      while (v33);

      v21 = v74;
      v20 = v75;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    sub_22C3CE410(v34);
    (*(v21 + 8))(v73, v20);
  }

  v40 = v80;
  v41 = v81;
  v42 = v82;
  v43 = v83;
  sub_22C6053E0(v82, v80);
  v44 = sub_22C370B74(v40, 1, v20);
  v45 = v84;
  if (v44 == 1)
  {
    sub_22C3AC228(v40, &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    v46 = v78;
    (*(v21 + 32))(v78, v40, v20);
    v47 = v46;
    v48 = v85;
    v49 = sub_22C71E144(v45, v46, 0xD000000000000010, 0x800000022C92EAD0);
    v85 = v48;
    if (v48)
    {
      (*(v21 + 8))(v46, v20);
    }

    v50 = *(v49 + 16);
    if (v50)
    {
      v74 = v21;
      v75 = v20;
      v87 = MEMORY[0x277D84F90];
      v51 = v49;
      sub_22C3B7590(0, v50, 0);
      v52 = v87;
      v80 = v51;
      v53 = (v51 + 40);
      v54 = v76;
      do
      {
        v55 = *(v53 - 1);
        v56 = *v53;

        sub_22C900C8C();
        sub_22C900C5C();
        v87 = v52;
        v58 = *(v52 + 16);
        v57 = *(v52 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_22C3B7590(v57 > 1, v58 + 1, 1);
          v52 = v87;
        }

        *(v52 + 16) = v58 + 1;
        (*(v4 + 32))(v52 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v58, v54, v86);
        v53 += 2;
        --v50;
      }

      while (v50);

      v41 = v81;
      v21 = v74;
      v20 = v75;
      v47 = v78;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    sub_22C3CE410(v52);
    (*(v21 + 8))(v47, v20);
    v43 = v83;
    v45 = v84;
    v42 = v82;
  }

  v59 = v42;
  v60 = v79;
  sub_22C6053E0(v59, v79);
  if (sub_22C370B74(v60, 1, v20) == 1)
  {
    sub_22C3AC228(v60, &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    (*(v21 + 32))(v43, v60, v20);
    v61 = v85;
    v62 = sub_22C71E144(v45, v43, 0xD000000000000012, 0x800000022C92EAF0);
    if (v61)
    {
      (*(v21 + 8))(v43, v20);
    }

    v63 = v62;
    v64 = *(v62 + 16);
    if (v64)
    {
      v74 = v21;
      v75 = v20;
      v85 = 0;
      v87 = MEMORY[0x277D84F90];
      sub_22C3B7590(0, v64, 0);
      v65 = v87;
      v84 = v63;
      v66 = (v63 + 40);
      do
      {
        v67 = *(v66 - 1);
        v68 = *v66;

        sub_22C900C8C();
        sub_22C900C7C();
        v87 = v65;
        v69 = v41;
        v71 = *(v65 + 16);
        v70 = *(v65 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_22C3B7590(v70 > 1, v71 + 1, 1);
          v65 = v87;
        }

        *(v65 + 16) = v71 + 1;
        (*(v4 + 32))(v65 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v71, v69, v86);
        v66 += 2;
        --v64;
        v41 = v69;
      }

      while (v64);

      v21 = v74;
      v20 = v75;
    }

    else
    {

      v65 = MEMORY[0x277D84F90];
    }

    sub_22C3CE410(v65);
    (*(v21 + 8))(v83, v20);
  }

  result = v88;
  if (!*(v88 + 16))
  {

    return 0;
  }

  return result;
}

uint64_t sub_22C71F7A8(uint64_t a1, uint64_t a2)
{
  v262 = sub_22C9063DC();
  v261 = *(v262 - 8);
  v4 = *(v261 + 64);
  MEMORY[0x28223BE20](v262);
  v6 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BF970, &qword_22C9238B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v296 = &v253 - v9;
  v292 = sub_22C900B4C();
  v269 = *(v292 - 8);
  v10 = *(v269 + 64);
  MEMORY[0x28223BE20](v292);
  v268 = &v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_22C90654C();
  v289 = *(v290 - 8);
  v12 = *(v289 + 64);
  v13 = MEMORY[0x28223BE20](v290);
  v271 = &v253 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v276 = &v253 - v16;
  MEMORY[0x28223BE20](v15);
  v284 = &v253 - v17;
  v18 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v302 = &v253 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v279 = &v253 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v281 = &v253 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v282 = &v253 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v299 = &v253 - v29;
  MEMORY[0x28223BE20](v28);
  v291 = &v253 - v30;
  v31 = sub_22C3A5908(&qword_27D9BF960, &unk_22C9238A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v310 = &v253 - v33;
  v309 = sub_22C900F4C();
  v285 = *(v309 - 8);
  v34 = *(v285 + 64);
  MEMORY[0x28223BE20](v309);
  v308 = &v253 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C900BDC();
  v37 = *(v36 - 8);
  v311 = v36;
  v312 = v37;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v287 = &v253 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v293 = &v253 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v263 = &v253 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v264 = &v253 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v267 = &v253 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v266 = &v253 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v265 = &v253 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v274 = &v253 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v273 = &v253 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v270 = &v253 - v58;
  MEMORY[0x28223BE20](v57);
  v280 = &v253 - v59;
  v60 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v275 = &v253 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v253 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v283 = &v253 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v295 = &v253 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v294 = &v253 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v297 = &v253 - v74;
  MEMORY[0x28223BE20](v73);
  v76 = &v253 - v75;
  v77 = sub_22C901FAC();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  v80 = MEMORY[0x28223BE20](v77);
  v272 = &v253 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v278 = &v253 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v277 = &v253 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v286 = &v253 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v288 = &v253 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v298 = &v253 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v94 = &v253 - v93;
  v314 = MEMORY[0x277D84F90];
  sub_22C68F4E8(v92, v95, v96, v97, v98, v99, v100, v101, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
  v303 = v102;
  v300 = a1;
  sub_22C6053E0(a1, v76);
  v103 = sub_22C370B74(v76, 1, v77);
  v260 = v6;
  if (v103 == 1)
  {
    v258 = v66;
    v259 = a2;
    sub_22C3AC228(v76, &qword_27D9BC030, &unk_22C911CC0);
    v104 = v299;
    v105 = v300;
    v106 = v297;
    v107 = v77;
  }

  else
  {
    (*(v78 + 32))(v94, v76, v77);
    ConverterError = v301;
    v109 = v304;
    v110 = sub_22C71E144(a2, v94, 0x6E6F73726570, 0xE600000000000000);
    v111 = v94;
    if (v109)
    {
      (*(v78 + 8))(v94, v77);

      goto LABEL_104;
    }

    v112 = v110;
    v258 = v66;
    v259 = a2;
    v257 = v77;
    v113 = *(v110 + 16);
    v304 = 0;
    if (v113)
    {
      v255 = v111;
      v256 = v78;
      v313 = MEMORY[0x277D84F90];
      sub_22C3B75E8(0, v113, 0);
      v114 = (v285 + 8);
      v115 = v313;
      v306 = v312 + 32;
      v307 = (v285 + 16);
      v254 = v112;
      v116 = (v112 + 40);
      v305 = xmmword_22C90F800;
      v117 = v280;
      do
      {
        v118 = *(v116 - 1);
        v119 = *v116;

        sub_22C900BCC();
        v120 = v308;
        sub_22C900F3C();
        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        v121 = swift_allocObject();
        *(v121 + 16) = v305;
        *(v121 + 32) = v118;
        *(v121 + 40) = v119;

        sub_22C900F1C();
        v123 = v309;
        v122 = v310;
        (*v307)(v310, v120, v309);
        sub_22C36C640(v122, 0, 1, v123);
        sub_22C900B6C();

        (*v114)(v120, v123);
        v313 = v115;
        v125 = *(v115 + 16);
        v124 = *(v115 + 24);
        if (v125 >= v124 >> 1)
        {
          sub_22C3B75E8(v124 > 1, v125 + 1, 1);
          v115 = v313;
        }

        *(v115 + 16) = v125 + 1;
        (*(v312 + 32))(v115 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v125, v117, v311);
        v116 += 2;
        --v113;
      }

      while (v113);

      v78 = v256;
      v111 = v255;
    }

    else
    {

      v115 = MEMORY[0x277D84F90];
    }

    sub_22C3CE43C(v115);
    v107 = v257;
    (*(v78 + 8))(v111, v257);
    v104 = v299;
    v105 = v300;
    v106 = v297;
  }

  ConverterError = 0xEC000000656D5F73;
  sub_22C6053E0(v105, v106);
  v126 = sub_22C370B74(v106, 1, v107);
  v128 = v302;
  v127 = v303;
  if (v126 == 1)
  {
    sub_22C3AC228(v106, &qword_27D9BC030, &unk_22C911CC0);
    goto LABEL_15;
  }

  v131 = v106;
  v132 = v298;
  (*(v78 + 32))(v298, v131, v107);
  v133 = v291;
  sub_22C60539C(v132, v127);
  sub_22C726F20(v133, v104, &qword_27D9BAA18, &qword_22C911C40);
  v134 = sub_22C9070DC();
  if (sub_22C370B74(v104, 1, v134) == 1)
  {

    sub_22C3AC228(v104, &qword_27D9BAA18, &qword_22C911C40);
LABEL_29:
    type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    strcpy(v149, "person_is_me");
    v149[13] = 0;
    *(v149 + 7) = -5120;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C3AC228(v133, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v298, v107);
    goto LABEL_104;
  }

  v138 = v104;
  v139 = v284;
  sub_22C90702C();
  (*(*(v134 - 8) + 8))(v138, v134);
  v140 = v289;
  v141 = v290;
  if ((*(v289 + 88))(v139, v290) != *MEMORY[0x277D1DAA8] || ((*(v140 + 96))(v139, v141), v141 = sub_22C906F2C(), v140 = *(v141 - 8), (*(v140 + 88))(v139, v141) != *MEMORY[0x277D1DED8]))
  {

    (*(v140 + 8))(v139, v141);
    ConverterError = 0xEC000000656D5F73;
    goto LABEL_29;
  }

  (*(v140 + 96))(v139, v141);
  if (*v139 == 1)
  {
    v142 = v270;
    sub_22C900BCC();
    v143 = v310;
    sub_22C900F2C();
    sub_22C36C640(v143, 0, 1, v309);
    sub_22C900B6C();
    (*(v312 + 16))(v273, v142, v311);
    v144 = v314;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v244 = v144[2];
      sub_22C593C74();
      v144 = v245;
    }

    v145 = v144[2];
    if (v145 >= v144[3] >> 1)
    {
      sub_22C593C74();
      v144 = v246;
    }

    v146 = v312;
    v147 = v142;
    v148 = v311;
    (*(v312 + 8))(v147, v311);
    sub_22C3AC228(v133, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v298, v107);
    v144[2] = v145 + 1;
    (*(v146 + 32))(v144 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v145, v273, v148);
    v314 = v144;
    v105 = v300;
  }

  else
  {
    sub_22C3AC228(v133, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v298, v107);
  }

  v128 = v302;
LABEL_15:
  v129 = v295;
  v130 = v294;
  sub_22C6053E0(v105, v294);
  if (sub_22C370B74(v130, 1, v107) == 1)
  {
    sub_22C3AC228(v130, &qword_27D9BC030, &unk_22C911CC0);
  }

  else
  {
    v135 = v288;
    (*(v78 + 32))(v288, v130, v107);
    ConverterError = v301;
    v136 = v304;
    v137 = sub_22C71E144(v259, v135, 0x7265646E6573, 0xE600000000000000);
    v304 = v136;
    if (v136)
    {
      (*(v78 + 8))(v135, v107);
LABEL_46:

      goto LABEL_104;
    }

    v150 = v137;
    v151 = *(v137 + 16);
    if (v151)
    {
      v257 = v107;
      v256 = v78;
      v313 = MEMORY[0x277D84F90];
      sub_22C3B75E8(0, v151, 0);
      v152 = (v285 + 8);
      v153 = v313;
      v306 = v312 + 32;
      v307 = (v285 + 16);
      v299 = v150;
      v154 = (v150 + 40);
      v305 = xmmword_22C90F800;
      v155 = v274;
      do
      {
        v156 = *(v154 - 1);
        v157 = *v154;

        sub_22C900BCC();
        v158 = v308;
        sub_22C900F3C();
        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        v159 = swift_allocObject();
        *(v159 + 16) = v305;
        *(v159 + 32) = v156;
        *(v159 + 40) = v157;

        sub_22C900F1C();
        v161 = v309;
        v160 = v310;
        (*v307)(v310, v158, v309);
        sub_22C36C640(v160, 0, 1, v161);
        sub_22C900B8C();

        (*v152)(v158, v161);
        v313 = v153;
        v163 = *(v153 + 16);
        v162 = *(v153 + 24);
        if (v163 >= v162 >> 1)
        {
          sub_22C3B75E8(v162 > 1, v163 + 1, 1);
          v153 = v313;
        }

        *(v153 + 16) = v163 + 1;
        (*(v312 + 32))(v153 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v163, v155, v311);
        v154 += 2;
        --v151;
      }

      while (v151);

      v78 = v256;
      v107 = v257;
      v105 = v300;
      v135 = v288;
    }

    else
    {

      v153 = MEMORY[0x277D84F90];
    }

    sub_22C3CE43C(v153);
    (*(v78 + 8))(v135, v107);
    v128 = v302;
    v127 = v303;
    v129 = v295;
  }

  sub_22C6053E0(v105, v129);
  if (sub_22C370B74(v129, 1, v107) == 1)
  {
    sub_22C3AC228(v129, &qword_27D9BC030, &unk_22C911CC0);
    goto LABEL_40;
  }

  v166 = v286;
  (*(v78 + 32))(v286, v129, v107);
  v167 = v282;
  sub_22C60539C(v166, v127);
  v168 = v281;
  sub_22C726F20(v167, v281, &qword_27D9BAA18, &qword_22C911C40);
  v169 = sub_22C9070DC();
  if (sub_22C370B74(v168, 1, v169) == 1)
  {

    sub_22C3AC228(v168, &qword_27D9BAA18, &qword_22C911C40);
LABEL_56:
    ConverterError = type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    strcpy(v184, "sender_is_me");
    v184[13] = 0;
    *(v184 + 7) = -5120;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C3AC228(v167, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v166, v107);
    goto LABEL_104;
  }

  v174 = v276;
  sub_22C90702C();
  (*(*(v169 - 8) + 8))(v168, v169);
  v175 = v289;
  v176 = v290;
  if ((*(v289 + 88))(v174, v290) != *MEMORY[0x277D1DAA8] || ((*(v175 + 96))(v174, v176), v176 = sub_22C906F2C(), v175 = *(v176 - 8), (*(v175 + 88))(v174, v176) != *MEMORY[0x277D1DED8]))
  {

    (*(v175 + 8))(v174, v176);
    v166 = v286;
    goto LABEL_56;
  }

  (*(v175 + 96))(v174, v176);
  if (*v174 == 1)
  {
    v177 = v265;
    sub_22C900BCC();
    v178 = v310;
    sub_22C900F2C();
    sub_22C36C640(v178, 0, 1, v309);
    sub_22C900B8C();
    (*(v312 + 16))(v266, v177, v311);
    v179 = v314;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v247 = *(v179 + 16);
      sub_22C593C74();
      v179 = v248;
    }

    v180 = *(v179 + 16);
    if (v180 >= *(v179 + 24) >> 1)
    {
      sub_22C593C74();
      v179 = v249;
    }

    v181 = v312;
    v182 = v177;
    v183 = v311;
    (*(v312 + 8))(v182, v311);
    sub_22C3AC228(v167, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v286, v107);
    *(v179 + 16) = v180 + 1;
    (*(v181 + 32))(v179 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v180, v266, v183);
    v314 = v179;
    v105 = v300;
  }

  else
  {
    sub_22C3AC228(v167, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v286, v107);
  }

  v128 = v302;
LABEL_40:
  v164 = v283;
  sub_22C6053E0(v105, v283);
  v165 = sub_22C370B74(v164, 1, v107);
  ConverterError = v301;
  if (v165 == 1)
  {
    sub_22C3AC228(v164, &qword_27D9BC030, &unk_22C911CC0);
    goto LABEL_67;
  }

  v170 = v164;
  v171 = v277;
  (*(v78 + 32))(v277, v170, v107);
  v172 = v304;
  v173 = sub_22C71E144(v259, v171, 0x7265766965636572, 0xE800000000000000);
  v304 = v172;
  if (v172)
  {
    (*(v78 + 8))(v171, v107);
    goto LABEL_46;
  }

  v185 = v173;
  v257 = v107;
  v186 = *(v173 + 16);
  if (v186)
  {
    v256 = v78;
    v313 = MEMORY[0x277D84F90];
    sub_22C3B75E8(0, v186, 0);
    v187 = (v285 + 8);
    v188 = v313;
    v306 = v312 + 32;
    v307 = (v285 + 16);
    v301 = v185;
    v189 = (v185 + 40);
    v305 = xmmword_22C90F800;
    v190 = v267;
    do
    {
      v191 = *(v189 - 1);
      v192 = *v189;

      sub_22C900BCC();
      v193 = v308;
      sub_22C900F3C();
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v194 = swift_allocObject();
      *(v194 + 16) = v305;
      *(v194 + 32) = v191;
      *(v194 + 40) = v192;

      sub_22C900F1C();
      v196 = v309;
      v195 = v310;
      (*v307)(v310, v193, v309);
      sub_22C36C640(v195, 0, 1, v196);
      sub_22C900BBC();

      (*v187)(v193, v196);
      v313 = v188;
      v198 = *(v188 + 16);
      v197 = *(v188 + 24);
      if (v198 >= v197 >> 1)
      {
        sub_22C3B75E8(v197 > 1, v198 + 1, 1);
        v188 = v313;
      }

      *(v188 + 16) = v198 + 1;
      (*(v312 + 32))(v188 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v198, v190, v311);
      v189 += 2;
      --v186;
    }

    while (v186);

    v78 = v256;
    v105 = v300;
    v171 = v277;
  }

  else
  {

    v188 = MEMORY[0x277D84F90];
  }

  sub_22C3CE43C(v188);
  v107 = v257;
  (*(v78 + 8))(v171, v257);
  v128 = v302;
  v127 = v303;
LABEL_67:
  v199 = v258;
  sub_22C6053E0(v105, v258);
  if (sub_22C370B74(v199, 1, v107) != 1)
  {
    v201 = v278;
    (*(v78 + 32))(v278, v199, v107);
    v202 = v279;
    sub_22C60539C(v201, v127);
    sub_22C726F20(v202, v128, &qword_27D9BAA18, &qword_22C911C40);
    v203 = sub_22C9070DC();
    if (sub_22C370B74(v128, 1, v203) == 1)
    {

      sub_22C3AC228(v128, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      v206 = v271;
      sub_22C90702C();
      v207 = *(*(v203 - 8) + 8);
      v208 = v203;
      v209 = v206;
      v207(v128, v208);
      v210 = v289;
      v211 = v206;
      v212 = v290;
      if ((*(v289 + 88))(v211, v290) == *MEMORY[0x277D1DAA8])
      {
        (*(v210 + 96))(v209, v212);
        v213 = sub_22C906F2C();
        v214 = *(v213 - 8);
        if ((*(v214 + 88))(v209, v213) == *MEMORY[0x277D1DED8])
        {
          (*(v214 + 96))(v209, v213);
          if (*v209 == 1)
          {
            v215 = v264;
            sub_22C900BCC();
            v216 = v310;
            sub_22C900F2C();
            sub_22C36C640(v216, 0, 1, v309);
            sub_22C900BBC();
            v217 = v263;
            (*(v312 + 16))(v263, v215, v311);
            v218 = v314;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v250 = *(v218 + 16);
              sub_22C593C74();
              v218 = v251;
            }

            v219 = *(v218 + 16);
            if (v219 >= *(v218 + 24) >> 1)
            {
              sub_22C593C74();
              v218 = v252;
            }

            v221 = v311;
            v220 = v312;
            (*(v312 + 8))(v264, v311);
            sub_22C3AC228(v279, &qword_27D9BAA18, &qword_22C911C40);
            (*(v78 + 8))(v278, v107);
            *(v218 + 16) = v219 + 1;
            (*(v220 + 32))(v218 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v219, v217, v221);
            v314 = v218;
          }

          else
          {
            sub_22C3AC228(v279, &qword_27D9BAA18, &qword_22C911C40);
            (*(v78 + 8))(v278, v107);
          }

          v105 = v300;
          v200 = v275;
          v127 = v303;
          goto LABEL_69;
        }

        (*(v214 + 8))(v209, v213);
      }

      else
      {

        (*(v210 + 8))(v209, v212);
      }
    }

    ConverterError = type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    strcpy(v235, "receiver_is_me");
    v235[15] = -18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C3AC228(v279, &qword_27D9BAA18, &qword_22C911C40);
    (*(v78 + 8))(v278, v107);
    goto LABEL_104;
  }

  sub_22C3AC228(v199, &qword_27D9BC030, &unk_22C911CC0);
  v200 = v275;
LABEL_69:
  sub_22C6053E0(v105, v200);
  if (sub_22C370B74(v200, 1, v107) == 1)
  {

    sub_22C3AC228(v200, &qword_27D9BC030, &unk_22C911CC0);
LABEL_71:
    ConverterError = v314;
    if (!*(v314 + 16))
    {

      return 0;
    }

    return ConverterError;
  }

  ConverterError = v272;
  (*(v78 + 32))(v272, v200, v107);
  v204 = v304;
  sub_22C722EA0(v127, ConverterError, 0xD000000000000013, 0x800000022C92EB20);
  if (!v204)
  {
    v222 = v205;
    v256 = v78;
    v304 = 0;

    v78 = 0;
    v142 = *(v222 + 16);
    v133 = v269 + 32;
    v223 = v222 + 40;
    v127 = &qword_22C9238B0;
    v310 = MEMORY[0x277D84F90];
    v257 = v107;
    v309 = v222 + 40;
LABEL_87:
    v144 = (v223 + 16 * v78);
    while (v142 != v78)
    {
      if (v78 >= *(v222 + 16))
      {
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v225 = *(v144 - 1);
      v224 = *v144;

      v226 = v296;
      sub_22C900B2C();
      if (sub_22C370B74(v226, 1, v292) != 1)
      {
        v227 = *v133;
        (*v133)(v268, v226, v292);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v230 = *(v310 + 16);
          sub_22C593BAC();
          v310 = v231;
        }

        v228 = *(v310 + 16);
        if (v228 >= *(v310 + 24) >> 1)
        {
          sub_22C593BAC();
          v310 = v232;
        }

        ++v78;
        v229 = v310;
        *(v310 + 16) = v228 + 1;
        v227(v229 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v228, v268, v292);
        v107 = v257;
        v223 = v309;
        goto LABEL_87;
      }

      sub_22C3AC228(v226, &qword_27D9BF970, &qword_22C9238B0);
      v144 += 2;
      ++v78;
    }

    v233 = *(v310 + 16);
    v309 = v314;
    v142 = *(v314 + 16);
    if (v233 == 1)
    {
      v234 = v311;
      v144 = v287;
      if (!v142)
      {

        (*(v256 + 8))(v272, v107);

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v234 = v311;
      v144 = v287;
      if (v142 != 1)
      {

        v240 = v260;
        sub_22C903F8C();
        v241 = sub_22C9063CC();
        v242 = sub_22C90AADC();
        if (os_log_type_enabled(v241, v242))
        {
          v243 = swift_slowAlloc();
          *v243 = 0;
          _os_log_impl(&dword_22C366000, v241, v242, "StructuredQueryConverter: Unexpected model output - multiple handle types and multiple person queries are specified. Dropping handle types from the query.", v243, 2u);
          MEMORY[0x2318B9880](v243, -1, -1);
        }

        (*(v261 + 8))(v240, v262);
        (*(v256 + 8))(v272, v107);
        goto LABEL_71;
      }
    }

    v313 = MEMORY[0x277D84F90];
    sub_22C3B75E8(0, v142, 0);
    v107 = 0;
    ConverterError = v313;
    v311 = (*(v312 + 80) + 32) & ~*(v312 + 80);
    v308 = (v309 + v311);
    v307 = (v312 + 16);
    v78 = v312 + 8;
    v237 = (v312 + 32);
    while (v107 < *(v309 + 16))
    {
      v127 = *(v312 + 72);
      (*(v312 + 16))(v144, &v308[v127 * v107], v234);
      v238 = v304;
      sub_22C724160(v144, v310, v293);
      v304 = v238;
      if (v238)
      {
        (*v78)(v144, v234);

        __break(1u);
        return result;
      }

      (*v78)(v144, v234);
      v313 = ConverterError;
      v133 = *(ConverterError + 16);
      v239 = *(ConverterError + 24);
      if (v133 >= v239 >> 1)
      {
        sub_22C3B75E8(v239 > 1, v133 + 1, 1);
        ConverterError = v313;
      }

      ++v107;
      *(ConverterError + 16) = v133 + 1;
      (*v237)(ConverterError + v311 + v133 * v127, v293, v234);
      v144 = v287;
      if (v142 == v107)
      {
        (*(v256 + 8))(v272, v257);

        return ConverterError;
      }
    }

    goto LABEL_120;
  }

  (*(v78 + 8))(ConverterError, v107);

LABEL_104:

  return ConverterError;
}

uint64_t sub_22C721D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *(*(sub_22C3A5908(&qword_27D9BF748, &unk_22C922F78) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = sub_22C90926C();
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = sub_22C9063DC();
  v5[27] = v10;
  v11 = *(v10 - 8);
  v5[28] = v11;
  v12 = *(v11 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C721F28, 0, 0);
}

uint64_t sub_22C721F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v13 = *(v12 + 136);
  Converter = type metadata accessor for StructuredQueryConverter(0);
  sub_22C726F20(v13 + *(Converter + 20), v12 + 56, &qword_27D9BF800, &qword_22C923130);
  if (*(v12 + 80))
  {
    sub_22C36C730((v12 + 56), v12 + 16);
    v15 = *(v12 + 48);
    sub_22C374168((v12 + 16), *(v12 + 40));
    v16 = *(MEMORY[0x277D1DB88] + 4);
    v17 = swift_task_alloc();
    *(v12 + 264) = v17;
    *v17 = v12;
    v17[1] = sub_22C7220E0;
    v19 = *(v12 + 112);
    v18 = *(v12 + 120);
    sub_22C372034();

    return MEMORY[0x282176E58](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  else
  {
    v28 = *(v12 + 104);
    sub_22C3AC228(v12 + 56, &qword_27D9BF800, &qword_22C923130);
    sub_22C8FFDBC();
    v29 = sub_22C37ED2C();
    sub_22C36C640(v29, v30, 1, v31);
    sub_22C727048();
    v42 = v32;

    sub_22C369C50();
    sub_22C372034();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, a10, a11, a12);
  }
}

uint64_t sub_22C7220E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v7 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = sub_22C722898;
  }

  else
  {
    v5 = sub_22C7221F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C7221F4()
{
  v103 = v0;
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = v0[32];
    v8 = v0[15];

    sub_22C903F8C();

    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[32];
    v13 = v0[27];
    v14 = v0[28];
    if (v11)
    {
      v16 = v0[14];
      v15 = v0[15];
      v17 = sub_22C36FB44();
      v18 = sub_22C370060();
      v102[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_22C36F9F4(v16, v15, v102);
      _os_log_impl(&dword_22C366000, v9, v10, "no apps matching '%s'", v17, 0xCu);
      sub_22C36FF94(v18);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_17;
  }

  v3 = v0[20];
  sub_22C58B594(v1, v0[19]);
  v4 = sub_22C36CCF8();
  sub_22C36D0A8(v4, v5, v3);
  if (v6)
  {
    sub_22C3AC228(v0[19], &qword_27D9BF748, &unk_22C922F78);
  }

  else
  {
    (*(v0[21] + 32))(v0[26], v0[19], v0[20]);
    if (v2 == 1)
    {
      v19 = v0[34];
      v20 = v0[31];
      v22 = v0[25];
      v21 = v0[26];
      v23 = v0[20];
      v24 = v0[21];
      v25 = v0[15];

      sub_22C903F8C();
      v26 = *(v24 + 16);
      v27 = sub_22C37FF20();
      v26(v27);

      v28 = sub_22C9063CC();
      v29 = sub_22C90AABC();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[31];
      v32 = v0[27];
      v33 = v0[28];
      v34 = v0[25];
      if (v30)
      {
        log = v28;
        v35 = v0[24];
        v100 = v0[31];
        v93 = v26;
        v37 = v0[20];
        v36 = v0[21];
        v95 = v29;
        v38 = v0[14];
        v39 = v0[15];
        v98 = v0[27];
        v40 = swift_slowAlloc();
        v102[0] = swift_slowAlloc();
        *v40 = 136315394;
        v41 = sub_22C36BA00();
        *(v40 + 4) = sub_22C36F9F4(v41, v42, v43);
        *(v40 + 12) = 2080;
        v93(v35, v34, v37);
        sub_22C90A1AC();
        v44 = *(v36 + 8);
        v44(v34, v37);
        v45 = sub_22C36BBCC();
        v48 = sub_22C36F9F4(v45, v46, v47);

        *(v40 + 14) = v48;
        _os_log_impl(&dword_22C366000, log, v95, "Found one app matching '%s':\n%s", v40, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v33 + 8))(v100, v98);
      }

      else
      {
        v82 = v0[20];
        v81 = v0[21];

        v44 = *(v81 + 8);
        v44(v34, v82);
        (*(v33 + 8))(v31, v32);
      }

      v83 = v0[26];
      v84 = v0[20];
      v85 = v0[13];
      sub_22C90924C();
      sub_22C8FFDCC();
      v86 = sub_22C36BBCC();
      (v44)(v86);
      goto LABEL_24;
    }

    (*(v0[21] + 8))(v0[26], v0[20]);
  }

  v49 = v0[34];
  v50 = v0[35];
  v51 = v0[16];
  *(swift_task_alloc() + 16) = v51;
  sub_22C793914();
  v53 = v52;

  if (*(v53 + 16) != 1)
  {

    goto LABEL_17;
  }

  v54 = v0[20];
  v55 = v0[18];
  sub_22C58B594(v53, v55);

  sub_22C369A54(v55);
  if (v6)
  {
    sub_22C3AC228(v0[18], &qword_27D9BF748, &unk_22C922F78);
LABEL_17:
    v56 = v0[13];
    sub_22C8FFDBC();
    v57 = sub_22C37ED2C();
    goto LABEL_25;
  }

  v60 = v0[30];
  v61 = v0[22];
  v62 = v0[21];
  (*(v62 + 32))(v0[23], v0[18], v0[20]);
  sub_22C903F8C();
  v63 = *(v62 + 16);
  v64 = sub_22C37FF20();
  v65(v64);
  v66 = sub_22C9063CC();
  v67 = sub_22C90AABC();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v0[30];
  v71 = v0[27];
  v70 = v0[28];
  v73 = v0[21];
  v72 = v0[22];
  v74 = v0[20];
  if (v68)
  {
    v101 = v0[27];
    v75 = sub_22C36FB44();
    loga = sub_22C370060();
    v102[0] = loga;
    *v75 = 136315138;
    v94 = sub_22C90924C();
    v99 = v69;
    v77 = v76;
    v78 = *(v73 + 8);
    v79 = sub_22C727154();
    v78(v79);
    v80 = sub_22C36F9F4(v94, v77, v102);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_22C366000, v66, v67, "Found a single show in app search conforming tool for bundleId: %s", v75, 0xCu);
    sub_22C36FF94(loga);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v70 + 8))(v99, v101);
  }

  else
  {

    v78 = *(v73 + 8);
    v87 = sub_22C727154();
    v78(v87);
    (*(v70 + 8))(v69, v71);
  }

  v88 = v0[23];
  v89 = v0[20];
  v85 = v0[13];
  sub_22C90924C();
  sub_22C8FFDCC();
  v90 = sub_22C36BBCC();
  v78(v90);
LABEL_24:
  v59 = sub_22C8FFDBC();
  v57 = v85;
  v58 = 0;
LABEL_25:
  sub_22C36C640(v57, v58, 1, v59);
  sub_22C36FF94(v0 + 2);
  sub_22C727048();

  sub_22C369C50();

  return v91();
}

uint64_t sub_22C722898()
{
  v30 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  v3 = *(v0 + 120);
  sub_22C903F8C();

  v4 = v1;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 224);
    v28 = *(v0 + 232);
    v9 = *(v0 + 216);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_22C36F9F4(v11, v10, &v29);
    *(v12 + 12) = 2080;
    *(v0 + 96) = v7;
    v13 = v7;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    v14 = sub_22C90A1AC();
    v16 = sub_22C36F9F4(v14, v15, &v29);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_22C366000, v5, v6, "Error when fetch apps matching '%s': %s", v12, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v8 + 8))(v28, v9);
  }

  else
  {
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);

    v20 = sub_22C371810();
    v21(v20);
  }

  v22 = *(v0 + 104);
  sub_22C8FFDBC();
  v23 = sub_22C37ED2C();
  sub_22C36C640(v23, v24, 1, v25);
  sub_22C36FF94((v0 + 16));
  sub_22C727048();

  sub_22C369C50();

  return v26();
}

uint64_t sub_22C722B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = sub_22C90926C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9063DC();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = sub_22C90924C();
  static Interpreter.inAppSearchTool(bundleId:toolbox:)(v17, v18, a2, v19, v20, v21, v22, v23, v38, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v45[4]);

  v24 = sub_22C908EAC();
  v25 = sub_22C370B74(v16, 1, v24);
  sub_22C3AC228(v16, &qword_27D9BC1E8, &qword_22C9123B0);
  if (v25 == 1)
  {
    sub_22C903F8C();
    v26 = v43;
    (*(v6 + 16))(v9, a1, v43);
    v27 = sub_22C9063CC();
    v28 = sub_22C90AADC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45[0] = v30;
      *v29 = 136315138;
      v31 = sub_22C90924C();
      v33 = v32;
      (*(v6 + 8))(v9, v43);
      v34 = sub_22C36F9F4(v31, v33, v45);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_22C366000, v27, v28, "No in app search results tool found for %s", v29, 0xCu);
      sub_22C36FF94(v30);
      v35 = v30;
      v26 = v43;
      MEMORY[0x2318B9880](v35, -1, -1);
      MEMORY[0x2318B9880](v29, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v26);
    }

    (*(v39 + 8))(v41, v40);
    v36 = 1;
  }

  else
  {
    v26 = v43;
    (*(v6 + 16))(a3, a1, v43);
    v36 = 0;
  }

  return sub_22C36C640(a3, v36, 1, v26);
}

void sub_22C722EA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v112 = a3;
  v113 = a4;
  v6 = sub_22C901FAC();
  v114 = *(v6 - 8);
  v115 = v6;
  v7 = *(v114 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v105 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v96 - v11;
  MEMORY[0x28223BE20](v10);
  v103 = &v96 - v12;
  v13 = sub_22C9063DC();
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = *(v110 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v96 - v17;
  v18 = sub_22C90654C();
  v109 = *(v18 - 8);
  v19 = *(v109 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v96 - v22;
  v24 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v96 - v26;
  v28 = sub_22C9070DC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v108 = a1;
  sub_22C60539C(a2, a1);
  if (sub_22C370B74(v27, 1, v28) == 1)
  {
    sub_22C3AC228(v27, &qword_27D9BAA18, &qword_22C911C40);
    v34 = v106;
    sub_22C903F8C();
    v35 = v114;
    v36 = v115;
    v37 = v105;
    v109 = *(v114 + 16);
    (v109)(v105, v33, v115);
    v38 = v113;

    v39 = sub_22C9063CC();
    v40 = sub_22C90AADC();

    LODWORD(v108) = v40;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v116 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_22C36F9F4(v112, v38, &v116);
      *(v41 + 12) = 2080;
      sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v43 = sub_22C90B47C();
      v44 = v37;
      v46 = v45;
      (*(v35 + 8))(v44, v115);
      v47 = sub_22C36F9F4(v43, v46, &v116);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_22C366000, v39, v108, "missing expression for search.%s @ statementId %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v42, -1, -1);
      v48 = v41;
      v36 = v115;
      MEMORY[0x2318B9880](v48, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v36);
    }

    (*(v110 + 8))(v34, v111);
    type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    (v109)(v61, v33, v36);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v106 = a2;
  (*(v29 + 32))(v32, v27, v28);
  sub_22C90702C();
  v49 = v109;
  v50 = (*(v109 + 88))(v23, v18);
  v51 = v18;
  v52 = v23;
  v53 = v114;
  if (v50 != *MEMORY[0x277D1DAA8])
  {
    goto LABEL_21;
  }

  v54 = v101;
  (*(v49 + 16))(v101, v52, v51);
  (*(v49 + 96))(v54, v51);
  v55 = sub_22C906F2C();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 88))(v54, v55);
  if (v57 == *MEMORY[0x277D1DEF8])
  {
    (*(v56 + 96))(v54, v55);
    v58 = *v54;
    v59 = *(v54 + 1);
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_22C90F800;
    *(v60 + 32) = v58;
    *(v60 + 40) = v59;
    (*(v29 + 8))(v32, v28);
    (*(v49 + 8))(v52, v51);
    return;
  }

  v99 = v51;
  v100 = v52;
  v62 = v102;
  if (v57 != *MEMORY[0x277D1DEE8])
  {
    if (v57 == *MEMORY[0x277D1DF00])
    {
      (*(v56 + 96))(v54, v55);
      v75 = *v54;
      v76 = *(v54 + 1);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_22C90F800;
      *(v77 + 32) = v75;
      *(v77 + 40) = v76;
      (*(v29 + 8))(v32, v28);
      (*(v49 + 8))(v100, v99);
      return;
    }

    (*(v56 + 8))(v54, v55);
    v53 = v114;
    v51 = v99;
    v52 = v100;
LABEL_21:
    v99 = v51;
    v100 = v52;
    v97 = v32;
    v98 = v29;
    v105 = v28;
    v78 = v104;
    sub_22C903F8C();
    v79 = *(v53 + 16);
    v80 = v103;
    v81 = v53;
    v82 = v115;
    v79(v103, v106, v115);
    v83 = sub_22C9063CC();
    v84 = sub_22C90AADC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v116 = v86;
      *v85 = 136315138;
      sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v87 = sub_22C90B47C();
      v88 = v80;
      v90 = v89;
      (*(v81 + 8))(v88, v82);
      v91 = sub_22C36F9F4(v87, v90, &v116);
      v92 = v99;

      *(v85 + 4) = v91;
      _os_log_impl(&dword_22C366000, v83, v84, "expected string or [string] @ statementId %s", v85, 0xCu);
      sub_22C36FF94(v86);
      MEMORY[0x2318B9880](v86, -1, -1);
      MEMORY[0x2318B9880](v85, -1, -1);

      (*(v110 + 8))(v78, v111);
      v93 = v113;
    }

    else
    {

      (*(v81 + 8))(v80, v82);
      (*(v110 + 8))(v78, v111);
      v93 = v113;
      v92 = v99;
    }

    type metadata accessor for StructuredQueryConverterError(0);
    sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
    swift_allocError();
    *v94 = v112;
    v94[1] = v93;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v95 = *(v98 + 8);

    v95(v97, v105);
    (*(v109 + 8))(v100, v92);
    return;
  }

  v97 = v32;
  v98 = v29;
  v105 = v28;
  (*(v56 + 96))(v54, v55);
  v63 = *v54;
  (*(v49 + 8))(v100, v99);
  v64 = *(v63 + 16);
  if (v64)
  {
    v116 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v65 = 0;
    v66 = v116;
    v110 = v63 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v109 = v114 + 16;
    v111 = (v114 + 8);
    while (v65 < *(v63 + 16))
    {
      v67 = v115;
      v68 = v107;
      (*(v114 + 16))(v107, v110 + *(v114 + 72) * v65, v115);
      v69 = sub_22C71D49C(v108, v68, v112, v113);
      if (v62)
      {

        (*v111)(v68, v67);
        (*(v98 + 8))(v97, v105);

        return;
      }

      v71 = v69;
      v72 = v70;
      (*v111)(v68, v67);
      v116 = v66;
      v73 = *(v66 + 16);
      if (v73 >= *(v66 + 24) >> 1)
      {
        sub_22C3B5E2C();
        v66 = v116;
      }

      ++v65;
      *(v66 + 16) = v73 + 1;
      v74 = v66 + 16 * v73;
      *(v74 + 32) = v71;
      *(v74 + 40) = v72;
      if (v64 == v65)
      {
        (*(v98 + 8))(v97, v105);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    (*(v98 + 8))(v97, v105);
  }
}

uint64_t sub_22C723B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v56 = a3;
  v57 = a5;
  v50 = a6;
  v51 = a4;
  v59 = a2;
  v7 = sub_22C901FAC();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9063DC();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90931C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22C9093BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v23, a1, v19);
  if ((*(v20 + 88))(v23, v19) == *MEMORY[0x277D72A58])
  {
    (*(v20 + 96))(v23, v19);
    v24 = *v23;
    v25 = swift_projectBox();
    (*(v15 + 16))(v18, v25, v14);
    if ((*(v15 + 88))(v18, v14) == *MEMORY[0x277D729B8])
    {
      (*(v15 + 96))(v18, v14);
      v26 = *v18;
      v27 = v18[1];

      v29 = v50;
      *v50 = v26;
      v29[1] = v27;
      return result;
    }

    (*(v15 + 8))(v18, v14);
  }

  else
  {
    (*(v20 + 8))(v23, v19);
  }

  v30 = v58;
  sub_22C903F8C();
  v31 = v52;
  v32 = v53;
  (*(v52 + 16))(v10, v51, v53);
  v33 = v56;

  v34 = sub_22C9063CC();
  v35 = sub_22C90AADC();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v59;
  if (v36)
  {
    v38 = v32;
    v39 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v60 = v51;
    *v39 = 136315394;
    *(v39 + 4) = sub_22C36F9F4(v37, v33, &v60);
    *(v39 + 12) = 2080;
    sub_22C726BA8(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v40 = v10;
    v41 = v38;
    v42 = sub_22C90B47C();
    v44 = v43;
    (*(v31 + 8))(v40, v41);
    v45 = sub_22C36F9F4(v42, v44, &v60);
    v46 = v59;

    *(v39 + 14) = v45;
    _os_log_impl(&dword_22C366000, v34, v35, "unable to build a string for %s @ %s", v39, 0x16u);
    v47 = v51;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v47, -1, -1);
    MEMORY[0x2318B9880](v39, -1, -1);

    (*(v54 + 8))(v58, v55);
  }

  else
  {

    (*(v31 + 8))(v10, v32);
    (*(v54 + 8))(v30, v55);
    v46 = v37;
  }

  type metadata accessor for StructuredQueryConverterError(0);
  sub_22C726BA8(&qword_27D9BF928, type metadata accessor for StructuredQueryConverterError);
  v48 = swift_allocError();
  *v49 = v46;
  v49[1] = v33;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  *v57 = v48;
}