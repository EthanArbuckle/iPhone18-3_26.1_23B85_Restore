unint64_t sub_22E70942C()
{
  result = qword_27DA6D290;
  if (!qword_27DA6D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D290);
  }

  return result;
}

uint64_t sub_22E709480()
{
  sub_22E6EB570();
  v3 = sub_22E6CF1CC(v1, v2);
  sub_22E6CF988(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for UUID();
  sub_22E6CF988(v7);
  v9 = v8;
  v10 = (v6 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_22E709CE4();
  v14(v13);
  v15 = *(v0 + v6);

  (*(v9 + 8))(v0 + v10, v7);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22E7095D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = sub_22E6CF1CC(a2, a3);
  sub_22E6E3A38(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for UUID();
  sub_22E6D376C(v11);
  v13 = *(v4 + v10);
  v14 = v4 + ((v10 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return a4(a1, v4 + v8, v13, v14);
}

uint64_t sub_22E7096D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E70976C()
{

  return swift_once();
}

uint64_t sub_22E70978C()
{

  return swift_once();
}

uint64_t sub_22E709850()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22E709860()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
}

void sub_22E7098CC()
{
  sub_22E6CF2F4(v0);

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E709900()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_22E7099AC()
{

  JUMPOUT(0x2318ED210);
}

uint64_t *sub_22E709A00()
{
  result = sub_22E6CF214((*(v0 + 56) + 16), *(*(v0 + 56) + 40));
  *(v0 + 272) = result;
  v2 = *result;
  return result;
}

void sub_22E709A54()
{

  JUMPOUT(0x2318ED210);
}

void sub_22E709AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  sub_22E6CF2F4(a15);

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E709AE0(uint64_t a1)
{
  *(a1 + 8) = sub_22E6FE7D0;
  v2 = v1[36];
  result = v1[33];
  v4 = v1[34];
  return result;
}

uint64_t sub_22E709B08(uint64_t result)
{
  *(result + 8) = sub_22E703218;
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  return result;
}

uint64_t sub_22E709B78(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_22E7079E0(v2, a1 + v3);
}

uint64_t sub_22E709C0C()
{

  return swift_allocError();
}

uint64_t sub_22E709C2C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return static Task<>.currentPriority.getter();
}

void sub_22E709C6C()
{
  v10 = v0[32];
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[22];
  v11 = v0[33];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
}

void sub_22E709C94()
{
  v10 = v0[32];
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[22];
  v11 = v0[33];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
}

void sub_22E709CBC()
{
  v10 = v0[32];
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[22];
  v11 = v0[33];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
}

uint64_t sub_22E709D54(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = *(v3 + 16);
  v2[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_22E709D8C()
{
  v2 = v0[34];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v13 = v0[8];
}

void sub_22E709DC4(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v1 + ((v2 + a1 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_22E709E7C()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709E98()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709EB4()
{

  return swift_allocError();
}

uint64_t sub_22E709F10()
{
  *(v1 + 240) = *(v0 + 16);
  *(v1 + 248) = (v0 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

uint64_t sub_22E709F3C()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709F54@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22E709F90()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709FA8()
{

  return swift_slowAlloc();
}

uint64_t sub_22E709FCC()
{
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
}

void sub_22E70A000()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
}

BOOL sub_22E70A028(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22E70A060()
{

  return swift_slowAlloc();
}

uint64_t sub_22E70A07C()
{

  return swift_arrayDestroy();
}

uint64_t sub_22E70A098()
{

  return swift_slowAlloc();
}

uint64_t sub_22E70A0B0()
{
}

void *sub_22E70A0C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 40);

  return sub_22E6CF214((a1 + 16), v2);
}

id sub_22E70A0E0()
{
  v2 = v0[26];
  v0[4] = v2;
  v3 = v0[13];
  v4 = v0[9];

  return v2;
}

uint64_t sub_22E70A108()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRelease();
}

void sub_22E70A130(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log, os_log_type_t a13)
{

  _os_log_impl(a1, log, a13, a4, v13, 0x16u);
}

uint64_t sub_22E70A158()
{
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[10];

  return type metadata accessor for Logger();
}

uint64_t sub_22E70A180()
{
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  return type metadata accessor for Logger();
}

uint64_t sub_22E70A1A8()
{
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[20];
}

uint64_t sub_22E70A1D0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[22];
  result = v0[18];
  v6 = v0[16];
  return result;
}

void sub_22E70A20C()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
}

BOOL sub_22E70A290()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22E70A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_22E706BF8(v8, v9, va);
}

uint64_t sub_22E70A2CC()
{

  return AsyncThrowingStream.Continuation.yield(_:)();
}

void sub_22E70A2E8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t a12)
{

  _os_log_impl(a1, v12, a12, a4, v13, 0x16u);
}

uint64_t sub_22E70A30C()
{

  return swift_dynamicCast();
}

uint64_t sub_22E70A330()
{

  return swift_dynamicCast();
}

uint64_t sub_22E70A354()
{
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
}

uint64_t sub_22E70A378()
{
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
}

uint64_t sub_22E70A394()
{
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[7];
}

uint64_t sub_22E70A3B8()
{
}

uint64_t sub_22E70A3D0()
{
  v1 = v0[26];
  result = v0[21];
  v3 = v0[22];
  v4 = v0[16];
  v5 = *(v0[17] + 16);
  return result;
}

void sub_22E70A3E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
}

void sub_22E70A3F8()
{
  v2 = v0[22];
  v3 = v0[16];
  v4 = v0[8];
  v0[5] = v1;
}

void sub_22E70A424()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
}

uint64_t sub_22E70A44C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2;
}

void sub_22E70A460()
{
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
}

uint64_t sub_22E70A474()
{
  v1 = *(v0 + 280);
  result = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(*(v0 + 256) + 8);
  return result;
}

void sub_22E70A4BC()
{
  v2 = v1[22];
  v3 = v1[16];
  v4 = v1[8];
  v1[5] = v0;
}

id sub_22E70A4E4()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2112;

  return v1;
}

void sub_22E70A504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = v17[12];
  v19 = v17[13];
  v22 = v17[9];
  v21 = v17[10];
}

uint64_t sub_22E70A524()
{
  v2 = v0[22];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
}

uint64_t sub_22E70A544()
{

  return dispatch thunk of XPCSession.send<A>(_:)();
}

uint64_t sub_22E70A564()
{
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];

  return type metadata accessor for Logger();
}

uint64_t sub_22E70A584()
{
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];

  return type metadata accessor for Logger();
}

id sub_22E70A5A4()
{
  v3 = v0[13];
  v4 = v0[9];
  v0[4] = v1;

  return v1;
}

uint64_t sub_22E70A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_22E706BF8(v8, v7, va);
}

uint64_t sub_22E70A5E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22E6CF1CC(a3, a4);
}

uint64_t sub_22E70A604()
{
}

uint64_t sub_22E70A61C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_22E70A634()
{
  v2[32] = v0;
  v2[33] = v1;
  v4 = v2[12];

  return XPCRichError.canRetry.getter();
}

uint64_t sub_22E70A64C()
{

  return swift_slowAlloc();
}

uint64_t sub_22E70A664(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AssetDownloadResponse();
  v6 = sub_22E6CF978(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22E6CF9C8();
  v11 = v10 - v9;
  v12 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  sub_22E6D376C(v12);
  v14 = *(v13 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = sub_22E6CF1CC(&qword_27DA6D440, &qword_22E72A558);
  sub_22E6D376C(v18);
  v20 = *(v19 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  sub_22E70D6D8();
  v23 = *(v22 + 56);
  sub_22E70D4E8(a1, v2, &qword_27DA6D200, &qword_22E72A550);
  sub_22E70D4E8(a2, v2 + v23, &qword_27DA6D200, &qword_22E72A550);
  sub_22E70D69C(v2);
  if (v29)
  {
    sub_22E70D69C(v2 + v23);
    if (v29)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = sub_22E709B30();
    sub_22E70D4E8(v25, v26, v27, v28);
    sub_22E70D69C(v2 + v23);
    if (!v29)
    {
      sub_22E70D5A0(v2 + v23, v11, type metadata accessor for AssetDownloadResponse);
      v32 = static UUID.== infix(_:_:)();
      if ((v32 & 1) == 0)
      {
        goto LABEL_23;
      }

      if (!static Asset.== infix(_:_:)(&v17[*(v5 + 20)], v11 + *(v5 + 20)))
      {
        goto LABEL_23;
      }

      v33 = *(v5 + 24);
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_23;
      }

      v34 = *(v5 + 28);
      v35 = &v17[v34];
      v36 = v17[v34 + 16];
      v37 = v11 + v34;
      if (v36)
      {
        if ((*(v37 + 16) & 1) == 0)
        {
LABEL_23:
          sub_22E70D644();
          sub_22E70D548(v11, v40);
          sub_22E70D548(v17, v5);
          v30 = &qword_27DA6D200;
          v31 = &qword_22E72A550;
          goto LABEL_24;
        }
      }

      else
      {
        if (*(v37 + 16))
        {
          goto LABEL_23;
        }

        if (*v35 != *v37 || *(v35 + 1) != *(v37 + 8))
        {
          goto LABEL_23;
        }
      }

      sub_22E70D644();
      sub_22E70D548(v11, v39);
      sub_22E70D548(v17, v5);
LABEL_5:
      sub_22E6D3510(v2, &qword_27DA6D200, &qword_22E72A550);
      return 1;
    }

    sub_22E70D548(v17, type metadata accessor for AssetDownloadResponse);
  }

  v30 = &qword_27DA6D440;
  v31 = &qword_22E72A558;
LABEL_24:
  sub_22E6D3510(v2, v30, v31);
  return 0;
}

BOOL sub_22E70A910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = sub_22E6CF1CC(&qword_27DA6D448, &unk_22E72A560);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v20 - v15;
  v17 = *(v14 + 56);
  sub_22E70D4E8(a1, &v20 - v15, &qword_27DA6D190, &qword_22E729E30);
  sub_22E70D4E8(a2, &v16[v17], &qword_27DA6D190, &qword_22E729E30);
  if (sub_22E6CF550(v16, 1, v4) != 1)
  {
    sub_22E70D4E8(v16, v11, &qword_27DA6D190, &qword_22E729E30);
    if (sub_22E6CF550(&v16[v17], 1, v4) != 1)
    {
      sub_22E70D5A0(&v16[v17], v7, type metadata accessor for Asset);
      v18 = static Asset.== infix(_:_:)(v11, v7);
      sub_22E70D548(v7, type metadata accessor for Asset);
      sub_22E70D548(v11, type metadata accessor for Asset);
      sub_22E6D3510(v16, &qword_27DA6D190, &qword_22E729E30);
      return v18;
    }

    sub_22E70D548(v11, type metadata accessor for Asset);
    goto LABEL_6;
  }

  if (sub_22E6CF550(&v16[v17], 1, v4) != 1)
  {
LABEL_6:
    sub_22E6D3510(v16, &qword_27DA6D448, &unk_22E72A560);
    return 0;
  }

  sub_22E6D3510(v16, &qword_27DA6D190, &qword_22E729E30);
  return 1;
}

BOOL static UploadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v7 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  sub_22E6D376C(v7);
  v9 = *(v8 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for UploadResponseMessage();
  v14 = sub_22E6CF978(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22E70D6BC();
  MEMORY[0x28223BE20](v17);
  sub_22E70D718();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v41 - v22);
  v24 = sub_22E6CF1CC(&qword_27DA6D2C8, &qword_22E729E38);
  sub_22E6D376C(v24);
  v26 = *(v25 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v27);
  sub_22E70D6D8();
  v29 = *(v28 + 56);
  sub_22E70AEE8(a1, v2);
  sub_22E70AEE8(a2, v2 + v29);
  sub_22E709B30();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22E70AEE8(v2, v21);
      if (sub_22E70D780() == 1)
      {
        sub_22E70AF4C(v2 + v29, v12);
        v32 = sub_22E70A910(v21, v12);
        sub_22E6D3510(v12, &qword_27DA6D190, &qword_22E729E30);
        sub_22E6D3510(v21, &qword_27DA6D190, &qword_22E729E30);
        goto LABEL_13;
      }

      sub_22E6D3510(v21, &qword_27DA6D190, &qword_22E729E30);
      goto LABEL_15;
    case 2u:
      sub_22E70AEE8(v2, v4);
      v33 = *v4;
      if (sub_22E70D780() != 2)
      {
        goto LABEL_10;
      }

      v34 = sub_22E70D708();
      v36 = sub_22E6ECCD8(v34, v35);
      goto LABEL_8;
    case 3u:
      sub_22E70AEE8(v2, v3);
      v37 = *v3;
      if (sub_22E70D780() != 3)
      {
        goto LABEL_10;
      }

      v38 = sub_22E70D708();
      v36 = sub_22E6ECD4C(v38, v39);
LABEL_8:
      v32 = v36;

      goto LABEL_9;
    default:
      sub_22E70AEE8(v2, v23);
      v30 = *v23;
      if (sub_22E70D780())
      {
LABEL_10:

LABEL_15:
        sub_22E6D3510(v2, &qword_27DA6D2C8, &qword_22E729E38);
        return 0;
      }

      else
      {
        sub_22E70D708();
        sub_22E6EE424();
        v32 = v31;

LABEL_9:

LABEL_13:
        sub_22E70D548(v2, type metadata accessor for UploadResponseMessage);
      }

      return v32;
  }
}

