unint64_t sub_22BE86ECC()
{
  result = qword_28106EB20;
  if (!qword_28106EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106EB20);
  }

  return result;
}

unint64_t sub_22BE86F24()
{
  result = qword_28106EB28;
  if (!qword_28106EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106EB28);
  }

  return result;
}

uint64_t PlannerInferenceRequest.promptRequest.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22BE86FB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x655274706D6F7270 && a2 == 0xED00007473657571)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE86FB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE87084(uint64_t a1)
{
  v2 = sub_22BE87130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE870C0(uint64_t a1)
{
  v2 = sub_22BE87130();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22BE87130()
{
  result = qword_27D907E10;
  if (!qword_27D907E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E10);
  }

  return result;
}

uint64_t sub_22BE871E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x655274706D6F7270 && a2 == 0xEE0065736E6F7073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE871E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE872BC(uint64_t a1)
{
  v2 = sub_22BE87490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE872F8(uint64_t a1)
{
  v2 = sub_22BE87490();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BE87368()
{
  sub_22BE19130();
  v17 = v1;
  v3 = v2;
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE179D8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  v14 = v0[1];
  v16 = *v0;
  v15 = v3[4];
  sub_22BE1BD3C(v3, v3[3]);
  v17();
  sub_22C274234();
  sub_22C273F54();
  (*(v8 + 8))(v13, v6);
  sub_22BE18478();
}

unint64_t sub_22BE87490()
{
  result = qword_27D907E28;
  if (!qword_27D907E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E28);
  }

  return result;
}

void sub_22BE87518()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = v4[4];
  sub_22BE1BD3C(v4, v4[3]);
  v2();
  sub_22C274214();
  if (!v0)
  {
    v13 = sub_22C273E64();
    v15 = v14;
    v16 = sub_22BE1A1A0();
    v17(v16, v8);
    *v18 = v13;
    v18[1] = v15;
  }

  sub_22BE26B64(v4);
  sub_22BE18478();
}

uint64_t sub_22BE876B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000022C2D2F20 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE876B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE87784(uint64_t a1)
{
  v2 = sub_22BE87920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE877C0(uint64_t a1)
{
  v2 = sub_22BE87920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationInferenceRequest.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907E38, &qword_22C2782F0);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE87920();
  sub_22BE1B02C();
  type metadata accessor for ResponseGenerationInput(0);
  sub_22BE1A560();
  sub_22BE88208(v7, v8);
  sub_22BE888A0();
  v9 = sub_22BE1A1A0();
  return v10(v9, v2);
}

unint64_t sub_22BE87920()
{
  result = qword_27D907E40;
  if (!qword_27D907E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E40);
  }

  return result;
}

void ResponseGenerationInferenceRequest.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v26 = v4;
  v5 = type metadata accessor for ResponseGenerationInput(0);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v28 = v10 - v9;
  v11 = sub_22BE5CE4C(&qword_27D907E50, &qword_22C2782F8);
  sub_22BE179D8(v11);
  v27 = v12;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE1AED0();
  v17 = type metadata accessor for ResponseGenerationInferenceRequest(v16);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_22BE179EC();
  v21 = v20 - v19;
  v22 = v3[4];
  sub_22BE1BD3C(v3, v3[3]);
  sub_22BE87920();
  sub_22BE382C4();
  sub_22C274214();
  if (!v0)
  {
    sub_22BE1A560();
    sub_22BE88208(v23, v24);
    sub_22C273EB4();
    (*(v27 + 8))(v1, v11);
    sub_22BE18460();
    sub_22BE87B98(v28, v21, v25);
    sub_22BE87B98(v21, v26, type metadata accessor for ResponseGenerationInferenceRequest);
  }

  sub_22BE26B64(v3);
  sub_22BE18478();
}

uint64_t sub_22BE87B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t ResponseGenerationInferenceResponse.systemResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C26F754();
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ResponseGenerationInferenceResponse.init(systemResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26F754();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_22BE87CEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65526D6574737973 && a2 == 0xEE0065736E6F7073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE87CEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE87DC0(uint64_t a1)
{
  v2 = sub_22BE87F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE87DFC(uint64_t a1)
{
  v2 = sub_22BE87F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationInferenceResponse.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907E60, &qword_22C278300);
  sub_22BE179D8(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE87F5C();
  sub_22BE1B02C();
  sub_22C26F754();
  sub_22BE1BE08();
  sub_22BE88208(v7, v8);
  sub_22BE888A0();
  v9 = sub_22BE1A1A0();
  return v10(v9, v2);
}

unint64_t sub_22BE87F5C()
{
  result = qword_27D907E68;
  if (!qword_27D907E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E68);
  }

  return result;
}

void ResponseGenerationInferenceResponse.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v28 = v4;
  v5 = sub_22C26F754();
  v6 = sub_22BE179D8(v5);
  v26 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v29 = v11 - v10;
  v12 = sub_22BE5CE4C(&qword_27D907E78, &qword_22C278308);
  sub_22BE179D8(v12);
  v27 = v13;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE1AED0();
  v18 = type metadata accessor for ResponseGenerationInferenceResponse(v17);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  sub_22BE179EC();
  v22 = v21 - v20;
  v23 = v3[4];
  sub_22BE1BD3C(v3, v3[3]);
  sub_22BE87F5C();
  sub_22BE382C4();
  sub_22C274214();
  if (!v0)
  {
    sub_22BE1BE08();
    sub_22BE88208(v24, v25);
    sub_22C273EB4();
    (*(v27 + 8))(v1, v12);
    (*(v26 + 32))(v22, v29, v5);
    sub_22BE87B98(v22, v28, type metadata accessor for ResponseGenerationInferenceResponse);
  }

  sub_22BE26B64(v3);
  sub_22BE18478();
}

uint64_t sub_22BE88208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE88320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_22BE883C0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE88470()
{
  result = qword_27D907EA8;
  if (!qword_27D907EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EA8);
  }

  return result;
}

unint64_t sub_22BE884C8()
{
  result = qword_27D907EB0;
  if (!qword_27D907EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EB0);
  }

  return result;
}

unint64_t sub_22BE88520()
{
  result = qword_27D907EB8;
  if (!qword_27D907EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EB8);
  }

  return result;
}

unint64_t sub_22BE88578()
{
  result = qword_27D907EC0;
  if (!qword_27D907EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EC0);
  }

  return result;
}

unint64_t sub_22BE885D0()
{
  result = qword_27D907EC8;
  if (!qword_27D907EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EC8);
  }

  return result;
}

unint64_t sub_22BE88628()
{
  result = qword_27D907ED0;
  if (!qword_27D907ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907ED0);
  }

  return result;
}

unint64_t sub_22BE88680()
{
  result = qword_27D907ED8;
  if (!qword_27D907ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907ED8);
  }

  return result;
}

unint64_t sub_22BE886D8()
{
  result = qword_27D907EE0;
  if (!qword_27D907EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EE0);
  }

  return result;
}

unint64_t sub_22BE88730()
{
  result = qword_27D907EE8;
  if (!qword_27D907EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EE8);
  }

  return result;
}

unint64_t sub_22BE88788()
{
  result = qword_27D907EF0;
  if (!qword_27D907EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EF0);
  }

  return result;
}

unint64_t sub_22BE887E0()
{
  result = qword_27D907EF8;
  if (!qword_27D907EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EF8);
  }

  return result;
}

unint64_t sub_22BE88838()
{
  result = qword_27D907F00;
  if (!qword_27D907F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F00);
  }

  return result;
}

uint64_t sub_22BE888A0()
{

  return sub_22C273FA4();
}

uint64_t PlannerSpanMatchServiceInput.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22BE88900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE8898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE88900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE889B8(uint64_t a1)
{
  v2 = sub_22BE88B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE889F4(uint64_t a1)
{
  v2 = sub_22BE88B44();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerSpanMatchServiceInput.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D907F08, &qword_22C278940);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  sub_22BE1BD3C(v3, v3[3]);
  sub_22BE88B44();
  sub_22C274234();
  sub_22C273F54();
  (*(v6 + 8))(v1, v4);
  sub_22BE18478();
}

unint64_t sub_22BE88B44()
{
  result = qword_28107D3F8;
  if (!qword_28107D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3F8);
  }

  return result;
}

void PlannerSpanMatchServiceInput.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D907F10, &qword_22C278948);
  sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = v2[4];
  sub_22BE1BD3C(v2, v2[3]);
  sub_22BE88B44();
  sub_22BE18878();
  if (!v0)
  {
    v10 = sub_22C273E64();
    v12 = v11;
    v13 = sub_22BE17B24();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
  }

  sub_22BE26B64(v2);
  sub_22BE18478();
}

uint64_t sub_22BE88D00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365686374616DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE88D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE88D00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE88DC0(uint64_t a1)
{
  v2 = sub_22BE88FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE88DFC(uint64_t a1)
{
  v2 = sub_22BE88FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerSpanMatchServiceOutput.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22BE5CE4C(&qword_27D907F18, &unk_22C278950);
  sub_22BE179D8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  sub_22BE1BD3C(v24, v24[3]);
  sub_22BE88FC4();

  sub_22C274234();
  a10 = v33;
  sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
  sub_22BE8918C(&qword_28106DDA8, &qword_28107F1A0);
  sub_22C273FA4();

  (*(v27 + 8))(v32, v25);
  sub_22BE18478();
}

unint64_t sub_22BE88FC4()
{
  result = qword_28107D3E0;
  if (!qword_28107D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3E0);
  }

  return result;
}

void PlannerSpanMatchServiceOutput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D907F20, &qword_22C278960);
  sub_22BE179D8(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = v12[4];
  sub_22BE1BD3C(v12, v12[3]);
  sub_22BE88FC4();
  sub_22BE18878();
  if (!v10)
  {
    sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
    sub_22BE8918C(&qword_27D907F28, &qword_27D907F30);
    sub_22C273EB4();
    v20 = sub_22BE17B24();
    v21(v20);
    *v14 = a10;
  }

  sub_22BE26B64(v12);
  sub_22BE18478();
}

uint64_t sub_22BE8918C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D907878, &qword_22C275A30);
    sub_22BE89214(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE89214(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C270FD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_22BE892B8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE89368()
{
  result = qword_27D907F38;
  if (!qword_27D907F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F38);
  }

  return result;
}

unint64_t sub_22BE893C0()
{
  result = qword_27D907F40;
  if (!qword_27D907F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F40);
  }

  return result;
}

unint64_t sub_22BE89418()
{
  result = qword_28107D3D0;
  if (!qword_28107D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3D0);
  }

  return result;
}

unint64_t sub_22BE89470()
{
  result = qword_28107D3D8;
  if (!qword_28107D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3D8);
  }

  return result;
}

unint64_t sub_22BE894C8()
{
  result = qword_28107D3E8;
  if (!qword_28107D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3E8);
  }

  return result;
}

unint64_t sub_22BE89520()
{
  result = qword_28107D3F0;
  if (!qword_28107D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3F0);
  }

  return result;
}

uint64_t Session.SessionEnded.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C26E1D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22BE895E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE89660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE895E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8968C(uint64_t a1)
{
  v2 = sub_22BE47CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE896C8(uint64_t a1)
{
  v2 = sub_22BE47CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.SessionEnded.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_22C26E1D4();
  v4 = sub_22BE179D8(v3);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D907F50, &qword_22C278CB8);
  v10 = sub_22BE179D8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v25 - v15;
  v17 = type metadata accessor for Session.SessionEnded();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE47CD0();
  v22 = v29;
  sub_22C274214();
  if (!v22)
  {
    v23 = v27;
    sub_22BE20414(&qword_27D907F58);
    sub_22C273EB4();
    (*(v12 + 8))(v16, v9);
    (*(v23 + 32))(v20, v28, v3);
    sub_22BE899A4(v20, v26);
  }

  return sub_22BE26B64(a1);
}

uint64_t type metadata accessor for Session.SessionEnded()
{
  result = qword_28106F130;
  if (!qword_28106F130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE899A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.SessionEnded();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE89A48()
{
  result = sub_22C26E1D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22BE89AC8()
{
  result = qword_27D907F60;
  if (!qword_27D907F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F60);
  }

  return result;
}

unint64_t sub_22BE89B20()
{
  result = qword_28106F168;
  if (!qword_28106F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F168);
  }

  return result;
}

unint64_t sub_22BE89B78()
{
  result = qword_28106F170;
  if (!qword_28106F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F170);
  }

  return result;
}

uint64_t sub_22BE89BDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE89C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE89BDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE89C9C(uint64_t a1)
{
  v2 = sub_22BE89E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE89CD8(uint64_t a1)
{
  v2 = sub_22BE89E60();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerFeatureStoreBindingVariables.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22BE5CE4C(&qword_27D907F68, &qword_22C278E40);
  sub_22BE179D8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  sub_22BE26950(v24, v24[3]);
  sub_22BE89E60();

  sub_22BE2BC6C();
  sub_22C274234();
  a10 = v33;
  sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
  sub_22BE89EB4();
  sub_22C273FA4();

  (*(v27 + 8))(v32, v25);
  sub_22BE18478();
}

unint64_t sub_22BE89E60()
{
  result = qword_27D907F70;
  if (!qword_27D907F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F70);
  }

  return result;
}

unint64_t sub_22BE89EB4()
{
  result = qword_27D907F80;
  if (!qword_27D907F80)
  {
    sub_22BE7431C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A1D4(&unk_27D907F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F80);
  }

  return result;
}

unint64_t sub_22BE89F70()
{
  result = qword_27D907F98;
  if (!qword_27D907F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F98);
  }

  return result;
}

void TGToolInteropTypes.FullPlannerFeatureStoreBindingVariables.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D907FA0, &qword_22C278E58);
  sub_22BE179D8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = v12[4];
  sub_22BE26950(v12, v12[3]);
  sub_22BE89E60();
  sub_22BE2BC6C();
  sub_22C274214();
  if (!v10)
  {
    sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A118();
    sub_22C273EB4();
    v22 = *(v17 + 8);
    v23 = sub_22BE1AB1C();
    v24(v23);
    *v14 = a10;
  }

  sub_22BE26B64(v12);
  sub_22BE18478();
}

unint64_t sub_22BE8A118()
{
  result = qword_27D907FA8;
  if (!qword_27D907FA8)
  {
    sub_22BE7431C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A1D4(&unk_27D907FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FA8);
  }

  return result;
}

unint64_t sub_22BE8A1D4(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D907F90, &qword_22C278E50);
    v2();
    result = sub_22BE8FB98();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BE8A234()
{
  result = qword_27D907FB8;
  if (!qword_27D907FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FB8);
  }

  return result;
}

