id sub_18E158B44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_18E1A7500();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithSuiteName_];

  return v4;
}

uint64_t sub_18E158BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v5 = sub_18E1A7530();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return a4(v5, v6);
}

id NSUserDefaults.Global.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_18E1A7500();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithSuiteName_, v5);

  if (v6)
  {
  }

  return v6;
}

void *sub_18E158E00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t NSUserDefaults.Global.object(forKey:)@<X0>(void *a1@<X8>)
{
  v2 = sub_18E1A7500();
  v3 = CFPreferencesCopyValue(v2, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  if (v3)
  {
    result = swift_getObjectType();
  }

  else
  {
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_18E158EC4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_18E158F10(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E158F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E158FE8()
{

  return sub_18E1A7A80();
}

void sub_18E1590E4()
{

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E1590FC()
{

  return swift_once();
}

uint64_t sub_18E15914C(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  sub_18E158EC4(v2);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_18E159194(uint64_t a1)
{
  *(a1 + 8) = sub_18E17F75C;
  v2 = *(v1 + 488);
  return v1 + 368;
}

uint64_t sub_18E1591C0()
{

  return swift_once();
}

uint64_t sub_18E15921C@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_18E1A7AB0();
}

uint64_t sub_18E159288()
{
  result = v0;
  v3 = *(v1 - 256);
  v4 = *(v1 - 264);
  v5 = *(v1 - 280);
  return result;
}

uint64_t sub_18E1592B8()
{

  return sub_18E1A7A80();
}

uint64_t sub_18E1592FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18E159348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_18E18CC14(a1, va, v11, v12);
}

uint64_t sub_18E159364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18E159728(a3, a4);
  sub_18E15911C(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_18E161880(&qword_1EABD05A8, &qword_18E1AA660);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_18E159728(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_18E1598E0(v16, a3, a4, a1, a2, v21);
  }
}

uint64_t sub_18E1594AC()
{

  return swift_once();
}

uint64_t sub_18E1594CC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_18E159534()
{

  return swift_once();
}

uint64_t sub_18E159554()
{

  return swift_once();
}

uint64_t sub_18E1595D0(uint64_t a1)
{
  *(a1 + 8) = sub_18E17FB50;
  v2 = *(v1 + 488);
  return v1 + 240;
}

uint64_t sub_18E159668()
{

  return swift_beginAccess();
}

uint64_t sub_18E159688()
{

  return sub_18E1A7B90();
}

void sub_18E1596A4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_18E1596B4()
{

  return swift_once();
}

uint64_t sub_18E159704(uint64_t a1)
{

  return MEMORY[0x1EEE6BE20](v1, a1, 0, 0, 0);
}

unint64_t sub_18E159728(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_18E1A7C60();
  sub_18E15A84C();
  sub_18E1A75C0();
  v6 = sub_18E1A7CA0();

  return sub_18E15979C(a1, a2, v6);
}

unint64_t sub_18E15979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18E1A7B90() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_18E159850()
{

  JUMPOUT(0x193ACB8D0);
}

void *sub_18E159880@<X0>(char a1@<W8>, uint64_t a2)
{
  *(v2 + 16) = a1;

  return memcpy((v2 + 17), &a2, 0x67uLL);
}

unint64_t sub_18E1598E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_18E15992C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *StringRenderedPromptSanitizer.init(overrides:guardrails:)@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = memcpy(__dst, a2, sizeof(__dst));
  LOBYTE(v32) = v6;
  sub_18E15BFA0(v7, v8, v9, v10, v11, v12, v13, v14, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, __dst[0]);
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v15 = sub_18E15A434();
  sub_18E15A8DC(v15);
  type metadata accessor for ModelManagerSessionWrapper();
  v16 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v17 = sub_18E15A434();
  *(v16 + 16) = sub_18E15B9EC(v17);
  *a3 = v4;
  a3[1] = v5;
  result = sub_18E159880(v33, v20);
  a3[15] = v6;
  a3[16] = v16;
  return result;
}

{
  v6 = *a1;
  v7 = a1[1];
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  v8 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v9 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v10 = sub_18E15A434();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(v8 + 16) = v10;
  *(v3 + 16) = v8;
  type metadata accessor for ModelManagerSessionWrapper();
  v11 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v12 = sub_18E15A434();
  *(v11 + 16) = sub_18E15B9EC(v12);
  v13 = memcpy(__dst, a2, sizeof(__dst));
  LOBYTE(v35) = v7 != 1;
  sub_18E15BFA0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, __dst[0]);
  *a3 = v6;
  a3[1] = v7;
  result = sub_18E159880(v36, v23);
  a3[15] = v3;
  a3[16] = v11;
  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v13 = 1;
  memcpy(v12 + 7, a2, 0x60uLL);
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v7 = sub_18E15A434();
  sub_18E15A8DC(v7);
  type metadata accessor for ModelManagerSessionWrapper();
  v8 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v9 = sub_18E15A434();
  *(v8 + 16) = sub_18E15B9EC(v9);
  v10 = v13;
  *a3 = v5;
  a3[1] = v6;
  result = sub_18E159880(v10, v12[0]);
  a3[15] = v3;
  a3[16] = v8;
  return result;
}

uint64_t sub_18E159AD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E159AF4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E159B18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_18E159B58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18E159B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.guardrails.getter@<X0>(void *a1@<X8>)
{
  sub_18E18DFD8();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 24), 0x60uLL);
  return sub_18E18CC14(v8, &v7, &qword_1EABD0E08, &qword_18E1AD4E8);
}

uint64_t sub_18E159C7C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t StringRenderedPromptSanitizer.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_18E159D24();
}

uint64_t StringRenderedPromptSanitizerRunnerConfiguration.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_18E159D28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_18E159D3C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StringResponseSanitizer.init(overrides:guardrails:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *a2;
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E15BAE0();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v9 = sub_18E15A434();
  sub_18E15A8DC(v9);
  type metadata accessor for ModelManagerSessionWrapper();
  v10 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v11 = sub_18E15A434();
  result = sub_18E15D564(v11);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v3;
  *(a3 + 40) = v10;
  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E15BAE0();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v8 = sub_18E15A434();
  sub_18E15A8DC(v8);
  type metadata accessor for ModelManagerSessionWrapper();
  v9 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v10 = sub_18E15A434();
  result = sub_18E15D564(v10);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v6 != 1;
  *(a3 + 24) = v7;
  *(a3 + 32) = v3;
  *(a3 + 40) = v9;
  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E15BAE0();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v8 = sub_18E15A434();
  sub_18E15A8DC(v8);
  type metadata accessor for ModelManagerSessionWrapper();
  v9 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v10 = sub_18E15A434();
  result = sub_18E15D564(v10);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = 1;
  *(a3 + 24) = v7;
  *(a3 + 32) = v3;
  *(a3 + 40) = v9;
  return result;
}

void sub_18E159EE4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_18E159F00()
{

  return sub_18E1A7C60();
}

void *sub_18E159F18()
{

  return memcpy((v1 + 8), (v0 + 8), 0x58uLL);
}

void sub_18E159F68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_18E15A008(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD8](v1, a1, 24, 7);
}

uint64_t sub_18E15A028(uint64_t a1, uint64_t a2)
{
  v5 = *(v4 - 120);
  v6 = *(v4 - 112);
  v7 = *(v4 - 128);
  *v3 = a1;
  v3[1] = a2;
  *(v4 - 96) = v2;
  return v4 - 96;
}

uint64_t sub_18E15A048(uint64_t a1)
{
  result = sub_18E15D690(v1, 1, a1);
  v4 = *(v2 + 16);
  return result;
}

void sub_18E15A074(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_18E15A094(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x193ACB0A0);
}

uint64_t sub_18E15A124()
{

  return sub_18E1A7B90();
}

unint64_t sub_18E15A160()
{
  result = qword_1ED8D9F00[0];
  if (!qword_1ED8D9F00[0])
  {
    sub_18E169A64(&qword_1EABD0988, &unk_18E1AB600);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D9F00);
  }

  return result;
}

uint64_t sub_18E15A1C4()
{

  return sub_18E1A7C80();
}

uint64_t sub_18E15A1F8()
{

  return type metadata accessor for KeychainStore();
}

__n128 sub_18E15A240()
{
  v2 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 272) = result;
  *(v1 - 256) = v4;
  return result;
}

void sub_18E15A2C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_18E15A344()
{
  *(v2 - 208) = v1;
  *(v2 - 200) = v0;
  sub_18E177BE0((v2 - 240), (v2 - 192));
}

uint64_t sub_18E15A38C(unint64_t *a1)
{

  return sub_18E194920(a1, v1, v2);
}

uint64_t sub_18E15A3DC(uint64_t a1, uint64_t a2)
{
  sub_18E1592FC(v2, a2);

  return swift_beginAccess();
}

_OWORD *sub_18E15A414()
{
  *(v0 + 584) = *(v0 + 16);

  return sub_18E177BE0((v0 + 32), (v0 + 336));
}

uint64_t sub_18E15A434()
{

  return swift_allocObject();
}

uint64_t sub_18E15A45C()
{

  return sub_18E1A7A30();
}

uint64_t sub_18E15A47C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_18E194920(a1, a2, a3);
}

uint64_t sub_18E15A4A0()
{

  return swift_allocObject();
}

uint64_t static ModelBundleInfoForSanitizer.none.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E1A6D10();

  return sub_18E159EBC(a1, 1, 1, v2);
}

uint64_t type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration()
{
  result = qword_1ED8DA168;
  if (!qword_1ED8DA168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E15A594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleInfoForSanitizer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ModelBundleInfoForSanitizer()
{
  result = qword_1ED8D9D00;
  if (!qword_1ED8D9D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E15A650(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E15A674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1A7360();
  v6 = sub_18E1592FC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t CachedSafetyModelsWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_18E15959C();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_18E15A784()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ModelManagerSessionWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = sub_18E1595A8();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_18E15A7EC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_18E15A824(uint64_t a1, uint64_t a2)
{
  sub_18E1592FC(a1, a2);

  return sub_18E1A7340();
}

uint64_t sub_18E15A858()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v5 = *(v0[21] + 8);
  return v0[23];
}

__n128 sub_18E15A874()
{
  result = *(v0 + 112);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 152);
  v5 = *(v0 + 168);
  v6 = *(v0 + 184);
  v7 = *(v0 + 200);
  v8 = *(v0 + 216);
  return result;
}

uint64_t sub_18E15A8BC@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_18E15A8DC(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = v3;
  *(v2 + 16) = result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_18E15A908(uint64_t a1)
{

  return sub_18E16D540(a1, v1, v2);
}

uint64_t sub_18E15A964(uint64_t a1, unsigned int a2)
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

uint64_t sub_18E15A9DC()
{

  return swift_once();
}

BOOL sub_18E15AA20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_18E15AA3C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_18E15AAC8()
{

  return sub_18E1A75C0();
}

uint64_t sub_18E15AAEC@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;

  return swift_beginAccess();
}

uint64_t sub_18E15AB10@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return a4;
}

uint64_t sub_18E15AB3C()
{

  return sub_18E1A79F0();
}

uint64_t sub_18E15ABA8()
{

  return sub_18E1A7B30();
}

__n128 sub_18E15ABD4()
{
  v2 = *(v0 + 32);
  *(v1 + 136) = *(v0 + 16);
  *(v1 + 152) = v2;
  result = *(v0 + 48);
  *(v1 + 168) = result;
  return result;
}

uint64_t sub_18E15AC04(uint64_t a1)
{

  return sub_18E16D540(a1, v1, v2);
}

uint64_t sub_18E15AC1C()
{

  return sub_18E1A7C60();
}

__n128 sub_18E15AC3C()
{
  v1 = *(v0 - 192);
  *(v0 - 160) = *(v0 - 208);
  *(v0 - 144) = v1;
  result = *(v0 - 176);
  *(v0 - 128) = result;
  v3 = *(v0 - 152);
  return result;
}

uint64_t sub_18E15AC54()
{

  return swift_arrayInitWithCopy();
}

uint64_t StringResponseSanitizerRunnerConfiguration.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for StringResponseSanitizerRunnerConfiguration(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StringResponseSanitizer.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_18E159D24();
}

uint64_t sub_18E15AD20(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_18E15A8BC(*(a1 + 32));
  }

  type metadata accessor for StringResponseSanitizerRunnerConfiguration(0);
  v3 = sub_18E15AA9C();

  return sub_18E15D690(v3, v4, v5);
}

void sub_18E15ADAC()
{
  sub_18E15DA2C();
  if (v2)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    type metadata accessor for StringResponseSanitizerRunnerConfiguration(0);
    v3 = sub_18E15AA9C();

    sub_18E159EBC(v3, v4, v0, v5);
  }
}

uint64_t StringResponseSanitizerWithConfiguration.scrub(_:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return sub_18E159130();
}

BOOL sub_18E15AE7C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_18E15AE98()
{
  v2 = *(v0 - 288);

  return sub_18E1A79F0();
}

uint64_t sub_18E15AEBC()
{

  return sub_18E1A78A0();
}

void sub_18E15AF4C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_18E16BF8C();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_18E15AF90(char a1)
{
  if (a1)
  {
    return 0x4474756F68746977;
  }

  else
  {
    return 0x6166654468746977;
  }
}