uint64_t type metadata accessor for UploadResponseMessage()
{
  result = qword_27DA6D3A0;
  if (!qword_27DA6D3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E70AEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadResponseMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E70AF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E70AFBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172656D65687065 && a2 == 0xEE0074657373416CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574736973726570 && a2 == 0xEE00746573734164;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x800000022E72D400 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22E70B12C(char a1)
{
  result = 0x6172656D65687065;
  switch(a1)
  {
    case 1:
      result = 0x6574736973726570;
      break;
    case 2:
      result = 0x6C616E676973;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E70B1C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E70B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E70AFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E70B278(uint64_t a1)
{
  v2 = sub_22E70BAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B2B4(uint64_t a1)
{
  v2 = sub_22E70BAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B2F4(uint64_t a1)
{
  v2 = sub_22E70BCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B330(uint64_t a1)
{
  v2 = sub_22E70BCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B36C(uint64_t a1)
{
  v2 = sub_22E70BC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B3A8(uint64_t a1)
{
  v2 = sub_22E70BC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B3E4(uint64_t a1)
{
  v2 = sub_22E70BBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B420(uint64_t a1)
{
  v2 = sub_22E70BBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70B460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E70B1C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E70B48C(uint64_t a1)
{
  v2 = sub_22E70BB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70B4C8(uint64_t a1)
{
  v2 = sub_22E70BB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UploadResponseMessage.encode(to:)(void *a1)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D2D0, &qword_22E729E40);
  v5 = sub_22E6CF988(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  sub_22E6EB4DC();
  v64 = v10;
  v11 = sub_22E6CF1CC(&qword_27DA6D2D8, &qword_22E729E48);
  v12 = sub_22E6CF988(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  sub_22E6EB4DC();
  v61 = v17;
  v18 = sub_22E6CF1CC(&qword_27DA6D2E0, &qword_22E729E50);
  v19 = sub_22E6CF988(v18);
  v59 = v20;
  v60 = v19;
  v22 = *(v21 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  sub_22E6EB4DC();
  v58 = v24;
  v56 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  sub_22E6CF978(v56);
  v26 = *(v25 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v27);
  sub_22E70D6D8();
  v57 = sub_22E6CF1CC(&qword_27DA6D2E8, &qword_22E729E58);
  sub_22E6CF988(v57);
  v55 = v28;
  v30 = *(v29 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22E70D760();
  v33 = sub_22E6CF978(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22E6CF9C8();
  v38 = (v37 - v36);
  v39 = sub_22E6CF1CC(&qword_27DA6D2F0, &unk_22E729E60);
  sub_22E6CF988(v39);
  v41 = *(v40 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v42);
  v43 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E70BAC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E70AEE8(v67, v38);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22E70AF4C(v38, v1);
      sub_22E70BC64();
      sub_22E70D67C();
      sub_22E70CAA8(&qword_27DA6D328);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v59 + 8))(v58, v60);
      sub_22E6D3510(v1, &qword_27DA6D190, &qword_22E729E30);
      v53 = sub_22E70D72C();
      return v54(v53);
    case 2u:
      v45 = *v38;
      sub_22E70BBBC();
      v46 = v61;
      sub_22E70D67C();
      sub_22E70BC10();
      v47 = v63;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v48 = v62;
      goto LABEL_5;
    case 3u:
      v49 = *v38;
      sub_22E70BB14();
      v46 = v64;
      sub_22E70D67C();
      sub_22E70BB68();
      v47 = v66;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v48 = v65;
LABEL_5:
      (*(v48 + 8))(v46, v47);
      goto LABEL_6;
    default:
      v44 = *v38;
      sub_22E70BCB8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
      sub_22E70CAF8(&qword_27DA6D338, &qword_27DA6D340);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v2, v57);
LABEL_6:
      v50 = sub_22E70D72C();
      v51(v50);
  }
}

unint64_t sub_22E70BAC0()
{
  result = qword_27DA6D2F8;
  if (!qword_27DA6D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D2F8);
  }

  return result;
}

unint64_t sub_22E70BB14()
{
  result = qword_27DA6D300;
  if (!qword_27DA6D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D300);
  }

  return result;
}

unint64_t sub_22E70BB68()
{
  result = qword_27DA6D308;
  if (!qword_27DA6D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D308);
  }

  return result;
}

unint64_t sub_22E70BBBC()
{
  result = qword_27DA6D310;
  if (!qword_27DA6D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D310);
  }

  return result;
}

unint64_t sub_22E70BC10()
{
  result = qword_27DA6D318;
  if (!qword_27DA6D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D318);
  }

  return result;
}

unint64_t sub_22E70BC64()
{
  result = qword_27DA6D320;
  if (!qword_27DA6D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D320);
  }

  return result;
}

unint64_t sub_22E70BCB8()
{
  result = qword_27DA6D330;
  if (!qword_27DA6D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D330);
  }

  return result;
}

uint64_t UploadResponseMessage.hash(into:)()
{
  v1 = type metadata accessor for Asset(0);
  v2 = sub_22E6CF978(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22E6CF9C8();
  v7 = v6 - v5;
  v8 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  v9 = sub_22E6D376C(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = type metadata accessor for UploadResponseMessage();
  v18 = sub_22E6CF978(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22E6CF9C8();
  v23 = (v22 - v21);
  sub_22E70AEE8(v0, v22 - v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22E70AF4C(v23, v16);
      MEMORY[0x2318ECB90](1);
      sub_22E70D4E8(v16, v14, &qword_27DA6D190, &qword_22E729E30);
      sub_22E70D69C(v14);
      if (v32)
      {
        MEMORY[0x2318ECB90](1);
        return sub_22E6D3510(v16, &qword_27DA6D190, &qword_22E729E30);
      }

      else
      {
        sub_22E70D5A0(v14, v7, type metadata accessor for Asset);
        MEMORY[0x2318ECB90](0);
        type metadata accessor for URL();
        sub_22E70CD98(&qword_27DA6C5F8, MEMORY[0x277CC9260]);
        dispatch thunk of Hashable.hash(into:)();
        v33 = type metadata accessor for Asset.ID(0);
        sub_22E6D50F8(v33[5]);
        String.hash(into:)();
        sub_22E6D50F8(v33[6]);
        Data.hash(into:)();
        sub_22E6D50F8(v33[7]);
        Data.hash(into:)();
        v34 = (v7 + *(v1 + 20));
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[2];
        v38 = v34[3];
        Data.hash(into:)();
        Data.hash(into:)();
        MEMORY[0x2318ECB90](*(v7 + *(v1 + 24)));
        sub_22E6D3510(v16, &qword_27DA6D190, &qword_22E729E30);
        return sub_22E70D548(v7, type metadata accessor for Asset);
      }

    case 2u:
      v25 = *v23;
      MEMORY[0x2318ECB90](2);
      v26 = sub_22E709B30();
      sub_22E6F2538(v26, v27);

    case 3u:
      v28 = *v23;
      MEMORY[0x2318ECB90](3);
      MEMORY[0x2318ECB90](0);
      v29 = sub_22E709B30();
      sub_22E6F259C(v29, v30);

    default:
      v24 = *v23;
      MEMORY[0x2318ECB90](0);
      sub_22E709B30();
      sub_22E6F2A6C();
  }
}

Swift::Int UploadResponseMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  UploadResponseMessage.hash(into:)();
  return Hasher._finalize()();
}

uint64_t UploadResponseMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = sub_22E6CF1CC(&qword_27DA6D348, &qword_22E729E70);
  sub_22E6CF988(v109);
  v104 = v6;
  v8 = *(v7 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  sub_22E6EB4DC();
  v108 = v10;
  v11 = sub_22E6CF1CC(&qword_27DA6D350, &qword_22E729E78);
  v12 = sub_22E6CF988(v11);
  v102 = v13;
  v103 = v12;
  v15 = *(v14 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  sub_22E6EB4DC();
  v107 = v17;
  v18 = sub_22E6CF1CC(&qword_27DA6D358, &qword_22E729E80);
  v19 = sub_22E6CF988(v18);
  v100 = v20;
  v101 = v19;
  v22 = *(v21 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  sub_22E6EB4DC();
  v106 = v24;
  v25 = sub_22E6CF1CC(&qword_27DA6D360, &qword_22E729E88);
  v26 = sub_22E6CF988(v25);
  v98 = v27;
  v99 = v26;
  v29 = *(v28 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v30);
  sub_22E6EB4DC();
  v105 = v31;
  v113 = sub_22E6CF1CC(&qword_27DA6D368, &unk_22E729E90);
  sub_22E6CF988(v113);
  v111 = v32;
  v34 = *(v33 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v35);
  v112 = sub_22E70D760();
  v36 = sub_22E6CF978(v112);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22E70D6BC();
  MEMORY[0x28223BE20](v39);
  sub_22E70D718();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v93 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v93 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v93 - v47;
  v50 = a1[3];
  v49 = a1[4];
  v114 = a1;
  sub_22E6CF214(a1, v50);
  sub_22E70BAC0();
  v51 = v115;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
    return sub_22E6CF2F4(v114);
  }

  v94 = v3;
  v96 = v2;
  v97 = v43;
  v95 = v46;
  v115 = v48;
  v53 = v112;
  v52 = v113;
  v54 = KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C(v54, 0);
  if (v57 == v58 >> 1)
  {
    goto LABEL_7;
  }

  v93 = 0;
  if (v57 >= (v58 >> 1))
  {
    __break(1u);
    return result;
  }

  v59 = *(v56 + v57);
  sub_22E6F3764(v57 + 1);
  v61 = v60;
  v63 = v62;
  swift_unknownObjectRelease();
  if (v61 != v63 >> 1)
  {
LABEL_7:
    v65 = v52;
    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v67;
    v69 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v68 = v53;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D84160], v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v111 + 8))(v4, v65);
    return sub_22E6CF2F4(v114);
  }

  v64 = v110;
  switch(v59)
  {
    case 1:
      LOBYTE(v116) = 1;
      sub_22E70BC64();
      sub_22E70D65C();
      sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
      sub_22E70CAA8(&qword_27DA6D380);
      v70 = v97;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v85 = sub_22E70D634();
      v86(v85);
      v87 = sub_22E70D620();
      v88(v87);
      swift_storeEnumTagMultiPayload();
      sub_22E70D608();
      v89 = v115;
      sub_22E70D5A0(v70, v115, v90);
      v91 = v114;
      v64 = v110;
      goto LABEL_13;
    case 2:
      LOBYTE(v116) = 2;
      sub_22E70BBBC();
      sub_22E70D65C();
      sub_22E70CA54();
      sub_22E70D740();
      swift_unknownObjectRelease();
      v71 = sub_22E70D634();
      v72(v71);
      v73 = sub_22E70D6F8();
      v74(v73);
      v83 = v94;
      sub_22E70D6E8(v116);
      goto LABEL_12;
    case 3:
      LOBYTE(v116) = 3;
      sub_22E70BB14();
      sub_22E70D65C();
      sub_22E70CA00();
      sub_22E70D740();
      swift_unknownObjectRelease();
      v75 = sub_22E70D634();
      v76(v75);
      v77 = sub_22E70D6F8();
      v78(v77);
      v83 = v96;
      sub_22E70D6E8(v116);
      goto LABEL_12;
    default:
      LOBYTE(v116) = 0;
      sub_22E70BCB8();
      sub_22E70D65C();
      sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
      sub_22E70CAF8(&qword_27DA6D388, &qword_27DA6D390);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v79 = sub_22E70D634();
      v80(v79);
      v81 = sub_22E70D620();
      v82(v81);
      v83 = v95;
      sub_22E70D6E8(v116);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_22E70D608();
      v89 = v115;
      sub_22E70D5A0(v83, v115, v84);
      v91 = v114;
LABEL_13:
      sub_22E70D608();
      sub_22E70D5A0(v89, v64, v92);
      result = sub_22E6CF2F4(v91);
      break;
  }

  return result;
}

Swift::Int sub_22E70C990()
{
  Hasher.init(_seed:)();
  UploadResponseMessage.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_22E70CA00()
{
  result = qword_27DA6D370;
  if (!qword_27DA6D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D370);
  }

  return result;
}

unint64_t sub_22E70CA54()
{
  result = qword_27DA6D378;
  if (!qword_27DA6D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D378);
  }

  return result;
}

uint64_t sub_22E70CAA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D190, &qword_22E729E30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E70CAF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D198, &qword_22E729BC8);
    sub_22E70CD98(a2, type metadata accessor for AssetSkeleton);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22E70CBE4()
{
  sub_22E70CC74();
  if (v0 <= 0x3F)
  {
    sub_22E70CCCC();
    if (v1 <= 0x3F)
    {
      sub_22E70CDE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22E70CC74()
{
  if (!qword_27DA6D3B0)
  {
    type metadata accessor for AssetSkeleton();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA6D3B0);
    }
  }
}

void sub_22E70CCCC()
{
  if (!qword_27DA6D3B8)
  {
    type metadata accessor for Asset(255);
    sub_22E70CD98(&qword_27DA6C610, type metadata accessor for Asset);
    sub_22E70CD98(&unk_27DA6C980, type metadata accessor for Asset);
    v0 = type metadata accessor for XPCResult();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA6D3B8);
    }
  }
}

uint64_t sub_22E70CD98(unint64_t *a1, void (*a2)(uint64_t))
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

ValueMetadata *sub_22E70CDE0()
{
  result = qword_27DA6D3C0;
  if (!qword_27DA6D3C0)
  {
    result = &type metadata for SimultaneousTransferError;
    atomic_store(&type metadata for SimultaneousTransferError, &qword_27DA6D3C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22E70CF14(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E70CFC4()
{
  result = qword_27DA6D3C8;
  if (!qword_27DA6D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3C8);
  }

  return result;
}

unint64_t sub_22E70D01C()
{
  result = qword_27DA6D3D0;
  if (!qword_27DA6D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3D0);
  }

  return result;
}

unint64_t sub_22E70D074()
{
  result = qword_27DA6D3D8;
  if (!qword_27DA6D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3D8);
  }

  return result;
}

unint64_t sub_22E70D0CC()
{
  result = qword_27DA6D3E0;
  if (!qword_27DA6D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3E0);
  }

  return result;
}

unint64_t sub_22E70D124()
{
  result = qword_27DA6D3E8;
  if (!qword_27DA6D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3E8);
  }

  return result;
}

unint64_t sub_22E70D17C()
{
  result = qword_27DA6D3F0;
  if (!qword_27DA6D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3F0);
  }

  return result;
}

unint64_t sub_22E70D1D4()
{
  result = qword_27DA6D3F8;
  if (!qword_27DA6D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D3F8);
  }

  return result;
}

unint64_t sub_22E70D22C()
{
  result = qword_27DA6D400;
  if (!qword_27DA6D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D400);
  }

  return result;
}

unint64_t sub_22E70D284()
{
  result = qword_27DA6D408;
  if (!qword_27DA6D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D408);
  }

  return result;
}

unint64_t sub_22E70D2DC()
{
  result = qword_27DA6D410;
  if (!qword_27DA6D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D410);
  }

  return result;
}

unint64_t sub_22E70D334()
{
  result = qword_27DA6D418;
  if (!qword_27DA6D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D418);
  }

  return result;
}

unint64_t sub_22E70D38C()
{
  result = qword_27DA6D420;
  if (!qword_27DA6D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D420);
  }

  return result;
}

unint64_t sub_22E70D3E4()
{
  result = qword_27DA6D428;
  if (!qword_27DA6D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D428);
  }

  return result;
}

unint64_t sub_22E70D43C()
{
  result = qword_27DA6D430;
  if (!qword_27DA6D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D430);
  }

  return result;
}

unint64_t sub_22E70D494()
{
  result = qword_27DA6D438;
  if (!qword_27DA6D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D438);
  }

  return result;
}

uint64_t sub_22E70D4E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22E6CF1CC(a3, a4);
  sub_22E6CF978(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22E70D548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E70D5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22E6CF978(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22E70D65C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E70D67C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E70D740()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_22E70D760()
{

  return type metadata accessor for UploadResponseMessage();
}

uint64_t sub_22E70D780()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t static UploadRequestMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  v5 = *a2;

  sub_22E6EFD24();
  v7 = v6;

  return v7 & 1;
}

uint64_t sub_22E70D810(uint64_t a1)
{
  v2 = sub_22E70DD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70D84C(uint64_t a1)
{
  v2 = sub_22E70DD70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70D888(uint64_t a1)
{
  v2 = sub_22E70DCC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70D8C4(uint64_t a1)
{
  v2 = sub_22E70DCC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70D900(uint64_t a1)
{
  v2 = sub_22E70DD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70D93C(uint64_t a1)
{
  v2 = sub_22E70DD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UploadRequestMessage.encode(to:)(void *a1)
{
  v3 = sub_22E6CF1CC(&qword_27DA6D450, &qword_22E72A570);
  v4 = sub_22E6CF988(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6D458, &qword_22E72A578);
  v12 = sub_22E6CF988(v11);
  v36 = v13;
  v37 = v12;
  v15 = *(v14 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v41 = sub_22E6CF1CC(&qword_27DA6D460, &qword_22E72A580);
  sub_22E6CF988(v41);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v40 = *v1;
  v26 = *(v1 + 8);
  v27 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E70DCC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    LOBYTE(v42) = 1;
    sub_22E70DD1C();
    sub_22E6F3B1C();
    v42 = v40;
    sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
    sub_22E70EAA4();
    sub_22E70E498(v28, v29);
    v30 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v10, v30);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_22E70DD70();
    sub_22E6F3B1C();
    v42 = v40;
    sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
    sub_22E70EAA4();
    sub_22E70E498(v31, v32);
    v33 = v37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v36 + 8))(v18, v33);
  }

  return (*(v20 + 8))(v25, v26);
}

unint64_t sub_22E70DCC8()
{
  result = qword_27DA6D468;
  if (!qword_27DA6D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D468);
  }

  return result;
}

unint64_t sub_22E70DD1C()
{
  result = qword_27DA6D470;
  if (!qword_27DA6D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D470);
  }

  return result;
}

unint64_t sub_22E70DD70()
{
  result = qword_27DA6D490;
  if (!qword_27DA6D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D490);
  }

  return result;
}

void UploadRequestMessage.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x2318ECB90](*(v0 + 8));

  sub_22E6F2CF8();
}

Swift::Int UploadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  sub_22E6F2CF8();
  return Hasher._finalize()();
}