uint64_t TGToolInteropTypes.CodableContent.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

IntelligenceFlowPlannerSupport::TGToolInteropTypes::CodableContent::ContentType_optional __swiftcall TGToolInteropTypes.CodableContent.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

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

uint64_t TGToolInteropTypes.CodableContent.ContentType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65747441666C6573;
  }

  else
  {
    result = 0x676E69727473;
  }

  *v0;
  return result;
}

uint64_t sub_22BE8A3D4@<X0>(uint64_t *a1@<X8>)
{
  result = TGToolInteropTypes.CodableContent.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE8A4AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BE8A570(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22BE8A5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8A4AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8A5CC(uint64_t a1)
{
  v2 = sub_22BE8A7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8A608(uint64_t a1)
{
  v2 = sub_22BE8A7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.CodableContent.encode(to:)()
{
  sub_22BE19130();
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D907FC0, &qword_22C278E60);
  sub_22BE179D8(v5);
  v13 = v6;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = *v0;
  v11 = v0[1];
  v14 = *(v0 + 16);
  v12 = v4[4];
  sub_22BE26950(v4, v4[3]);
  sub_22BE8A7A0();
  sub_22C274234();
  sub_22BE1AEE4();
  sub_22BE1C270();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE8A7F4();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  (*(v13 + 8))(v2, v5);
  sub_22BE18478();
}

unint64_t sub_22BE8A7A0()
{
  result = qword_27D907FC8;
  if (!qword_27D907FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FC8);
  }

  return result;
}

unint64_t sub_22BE8A7F4()
{
  result = qword_27D907FD0;
  if (!qword_27D907FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FD0);
  }

  return result;
}

void TGToolInteropTypes.CodableContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BE19130();
  v14 = v13;
  v16 = v15;
  v17 = sub_22BE5CE4C(&qword_27D907FD8, &qword_22C278E68);
  sub_22BE179D8(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE234F4();
  v21 = v14[4];
  sub_22BE26950(v14, v14[3]);
  sub_22BE8A7A0();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v12)
  {
    sub_22BE26B64(v14);
  }

  else
  {
    v22 = sub_22C273E64();
    v24 = v23;
    sub_22BE8A9F4();
    sub_22C273EB4();
    v25 = sub_22BE17B54();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    sub_22BE26B64(v14);
  }

  sub_22BE18478();
}

unint64_t sub_22BE8A9F4()
{
  result = qword_27D907FE0;
  if (!qword_27D907FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FE0);
  }

  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.init(mode:parameterizedPrompts:modelBundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.mode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.modelBundleId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22BE19454();
}