uint64_t sub_18E15AFE8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v17 = v1[6];
  v12 = v1[7];
  v14 = *(v0 + 104);
  v16 = *(type metadata accessor for StringResponseSanitizerWithConfiguration(0) + 20);
  sub_18E159D24(v3);

  *(v0 + 80) = v2;
  *(v0 + 88) = v14;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  v13 = (*(v12 + 8) + 40);
  v15 = (*v13 + **v13);
  v9 = (*v13)[1];
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_18E15EF2C;

  return v15(v0 + 64, v0 + 80, v1 + v16, v0 + 16);
}

void StringResponseSanitizer.DefaultableOverrides.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v37 = v4;
  v5 = sub_18E161880(&qword_1EABD0FA0, &qword_18E1AE9D8);
  sub_18E159050(v5);
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E15A114();
  v10 = sub_18E161880(&qword_1EABD0FA8, &qword_18E1AE9E0);
  sub_18E159050(v10);
  v12 = *(v11 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_18E159FE0();
  v15 = sub_18E161880(&qword_1EABD0FB0, &unk_18E1AE9E8);
  sub_18E159050(v15);
  v36 = v16;
  v18 = *(v17 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_18E15D458();
  v21 = v3[4];
  sub_18E159D90(v3, v3[3]);
  sub_18E15C068();
  sub_18E15D900();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_7;
  }

  v39 = v3;
  sub_18E192214();
  v22 = sub_18E1A7AA0();
  v26 = sub_18E15AF14(v22, 0);
  if (v24 == v25 >> 1)
  {
LABEL_6:
    v28 = sub_18E1A78C0();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v30 = &type metadata for StringResponseSanitizer.DefaultableOverrides;
    sub_18E192214();
    sub_18E1A7A00();
    sub_18E15AEBC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v1, v15);
    v3 = v39;
LABEL_7:
    sub_18E158EC4(v3);
    goto LABEL_8;
  }

  if (v24 < (v25 >> 1))
  {
    v27 = sub_18E15C52C(v24, v23);
    sub_18E15AF84(v27);
    sub_18E19222C();
    if (!(v26 >> 1))
    {
      LOBYTE(v38) = 1;
      sub_18E191214();
      sub_18E15D5E8();
      sub_18E1A79F0();
      sub_18E15BAF8();
      sub_18E15A45C();
      sub_18E15B9F8();
      swift_unknownObjectRelease();
      v32 = sub_18E1921E0();
      v33(v32);
      v34 = sub_18E15C598();
      v35(v34);
      *v37 = v38;
      *(v37 + 16) = v3;
      sub_18E158EC4(v3);
LABEL_8:
      sub_18E15A29C();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

void StringResponseSanitizer.Overrides.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD0F68, &qword_18E1AE9A8);
  sub_18E159050(v5);
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E15D458();
  v10 = v2[4];
  sub_18E159D90(v2, v2[3]);
  sub_18E15BA04();
  sub_18E15D900();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v0)
  {
    sub_18E15BD24();
    sub_18E15D5E8();
    sub_18E1A7A30();
    v11 = sub_18E15C048();
    v12(v11);
    *v4 = v13;
  }

  sub_18E158EC4(v2);
  sub_18E15A29C();
}

void sub_18E15B7A0()
{

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E15B7BC()
{

  return swift_allocError();
}

uint64_t sub_18E15B7D4()
{
  sub_18E159EBC(v0, 0, 1, v1);

  return MEMORY[0x1EEE0A328](0);
}

uint64_t sub_18E15B80C()
{

  return swift_allocObject();
}

uint64_t sub_18E15B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E15B908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E15B8D0()
{

  return swift_slowAlloc();
}

uint64_t sub_18E15B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_18E18CC14(a1, va, v13, v14);
}

uint64_t sub_18E15B908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6166654468746977 && a2 == 0xEB00000000746C75;
  if (v4 || (sub_18E15A124() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4474756F68746977 && a2 == 0xEE00746C75616665)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E15A124();

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

uint64_t sub_18E15B9CC()
{

  return sub_18E1A78A0();
}

uint64_t sub_18E15B9EC(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

unint64_t sub_18E15BA04()
{
  result = qword_1EABD00F8;
  if (!qword_1EABD00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00F8);
  }

  return result;
}

uint64_t sub_18E15BA58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18E15BAE0()
{

  return sub_18E1A7490();
}

unint64_t sub_18E15BAF8()
{
  result = qword_1EABCFE00;
  if (!qword_1EABCFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE00);
  }

  return result;
}

_BYTE *sub_18E15BB7C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x18E15BC48);
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

void sub_18E15BC70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_18E15BC90()
{

  return swift_beginAccess();
}

uint64_t sub_18E15BCEC()
{

  return swift_slowAlloc();
}

unint64_t sub_18E15BD24()
{
  result = qword_1EABCFE48;
  if (!qword_1EABCFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE48);
  }

  return result;
}

unint64_t sub_18E15BD78()
{
  result = qword_1EABD0100;
  if (!qword_1EABD0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0100);
  }

  return result;
}

unint64_t sub_18E15BDCC()
{
  result = qword_1EABD01A8;
  if (!qword_1EABD01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadDataResponse.DataCodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_18E15BE70(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18E15BF0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E15BF34()
{
  result = qword_1EABD0208;
  if (!qword_1EABD0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0208);
  }

  return result;
}

uint64_t sub_18E15BF88()
{

  return swift_slowAlloc();
}

void *sub_18E15BFA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __src)
{

  return memcpy(&a9 + 7, &__src, 0x60uLL);
}

uint64_t getEnumTagSinglePayload for AccessGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18E15C068()
{
  result = qword_1EABD0220;
  if (!qword_1EABD0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0220);
  }

  return result;
}

uint64_t sub_18E15C124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v25 = a5;
  v8 = sub_18E161880(a2, a3);
  v9 = sub_18E159050(v8);
  v24 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  v15 = &v23 - v14;
  v16 = a1[4];
  sub_18E158E00(a1, a1[3]);
  a4();
  sub_18E1A7CC0();
  if (!v5)
  {
    v17 = v24;
    v18 = v25;
    v19 = sub_18E1A7A50();
    v21 = v20;
    (*(v17 + 8))(v15, v8);
    *v18 = v19;
    v18[1] = v21;
  }

  return sub_18E158EC4(a1);
}

unint64_t sub_18E15C2AC()
{
  result = qword_1EABD0108;
  if (!qword_1EABD0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0108);
  }

  return result;
}

unint64_t sub_18E15C304()
{
  result = qword_1EABD0110;
  if (!qword_1EABD0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0110);
  }

  return result;
}

unint64_t sub_18E15C358()
{
  result = qword_1EABD0118;
  if (!qword_1EABD0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0118);
  }

  return result;
}

_BYTE *sub_18E15C3D4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18E15C470);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E15C4A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_18E15C4DC()
{
  v2 = v0[4].opaque[1];
  v4 = v0[3].opaque[0];
  v3 = v0[3].opaque[1];
  v5 = v0[2].opaque[1];

  os_activity_scope_leave(v0 + 1);
}

uint64_t sub_18E15C500()
{
  v2 = *(v0 - 184);

  return sub_18E1A79F0();
}

void sub_18E15C578()
{
  v1[1].opaque[1] = 0;
  v1[1].opaque[0] = 0;

  os_activity_scope_enter(v0, v1 + 1);
}

__n128 sub_18E15C5B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t ModelBundleInfoForSanitizer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = sub_18E161880(&qword_1EABD0AA8, &qword_18E1ABD50);
  v10 = sub_18E159050(v9);
  v27 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for ModelBundleInfoForSanitizer();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E15C810();
  sub_18E1A7CC0();
  if (!v2)
  {
    v23 = v26;
    sub_18E1A6D10();
    sub_18E15C864(&qword_1EABCFE70);
    sub_18E1A7A30();
    (*(v27 + 8))(v16, v9);
    sub_18E15C990(v8, v21);
    sub_18E15A594(v21, v23);
  }

  return sub_18E158EC4(a1);
}

unint64_t sub_18E15C810()
{
  result = qword_1ED8D96F8;
  if (!qword_1ED8D96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96F8);
  }

  return result;
}

uint64_t sub_18E15C864(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18E1A6D10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelBundleInfoForSanitizer.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18E15C968);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E15C990(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E15CA18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

__n128 sub_18E15CA58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t InputDenyListBundle.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_18E15CAB0()
{

  return sub_18E1A7B30();
}

uint64_t DenyListUtility.DenyList.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18E161880(&qword_1EABD1260, &qword_18E1B04C8);
  v6 = sub_18E159050(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E15CF68();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E161880(&qword_1EABD08A0, &qword_18E1AB268);
  sub_18E15CFBC(&qword_1EABCFFE0);
  sub_18E159644();
  sub_18E1A7A80();
  sub_18E159644();
  sub_18E1A7A30();
  v12 = v17;
  if (!v17)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v16 = v12;
  sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
  sub_18E15D3CC(&qword_1ED8D9968);
  sub_18E1A7A30();
  if (v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = sub_18E1A7490();
  }

  sub_18E159644();
  sub_18E1A7A30();
  sub_18E159644();
  sub_18E1A7A30();
  sub_18E1A7A30();
  v13 = sub_18E15D7C0();
  v14(v13);
  *a2 = v17;
  a2[1] = v16;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = v17;
  a2[5] = v17;

  sub_18E158EC4(a1);
}

unint64_t sub_18E15CF68()
{
  result = qword_1EABD0080;
  if (!qword_1EABD0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0080);
  }

  return result;
}

uint64_t sub_18E15CFBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD08A0, &qword_18E1AB268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E15D028(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void sub_18E15D048(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_18E15D068()
{
  *(v1 - 96) = *(v1 - 112);
  *(v1 - 65) = v0;
  return v1 - 65;
}

_OWORD *sub_18E15D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *(v20 - 72) = v17;

  return sub_18E177BF0(&a17, v18, v19);
}

uint64_t sub_18E15D0C0()
{

  return swift_once();
}

uint64_t sub_18E15D178(char a1)
{
  result = 0x7463656A6572;
  switch(a1)
  {
    case 1:
      result = 0x65766F6D6572;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x6A65527865676572;
      break;
    case 4:
      result = 0x6D65527865676572;
      break;
    case 5:
      result = 0x7065527865676572;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DenyListUtility.DenyList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x18E15D31CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DenyListUtility.DenyList.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18E15D3CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD1258, &qword_18E1B04C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E15D438()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_18E1A7AD0();
}

void sub_18E15D484(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_18E15D4A4()
{

  return swift_getWitnessTable();
}

uint64_t sub_18E15D4EC()
{

  return swift_allocObject();
}

void *sub_18E15D50C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char __src)
{
  v31 = (*(v28 + 56) + 464 * v29);

  return memcpy(v31, &__src, 0x1D0uLL);
}

uint64_t sub_18E15D530()
{
  v2 = *(v0 - 96);

  return sub_18E1A7AD0();
}

uint64_t sub_18E15D564(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v1 + 16) = result;
  return result;
}

unint64_t sub_18E15D574()
{
  result = qword_1EABCFFE8[0];
  if (!qword_1EABCFFE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EABCFFE8);
  }

  return result;
}

uint64_t sub_18E15D5F4()
{
  v2 = *(v0 - 152);

  return sub_18E1A79F0();
}

double sub_18E15D628()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[4] = 0u;
  return result;
}

void *sub_18E15D660(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __src)
{
  v28 = (*(v25 + 56) + 464 * v26);

  return memcpy(v28, &__src, 0x1D0uLL);
}

uint64_t sub_18E15D6B8()
{

  return swift_once();
}

uint64_t sub_18E15D6FC()
{

  return sub_18E1A7A80();
}

uint64_t sub_18E15D71C()
{

  return swift_once();
}

uint64_t sub_18E15D73C(uint64_t a1)
{

  return sub_18E159EBC(v1, 1, 1, a1);
}

uint64_t sub_18E15D75C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_18E15D768(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_18E15D7D0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 | (a1 << 6);
  v5 = *(v2 - 288);
  v6 = (*(v5 + 48) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v5 + 56) + 32 * v4;

  return sub_18E16BBD0(v9, v2 - 240);
}

uint64_t sub_18E15D810()
{

  return sub_18E1A7B30();
}

void *sub_18E15D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{

  return memcpy(&a58, (v58 + 8), 0x58uLL);
}

__n128 sub_18E15D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, char a14, uint64_t a15, __n128 a16)
{
  *v16 = a13;
  *(v16 + 16) = a14;
  *(v16 + 24) = a15;
  result = a16;
  *(v16 + 32) = a16;
  return result;
}

uint64_t sub_18E15D8CC()
{
  v2 = *(v0 - 240);

  return sub_18E1A79F0();
}

uint64_t sub_18E15D8E8()
{

  return swift_beginAccess();
}

uint64_t sub_18E15D90C()
{
  v2 = *(v0 - 88);

  return sub_18E1A7CC0();
}

uint64_t sub_18E15D944()
{

  return sub_18E1A79F0();
}

uint64_t sub_18E15D968()
{

  return swift_beginAccess();
}

void sub_18E15D9B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

__n128 sub_18E15D9E4()
{
  *(v0 + 560) = v1;
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  result = *(v0 + 96);
  *(v0 + 48) = result;
  *(v0 + 576) = *(v0 + 24);
  return result;
}

uint64_t sub_18E15DA04(unint64_t *a1)
{

  return sub_18E182094(a1, v1);
}