uint64_t UploadRequestMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_22E6CF1CC(&qword_27DA6D498, &qword_22E72A590);
  v56 = sub_22E6CF988(v3);
  v57 = v4;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22E6CF1CC(&qword_27DA6D4A0, &qword_22E72A598);
  sub_22E6CF988(v8);
  v55 = v9;
  v11 = *(v10 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = v54 - v13;
  v15 = sub_22E6CF1CC(&qword_27DA6D4A8, &unk_22E72A5A0);
  sub_22E6CF988(v15);
  v58 = v16;
  v18 = *(v17 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v21 = v54 - v20;
  v22 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E70DCC8();
  v23 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_22E6CF2F4(a1);
  }

  v54[2] = v8;
  v54[3] = v14;
  v60 = a1;
  v24 = v59;
  v25 = KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v21;
LABEL_9:
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v41 = &type metadata for UploadRequestMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v30, v15);
    a1 = v60;
    return sub_22E6CF2F4(a1);
  }

  v54[1] = 0;
  if (v28 >= (v29 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v27 + v28);
    sub_22E6F3764(v28 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 != v35 >> 1)
    {
      v30 = v21;
      goto LABEL_9;
    }

    v36 = v31;
    if (v31)
    {
      LODWORD(v55) = v31;
      LOBYTE(v61) = 1;
      sub_22E70DD1C();
      sub_22E6F3B3C();
      sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
      sub_22E70EA8C();
      sub_22E70E498(v37, v38);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v45 = sub_22E70EABC();
      v46(v45);
      v47 = sub_22E6F3918();
      v48(v47);
      v49 = v61;
      v36 = v55;
    }

    else
    {
      LOBYTE(v61) = 0;
      sub_22E70DD70();
      sub_22E6F3B3C();
      sub_22E6CF1CC(&qword_27DA6D478, &qword_22E72A588);
      sub_22E70EA8C();
      sub_22E70E498(v43, v44);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v50 = sub_22E6F3A70();
      v51(v50);
      v52 = sub_22E6F3918();
      v53(v52);
      v49 = v61;
      v24 = v59;
    }

    *v24 = v49;
    *(v24 + 8) = v36;
    return sub_22E6CF2F4(v60);
  }

  return result;
}

Swift::Int sub_22E70E408()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  sub_22E6F2CF8();
  return Hasher._finalize()();
}

uint64_t sub_22E70E498(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D478, &qword_22E72A588);
    sub_22E70E520(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E70E520(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetUploadRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E70E568()
{
  result = qword_27DA6D4C0;
  if (!qword_27DA6D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E70E6C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E70E774()
{
  result = qword_27DA6D4C8;
  if (!qword_27DA6D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4C8);
  }

  return result;
}

unint64_t sub_22E70E7CC()
{
  result = qword_27DA6D4D0;
  if (!qword_27DA6D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4D0);
  }

  return result;
}

unint64_t sub_22E70E824()
{
  result = qword_27DA6D4D8;
  if (!qword_27DA6D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4D8);
  }

  return result;
}

unint64_t sub_22E70E87C()
{
  result = qword_27DA6D4E0;
  if (!qword_27DA6D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4E0);
  }

  return result;
}

unint64_t sub_22E70E8D4()
{
  result = qword_27DA6D4E8;
  if (!qword_27DA6D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4E8);
  }

  return result;
}

unint64_t sub_22E70E92C()
{
  result = qword_27DA6D4F0;
  if (!qword_27DA6D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4F0);
  }

  return result;
}

unint64_t sub_22E70E984()
{
  result = qword_27DA6D4F8;
  if (!qword_27DA6D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D4F8);
  }

  return result;
}

unint64_t sub_22E70E9DC()
{
  result = qword_27DA6D500;
  if (!qword_27DA6D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D500);
  }

  return result;
}

unint64_t sub_22E70EA34()
{
  result = qword_27DA6D508;
  if (!qword_27DA6D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D508);
  }

  return result;
}

void static TestConfigurations.testConfigurations()(_BYTE *a1@<X8>)
{
  if (qword_27DA6C468 != -1)
  {
    sub_22E70EF70();
  }

  v2 = off_27DA6D510;
  os_unfair_lock_lock(off_27DA6D510 + 5);
  *a1 = *(v2 + 16);

  os_unfair_lock_unlock(v2 + 5);
}

BOOL static TestConfigurations.isSystemInstalledBinary()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_22E70EC04(0xD000000000000011, 0x800000022E72D420, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 == 0;
}

uint64_t sub_22E70EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22E714B14();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_22E70EC5C()
{
  sub_22E6CF1CC(&qword_27DA6D520, &unk_22E72AB00);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_27DA6D510 = result;
  return result;
}

void sub_22E70ECB8(char a1)
{
  if (qword_27DA6C468 != -1)
  {
    sub_22E70EF70();
  }

  v2 = off_27DA6D510;
  os_unfair_lock_lock(off_27DA6D510 + 5);
  *(v2 + 16) = a1;

  os_unfair_lock_unlock(v2 + 5);
}

Swift::Int TestConfigurations.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v1);
  return Hasher._finalize()();
}

unint64_t sub_22E70EDB8()
{
  result = qword_27DA6D518;
  if (!qword_27DA6D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D518);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestConfigurations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TestConfigurations(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22E70EF70()
{

  return swift_once();
}

uint64_t sub_22E70EF90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022E72D440 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746C75736572 && a2 == 0xEE00646576696563;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65526C616E676973 && a2 == 0xEE00646576696563)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22E70F0C0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6552746C75736572;
  }

  return 0x65526C616E676973;
}

uint64_t sub_22E70F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E70EF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E70F154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E70F0B8();
  *a1 = result;
  return result;
}

uint64_t sub_22E70F17C(uint64_t a1)
{
  v2 = sub_22E70F8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F1B8(uint64_t a1)
{
  v2 = sub_22E70F8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70F1F4(uint64_t a1)
{
  v2 = sub_22E70F9D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F230(uint64_t a1)
{
  v2 = sub_22E70F9D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70F26C(uint64_t a1)
{
  v2 = sub_22E70F984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F2A8(uint64_t a1)
{
  v2 = sub_22E70F984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E70F2E4(uint64_t a1)
{
  v2 = sub_22E70FA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E70F320(uint64_t a1)
{
  v2 = sub_22E70FA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetUploadEvent.encode(to:)(void *a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6D528, &qword_22E72AB10);
  v3 = sub_22E6CF988(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  sub_22E6EB4DC();
  v59 = v8;
  v9 = sub_22E6CF1CC(&qword_27DA6D530, &unk_22E72AB18);
  v10 = sub_22E6CF988(v9);
  v57 = v11;
  v58 = v10;
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  sub_22E6EB4DC();
  v56 = v15;
  v55 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  sub_22E6CF978(v55);
  v17 = *(v16 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = sub_22E6CF1CC(&qword_27DA6D538, &qword_22E72AB28);
  v22 = sub_22E6CF988(v21);
  v53 = v23;
  v54 = v22;
  v25 = *(v24 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  v29 = type metadata accessor for AssetUploadEvent();
  v30 = sub_22E6CF978(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = (&v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_22E6CF1CC(&qword_27DA6D540, &unk_22E72AB30);
  sub_22E6CF988(v63);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v39);
  v41 = &v53 - v40;
  v42 = a1[3];
  sub_22E6CF214(a1, v42);
  sub_22E70F8CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E70F920(v62, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22E70AF4C(v34, v20);
      LOBYTE(v64) = 1;
      sub_22E70F9D8();
      v44 = v56;
      sub_22E710B00();
      sub_22E70CAA8(&qword_27DA6D328);
      v45 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v57 + 8))(v44, v45);
      sub_22E70FA2C(v20);
      return (*(v36 + 8))(v41, v42);
    }

    v49 = *v34;
    LOBYTE(v64) = 2;
    sub_22E70F984();
    v50 = v59;
    v51 = v63;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v64 = v49;
    sub_22E70BC10();
    v52 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v50, v52);
    (*(v36 + 8))(v41, v51);
  }

  else
  {
    v47 = *v34;
    LOBYTE(v64) = 0;
    sub_22E70FA94();
    sub_22E710B00();
    v64 = v47;
    sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
    sub_22E7103C0(&qword_27DA6D338, &qword_27DA6D340);
    v48 = v54;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v53 + 8))(v28, v48);
    (*(v36 + 8))(v41, v42);
  }
}

uint64_t type metadata accessor for AssetUploadEvent()
{
  result = qword_27DA6D588;
  if (!qword_27DA6D588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22E70F8CC()
{
  result = qword_27DA6D548;
  if (!qword_27DA6D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D548);
  }

  return result;
}

uint64_t sub_22E70F920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22E70F984()
{
  result = qword_27DA6D550;
  if (!qword_27DA6D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D550);
  }

  return result;
}

unint64_t sub_22E70F9D8()
{
  result = qword_27DA6D558;
  if (!qword_27DA6D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D558);
  }

  return result;
}

uint64_t sub_22E70FA2C(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22E70FA94()
{
  result = qword_27DA6D560;
  if (!qword_27DA6D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D560);
  }

  return result;
}

uint64_t AssetUploadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v100 = sub_22E6CF1CC(&qword_27DA6D568, &qword_22E72AB40);
  sub_22E6CF988(v100);
  v97 = v3;
  v5 = *(v4 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  sub_22E6EB4DC();
  v95 = v7;
  v8 = sub_22E6CF1CC(&qword_27DA6D570, &qword_22E72AB48);
  v9 = sub_22E6CF988(v8);
  v91 = v10;
  v92 = v9;
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v94 = v14;
  v15 = sub_22E6CF1CC(&qword_27DA6D578, &qword_22E72AB50);
  v16 = sub_22E6CF988(v15);
  v89 = v17;
  v90 = v16;
  v19 = *(v18 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  sub_22E6EB4DC();
  v93 = v21;
  v22 = sub_22E6CF1CC(&qword_27DA6D580, &unk_22E72AB58);
  v23 = sub_22E6CF988(v22);
  v98 = v24;
  v99 = v23;
  v26 = *(v25 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v27);
  v29 = &v85 - v28;
  v30 = type metadata accessor for AssetUploadEvent();
  v31 = sub_22E6CF978(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v85 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v85 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v85 - v43;
  v46 = a1[3];
  v45 = a1[4];
  v101 = a1;
  sub_22E6CF214(a1, v46);
  sub_22E70F8CC();
  v47 = v102;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    goto LABEL_10;
  }

  v85 = v36;
  v86 = v42;
  v87 = v44;
  v88 = v39;
  v49 = v99;
  v48 = v100;
  v102 = v30;
  v50 = KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C(v50, 0);
  if (v53 == v54 >> 1)
  {
LABEL_9:
    v67 = type metadata accessor for DecodingError();
    swift_allocError();
    v69 = v68;
    v70 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v69 = v102;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v98 + 8))(v29, v49);
LABEL_10:
    v71 = v101;
    return sub_22E6CF2F4(v71);
  }

  if (v53 < (v54 >> 1))
  {
    v55 = v29;
    v56 = *(v52 + v53);
    sub_22E6F3764(v53 + 1);
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v61 = v58 == v60 >> 1;
    v62 = v97;
    if (v61)
    {
      v63 = v49;
      v64 = v55;
      if (v56)
      {
        v65 = v96;
        if (v56 == 1)
        {
          LOBYTE(v103) = 1;
          sub_22E70F9D8();
          v66 = v94;
          sub_22E710B40();
          sub_22E6CF1CC(&qword_27DA6D190, &qword_22E729E30);
          sub_22E70CAA8(&qword_27DA6D380);
          v74 = v66;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v77 = sub_22E710B78();
          v78(v77);
          v79 = sub_22E710AEC();
          v80(v79);
          swift_storeEnumTagMultiPayload();
          sub_22E710B24();
          v81 = v101;
        }

        else
        {
          LOBYTE(v103) = 2;
          sub_22E70F984();
          v72 = v95;
          v73 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_22E70CA54();
          v74 = v72;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v76 = v98;
          swift_unknownObjectRelease();
          (*(v62 + 8))(v72, v48);
          (*(v76 + 8))(v64, v73);
          *v85 = v103;
          swift_storeEnumTagMultiPayload();
          sub_22E710B24();
          v81 = v101;
          v65 = v96;
        }
      }

      else
      {
        LOBYTE(v103) = 0;
        sub_22E70FA94();
        sub_22E710B40();
        v65 = v96;
        sub_22E6CF1CC(&qword_27DA6D198, &qword_22E729BC8);
        sub_22E7103C0(&qword_27DA6D388, &qword_27DA6D390);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v75 = v98;
        swift_unknownObjectRelease();
        v82 = sub_22E710B64();
        v83(v82);
        v84 = *(v75 + 8);
        v74 = v75 + 8;
        v84(v64, v62);
        *v86 = v103;
        swift_storeEnumTagMultiPayload();
        sub_22E710B24();
        v81 = v101;
      }

      sub_22E71035C(v74, v65);
      v71 = v81;
      return sub_22E6CF2F4(v71);
    }

    v29 = v55;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22E71035C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetUploadEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E7103C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D198, &qword_22E729BC8);
    sub_22E7104D8(a2, type metadata accessor for AssetSkeleton);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22E71045C()
{
  sub_22E70CC74();
  if (v0 <= 0x3F)
  {
    sub_22E70CCCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22E7104D8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AssetUploadEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22E71061C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E7106CC()
{
  result = qword_27DA6D598;
  if (!qword_27DA6D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D598);
  }

  return result;
}

unint64_t sub_22E710724()
{
  result = qword_27DA6D5A0;
  if (!qword_27DA6D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5A0);
  }

  return result;
}

unint64_t sub_22E71077C()
{
  result = qword_27DA6D5A8;
  if (!qword_27DA6D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5A8);
  }

  return result;
}

unint64_t sub_22E7107D4()
{
  result = qword_27DA6D5B0;
  if (!qword_27DA6D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5B0);
  }

  return result;
}

unint64_t sub_22E71082C()
{
  result = qword_27DA6D5B8;
  if (!qword_27DA6D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5B8);
  }

  return result;
}

unint64_t sub_22E710884()
{
  result = qword_27DA6D5C0;
  if (!qword_27DA6D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5C0);
  }

  return result;
}

unint64_t sub_22E7108DC()
{
  result = qword_27DA6D5C8;
  if (!qword_27DA6D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5C8);
  }

  return result;
}

unint64_t sub_22E710934()
{
  result = qword_27DA6D5D0;
  if (!qword_27DA6D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5D0);
  }

  return result;
}

unint64_t sub_22E71098C()
{
  result = qword_27DA6D5D8;
  if (!qword_27DA6D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5D8);
  }

  return result;
}

unint64_t sub_22E7109E4()
{
  result = qword_27DA6D5E0;
  if (!qword_27DA6D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5E0);
  }

  return result;
}

unint64_t sub_22E710A3C()
{
  result = qword_27DA6D5E8;
  if (!qword_27DA6D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5E8);
  }

  return result;
}

unint64_t sub_22E710A94()
{
  result = qword_27DA6D5F0;
  if (!qword_27DA6D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D5F0);
  }

  return result;
}

uint64_t sub_22E710B00()
{
  v2 = *(v0 - 96);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E710B24()
{
  v3 = *(v1 - 208);

  return sub_22E71035C(v0, v3);
}

uint64_t sub_22E710B40()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E710B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v3 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t XPCMessageSender.__allocating_init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCMessageSender.init(machServiceName:)(a1, a2);
  return v4;
}

void sub_22E710C88()
{
  sub_22E6EB570();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v30 = v5;
  v31 = v4;
  v6 = v2;
  v7 = type metadata accessor for UUID();
  v29 = v7;
  sub_22E6F797C();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v14 = type metadata accessor for AsyncThrowingStream.Continuation();
  v15 = sub_22E6CF988(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v28 - v20;
  (*(v17 + 16))(&v28 - v20, v31, v14);
  (*(v9 + 16))(v13, v6, v7);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v9 + 80) + v23 + 8) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v30;
  *(v25 + 24) = v26;
  (*(v17 + 32))(v25 + v22, v21, v14);
  *(v25 + v23) = v1;
  (*(v9 + 32))(v25 + v24, v13, v29);
  swift_beginAccess();

  v27 = *(v1 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v1 + 112);
  sub_22E7152B0();
  *(v1 + 112) = v34;
  swift_endAccess();
  sub_22E6EB538();
}

uint64_t sub_22E710F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v9 = type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = (a1 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
  v14 = v13[1];
  if (v14 >> 60 == 11)
  {
    sub_22E708D90();
    v15 = swift_allocError();
    *v16 = 1;
    v25 = v15;
    goto LABEL_5;
  }

  if (v14 >> 60 == 15)
  {
    v25 = 0;
LABEL_5:
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    swift_beginAccess();
    v17 = sub_22E715168(a4);
    swift_endAccess();
    return sub_22E708DE4(v17);
  }

  v23[1] = a4;
  v23[2] = a2;
  v19 = *v13;
  v20 = type metadata accessor for JSONDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_22E6CFB64(v19, v14);
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  type metadata accessor for AsyncThrowingStream.Continuation();
  AsyncThrowingStream.Continuation.yield(_:)();
  sub_22E708DF4(v19, v14);
  return (*(v24 + 8))(v12, v9);
}