IntelligenceFlowPlannerSupport::TGToolInteropTypes::FullPlannerAutomationJSON::InputPromptType_optional __swiftcall TGToolInteropTypes.FullPlannerAutomationJSON.InputPromptType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.InputPromptType.rawValue.getter()
{
  v1 = 0x444974706D6F7270;
  if (*v0 != 1)
  {
    v1 = 0x655474706D6F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_22BE8ABD8@<X0>(uint64_t *a1@<X8>)
{
  result = TGToolInteropTypes.FullPlannerAutomationJSON.InputPromptType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE8ACB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x78616D677261 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE8AD40(uint64_t a1)
{
  v2 = sub_22BE8B04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8AD7C(uint64_t a1)
{
  v2 = sub_22BE8B04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8ACB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8ADE8(uint64_t a1)
{
  v2 = sub_22BE8AFF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8AE24(uint64_t a1)
{
  v2 = sub_22BE8AFF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = sub_22BE5CE4C(&qword_27D907FE8, &qword_22C278E70);
  sub_22BE179D8(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = sub_22BE5CE4C(&qword_27D907FF0, &qword_22C278E78);
  sub_22BE179D8(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE234F4();
  v40 = v25[4];
  sub_22BE26950(v25, v25[3]);
  sub_22BE8AFF8();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE8B04C();
  sub_22C273EE4();
  (*(v28 + 8))(v33, v26);
  (*(v36 + 8))(v21, v34);
  sub_22BE18478();
}

unint64_t sub_22BE8AFF8()
{
  result = qword_27D907FF8;
  if (!qword_27D907FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FF8);
  }

  return result;
}

unint64_t sub_22BE8B04C()
{
  result = qword_27D908000;
  if (!qword_27D908000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908000);
  }

  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration.hashValue.getter()
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

void TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D908008, &qword_22C278E80);
  sub_22BE179D8(v3);
  v41 = v4;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_22BE5CE4C(&qword_27D908010, &unk_22C278E88);
  sub_22BE179D8(v10);
  v42 = v11;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BE8AFF8();
  sub_22C274214();
  if (v0)
  {
    goto LABEL_9;
  }

  v39 = v9;
  v40 = v2;
  v18 = sub_22C273ED4();
  v19 = sub_22BE7C5C4(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v41 = v19;
LABEL_8:
    v32 = v10;
    v33 = sub_22C273B34();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v35 = &type metadata for TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v22, v32);
    v2 = v40;
LABEL_9:
    v37 = v2;
    goto LABEL_10;
  }

  if (v20 < (v21 >> 1))
  {
    v23 = sub_22BE7C5C0(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v40;
    v30 = v41;
    if (v28)
    {
      sub_22BE8B04C();
      v31 = v39;
      sub_22C273DE4();
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v42 + 8))(v22, v10);
      v37 = v29;
LABEL_10:
      sub_22BE26B64(v37);
      sub_22BE18478();
      return;
    }

    v41 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.locale.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.temperature.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.frequencyPenalty.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.lengthPenalty.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.stopSequence.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.maxTokens.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.randomSeed.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.promptLookupDraftSteps.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.schema.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.grammar.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.dynamicPartsOfGrammars.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.timeout.getter()
{
  result = *(v0 + 232);
  v2 = *(v0 + 240);
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.priorInferenceOutput.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.output.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return sub_22BE19454();
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.output.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 280);

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

__n128 TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.init(prompt:inputPromptType:locale:inputVariableBindings:inputImageVariableBindings:inputRichVariableBindings:samplingStrategyConfiguration:temperature:frequencyPenalty:lengthPenalty:stopSequence:maxTokens:randomSeed:promptLookupDraftSteps:speculativeSampling:tokenHealing:speculativeDecoding:schema:grammar:dynamicPartsOfGrammars:timeout:useHighQualityImageTokenization:output:userData:priorOutputCache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, char a24, __int16 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, __n128 a35)
{
  result = a35;
  v36 = *a3;
  v37 = *a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v36;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v37;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14 & 1;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16 & 1;
  *(a9 + 120) = a17;
  *(a9 + 136) = a18;
  *(a9 + 144) = a19 & 1;
  *(a9 + 152) = a20;
  *(a9 + 160) = a21 & 1;
  *(a9 + 168) = a22;
  *(a9 + 176) = a23 & 1;
  *(a9 + 177) = a24;
  *(a9 + 178) = a25;
  *(a9 + 184) = a26;
  *(a9 + 200) = a27;
  *(a9 + 216) = a28;
  *(a9 + 232) = a29;
  *(a9 + 240) = a30 & 1;
  *(a9 + 241) = a31;
  *(a9 + 272) = a32;
  *(a9 + 280) = a33;
  *(a9 + 264) = a34;
  *(a9 + 248) = a35;
  return result;
}

uint64_t sub_22BE8B888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72507475706E69 && a2 == 0xEF6570795474706DLL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000022C2D2F40 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x800000022C2D2F60 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x800000022C2D2F80 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x800000022C2D2FA0 == a2;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000022C2D2FC0 == a2;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x75716553706F7473 && a2 == 0xEC00000065636E65;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x800000022C2D2FE0 == a2;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x800000022C2D3000 == a2;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x800000022C2D3020 == a2;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x72616D6D617267 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_22C274014() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000016 && 0x800000022C2D3040 == a2;
                                        if (v24 || (sub_22C274014() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
                                          if (v25 || (sub_22C274014() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001FLL && 0x800000022C2D3060 == a2;
                                            if (v26 || (sub_22C274014() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x800000022C2D3080 == a2;
                                              if (v27 || (sub_22C274014() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_22C274014() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_22C274014();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BE8BFDC(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0x6F72507475706E69;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x74617265706D6574;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x65506874676E656CLL;
      break;
    case 10:
      result = 0x75716553706F7473;
      break;
    case 11:
      result = 0x6E656B6F5478616DLL;
      break;
    case 12:
      result = 0x65536D6F646E6172;
      break;
    case 13:
    case 19:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6165486E656B6F74;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x616D65686373;
      break;
    case 18:
      result = 0x72616D6D617267;
      break;
    case 20:
      result = 0x74756F656D6974;
      break;
    case 21:
      result = 0xD00000000000001FLL;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x6174614472657375;
      break;
    case 24:
      result = 0x74757074756FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BE8C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8B888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8C2D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE8BFD4();
  *a1 = result;
  return result;
}

uint64_t sub_22BE8C300(uint64_t a1)
{
  v2 = sub_22BE8E308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8C33C(uint64_t a1)
{
  v2 = sub_22BE8E308();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.encode(to:)()
{
  sub_22BE19130();
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D908018, &qword_22C278E98);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v11 = *v0;
  v12 = v0[1];
  v50 = *(v0 + 16);
  v48 = v0[4];
  v49 = v0[3];
  v46 = v0[6];
  v47 = v0[5];
  v45 = v0[7];
  v51 = *(v0 + 64);
  v43 = v0[9];
  v44 = *(v0 + 80);
  v41 = v0[11];
  v42 = *(v0 + 96);
  v40 = *(v0 + 112);
  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[13];
  v35 = v0[17];
  v36 = *(v0 + 144);
  v33 = v0[19];
  v34 = *(v0 + 160);
  v31 = v0[21];
  v32 = *(v0 + 176);
  v30 = *(v0 + 177);
  v29 = *(v0 + 178);
  v28 = *(v0 + 179);
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[25];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[28];
  v20 = v0[29];
  v21 = *(v0 + 240);
  v22 = *(v0 + 241);
  v23 = v0[31];
  v24 = v0[32];
  v25 = v0[33];
  v26 = v0[34];
  v27 = v0[35];
  v13 = v4[4];
  sub_22BE26950(v4, v4[3]);
  sub_22BE8E308();
  sub_22C274234();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE8E35C();
    sub_22BE3E4F8();
    sub_22C273FA4();
    sub_22BE8FB8C(2);
    sub_22BE25400();
    sub_22C273EF4();
    sub_22BE5CE4C(&qword_27D908030, &qword_22C278EA0);
    sub_22BE8E504(&unk_27D908038);
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE5CE4C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE8E3B0();
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE89EB4();
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE8E45C();
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE8FB8C(7);
    sub_22BE25400();
    sub_22C273F14();
    sub_22BE8FB8C(8);
    sub_22BE25400();
    sub_22C273F14();
    sub_22BE8FB8C(9);
    sub_22BE25400();
    sub_22C273F14();
    sub_22BE8FB8C(10);
    sub_22C273EF4();
    sub_22BE8FB8C(11);
    sub_22BE1B2E4();
    sub_22C273F24();
    sub_22BE8FB8C(12);
    sub_22BE1B2E4();
    sub_22C273F24();
    sub_22BE8FB8C(13);
    sub_22BE1B2E4();
    sub_22C273F24();
    sub_22BE372F0(14);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE372F0(15);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE372F0(16);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE8FB8C(17);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE8FB8C(18);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE8FB8C(19);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE8FB8C(20);
    sub_22BE1B2E4();
    sub_22C273F14();
    sub_22BE372F0(21);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE8FB8C(22);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE1B974();
    sub_22C273F34();
    sub_22BE8FB8C(24);
    sub_22BE1B2E4();
    sub_22C273EF4();
  }

  (*(v7 + 8))(v2, v5);
  sub_22BE19650();
  sub_22BE18478();
}

void TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D908060, &qword_22C278EB8);
  sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  v9 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BE8E308();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    v134 = v4;
    LOBYTE(v68[0]) = 0;
    sub_22BE23070();
    v10 = sub_22C273E64();
    v65 = v11;
    sub_22BE8E4B0();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273EB4();
    sub_22BE18C98(2);
    v66 = sub_22C273E04();
    v64 = v12;
    sub_22BE5CE4C(&qword_27D908030, &qword_22C278EA0);
    sub_22BE8E504(&unk_27D908070);
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v63 = v68[0];
    sub_22BE5CE4C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE8E568();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v62 = v68[0];
    sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A118();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v61 = v68[0];
    sub_22BE8E614();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v132 = 0;
    sub_22BE18C98(7);
    v54 = sub_22C273E24();
    v130 = v13 & 1;
    sub_22BE18C98(8);
    v53 = sub_22C273E24();
    v128 = v14 & 1;
    sub_22BE18C98(9);
    v52 = sub_22C273E24();
    v126 = v15 & 1;
    sub_22BE18C98(10);
    v51 = sub_22C273E04();
    v60 = v16;
    sub_22BE18C98(11);
    v50 = sub_22C273E34();
    v124 = v17 & 1;
    sub_22BE18C98(12);
    v49 = sub_22C273E34();
    v122 = v18 & 1;
    sub_22BE18C98(13);
    v48 = sub_22C273E34();
    v120 = v19 & 1;
    sub_22BE18C98(14);
    v47 = sub_22C273E14();
    sub_22BE18C98(15);
    v46 = sub_22C273E14();
    sub_22BE18C98(16);
    v45 = sub_22C273E14();
    sub_22BE18C98(17);
    v44 = sub_22C273E04();
    v59 = v20;
    sub_22BE18C98(18);
    v43 = sub_22C273E04();
    v58 = v21;
    sub_22BE18C98(19);
    v42 = sub_22C273E04();
    v57 = v22;
    sub_22BE18C98(20);
    v41 = sub_22C273E24();
    v119 = v23 & 1;
    sub_22BE18C98(21);
    v40 = sub_22C273E14();
    sub_22BE18C98(22);
    v39 = sub_22C273E04();
    v56 = v24;
    LOBYTE(v67[0]) = 23;
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v55 = v68[0];
    v116 = 24;
    sub_22BE23070();
    v25 = sub_22C273E04();
    v37 = v26;
    v38 = v25;
    v27 = sub_22BE1A578();
    v28(v27);
    v67[0] = v10;
    v67[1] = v65;
    LOBYTE(v67[2]) = 0;
    *(&v67[2] + 1) = v133[0];
    HIDWORD(v67[2]) = *(v133 + 3);
    v67[3] = v66;
    v67[4] = v64;
    v67[5] = v63;
    v67[6] = v62;
    v67[7] = v61;
    v32 = v132;
    LOBYTE(v67[8]) = v132;
    *(&v67[8] + 1) = *v131;
    HIDWORD(v67[8]) = *&v131[3];
    v67[9] = v54;
    v31 = v130;
    LOBYTE(v67[10]) = v130;
    *(&v67[10] + 1) = *v129;
    HIDWORD(v67[10]) = *&v129[3];
    v67[11] = v53;
    v36 = v128;
    LOBYTE(v67[12]) = v128;
    *(&v67[12] + 1) = *v127;
    HIDWORD(v67[12]) = *&v127[3];
    v67[13] = v52;
    v35 = v126;
    LOBYTE(v67[14]) = v126;
    HIDWORD(v67[14]) = *&v125[3];
    *(&v67[14] + 1) = *v125;
    v67[15] = v51;
    v67[16] = v60;
    v67[17] = v50;
    v34 = v124;
    LOBYTE(v67[18]) = v124;
    HIDWORD(v67[18]) = *&v123[3];
    *(&v67[18] + 1) = *v123;
    v67[19] = v49;
    v33 = v122;
    LOBYTE(v67[20]) = v122;
    *(&v67[20] + 1) = *v121;
    HIDWORD(v67[20]) = *&v121[3];
    v67[21] = v48;
    *(&v67[30] + 2) = v117;
    v30 = v120;
    LOBYTE(v67[22]) = v120;
    BYTE1(v67[22]) = v47;
    BYTE2(v67[22]) = v46;
    BYTE3(v67[22]) = v45;
    v67[23] = v44;
    v67[24] = v59;
    v67[25] = v43;
    v67[26] = v58;
    v67[27] = v42;
    v67[28] = v57;
    v67[29] = v41;
    HIWORD(v67[30]) = v118;
    v29 = v119;
    LOBYTE(v67[30]) = v119;
    BYTE1(v67[30]) = v40;
    v67[31] = v39;
    v67[32] = v56;
    v67[33] = v55;
    v67[34] = v38;
    v67[35] = v37;
    memcpy(v134, v67, 0x120uLL);
    sub_22BE8E668(v67, v68);
    sub_22BE26B64(v2);
    v68[0] = v10;
    v68[1] = v65;
    v69 = 0;
    v71 = v66;
    v72 = v64;
    v73 = v63;
    v74 = v62;
    v75 = v61;
    v76 = v32;
    v78 = v54;
    v79 = v31;
    *v70 = v133[0];
    *&v70[3] = *(v133 + 3);
    *v77 = *v131;
    *&v77[3] = *&v131[3];
    *v80 = *v129;
    *&v80[3] = *&v129[3];
    v81 = v53;
    v82 = v36;
    *v83 = *v127;
    *&v83[3] = *&v127[3];
    v84 = v52;
    v85 = v35;
    *v86 = *v125;
    *&v86[3] = *&v125[3];
    v87 = v51;
    v88 = v60;
    v89 = v50;
    v90 = v34;
    *&v91[3] = *&v123[3];
    *v91 = *v123;
    v92 = v49;
    v93 = v33;
    *&v94[3] = *&v121[3];
    *v94 = *v121;
    v95 = v48;
    v96 = v30;
    v97 = v47;
    v98 = v46;
    v99 = v45;
    v100 = v44;
    v101 = v59;
    v102 = v43;
    v103 = v58;
    v104 = v42;
    v105 = v57;
    v106 = v41;
    v107 = v29;
    v108 = v40;
    v110 = v118;
    v109 = v117;
    v111 = v39;
    v112 = v56;
    v113 = v55;
    v114 = v38;
    v115 = v37;
    sub_22BE8E6A0(v68);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void static TGToolInteropTypes.FullPlannerAutomationJSON.Parse(filePath:)()
{
  sub_22BE19130();
  v35[0] = v1;
  v2 = sub_22C26DEA4();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = *(*(sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0) - 8) + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = sub_22C26DF64();
  v16 = sub_22BE179D8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v23 = v22 - v21;
  sub_22BE19DC4(v14, 1, 1, v15);
  (*(v5 + 104))(v10, *MEMORY[0x277CC91D8], v2);

  sub_22C26DF44();
  v24 = sub_22C26DFA4();
  if (v0)
  {
    (*(v18 + 8))(v23, v15);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    v28 = v35[0];
    (*(v18 + 8))(v23, v15);
    v29 = sub_22C26DB74();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_22C26DB64();
    sub_22BE8E6D0();
    sub_22C26DB54();

    sub_22BE29DD4(v26, v27);
    v32 = v35[2];
    v33 = v37;
    v34 = v36;
    *v28 = v35[1];
    *(v28 + 8) = v32;
    *(v28 + 16) = v34;
    *(v28 + 32) = v33;
  }

  sub_22BE19650();
  sub_22BE18478();
}

void static TGToolInteropTypes.FullPlannerAutomationJSON.Serialize(json:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22C26DBA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v34 = v2[1];
  v35 = *v2;
  v6 = *(v2 + 4);
  v7 = sub_22C26DC34();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_22C26DC24();
  sub_22BE5CE4C(&qword_27D908098, &qword_22C278EC8);
  v10 = *(v4 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_22C2759F0;
  sub_22C26DB94();
  sub_22C26DB84();
  sub_22BE8E724();
  sub_22BE5CE4C(&qword_27D9080A0, &qword_22C278ED0);
  sub_22BE8E77C();
  sub_22C2739B4();
  sub_22C26DBB4();
  v40 = v35;
  v41 = v34;
  v42 = v6;
  sub_22BE8E7E0();
  v12 = sub_22C26DC04();
  if (!v0)
  {
    v14 = v12;
    v15 = v13;
    sub_22BE29D7C(v12, v13);
    v16 = sub_22BE1AB1C();
    sub_22BE8E9B8(v16, v17);
    if (v18)
    {
      v19 = sub_22BE1AB1C();
      sub_22BE29DD4(v19, v20);
    }

    else
    {
      v38 = v14;
      v39 = v15;
      v21 = sub_22BE1AB1C();
      sub_22BE29D7C(v21, v22);
      sub_22BE5CE4C(&qword_27D9080B0, &qword_22C278ED8);
      if (swift_dynamicCast())
      {
        sub_22BE49224(v36, &v40);
        sub_22BE26950(&v40, *(&v41 + 1));
        sub_22BE1AEE4();
        v23 = sub_22C273D54();
        v24 = sub_22BE1AB1C();
        sub_22BE29DD4(v24, v25);
        if (v23)
        {
          sub_22BE26950(&v40, *(&v41 + 1));
          sub_22C273D44();

          v26 = sub_22BE1AB1C();
          sub_22BE29DD4(v26, v27);
          sub_22BE26B64(&v40);
          goto LABEL_12;
        }

        sub_22BE26B64(&v40);
      }

      else
      {
        v28 = sub_22BE1AB1C();
        sub_22BE29DD4(v28, v29);
        v37 = 0;
        memset(v36, 0, sizeof(v36));
        sub_22BE8EB84(v36);
      }

      v30 = sub_22BE1AB1C();
      sub_22BE8E260(v30, v31);
    }

    v32 = sub_22BE1AB1C();
    sub_22BE29DD4(v32, v33);
    goto LABEL_12;
  }

LABEL_12:
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BE8DB9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000022C2D30A0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E75426C65646F6DLL && a2 == 0xED00006449656C64)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22BE8DCBC(char a1)
{
  if (!a1)
  {
    return 1701080941;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6E75426C65646F6DLL;
}

uint64_t sub_22BE8DD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8DB9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8DD4C(uint64_t a1)
{
  v2 = sub_22BE8EBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8DD88(uint64_t a1)
{
  v2 = sub_22BE8EBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.encode(to:)()
{
  sub_22BE19130();
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D9080C0, &qword_22C278EE8);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v14 = v0[4];
  v13 = v4[4];
  sub_22BE26950(v4, v4[3]);
  sub_22BE8EBEC();
  sub_22C274234();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE5CE4C(&qword_27D9080D0, &qword_22C278EF0);
    sub_22BE8EC40(&unk_27D9080D8);
    sub_22BE1C270();
    sub_22C273F34();
    sub_22BE1AEE4();
    sub_22BE1C270();
    sub_22C273EF4();
  }

  (*(v7 + 8))(v2, v5);
  sub_22BE18478();
}

void TGToolInteropTypes.FullPlannerAutomationJSON.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D9080E8, &qword_22C278EF8);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BE8EBEC();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    v14 = sub_22C273E64();
    v23 = v15;
    sub_22BE5CE4C(&qword_27D9080D0, &qword_22C278EF0);
    sub_22BE8EC40(&unk_27D9080F0);
    sub_22C273E44();
    v22 = v24;
    v16 = sub_22C273E04();
    v18 = v17;
    v19 = v16;
    (*(v7 + 8))(v12, v5);
    v20 = v23;
    *v4 = v14;
    v4[1] = v20;
    v4[2] = v22;
    v4[3] = v19;
    v4[4] = v18;

    sub_22BE26B64(v2);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BE8E260(uint64_t a1, unint64_t a2)
{
  sub_22BE29D7C(a1, a2);
  v4 = *(sub_22BE8E834(a1, a2) + 16);
  v5 = sub_22C273124();

  return v5;
}

uint64_t sub_22BE8E2CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C273124();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22BE8E308()
{
  result = qword_27D908020;
  if (!qword_27D908020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908020);
  }

  return result;
}

unint64_t sub_22BE8E35C()
{
  result = qword_27D908028;
  if (!qword_27D908028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908028);
  }

  return result;
}

unint64_t sub_22BE8E3B0()
{
  result = qword_27D908048;
  if (!qword_27D908048)
  {
    sub_22BE7431C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE48E94(&unk_28106DBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908048);
  }

  return result;
}

unint64_t sub_22BE8E45C()
{
  result = qword_27D908058;
  if (!qword_27D908058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908058);
  }

  return result;
}

unint64_t sub_22BE8E4B0()
{
  result = qword_27D908068;
  if (!qword_27D908068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908068);
  }

  return result;
}

unint64_t sub_22BE8E504(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D908030, &qword_22C278EA0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BE8E568()
{
  result = qword_27D908078;
  if (!qword_27D908078)
  {
    sub_22BE7431C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE48E94(&unk_28106DBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908078);
  }

  return result;
}

unint64_t sub_22BE8E614()
{
  result = qword_27D908080;
  if (!qword_27D908080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908080);
  }

  return result;
}

unint64_t sub_22BE8E6D0()
{
  result = qword_27D908090;
  if (!qword_27D908090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908090);
  }

  return result;
}

unint64_t sub_22BE8E724()
{
  result = qword_28107F370;
  if (!qword_28107F370)
  {
    sub_22C26DBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F370);
  }

  return result;
}

unint64_t sub_22BE8E77C()
{
  result = qword_28106DDD0;
  if (!qword_28106DDD0)
  {
    sub_22BE7431C(&qword_27D9080A0, &qword_22C278ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DDD0);
  }

  return result;
}

unint64_t sub_22BE8E7E0()
{
  result = qword_27D9080A8;
  if (!qword_27D9080A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080A8);
  }

  return result;
}

uint64_t sub_22BE8E834(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C26E064();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_22C192768(v10, 0);
      v14 = sub_22C26DFC4();
      sub_22BE29DD4(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_22BE29DD4(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v13;
  }
}

uint64_t sub_22BE8E9B8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_22C26DCF4() && __OFSUB__(v4, sub_22C26DD14()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_22C26DD04();
LABEL_10:
      result = sub_22C273124();
      v6 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_22C26DCF4() && __OFSUB__(v2, sub_22C26DD14()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_22BE8EB84(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9080B8, &qword_22C278EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BE8EBEC()
{
  result = qword_27D9080C8;
  if (!qword_27D9080C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080C8);
  }

  return result;
}

unint64_t sub_22BE8EC40(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D9080D0, &qword_22C278EF0);
    v2();
    result = sub_22BE8FB98();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BE8ECA0()
{
  result = qword_27D9080E0;
  if (!qword_27D9080E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080E0);
  }

  return result;
}

unint64_t sub_22BE8ECF4()
{
  result = qword_27D9080F8;
  if (!qword_27D9080F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080F8);
  }

  return result;
}

unint64_t sub_22BE8ED4C()
{
  result = qword_27D908100;
  if (!qword_27D908100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908100);
  }

  return result;
}

unint64_t sub_22BE8EDA4()
{
  result = qword_27D908108;
  if (!qword_27D908108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908108);
  }

  return result;
}

unint64_t sub_22BE8EDFC()
{
  result = qword_27D908110;
  if (!qword_27D908110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908110);
  }

  return result;
}

__n128 sub_22BE8EE68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BE8EE7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22BE8EEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_22BE8EF14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BE8EF28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22BE8EF68(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22BE8EFDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_22BE8F01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22BE8F0B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BE8F310(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s30IntelligenceFlowPlannerSupport7SessionOwet_0_0(unsigned __int8 *a1, int a2)
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

  return sub_22BE25A30(a1);
}

_BYTE *sub_22BE8F434(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE8F4E4()
{
  result = qword_27D908118;
  if (!qword_27D908118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908118);
  }

  return result;
}

unint64_t sub_22BE8F53C()
{
  result = qword_27D908120;
  if (!qword_27D908120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908120);
  }

  return result;
}

unint64_t sub_22BE8F594()
{
  result = qword_27D908128;
  if (!qword_27D908128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908128);
  }

  return result;
}

unint64_t sub_22BE8F5EC()
{
  result = qword_27D908130;
  if (!qword_27D908130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908130);
  }

  return result;
}

unint64_t sub_22BE8F644()
{
  result = qword_27D908138;
  if (!qword_27D908138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908138);
  }

  return result;
}

unint64_t sub_22BE8F69C()
{
  result = qword_27D908140;
  if (!qword_27D908140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908140);
  }

  return result;
}

unint64_t sub_22BE8F6F4()
{
  result = qword_27D908148;
  if (!qword_27D908148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908148);
  }

  return result;
}

unint64_t sub_22BE8F74C()
{
  result = qword_27D908150;
  if (!qword_27D908150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908150);
  }

  return result;
}

unint64_t sub_22BE8F7A4()
{
  result = qword_27D908158;
  if (!qword_27D908158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908158);
  }

  return result;
}

unint64_t sub_22BE8F7FC()
{
  result = qword_27D908160;
  if (!qword_27D908160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908160);
  }

  return result;
}

unint64_t sub_22BE8F854()
{
  result = qword_27D908168;
  if (!qword_27D908168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908168);
  }

  return result;
}

unint64_t sub_22BE8F8AC()
{
  result = qword_27D908170;
  if (!qword_27D908170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908170);
  }

  return result;
}