void sub_18E15DA9C()
{
  sub_18E158EC4(v0);

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E15DB14()
{

  return swift_slowAlloc();
}

uint64_t sub_18E15DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_18E18CC14(a1, va, v13, v14);
}

uint64_t sub_18E15DB4C()
{

  return swift_beginAccess();
}

uint64_t sub_18E15DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_18E18CB80(&STACK[0x308], &a69);
}

uint64_t sub_18E15DB80(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v2 = v1;

  return sub_18E1A7A00();
}

uint64_t sub_18E15DBB0()
{

  return sub_18E1A7B30();
}

uint64_t sub_18E15DBF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18E15DC38()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_18E15DD2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_18E15DD7C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 40);
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](*a1);
  sub_18E1A7830();
  v8 = sub_18E1A7CA0();
  return sub_18E15DE64(a1, v8, a2, a3);
}

uint64_t SensitiveContentSettings.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193ACB0A0](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x193ACB0A0](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_18E15DE64(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = a1 + 1;
    v11 = *a1;
    do
    {
      sub_18E15DF6C(*(v4 + 48) + 48 * v6, &v20, a3, a4);
      if (v20 == v11)
      {
        v15 = MEMORY[0x193ACAC50](&v21, v10);
        sub_18E15A84C();
        sub_18E178150(v16, v17, v18);
        if (v15)
        {
          return v6;
        }
      }

      else
      {
        sub_18E15A84C();
        sub_18E178150(v12, v13, v14);
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_18E15DF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18E161880(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_18E15DFE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E15E054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  if (*(*a1 + 16) && (v9 = sub_18E15DD68(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    type metadata accessor for ModelCache.ModelHolder();
    *a3 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    if (qword_1ED8D94C8 != -1)
    {
      swift_once();
    }

    v13 = sub_18E1A7360();
    sub_18E1592FC(v13, qword_1ED8D94D0);
    v14 = sub_18E1A7340();
    v15 = sub_18E1A7700();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v16 = 136315138;
      v17 = sub_18E1A7D10();
      v19 = sub_18E1694A4(v17, v18, &v23);

      *(v16 + 4) = v19;
      v4 = v3;
      _os_log_impl(&dword_18E157000, v14, v15, "Model Caching - %s does not exist, creating new model holder", v16, 0xCu);
      sub_18E158EC4(v22);
      MEMORY[0x193ACB8D0](v22, -1, -1);
      MEMORY[0x193ACB8D0](v16, -1, -1);
    }

    type metadata accessor for ModelCache.ModelHolder();
    result = sub_18E17C698();
    if (!v4)
    {
      v20 = result;

      v21 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v23 = *a1;
      result = sub_18E177F28(v20, a2);
      *a1 = v23;
      *a3 = v20;
    }
  }

  return result;
}

void sub_18E15E2FC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v6 = *(v2 + 88);
  v7 = a1;
  type metadata accessor for GMFWeakReference();
  v4 = sub_18E1A77A0();
  sub_18E15E7F4(sub_18E15E74C, &v5, v3, v4, v6);
}

uint64_t ModelCache.getModel<A>(modelType:modelConfiguration:prewarm:keepAlive:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v34 = a4;
  v35 = a5;
  v45 = a3;
  v14 = sub_18E161880(&qword_1EABD0AB8, &qword_18E1ABEF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v33 - v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_18E1A79D0();
  type metadata accessor for ModelCache.ModelHolderBase();
  v44[0] = a1;
  v19 = *(v9 + 16);
  v37 = a6;
  v38 = a7;
  v39 = v44;
  v40 = a1;
  v20 = sub_18E161880(&qword_1EABD0AC0, &qword_18E1ABEF8);
  v21 = type metadata accessor for ModelCache.ModelHolder();
  sub_18E15E7F4(sub_18E17CE20, v36, v19, v20, v21);
  if (!v8)
  {
    v22 = v45;
    v33[2] = a1;
    v33[3] = v9;
    v23 = v41;
    sub_18E15E2FC(a2);
    v20 = v24;
    v33[1] = v23;
    if (v22)
    {
      sub_18E1A76B0();
      v26 = sub_18E1A76D0();
      sub_18E159EBC(v18, 0, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = a6;
      v27[5] = a7;
      v27[6] = v20;
      swift_unknownObjectRetain();
      sub_18E17CEEC(0, 0, v18, &unk_18E1ABF10, v27);
    }

    v29 = v34;
    v28 = v35;
    if (sub_18E1A7CE0())
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_18E1A7870();

      v41 = 0xD000000000000015;
      v42 = 0x800000018E1B27B0;
      (*(a7 + 40))(a6, a7);
      v30 = sub_18E1A7880();
      MEMORY[0x193ACAA20](v30);

      v32 = v41;
      v31 = v42;
      v43 = a6;
      v41 = v20;
      swift_unknownObjectRetain();
      sub_18E17D17C(v32, v31, v29, v28, &v41);

      sub_18E158EC4(&v41);
    }

    else
    {
    }
  }

  sub_18E178150(v44, &qword_1EABD0980, &qword_18E1ABF00);
  return v20;
}

uint64_t sub_18E15E70C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_18E15E76C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_18E15E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v65 = a2;
  v57 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v63 = AssociatedTypeWitness;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v61 = &v54 - v13;
  v14 = sub_18E1A72B0();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v54 - v20;
  v22 = sub_18E1A7360();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_18E1A72E0();
  v66 = *(v28 - 8);
  v67 = v28;
  v29 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v28, v30);
  v64 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    goto LABEL_4;
  }

  v32 = type metadata accessor for GMFWeakReference();
  v55 = v21;
  v56 = a3;
  v33 = v32;
  v34 = *(v32 - 8);
  (*(v34 + 16))(v68, a1, v32);
  sub_18E15EE30(v33, &v69);
  v35 = v33;
  v21 = v55;
  result = (*(v34 + 8))(v68, v35);
  v6 = v5;
  a3 = v56;
  if (!v69)
  {
LABEL_4:
    v54 = a1;
    if (qword_1ED8DA268 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1592FC(v22, qword_1ED8DA270);
    (*(v23 + 16))(v27, v37, v22);
    v38 = v64;
    sub_18E1A72C0();
    sub_18E1A72D0();
    sub_18E1A7290();
    v39 = sub_18E1A72D0();
    v40 = sub_18E1A7750();
    v41 = v21;
    if (sub_18E1A7780())
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_18E1A72A0();
      _os_signpost_emit_with_name_impl(&dword_18E157000, v39, v40, v43, "ModelCache.ModelLoad", "", v42, 2u);
      MEMORY[0x193ACB8D0](v42, -1, -1);
    }

    v44 = v59;
    v45 = v60;
    (*(v59 + 16))(v58, v41, v60);
    v46 = sub_18E1A7320();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_18E1A7310();
    (*(v44 + 8))(v41, v45);
    v50 = v61;
    (*(v62 + 16))(v61, v65, v63);
    v51 = (*(a4 + 32))(v50, a3, a4);
    if (!v6)
    {
      v52 = v51;
      v69 = v51;
      swift_unknownObjectRetain();
      sub_18E17CB10(&v69);
      v68[8] = 0;
      type metadata accessor for GMFWeakReference();
      v53 = sub_18E1A77A0();
      (*(*(v53 - 8) + 40))(v54, v68, v53);
      *v57 = v52;
    }

    sub_18E17C748(v38, "ModelCache.ModelLoad", 20, 2, v49, a3, a4);

    return (*(v66 + 8))(v38, v67);
  }

  else
  {
    *v57 = v69;
  }

  return result;
}

uint64_t sub_18E15EE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakLoadStrong();
  sub_18E161880(&qword_1EABD0AD0, &qword_18E1AC158);
  v4 = *(a1 + 16);
  v5 = swift_dynamicCast();
  return sub_18E159EBC(a2, v5 ^ 1u, 1, v4);
}

uint64_t FailureTrackingClientProvider.__allocating_init(catalogClient:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FailureTrackingClientProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E15EF2C()
{
  v2 = *v1;
  v3 = *v1;
  sub_18E159064();
  *v4 = v3;
  v5 = v2[15];
  *v4 = *v1;
  v3[16] = v0;

  v6 = v3[2];
  v7 = *(v3 + 32);
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  sub_18E15F0C0(v6, v2[3], v7);

  if (v0)
  {
    v11 = sub_18E1854DC;
  }

  else
  {
    v11 = sub_18E15F0D8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_18E15F0C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_18E15F0D8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return sub_18E15962C();
}

uint64_t sub_18E15F12C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E15F0E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E15F2FC()
{
  v1 = *(v0 + 24);

  v2 = sub_18E15CF58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18E15F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E15933C();
  v7 = type metadata accessor for DocumentRegistration.Status(v6);
  v8 = sub_18E159F5C(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = v3;
  }

  else
  {
    v12 = type metadata accessor for DocumentRegistration.InternalStatus(0);
    v13 = sub_18E159F5C(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v15 = *(a3 + 20);
    }

    else
    {
      v10 = sub_18E1A6D10();
      v15 = *(a3 + 24);
    }

    v11 = v3 + v15;
  }

  return sub_18E15D690(v11, a2, v10);
}

uint64_t sub_18E15F40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18E15933C();
  v9 = type metadata accessor for DocumentRegistration.Status(v8);
  v10 = sub_18E159F5C(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v4;
  }

  else
  {
    v14 = type metadata accessor for DocumentRegistration.InternalStatus(0);
    v15 = sub_18E159F5C(v14);
    if (*(v16 + 84) == a3)
    {
      v12 = v15;
      v17 = *(a4 + 20);
    }

    else
    {
      v12 = sub_18E1A6D10();
      v17 = *(a4 + 24);
    }

    v13 = v4 + v17;
  }

  return sub_18E159EBC(v13, a2, a2, v12);
}

uint64_t sub_18E15F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E15A9FC();
  v6 = sub_18E1A6D10();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_18E15D690(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_18E15F598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18E1A6D10();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_18E159EBC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18E15F824()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E15F864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_18E1A7360();
    v10 = a1 + *(a3 + 20);

    return sub_18E15D690(v10, a2, v9);
  }
}

uint64_t sub_18E15F8F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_18E1A7360();
    v8 = v5 + *(a4 + 20);

    return sub_18E159EBC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18E15FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E1A6F70();
  v7 = sub_18E159F5C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_18E1A6D90();
    v12 = sub_18E159F5C(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 28));
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_18E15D690(v10, a2, v9);
}

uint64_t sub_18E15FB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18E1A6F70();
  v9 = sub_18E159F5C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_18E1A6D90();
    result = sub_18E159F5C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_18E159EBC(v12, a2, a2, v11);
}

uint64_t sub_18E15FCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);

  return sub_18E15D690(a1, a2, v4);
}

uint64_t sub_18E15FD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);

  return sub_18E159EBC(a1, a2, a2, v4);
}

uint64_t sub_18E15FD74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18E15FDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E17ECF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E15FE78(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_18E15A8BC(*(a1 + 120));
  }

  type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v3 = sub_18E15AA9C();

  return sub_18E15D690(v3, v4, v5);
}

void sub_18E15FEEC()
{
  sub_18E15DA2C();
  if (v2)
  {
    *(v1 + 120) = (v0 - 1);
  }

  else
  {
    type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
    v3 = sub_18E15AA9C();

    sub_18E159EBC(v3, v4, v0, v5);
  }
}

uint64_t sub_18E15FF58()
{
  v0 = sub_18E1A79E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18E15FFA4(char a1)
{
  result = 5461583;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72657470616461;
      break;
    case 3:
      result = 0x6566615365646F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E160110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E18A9B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E160168(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E160228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelBundleInfoForSanitizer();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_18E15D690(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_18E1A6D90();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_18E1602FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModelBundleInfoForSanitizer();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_18E1A6D90();
    v10 = a1 + *(a4 + 28);
  }

  return sub_18E159EBC(v10, a2, a2, v9);
}

uint64_t sub_18E160404()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E16043C(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6C646E75426D6C6CLL;
  }
}

uint64_t sub_18E1604A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E193924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E1604C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E15933C();
  v6 = type metadata accessor for ModelBundleInfoForSanitizer();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return sub_18E15D690(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_18E1A6D90();
    v8 = v3 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_18E160598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_18E15933C();
  result = type metadata accessor for ModelBundleInfoForSanitizer();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_18E1A6D90();
    v10 = v4 + *(a4 + 28);
  }

  return sub_18E159EBC(v10, a2, a2, v9);
}

uint64_t sub_18E160984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptTemplate.ModelBundleID(0);
  v7 = sub_18E159F5C(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_18E15D690(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18E160A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PromptTemplate.ModelBundleID(0);
  result = sub_18E159F5C(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_18E159EBC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18E160B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1641C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t *sub_18E160BD8()
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC();
  }

  return &qword_1EABD0140;
}

id static AvailabilityXPCService.interface.getter()
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC();
  }

  sub_18E15D8E8();
  v0 = qword_1EABD0140;

  return v0;
}

void static AvailabilityXPCService.interface.setter(uint64_t a1)
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC();
  }

  sub_18E15BC90();
  v2 = qword_1EABD0140;
  qword_1EABD0140 = a1;
}

uint64_t static AvailabilityXPCService.interface.modify()
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC();
  }

  sub_18E15D968();
  return sub_18E15D874();
}

id sub_18E160D48@<X0>(void *a1@<X8>)
{
  sub_18E160BD8();
  swift_beginAccess();
  v2 = qword_1EABD0140;
  *a1 = qword_1EABD0140;

  return v2;
}