uint64_t sub_22E71123C(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16))
  {

    v5 = sub_22E714B78(a1);
    if (v6)
    {
      v7 = *(v4 + 56) + 16 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);

      v9(a1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22E7112E0()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D5F8);
  sub_22E6E3578(v0, qword_27DA6D5F8);
  type metadata accessor for XPCMessageSender();
  sub_22E6CF1CC(&qword_27DA6D630, &qword_22E72B168);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t XPCMessageSender.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for XPCMessageSender.AsyncSequenceDispatcher();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for UUID();
  sub_22E6CF1CC(&qword_27DA6D610, &unk_22E72B070);
  sub_22E715BDC();
  sub_22E7156BC(v7, v8);
  sub_22E715DE8();
  *(v6 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 56) = v6;
  v9 = type metadata accessor for XPCSessionCacheImplementation();
  swift_allocObject();
  swift_retain_n();
  v10 = sub_22E71A524(a1, a2, sub_22E711690, v6);
  v13 = v9;
  v14 = &off_284339F10;

  *&v12 = v10;
  sub_22E7069EC(&v12, v3 + 16);
  return v3;
}

double sub_22E7114F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCAsyncSequenceResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v12, 1, 1, v13);
  sub_22E715A34(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  sub_22E715A98(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  sub_22E6E1B80(0, 0, v12, &unk_22E72B1A0, v15);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_22E711698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22E7116B8, a4, 0);
}

uint64_t sub_22E7116B8()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 16);
  sub_22E71123C(*(v0 + 24));
  sub_22E6E3AD8();

  return v2();
}

uint64_t XPCMessageSender.deinit()
{
  v1 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v2 = sub_22E6D376C(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v6, 1, 1, v7);
  sub_22E6E3808(v0 + 16, v12);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_22E7069EC(v12, v8 + 32);
  sub_22E6E1B80(0, 0, v6, &unk_22E72B088, v8);

  sub_22E6CF2F4((v0 + 16));
  v9 = *(v0 + 56);

  return v0;
}

uint64_t sub_22E711834()
{
  sub_22E6E3BDC();
  v1 = sub_22E6CF214(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 24) = v1;
  v2 = *v1;
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E71189C()
{
  sub_22E6E3BDC();
  v1 = **(v0 + 24);
  sub_22E71AB10();
  sub_22E6E3AD8();

  return v2();
}

uint64_t XPCMessageSender.__deallocating_deinit()
{
  XPCMessageSender.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t XPCMessageSender.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  return MEMORY[0x2822009F8](sub_22E711980, 0, 0);
}

uint64_t sub_22E711980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E6E3D08();
  v18 = *(v16 + 64);
  v17 = *(v16 + 72);
  v19 = *(v16 + 24);
  v20 = swift_task_alloc();
  *(v16 + 80) = v20;
  v21 = *(v16 + 48);
  *(v20 + 16) = *(v16 + 32);
  *(v20 + 32) = v21;
  *(v20 + 48) = v18;
  *(v20 + 56) = v19;
  *(v20 + 64) = v17;
  v22 = *(MEMORY[0x277D85A40] + 4);
  v23 = swift_task_alloc();
  *(v16 + 88) = v23;
  *v23 = v16;
  v23[1] = sub_22E711A7C;
  v24 = *(v16 + 40);
  v25 = *(v16 + 16);

  return MEMORY[0x2822008A0](v25, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_22E714928, v20, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22E711A7C()
{
  sub_22E6E3BDC();
  v3 = *(*v1 + 88);
  v2 = *v1;
  sub_22E6E3C94();
  *v4 = v2;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22E711BA8, 0, 0);
  }

  else
  {
    v5 = *(v2 + 80);

    sub_22E6E3AD8();

    return v6();
  }
}

uint64_t sub_22E711BA8()
{
  sub_22E6E3BDC();
  v1 = *(v0 + 80);

  sub_22E6E3AD8();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_22E711C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a7;
  v37 = a4;
  v32 = a3;
  v33 = a1;
  v34 = a2;
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v10 = type metadata accessor for CheckedContinuation();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v31 = &v30 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v30 - v21;
  v23 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v22, 1, 1, v23);
  (*(v16 + 16))(v18, v32, a5);
  (*(v11 + 16))(v15, v33, v10);
  v24 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v25 = (v17 + v24 + *(v11 + 80)) & ~*(v11 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = a5;
  *(v27 + 5) = a6;
  v28 = v35;
  *(v27 + 6) = v36;
  *(v27 + 7) = v28;
  *(v27 + 8) = v34;
  (*(v16 + 32))(&v27[v24], v18, a5);
  (*(v11 + 32))(&v27[v25], v31, v30);
  *&v27[v26] = v37;

  sub_22E6E1B80(0, 0, v22, &unk_22E72B178, v27);
}

uint64_t sub_22E711EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v14;
  v8[20] = v15;
  v8[17] = a8;
  v8[18] = v13;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v9 = type metadata accessor for CheckedContinuation();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v8[23] = *(v10 + 64);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E711FE8, 0, 0);
}

uint64_t sub_22E711FE8()
{
  sub_22E6E3BDC();
  sub_22E6E3808(v0[13] + 16, (v0 + 2));
  v1 = sub_22E6CF214(v0 + 2, v0[5]);
  v0[25] = v1;
  v2 = *v1;
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E712060()
{
  sub_22E6E3D08();
  v1 = **(v0 + 200);
  *(v0 + 208) = sub_22E71A648();
  *(v0 + 216) = 0;

  return MEMORY[0x2822009F8](sub_22E7120EC, 0, 0);
}

uint64_t sub_22E7120EC()
{
  v32 = *(v0 + 208);
  v33 = *(v0 + 216);
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v28 = v2;
  v29 = *(v0 + 192);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 112);
  (*(v3 + 16))();
  sub_22E6E3808(v0 + 16, v0 + 56);
  v9 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v10 = (v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = v7;
  *(v11 + 3) = v6;
  *(v11 + 4) = v5;
  *(v11 + 5) = v4;
  (*(v3 + 32))(&v11[v9], v29, v28);
  sub_22E7069EC((v0 + 56), &v11[v10]);
  *&v11[(v10 + 47) & 0xFFFFFFFFFFFFFFF8] = v30;
  dispatch thunk of XPCSession.send<A, B>(_:replyHandler:)();
  if (v33)
  {
    v12 = *(v0 + 208);

    v13 = *(v0 + 168);
    v14 = *(v0 + 120);
    sub_22E6CF2F4((v0 + 16));
    *(v0 + 96) = v33;
    v15 = v33;
    CheckedContinuation.resume(throwing:)();
    if (qword_27DA6C470 != -1)
    {
      sub_22E70978C();
    }

    v16 = type metadata accessor for Logger();
    sub_22E6E3578(v16, qword_27DA6D5F8);
    v17 = v33;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = sub_22E70A098();
      *v20 = 138412290;
      v22 = v33;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_22E6C9000, v18, v19, "received %@ in sending message", v20, 0xCu);
      sub_22E6D3510(v21, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CC8();
      sub_22E7099AC();
    }

    else
    {
    }
  }

  else
  {
    v24 = *(v0 + 208);

    sub_22E6CF2F4((v0 + 16));
  }

  v25 = *(v0 + 192);

  sub_22E6E3AD8();

  return v26();
}

uint64_t sub_22E7123AC()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[15];
  sub_22E6CF2F4(v0 + 2);
  v0[12] = v1;
  v4 = v1;
  CheckedContinuation.resume(throwing:)();
  if (qword_27DA6C470 != -1)
  {
    sub_22E70978C();
  }

  v5 = type metadata accessor for Logger();
  sub_22E6E3578(v5, qword_27DA6D5F8);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = sub_22E70A098();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22E6C9000, v7, v8, "received %@ in sending message", v9, 0xCu);
    sub_22E6D3510(v10, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  else
  {
  }

  v13 = v0[24];

  sub_22E6E3AD8();

  return v14();
}

uint64_t sub_22E71254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a3;
  v70 = a2;
  v8 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v60 - v10;
  v11 = sub_22E6CF1CC(&qword_27DA6D638, &qword_22E72B180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v60 - v13;
  v15 = type metadata accessor for XPCRichError();
  v66 = *(v15 - 8);
  v16 = *(v66 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v60 - v20;
  v21 = *(a6 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v28 = type metadata accessor for Result();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v60 - v30);
  (*(v32 + 16))(&v60 - v30, a1, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v71[0] = *v31;
    v33 = *&v71[0];
    v34 = *&v71[0];
    if (swift_dynamicCast())
    {
      sub_22E6CF58C(v14, 0, 1, v15);
      v35 = v66;
      v36 = v69;
      (*(v66 + 32))(v69, v14, v15);
      if (qword_27DA6C470 != -1)
      {
        swift_once();
      }

      v64 = v33;
      v37 = type metadata accessor for Logger();
      sub_22E6E3578(v37, qword_27DA6D5F8);
      v38 = *(v35 + 16);
      v39 = v65;
      v38(v65, v36, v15);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v63 = v38;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v43 = 138412290;
        sub_22E7156BC(&qword_27DA6D248, MEMORY[0x277D855E8]);
        swift_allocError();
        v62 = a6;
        v38(v44, v39, v15);
        v45 = _swift_stdlib_bridgeErrorToNSError();
        v46 = v39;
        v47 = *(v35 + 8);
        v47(v46, v15);
        *(v43 + 4) = v45;
        v48 = v61;
        *v61 = v45;
        _os_log_impl(&dword_22E6C9000, v40, v41, "received xpc error %@ from xpc session", v43, 0xCu);
        sub_22E6D3510(v48, &qword_27DA6CA08, &qword_22E727840);
        MEMORY[0x2318ED210](v48, -1, -1);
        MEMORY[0x2318ED210](v43, -1, -1);
      }

      else
      {

        v54 = v39;
        v47 = *(v35 + 8);
        v47(v54, v15);
      }

      v55 = type metadata accessor for TaskPriority();
      sub_22E6CF58C(v68, 1, 1, v55);
      sub_22E6E3808(v67, v71);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      sub_22E7069EC(v71, v56 + 32);
      sub_22E6FA5EC();

      sub_22E7156BC(&qword_27DA6D248, MEMORY[0x277D855E8]);
      v57 = swift_allocError();
      v58 = v69;
      v63(v59, v69, v15);
      *&v71[0] = v57;
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(throwing:)();

      return (v47)(v58, v15);
    }

    else
    {
      sub_22E6CF58C(v14, 1, 1, v15);
      sub_22E6D3510(v14, &qword_27DA6D638, &qword_22E72B180);
      if (qword_27DA6C470 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_22E6E3578(v50, qword_27DA6D5F8);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_22E6C9000, v51, v52, "error received from xpc session is not XPC error type.", v53, 2u);
        MEMORY[0x2318ED210](v53, -1, -1);
      }

      *&v71[0] = v33;
      type metadata accessor for CheckedContinuation();
      return CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    (*(v21 + 32))(v27, v31, a6);
    (*(v21 + 16))(v25, v27, a6);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    return (*(v21 + 8))(v27, a6);
  }
}

uint64_t sub_22E712D88()
{
  sub_22E6E3BDC();
  v1 = sub_22E6CF214(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 24) = v1;
  v2 = *v1;
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E712DF0()
{
  sub_22E6E3BDC();
  v1 = **(v0 + 24);
  sub_22E71A578();
  sub_22E709850();

  return v2();
}

uint64_t XPCMessageSender.send<A, B>(_:)()
{
  sub_22E6E3D08();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = *v0;
  v8 = *(v6 - 8);
  v1[10] = v8;
  v1[11] = *(v8 + 64);
  v1[12] = swift_task_alloc();
  v9 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v9);
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DB4();
  v12 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v1[14] = v12;
  sub_22E6E3A38(v12);
  v1[15] = v13;
  v15 = *(v14 + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_22E715DB4();
  v16 = type metadata accessor for AsyncThrowingStream.Continuation();
  v1[17] = v16;
  sub_22E6E3A38(v16);
  v1[18] = v17;
  v1[19] = *(v18 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v19 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22E713048()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v18 = *(v0 + 136);
  v19 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v21 = *(v0 + 152);
  v27 = *(v0 + 96);
  v7 = *(v0 + 80);
  v20 = *(v0 + 88);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);
  v23 = *(v0 + 56);
  v26 = *(v0 + 32);
  v22 = *(v0 + 40);
  v17 = *(v0 + 24);
  v8 = *(v0 + 16);
  sub_22E710B8C(v3);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v3, v5);
  v9 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v6, 1, 1, v9);
  (*(v2 + 16))(v19, v1, v18);
  v10 = v7;
  (*(v7 + 16))(v27, v17, v26);
  v11 = v2;
  v12 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v13 = (v21 + *(v10 + 80) + v12) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v26;
  *(v14 + 40) = v22;
  *(v14 + 56) = v23;
  *(v14 + 64) = v24;
  (*(v11 + 32))(v14 + v12, v19, v18);
  (*(v10 + 32))(v14 + v13, v27, v26);
  *(v14 + ((v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  sub_22E6FA5EC();

  (*(v11 + 8))(v1, v18);

  sub_22E709850();

  return v15();
}

uint64_t sub_22E7132E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v20;
  *(v8 + 72) = v19;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for XPCRichError();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v12 = type metadata accessor for XPCAsyncSequenceRequest();
  *(v8 + 136) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v8 + 152) = v14;
  v15 = *(v14 - 8);
  *(v8 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E71348C, 0, 0);
}