unint64_t sub_22BE8F904()
{
  result = qword_27D908178;
  if (!qword_27D908178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908178);
  }

  return result;
}

unint64_t sub_22BE8F95C()
{
  result = qword_27D908180;
  if (!qword_27D908180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908180);
  }

  return result;
}

unint64_t sub_22BE8F9B4()
{
  result = qword_27D908188;
  if (!qword_27D908188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908188);
  }

  return result;
}

unint64_t sub_22BE8FA0C()
{
  result = qword_27D908190;
  if (!qword_27D908190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908190);
  }

  return result;
}

unint64_t sub_22BE8FA64()
{
  result = qword_27D908198;
  if (!qword_27D908198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908198);
  }

  return result;
}

unint64_t sub_22BE8FAB8()
{
  result = qword_27D9081A0;
  if (!qword_27D9081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081A0);
  }

  return result;
}

unint64_t sub_22BE8FB0C()
{
  result = qword_27D9081A8;
  if (!qword_27D9081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081A8);
  }

  return result;
}

uint64_t sub_22BE8FB98()
{

  return swift_getWitnessTable();
}

uint64_t sub_22BE8FBE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465727265666564 && a2 == 0xED000065756C6156)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE8FC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8FBE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8FCBC(uint64_t a1)
{
  v2 = sub_22BE8FE40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8FCF8(uint64_t a1)
{
  v2 = sub_22BE8FE40();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionResolveInput.encode(to:)()
{
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D9081B0, &qword_22C279B20);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE23094();
  sub_22BE8FE40();
  sub_22BE1B02C();
  sub_22C272764();
  sub_22BE2307C();
  sub_22BE9046C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
}

unint64_t sub_22BE8FE40()
{
  result = qword_27D9081B8;
  if (!qword_27D9081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081B8);
  }

  return result;
}

void ToolExecutionSessionResolveInput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v2);
  v3 = sub_22C272764();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE2564C(v7);
  v8 = sub_22BE5CE4C(&qword_27D9081C8, &qword_22C279B28);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for ToolExecutionSessionResolveInput(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  sub_22BE24FA0();
  sub_22BE8FE40();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE2307C();
    sub_22BE9046C(v17, v18);
    sub_22BE19160();
    v19 = sub_22BE1B2F4();
    v20(v19);
    v21 = sub_22BE28714();
    v22(v21);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE900B8(uint64_t a1)
{
  v2 = sub_22BE9023C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE900F4(uint64_t a1)
{
  v2 = sub_22BE9023C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionResolveOutput.encode(to:)()
{
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D9081D8, &qword_22C279B30);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE23094();
  sub_22BE9023C();
  sub_22BE1B02C();
  sub_22C272874();
  sub_22BE18CB0();
  sub_22BE9046C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
}

unint64_t sub_22BE9023C()
{
  result = qword_27D9081E0;
  if (!qword_27D9081E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081E0);
  }

  return result;
}

void ToolExecutionSessionResolveOutput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v2);
  v3 = sub_22C272874();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE2564C(v7);
  v8 = sub_22BE5CE4C(&qword_27D9081E8, &qword_22C279B38);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for ToolExecutionSessionResolveOutput(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  sub_22BE24FA0();
  sub_22BE9023C();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE18CB0();
    sub_22BE9046C(v17, v18);
    sub_22BE19160();
    v19 = sub_22BE1B2F4();
    v20(v19);
    v21 = sub_22BE28714();
    v22(v21);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE9046C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE904B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE9055C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_22BE905DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t sub_22BE90644(uint64_t a1)
{
  v2 = sub_22BE907C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE90680(uint64_t a1)
{
  v2 = sub_22BE907C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionHydrateInput.encode(to:)()
{
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D9081F0, &qword_22C279B40);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE23094();
  sub_22BE907C8();
  sub_22BE1B02C();
  sub_22C272874();
  sub_22BE18CB0();
  sub_22BE9046C(v4, v5);
  sub_22BE1BE20();
  sub_22C273FA4();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
}

unint64_t sub_22BE907C8()
{
  result = qword_27D9081F8;
  if (!qword_27D9081F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081F8);
  }

  return result;
}

void ToolExecutionSessionHydrateInput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v2);
  v3 = sub_22C272874();
  v4 = sub_22BE179D8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE2564C(v7);
  v8 = sub_22BE5CE4C(&qword_27D908200, &unk_22C279B48);
  sub_22BE179D8(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE1AED0();
  v13 = type metadata accessor for ToolExecutionSessionHydrateInput(v12);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  sub_22BE24FA0();
  sub_22BE907C8();
  sub_22BE23C18();
  if (!v1)
  {
    sub_22BE18CB0();
    sub_22BE9046C(v17, v18);
    sub_22BE19160();
    v19 = sub_22BE1B2F4();
    v20(v19);
    v21 = sub_22BE28714();
    v22(v21);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE90A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE90AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE90B1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE90B90(uint64_t a1)
{
  v2 = sub_22BE90D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE90BCC(uint64_t a1)
{
  v2 = sub_22BE90D14();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionHydrateOutput.encode(to:)()
{
  sub_22BE1B980();
  v0 = sub_22BE5CE4C(&qword_27D908208, &qword_22C279B58);
  sub_22BE179D8(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE23094();
  sub_22BE90D14();
  sub_22BE1B02C();
  sub_22C272874();
  sub_22BE18CB0();
  sub_22BE9046C(v4, v5);
  sub_22BE1BE20();
  sub_22C273F34();
  v6 = sub_22BE184A8();
  v7(v6);
  sub_22BE1965C();
}

unint64_t sub_22BE90D14()
{
  result = qword_27D908210;
  if (!qword_27D908210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908210);
  }

  return result;
}

void ToolExecutionSessionHydrateOutput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v3);
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-v8];
  v10 = sub_22BE5CE4C(&qword_27D908218, &qword_22C279B60);
  sub_22BE179D8(v10);
  v25 = v11;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = &v24[-v15];
  v17 = type metadata accessor for ToolExecutionSessionHydrateOutput(0);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE188B0();
  v21 = v0[4];
  sub_22BE1BD3C(v0, v0[3]);
  sub_22BE90D14();
  sub_22C274214();
  if (!v1)
  {
    sub_22C272874();
    sub_22BE18CB0();
    sub_22BE9046C(v22, v23);
    sub_22C273E44();
    (*(v25 + 8))(v16, v10);
    sub_22BE90AAC(v9, v2);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE91088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BE910F8()
{
  if (!qword_27D908260)
  {
    sub_22C272874();
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, &qword_27D908260);
    }
  }
}

_BYTE *sub_22BE91180(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE91230()
{
  result = qword_27D908268;
  if (!qword_27D908268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908268);
  }

  return result;
}

unint64_t sub_22BE91288()
{
  result = qword_27D908270;
  if (!qword_27D908270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908270);
  }

  return result;
}

unint64_t sub_22BE912E0()
{
  result = qword_27D908278;
  if (!qword_27D908278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908278);
  }

  return result;
}

unint64_t sub_22BE91338()
{
  result = qword_27D908280;
  if (!qword_27D908280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908280);
  }

  return result;
}

unint64_t sub_22BE91390()
{
  result = qword_27D908288;
  if (!qword_27D908288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908288);
  }

  return result;
}

unint64_t sub_22BE913E8()
{
  result = qword_27D908290;
  if (!qword_27D908290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908290);
  }

  return result;
}

unint64_t sub_22BE91440()
{
  result = qword_27D908298;
  if (!qword_27D908298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908298);
  }

  return result;
}

unint64_t sub_22BE91498()
{
  result = qword_27D9082A0;
  if (!qword_27D9082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082A0);
  }

  return result;
}

unint64_t sub_22BE914F0()
{
  result = qword_27D9082A8;
  if (!qword_27D9082A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082A8);
  }

  return result;
}

unint64_t sub_22BE91548()
{
  result = qword_27D9082B0;
  if (!qword_27D9082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082B0);
  }

  return result;
}

unint64_t sub_22BE915A0()
{
  result = qword_27D9082B8;
  if (!qword_27D9082B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082B8);
  }

  return result;
}

unint64_t sub_22BE915F8()
{
  result = qword_27D9082C0;
  if (!qword_27D9082C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082C0);
  }

  return result;
}

uint64_t dispatch thunk of EventSending.sendAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22BE85C2C;

  return v11(a1, a2, a3);
}

uint64_t ODPEventPayload.description.getter()
{
  v1 = type metadata accessor for ODPEventPayload(0);
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = (v6 - v5);
  sub_22BE274A8(v0, v6 - v5);
  v8 = 0x65746172656E6547;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      return 0x736F706D6F636544;
    case 2u:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      return 0x6F6365446B736154;
    case 3u:
    case 0xFu:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      sub_22BE184BC();
      return v9 | 3;
    case 4u:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      return 0x6576656972746552;
    case 5u:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      sub_22BE1B30C();
      return 0xD000000000000016;
    case 7u:
      sub_22BE92E14();
      sub_22BE18CC8();
      sub_22BE1ADA8(v7, v13);
      goto LABEL_22;
    case 8u:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      sub_22BE1B30C();
      return 0xD000000000000015;
    case 9u:
      v12 = v7[1];

      sub_22BE1B30C();
      sub_22BE26B64(v7 + 2);
      return 0xD000000000000016;
    case 0xAu:
      sub_22BE26B64(v7);
      return 0x656E65476E616C50;
    case 0xBu:
    case 0x12u:
      sub_22BE92E14();
      sub_22BE1B30C();
      sub_22BE26B64(v7);
      return v8;
    case 0xCu:
      sub_22BE26B64(v7);
      return 0x5065747563657845;
    case 0xDu:
      sub_22BE26B64(v7);
      return 0x636578456E616C50;
    case 0xEu:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      sub_22BE184BC();
      return v10 | 1;
    case 0x10u:
      sub_22BE1ADA8(v7, type metadata accessor for Session.Event);
      return 0x697263736E617254;
    case 0x11u:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
      return 0x64656C696146;
    case 0x13u:
      sub_22BE1B30C();
      sub_22BE26B64(v7);
      return 0xD000000000000022;
    case 0x14u:
      sub_22BE184BC();
      return v11 | 2;
    case 0x15u:
      return v8;
    case 0x16u:
      return 0x74616C756D726F46;
    case 0x17u:
      goto LABEL_25;
    case 0x18u:
      return 0x6E616C706552;
    case 0x19u:
      sub_22BE92E14();
LABEL_22:
      sub_22BE1B30C();
      break;
    case 0x1Au:
      v8 = 0x706D6F436B736154;
      break;
    default:
      sub_22BE1ADA8(v7, type metadata accessor for ODPEventPayload);
LABEL_25:
      sub_22BE184BC();
      v8 = v14 | 4;
      break;
  }

  return v8;
}

uint64_t ODPEventPayload.debugDescription.getter()
{
  v1 = type metadata accessor for Session.Event(0);
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = type metadata accessor for ODPEventPayload(0);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v14 = v13 - v12;
  sub_22BE274A8(v0, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = 0x7265755172657355;
      v18 = 0xEB00000000203A79;
      goto LABEL_22;
    case 2u:
      v45 = *v14;
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      *&v78 = v47 - 2;
      *(&v78 + 1) = v46;
      v48 = MEMORY[0x2318ABC00](v45, MEMORY[0x277D837D0]);
      goto LABEL_17;
    case 3u:
    case 6u:
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = 0x3D726F727245;
      v18 = 0xE600000000000000;
      goto LABEL_22;
    case 4u:
      v63 = *v14;
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      *&v78 = v65;
      *(&v78 + 1) = v64;
      v48 = MEMORY[0x2318ABBB0](v63, MEMORY[0x277D837D0]);
LABEL_17:
      v66 = v48;
      v67 = v49;

      MEMORY[0x2318AB8D0](v66, v67);
      goto LABEL_23;
    case 5u:
      v30 = *v14;
      v29 = *(v14 + 8);
      v31 = *(v14 + 16);
      sub_22BE1BE3C();
      sub_22C273AA4();
      MEMORY[0x2318AB8D0](0x207972657551, 0xE600000000000000);
      v32 = MEMORY[0x2318ABBB0](v30, MEMORY[0x277D837D0]);
      v34 = v33;

      MEMORY[0x2318AB8D0](v32, v34);

      sub_22BE1918C();
      MEMORY[0x2318AB8D0](v35 + 1, v36 | 0x8000000000000000);
      v37 = sub_22BE5CE4C(&qword_27D9082C8, &qword_22C27A1E0);
      v38 = MEMORY[0x2318ABBB0](v29, v37);
      v40 = v39;

      MEMORY[0x2318AB8D0](v38, v40);

      v41 = sub_22BE1A1BC();
      MEMORY[0x2318AB8D0](v41);
      v42 = MEMORY[0x2318ABBB0](v31, v37);
      v44 = v43;

      MEMORY[0x2318AB8D0](v42, v44);

      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
      return sub_22BE19454();
    case 7u:
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = 0x2D2074706D6F7250;
      v18 = 0xE900000000000020;
      goto LABEL_22;
    case 8u:
      v19 = *v14;
      v20 = *(v14 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      v23 = v28 + 15;
      goto LABEL_19;
    case 9u:
      v68 = *v14;
      v69 = *(v14 + 8);
      sub_22BE92370((v14 + 16), &v78);
      sub_22C273AA4();
      sub_22BE3AF78();
      sub_22BE1918C();
      MEMORY[0x2318AB8D0](v70 - 3, v71 | 0x8000000000000000);
      v72 = sub_22C2730E4();
      v74 = v73;

      MEMORY[0x2318AB8D0](v72, v74);

      v26 = 0x6D61726150200A20;
      v27 = 0xEF203A7372657465;
      goto LABEL_26;
    case 0xAu:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      sub_22BE1918C();
      v26 = v25 - 1;
      goto LABEL_15;
    case 0xBu:
    case 0xDu:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      v26 = sub_22BE1A1BC();
      goto LABEL_26;
    case 0xCu:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      sub_22BE1918C();
      v26 = v62 + 14;
LABEL_15:
      v27 = v24 | 0x8000000000000000;
      goto LABEL_26;
    case 0xEu:
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = 0x203A726F727245;
      v18 = 0xE700000000000000;
LABEL_22:
      *&v78 = v17;
      *(&v78 + 1) = v18;
      MEMORY[0x2318AB8D0](v15, v16);
      goto LABEL_23;
    case 0xFu:
      v19 = *v14;
      v20 = *(v14 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      v23 = v22 + 13;
      goto LABEL_19;
    case 0x10u:
      sub_22BE3F9A8(v14, v7);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      *&v78 = v52 - 2;
      *(&v78 + 1) = v51;
      v53 = v7 + *(v1 + 28);
      Session.Event.Payload.description.getter(v54, v55, v56, v57, v58, v59, v60, v61, v76, v77, v52 - 2, v51, v79, v80, v81, v82, v83, v84, v85, v86);
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](0x64657474696D6520, 0xE800000000000000);
      sub_22BE1ADA8(v7, type metadata accessor for Session.Event);
      return sub_22BE19454();
    case 0x11u:
      v19 = *v14;
      v20 = *(v14 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      goto LABEL_19;
    case 0x12u:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      v26 = 0x762074757074754FLL;
      v27 = 0xEE00203A65756C61;
LABEL_26:
      MEMORY[0x2318AB8D0](v26, v27);
      sub_22BE5CE4C(&qword_27D9082C8, &qword_22C27A1E0);
      sub_22C273C24();
      sub_22BE26B64(&v78);
      break;
    case 0x13u:
      sub_22BE1B990();
      sub_22BE26B64(v14);
      break;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x18u:
      return sub_22BE19454();
    case 0x17u:
    case 0x19u:
    case 0x1Au:
      sub_22BE1B990();
      break;
    default:
      v19 = *v14;
      v20 = *(v14 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      v23 = v50 + 14;
LABEL_19:
      *&v78 = v23;
      *(&v78 + 1) = v21;
      MEMORY[0x2318AB8D0](v19, v20);
LABEL_23:

      break;
  }

  return sub_22BE19454();
}

_OWORD *sub_22BE92370(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t ODPEvent.description.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();

  sub_22C26E164();
  sub_22BE92478();
  v0 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v0);

  MEMORY[0x2318AB8D0](0x20726F6620, 0xE500000000000000);
  v1 = ODPEventPayload.description.getter();
  MEMORY[0x2318AB8D0](v1);

  return 0xD000000000000015;
}

unint64_t sub_22BE92478()
{
  result = qword_28107F330;
  if (!qword_28107F330)
  {
    sub_22C26E164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F330);
  }

  return result;
}

unint64_t ODPEvent.debugDescription.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();

  sub_22C26E164();
  sub_22BE92478();
  v0 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v0);

  MEMORY[0x2318AB8D0](0xD000000000000010, 0x800000022C2D3540);
  v1 = ODPEventPayload.debugDescription.getter();
  MEMORY[0x2318AB8D0](v1);

  return 0xD000000000000015;
}