void sub_18E160DA8(id *a1)
{
  v1 = *a1;
  sub_18E160BD8();
  swift_beginAccess();
  v2 = qword_1EABD0140;
  qword_1EABD0140 = v1;
}

uint64_t sub_18E160E90(uint64_t *a1, uint64_t *a2)
{
  sub_18E15D8E8();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_18E160EE8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_18E160F9C@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  sub_18E15D8E8();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_18E161000(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t *sub_18E161084()
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8();
  }

  return &qword_1EABD0168;
}

uint64_t static AvailabilityXPCService.selectorClasses.getter()
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8();
  }

  sub_18E15D8E8();
}

uint64_t static AvailabilityXPCService.selectorClasses.setter(uint64_t a1)
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8();
  }

  sub_18E15BC90();
  qword_1EABD0168 = a1;
}

uint64_t static AvailabilityXPCService.selectorClasses.modify()
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8();
  }

  sub_18E15D968();
  return sub_18E15D874();
}

uint64_t sub_18E1611E8@<X0>(void *a1@<X8>)
{
  sub_18E161084();
  swift_beginAccess();
  *a1 = qword_1EABD0168;
}

uint64_t sub_18E16123C(uint64_t *a1)
{
  v1 = *a1;

  sub_18E161084();
  swift_beginAccess();
  qword_1EABD0168 = v1;
}

uint64_t sub_18E161298()
{
  v0 = sub_18E1A7360();
  sub_18E16BD84(v0, qword_1EABD0150);
  v1 = sub_18E1592FC(v0, qword_1EABD0150);
  if (qword_1ED8D9B48 != -1)
  {
    swift_once();
  }

  v2 = sub_18E1592FC(v0, qword_1ED8D9780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18E161360()
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v0 = sub_18E1A7360();

  return sub_18E1592FC(v0, qword_1EABD0150);
}

uint64_t static AvailabilityXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD0150);
  sub_18E15D8E8();
  sub_18E1594D8(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static AvailabilityXPCService.logger.setter(uint64_t a1)
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD0150);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static AvailabilityXPCService.logger.modify()
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v0 = sub_18E1A7360();
  sub_18E1592FC(v0, qword_1EABD0150);
  swift_beginAccess();
  return sub_18E15D874();
}

uint64_t sub_18E1615BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E161360();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18E161638(uint64_t a1)
{
  v2 = sub_18E161360();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_18E1616E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AvailabilityFoundationClient.Delegate();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t AvailabilityFoundationClient.__allocating_init()()
{
  sub_18E15CF58();
  v0 = swift_allocObject();
  AvailabilityFoundationClient.init()();
  return v0;
}

uint64_t AvailabilityFoundationClient.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for AvailabilityFoundationClient.Delegate();
  *(v0 + 24) = swift_allocObject();
  sub_18E16BB88(&qword_1ED8D9B78, type metadata accessor for AvailabilityFoundationClient.Delegate);
  v1 = sub_18E161880(&qword_1EABD02A8, &qword_18E1A87C0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v4 = sub_18E1A7130();
  v5 = *(v0 + 16);
  *(v0 + 16) = v4;

  return v0;
}

uint64_t sub_18E161880(uint64_t *a1, uint64_t *a2)
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

unint64_t AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.availability.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_18E1618D4(v2);
}