uint64_t sub_22E71348C()
{
  sub_22E6E3BDC();
  v1 = v0[25];
  v2 = v0[5];
  UUID.init()();
  v0[26] = *(v2 + 56);
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E7134F4()
{
  sub_22E6E3BDC();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  sub_22E710C88();
  v6 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22E71355C()
{
  sub_22E6E3BDC();
  v1 = sub_22E715D24();
  *(v0 + 216) = v1;
  v2 = *v1;
  v3 = sub_22E709E18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E7135BC()
{
  sub_22E6E3D08();
  v1 = **(v0 + 216);
  *(v0 + 224) = sub_22E71A648();
  *(v0 + 232) = 0;

  return MEMORY[0x2822009F8](sub_22E713648, 0, 0);
}

uint64_t sub_22E713648()
{
  v146 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(*(v0 + 160) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 152));
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v1;
  v11 = *(v0 + 224);
  v12 = *(v0 + 192);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  if (!v10)
  {
    v15 = v8;
    v16 = v9;
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);

    v19 = *(v13 + 32);
    sub_22E715DE8();
    v20();
    v21 = (v17 + *(v18 + 20));
    *v21 = v15;
    v21[1] = v16;
    sub_22E7156BC(&qword_27DA6D258, type metadata accessor for XPCAsyncSequenceRequest);
    dispatch thunk of XPCSession.send<A>(_:)();
    v22 = *(v0 + 224);
    v125 = *(v0 + 200);
    v126 = *(v0 + 152);
    v127 = *(v0 + 160);
    v128 = *(v0 + 144);

    sub_22E6D5F38(v128);
    (*(v127 + 8))(v125, v126);
    goto LABEL_21;
  }

  (*(v13 + 8))(*(v0 + 192), *(v0 + 152));

  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  *(v0 + 16) = v10;
  v25 = v10;
  *(v0 + 240) = sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
  if (!swift_dynamicCast())
  {

    if (qword_27DA6C470 != -1)
    {
      sub_22E70978C();
    }

    v69 = *(v0 + 200);
    v70 = *(v0 + 160);
    v71 = *(v0 + 168);
    v72 = *(v0 + 152);
    v73 = type metadata accessor for Logger();
    sub_22E6E3578(v73, qword_27DA6D5F8);
    (*(v70 + 16))(v71, v69, v72);
    v74 = v10;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    v77 = os_log_type_enabled(v75, v76);
    v79 = *(v0 + 160);
    v78 = *(v0 + 168);
    v80 = *(v0 + 152);
    if (v77)
    {
      v81 = sub_22E709F90();
      v138 = sub_22E70A098();
      v140 = sub_22E709F3C();
      v145[0] = v140;
      *v81 = 136315394;
      sub_22E715BDC();
      sub_22E7156BC(v82, v83);
      v135 = v76;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v143 = v10;
      v86 = v85;
      v87 = sub_22E715CC0();
      (v75)(v87);
      v88 = sub_22E706BF8(v84, v86, v145);
      v10 = v143;

      *(v81 + 4) = v88;
      *(v81 + 12) = 2112;
      v89 = v143;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v90;
      *v138 = v90;
      _os_log_impl(&dword_22E6C9000, v75, v135, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v81, 0x16u);
      sub_22E6D3510(v138, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CE4();
      sub_22E6CF2F4(v140);
      sub_22E6E3CE4();
      sub_22E6E3CC8();
    }

    else
    {

      v115 = sub_22E715CC0();
      (v75)(v115);
    }

    v116 = *(v0 + 200);
    v117 = *(v0 + 152);
    v118 = *(v0 + 72);
    v119 = *(v0 + 48);
    *(v0 + 24) = v10;
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (v75)(v116, v117);
LABEL_21:
    sub_22E715C68();

    sub_22E709850();
    sub_22E709A8C();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v29 = *(v0 + 96);
  v28 = *(v0 + 104);

  (*(v28 + 32))(v26, v27, v29);
  if (qword_27DA6C470 != -1)
  {
    sub_22E70978C();
  }

  v30 = *(v0 + 200);
  v31 = *(v0 + 184);
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 96);
  v37 = *(v0 + 104);
  v38 = type metadata accessor for Logger();
  *(v0 + 248) = sub_22E6E3578(v38, qword_27DA6D5F8);
  v39 = *(v33 + 16);
  *(v0 + 256) = v39;
  *(v0 + 264) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v31, v30, v32);
  v40 = *(v37 + 16);
  *(v0 + 272) = v40;
  *(v0 + 280) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v35, v34, v36);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 184);
  v46 = *(v0 + 152);
  v45 = *(v0 + 160);
  v47 = *(v0 + 104);
  v48 = *(v0 + 112);
  v142 = *(v0 + 96);
  if (v43)
  {
    v137 = v41;
    v49 = sub_22E709F90();
    v136 = sub_22E70A098();
    v139 = sub_22E709F3C();
    v145[0] = v139;
    *v49 = 136315394;
    sub_22E715BDC();
    sub_22E7156BC(v50, v51);
    LODWORD(v134) = v42;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v48;
    v48 = v53;
    v54 = v46;
    v55 = *(v45 + 8);
    v55(v44, v54);
    v56 = sub_22E706BF8(v52, v48, v145);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2112;
    sub_22E715BF4();
    sub_22E7156BC(v57, v58);
    v59 = swift_allocError();
    v61 = sub_22E715DD4(v59, v60);
    (v40)(v61);
    v62 = _swift_stdlib_bridgeErrorToNSError();
    v63 = *(v47 + 8);
    v63(v52, v142);
    *(v49 + 14) = v62;
    *v136 = v62;
    sub_22E715D78();
    _os_log_impl(v64, v65, v66, v67, v49, 0x16u);
    sub_22E6D3510(v136, &qword_27DA6CA08, &qword_22E727840);
    sub_22E7099AC();
    sub_22E6CF2F4(v139);
    sub_22E7099AC();
    v68 = v55;
    sub_22E6E3CE4();
  }

  else
  {

    v63 = *(v47 + 8);
    v63(v48, v142);
    v68 = *(v45 + 8);
    v68(v44, v46);
  }

  *(v0 + 288) = v63;
  *(v0 + 296) = v68;
  v91 = *(v0 + 120);
  if (XPCRichError.canRetry.getter())
  {
    v141 = *(v0 + 288);
    v144 = *(v0 + 296);
    v93 = *(v0 + 272);
    v92 = *(v0 + 280);
    v94 = *(v0 + 240);
    sub_22E715D64();
    v95 = *(v0 + 120);
    v96 = *(v0 + 96);
    v97 = *(v0 + 104);
    v98 = *(v0 + 72);
    v99 = *(v0 + 48);
    sub_22E715BF4();
    sub_22E7156BC(v100, v101);
    v102 = sub_22E715D08();
    v104 = sub_22E715D8C(v102, v103);
    v93(v104);
    *(v0 + 32) = v48;
    sub_22E715DE8();
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v105 = v141(v95, v96);
    v113 = sub_22E715DF4(v105, v106, v107, v108, v109, v110, v111, v112, v132, v133, v134, v136, v137);
    v114(v113);

    goto LABEL_21;
  }

  v120 = sub_22E715D24();
  sub_22E715C48(v120);
  sub_22E709A8C();

  return MEMORY[0x2822009F8](v121, v122, v123);
}

uint64_t sub_22E713E80()
{
  v120 = v0;
  v1 = *(v0 + 232);
  *(v0 + 16) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = v1;
  *(v0 + 240) = sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_27DA6C470 != -1)
    {
      sub_22E70978C();
    }

    v48 = *(v0 + 200);
    v49 = *(v0 + 160);
    v50 = *(v0 + 168);
    v51 = *(v0 + 152);
    v52 = type metadata accessor for Logger();
    sub_22E6E3578(v52, qword_27DA6D5F8);
    (*(v49 + 16))(v50, v48, v51);
    v53 = v1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 160);
    v58 = *(v0 + 168);
    v59 = *(v0 + 152);
    if (v56)
    {
      v114 = v55;
      v60 = sub_22E709F90();
      v112 = sub_22E70A098();
      v117 = sub_22E709F3C();
      v119 = v117;
      *v60 = 136315394;
      sub_22E715BDC();
      sub_22E7156BC(v61, v62);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = sub_22E715CD8();
      (v54)(v65);
      v66 = v54;
      v67 = sub_22E706BF8(v109, v64, &v119);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2112;
      v68 = v1;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v69;
      *v112 = v69;
      _os_log_impl(&dword_22E6C9000, v54, v114, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v60, 0x16u);
      sub_22E6D3510(v112, &qword_27DA6CA08, &qword_22E727840);
      sub_22E6E3CE4();
      sub_22E6CF2F4(v117);
      sub_22E6E3CE4();
      sub_22E6E3CE4();
    }

    else
    {

      v93 = sub_22E715CD8();
      (v54)(v93);
      v66 = v54;
    }

    v94 = *(v0 + 200);
    v95 = *(v0 + 152);
    v96 = *(v0 + 72);
    v97 = *(v0 + 48);
    *(v0 + 24) = v1;
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (v66)(v94, v95);
LABEL_15:
    sub_22E715C68();

    sub_22E709850();
    sub_22E709A8C();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  (*(v7 + 32))(v6, v5, v8);
  if (qword_27DA6C470 != -1)
  {
    sub_22E70978C();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = type metadata accessor for Logger();
  *(v0 + 248) = sub_22E6E3578(v17, qword_27DA6D5F8);
  v18 = *(v12 + 16);
  *(v0 + 256) = v18;
  *(v0 + 264) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v10, v9, v11);
  v19 = *(v15 + 16);
  *(v0 + 272) = v19;
  *(v0 + 280) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v14, v13, v16);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 184);
  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v116 = *(v0 + 96);
  if (v22)
  {
    v111 = v20;
    v28 = sub_22E709F90();
    v110 = sub_22E70A098();
    v113 = sub_22E709F3C();
    v119 = v113;
    *v28 = 136315394;
    sub_22E715BDC();
    sub_22E7156BC(v29, v30);
    v107 = v27;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v108) = v21;
    v33 = v32;
    v34 = *(v24 + 8);
    v34(v23, v25);
    v35 = sub_22E706BF8(v31, v33, &v119);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2112;
    sub_22E715BF4();
    sub_22E7156BC(v36, v37);
    v38 = sub_22E715D08();
    v40 = sub_22E715DD4(v38, v39);
    (v19)(v40);
    v41 = v34;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    v43 = *(v26 + 8);
    v43(v24 + 8, v116);
    *(v28 + 14) = v42;
    *v110 = v42;
    sub_22E715D78();
    _os_log_impl(v44, v45, v46, v47, v28, 0x16u);
    sub_22E6D3510(v110, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CC8();
    sub_22E6CF2F4(v113);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  else
  {

    v43 = *(v26 + 8);
    v43(v27, v116);
    v41 = *(v24 + 8);
    v41(v23, v25);
  }

  *(v0 + 288) = v43;
  *(v0 + 296) = v41;
  v70 = *(v0 + 120);
  if (XPCRichError.canRetry.getter())
  {
    v115 = *(v0 + 288);
    v118 = *(v0 + 296);
    v72 = *(v0 + 272);
    v71 = *(v0 + 280);
    v73 = *(v0 + 240);
    sub_22E715D64();
    v74 = *(v0 + 120);
    v76 = *(v0 + 96);
    v75 = *(v0 + 104);
    v77 = *(v0 + 72);
    v78 = *(v0 + 48);
    sub_22E715BF4();
    sub_22E7156BC(v79, v80);
    v81 = swift_allocError();
    v72(v82, v74, v76);
    *(v0 + 32) = v81;
    type metadata accessor for AsyncThrowingStream.Continuation();
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v83 = v115(v74, v76);
    v91 = sub_22E715DF4(v83, v84, v85, v86, v87, v88, v89, v90, v106, v107, v108, v110, v111);
    v92(v91);

    goto LABEL_15;
  }

  v100 = sub_22E715D24();
  sub_22E715C48(v100);
  sub_22E709A8C();

  return MEMORY[0x2822009F8](v101, v102, v103);
}

uint64_t sub_22E714570()
{
  sub_22E6E3BDC();
  v1 = **(v0 + 304);
  sub_22E71A578();
  v2 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E7145D0()
{
  v40 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  (*(v0 + 256))(*(v0 + 176), *(v0 + 200), *(v0 + 152));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  if (v6)
  {
    v37 = *(v0 + 296);
    v11 = swift_slowAlloc();
    v12 = sub_22E709F3C();
    v39 = v12;
    *v11 = 136315138;
    sub_22E715BDC();
    sub_22E7156BC(v13, v14);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v1 = v16;
    v37(v8, v9);
    v17 = sub_22E706BF8(v15, v1, &v39);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_22E6C9000, v4, v5, "[message id = %s] evict xpc session from cache as it is no longer usable", v11, 0xCu);
    sub_22E6CF2F4(v12);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  else
  {

    v7(v8, v9);
  }

  v36 = *(v0 + 288);
  v38 = *(v0 + 296);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  v20 = *(v0 + 240);
  v33 = *(v0 + 160);
  v34 = *(v0 + 152);
  v35 = *(v0 + 200);
  v21 = *(v0 + 120);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 72);
  v25 = *(v0 + 48);
  sub_22E715BF4();
  sub_22E7156BC(v26, v27);
  v28 = sub_22E715D08();
  v30 = sub_22E715D8C(v28, v29);
  v18(v30);
  *(v0 + 32) = v1;
  sub_22E715DE8();
  type metadata accessor for AsyncThrowingStream.Continuation();
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v36(v21, v23);
  v38(v35, v34);

  sub_22E715C68();

  sub_22E709850();

  return v31();
}

uint64_t sub_22E714890()
{
  sub_22E6E3D08();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v4[1] = sub_22E6F4C30;
  v6 = sub_22E715C90();

  return sub_22E711814(v6, v7, v8, v9);
}