uint64_t ODPEvent.deinit()
{
  sub_22BE18CC8();
  sub_22BE1ADA8(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_timestamp;
  v4 = sub_22C26E164();
  sub_22BE18000(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t ODPEventOverrides.orchestrationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t ODPEventOverrides.resultCandidateID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22BE19454();
}

uint64_t ODPEventOverrides.taskID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_22BE19454();
}

uint64_t ODPEventOverrides.interactionID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_22BE19454();
}

uint64_t sub_22BE9271C()
{
  v0 = sub_22BE92980();
  if (v1 <= 0x3F)
  {
    v2 = sub_22BE929A8();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106DBF8, sub_22BE929D0);
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106DC00, sub_22BE929D0);
    if (v5 > 0x3F)
    {
      return v2;
    }

    sub_22BE92A20();
    if (v6 > 0x3F)
    {
      return v2;
    }

    v2 = sub_22BE92AB0();
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_22BE92AD8();
    if (v8 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106DBA0, sub_22BE92B50);
    if (v9 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106DBA8, sub_22BE92B50);
    if (v10 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106DBC0, sub_22BE92B50);
    if (v11 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106DBB0, sub_22BE92B50);
    if (v12 > 0x3F)
    {
      return v2;
    }

    sub_22BE92BB4(319, &qword_28106E938, type metadata accessor for Session.Event);
    if (v13 > 0x3F)
    {
      return v2;
    }

    else
    {
      sub_22BE92BB4(319, &qword_28106DBB8, sub_22BE92B50);
      v0 = v14;
      if (v15 <= 0x3F)
      {
        v0 = sub_22BE92C00();
        if (v16 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_22BE92980()
{
  result = qword_28106DE10;
  if (!qword_28106DE10)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28106DE10);
  }

  return result;
}

uint64_t sub_22BE929A8()
{
  result = qword_28106DE08;
  if (!qword_28106DE08)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28106DE08);
  }

  return result;
}

void sub_22BE929D0()
{
  if (!qword_28106DBF0)
  {
    v0 = sub_22C2735B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DBF0);
    }
  }
}

void sub_22BE92A20()
{
  if (!qword_28106DC08)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE7431C(&qword_27D9082D0, &qword_22C27A2C8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28106DC08);
    }
  }
}

uint64_t sub_22BE92AB0()
{
  result = qword_28106DDF8;
  if (!qword_28106DDF8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28106DDF8);
  }

  return result;
}

void sub_22BE92AD8()
{
  if (!qword_28106DE00)
  {
    sub_22BE7431C(&qword_27D9082C8, &qword_22C27A1E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28106DE00);
    }
  }
}

unint64_t sub_22BE92B50()
{
  result = qword_28106DB98;
  if (!qword_28106DB98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28106DB98);
  }

  return result;
}

void sub_22BE92BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BE92C00()
{
  result = qword_28106DAC0;
  if (!qword_28106DAC0)
  {
    result = MEMORY[0x277D84F70] + 8;
    atomic_store(MEMORY[0x277D84F70] + 8, &qword_28106DAC0);
  }

  return result;
}

uint64_t sub_22BE92C34()
{
  result = type metadata accessor for ODPEventPayload(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22C26E164();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_22BE92D38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BE92D4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_22BE92DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t static ImpendingRequestDetectedTelemetry.insert(sessionState:clientRequestId:queryEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55[0] = a4;
  v55[1] = a2;
  v4 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = v55 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = v55 - v14;
  v16 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  v22 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  v27 = v55 - v26;
  v28 = sub_22C271E24();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  Session.Transcript.formingTraceIds()(v32);
  v33 = sub_22C26E1D4();
  sub_22BE18000(v33);
  (*(v34 + 16))(v27, v55[0], v33);
  sub_22BE187DC();
  sub_22BE19DC4(v35, v36, v37, v33);
  sub_22C271D84();

  sub_22C271D94();
  type metadata accessor for TelemetryStream();
  sub_22C271F74();
  sub_22C271F84();
  sub_22BE187DC();
  sub_22BE19DC4(v38, v39, v40, v41);
  sub_22BE346D4(v32, v21);
  sub_22BE931A0(v21);
  sub_22C271F04();
  v42 = *MEMORY[0x277D1F710];
  v43 = sub_22C271D44();
  sub_22BE18000(v43);
  (*(v44 + 104))(v15, v42, v43);
  sub_22BE187DC();
  sub_22BE19DC4(v45, v46, v47, v43);
  sub_22C271D54();
  v48 = *MEMORY[0x277D1F680];
  v49 = sub_22C271CC4();
  sub_22BE18000(v49);
  (*(v50 + 104))(v9, v48, v49);
  sub_22BE187DC();
  sub_22BE19DC4(v51, v52, v53, v49);
  sub_22C271CE4();
  static TelemetryStream.insert(_:)();
  return (*(v29 + 8))(v32, v28);
}

uint64_t sub_22BE931A0(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE9325C()
{
  v0 = sub_22C2720A4();
  sub_22BE952A4(v0, qword_27D9082F8);
  sub_22BE199F4(v0, qword_27D9082F8);
  return sub_22C272094();
}

uint64_t static PlatformPnRTelemetry.failed(_:_:_:_:)(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v8 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19668();
  v12 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  LOBYTE(a1) = *a1;
  v16 = *a2;
  v17 = type metadata accessor for Session.Transcript(0);
  sub_22BE26400(*(a3 + *(v17 + 32)), v3);
  v18 = type metadata accessor for Session.Event(0);
  sub_22BE25A50(v18);
  if (v19)
  {
    sub_22BE33928(v3, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    Session.Event.formingTraceIds()();
    sub_22BE34278(v3);
  }

  v20 = sub_22C271E24();
  sub_22BE2B7A4(v20);
  static PlatformPnRTelemetry.failed(_:_:_:_:)();
  return sub_22BE33928(v4, &qword_27D908318, &unk_22C27A418);
}

void static PlatformPnRTelemetry.failed(_:_:_:_:)()
{
  sub_22BE19460();
  v54 = v3;
  v55 = v0;
  v56 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE29080();
  v14 = sub_22BE179D8(v13);
  v53 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v52 = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1AEF0();
  v26 = sub_22C271E24();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v34 = v33 - v32;
  v35 = *v8;
  v36 = *v6;
  sub_22BE34640(v56, v1);
  if (sub_22BE1AEA8(v1, 1, v26) == 1)
  {
    sub_22BE33928(v1, &qword_27D908318, &unk_22C27A418);
    if (qword_27D906348 != -1)
    {
      sub_22BE17B78();
    }

    v37 = sub_22C2720A4();
    sub_22BE199F4(v37, qword_27D9082F8);
    v38 = sub_22C272084();
    v39 = sub_22C2737A4();
    if (sub_22BE251A8(v39))
    {
      *swift_slowAlloc() = 0;
      sub_22BE19E74(&dword_22BE15000, v40, v41, "Nil traceIds (likely due to no Transcript Events), skipping Telemetry Biome stream insertion");
      sub_22BE183C8();
    }
  }

  else
  {
    (*(v29 + 32))(v34, v1, v26);
    type metadata accessor for TelemetryStream();
    sub_22C271F74();
    sub_22C271F84();
    sub_22BE187DC();
    sub_22BE19DC4(v42, v43, v44, v45);
    sub_22BE346D4(v34, v2);
    sub_22BE33928(v2, &qword_27D9082E8, &unk_22C27A3C0);
    v58 = v35;
    v57 = v36;
    v46 = v52;
    sub_22BE93788();
    v47 = v53;
    v48 = *(v53 + 8);
    v49 = sub_22BE1B328();
    v48(v49);
    (*(v47 + 32))(v21, v46, v13);
    static TelemetryStream.insert(_:)();
    v50 = sub_22BE1B328();
    v48(v50);
    (*(v29 + 8))(v34, v26);
  }

  sub_22BE1AABC();
}

void sub_22BE93788()
{
  sub_22BE19460();
  v146 = v1;
  v154 = v2;
  v4 = v3;
  v150 = v5;
  v156 = v6;
  v7 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v155 = v11;
  v12 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v153 = v16;
  v17 = sub_22BE5CE4C(&qword_27D908358, &unk_22C27AB08);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v152 = v21;
  sub_22BE183BC();
  v22 = sub_22C271CC4();
  v23 = sub_22BE179D8(v22);
  v144 = v24;
  v145 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  v143 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v142 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19490();
  v141 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  v140 = v33;
  v34 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  v139[2] = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE19490();
  v139[1] = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19490();
  v139[0] = v42;
  sub_22BE1B99C();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = v139 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = sub_22C271D74();
  v48 = sub_22BE179D8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE179EC();
  v55 = v54 - v53;
  v56 = sub_22BE5CE4C(&qword_27D908360, &unk_22C27AB18);
  sub_22BE19448(v56);
  v58 = *(v57 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  v61 = v139 - v60;
  v151 = sub_22C271EF4();
  v62 = sub_22BE179D8(v151);
  v147 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE179EC();
  sub_22BE2BB64();
  v66 = sub_22C271F54();
  v67 = sub_22BE179D8(v66);
  v148 = v68;
  v149 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE179EC();
  v73 = (v72 - v71);
  v74 = *v4;
  v75 = *v146;
  (*(v50 + 16))(v156, v150, v47);
  v146 = v73;
  sub_22C271F44();
  sub_22C271EE4();
  type metadata accessor for TelemetryStream();
  sub_22BE95898(v75, v61);
  v150 = v0;
  MEMORY[0x2318AA5D0](v61);
  switch(v74 >> 5)
  {
    case 2u:
      v157 = v74 & 0x1F;
      v88 = v156;
      sub_22BE35210(v156, &v157, v55);
      goto LABEL_6;
    case 3u:
      v158 = v74 & 0x1F;
      v88 = v156;
      sub_22BE93F64(v156, &v158, v55);
LABEL_6:
      (*(v50 + 8))(v88, v47);
      (*(v50 + 32))(v88, v55, v47);
      goto LABEL_13;
    case 4u:
      sub_22BE1B318();
      sub_22BE1C27C();
      v82 = v140;
      v83 = sub_22BE23C3C();
      v84(v83);
      (*(v0 + 32))(v46, v82, v47);
      sub_22BE187DC();
      sub_22BE19DC4(v85, v86, v87, v47);
      break;
    case 5u:
    case 6u:
      sub_22BE1B318();
      sub_22BE1C27C();
      v94 = sub_22BE23C3C();
      v95(v94);
      v96 = *(v0 + 32);
      goto LABEL_11;
    case 7u:
      v90 = v143;
      v89 = v144;
      sub_22BE3C7EC();
      v92 = MEMORY[0x277D1F6E8];
      if ((v74 & 1) == 0)
      {
        v92 = MEMORY[0x277D1F6E0];
      }

      v47 = v145;
      v91(v90, *v92, v145);
      v93 = *(v89 + 32);
LABEL_11:
      v97 = sub_22BE22BD8();
      v98(v97);
      v99 = sub_22BE19198();
      sub_22BE3D114(v99, v100, v101, v47);
      break;
    default:
      v76 = *MEMORY[0x277D1F668];
      v77 = sub_22BE28988();
      v78(v77);
      sub_22BE187DC();
      sub_22BE19DC4(v79, v80, v81, v47);
      break;
  }

  sub_22C271CE4();
LABEL_13:
  v102 = v155;
  v104 = v150;
  v103 = v151;
  v105 = v147;
  (*(v147 + 16))(v152, v150, v151);
  v106 = *MEMORY[0x277D20488];
  v107 = sub_22C271F14();
  sub_22BE18000(v107);
  v109 = *(v108 + 104);
  sub_22BE354D0();
  v113(v110, v111, v112);
  sub_22BE187DC();
  sub_22BE19DC4(v114, v115, v116, v107);
  v117 = v146;
  sub_22C271F34();
  v118 = sub_22C26E1D4();
  sub_22BE18000(v118);
  v120 = *(v119 + 16);
  v121 = sub_22BE1AB1C();
  v122(v121);
  sub_22BE187DC();
  sub_22BE19DC4(v123, v124, v125, v118);
  sub_22C271F24();
  v127 = v148;
  v126 = v149;
  (*(v148 + 16))(v102, v117, v149);
  v128 = *MEMORY[0x277D1F718];
  v129 = sub_22C271D44();
  sub_22BE18000(v129);
  v131 = *(v130 + 104);
  sub_22BE354D0();
  v135(v132, v133, v134);
  sub_22BE187DC();
  sub_22BE19DC4(v136, v137, v138, v129);
  sub_22C271D54();
  (*(v105 + 8))(v104, v103);
  (*(v127 + 8))(v117, v126);
  sub_22BE1AABC();
}

uint64_t sub_22BE93F64@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1AEF0();
  v11 = *a2;
  v12 = sub_22C271D74();
  sub_22BE18000(v12);
  (*(v13 + 16))(a3, a1);
  switch(v11)
  {
    case 0:
      v14 = MEMORY[0x277D1F690];
      break;
    case 1:
      v14 = MEMORY[0x277D1F670];
      break;
    case 2:
      v14 = MEMORY[0x277D1F698];
      break;
    case 3:
      v14 = MEMORY[0x277D1F6D0];
      break;
    case 4:
      v14 = MEMORY[0x277D1F6B8];
      break;
    case 6:
      v14 = MEMORY[0x277D1F6C0];
      break;
    default:
      if (qword_27D906348 != -1)
      {
        sub_22BE17B78();
      }

      v15 = sub_22C2720A4();
      sub_22BE199F4(v15, qword_27D9082F8);
      v16 = sub_22C272084();
      v17 = sub_22C2737A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32 = v19;
        *v18 = 136315138;
        v20 = sub_22C273094();
        v22 = sub_22BE61C88(v20, v21, &v32);

        *(v18 + 4) = v22;
        sub_22BE339A0(&dword_22BE15000, v23, v24, "Warning! Telemetry for %s should be added!");
        sub_22BE26B64(v19);
        sub_22BE183C8();
        sub_22BE183C8();
      }

      *v3 = 0;
      v14 = MEMORY[0x277D1F6F0];
      break;
  }

  v25 = *v14;
  v26 = sub_22C271CC4();
  sub_22BE18000(v26);
  (*(v27 + 104))(v3, v25, v26);
  sub_22BE187DC();
  sub_22BE19DC4(v28, v29, v30, v26);
  return sub_22C271CE4();
}

uint64_t sub_22BE941E0(uint64_t a1)
{
  v3 = sub_22BE5CE4C(&qword_27D908360, &unk_22C27AB18);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  v8 = *a1;
  v7 = *(a1 + 8);

  sub_22C271EB4();
  type metadata accessor for TelemetryStream();
  sub_22BE95898(v8, v1);
  sub_22C271E94();
  return sub_22C271EA4();
}

uint64_t sub_22BE94328()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t LLMCacheManagerTarget.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t GMSCallEndedData.modelIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void HandleEndedPayload.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t HandleEndedPayload.init(error:eventIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_22BE946C0()
{
  result = qword_27D908320;
  if (!qword_27D908320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908320);
  }

  return result;
}

unint64_t sub_22BE94718()
{
  result = qword_27D908328;
  if (!qword_27D908328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908328);
  }

  return result;
}

unint64_t sub_22BE94770()
{
  result = qword_27D908330;
  if (!qword_27D908330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908330);
  }

  return result;
}

unint64_t sub_22BE947C8()
{
  result = qword_27D908338;
  if (!qword_27D908338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908338);
  }

  return result;
}