unint64_t sub_18E1618D4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_18E161948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E161914();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E161974(uint64_t a1)
{
  v2 = sub_18E162E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1619B0(uint64_t a1)
{
  v2 = sub_18E162E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1619EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018E1B1EB0 == a2;
  if (v3 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x800000018E1B1ED0 == a2;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000018E1B1EF0 == a2;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000018E1B1F10 == a2;
        if (v8 || (sub_18E1A7B90() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F506E6F69676572 && a2 == 0xEC0000007963696CLL;
          if (v9 || (sub_18E1A7B90() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x800000018E1B1F30 == a2;
            if (v10 || (sub_18E1A7B90() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4E73497465737361 && a2 == 0xEF7964616552746FLL;
              if (v11 || (sub_18E1A7B90() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x53664F74726F6873 && a2 == 0xEE00656761726F74;
                if (v12 || (sub_18E1A7B90() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646574704F746F6ELL && a2 == 0xEA00000000006E49;
                  if (v13 || (sub_18E1A7B90() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x800000018E1B1F50 == a2;
                    if (v14 || (sub_18E1A7B90() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_18E1A7B90();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_18E161D64(char a1)
{
  result = 0x6F506E6F69676572;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_8;
    case 2:
      return 0xD000000000000010;
    case 3:
      v3 = 5;
      goto LABEL_8;
    case 4:
      return result;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0x4E73497465737361;
    case 7:
      return 0x53664F74726F6873;
    case 8:
      return 0x646574704F746F6ELL;
    case 9:
      v3 = 9;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18E161EBC(uint64_t a1)
{
  v2 = sub_18E162E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E161EF8(uint64_t a1)
{
  v2 = sub_18E162E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E161F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1619EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E161F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E161D5C();
  *a1 = result;
  return result;
}

uint64_t sub_18E161FAC(uint64_t a1)
{
  v2 = sub_18E162CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E161FE8(uint64_t a1)
{
  v2 = sub_18E162CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E162024(uint64_t a1)
{
  v2 = sub_18E163040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162060(uint64_t a1)
{
  v2 = sub_18E163040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16209C(uint64_t a1)
{
  v2 = sub_18E162F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1620D8(uint64_t a1)
{
  v2 = sub_18E162F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E162114(uint64_t a1)
{
  v2 = sub_18E162DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162150(uint64_t a1)
{
  v2 = sub_18E162DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16218C(uint64_t a1)
{
  v2 = sub_18E162F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1621C8(uint64_t a1)
{
  v2 = sub_18E162F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E162204(uint64_t a1)
{
  v2 = sub_18E162EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162240(uint64_t a1)
{
  v2 = sub_18E162EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16227C(uint64_t a1)
{
  v2 = sub_18E162FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1622B8(uint64_t a1)
{
  v2 = sub_18E162FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1622F4(uint64_t a1)
{
  v2 = sub_18E162DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162330(uint64_t a1)
{
  v2 = sub_18E162DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16236C(uint64_t a1)
{
  v2 = sub_18E162D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1623A8(uint64_t a1)
{
  v2 = sub_18E162D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1623E4(uint64_t a1)
{
  v2 = sub_18E162CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162420(uint64_t a1)
{
  v2 = sub_18E162CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_18E159F44();
  a26 = v31;
  a27 = v32;
  v33 = v27;
  v35 = v34;
  v36 = sub_18E161880(&qword_1EABD02B0, &qword_18E1A87C8);
  v37 = sub_18E159050(v36);
  v153 = v38;
  v154 = v37;
  v40 = *(v39 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v41, v42);
  sub_18E15A1EC();
  v152 = v43;
  v44 = sub_18E161880(&qword_1EABD02B8, &qword_18E1A87D0);
  v45 = sub_18E159050(v44);
  v150 = v46;
  v151 = v45;
  v48 = *(v47 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v49, v50);
  sub_18E15A1EC();
  v149 = v51;
  v52 = sub_18E161880(&qword_1EABD02C0, &qword_18E1A87D8);
  v53 = sub_18E159050(v52);
  v147 = v54;
  v148 = v53;
  v56 = *(v55 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v57, v58);
  sub_18E15A1EC();
  v146 = v59;
  v60 = sub_18E161880(&qword_1EABD02C8, &qword_18E1A87E0);
  v61 = sub_18E159050(v60);
  v144 = v62;
  v145 = v61;
  v64 = *(v63 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v65, v66);
  sub_18E15A1EC();
  v143 = v67;
  v68 = sub_18E161880(&qword_1EABD02D0, &qword_18E1A87E8);
  v69 = sub_18E159050(v68);
  v141 = v70;
  v142 = v69;
  v72 = *(v71 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v73, v74);
  sub_18E15A1EC();
  v140 = v75;
  v76 = sub_18E161880(&qword_1EABD02D8, &qword_18E1A87F0);
  v77 = sub_18E159050(v76);
  v138 = v78;
  v139 = v77;
  v80 = *(v79 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v81, v82);
  sub_18E15A1EC();
  sub_18E16C088(v83);
  v136 = sub_18E161880(&qword_1EABD02E0, &qword_18E1A87F8);
  sub_18E159050(v136);
  v135 = v84;
  v86 = *(v85 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v87, v88);
  sub_18E15A1EC();
  sub_18E16C088(v89);
  v133 = sub_18E161880(&qword_1EABD02E8, &qword_18E1A8800);
  sub_18E159050(v133);
  v132 = v90;
  v92 = *(v91 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v93, v94);
  sub_18E15A1EC();
  sub_18E16C088(v95);
  v130 = sub_18E161880(&qword_1EABD02F0, &qword_18E1A8808);
  sub_18E159050(v130);
  v129 = v96;
  v98 = *(v97 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v99, v100);
  sub_18E15A1EC();
  sub_18E16C088(v101);
  v127 = sub_18E161880(&qword_1EABD02F8, &qword_18E1A8810);
  sub_18E159050(v127);
  v103 = *(v102 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v104, v105);
  sub_18E15D458();
  v106 = sub_18E161880(&qword_1EABD0300, &qword_18E1A8818);
  sub_18E159050(v106);
  v108 = *(v107 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v109, v110);
  sub_18E15BB5C();
  v156 = sub_18E161880(&qword_1EABD0308, &qword_18E1A8820);
  sub_18E159050(v156);
  v112 = v111;
  v114 = *(v113 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v115, v116);
  sub_18E15A114();
  v117 = *v33;
  v119 = v35[3];
  v118 = v35[4];
  sub_18E159D74(v35);
  sub_18E162CA4();
  v155 = v28;
  sub_18E1A7CD0();
  v120 = (v112 + 8);
  switch(v117)
  {
    case 1:
      v158[6] = 1;
      sub_18E162FEC();
      v35 = v155;
      v118 = v156;
      sub_18E1A7AD0();
      sub_18E16BF80(v158);
      v122 = v29;
      v124 = &v159;
      goto LABEL_9;
    case 2:
      v158[7] = 2;
      sub_18E162F98();
      sub_18E15D438();
      sub_18E16BF80(&a10);
      v122 = v128;
      v124 = &a18;
      goto LABEL_9;
    case 3:
      a10 = 3;
      sub_18E162F44();
      sub_18E15D438();
      sub_18E16BF80(&a20);
      v122 = v131;
      v124 = &a21;
      goto LABEL_9;
    case 4:
      a11 = 4;
      sub_18E162EF0();
      sub_18E15D438();
      sub_18E16BF80(&a23);
      v122 = v134;
      v124 = &a24;
LABEL_9:
      v123 = *(v124 - 32);
      break;
    case 5:
      a12 = 5;
      sub_18E162E9C();
      v125 = v137;
      sub_18E15D438();
      v126 = v138;
      v123 = v139;
      goto LABEL_14;
    case 6:
      a13 = 6;
      sub_18E162E48();
      v125 = v140;
      sub_18E15D438();
      v126 = v141;
      v123 = v142;
      goto LABEL_14;
    case 7:
      a14 = 7;
      sub_18E162DF4();
      v125 = v143;
      sub_18E15D438();
      v126 = v144;
      v123 = v145;
      goto LABEL_14;
    case 8:
      a15 = 8;
      sub_18E162DA0();
      v125 = v146;
      sub_18E15D438();
      v126 = v147;
      v123 = v148;
      goto LABEL_14;
    case 9:
      a16 = 9;
      sub_18E162D4C();
      v125 = v149;
      sub_18E15D438();
      v126 = v150;
      v123 = v151;
      goto LABEL_14;
    case 10:
      a17 = 10;
      sub_18E162CF8();
      v125 = v152;
      sub_18E15D438();
      v126 = v153;
      v123 = v154;
LABEL_14:
      v121 = *(v126 + 8);
      v122 = v125;
      break;
    default:
      v158[5] = 0;
      sub_18E163040();
      v35 = v155;
      v118 = v156;
      sub_18E1A7AD0();
      sub_18E16BF80(&v157);
      v122 = v30;
      v123 = v106;
      break;
  }

  v121(v122, v123);
  (*v120)(v35, v118);
  sub_18E15A29C();
}

unint64_t sub_18E162CA4()
{
  result = qword_1EABCFFC0;
  if (!qword_1EABCFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFC0);
  }

  return result;
}

unint64_t sub_18E162CF8()
{
  result = qword_1EABD0310;
  if (!qword_1EABD0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0310);
  }

  return result;
}

unint64_t sub_18E162D4C()
{
  result = qword_1EABD0318;
  if (!qword_1EABD0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0318);
  }

  return result;
}

unint64_t sub_18E162DA0()
{
  result = qword_1EABD0320;
  if (!qword_1EABD0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0320);
  }

  return result;
}

unint64_t sub_18E162DF4()
{
  result = qword_1EABD0328;
  if (!qword_1EABD0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0328);
  }

  return result;
}

unint64_t sub_18E162E48()
{
  result = qword_1EABCFF68;
  if (!qword_1EABCFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF68);
  }

  return result;
}

unint64_t sub_18E162E9C()
{
  result = qword_1EABCFF50;
  if (!qword_1EABCFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF50);
  }

  return result;
}

unint64_t sub_18E162EF0()
{
  result = qword_1EABD0330;
  if (!qword_1EABD0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0330);
  }

  return result;
}

unint64_t sub_18E162F44()
{
  result = qword_1EABD0338;
  if (!qword_1EABD0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0338);
  }

  return result;
}

unint64_t sub_18E162F98()
{
  result = qword_1EABCFEA8;
  if (!qword_1EABCFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEA8);
  }

  return result;
}

unint64_t sub_18E162FEC()
{
  result = qword_1EABD0340;
  if (!qword_1EABD0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0340);
  }

  return result;
}

unint64_t sub_18E163040()
{
  result = qword_1EABCFF38;
  if (!qword_1EABCFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF38);
  }

  return result;
}

uint64_t AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.hashValue.getter()
{
  sub_18E16C068();
  sub_18E1A7C60();
  sub_18E16C128();
  return sub_18E1A7CA0();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_18E159F44();
  a26 = v28;
  a27 = v29;
  v184 = v27;
  v31 = v30;
  v179 = v32;
  v33 = sub_18E161880(&qword_1EABD0348, &qword_18E1A8828);
  v34 = sub_18E159050(v33);
  v171 = v35;
  v172 = v34;
  v37 = *(v36 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v38, v39);
  sub_18E15A1EC();
  v178 = v40;
  v41 = sub_18E161880(&qword_1EABD0350, &qword_18E1A8830);
  v42 = sub_18E159050(v41);
  v169 = v43;
  v170 = v42;
  v45 = *(v44 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_18E15A1EC();
  v177 = v48;
  v49 = sub_18E161880(&qword_1EABD0358, &qword_18E1A8838);
  v50 = sub_18E159050(v49);
  v167 = v51;
  v168 = v50;
  v53 = *(v52 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v54, v55);
  sub_18E15A1EC();
  v176 = v56;
  v57 = sub_18E161880(&qword_1EABD0360, &qword_18E1A8840);
  v58 = sub_18E159050(v57);
  v165 = v59;
  v166 = v58;
  v61 = *(v60 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v62, v63);
  sub_18E15A1EC();
  v182 = v64;
  v163 = sub_18E161880(&qword_1EABD0368, &qword_18E1A8848);
  sub_18E159050(v163);
  v164 = v65;
  v67 = *(v66 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v68, v69);
  sub_18E15A1EC();
  v181 = v70;
  v162 = sub_18E161880(&qword_1EABD0370, &qword_18E1A8850);
  sub_18E159050(v162);
  v161 = v71;
  v73 = *(v72 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v74, v75);
  sub_18E15A1EC();
  v180 = v76;
  v160 = sub_18E161880(&qword_1EABD0378, &qword_18E1A8858);
  sub_18E159050(v160);
  v159 = v77;
  v79 = *(v78 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v80, v81);
  sub_18E15A1EC();
  v175 = v82;
  v158 = sub_18E161880(&qword_1EABD0380, &qword_18E1A8860);
  sub_18E159050(v158);
  v157 = v83;
  v85 = *(v84 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v86, v87);
  sub_18E15A1EC();
  v174 = v88;
  v156 = sub_18E161880(&qword_1EABD0388, &qword_18E1A8868);
  sub_18E159050(v156);
  v155 = v89;
  v91 = *(v90 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v92, v93);
  sub_18E15A1EC();
  v173 = v94;
  v154 = sub_18E161880(&qword_1EABD0390, &qword_18E1A8870);
  sub_18E159050(v154);
  v153[6] = v95;
  v97 = *(v96 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = v153 - v100;
  v102 = sub_18E161880(&qword_1EABD0398, &qword_18E1A8878);
  sub_18E159050(v102);
  v153[5] = v103;
  v105 = *(v104 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v106, v107);
  v109 = v153 - v108;
  v110 = sub_18E161880(&qword_1EABD03A0, &unk_18E1A8880);
  sub_18E159050(v110);
  v112 = v111;
  v114 = *(v113 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v115, v116);
  sub_18E15BB5C();
  v117 = v31[3];
  v118 = v31[4];
  v183 = v31;
  sub_18E158E00(v31, v117);
  sub_18E162CA4();
  v119 = v184;
  sub_18E1A7CC0();
  if (v119)
  {
    goto LABEL_8;
  }

  v153[3] = v109;
  v153[2] = v102;
  v153[4] = v101;
  v120 = v181;
  v121 = v182;
  v184 = v112;
  v122 = sub_18E1A7AA0();
  sub_18E15AF4C(v122, 0);
  v124 = v123;
  if (v126 == v125 >> 1)
  {
LABEL_7:
    v140 = sub_18E1A78C0();
    swift_allocError();
    v142 = v141;
    v143 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v142 = &type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason;
    sub_18E1A7A00();
    sub_18E15B9CC();
    v144 = *MEMORY[0x1E69E6AF8];
    sub_18E1594D8(v140);
    (*(v145 + 104))(v142);
    swift_willThrow();
    swift_unknownObjectRelease();
    v146 = sub_18E15A4B8();
    v147(v146);
LABEL_8:
    v148 = v183;
LABEL_9:
    sub_18E158EC4(v148);
    sub_18E15A29C();
    return;
  }

  sub_18E16BFE4();
  v153[1] = 0;
  if (v131 < (v127 >> 1))
  {
    v132 = *(v130 + v128);
    sub_18E15BA58(v128 + 1, v127 >> 1, v124, v130, v128, v129);
    v134 = v133;
    v136 = v135;
    swift_unknownObjectRelease();
    if (v134 == v136 >> 1)
    {
      switch(v132)
      {
        case 1:
          v185[6] = 1;
          sub_18E162FEC();
          sub_18E15D944();
          swift_unknownObjectRelease();
          v137 = sub_18E15A1DC(v185);
          v139 = &v186;
          goto LABEL_18;
        case 2:
          v185[7] = 2;
          sub_18E162F98();
          sub_18E15D944();
          swift_unknownObjectRelease();
          v137 = sub_18E15A1DC(&a9);
          v139 = &a10;
          goto LABEL_18;
        case 3:
          a10 = 3;
          sub_18E162F44();
          sub_18E15D944();
          swift_unknownObjectRelease();
          v137 = sub_18E15A1DC(&a18);
          v139 = &a19;
          goto LABEL_18;
        case 4:
          a11 = 4;
          sub_18E162EF0();
          sub_18E15D944();
          swift_unknownObjectRelease();
          v137 = sub_18E15A1DC(&a20);
          v139 = &a21;
          goto LABEL_18;
        case 5:
          a12 = 5;
          sub_18E162E9C();
          sub_18E15AB3C();
          swift_unknownObjectRelease();
          v137 = sub_18E15A1DC(&a22);
          v139 = &a23;
          goto LABEL_18;
        case 6:
          a13 = 6;
          sub_18E162E48();
          sub_18E15AB3C();
          swift_unknownObjectRelease();
          sub_18E16BF80(&a25);
          v137 = v120;
          v139 = &a24;
          goto LABEL_18;
        case 7:
          a14 = 7;
          sub_18E162DF4();
          sub_18E15D944();
          swift_unknownObjectRelease();
          v150 = v165;
          v149 = v166;
          goto LABEL_21;
        case 8:
          a15 = 8;
          sub_18E162DA0();
          v121 = v176;
          sub_18E15D944();
          swift_unknownObjectRelease();
          v150 = v167;
          v149 = v168;
          goto LABEL_21;
        case 9:
          a16 = 9;
          sub_18E162D4C();
          v121 = v177;
          sub_18E15D944();
          swift_unknownObjectRelease();
          v150 = v169;
          v149 = v170;
          goto LABEL_21;
        case 10:
          a17 = 10;
          sub_18E162CF8();
          v121 = v178;
          sub_18E15D944();
          swift_unknownObjectRelease();
          v150 = v171;
          v149 = v172;
LABEL_21:
          v138 = *(v150 + 8);
          v137 = v121;
          break;
        default:
          v185[5] = 0;
          sub_18E163040();
          sub_18E15D944();
          swift_unknownObjectRelease();
          v137 = sub_18E15A1DC(&v184);
          v139 = &v181;
LABEL_18:
          v149 = *(v139 - 32);
          break;
      }

      v138(v137, v149);
      v151 = sub_18E15A4B8();
      v152(v151);
      v148 = v183;
      *v179 = v132;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E163BAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E163C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E163BAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E163CAC(uint64_t a1)
{
  v2 = sub_18E169A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E163CE8(uint64_t a1)
{
  v2 = sub_18E169A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD03A8, &qword_18E1A8890);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15A114();
  v11 = *v0;
  v12 = v3[3];
  v13 = v3[4];
  sub_18E159D74(v3);
  sub_18E169A10();

  sub_18E1A7CD0();
  sub_18E161880(&qword_1EABD03B0, &qword_18E1A8898);
  sub_18E169B00(&qword_1EABCFE78, sub_18E169AAC);
  sub_18E1A7B30();

  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E161880(&qword_1EABD03B8, &qword_18E1A88A0);
  sub_18E159050(v15);
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D458();
  v20 = v12[3];
  v21 = v12[4];
  sub_18E159D74(v12);
  sub_18E169A10();
  sub_18E16C03C();
  if (!v10)
  {
    sub_18E161880(&qword_1EABD03B0, &qword_18E1A8898);
    sub_18E169B00(&qword_1EABCFC78, sub_18E169B78);
    sub_18E1A7A80();
    v22 = sub_18E15C048();
    v23(v22);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

uint64_t sub_18E163FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646574696D696CLL && a2 == 0xE700000000000000;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

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

uint64_t sub_18E16411C(unsigned __int8 a1)
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](a1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E164164(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0x646574696D696CLL;
  }

  return 0x616C696176616E75;
}

uint64_t sub_18E1641C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E164268(uint64_t a1)
{
  v2 = sub_18E169D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1642A4(uint64_t a1)
{
  v2 = sub_18E169D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1642E0()
{
  sub_18E16C068();
  sub_18E1A7C60();
  sub_18E16C128();
  return sub_18E1A7CA0();
}

uint64_t sub_18E164320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E163FF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E164348@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E164114();
  *a1 = result;
  return result;
}

uint64_t sub_18E164370(uint64_t a1)
{
  v2 = sub_18E169BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1643AC(uint64_t a1)
{
  v2 = sub_18E169BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1643E8(uint64_t a1)
{
  v2 = sub_18E169CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E164424(uint64_t a1)
{
  v2 = sub_18E169CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E164460(uint64_t a1)
{
  v2 = sub_18E169C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E16449C(uint64_t a1)
{
  v2 = sub_18E169C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.encode(to:)()
{
  sub_18E159F44();
  v52 = v1;
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD03C0, &qword_18E1A88A8);
  v6 = sub_18E159050(v5);
  v50 = v7;
  v51 = v6;
  v9 = *(v8 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A1EC();
  v49 = v12;
  v13 = sub_18E161880(&qword_1EABD03C8, &qword_18E1A88B0);
  v14 = sub_18E159050(v13);
  v47 = v15;
  v48 = v14;
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15A1EC();
  v46 = v20;
  v21 = sub_18E161880(&qword_1EABD03D0, &qword_18E1A88B8);
  v22 = sub_18E159050(v21);
  v44 = v23;
  v45 = v22;
  v25 = *(v24 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v44 - v28;
  v30 = sub_18E161880(&qword_1EABD03D8, &qword_18E1A88C0);
  sub_18E159050(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v35, v36);
  sub_18E159FE0();
  v37 = *v0;
  v39 = v4[3];
  v38 = v4[4];
  sub_18E159D74(v4);
  sub_18E169BCC();
  sub_18E1A7CD0();
  if (v37)
  {
    if (v37 != 1)
    {
      sub_18E169C20();
      v42 = v49;
      sub_18E15BAD4();
      sub_18E1A7AD0();
      v53 = v37;
      sub_18E169C74();
      v43 = v51;
      sub_18E1A7B30();
      (*(v50 + 8))(v42, v43);
      (*(v32 + 8))(v2, v30);
      goto LABEL_7;
    }

    sub_18E169CC8();
    v29 = v46;
    sub_18E15BAD4();
    sub_18E1A7AD0();
    v41 = v47;
    v40 = v48;
  }

  else
  {
    sub_18E169D1C();
    sub_18E15BAD4();
    sub_18E1A7AD0();
    v41 = v44;
    v40 = v45;
  }

  (*(v41 + 8))(v29, v40);
  (*(v32 + 8))(v2, v30);
LABEL_7:
  sub_18E15A29C();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.init(from:)()
{
  sub_18E159F44();
  v5 = v4;
  v66 = v6;
  v7 = sub_18E161880(&qword_1EABD03E8, &qword_18E1A88C8);
  sub_18E159050(v7);
  v9 = *(v8 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A1EC();
  v12 = sub_18E161880(&qword_1EABD03F0, &qword_18E1A88D0);
  v64 = sub_18E159050(v12);
  v65 = v13;
  v15 = *(v14 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E159FE0();
  v18 = sub_18E161880(&qword_1EABD03F8, &qword_18E1A88D8);
  sub_18E159050(v18);
  v63 = v19;
  v21 = *(v20 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v22, v23);
  sub_18E15BB5C();
  v24 = sub_18E161880(&qword_1EABD0400, &qword_18E1A88E0);
  sub_18E159050(v24);
  v67 = v25;
  v27 = *(v26 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v28, v29);
  sub_18E15A114();
  v30 = v5[4];
  sub_18E158E00(v5, v5[3]);
  sub_18E169BCC();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_10;
  }

  v62 = v3;
  v68 = v5;
  v31 = v1;
  v32 = sub_18E1A7AA0();
  sub_18E15AF4C(v32, 0);
  v34 = v33;
  if (v36 == v35 >> 1)
  {
LABEL_9:
    v52 = sub_18E1A78C0();
    swift_allocError();
    v54 = v53;
    v55 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v54 = &type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability;
    sub_18E1A7A00();
    sub_18E15B9CC();
    v56 = *MEMORY[0x1E69E6AF8];
    sub_18E1594D8(v52);
    (*(v57 + 104))(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v31, v24);
    v5 = v68;
LABEL_10:
    sub_18E158EC4(v5);
LABEL_11:
    sub_18E15A29C();
    return;
  }

  sub_18E16BFE4();
  if (v41 < (v37 >> 1))
  {
    v42 = *(v40 + v38);
    sub_18E15BA58(v38 + 1, v37 >> 1, v34, v40, v38, v39);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      v47 = v1;
      if (v42)
      {
        if (v42 == 1)
        {
          sub_18E169CC8();
          sub_18E15C500();
          v48 = v66;
          swift_unknownObjectRelease();
          (*(v65 + 8))(v2, v64);
          v49 = sub_18E15D5D4();
          v50(v49);
          v51 = 1;
        }

        else
        {
          sub_18E169C20();
          sub_18E15C500();
          v48 = v66;
          sub_18E169D70();
          sub_18E1A7A80();
          swift_unknownObjectRelease();
          v60 = sub_18E16C074();
          v61(v60);
          (*(v67 + 8))(v47, v24);
          v51 = v69;
        }
      }

      else
      {
        sub_18E169D1C();
        sub_18E15C500();
        swift_unknownObjectRelease();
        (*(v63 + 8))(v62, v18);
        v58 = sub_18E15D5D4();
        v59(v58);
        v51 = 0;
        v48 = v66;
      }

      *v48 = v51;
      sub_18E158EC4(v68);
      goto LABEL_11;
    }

    v31 = v1;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_18E164D98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E164E14()
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E164EA8()
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E164EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E164D98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E164F18(uint64_t a1)
{
  v2 = sub_18E169DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E164F54(uint64_t a1)
{
  v2 = sub_18E169DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0408, &qword_18E1A88E8);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15D458();
  v11 = *v0;
  v12 = v3[3];
  v13 = v3[4];
  sub_18E159D74(v3);
  sub_18E1618D4(v11);
  sub_18E169DC4();
  sub_18E1A7CD0();
  sub_18E169E18();
  sub_18E1A7B30();
  sub_18E169E6C(v11);
  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E161880(&qword_1EABD0410, &qword_18E1A88F0);
  sub_18E159050(v15);
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D458();
  v20 = v12[3];
  v21 = v12[4];
  sub_18E159D74(v12);
  sub_18E169DC4();
  sub_18E16C03C();
  if (!v10)
  {
    sub_18E169E7C();
    sub_18E15BAD4();
    sub_18E1A7A80();
    v22 = sub_18E15C048();
    v23(v22);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

uint64_t AvailabilityFoundationClient.secureWriteCloudSubscriptionFeaturesAvailability(_:)()
{
  sub_18E158FCC();
  v3 = v2;
  v15 = *MEMORY[0x1E69E9840];
  v1[4] = v0;
  v4 = sub_18E1A7240();
  sub_18E15D028(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v8 = sub_18E16BFBC();
  v9 = *v3;
  v1[7] = v8;
  v1[8] = v9;
  v10 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E1652E4()
{
  sub_18E158FCC();
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[7];
  v2 = v0[5];
  v3 = *MEMORY[0x1E69A0B38];
  v4 = sub_18E16C094(v0[6]);
  v5(v4);
  v6 = sub_18E1A7220();
  v7 = sub_18E1A7230();
  v0[9] = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.secureWriteCloudSubscriptionFeaturesAvailability(_:)", v6, v7);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_18E165408;
  v9 = v0[8];
  v10 = v0[4];
  v11 = *MEMORY[0x1E69E9840];

  return sub_18E165684(v8, v9, v10);
}

uint64_t sub_18E165408()
{
  sub_18E15A288();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  *(v9 + 88) = v0;

  v10 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E165534()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v0 = *MEMORY[0x1E69E9840];
  sub_18E15C4DC();
  swift_unknownObjectRelease();
  v1 = sub_18E159FC4();
  v2(v1);

  sub_18E1594CC();
  v3 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18E1655DC()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v1 = *MEMORY[0x1E69E9840];
  sub_18E15C4DC();
  swift_unknownObjectRelease();
  v2 = sub_18E159FC4();
  v3(v2);

  sub_18E1594CC();
  v4 = *(v0 + 88);
  v5 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_18E165684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v4 = sub_18E1A7360();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E165744, 0, 0);
}

uint64_t sub_18E165744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  v11 = v10[8];
  v12 = sub_18E1A6CA0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_18E1A6C90();
  v10[7] = v11;
  sub_18E16BD28();
  v15 = sub_18E1A6C80();
  v10[13] = v15;
  v10[14] = v16;
  v17 = v15;
  v18 = v16;
  v19 = v10[9];

  v28 = *(v19 + 16);
  v10[15] = v28;
  if (v28)
  {
    v29 = swift_task_alloc();
    v10[16] = v29;
    *(v29 + 16) = v17;
    *(v29 + 24) = v18;
    v30 = *(MEMORY[0x1E69C5B08] + 4);

    swift_task_alloc();
    sub_18E15B77C();
    v10[17] = v31;
    *v31 = v32;
    v31[1] = sub_18E1659F8;
    sub_18E15D83C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_18E1659F8()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  v3[18] = v0;

  if (!v0)
  {
    v10 = v3[15];
    v9 = v3[16];
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E165B18()
{
  sub_18E15A288();
  v1 = v0[12];
  sub_18E16BCA0(v0[13], v0[14]);

  sub_18E15A7EC();

  return v2();
}

uint64_t sub_18E165B7C()
{
  sub_18E15DAEC();
  v1 = v0[15];
  v2 = v0[16];
  sub_18E16BCA0(v0[13], v0[14]);

  v3 = v0[18];
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = sub_18E1592FC(v0[10], qword_1EABD0150);
  sub_18E15DB4C();
  v7 = sub_18E15BB6C();
  v8(v7);
  v9 = v3;
  v10 = sub_18E1A7340();
  v11 = sub_18E1A7710();

  if (os_log_type_enabled(v10, v11))
  {
    sub_18E15BF88();
    v12 = sub_18E15B8D0();
    *v6 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v14);
    sub_18E159EE4(&dword_18E157000, v15, v11, "secureWriteCloudSubscriptionFeaturesAvailability error: %@");
    sub_18E16BC38(v12);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];

  (*(v17 + 8))(v16, v18);
  swift_willThrow();

  sub_18E1594CC();

  return v19();
}

void sub_18E165D0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_18E1A6D40();
  v9[4] = sub_18E16BF6C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E173C64;
  v9[3] = &unk_1F0102DD0;
  v8 = _Block_copy(v9);

  [a1 secureWriteCloudSubscriptionFeaturesAvailabilityWithCsfAvailabilityWrapperData:v7 with:v8];
  _Block_release(v8);
}

uint64_t AvailabilityFoundationClient.updateCSFAccessGranted(for:)()
{
  sub_18E15A288();
  v11 = *MEMORY[0x1E69E9840];
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_18E1A7240();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64);
  v1[8] = sub_18E16BFBC();
  v6 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E165EF4()
{
  sub_18E158FCC();
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = v0[6];
  v3 = *MEMORY[0x1E69A0B38];
  v4 = sub_18E16C094(v0[7]);
  v5(v4);
  v6 = sub_18E1A7220();
  v7 = sub_18E1A7230();
  v0[9] = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.updateCSFAccessGranted(for:)", v6, v7);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_18E166014;
  v10 = v0[4];
  v9 = v0[5];
  v11 = *MEMORY[0x1E69E9840];

  return sub_18E166290(v8, v9, v10);
}

uint64_t sub_18E166014()
{
  sub_18E15A288();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  *(v9 + 88) = v0;

  v10 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E166140()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v0 = *MEMORY[0x1E69E9840];
  sub_18E16C0E0();
  swift_unknownObjectRelease();
  v1 = sub_18E159FC4();
  v2(v1);

  sub_18E1594CC();
  v3 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18E1661E8()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v1 = *MEMORY[0x1E69E9840];
  sub_18E16C0E0();
  swift_unknownObjectRelease();
  v2 = sub_18E159FC4();
  v3(v2);

  sub_18E1594CC();
  v4 = *(v0 + 88);
  v5 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_18E166290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = sub_18E1A7360();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E166350, 0, 0);
}

uint64_t sub_18E166350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10[7] + 16);
  v10[12] = v11;
  if (v11)
  {
    sub_18E158FCC();
    v12 = v10[8];
    v13 = swift_task_alloc();
    v10[13] = v13;
    *(v13 + 16) = v12;
    v14 = *(MEMORY[0x1E69C5B08] + 4);

    swift_task_alloc();
    sub_18E15B77C();
    v10[14] = v15;
    *v15 = v16;
    v15[1] = sub_18E166434;
    a1 = sub_18E15D550();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_18E166434()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  v3[15] = v0;

  if (!v0)
  {
    v10 = v3[12];
    v9 = v3[13];
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E166554()
{
  sub_18E15A288();
  v1 = *(v0 + 88);

  sub_18E15A7EC();

  return v2();
}

uint64_t sub_18E1665AC()
{
  sub_18E15DAEC();
  v1 = v0[12];
  v2 = v0[13];

  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = sub_18E1592FC(v0[9], qword_1EABD0150);
  sub_18E15DB4C();
  v7 = sub_18E15BB6C();
  v8(v7);
  v9 = v3;
  v10 = sub_18E1A7340();
  v11 = sub_18E1A7710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[15];
    sub_18E15BF88();
    v13 = sub_18E15B8D0();
    *v6 = 138412290;
    v14 = v12;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v15);
    sub_18E159EE4(&dword_18E157000, v16, v11, "updateCSFAccessGranted error: %@");
    sub_18E16BC38(v13);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v17 = v0[15];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[9];

  v21 = sub_18E16BFD4();
  v22(v21);
  swift_willThrow();

  sub_18E1594CC();
  v24 = v0[15];

  return v23();
}

void sub_18E16672C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_18E1A7470();
  v9[4] = sub_18E16BF6C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E173C64;
  v9[3] = &unk_1F0102D80;
  v8 = _Block_copy(v9);

  [a1 updateCSFAccessGrantedFor:v7 with:v8];
  _Block_release(v8);
}

uint64_t AvailabilityFoundationClient.updateOptInStatus(optedIn:)()
{
  sub_18E15A288();
  v12 = *MEMORY[0x1E69E9840];
  *(v1 + 32) = v0;
  *(v1 + 88) = v2;
  v3 = sub_18E1A7240();
  sub_18E15D028(v3);
  *(v1 + 48) = v4;
  v6 = *(v5 + 64);
  *(v1 + 56) = sub_18E16BFBC();
  v7 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18E16691C()
{
  sub_18E158FCC();
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *MEMORY[0x1E69A0B38];
  v4 = sub_18E16C094(*(v0 + 48));
  v5(v4);
  v6 = sub_18E1A7220();
  v7 = sub_18E1A7230();
  *(v0 + 64) = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.updateOptInStatus(optedIn:)", v6, v7);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_18E166A40;
  v9 = *(v0 + 32);
  v10 = *(v0 + 88);
  v11 = *MEMORY[0x1E69E9840];

  return sub_18E166CBC(v8, v9, v10);
}

uint64_t sub_18E166A40()
{
  sub_18E15A288();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  *(v9 + 80) = v0;

  v10 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E166B6C()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v0 = *MEMORY[0x1E69E9840];
  sub_18E16C0A0();
  swift_unknownObjectRelease();
  v1 = sub_18E159FC4();
  v2(v1);

  sub_18E1594CC();
  v3 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18E166C14()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v1 = *MEMORY[0x1E69E9840];
  sub_18E16C0A0();
  swift_unknownObjectRelease();
  v2 = sub_18E159FC4();
  v3(v2);

  sub_18E1594CC();
  v4 = *(v0 + 80);
  v5 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_18E166CBC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 120) = a3;
  *(v3 + 56) = a2;
  v4 = sub_18E1A7360();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E166D80, 0, 0);
}

uint64_t sub_18E166D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(*(v10 + 56) + 16);
  *(v10 + 88) = v11;
  if (v11)
  {
    sub_18E158FCC();
    v12 = *(v10 + 120);
    v13 = swift_task_alloc();
    *(v10 + 96) = v13;
    *(v13 + 16) = v12;
    v14 = *(MEMORY[0x1E69C5B08] + 4);

    swift_task_alloc();
    sub_18E15B77C();
    *(v10 + 104) = v15;
    *v15 = v16;
    v15[1] = sub_18E166E64;
    a1 = sub_18E15D550();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_18E166E64()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  v3[14] = v0;

  if (!v0)
  {
    v10 = v3[11];
    v9 = v3[12];
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E166F84()
{
  sub_18E15A288();
  v1 = *(v0 + 80);

  sub_18E15A7EC();

  return v2();
}

uint64_t sub_18E166FDC()
{
  sub_18E15DAEC();
  v1 = v0[11];
  v2 = v0[12];

  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = sub_18E1592FC(v0[8], qword_1EABD0150);
  sub_18E15DB4C();
  v7 = sub_18E15BB6C();
  v8(v7);
  v9 = v3;
  v10 = sub_18E1A7340();
  v11 = sub_18E1A7710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[14];
    sub_18E15BF88();
    v13 = sub_18E15B8D0();
    *v6 = 138412290;
    v14 = v12;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v15);
    sub_18E159EE4(&dword_18E157000, v16, v11, "updateOptInStatus error: %@");
    sub_18E16BC38(v13);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v17 = v0[14];
  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[8];

  v21 = sub_18E16BFD4();
  v22(v21);
  swift_willThrow();

  sub_18E1594CC();
  v24 = v0[14];

  return v23();
}

void sub_18E16715C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_18E16BF6C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E173C64;
  v10[3] = &unk_1F0102D30;
  v9 = _Block_copy(v10);

  [a1 updateOptInStatusWithOptedIn:a4 & 1 with:v9];
  _Block_release(v9);
}

uint64_t AvailabilityFoundationClient.didShowEnrollmentScreen(useCaseIdentifier:)()
{
  sub_18E15A288();
  v12 = *MEMORY[0x1E69E9840];
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_18E1A7240();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64);
  v1[9] = sub_18E16BFBC();
  v7 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18E167330()
{
  sub_18E158FCC();
  v14 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  v2 = v0[7];
  v3 = *MEMORY[0x1E69A0B38];
  v4 = sub_18E16C094(v0[8]);
  v5(v4);
  v6 = sub_18E1A7220();
  v7 = sub_18E1A7230();
  v0[10] = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.didShowEnrollmentScreen(useCaseIdentifier:)", v6, v7);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_18E167454;
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = *MEMORY[0x1E69E9840];

  return sub_18E1676D0(v8, v9, v11, v10);
}

uint64_t sub_18E167454()
{
  sub_18E15A288();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  *(v9 + 96) = v0;

  v10 = *MEMORY[0x1E69E9840];
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E167580()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v0 = *MEMORY[0x1E69E9840];
  sub_18E16C0C0();
  swift_unknownObjectRelease();
  v1 = sub_18E159FC4();
  v2(v1);

  sub_18E1594CC();
  v3 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18E167628()
{
  sub_18E16C100();
  sub_18E15DAEC();
  v1 = *MEMORY[0x1E69E9840];
  sub_18E16C0C0();
  swift_unknownObjectRelease();
  v2 = sub_18E159FC4();
  v3(v2);

  sub_18E1594CC();
  v4 = *(v0 + 96);
  v5 = *MEMORY[0x1E69E9840];
  sub_18E16C114();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_18E1676D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v5 = sub_18E1A7360();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E167794, 0, 0);
}

uint64_t sub_18E167794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10[7] + 16);
  v10[13] = v11;
  if (v11)
  {
    sub_18E158FCC();
    v13 = v10[8];
    v12 = v10[9];
    v14 = swift_task_alloc();
    v10[14] = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = *(MEMORY[0x1E69C5B08] + 4);

    swift_task_alloc();
    sub_18E15B77C();
    v10[15] = v16;
    *v16 = v17;
    v16[1] = sub_18E167878;
    a1 = sub_18E15D550();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_18E167878()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  v3[16] = v0;

  if (!v0)
  {
    v10 = v3[13];
    v9 = v3[14];
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E167998()
{
  sub_18E15A288();
  v1 = *(v0 + 96);

  sub_18E15A7EC();

  return v2();
}

uint64_t sub_18E1679F0()
{
  sub_18E15DAEC();
  v1 = v0[13];
  v2 = v0[14];

  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = sub_18E1592FC(v0[10], qword_1EABD0150);
  sub_18E15DB4C();
  v7 = sub_18E15BB6C();
  v8(v7);
  v9 = v3;
  v10 = sub_18E1A7340();
  v11 = sub_18E1A7710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[16];
    sub_18E15BF88();
    v13 = sub_18E15B8D0();
    *v6 = 138412290;
    v14 = v12;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v15);
    sub_18E159EE4(&dword_18E157000, v16, v11, "didShowEnrollmentScreen: %@");
    sub_18E16BC38(v13);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v17 = v0[16];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];

  v21 = sub_18E16BFD4();
  v22(v21);
  swift_willThrow();

  sub_18E1594CC();
  v24 = v0[16];

  return v23();
}

void sub_18E167B70(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_18E1A7500();
  v9[4] = sub_18E16BCF8;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E173C64;
  v9[3] = &unk_1F0102CE0;
  v8 = _Block_copy(v9);

  [a1 didShowEnrollmentScreenWithUseCaseIdentifier:v7 with:v8];
  _Block_release(v8);
}

uint64_t AvailabilityFoundationClient.updateCSFOptInStatus(optedIn:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  v4 = *(v3 + 64);
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E167D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v12, qword_1EABD0150);
  v13 = sub_18E15A274();
  v14(v13);
  v15 = sub_18E1A7340();
  v16 = sub_18E1A7710();
  sub_18E15AE7C(v16);
  sub_18E16C030();
  if (v17)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v11 = 136315138;
    sub_18E15DBA0();
    *(v11 + 4) = sub_18E1694A4(0xD00000000000001ELL, v18, v19);
    sub_18E15BC70(&dword_18E157000, v20, v21, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v22 = sub_18E159F34();
  v23(v22);
  v24 = *(v10 + 56);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t AvailabilityFoundationClient.updateCSFAccessStatus(accessGranted:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  v4 = *(v3 + 64);
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E167ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v12, qword_1EABD0150);
  v13 = sub_18E15A274();
  v14(v13);
  v15 = sub_18E1A7340();
  v16 = sub_18E1A7710();
  sub_18E15AE7C(v16);
  sub_18E16C030();
  if (v17)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v11 = 136315138;
    sub_18E15DBA0();
    *(v11 + 4) = sub_18E1694A4(0xD000000000000025, v18, v19);
    sub_18E15BC70(&dword_18E157000, v20, v21, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v22 = sub_18E159F34();
  v23(v22);
  v24 = *(v10 + 56);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_18E16800C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E73497465737361 && a2 == 0xEF7964616552746FLL;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53664F74726F6873 && a2 == 0xEE00656761726F74)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E1A7B90();

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

uint64_t sub_18E1680EC(char a1)
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](a1 & 1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E168134(char a1)
{
  if (a1)
  {
    return 0x53664F74726F6873;
  }

  else
  {
    return 0x4E73497465737361;
  }
}

uint64_t sub_18E168184(uint64_t a1)
{
  v2 = sub_18E169F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1681C0(uint64_t a1)
{
  v2 = sub_18E169F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16820C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E16800C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E168234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E1680E4();
  *a1 = result;
  return result;
}

uint64_t sub_18E16825C(uint64_t a1)
{
  v2 = sub_18E169ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E168298(uint64_t a1)
{
  v2 = sub_18E169ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1682D4(uint64_t a1)
{
  v2 = sub_18E169F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E168310(uint64_t a1)
{
  v2 = sub_18E169F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0418, &qword_18E1A8948);
  v5 = sub_18E159050(v4);
  v35 = v6;
  v36 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15A1EC();
  v34 = v11;
  v12 = sub_18E161880(&qword_1EABD0420, &qword_18E1A8950);
  v13 = sub_18E159050(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_18E15BB5C();
  v19 = sub_18E161880(&qword_1EABD0428, &qword_18E1A8958);
  sub_18E159050(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v32 - v26;
  v28 = *v0;
  v29 = v3[4];
  sub_18E158E00(v3, v3[3]);
  sub_18E169ED0();
  sub_18E1A7CD0();
  v30 = (v21 + 8);
  if (v28)
  {
    sub_18E169F24();
    v31 = v34;
    sub_18E15BAD4();
    sub_18E1A7AD0();
    (*(v35 + 8))(v31, v36);
  }

  else
  {
    sub_18E169F78();
    sub_18E15BAD4();
    sub_18E1A7AD0();
    (*(v32 + 8))(v1, v33);
  }

  (*v30)(v27, v19);
  sub_18E15A29C();
}

uint64_t AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.hashValue.getter()
{
  sub_18E16C068();
  sub_18E1A7C60();
  sub_18E16C128();
  return sub_18E1A7CA0();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.init(from:)()
{
  sub_18E159F44();
  v63 = v0;
  v4 = v3;
  v60 = v5;
  v62 = sub_18E161880(&qword_1EABD0448, &qword_18E1A8960);
  sub_18E159050(v62);
  v59 = v6;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v55 - v11;
  v13 = sub_18E161880(&qword_1EABD0450, &qword_18E1A8968);
  sub_18E159050(v13);
  v58 = v14;
  v16 = *(v15 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_18E159FE0();
  v19 = sub_18E161880(&qword_1EABD0458, &qword_18E1A8970);
  sub_18E159050(v19);
  v61 = v20;
  v22 = *(v21 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_18E15D458();
  v26 = v4[3];
  v25 = v4[4];
  sub_18E159D74(v4);
  sub_18E169ED0();
  v27 = v63;
  sub_18E1A7CC0();
  if (v27)
  {
    goto LABEL_10;
  }

  v56 = v13;
  v57 = v2;
  v63 = v4;
  v28 = v62;
  v29 = sub_18E1A7AA0();
  sub_18E15AF4C(v29, 0);
  v31 = v30;
  if (v33 == v32 >> 1)
  {
    v62 = v30;
LABEL_9:
    v48 = sub_18E1A78C0();
    swift_allocError();
    v50 = v49;
    v51 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v50 = &type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason;
    sub_18E1A7A00();
    sub_18E15B9CC();
    v52 = *MEMORY[0x1E69E6AF8];
    sub_18E1594D8(v48);
    (*(v53 + 104))(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v1, v19);
    v4 = v63;
LABEL_10:
    sub_18E158EC4(v4);
LABEL_11:
    sub_18E15A29C();
    return;
  }

  sub_18E16BFE4();
  v55[1] = 0;
  if (v38 < (v34 >> 1))
  {
    v39 = *(v37 + v35);
    v40 = sub_18E15BA58(v35 + 1, v34 >> 1, v31, v37, v35, v36);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      if (v39)
      {
        sub_18E169F24();
        v45 = v12;
        sub_18E15D5F4();
        v46 = v60;
        v47 = v61;
        swift_unknownObjectRelease();
        (*(v59 + 8))(v45, v28);
      }

      else
      {
        sub_18E169F78();
        v54 = v57;
        sub_18E15D5F4();
        v46 = v60;
        v47 = v61;
        swift_unknownObjectRelease();
        (*(v58 + 8))(v54, v56);
      }

      (*(v47 + 8))(v1, v42);
      *v46 = v39;
      sub_18E158EC4(v63);
      goto LABEL_11;
    }

    v62 = v40;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AvailabilityFoundationClient.updateCSFAssetStatus(unavailableReasons:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  v4 = *(v3 + 64);
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E168B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v12, qword_1EABD0150);
  v13 = sub_18E15A274();
  v14(v13);
  v15 = sub_18E1A7340();
  v16 = sub_18E1A7710();
  sub_18E15AE7C(v16);
  sub_18E16C030();
  if (v17)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v11 = 136315138;
    sub_18E15DBA0();
    *(v11 + 4) = sub_18E1694A4(0xD000000000000029, v18, v19);
    sub_18E15BC70(&dword_18E157000, v20, v21, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v22 = sub_18E159F34();
  v23(v22);
  v24 = *(v10 + 56);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

GenerativeModelsFoundation::AvailabilityFoundationClient::CFUType_optional __swiftcall AvailabilityFoundationClient.CFUType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

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

uint64_t AvailabilityFoundationClient.CFUType.rawValue.getter()
{
  if (*v0)
  {
    return 7169121;
  }

  else
  {
    return 7169633;
  }
}

uint64_t sub_18E168CE8@<X0>(uint64_t *a1@<X8>)
{
  result = AvailabilityFoundationClient.CFUType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t AvailabilityFoundationClient.updateCFUSentDate(for:date:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  v4 = *(v3 + 64);
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E168DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v12, qword_1EABD0150);
  v13 = sub_18E15A274();
  v14(v13);
  v15 = sub_18E1A7340();
  v16 = sub_18E1A7710();
  sub_18E15AE7C(v16);
  sub_18E16C030();
  if (v17)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v11 = 136315138;
    sub_18E15DBA0();
    *(v11 + 4) = sub_18E1694A4(0xD00000000000001CLL, v18, v19);
    sub_18E15BC70(&dword_18E157000, v20, v21, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v22 = sub_18E159F34();
  v23(v22);
  v24 = *(v10 + 56);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t AvailabilityFoundationClient.updateCFUEngagedDate(for:date:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  v4 = *(v3 + 64);
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E168F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC();
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v12, qword_1EABD0150);
  v13 = sub_18E15A274();
  v14(v13);
  v15 = sub_18E1A7340();
  v16 = sub_18E1A7710();
  sub_18E15AE7C(v16);
  sub_18E16C030();
  if (v17)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v11 = 136315138;
    sub_18E15DBA0();
    *(v11 + 4) = sub_18E1694A4(0xD00000000000001FLL, v18, v19);
    sub_18E15BC70(&dword_18E157000, v20, v21, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v22 = sub_18E159F34();
  v23(v22);
  v24 = *(v10 + 56);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t AvailabilityFoundationClient.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AvailabilityFoundationClient.__deallocating_deinit()
{
  AvailabilityFoundationClient.deinit();
  v0 = sub_18E15CF58();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E1690F0(uint64_t a1, id *a2)
{
  result = sub_18E1A7510();
  *a2 = 0;
  return result;
}

uint64_t sub_18E16916C(uint64_t a1, id *a2)
{
  v3 = sub_18E1A7520();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18E1691EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E169214();
  *a1 = result;
  return result;
}

uint64_t sub_18E169214()
{
  sub_18E1A7530();
  v0 = sub_18E1A7500();

  return v0;
}

uint64_t sub_18E169254()
{
  v0 = sub_18E1A7530();
  v1 = MEMORY[0x193ACAA50](v0);

  return v1;
}

uint64_t sub_18E169294()
{
  sub_18E1A7530();
  sub_18E1A75C0();
}

uint64_t sub_18E1692F0()
{
  sub_18E1A7530();
  sub_18E1A7C60();
  sub_18E1A75C0();
  v0 = sub_18E1A7CA0();

  return v0;
}

uint64_t sub_18E169364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_18E19B964();
}

uint64_t sub_18E169370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_18E1A7500();

  *a2 = v5;
  return result;
}

uint64_t sub_18E1693B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E1693E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18E1693E8(uint64_t a1)
{
  v2 = sub_18E16BB88(&qword_1EABCFC58, type metadata accessor for FileAttributeKey);
  v3 = sub_18E16BB88(&qword_1EABD0500, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18E1694A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_18E159FD4();
  v9 = sub_18E169564(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_18E16BBD0(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_18E158EC4(v14);
  return v10;
}

unint64_t sub_18E169564(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18E169664(a5, a6);
    *a1 = v9;
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
    result = sub_18E1A78F0();
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

uint64_t sub_18E169664(uint64_t a1, unint64_t a2)
{
  v4 = sub_18E1696B0(a1, a2);
  sub_18E1697C8(&unk_1F0101BA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_18E1696B0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_18E1A7610())
  {
    result = sub_18E1698AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_18E1A7850();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_18E1A78F0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18E1697C8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_18E16991C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18E1698AC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E161880(&qword_1EABD04E0, qword_18E1AA1A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_18E16991C(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E161880(&qword_1EABD04E0, qword_18E1AA1A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_18E169A10()
{
  result = qword_1EABCFEE8;
  if (!qword_1EABCFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEE8);
  }

  return result;
}

uint64_t sub_18E169A64(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_18E169AAC()
{
  result = qword_1EABCFEA0;
  if (!qword_1EABCFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEA0);
  }

  return result;
}

uint64_t sub_18E169B00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD03B0, &qword_18E1A8898);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E169B78()
{
  result = qword_1EABCFDC8;
  if (!qword_1EABCFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDC8);
  }

  return result;
}

unint64_t sub_18E169BCC()
{
  result = qword_1EABD00E8;
  if (!qword_1EABD00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00E8);
  }

  return result;
}

unint64_t sub_18E169C20()
{
  result = qword_1EABCFED0;
  if (!qword_1EABCFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFED0);
  }

  return result;
}

unint64_t sub_18E169C74()
{
  result = qword_1EABCFE98;
  if (!qword_1EABCFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE98);
  }

  return result;
}

unint64_t sub_18E169CC8()
{
  result = qword_1EABD03E0;
  if (!qword_1EABD03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD03E0);
  }

  return result;
}

unint64_t sub_18E169D1C()
{
  result = qword_1EABD00C0;
  if (!qword_1EABD00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00C0);
  }

  return result;
}

unint64_t sub_18E169D70()
{
  result = qword_1EABCFDC0;
  if (!qword_1EABCFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDC0);
  }

  return result;
}

unint64_t sub_18E169DC4()
{
  result = qword_1EABD0098;
  if (!qword_1EABD0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0098);
  }

  return result;
}

unint64_t sub_18E169E18()
{
  result = qword_1EABCFEC8;
  if (!qword_1EABCFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEC8);
  }

  return result;
}

unint64_t sub_18E169E6C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_18E169E7C()
{
  result = qword_1EABCFDB8;
  if (!qword_1EABCFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDB8);
  }

  return result;
}

unint64_t sub_18E169ED0()
{
  result = qword_1EABD0430;
  if (!qword_1EABD0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0430);
  }

  return result;
}

unint64_t sub_18E169F24()
{
  result = qword_1EABD0438;
  if (!qword_1EABD0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0438);
  }

  return result;
}

unint64_t sub_18E169F78()
{
  result = qword_1EABD0440;
  if (!qword_1EABD0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0440);
  }

  return result;
}

unint64_t sub_18E169FD0()
{
  result = qword_1EABCFEF0;
  if (!qword_1EABCFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEF0);
  }

  return result;
}

unint64_t sub_18E16A028()
{
  result = qword_1EABD0460;
  if (!qword_1EABD0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0460);
  }

  return result;
}

unint64_t sub_18E16A080()
{
  result = qword_1EABD0468;
  if (!qword_1EABD0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0468);
  }

  return result;
}

uint64_t sub_18E16A13C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E16A160(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 8))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
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

uint64_t sub_18E16A1B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18E16A210(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E16A264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_18E16A2C0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_18E16A2F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_18E16A330(uint64_t result, int a2, int a3)
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

uint64_t sub_18E16A3B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 464))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E16A3D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 456) = 0;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 464) = v3;
  return result;
}

uint64_t sub_18E16A4C0(uint64_t a1, int a2)
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

uint64_t sub_18E16A4E0(uint64_t result, int a2, int a3)
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

_BYTE *sub_18E16A51C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_18E16C060(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E16A7B8(unsigned __int8 *a1, int a2)
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

  return sub_18E160B38(a1);
}

_BYTE *sub_18E16A804(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RusageDataFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18E16A938(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          result = sub_18E16C060(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E16AAC4()
{
  result = qword_1EABD0478;
  if (!qword_1EABD0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0478);
  }

  return result;
}

unint64_t sub_18E16AB1C()
{
  result = qword_1EABD0480;
  if (!qword_1EABD0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0480);
  }

  return result;
}

unint64_t sub_18E16AB74()
{
  result = qword_1EABD0488;
  if (!qword_1EABD0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0488);
  }

  return result;
}

unint64_t sub_18E16ABCC()
{
  result = qword_1EABD0490;
  if (!qword_1EABD0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0490);
  }

  return result;
}

unint64_t sub_18E16AC24()
{
  result = qword_1EABD0498;
  if (!qword_1EABD0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0498);
  }

  return result;
}

unint64_t sub_18E16AC7C()
{
  result = qword_1EABD04A0;
  if (!qword_1EABD04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04A0);
  }

  return result;
}

unint64_t sub_18E16ACD4()
{
  result = qword_1EABD04A8;
  if (!qword_1EABD04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04A8);
  }

  return result;
}

unint64_t sub_18E16AD2C()
{
  result = qword_1EABD04B0;
  if (!qword_1EABD04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04B0);
  }

  return result;
}

unint64_t sub_18E16AD84()
{
  result = qword_1EABD04B8;
  if (!qword_1EABD04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04B8);
  }

  return result;
}

unint64_t sub_18E16ADDC()
{
  result = qword_1EABD04C0;
  if (!qword_1EABD04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04C0);
  }

  return result;
}

unint64_t sub_18E16AE34()
{
  result = qword_1EABD04C8;
  if (!qword_1EABD04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04C8);
  }

  return result;
}

unint64_t sub_18E16AE8C()
{
  result = qword_1EABD04D0;
  if (!qword_1EABD04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04D0);
  }

  return result;
}

unint64_t sub_18E16AEE4()
{
  result = qword_1EABD0088;
  if (!qword_1EABD0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0088);
  }

  return result;
}

unint64_t sub_18E16AF3C()
{
  result = qword_1EABD0090;
  if (!qword_1EABD0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0090);
  }

  return result;
}

unint64_t sub_18E16AF94()
{
  result = qword_1EABD00B0;
  if (!qword_1EABD00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00B0);
  }

  return result;
}

unint64_t sub_18E16AFEC()
{
  result = qword_1EABD00B8;
  if (!qword_1EABD00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00B8);
  }

  return result;
}

unint64_t sub_18E16B044()
{
  result = qword_1EABD00C8;
  if (!qword_1EABD00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00C8);
  }

  return result;
}

unint64_t sub_18E16B09C()
{
  result = qword_1EABD00D0;
  if (!qword_1EABD00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00D0);
  }

  return result;
}

unint64_t sub_18E16B0F4()
{
  result = qword_1EABD00A0;
  if (!qword_1EABD00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00A0);
  }

  return result;
}

unint64_t sub_18E16B14C()
{
  result = qword_1EABD00A8;
  if (!qword_1EABD00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00A8);
  }

  return result;
}

unint64_t sub_18E16B1A4()
{
  result = qword_1EABD00D8;
  if (!qword_1EABD00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00D8);
  }

  return result;
}

unint64_t sub_18E16B1FC()
{
  result = qword_1EABD00E0;
  if (!qword_1EABD00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00E0);
  }

  return result;
}

unint64_t sub_18E16B254()
{
  result = qword_1EABCFED8;
  if (!qword_1EABCFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFED8);
  }

  return result;
}

unint64_t sub_18E16B2AC()
{
  result = qword_1EABCFEE0;
  if (!qword_1EABCFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEE0);
  }

  return result;
}

unint64_t sub_18E16B304()
{
  result = qword_1EABCFF28;
  if (!qword_1EABCFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF28);
  }

  return result;
}

unint64_t sub_18E16B35C()
{
  result = qword_1EABCFF30;
  if (!qword_1EABCFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF30);
  }

  return result;
}

unint64_t sub_18E16B3B4()
{
  result = qword_1EABCFEF8;
  if (!qword_1EABCFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEF8);
  }

  return result;
}

unint64_t sub_18E16B40C()
{
  result = qword_1EABCFF00;
  if (!qword_1EABCFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF00);
  }

  return result;
}

unint64_t sub_18E16B464()
{
  result = qword_1EABCFF18;
  if (!qword_1EABCFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF18);
  }

  return result;
}

unint64_t sub_18E16B4BC()
{
  result = qword_1EABCFF20;
  if (!qword_1EABCFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF20);
  }

  return result;
}

unint64_t sub_18E16B514()
{
  result = qword_1EABCFF08;
  if (!qword_1EABCFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF08);
  }

  return result;
}

unint64_t sub_18E16B56C()
{
  result = qword_1EABCFF10;
  if (!qword_1EABCFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF10);
  }

  return result;
}

unint64_t sub_18E16B5C4()
{
  result = qword_1EABCFF80;
  if (!qword_1EABCFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF80);
  }

  return result;
}

unint64_t sub_18E16B61C()
{
  result = qword_1EABCFF88;
  if (!qword_1EABCFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF88);
  }

  return result;
}

unint64_t sub_18E16B674()
{
  result = qword_1EABCFF40;
  if (!qword_1EABCFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF40);
  }

  return result;
}

unint64_t sub_18E16B6CC()
{
  result = qword_1EABCFF48;
  if (!qword_1EABCFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF48);
  }

  return result;
}

unint64_t sub_18E16B724()
{
  result = qword_1EABCFF58;
  if (!qword_1EABCFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF58);
  }

  return result;
}

unint64_t sub_18E16B77C()
{
  result = qword_1EABCFF60;
  if (!qword_1EABCFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF60);
  }

  return result;
}

unint64_t sub_18E16B7D4()
{
  result = qword_1EABCFF70;
  if (!qword_1EABCFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF70);
  }

  return result;
}

unint64_t sub_18E16B82C()
{
  result = qword_1EABCFF78;
  if (!qword_1EABCFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF78);
  }

  return result;
}

unint64_t sub_18E16B884()
{
  result = qword_1EABCFF90;
  if (!qword_1EABCFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF90);
  }

  return result;
}

unint64_t sub_18E16B8DC()
{
  result = qword_1EABCFF98;
  if (!qword_1EABCFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF98);
  }

  return result;
}

unint64_t sub_18E16B934()
{
  result = qword_1EABCFFC8;
  if (!qword_1EABCFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFC8);
  }

  return result;
}

unint64_t sub_18E16B98C()
{
  result = qword_1EABCFFD0;
  if (!qword_1EABCFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFD0);
  }

  return result;
}

unint64_t sub_18E16B9E4()
{
  result = qword_1EABCFFA0;
  if (!qword_1EABCFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFA0);
  }

  return result;
}

unint64_t sub_18E16BA3C()
{
  result = qword_1EABCFFA8;
  if (!qword_1EABCFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFA8);
  }

  return result;
}

unint64_t sub_18E16BA94()
{
  result = qword_1EABCFFB0;
  if (!qword_1EABCFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFB0);
  }

  return result;
}

unint64_t sub_18E16BAEC()
{
  result = qword_1EABCFFB8;
  if (!qword_1EABCFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFB8);
  }

  return result;
}

uint64_t sub_18E16BB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E16BBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_18E16BC30(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_18E167B70(a1, a2, a3);
}

uint64_t sub_18E16BC38(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD04E8, &unk_18E1B1920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E16BCA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18E16BD00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18E16BD28()
{
  result = qword_1EABCFEC0;
  if (!qword_1EABCFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEC0);
  }

  return result;
}

void sub_18E16BD7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_18E165D0C(a1, a2, a3);
}

uint64_t *sub_18E16BD84(uint64_t a1, uint64_t *a2)
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