uint64_t sub_22E71493C(uint64_t a1)
{
  sub_22E715CF0(a1);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v3 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6E3A38(v3);
  v6 = (((*(v4 + 80) + 72) & ~*(v4 + 80)) + *(v5 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  sub_22E715CA4(*(*(v1 - 8) + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v15 = sub_22E715C0C(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25, v26);

  return sub_22E7132E0(v15, v16, v17, v18, v19, v20, v21, v22);
}

unint64_t sub_22E714B14()
{
  sub_22E715D40();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_22E714CB0(v1, v0, v2);
}

unint64_t sub_22E714B78(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_22E715BDC();
  sub_22E7156BC(v5, v6);
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_22E714D64(a1, v7);
}

unint64_t sub_22E714C00()
{
  sub_22E715D40();
  MEMORY[0x2318ECB90](v1);
  MEMORY[0x2318ECB90](v0);
  v2 = Hasher._finalize()();

  return sub_22E715030(v1, v0, v2);
}

unint64_t sub_22E714C6C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_22E7150A8(a1, v4);
}

unint64_t sub_22E714CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22E714D64(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_22E7156BC(&qword_27DA6D618, MEMORY[0x277CC95F0]);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22E714F20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v6 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6E3A38(v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_22E715E08();
  sub_22E6D376C(v11);
  v13 = *(v1 + v2);
  v14 = v1 + ((v2 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return sub_22E710F04(a1, v1 + v8, v13, v14, v5);
}

unint64_t sub_22E715030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22E7150A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_22E715634();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22E715168(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22E714B78(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v2;
  v9 = *(*v2 + 24);
  sub_22E6CF1CC(&qword_27DA6D620, &qword_22E72B150);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v19 + 48);
  v11 = type metadata accessor for UUID();
  sub_22E6CF978(v11);
  (*(v12 + 8))(v10 + *(v12 + 72) * v6, v11);
  v13 = (*(v19 + 56) + 16 * v6);
  v14 = *v13;
  v15 = v13[1];
  sub_22E6CF1CC(&qword_27DA6D610, &unk_22E72B070);
  sub_22E715BDC();
  sub_22E7156BC(v16, v17);
  _NativeDictionary._delete(at:)();
  *v2 = v19;
  return v14;
}

void sub_22E7152B0()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  v10 = sub_22E6CF988(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v0;
  v18 = sub_22E714B78(v5);
  sub_22E715DA0(v18, v19);
  if (v22)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = v20;
  v24 = v21;
  sub_22E6CF1CC(&qword_27DA6D620, &qword_22E72B150);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v17))
  {
    goto LABEL_5;
  }

  v25 = *v1;
  v26 = sub_22E714B78(v5);
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v23 = v26;
LABEL_5:
  v28 = *v1;
  if (v24)
  {
    v29 = (v28[7] + 16 * v23);
    v30 = v29[1];
    v31 = v34;
    *v29 = v8;
    v29[1] = v31;
    sub_22E6EB538();
  }

  else
  {
    (*(v12 + 16))(v16, v5, v9);
    sub_22E715574(v23, v16, v8, v34, v28);
    sub_22E6EB538();
  }
}

id sub_22E715454(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_22E714C6C(a2);
  sub_22E715DA0(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  sub_22E6CF1CC(&qword_27DA6D628, &unk_22E72B158);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v7))
  {
    goto LABEL_5;
  }

  v15 = *v4;
  v16 = sub_22E714C6C(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_22E715634();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
  }

  else
  {
    sub_22E715678(v13, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_22E715574(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_22E715634()
{
  result = qword_27DA6CA38;
  if (!qword_27DA6CA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA6CA38);
  }

  return result;
}

unint64_t sub_22E715678(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22E7156BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E715704(uint64_t a1)
{
  sub_22E715CF0(a1);
  sub_22E6F797C();
  v4 = ((*(v2 + 80) + 72) & ~*(v2 + 80)) + *(v3 + 64);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v5 = type metadata accessor for CheckedContinuation();
  sub_22E6E3A38(v5);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  sub_22E715CA4(*(v8 + 64));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v17 = sub_22E715C0C(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28);

  return sub_22E711EE4(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_22E715870(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v7 = type metadata accessor for CheckedContinuation();
  sub_22E6E3A38(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_22E71254C(a1, v1 + v12, v1 + v13, v14, v3, v4);
}

uint64_t sub_22E71595C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22E6CF2F4((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22E71599C()
{
  sub_22E6E3D08();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v4[1] = sub_22E6F4C30;
  v6 = sub_22E715C90();

  return sub_22E712D68(v6, v7, v8, v9);
}

uint64_t sub_22E715A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E715A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E715AFC()
{
  v1 = type metadata accessor for XPCAsyncSequenceResponse();
  sub_22E6D376C(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_22E6E3C38(v7);
  *v8 = v9;
  v8[1] = sub_22E6F48E8;
  v10 = sub_22E715C90();

  return sub_22E711698(v10, v11, v12, v6, v13);
}

uint64_t sub_22E715C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  v13[4] = a10;
  v13[2] = v12;
  v13[3] = a11;
  return v13[5];
}

uint64_t (*sub_22E715C48(uint64_t *a1))()
{
  *(v1 + 304) = a1;
  v2 = *a1;
  return sub_22E714570;
}

uint64_t sub_22E715C68()
{
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
}

void sub_22E715CA4(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[8];
  v6 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_22E715CF0(uint64_t result)
{
  *(v2 + 40) = result;
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  v6 = v1[6];
  return result;
}

uint64_t sub_22E715D08()
{

  return swift_allocError();
}

void *sub_22E715D24()
{
  v2 = *(v0 + 40);
  v3 = *(v2 + 40);

  return sub_22E6CF214((v2 + 16), v3);
}

uint64_t sub_22E715D40()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

void sub_22E715D64()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[25];
}

uint64_t sub_22E715E08()
{

  return type metadata accessor for UUID();
}

void AssetExportSession.__allocating_init(avAsset:presetName:delegate:)()
{
  sub_22E716190();
  v0 = sub_22E716174();

  sub_22E716000(v0, v1, v2, v3);
}

void AssetExportSession.init(avAsset:presetName:delegate:)()
{
  sub_22E716190();
  v0 = sub_22E716174();

  sub_22E716070(v0, v1, v2, v3, v4);
}

id AssetExportSession.__allocating_init(asset:presetName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x2318EC5C0](a2, a3);

  v9 = [v7 initWithAsset:a1 presetName:v8];

  return v9;
}

id AssetExportSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetExportSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22E716000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AssetExportSession());

  sub_22E716070(a1, a2, a3, a4, v8);
}

void sub_22E716070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  *&a5[OBJC_IVAR____TtC10CloudAsset18AssetExportSession_delegate] = a4;
  swift_unknownObjectRetain();
  v9 = MEMORY[0x2318EC5C0](a2, a3);
  v11.receiver = a5;
  v11.super_class = type metadata accessor for AssetExportSession();
  v10 = objc_msgSendSuper2(&v11, sel_initWithAsset_presetName_, a1, v9);

  if (v10)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22E716190()
{

  return swift_getObjectType();
}

uint64_t sub_22E7161B4()
{
  v1 = v0;
  v2 = type metadata accessor for AssetDownloadResponse();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  sub_22E718140(v1, &v32 - v8);
  if (sub_22E6CF550(v9, 1, v2) == 1)
  {
    return MEMORY[0x2318ECB90](1);
  }

  sub_22E7181B0(v9, v5, type metadata accessor for AssetDownloadResponse);
  MEMORY[0x2318ECB90](0);
  type metadata accessor for UUID();
  sub_22E718210(&qword_27DA6C5F0, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v11 = &v5[v2[5]];
  type metadata accessor for URL();
  sub_22E718210(&qword_27DA6C5F8, MEMORY[0x277CC9260]);
  dispatch thunk of Hashable.hash(into:)();
  v12 = type metadata accessor for Asset.ID(0);
  v13 = &v11[v12[5]];
  v14 = *v13;
  v15 = *(v13 + 1);
  String.hash(into:)();
  v16 = &v11[v12[6]];
  v17 = *v16;
  v18 = *(v16 + 1);
  Data.hash(into:)();
  v19 = &v11[v12[7]];
  v20 = *v19;
  v21 = *(v19 + 1);
  Data.hash(into:)();
  v22 = type metadata accessor for Asset(0);
  v23 = &v11[*(v22 + 20)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = *(v23 + 2);
  v27 = *(v23 + 3);
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*&v11[*(v22 + 24)]);
  v28 = &v5[v2[6]];
  dispatch thunk of Hashable.hash(into:)();
  v29 = &v5[v2[7]];
  if (v29[16] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v31 = *v29;
    v30 = *(v29 + 1);
    Hasher._combine(_:)(1u);
    MEMORY[0x2318ECB90](v31);
    MEMORY[0x2318ECB90](v30);
  }

  return sub_22E718258(v5, type metadata accessor for AssetDownloadResponse);
}

uint64_t static DownloadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550) - 8) + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for DownloadResponseMessage();
  v10 = sub_22E6CF978(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22E718324();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = *(*(sub_22E6CF1CC(&qword_27DA6D648, &qword_22E72B1E8) - 8) + 64);
  sub_22E6D374C();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  v21 = (&v34 + *(v18 + 56) - v19);
  sub_22E71681C(a1, &v34 - v19);
  sub_22E71681C(a2, v21);
  sub_22E718340();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22E71681C(v20, v15);
    v24 = *(sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0) + 48);
    v26 = *&v15[v24];
    v25 = *&v15[v24 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_22E6D3510(v15, &qword_27DA6D200, &qword_22E72A550);
LABEL_7:
      sub_22E6D3510(v20, &qword_27DA6D648, &qword_22E72B1E8);
LABEL_17:
      v23 = 0;
      return v23 & 1;
    }

    v27 = v21 + v24;
    v29 = *(v21 + v24);
    v28 = *(v27 + 1);
    sub_22E716880(v21, v8);
    v30 = sub_22E70A664(v15, v8);
    sub_22E6D3510(v15, &qword_27DA6D200, &qword_22E72A550);
    if (v30)
    {
      if (v26 == v29 && v25 == v28)
      {

        sub_22E6D3510(v8, &qword_27DA6D200, &qword_22E72A550);
LABEL_20:
        sub_22E7182E8();
        v23 = 1;
        return v23 & 1;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_22E6D3510(v8, &qword_27DA6D200, &qword_22E72A550);
      if (v32)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_22E6D3510(v8, &qword_27DA6D200, &qword_22E72A550);
    }

    sub_22E7182E8();
    goto LABEL_17;
  }

  sub_22E71681C(v20, v2);
  v22 = *v2;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_7;
  }

  v23 = sub_22E6ECD4C(v22, *v21);

  sub_22E7182E8();
  return v23 & 1;
}

uint64_t type metadata accessor for DownloadResponseMessage()
{
  result = qword_27DA6D6B0;
  if (!qword_27DA6D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E71681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponseMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E716880(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E7168F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022E72D400 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E7169C0(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_22E7169FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022E72D5D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E716AC8(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_22E716B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E7168F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E716B30(uint64_t a1)
{
  v2 = sub_22E717114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E716B6C(uint64_t a1)
{
  v2 = sub_22E717114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E716BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E7169FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E716BD8(uint64_t a1)
{
  v2 = sub_22E7171BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E716C14(uint64_t a1)
{
  v2 = sub_22E7171BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E716C50(uint64_t a1)
{
  v2 = sub_22E717168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E716C8C(uint64_t a1)
{
  v2 = sub_22E717168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadResponseMessage.encode(to:)(void *a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6D650, &qword_22E72B1F8);
  v3 = sub_22E6CF988(v2);
  v48 = v4;
  v49 = v3;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_22E6CF1CC(&qword_27DA6D658, &qword_22E72B200);
  v11 = sub_22E6CF988(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v47 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  sub_22E6CF978(v47);
  v19 = *(v18 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  sub_22E71834C(v21, v47);
  v22 = type metadata accessor for DownloadResponseMessage();
  v23 = sub_22E6CF978(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_22E6CF1CC(&qword_27DA6D660, &qword_22E72B208);
  sub_22E6CF988(v54);
  v29 = v28;
  v31 = *(v30 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v32);
  v34 = &v47 - v33;
  v35 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E717114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E71681C(v53, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v27;
    v60 = 1;
    sub_22E717168();
    v37 = v54;
    sub_22E718360();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v56 = v36;
    sub_22E70BB68();
    v38 = v49;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v48 + 8))(v9, v38);
    (*(v29 + 8))(v34, v37);
  }

  else
  {
    v53 = v29;
    v40 = (v27 + *(sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0) + 48));
    v42 = *v40;
    v41 = v40[1];
    v43 = v50;
    sub_22E716880(v27, v50);
    v59 = 0;
    sub_22E7171BC();
    v44 = v54;
    sub_22E718360();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v58 = 0;
    sub_22E717B0C(&qword_27DA6D680);
    v45 = v52;
    v46 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v46)
    {
      v57 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v51 + 8))(v17, v45);
    sub_22E6D3510(v43, &qword_27DA6D200, &qword_22E72A550);
    return (*(v53 + 8))(v34, v44);
  }
}

unint64_t sub_22E717114()
{
  result = qword_27DA6D668;
  if (!qword_27DA6D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D668);
  }

  return result;
}

unint64_t sub_22E717168()
{
  result = qword_27DA6D670;
  if (!qword_27DA6D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D670);
  }

  return result;
}

unint64_t sub_22E7171BC()
{
  result = qword_27DA6D678;
  if (!qword_27DA6D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D678);
  }

  return result;
}

uint64_t DownloadResponseMessage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550) - 8) + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DownloadResponseMessage();
  v9 = sub_22E6CF978(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E71681C(v2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    MEMORY[0x2318ECB90](1);
    MEMORY[0x2318ECB90](0);
    sub_22E6F259C(a1, v14);
  }

  else
  {
    v16 = (v13 + *(sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0) + 48));
    v17 = *v16;
    v18 = v16[1];
    sub_22E716880(v13, v7);
    MEMORY[0x2318ECB90](0);
    sub_22E7161B4();
    sub_22E718340();
    String.hash(into:)();

    return sub_22E6D3510(v7, &qword_27DA6D200, &qword_22E72A550);
  }
}

Swift::Int DownloadResponseMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  DownloadResponseMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t DownloadResponseMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v4 = sub_22E6CF1CC(&qword_27DA6D688, &qword_22E72B210);
  v5 = sub_22E6CF988(v4);
  v73 = v6;
  v74 = v5;
  v8 = *(v7 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v76 = &v70 - v10;
  v78 = sub_22E6CF1CC(&qword_27DA6D690, &qword_22E72B218);
  sub_22E6CF988(v78);
  v75 = v11;
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  sub_22E71834C(v15, v70);
  v16 = sub_22E6CF1CC(&qword_27DA6D698, &unk_22E72B220);
  sub_22E6CF988(v16);
  v77 = v17;
  v19 = *(v18 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = type metadata accessor for DownloadResponseMessage();
  v24 = sub_22E6CF978(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22E718324();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v70 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v70 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v80 = a1;
  sub_22E6CF214(a1, v33);
  sub_22E717114();
  v35 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    return sub_22E6CF2F4(v80);
  }

  v70 = v2;
  v71 = v32;
  v72 = v30;
  v81 = v23;
  v36 = v79;
  v37 = KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C(v37, 0);
  if (v40 == v41 >> 1)
  {
LABEL_7:
    v47 = v81;
    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v50 = v49;
    v51 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v50 = v47;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v77 + 8))(v22, v16);
    return sub_22E6CF2F4(v80);
  }

  if (v40 < (v41 >> 1))
  {
    v83 = *(v39 + v40);
    sub_22E6F3764(v40 + 1);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      if (v83)
      {
        v87 = 1;
        sub_22E717168();
        sub_22E718360();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_22E70CA00();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v46 = v77;
        swift_unknownObjectRelease();
        v52 = sub_22E71836C();
        v53(v52);
        (*(v46 + 8))(0, v16);
        v54 = v70;
        *v70 = v82;
        swift_storeEnumTagMultiPayload();
        sub_22E7182D0();
        v56 = v54;
      }

      else
      {
        v86 = 0;
        sub_22E7171BC();
        sub_22E718360();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
        v85 = 0;
        sub_22E717B0C(&qword_27DA6D6A0);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v84 = 1;
        v74 = KeyedDecodingContainer.decode(_:forKey:)();
        v76 = v57;
        v58 = v75;
        swift_unknownObjectRelease();
        v59 = sub_22E6CF1CC(&qword_27DA6D218, &qword_22E72B1F0);
        v60 = v72;
        v61 = &v72[*(v59 + 48)];
        v62 = *(v58 + 8);
        v63 = sub_22E718340();
        v64(v63);
        v65 = sub_22E718310();
        v66(v65);
        v67 = v76;
        *v61 = v74;
        v61[1] = v67;
        swift_storeEnumTagMultiPayload();
        sub_22E7182D0();
        v56 = v60;
      }

      v68 = v71;
      sub_22E7181B0(v56, v71, v55);
      sub_22E7182D0();
      sub_22E7181B0(v68, v36, v69);
      return sub_22E6CF2F4(v80);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

Swift::Int sub_22E717A9C()
{
  Hasher.init(_seed:)();
  DownloadResponseMessage.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_22E717B0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6D200, &qword_22E72A550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22E717BA4()
{
  sub_22E717C18();
  if (v0 <= 0x3F)
  {
    sub_22E70CDE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22E717C18()
{
  if (!qword_27DA6D6C0)
  {
    sub_22E6CF2AC(&qword_27DA6D200, &qword_22E72A550);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA6D6C0);
    }
  }
}

_BYTE *sub_22E717CA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DownloadResponseMessage.SimultaneousTransferErrorCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E717E2C()
{
  result = qword_27DA6D6C8;
  if (!qword_27DA6D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6C8);
  }

  return result;
}

unint64_t sub_22E717E84()
{
  result = qword_27DA6D6D0;
  if (!qword_27DA6D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6D0);
  }

  return result;
}

unint64_t sub_22E717EDC()
{
  result = qword_27DA6D6D8;
  if (!qword_27DA6D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6D8);
  }

  return result;
}

unint64_t sub_22E717F34()
{
  result = qword_27DA6D6E0;
  if (!qword_27DA6D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6E0);
  }

  return result;
}

unint64_t sub_22E717F8C()
{
  result = qword_27DA6D6E8;
  if (!qword_27DA6D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6E8);
  }

  return result;
}

unint64_t sub_22E717FE4()
{
  result = qword_27DA6D6F0;
  if (!qword_27DA6D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6F0);
  }

  return result;
}

unint64_t sub_22E71803C()
{
  result = qword_27DA6D6F8;
  if (!qword_27DA6D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D6F8);
  }

  return result;
}

unint64_t sub_22E718094()
{
  result = qword_27DA6D700;
  if (!qword_27DA6D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D700);
  }

  return result;
}

unint64_t sub_22E7180EC()
{
  result = qword_27DA6D708;
  if (!qword_27DA6D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D708);
  }

  return result;
}

uint64_t sub_22E718140(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6D200, &qword_22E72A550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E7181B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22E6CF978(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22E718210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E718258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E7182E8()
{

  return sub_22E718258(v0, type metadata accessor for DownloadResponseMessage);
}

uint64_t sub_22E718380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C656979 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22E718484(char a1)
{
  if (!a1)
  {
    return 0x646C656979;
  }

  if (a1 == 1)
  {
    return 0x6873696E6966;
  }

  return 0x726F727265;
}

uint64_t sub_22E7184D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E718380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E718500(uint64_t a1)
{
  v2 = sub_22E718A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71853C(uint64_t a1)
{
  v2 = sub_22E718A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E718578(uint64_t a1)
{
  v2 = sub_22E718ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7185B4(uint64_t a1)
{
  v2 = sub_22E718ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E7185F0(uint64_t a1)
{
  v2 = sub_22E718B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71862C(uint64_t a1)
{
  v2 = sub_22E718B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E718668(uint64_t a1)
{
  v2 = sub_22E718B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7186A4(uint64_t a1)
{
  v2 = sub_22E718B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCAsyncSequenceResponse.Event.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_22E6CF1CC(&qword_27DA6D710, &qword_22E72B6A0);
  v5 = sub_22E6CF988(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - v10;
  v40 = sub_22E6CF1CC(&qword_27DA6D718, &qword_22E72B6A8);
  sub_22E6CF988(v40);
  v38 = v11;
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v39 = sub_22E6CF1CC(&qword_27DA6D720, &qword_22E72B6B0);
  sub_22E6CF988(v39);
  v37 = v17;
  v19 = *(v18 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = sub_22E6CF1CC(&qword_27DA6D728, &qword_22E72B6B8);
  sub_22E6CF988(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v28);
  v30 = &v36 - v29;
  v31 = v2[1];
  v36 = *v2;
  v32 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E718A68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v31 >> 60 == 11)
  {
    LOBYTE(v44) = 2;
    sub_22E718ABC();
    v33 = v41;
    sub_22E71A428();
    (*(v42 + 8))(v33, v43);
    return (*(v25 + 8))(v30, v23);
  }

  if (v31 >> 60 == 15)
  {
    LOBYTE(v44) = 1;
    sub_22E718B10();
    sub_22E71A428();
    (*(v38 + 8))(v16, v40);
    return (*(v25 + 8))(v30, v23);
  }

  LOBYTE(v44) = 0;
  sub_22E718B64();
  sub_22E71A428();
  v44 = v36;
  v45 = v31;
  sub_22E6D0A5C();
  v35 = v39;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v37 + 8))(v22, v35);
  return (*(v25 + 8))(v30, v23);
}

unint64_t sub_22E718A68()
{
  result = qword_27DA6D730;
  if (!qword_27DA6D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D730);
  }

  return result;
}

unint64_t sub_22E718ABC()
{
  result = qword_27DA6D738;
  if (!qword_27DA6D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D738);
  }

  return result;
}

unint64_t sub_22E718B10()
{
  result = qword_27DA6D740;
  if (!qword_27DA6D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D740);
  }

  return result;
}

unint64_t sub_22E718B64()
{
  result = qword_27DA6D748;
  if (!qword_27DA6D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D748);
  }

  return result;
}

uint64_t XPCAsyncSequenceResponse.Event.init(from:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v68 = a2;
  v72 = sub_22E6CF1CC(&qword_27DA6D750, &qword_22E72B6C0);
  sub_22E6CF988(v72);
  v69 = v3;
  v5 = *(v4 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v71 = v62 - v7;
  v67 = sub_22E6CF1CC(&qword_27DA6D758, &qword_22E72B6C8);
  sub_22E6CF988(v67);
  v65 = v8;
  v10 = *(v9 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  v13 = v62 - v12;
  v14 = sub_22E6CF1CC(&qword_27DA6D760, &qword_22E72B6D0);
  sub_22E6CF988(v14);
  v66 = v15;
  v17 = *(v16 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v18);
  v20 = v62 - v19;
  v21 = sub_22E6CF1CC(&qword_27DA6D768, &unk_22E72B6D8);
  sub_22E6CF988(v21);
  v70 = v22;
  v24 = *(v23 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v25);
  v27 = v62 - v26;
  v28 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E718A68();
  v29 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    return sub_22E6CF2F4(a1);
  }

  v63 = v13;
  v64 = v20;
  v62[1] = v14;
  v31 = v71;
  v30 = v72;
  v74 = a1;
  v32 = KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C(v32, 0);
  if (v35 == v36 >> 1)
  {
    goto LABEL_8;
  }

  v62[0] = 0;
  if (v35 < (v36 >> 1))
  {
    v37 = *(v34 + v35);
    sub_22E6F3764(v35 + 1);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = v69;
    if (v39 == v41 >> 1)
    {
      if (!v37)
      {
        LOBYTE(v73) = 0;
        sub_22E718B64();
        sub_22E71A464();
        sub_22E6D0730();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v55 = v70;
        swift_unknownObjectRelease();
        v57 = sub_22E71A450();
        v58(v57);
        v59 = *(v55 + 8);
        v60 = sub_22E71A444();
        v61(v60);
        v54 = v73;
        v44 = v68;
        goto LABEL_14;
      }

      if (v37 == 1)
      {
        LOBYTE(v73) = 1;
        sub_22E718B10();
        v43 = v63;
        sub_22E71A464();
        v44 = v68;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v43, v67);
        sub_22E71A41C();
        v52 = sub_22E71A444();
        v53(v52);
        v54 = xmmword_22E72B690;
LABEL_14:
        *v44 = v54;
        return sub_22E6CF2F4(v74);
      }

      LOBYTE(v73) = 2;
      sub_22E718ABC();
      v50 = v62[0];
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v68;
      if (!v50)
      {
        swift_unknownObjectRelease();
        (*(v42 + 8))(v31, v30);
        sub_22E71A41C();
        v56(v27, v21);
        v54 = xmmword_22E72B680;
        goto LABEL_14;
      }

      sub_22E71A41C();
      v51(v27, v21);
      swift_unknownObjectRelease();
      a1 = v74;
      return sub_22E6CF2F4(a1);
    }

LABEL_8:
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    v48 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v47 = &type metadata for XPCAsyncSequenceResponse.Event;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22E71A41C();
    v49(v27, v21);
    a1 = v74;
    return sub_22E6CF2F4(a1);
  }

  __break(1u);
  return result;
}

uint64_t XPCAsyncSequenceResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_22E6CF978(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t XPCAsyncSequenceResponse.event.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22E7199EC(v4, v5);
}

uint64_t XPCAsyncSequenceResponse.init(id:event:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for UUID();
  sub_22E6CF978(v7);
  (*(v8 + 32))(a3, a1);
  result = type metadata accessor for XPCAsyncSequenceResponse();
  v10 = (a3 + *(result + 20));
  *v10 = v5;
  v10[1] = v6;
  return result;
}

uint64_t sub_22E719320(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E7193DC(char a1)
{
  if (a1)
  {
    return 0x746E657665;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22E71940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E719320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E719434(uint64_t a1)
{
  v2 = sub_22E719A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E719470(uint64_t a1)
{
  v2 = sub_22E719A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCAsyncSequenceResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6D770, &qword_22E72B6E8);
  sub_22E6CF988(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E719A04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for UUID();
  sub_22E6D5FC8(&qword_27DA6C5D0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for XPCAsyncSequenceResponse() + 20));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 1;
    sub_22E7199EC(v18, v15);
    sub_22E719A58();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E708DF4(v18, v19);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t XPCAsyncSequenceResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = type metadata accessor for UUID();
  v4 = sub_22E6CF988(v36);
  v33 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22E6CF1CC(&qword_27DA6D788, &qword_22E72B6F0);
  v34 = sub_22E6CF988(v10);
  v35 = v11;
  v13 = *(v12 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for XPCAsyncSequenceResponse();
  v16 = sub_22E6CF978(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E719A04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_22E6CF2F4(a1);
  }

  v31 = v15;
  v22 = v33;
  LOBYTE(v37) = 0;
  sub_22E6D5FC8(&qword_27DA6C608);
  v23 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *(v22 + 32);
  v30 = v20;
  v24(v20, v9, v23);
  v38 = 1;
  sub_22E719AAC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = sub_22E6D6348();
  v26(v25);
  v27 = v30;
  *&v30[*(v31 + 20)] = v37;
  sub_22E715A34(v27, v32);
  sub_22E6CF2F4(a1);
  return sub_22E719B00(v27);
}

uint64_t type metadata accessor for XPCAsyncSequenceResponse()
{
  result = qword_27DA6D798;
  if (!qword_27DA6D798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E7199EC(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_22E6CFB64(a1, a2);
  }

  return a1;
}

unint64_t sub_22E719A04()
{
  result = qword_27DA6D778;
  if (!qword_27DA6D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D778);
  }

  return result;
}

unint64_t sub_22E719A58()
{
  result = qword_27DA6D780;
  if (!qword_27DA6D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D780);
  }

  return result;
}

unint64_t sub_22E719AAC()
{
  result = qword_27DA6D790;
  if (!qword_27DA6D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D790);
  }

  return result;
}

uint64_t sub_22E719B00(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E719B84()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E719BF8(uint64_t a1)
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

__n128 sub_22E719C20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22E719C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E719C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_22E719CDC(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceResponse.Event.YieldCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E719FA4()
{
  result = qword_27DA6D7A8;
  if (!qword_27DA6D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7A8);
  }

  return result;
}

unint64_t sub_22E719FFC()
{
  result = qword_27DA6D7B0;
  if (!qword_27DA6D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7B0);
  }

  return result;
}

unint64_t sub_22E71A054()
{
  result = qword_27DA6D7B8;
  if (!qword_27DA6D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7B8);
  }

  return result;
}

unint64_t sub_22E71A0AC()
{
  result = qword_27DA6D7C0;
  if (!qword_27DA6D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7C0);
  }

  return result;
}

unint64_t sub_22E71A104()
{
  result = qword_27DA6D7C8;
  if (!qword_27DA6D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7C8);
  }

  return result;
}

unint64_t sub_22E71A15C()
{
  result = qword_27DA6D7D0;
  if (!qword_27DA6D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7D0);
  }

  return result;
}

unint64_t sub_22E71A1B4()
{
  result = qword_27DA6D7D8;
  if (!qword_27DA6D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7D8);
  }

  return result;
}

unint64_t sub_22E71A20C()
{
  result = qword_27DA6D7E0;
  if (!qword_27DA6D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7E0);
  }

  return result;
}

unint64_t sub_22E71A264()
{
  result = qword_27DA6D7E8;
  if (!qword_27DA6D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7E8);
  }

  return result;
}