unint64_t sub_22BE94820()
{
  result = qword_27D908340;
  if (!qword_27D908340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908340);
  }

  return result;
}

unint64_t sub_22BE94878()
{
  result = qword_27D908348;
  if (!qword_27D908348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908348);
  }

  return result;
}

unint64_t sub_22BE948D0()
{
  result = qword_27D908350;
  if (!qword_27D908350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908350);
  }

  return result;
}

_BYTE *sub_22BE9493C(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PlannerServiceTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlannerServiceTarget(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationTarget(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ResponseGenerationTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecutorRequestTarget(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ExecutorRequestTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GMSTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LLMCacheManagerTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22BE94FA8(uint64_t a1, int a2)
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

uint64_t sub_22BE94FE8(uint64_t result, int a2, int a3)
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

uint64_t sub_22BE95034(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 5;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_22BE9507C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 32 * -a2;
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

uint64_t getEnumTagSinglePayload for HydrationOptions(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *sub_22BE95140(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BE951F4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_22BE95248(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *sub_22BE952A4(uint64_t a1, uint64_t *a2)
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

uint64_t Session.Transcript.formingTraceIds()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C26E1D4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v12 = v11 - v10;
  v44 = sub_22C271E24();
  v13 = sub_22BE179D8(v44);
  v43 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE3E508();
  v25 = type metadata accessor for Session.Event(v24);
  v26 = sub_22BE18000(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  v31 = v30 - v29;
  v32 = type metadata accessor for Session.Transcript(0);
  sub_22BE2642C(*(v1 + v32[8]), type metadata accessor for Session.Event, type metadata accessor for Session.Event, v1);
  if (sub_22BE1AEA8(v1, 1, v25) == 1)
  {
    sub_22BE33928(v1, &qword_27D908310, &qword_22C27A410);
    sub_22C271E14();
    if (qword_28107B210 != -1)
    {
      sub_22BE188F0();
    }

    sub_22C2742D4();
    if (__src[3] == 1)
    {
      *&__dst[0] = 0;
      BYTE8(__dst[0]) = 1;
      memset(&__dst[1], 0, 72);
    }

    else
    {
      memcpy(__dst, __src, 0x58uLL);
    }

    sub_22BE341BC(__dst);
    sub_22C271DE4();
    (*(v7 + 16))(v12, v1, v4);
    sub_22C271E04();
    v34 = (v1 + v32[5]);
    v35 = *v34;
    v36 = v34[1];

    sub_22C271DA4();
    v37 = (v2 + v32[6]);
    v38 = *v37;
    v39 = v37[1];

    sub_22C271DB4();
    v40 = (v2 + v32[7]);
    v41 = *v40;
    v42 = v40[1];

    sub_22C271DC4();
    return (*(v43 + 32))(a1, v19, v44);
  }

  else
  {
    sub_22BE3F9A8(v1, v31);
    Session.Event.formingTraceIds()();
    return sub_22BE34278(v31);
  }
}

uint64_t sub_22BE956EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_22C26EB64();
    sub_22BE18000(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    sub_22BE187DC();
    v11 = v6;
  }

  else
  {
    sub_22C26EB64();
    v8 = sub_22BE3116C();
  }

  return sub_22BE19DC4(v8, v9, v10, v11);
}

uint64_t sub_22BE9579C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

uint64_t sub_22BE957C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + v1 + 31);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 8);
}

uint64_t sub_22BE957F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_22BE95898@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    sub_22C271E64();
    v4 = [v3 domain];
    sub_22C273024();

    sub_22C271E44();
    [v3 code];
    sub_22C271E34();
    [v3 code];
    sub_22C271E54();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22C271E74();

  return sub_22BE19DC4(a2, v5, 1, v6);
}

uint64_t sub_22BE9598C()
{
  v0 = sub_22C2720A4();
  sub_22BE952A4(v0, qword_27D908368);
  sub_22BE199F4(v0, qword_27D908368);
  return sub_22C272094();
}

uint64_t sub_22BE959E4()
{
  sub_22C271E84();
  sub_22BE95BB4();
  return sub_22C271F64();
}

unint64_t sub_22BE95BB4()
{
  result = qword_28107F178;
  if (!qword_28107F178)
  {
    sub_22C271E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F178);
  }

  return result;
}

uint64_t sub_22BE95C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BE95C6C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116018(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22BEB7D0C(v6);
  *a1 = v2;
  return result;
}

void sub_22BE95CD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22BE70138();
    v3 = v32;
    v6 = sub_22C259374(a1);
    v7 = 0;
    v8 = a1 + 64;
    v27 = v4;
    v28 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v30 = v7;
      v31 = v4;
      v29 = v5;
      v10 = (*(a1 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(*(a1 + 56) + 8 * v6);
      swift_bridgeObjectRetain_n();
      sub_22BEA7680(v13);
      sub_22BEA7680(v13);

      sub_22BE63574(v13);

      v14 = MEMORY[0x2318AB8D0](61, 0xE100000000000000);
      v15 = AST.Expr.description.getter(v14);
      MEMORY[0x2318AB8D0](v15);

      sub_22BE63574(v13);
      v16 = v3;
      v33 = v3;
      v17 = *(v3 + 16);
      if (v17 >= *(v16 + 24) >> 1)
      {
        sub_22BE70138();
        v16 = v33;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v11;
      v19 = 1 << *(a1 + 32);
      if (v6 >= v19)
      {
        goto LABEL_24;
      }

      v8 = a1 + 64;
      v20 = *(a1 + 64 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v3 = v16;
      if (*(a1 + 36) != v31)
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (a1 + 72 + 8 * v9);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_22BE2FC64(v6, v31, v29 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_22BE2FC64(v6, v31, v29 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v30 + 1;
      v6 = v19;
      v4 = v27;
      if (v30 + 1 == v28)
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

uint64_t AST.Program.stmts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_22BE95FFC()
{
  sub_22BE19460();
  sub_22BE3635C();
  v5 = sub_22C26E614();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v50 = v11;
  v12 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v53 = v16;
  v51 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22BE18000(v51);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E64();
  v20 = type metadata accessor for VariableSetter(0);
  v21 = sub_22BE1A1D0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v24);
  sub_22BEC0024();
  v26 = *(v3 + 16);
  if (v26 == *(v4 + 16) && v26 && v3 != v4)
  {
    sub_22BEBFEA0(v25);
    v28 = v3 + v27;
    v29 = v4 + v27;
    v45 = (v8 + 8);
    v47 = *(v30 + 72);
    v48 = v20;
    v31 = &qword_27D908FF8;
    v49 = v5;
    while (1)
    {
      sub_22BEBFD70();
      sub_22BEBFD70();
      v32 = *v2;
      v33 = *v1;
      sub_22BEA36D4();
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = *(v20 + 20);
      if ((sub_22C272844() & 1) == 0)
      {
        break;
      }

      v52 = v28;
      v36 = v31;
      v37 = *(v20 + 24);
      v38 = *(v51 + 48);
      sub_22BE22868();
      v31 = v36;
      sub_22BE22868();
      sub_22BE181B0(v0);
      if (v40)
      {
        sub_22BE181B0(v0 + v38);
        v39 = v52;
        if (!v40)
        {
          goto LABEL_17;
        }

        sub_22BE33928(v0, v31, &qword_22C27FC50);
        sub_22BE23504();
        sub_22BEBFDC4();
        sub_22BE39EAC();
        sub_22BEBFDC4();
      }

      else
      {
        sub_22BE22868();
        sub_22BE181B0(v0 + v38);
        if (v40)
        {
          sub_22BEC061C();
          v44(v53, v5);
LABEL_17:
          sub_22BE33928(v0, &qword_27D909028, &qword_22C27FC68);
          break;
        }

        sub_22BEC03BC();
        v41(v50, v0 + v38, v5);
        sub_22BE251C4();
        sub_22BEBFCD4(&unk_27D909030);
        v46 = sub_22C272FD4();
        v42 = *v45;
        v43 = sub_22BE2565C();
        v42(v43);
        (v42)(v53, v5);
        v31 = v36;
        sub_22BE33928(v0, v36, &qword_22C27FC50);
        sub_22BE23504();
        sub_22BEBFDC4();
        sub_22BE39EAC();
        sub_22BEBFDC4();
        v39 = v52;
        if ((v46 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v20 = v48;
      v29 += v47;
      v28 = v39 + v47;
      --v26;
      v5 = v49;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    sub_22BE23504();
    sub_22BEBFDC4();
    sub_22BE39EAC();
    sub_22BEBFDC4();
  }

LABEL_19:
  sub_22BE1AABC();
}

void sub_22BE967DC()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BE3D12C();
  MEMORY[0x28223BE20](v9);
  sub_22BEC0578();
  v11 = *(v5 + 16);
  if (v11 == *(v3 + 16) && v11 && v5 != v3)
  {
    sub_22BEBFEA0(v10);
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    do
    {
      sub_22BE1AB1C();
      sub_22BEBFD70();
      sub_22BE1B5E0();
      sub_22BEBFD70();
      v17 = sub_22BE1B328();
      v18 = v1(v17);
      sub_22BE1AB74();
      sub_22BEBFDC4();
      sub_22BE200D4();
      sub_22BEBFDC4();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      sub_22BEC0018();
    }

    while (!v19);
  }

  sub_22BE1AABC();
}

uint64_t sub_22BE9693C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_22C274014() & 1) == 0)
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

void sub_22BE969C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v25;
  a20 = v26;
  v27 = sub_22BE3FDB4();
  v28 = type metadata accessor for ContextProtoAliasTypes(v27);
  v29 = sub_22BE18000(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  sub_22BE1AB80();
  v32 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  sub_22BE3FF64(v36);
  v173 = sub_22BE5CE4C(&unk_27D909110, &unk_22C27FD10);
  sub_22BE18000(v173);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE486B0(v40, v158);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v41 = sub_22BE18000(matched);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  sub_22BE38A28(v44);
  v45 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v45);
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  sub_22BE32BE4(v49);
  v179 = sub_22BE5CE4C(&byte_27D909120, &unk_22C27FD20);
  sub_22BE18000(v179);
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE181D0(v53, v158);
  v185 = type metadata accessor for ContextProtoEntityMatch(0);
  v54 = sub_22BE179D8(v185);
  v182 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v58);
  v60 = &v158 - v59;
  v187 = sub_22C272594();
  v61 = sub_22BE179D8(v187);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  sub_22BEC07BC(v66);
  v67 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v67);
  v69 = *(v68 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v70);
  sub_22BE4104C(v71, v158);
  v180 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000(v180);
  v73 = *(v72 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v74);
  sub_22BE1B01C();
  v75 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v76 = sub_22BE1A1D0(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE3D12C();
  v188 = (v79 - v80);
  sub_22BE467D8();
  MEMORY[0x28223BE20](v81);
  sub_22BEC036C();
  v186 = v82;
  v83 = *(v22 + 16);
  sub_22BEC0478();
  if (v98 && v86 && v22 != v20)
  {
    v172 = v84;
    v162 = v28;
    sub_22BEBFEA0(v85);
    v88 = v22 + v87;
    v89 = 0;
    v169 = v20 + v87;
    v160 = v63 + 32;
    v161 = (v63 + 8);
    v91 = *(v90 + 72);
    v159 = v21;
    v171 = v92;
    v164 = v88;
    v163 = v91;
    while (1)
    {
      sub_22BEBFD70();
      if (v89 == v171)
      {
        break;
      }

      sub_22BEBFD70();
      LODWORD(v93) = *(v172 + 20);
      v94 = *(v180 + 48);
      sub_22BE22868();
      sub_22BE22868();
      sub_22BE1AB5C(v23, 1, v187);
      v170 = v89;
      if (v98)
      {
        sub_22BE1AB5C(v23 + v94, 1, v187);
        if (!v98)
        {
          goto LABEL_92;
        }

        v95 = sub_22BE1B18C();
        sub_22BE33928(v95, v96, &qword_22C294AA0);
      }

      else
      {
        v97 = v175;
        sub_22BE22868();
        sub_22BE1AB5C(v23 + v94, 1, v187);
        if (v98)
        {
          sub_22BE33554(&a12);
          v155(v97, v187);
LABEL_92:
          sub_22BE33928(v23, &qword_27D909130, &unk_22C27FD30);
LABEL_100:
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          goto LABEL_101;
        }

        sub_22BE33554(&a11);
        v99(v174, v23 + v94, v187);
        sub_22BEBFE88();
        sub_22BEBFCD4(&unk_27D909148);
        sub_22BE1A8C4();
        LOBYTE(v93) = sub_22C272FD4();
        v100 = *v161;
        v101 = sub_22BE1C2A0();
        v100(v101);
        v102 = sub_22BE232C8();
        v100(v102);
        v103 = sub_22BE1B18C();
        sub_22BE33928(v103, v104, &qword_22C294AA0);
        if ((v93 & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      v105 = *v186;
      v106 = *v188;
      v107 = *(*v186 + 16);
      if (v107 != (*v188)[2])
      {
        goto LABEL_100;
      }

      if (v107 && v105 != v106)
      {
        v108 = 0;
        sub_22BE3519C(v182);
        v168 = v105 + v109;
        v167 = v106 + v109;
        v158 = v105;
        v166 = v106;
        v165 = v107;
        do
        {
          if (v108 >= *(v105 + 16))
          {
            goto LABEL_104;
          }

          v110 = *(v182 + 72) * v108;
          sub_22BE37314();
          sub_22BEBFD70();
          if (v108 >= v106[2])
          {
            goto LABEL_105;
          }

          sub_22BE37314();
          sub_22BEC0444(&a18);
          sub_22BEBFD70();
          v111 = *v60 == *v24 && *(v60 + 1) == *(v24 + 8);
          if (!v111 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_99;
          }

          v112 = *(v60 + 2) == *(v24 + 16) && *(v60 + 3) == *(v24 + 24);
          if (!v112 && (sub_22C274014() & 1) == 0 || *(v60 + 4) != *(v24 + 32) || *(v60 + 5) != *(v24 + 40) || *(v60 + 12) != *(v24 + 48))
          {
            goto LABEL_99;
          }

          v113 = v185[12];
          LODWORD(v93) = *(v179 + 48);
          v114 = v183;
          v106 = &qword_27D909118;
          v115 = &unk_22C294B60;
          sub_22BE22868();
          sub_22BE22868();
          v116 = sub_22BE26188();
          v117 = matched;
          sub_22BE1AB5C(v116, v118, matched);
          if (v98)
          {
            sub_22BEBFF2C();
            if (!v98)
            {
              goto LABEL_94;
            }

            sub_22BE33928(v114, &qword_27D909118, &unk_22C294B60);
            sub_22BEC0768();
          }

          else
          {
            v119 = v178;
            sub_22BE22868();
            sub_22BEBFF2C();
            if (v120)
            {
              sub_22BEC025C();
              sub_22BEBFDC4();
LABEL_94:
              v156 = &byte_27D909120;
              v157 = &unk_22C27FD20;
              goto LABEL_98;
            }

            sub_22BE29350();
            if (v119[1])
            {
              if (!byte_27D909120)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v121 = *v184;
              v122 = *v119;
              sub_22BEC02E4();
              if (v123)
              {
                goto LABEL_97;
              }
            }

            if (v119[3])
            {
              if (!v184[24])
              {
                goto LABEL_97;
              }
            }

            else
            {
              v124 = *(v184 + 2);
              v125 = v119[2];
              sub_22BEC02E4();
              if (v126)
              {
                goto LABEL_97;
              }
            }

            v127 = *(v117 + 24);
            v93 = *(v173 + 48);
            v128 = v176;
            sub_22BE22868();
            sub_22BE44808();
            sub_22BEC0400(&a13);
            sub_22BE1AB5C(v129, v130, v131);
            if (v98)
            {
              sub_22BE1AB5C(v93 + v128, 1, v127);
              v132 = v128;
              v114 = v183;
              if (!v98)
              {
                goto LABEL_96;
              }

              sub_22BE33928(v128, &qword_27D909108, &unk_22C2B5E20);
              v133 = matched;
            }

            else
            {
              sub_22BE44808();
              sub_22BE1AB5C(v93 + v128, 1, v127);
              if (v134)
              {
                sub_22BEC028C();
                sub_22BEBFDC4();
                v132 = v128;
                v114 = v183;
LABEL_96:
                sub_22BE33928(v132, &unk_27D909110, &unk_22C27FD10);
                goto LABEL_97;
              }

              sub_22BEC004C();
              v93 = v159;
              sub_22BEBFC80();
              v135 = v178;
              v136 = *v177;
              v137 = *v93;
              sub_22BEC04C8();
              v114 = v183;
              v133 = matched;
              if (!v98)
              {
LABEL_90:
                sub_22BEBFDC4();
                sub_22BEBFDC4();
                sub_22BE33928(v176, &qword_27D909108, &unk_22C2B5E20);
LABEL_97:
                sub_22BEBFDC4();
                sub_22BE2565C();
                sub_22BEBFDC4();
                v156 = &qword_27D909118;
                v157 = &unk_22C294B60;
LABEL_98:
                sub_22BE33928(v114, v156, v157);
LABEL_99:
                sub_22BEBFDC4();
                sub_22BE25EFC();
                sub_22BEBFDC4();
                goto LABEL_100;
              }

              if (v138 && v139 != v140)
              {
                while (v138)
                {
                  sub_22BEC04B8();
                  if (!v98)
                  {
                    goto LABEL_90;
                  }

                  sub_22BEC04A8();
                  if (v98)
                  {
                    goto LABEL_62;
                  }
                }

                __break(1u);
                goto LABEL_103;
              }

LABEL_62:
              v141 = *(v162 + 20);
              v106 = v135;
              sub_22C2704B4();
              sub_22BE18CE0();
              sub_22BEBFCD4(&qword_27D9090E0);
              sub_22C272FD4();
              sub_22BE35F5C();
              sub_22BEBFDC4();
              v114 = v183;
              sub_22BEBFDC4();
              sub_22BE33928(v176, &qword_27D909108, &unk_22C2B5E20);
              if ((v93 & 1) == 0)
              {
                goto LABEL_97;
              }
            }

            v142 = v133;
            v143 = v114;
            v144 = *(v142 + 28);
            sub_22C2704B4();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            v115 = v184;
            sub_22C272FD4();
            sub_22BE3C460();
            sub_22BEBFDC4();
            sub_22BE38FD8();
            sub_22BEBFDC4();
            sub_22BE33928(v143, &qword_27D909118, &unk_22C294B60);
            v105 = v158;
            sub_22BEC0768();
            if ((v93 & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          if (v60[52] != *(v24 + 52))
          {
            goto LABEL_99;
          }

          v145 = *(v60 + 7) == *(v24 + 56) && *(v60 + 8) == *(v24 + 64);
          if (!v145 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_99;
          }

          v146 = *(v60 + 9) == *(v24 + 72) && *(v60 + 10) == *(v24 + 80);
          if (!v146 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_99;
          }

          v147 = v185[13];
          v148 = &v60[v147];
          v149 = *&v60[v147 + 8];
          v150 = (v24 + v147);
          v151 = v150[1];
          if (v149)
          {
            if (!v151)
            {
              goto LABEL_99;
            }

            v152 = *v148 == *v150 && v149 == v151;
            if (!v152 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else if (v151)
          {
            goto LABEL_99;
          }

          v153 = v185[14];
          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          sub_22C272FD4();
          sub_22BE3C9F4();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          if ((v93 & 1) == 0)
          {
            goto LABEL_100;
          }

          ++v108;
        }

        while (v108 != v115);
      }

      v154 = *(v172 + 24);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22C272FD4();
      sub_22BEC00C4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      if (v93)
      {
        v89 = v170 + 1;
        if (v170 + 1 != v171)
        {
          continue;
        }
      }

      goto LABEL_101;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
  }

  else
  {
LABEL_101:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE97814()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE1A1D0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v10);
  sub_22BE339C0();
  if (v15 && v4 && v3 != v0)
  {
    sub_22BEBFEA0(v11);
    sub_22BE32350(v12);
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      if (*v2 != *v1)
      {
        break;
      }

      v13 = *(v2 + 16);
      v14 = *(v1 + 16);
      if (v13)
      {
        if (!v14)
        {
          break;
        }

        v15 = *(v2 + 8) == *(v1 + 8) && v13 == v14;
        if (!v15 && (sub_22C274014() & 1) == 0)
        {
          break;
        }
      }

      else if (v14)
      {
        break;
      }

      v16 = *(v6 + 24);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEBFFDC();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v0)
      {
        sub_22BEBFEE8();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_22BE191A8();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_22:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE979E0()
{
  sub_22BE19460();
  v6 = sub_22BE1BC30();
  v53 = type metadata accessor for TranscriptProtoStatementID(v6);
  v7 = sub_22BE18000(v53);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE336DC();
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20168(v14, v48);
  v15 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE22BFC();
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v19);
  v21 = sub_22BE1A1D0(updated);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v24);
  sub_22BEC0024();
  v26 = *(v5 + 16);
  if (v26 == *(v1 + 16) && v26 && v5 != v1)
  {
    sub_22BEBFEA0(v25);
    sub_22BEC0568(v27);
    v51 = v0;
    v49 = updated;
    v50 = v15;
    while (1)
    {
      sub_22BEBFD70();
      if (!v26)
      {
        break;
      }

      sub_22BE194C4();
      sub_22BEBFD70();
      sub_22BE3CC40();
      v30 = v30 && v28 == v29;
      if (!v30 && (sub_22C274014() & 1) == 0 || *(v4 + 16) != *(v3 + 16))
      {
        goto LABEL_44;
      }

      v31 = updated[6];
      v32 = *(v15 + 48);
      sub_22BE22868();
      sub_22BEC067C();
      sub_22BE1AB5C(v2, 1, v53);
      if (v30)
      {
        sub_22BE181B0(v2 + v32);
        if (!v30)
        {
          goto LABEL_42;
        }

        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BEC067C();
        sub_22BE181B0(v2 + v32);
        if (v33)
        {
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_42:
          v46 = &qword_27D909100;
          v47 = &unk_22C27FD00;
          goto LABEL_43;
        }

        sub_22BE1BE4C();
        sub_22BEBFC80();
        if (*v52 != *v51)
        {
          goto LABEL_40;
        }

        v34 = *(v52 + 16);
        v35 = *(v51 + 16);
        if (v34)
        {
          if (!v35 || (*(v52 + 8) == *(v51 + 8) ? (v36 = v34 == v35) : (v36 = 0), !v36 && (sub_22C274014() & 1) == 0))
          {
LABEL_40:
            sub_22BE191A8();
            sub_22BEBFDC4();
            sub_22BE3C968();
            sub_22BEBFDC4();
            v46 = &qword_27D9090F8;
            v47 = &unk_22C2AE4A0;
LABEL_43:
            sub_22BE33928(v2, v46, v47);
LABEL_44:
            sub_22BEC01E4();
            sub_22BEBFDC4();
            sub_22BE39EAC();
            sub_22BEBFDC4();
            goto LABEL_45;
          }
        }

        else if (v35)
        {
          goto LABEL_40;
        }

        v37 = *(v53 + 24);
        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE1A5A0();
        sub_22BEBFDC4();
        sub_22BE3C968();
        sub_22BEBFDC4();
        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
        updated = v49;
        v15 = v50;
        if ((v53 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v38 = updated[7];
      v39 = (v4 + v38);
      v40 = *(v4 + v38 + 8);
      v41 = (v3 + v38);
      v42 = *(v3 + v38 + 8);
      if (v40)
      {
        if (!v42)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v39 != *v41)
        {
          LOBYTE(v42) = 1;
        }

        if (v42)
        {
          goto LABEL_44;
        }
      }

      v43 = updated[8];
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v44 = sub_22BEC0A34();
      sub_22BEC01E4();
      sub_22BEBFDC4();
      sub_22BE39EAC();
      sub_22BEBFDC4();
      if (v44)
      {
        sub_22BE385A8();
        v30 = v26 == 1;
        v26 = v45;
        if (!v30)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
LABEL_45:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE97E88()
{
  sub_22BE19460();
  v7 = sub_22BE1BC30();
  v47 = type metadata accessor for TranscriptProtoStatementID(v7);
  v8 = sub_22BE18000(v47);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE336DC();
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v46 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v46);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE22BFC();
  v48 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v18);
  v19 = sub_22BE1A1D0(v48);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v22);
  sub_22BEC0024();
  v24 = *(v6 + 16);
  if (v24 == *(v1 + 16) && v24 && v6 != v1)
  {
    sub_22BEBFEA0(v23);
    sub_22BEC0568(v25);
    v45 = v0;
    while (1)
    {
      sub_22BEBFD70();
      sub_22BE194C4();
      sub_22BEBFD70();
      sub_22BE3CC40();
      v28 = v28 && v26 == v27;
      if (!v28 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v29 = *(v5 + 24);
      v30 = *(v4 + 24);
      if (v29)
      {
        if (!v30)
        {
          break;
        }

        v31 = *(v5 + 16) == *(v4 + 16) && v29 == v30;
        if (!v31 && (sub_22C274014() & 1) == 0)
        {
          break;
        }
      }

      else if (v30)
      {
        break;
      }

      v32 = *(v48 + 24);
      v33 = *(v46 + 48);
      sub_22BE22868();
      sub_22BE44808();
      v34 = sub_22BE26188();
      sub_22BE1AB5C(v34, v35, v47);
      if (v28)
      {
        sub_22BE181B0(v3 + v33);
        if (!v28)
        {
          goto LABEL_43;
        }

        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE1B328();
        sub_22BE44808();
        sub_22BE181B0(v3 + v33);
        if (v36)
        {
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_43:
          v43 = &qword_27D909100;
          v44 = &unk_22C27FD00;
LABEL_44:
          sub_22BE33928(v3, v43, v44);
          break;
        }

        sub_22BE1BE4C();
        sub_22BEBFC80();
        if (*v2 != *v45)
        {
          goto LABEL_41;
        }

        v37 = *(v2 + 16);
        v38 = *(v45 + 16);
        if (v37)
        {
          if (!v38 || (*(v2 + 8) == *(v45 + 8) ? (v39 = v37 == v38) : (v39 = 0), !v39 && (sub_22C274014() & 1) == 0))
          {
LABEL_41:
            sub_22BE191A8();
            sub_22BEBFDC4();
            sub_22BE1AB74();
            sub_22BEBFDC4();
            v43 = &qword_27D9090F8;
            v44 = &unk_22C2AE4A0;
            goto LABEL_44;
          }
        }

        else if (v38)
        {
          goto LABEL_41;
        }

        v40 = *(v47 + 24);
        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE1A5A0();
        sub_22BEBFDC4();
        sub_22BE1AB74();
        sub_22BEBFDC4();
        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      v41 = *(v48 + 28);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v42 = sub_22BEC0A34();
      sub_22BE3C100();
      sub_22BEBFDC4();
      sub_22BE39EAC();
      sub_22BEBFDC4();
      if (v42)
      {
        sub_22BE385A8();
        sub_22BEC0018();
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    sub_22BE3C100();
    sub_22BEBFDC4();
    sub_22BE39EAC();
    sub_22BEBFDC4();
  }

LABEL_46:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE98350()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v75 = v11;
  v73 = sub_22BE5CE4C(&qword_27D909150, &unk_22C2AE7B0);
  sub_22BE18000(v73);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE20168(v15, v68);
  v80 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  v16 = sub_22BE18000(v80);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE18928();
  MEMORY[0x28223BE20](v19);
  v72 = &v68 - v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BE252B8(v22);
  v23 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E64();
  v78 = sub_22BE5CE4C(&qword_27D909160, &qword_22C27FD58);
  sub_22BE18000(v78);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v76 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
  v30 = sub_22BE1A1D0(v76);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE3D12C();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v39 = &v68 - v38;
  v40 = *(v6 + 16);
  if (v40 != *(v4 + 16) || !v40 || v6 == v4)
  {
    goto LABEL_46;
  }

  v68 = v7;
  v69 = v2;
  v74 = v1;
  sub_22BEBFEA0(v37);
  v42 = v6 + v41;
  v43 = v4 + v41;
  v45 = *(v44 + 72);
  v70 = v39;
  v71 = v35;
  while (1)
  {
    sub_22BEBFD70();
    if (!v40)
    {
      __break(1u);
      return;
    }

    v79 = v40;
    sub_22BEBFD70();
    v46 = *(v78 + 48);
    v47 = v39;
    sub_22BE3C968();
    sub_22BE22868();
    sub_22BE22868();
    v48 = v80;
    sub_22BE1AB5C(v0, 1, v80);
    if (v49)
    {
      sub_22BE1AB5C(v0 + v46, 1, v48);
      v39 = v47;
      if (v49)
      {
        goto LABEL_34;
      }

      sub_22BEC019C();
      sub_22BEBFDC4();
      sub_22BE25EFC();
LABEL_41:
      sub_22BEBFDC4();
      sub_22BE33928(v0, &qword_27D909160, &qword_22C27FD58);
      goto LABEL_46;
    }

    sub_22BE22868();
    sub_22BE1AB5C(v0 + v46, 1, v48);
    if (v49)
    {
      sub_22BEC019C();
      sub_22BEBFDC4();
      sub_22BE1804C();
      sub_22BEBFDC4();
      sub_22BEC01B4();
      goto LABEL_41;
    }

    sub_22BEBFC80();
    v50 = (v77 + *(v73 + 48));
    sub_22BEBFD70();
    sub_22BEBFD70();
    sub_22BE38FD8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22BE384C8();
    v51 = v69;
    sub_22BEBFD70();
    v53 = *v51;
    v52 = v51[1];
    sub_22BE336E8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_44;
    }

    v54 = *v50;
    v55 = v50[1];
    v56 = v53 == v54 && v52 == v55;
    v39 = v70;
    if (v56)
    {
    }

    else
    {
      sub_22BE392D4();
      v57 = sub_22C274014();

      if ((v57 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_33:
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    sub_22BEBFDC4();
LABEL_34:
    v64 = sub_22BE260B8();
    sub_22BE33928(v64, v65, &qword_22C27FD50);
    v66 = *(v76 + 20);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v67 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE33BE8();
    sub_22BEBFDC4();
    if (v67)
    {
      v40 = v79 - 1;
      v43 += v45;
      v42 += v45;
      if (v79 != 1)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

  sub_22BE384C8();
  v58 = v72;
  sub_22BEBFD70();
  sub_22BE336E8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE184EC();
    sub_22BEBFDC4();
LABEL_44:
    sub_22BE33928(v77, &qword_27D909150, &unk_22C2AE7B0);
    goto LABEL_45;
  }

  sub_22BE1BE4C();
  v59 = v75;
  sub_22BEBFC80();
  v39 = v70;
  if (*v58 != *v59)
  {
    goto LABEL_38;
  }

  v60 = *(v58 + 2);
  v61 = *(v59 + 16);
  if (!v60)
  {
    if (v61)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (v61)
  {
    v62 = *(v58 + 1) == *(v59 + 8) && v60 == v61;
    if (v62 || (sub_22C274014() & 1) != 0)
    {
LABEL_31:
      v63 = *(v68 + 24);
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      if ((sub_22C272FD4() & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_22BEC022C();
      sub_22BEBFDC4();
      sub_22BE2565C();
      sub_22BEBFDC4();
      goto LABEL_33;
    }
  }

LABEL_38:
  sub_22BEC022C();
  sub_22BEBFDC4();
  sub_22BE2565C();
  sub_22BEBFDC4();
LABEL_39:
  sub_22BEC01B4();
  sub_22BEBFDC4();
LABEL_45:
  sub_22BEBFDC4();
  sub_22BE1804C();
  sub_22BEBFDC4();
  sub_22BE33928(v0, &qword_27D909158, &qword_22C27FD50);
  sub_22BEBFDC4();
  sub_22BE3C968();
  sub_22BEBFDC4();
LABEL_46:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE98ABC()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  v31 = type metadata accessor for TranscriptProtoAstflatValueEnum(v4);
  v5 = sub_22BE18000(v31);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v8);
  v9 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20310(v13, v28);
  v30 = sub_22BE5CE4C(&qword_27D909180, &qword_22C27FD78);
  sub_22BE18000(v30);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE22BFC();
  v29 = type metadata accessor for TranscriptProtoASTFlatValue(v17);
  v18 = sub_22BE1A1D0(v29);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v21);
  sub_22BE18024();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0(v22);
  sub_22BE25BF4(v23);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v26)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = sub_22BE1B328();
    sub_22BE33928(v24, v25, &qword_22C27FD70);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    sub_22BEC02C4();
    sub_22BEC00DC();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v26)
  {
    sub_22BE29350();
    v27 = sub_22BEC0610();
    static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v27);
    sub_22BE3C1D0();
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D909178, &qword_22C27FD70);
    if ((v0 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEC0154();
  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D909180, &qword_22C27FD78);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE98E20()
{
  sub_22BE19460();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v13);
  sub_22BE26800();
  v14 = *(v5 + 16);
  if (v14 == *(v3 + 16) && v14 && v5 != v3)
  {
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = v5 + v15;
    v17 = v3 + v15;
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v20 = (v18 - 8);
    v28 = *(v18 + 56);
    v29 = v19;
    while (1)
    {
      v21 = sub_22BE1B18C();
      v29(v21);
      if (!v14)
      {
        break;
      }

      v22 = sub_22BE36658();
      v23 = v18;
      v29(v22);
      sub_22BEBFCD4(v30);
      sub_22BEC0354();
      v24 = sub_22C272FD4();
      v25 = *v20;
      v26 = sub_22BE431C0();
      v25(v26);
      (v25)(v0, v7);
      if (v24)
      {
        v17 += v28;
        v16 += v28;
        v27 = v14-- == 1;
        v18 = v23;
        if (!v27)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_22BE1AABC();
  }
}

void sub_22BE98FD4()
{
  sub_22BE19460();
  v6 = v5;
  v7 = sub_22BE17BC4();
  v113 = type metadata accessor for ContextProtoSampleInvocation(v7);
  v8 = sub_22BE179D8(v113);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v13);
  sub_22BE181E4();
  v14 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v15 = sub_22BE18000(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v20 = v19 - v18;
  v21 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE23E58();
  v106 = sub_22BE5CE4C(&qword_27D9090C8, &unk_22C27FCD0);
  sub_22BE18000(v106);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  v107 = v28;
  v29 = sub_22BE183BC();
  v110 = type metadata accessor for ContextProtoRetrievedTool.Definition(v29);
  v30 = sub_22BE18000(v110);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v108 = v33;
  v34 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE181D0(v38, v96[0]);
  v109 = sub_22BE5CE4C(&qword_27D9090D8, &unk_22C27FCE0);
  sub_22BE18000(v109);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  v112 = v42;
  v43 = sub_22BE183BC();
  v111 = type metadata accessor for ContextProtoRetrievedTool(v43);
  v44 = sub_22BE1A1D0(v111);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v47);
  v49 = v96 - v48;
  v50 = *(v0 + 16);
  sub_22BEC0478();
  if (!v64 || !v52 || v0 == v6)
  {
LABEL_56:
    sub_22BE1AABC();
    return;
  }

  sub_22BEBFEA0(v51);
  v103 = v6 + v53;
  v104 = v49;
  v54 = 0;
  v56 = *(v55 + 72);
  v96[1] = v20;
  v96[2] = v10;
  v100 = v4;
  v101 = v14;
  v105 = v57;
  v98 = v56;
  v99 = v0 + v53;
  while (1)
  {
    sub_22BE2BCC4();
    sub_22BEBFD70();
    if (v54 == v105)
    {
      goto LABEL_58;
    }

    v102 = v54;
    sub_22BE2BCC4();
    sub_22BEBFD70();
    v58 = v112;
    v61 = *(v111 + 32);
    v59 = *(v109 + 48);
    sub_22BE22868();
    sub_22BE22868();
    v60 = sub_22BE36214();
    LOBYTE(v61) = v110;
    sub_22BE1AB5C(v60, v62, v110);
    if (v64)
    {
      sub_22BE181B0(v58 + v59);
      v63 = v104;
      if (!v64)
      {
        goto LABEL_50;
      }

      sub_22BE33928(v58, &qword_27D9090D0, &unk_22C294B30);
      goto LABEL_21;
    }

    v97 = v3;
    sub_22BE22868();
    sub_22BE181B0(v58 + v59);
    if (v64)
    {
      sub_22BE1B9A8();
      sub_22BEBFDC4();
LABEL_50:
      v93 = &qword_27D9090D8;
      v94 = &unk_22C27FCE0;
      v95 = v58;
LABEL_54:
      sub_22BE33928(v95, v93, v94);
LABEL_55:
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      goto LABEL_56;
    }

    sub_22BE36C70();
    sub_22BEBFC80();
    v65 = v107;
    v66 = *(v106 + 48);
    sub_22BE200E0();
    sub_22BE22868();
    sub_22BE22868();
    v67 = sub_22BE36214();
    sub_22BE1AB5C(v67, v68, v14);
    v63 = v104;
    if (v64)
    {
      sub_22BE1AB5C(v65 + v66, 1, v14);
      v3 = v97;
      if (!v64)
      {
        goto LABEL_52;
      }

      v69 = sub_22BE1804C();
      sub_22BE33928(v69, v70, &qword_22C27FCC8);
      goto LABEL_20;
    }

    sub_22BE22868();
    sub_22BE1AB5C(v65 + v66, 1, v14);
    v3 = v97;
    if (v71)
    {
      sub_22BE3CCBC();
      sub_22BEBFDC4();
LABEL_52:
      sub_22BE33928(v65, &qword_27D9090C8, &unk_22C27FCD0);
LABEL_53:
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      v93 = &qword_27D9090D0;
      v94 = &unk_22C294B30;
      v95 = v112;
      goto LABEL_54;
    }

    sub_22BE28E28();
    sub_22BEBFC80();
    static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)();
    v73 = v72;
    sub_22BEBFDC4();
    sub_22BE25EFC();
    sub_22BEBFDC4();
    sub_22BE33928(v65, &qword_27D9090C0, &qword_22C27FCC8);
    if ((v73 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_20:
    v74 = *(v110 + 20);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    LOBYTE(v74) = sub_22C272FD4();
    v61 = type metadata accessor for ContextProtoRetrievedTool.Definition;
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    sub_22BE33928(v112, &qword_27D9090D0, &unk_22C294B30);
    if ((v74 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_21:
    if (*v63 != *v3)
    {
      goto LABEL_55;
    }

    v75 = *(v63 + 1);
    v76 = *(v3 + 8);
    v77 = *(v75 + 16);
    if (v77 != *(v76 + 16))
    {
      goto LABEL_55;
    }

    if (v77 && v75 != v76)
    {
      sub_22BE3CF48();
      v80 = v78 + v79;
      v82 = v81 + v79;
      v84 = *(v83 + 72);
      while (1)
      {
        sub_22BEC010C();
        sub_22BE3CC34();
        sub_22BEBFD70();
        sub_22BEC010C();
        sub_22BE25C08();
        sub_22BEBFD70();
        v85 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
        if (!v85 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
        {
          break;
        }

        v86 = *(v113 + 24);
        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE3F358();
        sub_22BEBFDC4();
        sub_22BE36658();
        sub_22BEBFDC4();
        if ((v61 & 1) == 0)
        {
          goto LABEL_55;
        }

        v82 += v84;
        v80 += v84;
        if (!--v77)
        {
          goto LABEL_34;
        }
      }

      sub_22BEC00F4();
      sub_22BEBFDC4();
      sub_22BE200D4();
      sub_22BEBFDC4();
      goto LABEL_55;
    }

LABEL_34:
    if (v63[16] != *(v3 + 16))
    {
      goto LABEL_55;
    }

    v87 = *(v63 + 3);
    v88 = *(v3 + 24);
    sub_22BEC04C8();
    if (!v64)
    {
      goto LABEL_55;
    }

    if (v89 && v90 != v91)
    {
      break;
    }

LABEL_44:
    v92 = *(v111 + 36);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    LOBYTE(v92) = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    if (v92)
    {
      v14 = v101;
      v54 = v102 + 1;
      if (v102 + 1 != v105)
      {
        continue;
      }
    }

    goto LABEL_56;
  }

  while (v89)
  {
    sub_22BEC04B8();
    if (!v64)
    {
      goto LABEL_55;
    }

    sub_22BEC04A8();
    if (v64)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
  __break(1u);
LABEL_58:
  __break(1u);
}