unint64_t sub_22E71A2BC()
{
  result = qword_27DA6D7F0;
  if (!qword_27DA6D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7F0);
  }

  return result;
}

unint64_t sub_22E71A314()
{
  result = qword_27DA6D7F8;
  if (!qword_27DA6D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D7F8);
  }

  return result;
}

unint64_t sub_22E71A36C()
{
  result = qword_27DA6D800;
  if (!qword_27DA6D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D800);
  }

  return result;
}

unint64_t sub_22E71A3C4()
{
  result = qword_27DA6D808;
  if (!qword_27DA6D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D808);
  }

  return result;
}

uint64_t sub_22E71A428()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E71A464()
{
  v2 = *(v0 - 192);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E71A484()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D810);
  sub_22E6E3578(v0, qword_27DA6D810);
  type metadata accessor for XPCSessionCacheImplementation();
  sub_22E6CF1CC(&qword_27DA6D828, &qword_22E72BDD8);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

void *sub_22E71A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
  v4[18] = 0;
  return v4;
}

uint64_t sub_22E71A578()
{
  v1 = v0;
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_22E6E3578(v2, qword_27DA6D810);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = sub_22E71AD84();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_22E71AD90(&dword_22E6C9000, v6, v7, "evict xpc session");
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  v8 = *(v1 + 144);
  *(v1 + 144) = 0;
}

uint64_t sub_22E71A648()
{
  if (*(v1 + 144))
  {
    v0 = *(v1 + 144);
  }

  else
  {
    v3 = sub_22E71A690();
    if (v2)
    {
      return v0;
    }

    v0 = v3;
  }

  return v0;
}

uint64_t sub_22E71A690()
{
  v2 = v0;
  v3 = type metadata accessor for XPCSession.InitializationOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_22E6E3578(v5, qword_27DA6D810);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = sub_22E71AD84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22E6C9000, v6, v7, "establish xpc session", v10, 2u);
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  type metadata accessor for XPCSession();
  v11 = v2[14];
  v12 = v2[15];
  v13 = v2[16];
  v14 = v2[17];

  static XPCSession.InitializationOptions.none.getter();
  type metadata accessor for XPCAsyncSequenceResponse();
  sub_22E71AD1C(&qword_27DA6D830, type metadata accessor for XPCAsyncSequenceResponse);
  v15 = XPCSession.__allocating_init<A>(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)();
  v16 = v15;
  if (!v1)
  {
    v17 = v2[18];
    v2[18] = v15;
  }

  return v16;
}

uint64_t sub_22E71A89C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCRichError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_22E6E3578(v9, qword_27DA6D810);
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = sub_22E71AD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21[1] = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    sub_22E71AD1C(&qword_27DA6D248, MEMORY[0x277D855E8]);
    swift_allocError();
    v10(v18, v8, v4);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_22E6C9000, v11, v12, "cached xpc connection disconnected due to error %@", v16, 0xCu);
    sub_22E71ACB0(v17);
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return sub_22E71A578();
}

uint64_t sub_22E71AB10()
{
  v1 = v0;
  if (qword_27DA6C478 != -1)
  {
    sub_22E71AD64();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_22E6E3578(v2, qword_27DA6D810);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = sub_22E71AD84();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_22E71AD90(&dword_22E6C9000, v6, v7, "cancel xpc session");
    sub_22E71AD78();
    MEMORY[0x2318ED210]();
  }

  if (*(v1 + 144))
  {
    v8 = *(v1 + 144);

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  return sub_22E71A578();
}

void *sub_22E71AC0C()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22E71AC44()
{
  sub_22E71AC0C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22E71ACB0(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6CA08, &qword_22E727840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E71AD1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22E71AD90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t Credential.Builder.__allocating_init(tenantName:requestorID:accessToken:)()
{
  sub_22E71C260();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  return v3;
}

uint64_t Credential.Builder.build()@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 3);
  *a1 = *(v1 + 2);
  *(a1 + 1) = v3;
  v4 = *(v1 + 5);
  *(a1 + 2) = *(v1 + 4);
  *(a1 + 3) = v4;
  v5 = *(v1 + 7);
  *(a1 + 4) = *(v1 + 6);
  *(a1 + 5) = v5;
  v6 = OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate;
  swift_beginAccess();
  v7 = *(type metadata accessor for Credential(0) + 28);
  v8 = type metadata accessor for Date();
  sub_22E6CF978(v8);
  (*(v9 + 16))(&a1[v7], &v1[v6]);
}

void *Credential.Builder.init(tenantName:requestorID:accessToken:)()
{
  sub_22E71C260();
  v7 = type metadata accessor for Date();
  v8 = sub_22E6CF988(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22E6CF9C8();
  v15 = v14 - v13;
  v1[2] = v6;
  v1[3] = v5;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v3;
  static Date.distantFuture.getter();
  (*(v10 + 32))(v1 + OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate, v15, v7);
  return v1;
}

uint64_t Credential.Builder.setExpirationDate(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  sub_22E6CF978(v4);
  (*(v5 + 24))(v1 + v3, a1);
  swift_endAccess();
}

char *Credential.Builder.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtCV10CloudAsset10Credential7Builder_expirationDate;
  v5 = type metadata accessor for Date();
  sub_22E6CF978(v5);
  (*(v6 + 8))(&v0[v4]);
  return v0;
}

uint64_t Credential.Builder.__deallocating_deinit()
{
  Credential.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22E71B144(uint64_t a1)
{
  v2 = sub_22E71B6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71B180(uint64_t a1)
{
  v2 = sub_22E71B6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Credential.tenantName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Credential.requestorID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Credential.accessToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Credential.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_22E71C27C();
  v5 = sub_22E6CF978(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v2, v5);
}

uint64_t Credential.init(accessToken:expiryDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = 0x616C506572616853;
  *(a4 + 1) = 0xE900000000000079;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0xE000000000000000;
  *(a4 + 4) = a1;
  *(a4 + 5) = a2;
  v7 = sub_22E71C27C();
  sub_22E6CF978(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v4], a3);
}

uint64_t Credential.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for Google_Protobuf_Timestamp();
  v40 = sub_22E6CF988(v3);
  v41 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22E6CF9C8();
  v39 = v8 - v7;
  v9 = type metadata accessor for BinaryDecodingOptions();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22E6CF9C8();
  v11 = type metadata accessor for CloudAssets_Credential(0);
  v12 = sub_22E6CF978(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22E6CF9C8();
  v17 = (v16 - v15);
  v18 = sub_22E6CF1CC(&qword_27DA6D838, &qword_22E72BDE0);
  v19 = sub_22E6CF988(v18);
  v42 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E71B6A4();
  v26 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    v37 = a1;
  }

  else
  {
    v49 = a1;
    v27 = v42;
    v28 = v43;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v48;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E71C248();
    sub_22E71BCB0(v29, v30);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v32 = v17[1];
    *v28 = *v17;
    v28[1] = v32;
    v33 = v17[3];
    v28[2] = v17[2];
    v28[3] = v33;
    v34 = v17[5];
    v28[4] = v17[4];
    v28[5] = v34;

    v35 = v39;
    sub_22E6E4AE4(v39);
    v36 = v28 + *(type metadata accessor for Credential(0) + 28);
    Google_Protobuf_Timestamp.date.getter();
    (*(v41 + 8))(v35, v40);
    sub_22E71B6F8(v17);
    (*(v27 + 8))(v24, v18);
    v37 = v49;
  }

  return sub_22E6CF2F4(v37);
}

unint64_t sub_22E71B6A4()
{
  result = qword_27DA6D840;
  if (!qword_27DA6D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D840);
  }

  return result;
}

uint64_t sub_22E71B6F8(uint64_t a1)
{
  v2 = type metadata accessor for CloudAssets_Credential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v53 = type metadata accessor for Date();
  v4 = sub_22E6CF988(v53);
  v51 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22E6CF9C8();
  v50 = v9 - v8;
  v10 = type metadata accessor for Google_Protobuf_Timestamp();
  v11 = sub_22E6CF988(v10);
  v52 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22E6CF9C8();
  v17 = v16 - v15;
  v18 = type metadata accessor for CloudAssets_Credential(0);
  v19 = sub_22E6CF978(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22E6CF9C8();
  v24 = (v23 - v22);
  v25 = sub_22E6CF1CC(&qword_27DA6D848, &qword_22E72BDE8);
  v26 = sub_22E6CF988(v25);
  v55 = v27;
  v56 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v49 - v30;
  v32 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E71B6A4();
  v54 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = &v24[*(v18 + 28)];
  UnknownStorage.init()();
  v34 = *(v18 + 32);
  sub_22E6CF58C(&v24[v34], 1, 1, v10);
  v35 = *(v2 + 1);
  *v24 = *v2;
  *(v24 + 1) = v35;
  v36 = *(v2 + 3);
  *(v24 + 2) = *(v2 + 2);
  *(v24 + 3) = v36;
  v37 = *(v2 + 5);
  *(v24 + 4) = *(v2 + 4);
  *(v24 + 5) = v37;
  v38 = type metadata accessor for Credential(0);
  (*(v51 + 16))(v50, &v2[*(v38 + 28)], v53);

  Google_Protobuf_Timestamp.init(date:)();
  sub_22E71BAF4(&v24[v34]);
  (*(v52 + 32))(&v24[v34], v17, v10);
  sub_22E6CF58C(&v24[v34], 0, 1, v10);
  sub_22E71C248();
  sub_22E71BCB0(v39, v40);
  v41 = v59;
  v42 = Message.serializedData(partial:)();
  if (v41)
  {
    (*(v55 + 8))(v54, v56);
    return sub_22E71B6F8(v24);
  }

  else
  {
    v45 = v42;
    v46 = v43;
    sub_22E71B6F8(v24);
    v57 = v45;
    v58 = v46;
    sub_22E6D0A5C();
    v47 = v56;
    v48 = v54;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v57, v58);
    return (*(v55 + 8))(v48, v47);
  }
}

uint64_t sub_22E71BAF4(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Credential.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Credential(0) + 28);

  return static Date.== infix(_:_:)();
}

uint64_t Credential.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = *(type metadata accessor for Credential(0) + 28);
  type metadata accessor for Date();
  sub_22E71C230();
  sub_22E71BCB0(v8, v9);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_22E71BCB0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int Credential.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  sub_22E71C27C();
  sub_22E71C230();
  sub_22E71BCB0(v7, v8);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E71BDA4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = v2[4];
  v9 = v2[5];
  String.hash(into:)();
  v10 = *(a2 + 28);
  type metadata accessor for Date();
  sub_22E71BCB0(&qword_27DA6C768, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E71BF04()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E71BFB0()
{
  result = type metadata accessor for Date();
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

_BYTE *storeEnumTagSinglePayload for Credential.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22E71C12C()
{
  result = qword_27DA6D858;
  if (!qword_27DA6D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D858);
  }

  return result;
}

unint64_t sub_22E71C184()
{
  result = qword_27DA6D860;
  if (!qword_27DA6D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D860);
  }

  return result;
}

unint64_t sub_22E71C1DC()
{
  result = qword_27DA6D868;
  if (!qword_27DA6D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D868);
  }

  return result;
}

uint64_t sub_22E71C27C()
{
  v0 = *(type metadata accessor for Credential(0) + 28);

  return type metadata accessor for Date();
}

id PlayerItem.__allocating_init(avAsset:delegate:)()
{
  swift_getObjectType();
  v0 = sub_22E71D300();

  return sub_22E71CD58(v0, v1);
}

uint64_t sub_22E71C2F4()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D870);
  sub_22E6E3578(v0, qword_27DA6D870);
  type metadata accessor for PlayerItem();
  sub_22E6CF1CC(&qword_27DA6D888, "R/");
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

id PlayerItem.init(avAsset:delegate:)()
{
  swift_getObjectType();
  v0 = sub_22E71D300();

  return sub_22E71CDB4(v0, v1, v2);
}

uint64_t sub_22E71C3E0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = sub_22E6CF988(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = dispatch_semaphore_create(0);
  type metadata accessor for PlayerItem.UnsafeSendablePlayerItemBox();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v15, 1, 1, v18);
  type metadata accessor for MainActor();
  v19 = v16;

  v20 = a1;
  swift_unknownObjectRetain();
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v19;
  v22[5] = v17;
  v22[6] = v20;
  v22[7] = a2;
  sub_22E6E1B80(0, 0, v15, &unk_22E72C048, v22);

  static DispatchTime.distantFuture.getter();
  MEMORY[0x2318EC8B0](v11);
  result = (*(v7 + 8))(v11, v4);
  v25 = *(v17 + 16);
  if (v25)
  {
    v26 = v25;

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22E71C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](sub_22E71C69C, v9, v8);
}

uint64_t sub_22E71C69C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  type metadata accessor for PlayerItem();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = sub_22E71CD58(v3, v2);
  v7 = *(v4 + 16);
  *(v4 + 16) = v6;

  OS_dispatch_semaphore.signal()();
  v8 = v0[1];

  return v8();
}

id PlayerItem.__deallocating_deinit()
{
  v1 = type metadata accessor for UUID();
  v2 = sub_22E6CF988(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA6C480 != -1)
  {
    sub_22E71D2E0();
  }

  v9 = type metadata accessor for Logger();
  sub_22E6E3578(v9, qword_27DA6D870);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    (*(v4 + 16))(v8, v10 + OBJC_IVAR____TtC10CloudAsset10PlayerItem_id, v1);
    sub_22E71D1A8();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v4 + 8))(v8, v1);
    v18 = sub_22E706BF8(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22E6C9000, v11, v12, "deinit PlayerItem with id %s", v13, 0xCu);
    sub_22E6CF2F4(v14);
    sub_22E6E3CE4();
    sub_22E6E3CE4();
  }

  v19 = type metadata accessor for PlayerItem();
  v23.receiver = v10;
  v23.super_class = v19;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

id sub_22E71CA1C@<X0>(void *a1@<X8>)
{
  if (qword_27DA6C480 != -1)
  {
    sub_22E71D2E0();
  }

  v3 = type metadata accessor for Logger();
  sub_22E6E3578(v3, qword_27DA6D870);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    sub_22E71D1A8();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_22E706BF8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22E6C9000, v5, v6, "copy PlayerItem with id %s", v7, 0xCu);
    sub_22E6CF2F4(v8);
    sub_22E6E3CE4();
    sub_22E6E3CE4();
  }

  v12 = type metadata accessor for PlayerItem();
  v13 = [v4 asset];
  v14 = *&v4[OBJC_IVAR____TtC10CloudAsset10PlayerItem_resourceLoaderDelegate];
  swift_getObjectType();
  swift_unknownObjectRetain();
  result = sub_22E71CD58(v13, v14);
  a1[3] = v12;
  *a1 = result;
  return result;
}

id PlayerItem.__allocating_init(asset:automaticallyLoadedAssetKeys:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [objc_allocWithZone(v3) initWithAsset:a1 automaticallyLoadedAssetKeys:v5.super.isa];

  return v6;
}

uint64_t sub_22E71CD20()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_22E71CD58(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for PlayerItem());

  return sub_22E71CDB4(a1, a2, v4);
}

id sub_22E71CDB4(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v7 + 32))(&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_id], v10, v6);
  *&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_resourceLoaderDelegate] = a2;
  v11 = type metadata accessor for PlayerItem();
  v28.receiver = a3;
  v28.super_class = v11;
  v12 = objc_msgSendSuper2(&v28, sel_initWithAsset_automaticallyLoadedAssetKeys_, a1, 0);
  v13 = qword_27DA6C480;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_22E6E3578(v15, qword_27DA6D870);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    (*(v7 + 16))(v10, v14 + OBJC_IVAR____TtC10CloudAsset10PlayerItem_id, v6);
    sub_22E71D1A8();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = sub_22E706BF8(v21, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_22E6C9000, v16, v17, "initialize PlayerItem with id %s", v19, 0xCu);
    sub_22E6CF2F4(v20);
    MEMORY[0x2318ED210](v20, -1, -1);
    MEMORY[0x2318ED210](v19, -1, -1);
  }

  else
  {
  }

  return v14;
}

uint64_t sub_22E71D088(uint64_t a1)
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
  v10[1] = sub_22E6D9C8C;

  return sub_22E71C600(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata accessor for PlayerItem()
{
  result = qword_281468810;
  if (!qword_281468810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22E71D1A8()
{
  result = qword_27DA6C948;
  if (!qword_27DA6C948)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C948);
  }

  return result;
}

uint64_t sub_22E71D208()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_22E71D2E0()
{

  return swift_once();
}

uint64_t AssetUploadRequest.id.getter()
{
  sub_22E6D9170();
  v0 = type metadata accessor for UUID();
  sub_22E6CF978(v0);
  v2 = *(v1 + 16);
  v3 = sub_22E6D368C();

  return v4(v3);
}

uint64_t AssetUploadRequest.tenantName.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetUploadRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_22E6D368C();
}

uint64_t type metadata accessor for AssetUploadRequest()
{
  result = qword_27DA6D8D0;
  if (!qword_27DA6D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetUploadRequest.tenantName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AssetUploadRequest() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AssetUploadRequest.tenantName.modify())()
{
  sub_22E6D3848();
  v0 = *(type metadata accessor for AssetUploadRequest() + 20);
  return nullsub_1;
}

uint64_t AssetUploadRequest.workingDirectory.getter()
{
  sub_22E6D9170();
  v0 = *(type metadata accessor for AssetUploadRequest() + 24);
  v1 = type metadata accessor for URL();
  sub_22E6CF978(v1);
  v3 = *(v2 + 16);
  v4 = sub_22E6EB498();

  return v5(v4);
}

uint64_t AssetUploadRequest.workingDirectory.setter()
{
  sub_22E6D3848();
  v2 = *(type metadata accessor for AssetUploadRequest() + 24);
  v3 = type metadata accessor for URL();
  sub_22E6CF978(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*AssetUploadRequest.workingDirectory.modify())()
{
  sub_22E6D3848();
  v0 = *(type metadata accessor for AssetUploadRequest() + 24);
  return nullsub_1;
}

uint64_t AssetUploadRequest.fileURL.getter()
{
  sub_22E6D9170();
  v0 = *(type metadata accessor for AssetUploadRequest() + 28);
  v1 = type metadata accessor for URL();
  sub_22E6CF978(v1);
  v3 = *(v2 + 16);
  v4 = sub_22E6EB498();

  return v5(v4);
}

uint64_t AssetUploadRequest.storageLocation.getter()
{
  sub_22E6D9170();
  v0 = *(type metadata accessor for AssetUploadRequest() + 32);
  v1 = type metadata accessor for URL();
  sub_22E6CF978(v1);
  v3 = *(v2 + 16);
  v4 = sub_22E6EB498();

  return v5(v4);
}

uint64_t AssetUploadRequest.protector.getter()
{
  sub_22E6D9170();
  v2 = (v1 + *(type metadata accessor for AssetUploadRequest() + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  sub_22E6CFB64(v3, v4);

  return sub_22E6CFB64(v5, v6);
}

uint64_t AssetUploadRequest.credential.getter()
{
  sub_22E6D9170();
  v2 = type metadata accessor for AssetUploadRequest();
  return sub_22E71ED30(v1 + *(v2 + 40), v0, type metadata accessor for Credential);
}

uint64_t AssetUploadRequest.init(fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  UUID.init()();
  v10 = type metadata accessor for AssetUploadRequest();
  v11 = (a5 + v10[5]);
  *v11 = 0x616C506572616853;
  v11[1] = 0xE900000000000079;
  v12 = a5 + v10[6];
  sub_22E6D8FE4(0x616C506572616853, 0xE900000000000079);
  v13 = v10[7];
  v14 = type metadata accessor for URL();
  sub_22E6CF978(v14);
  v16 = *(v15 + 32);
  v20 = a3[1];
  v21 = *a3;
  v16(a5 + v13, a1, v14);
  v16(a5 + v10[8], a2, v14);
  v17 = (a5 + v10[9]);
  *v17 = v21;
  v17[1] = v20;
  v18 = a5 + v10[10];

  return sub_22E71D840(a4, v18);
}

uint64_t sub_22E71D840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Credential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetUploadRequest.init(tenantName:fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  UUID.init()();
  v14 = type metadata accessor for AssetUploadRequest();
  v15 = (a7 + v14[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = v14[6];

  sub_22E6D8FE4(a1, a2);

  v17 = v14[7];
  v18 = type metadata accessor for URL();
  sub_22E6CF978(v18);
  v20 = *(v19 + 32);
  v24 = a5[1];
  v25 = *a5;
  v20(a7 + v17, a3, v18);
  v20(a7 + v14[8], a4, v18);
  v21 = (a7 + v14[9]);
  *v21 = v25;
  v21[1] = v24;
  v22 = a7 + v14[10];

  return sub_22E71D840(a6, v22);
}

uint64_t static AssetUploadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetUploadRequest();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[6]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[7]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[8]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = (a2 + v10);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v23 = v15[3];
  sub_22E6CFB64(v11, v12);
  sub_22E6CFB64(v13, v14);
  sub_22E6CFB64(v17, v16);
  sub_22E6CFB64(v18, v23);
  if ((MEMORY[0x2318EC160](v11, v12, v17, v16) & 1) == 0)
  {
    sub_22E6CFBBC(v17, v16);
    sub_22E6CFBBC(v18, v23);
    sub_22E6CFBBC(v11, v12);
    sub_22E6CFBBC(v13, v14);
    return 0;
  }

  v22 = MEMORY[0x2318EC160](v13, v14, v18, v23);
  sub_22E6CFBBC(v17, v16);
  sub_22E6CFBBC(v18, v23);
  sub_22E6CFBBC(v11, v12);
  sub_22E6CFBBC(v13, v14);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v19 = sub_22E6D919C(v4[10]);

  return static Credential.== infix(_:_:)(v19, v20);
}

uint64_t sub_22E71DBC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022E72CC60 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C656761726F7473 && a2 == 0xEF6E6F697461636FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F746365746F7270 && a2 == 0xE900000000000072;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22E71DE18(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x4C5255656C6966;
      break;
    case 4:
      result = 0x4C656761726F7473;
      break;
    case 5:
      result = 0x6F746365746F7270;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E71DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E71DBC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E71DF28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E71DE10();
  *a1 = result;
  return result;
}

uint64_t sub_22E71DF50(uint64_t a1)
{
  v2 = sub_22E71E2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E71DF8C(uint64_t a1)
{
  v2 = sub_22E71E2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6D890, &qword_22E72C0D0);
  v6 = sub_22E6CF988(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v35 - v11;
  v13 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E71E2C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35) = 0;
  type metadata accessor for UUID();
  sub_22E71F328();
  sub_22E71EF04(v14, v15);
  sub_22E6E3ED4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for AssetUploadRequest();
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v35) = 1;
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v16[6];
    LOBYTE(v35) = 2;
    type metadata accessor for URL();
    sub_22E71F310();
    sub_22E71EF04(v21, v22);
    sub_22E71F350();
    v23 = v16[7];
    LOBYTE(v35) = 3;
    sub_22E71F350();
    v24 = v16[8];
    LOBYTE(v35) = 4;
    sub_22E71F350();
    v25 = (v3 + v16[9]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v35 = *v25;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = 5;
    sub_22E6CFB64(v35, v26);
    sub_22E6CFB64(v27, v28);
    sub_22E71E31C();
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v37;
    v30 = v38;
    sub_22E6CFBBC(v35, v36);
    sub_22E6CFBBC(v29, v30);
    v31 = v16[10];
    LOBYTE(v35) = 6;
    type metadata accessor for Credential(0);
    sub_22E71F378();
    sub_22E71EF04(v32, v33);
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_22E71E2C8()
{
  result = qword_27DA6D898;
  if (!qword_27DA6D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D898);
  }

  return result;
}

unint64_t sub_22E71E31C()
{
  result = qword_27DA6D8A0;
  if (!qword_27DA6D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8A0);
  }

  return result;
}

uint64_t AssetUploadRequest.hash(into:)()
{
  v1 = v0;
  sub_22E6D3848();
  type metadata accessor for UUID();
  sub_22E71F328();
  sub_22E71EF04(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for AssetUploadRequest();
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  v8 = v4[6];
  type metadata accessor for URL();
  sub_22E71F310();
  sub_22E71EF04(v9, v10);
  sub_22E71F3C0();
  v11 = v1 + v4[7];
  sub_22E71F3C0();
  v12 = v1 + v4[8];
  sub_22E71F3C0();
  v13 = (v1 + v4[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  Data.hash(into:)();
  sub_22E6D368C();
  Data.hash(into:)();
  v18 = (v1 + v4[10]);
  v19 = *v18;
  v20 = v18[1];
  String.hash(into:)();
  v21 = v18[2];
  v22 = v18[3];
  String.hash(into:)();
  v23 = v18[4];
  v24 = v18[5];
  String.hash(into:)();
  LODWORD(v4) = *(type metadata accessor for Credential(0) + 28);
  type metadata accessor for Date();
  sub_22E71EF04(&qword_27DA6C768, MEMORY[0x277CC9578]);
  return dispatch thunk of Hashable.hash(into:)();
}