uint64_t sub_2451DD444()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DD47C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2451DD4D4()
{
  MEMORY[0x245D66B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DD50C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2451DD544()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DD5C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DD5FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2451DD648()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2451DD6EC()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2451DD744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2452545FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2451DD7B0()
{
  v1 = sub_24525441C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2451DD89C()
{
  v1 = *(type metadata accessor for PassphraseEntryView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2451DD99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2451DDA74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2451DDBC0()
{
  v1 = *(type metadata accessor for NaturalizedKeyboardModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2451DDCA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2451DDCF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24525464C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2451DDD20@<X0>(void *a1@<X8>)
{
  result = sub_2452545CC();
  *a1 = v3;
  return result;
}

uint64_t sub_2451DDD4C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2451DDD58(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2451DDDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E078);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_2451DDE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E078);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2451DE104()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DE13C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2451DE1B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_245233B54(v1, v2);
}

uint64_t sub_2451DE1F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24525468C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2451DE260()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E4F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E540);
  sub_24521EA80(&qword_27EE0E548, &qword_27EE0E4F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E550);
  sub_24521EA80(&qword_27EE0E558, &qword_27EE0E550);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2451DE3E0()
{
  MEMORY[0x245D66B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DE418()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2451DE450()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2451DE4C0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2451DE4F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DE554()
{
  MEMORY[0x245D66B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DE58C()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_2451DE5C4()
{

  return MEMORY[0x2821FE8E8](v0, 27, 7);
}

uint64_t sub_2451DE65C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DE6A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2452545DC();
  *a1 = result;
  return result;
}

uint64_t sub_2451DE6FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24525465C();
  *a1 = result;
  return result;
}

uint64_t sub_2451DE76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2451DE7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2451DE870()
{
  v1 = *(type metadata accessor for RemoteSecretAlertViewModifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2451DE948()
{
  v1 = *(type metadata accessor for RemoteSecretAlertViewModifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_2451DEA24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAB0);
  sub_24521EA80(&qword_27EE0EAB8, &qword_27EE0EAA0);
  sub_24521E31C();
  sub_245236020();
  sub_245236298();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2451DEB44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2451DEC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2451DECD4()
{
  _Block_release(*(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2451DED40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2451DED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2451DEE58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2451DEF44()
{
  v1 = (type metadata accessor for RemoteSecretView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24525441C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);

  MEMORY[0x245D66B10](v0 + v3 + v1[8]);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2451DF0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2451DF150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2451DF1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2451DF238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2451DF2B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ECF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ECE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ECE0);
  sub_24523E948();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2451DF3B4()
{
  v1 = *(type metadata accessor for RemoteSecretEscapeOfferButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2451DF4A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24525461C();
  *a1 = result;
  return result;
}

uint64_t sub_2451DF4F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2451DF530@<X0>(uint64_t *a1@<X8>)
{
  result = sub_245231778();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2451DF55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2451DF620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24525415C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2451DF6CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24525415C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2451DF77C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2451DF7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2451DF870()
{
  v1 = *(type metadata accessor for RemoteSecretDeviceImageView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2451DF948()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2451DF9FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_245247198(v1);
}

uint64_t sub_2451DFA90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_245246898(v1, v2);
}

void sub_2451DFAD4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_245247430(v1);
}

uint64_t sub_2451DFB30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2451DFC20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2451E1C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2451E228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E2848(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  _Block_object_dispose((v3 - 192), 8);
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 216));
  _Unwind_Resume(a1);
}

void sub_2451E36C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E3FF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2451E4890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E4B0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2451E5D60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2451E6EE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2451E748C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2451E77DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E8520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E8C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E921C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2451E94B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E9CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451E9F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EA9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EAF70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2451EB5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EC2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EC578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EC6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2451ECA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451ECF2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2451ED18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451ED374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2451ED5B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2451ED8F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2451EDC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EE210(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2451EE9A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2451EEFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451EFD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 136));
  _Unwind_Resume(a1);
}

void sub_2451F1188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451F1968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2451F2524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2451F35A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E2BA60;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_2451FB8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAAUISpinnerViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppleAccountUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E2BC50;
    v6 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleAccountUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AAUISpinnerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUISpinnerViewControllerClass_block_invoke_cold_1();
  }

  getAAUISpinnerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2451FED28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24520128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E2BCD8;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_245203908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t SetupAssistantLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SetupAssistantLibraryCore_frameworkLibrary;
  v5 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278E2BEB0;
    v7 = *off_278E2BEC0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SetupAssistantLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_245209550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SetupAssistantLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v0 = SetupAssistantLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getBYSetupAssistantNeedsToRunSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v6 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    v1 = SetupAssistantLibrary();
    v4[3] = dlsym(v1, "BYSetupAssistantNeedsToRun");
    getBYSetupAssistantNeedsToRunSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_245209730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CDPUIBeneficiaryWelcomeViewController *_BYSetupAssistantNeedsToRun()
{
  BYSetupAssistantNeedsToRunSymbolLoc = getBYSetupAssistantNeedsToRunSymbolLoc();
  if (BYSetupAssistantNeedsToRunSymbolLoc)
  {

    return BYSetupAssistantNeedsToRunSymbolLoc();
  }

  else
  {
    v2 = _BYSetupAssistantNeedsToRun_cold_1();
    return [(CDPUIBeneficiaryWelcomeViewController *)v2 init];
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return objc_opt_class();
}

void sub_24520E9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24520ED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24520EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24520F6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_24520FA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24520FE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBFFPasscodeViewControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BFFPasscodeViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFPasscodeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFPasscodeViewControllerClass_block_invoke_cold_1();
    SetupAssistantUILibrary();
  }
}

void SetupAssistantUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SetupAssistantUILibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278E2BFC8;
    v3 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SetupAssistantUILibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

CDPRemoteSecretEntryPane *__getBFFSimplePasscodeInputViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFSimplePasscodeInputView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFSimplePasscodeInputViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBFFSimplePasscodeInputViewClass_block_invoke_cold_1();
    return [(CDPRemoteSecretEntryPane *)v3 initWithFrame:v4, v5];
  }

  return result;
}

void sub_245212468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBFFPaneHeaderViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BFFPaneHeaderView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFPaneHeaderViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFPaneHeaderViewClass_block_invoke_cold_1();
    SetupAssistantUILibrary_0();
  }
}

void SetupAssistantUILibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SetupAssistantUILibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278E2BFE0;
    v3 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SetupAssistantUILibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getBFFStyleClass_block_invoke_1(uint64_t a1)
{
  SetupAssistantUILibrary_0();
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFStyleClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBFFStyleClass_block_invoke_cold_1();
    return [(CDPUICustodianAskHelpViewModel *)v3 copyWithZone:v4, v5];
  }

  return result;
}

void sub_245212E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E2C050;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_3 = result;
  return result;
}

id getBFFStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBFFStyleClass_softClass_3;
  v7 = getBFFStyleClass_softClass_3;
  if (!getBFFStyleClass_softClass_3)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBFFStyleClass_block_invoke_3;
    v3[3] = &unk_278E2BA40;
    v3[4] = &v4;
    __getBFFStyleClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2452135B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245213930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBFFStyleClass_block_invoke_3(uint64_t a1)
{
  SetupAssistantUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BFFStyle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFStyleClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFStyleClass_block_invoke_cold_1();
    SetupAssistantUILibrary_1();
  }
}

void SetupAssistantUILibrary_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_4)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SetupAssistantUILibraryCore_block_invoke_4;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278E2C068;
    v3 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SetupAssistantUILibraryCore_frameworkLibrary_4)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_4 = result;
  return result;
}

CDPQuotaStorageRequestConfigurator *__getBFFPaneHeaderViewClass_block_invoke_0(uint64_t a1)
{
  SetupAssistantUILibrary_1();
  result = objc_getClass("BFFPaneHeaderView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFPaneHeaderViewClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBFFPaneHeaderViewClass_block_invoke_cold_1();
    return [(CDPQuotaStorageRequestConfigurator *)v3 initWithAccount:v4 appList:v5 contentSpecifiesE2EE:v6, v7];
  }

  return result;
}

void sub_245216054(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_245216578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2452166CC(uint64_t a1, id *a2)
{
  result = sub_24525516C();
  *a2 = 0;
  return result;
}

uint64_t sub_245216744(uint64_t a1, id *a2)
{
  v3 = sub_24525517C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2452167C4@<X0>(uint64_t *a1@<X8>)
{
  sub_24525518C();
  v2 = sub_24525515C();

  *a1 = v2;
  return result;
}

uint64_t sub_245216808()
{
  v0 = sub_24525518C();
  v1 = MEMORY[0x245D65D00](v0);

  return v1;
}

uint64_t sub_245216844()
{
  sub_24525518C();
  sub_2452551FC();
}

uint64_t sub_245216898()
{
  sub_24525518C();
  sub_2452555CC();
  sub_2452551FC();
  v0 = sub_2452555EC();

  return v0;
}

uint64_t sub_245216918()
{
  v0 = sub_24525518C();
  v2 = v1;
  if (v0 == sub_24525518C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2452555BC();
  }

  return v5 & 1;
}

void *sub_2452169A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_2452169F4(void *a1, uint64_t *a2)
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

void *sub_245216A24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_245216A50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_245216B28@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24525515C();

  *a1 = v2;
  return result;
}

uint64_t sub_245216B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24525518C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_245216B9C(uint64_t a1)
{
  v2 = sub_245216D70(&qword_27EE0F280, type metadata accessor for AIDAServiceType);
  v3 = sub_245216D70(&unk_27EE0DAA0, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_245216C94(uint64_t a1, unint64_t *a2)
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

uint64_t sub_245216D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245216DB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_245216F60(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_245216F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_245216FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext);
  v5 = sub_24525515C();
  v6 = [v4 initWithAltDSID_];

  [v6 setPresentingViewController_];
  [v6 setDeviceToDeviceEncryptionUpgradeType_];
  [v6 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  return v6;
}

void sub_2452170E4(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void *, id))
{
  swift_unknownObjectRetain();
  v9 = sub_245217380(a1, a2, a3);
  v10 = objc_allocWithZone(type metadata accessor for ADPUpsellHostingController(0));
  v11 = v9;
  v12 = sub_2452547DC();
  v13 = v11;
  a5(v12, v13);
}

CDPUIWalrusSwiftUIFactory __swiftcall CDPUIWalrusSwiftUIFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_245217380(void *a1, uint64_t a2, uint64_t a3)
{
  v23[3] = sub_245217E28(0, &qword_27EE0DBA0);
  v23[4] = &off_285824948;
  v23[0] = a2;
  v22[3] = sub_245217E28(0, &qword_27EE0DBA8);
  v22[4] = &off_285824968;
  v22[0] = a3;
  v6 = type metadata accessor for ADPUpsellViewModel();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled] = sub_245219760();
  v8 = &v7[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState];
  *v9 = 0u;
  v9[1] = 0u;
  v10 = OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__delegate;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_2452541AC();
  *&v7[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel_context] = a1;
  sub_245217E70(v23, &v7[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel_urlBag]);
  sub_245217E70(v22, &v7[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel_reachabilityProvider]);
  swift_unknownObjectRetain();
  v11 = a1;
  sub_245217ED4(&v7[v10]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v21.receiver = v7;
  v21.super_class = v6;
  v12 = objc_msgSendSuper2(&v21, sel_init);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = objc_opt_self();
  v15 = v12;

  v16 = [v14 sharedInstance];
  v17 = swift_allocObject();
  *(v17 + 16) = sub_245217EFC;
  *(v17 + 24) = v13;
  v20[4] = sub_245217F04;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_24522B798;
  v20[3] = &block_descriptor_13;
  v18 = _Block_copy(v20);

  [v16 getWalrusConfigWithCompletion_];
  _Block_release(v18);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);

  return v15;
}

uint64_t sub_245217664(void *a1, uint64_t a2, void *a3)
{
  v40 = type metadata accessor for AdvancedDataProtectionView() - 8;
  v6 = MEMORY[0x28223BE20](v40);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = (&v34 - v8);
  v9 = [objc_opt_self() sharedNetworkObserver];
  v38 = [objc_opt_self() sharedInstance];
  v10 = [objc_allocWithZone(MEMORY[0x277CFD548]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CEC790]) init];
  type metadata accessor for AdvancedDataProtectionAccountRecoveryStatusFetcher();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  *(v12 + 40) = v9;
  v13 = objc_allocWithZone(type metadata accessor for AccountRecoveryRowViewModel());
  v14 = v9;

  v35 = a2;
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = sub_24524EE04(v15, v12, a2);
  v36 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v37 = v17;
  type metadata accessor for AdvancedDataProtectionDataClassViewModel();
  v18 = swift_allocObject();
  v19 = objc_allocWithZone(type metadata accessor for AdvancedDataProtectionViewModel());
  swift_unknownObjectWeakInit();
  v20 = v14;
  v21 = v15;
  v22 = a3;

  v23 = v38;
  v24 = sub_24522C9DC(v21, v16, v20, v18, v23, sub_245217F58, v17);

  v25 = v35;
  swift_unknownObjectWeakAssign();
  [v25 setDelegate_];
  KeyPath = swift_getKeyPath();
  v27 = v39;
  *v39 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBB0);
  swift_storeEnumTagMultiPayload();
  v28 = (v27 + *(v40 + 28));
  type metadata accessor for AdvancedDataProtectionViewModelInterface();
  sub_245217F60(&qword_27EE0DBB8, type metadata accessor for AdvancedDataProtectionViewModelInterface);
  v29 = v24;
  *v28 = sub_24525448C();
  v28[1] = v30;
  v31 = objc_allocWithZone(type metadata accessor for AdvancedDataProtectionHostingController(0));
  sub_245217FA8(v27, v41);
  v32 = sub_2452547DC();

  sub_24521800C(v27);
  return v32;
}

uint64_t sub_245217A10(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = sub_2452550CC();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2452550FC();
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245217E28(0, &qword_27EE0DB80);
  v26 = sub_2452553DC();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v25;
  v17[7] = a6;
  aBlock[4] = sub_245217D0C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v19 = a1;
  v20 = a2;
  v21 = a3;

  sub_2452550EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245217F60(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_245217D7C();
  sub_2452554DC();
  v22 = v26;
  MEMORY[0x245D65E70](0, v16, v13, v18);
  _Block_release(v18);

  (*(v29 + 8))(v13, v11);
  return (*(v27 + 8))(v16, v28);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_245217D7C()
{
  result = qword_27EE0DB98;
  if (!qword_27EE0DB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DB98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_245217E28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_245217E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_245217F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245217FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedDataProtectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24521800C(uint64_t a1)
{
  v2 = type metadata accessor for AdvancedDataProtectionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245218084()
{
  v1 = sub_2452550CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2452550FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 40) isNetworkReachable])
  {
    v9 = dispatch_group_create();
    v10 = swift_allocObject();
    v32 = v5;
    v11 = v10;
    *(v10 + 16) = 0;
    v12 = swift_allocObject();
    v31 = v6;
    v13 = v12;
    *(v12 + 16) = 0;
    dispatch_group_enter(v9);
    v14 = *(v0 + 24);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v9;
    v38 = sub_245218864;
    v39 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v29 = v1;
    v36 = sub_24521859C;
    v37 = &block_descriptor_0;
    v16 = _Block_copy(&aBlock);
    v30 = v2;

    v17 = v9;

    [v14 isRecoveryKeyAvailableWithCompletion_];
    _Block_release(v16);
    dispatch_group_enter(v17);
    v18 = *(v0 + 32);
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = v17;
    v38 = sub_245218910;
    v39 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_245218690;
    v37 = &block_descriptor_19;
    v20 = _Block_copy(&aBlock);
    v28 = v17;

    [v18 fetchMyCustodians_];
    _Block_release(v20);
    sub_245217E28(0, &qword_27EE0DB80);
    v21 = sub_2452553DC();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v11;
    v23[4] = v13;
    v38 = sub_245218918;
    v39 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_24522D9C8;
    v37 = &block_descriptor_28;
    v24 = _Block_copy(&aBlock);

    sub_2452550EC();
    v33 = MEMORY[0x277D84F90];
    sub_245218924();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
    sub_245217D7C();
    v25 = v29;
    sub_2452554DC();
    v26 = v28;
    sub_2452553AC();
    _Block_release(v24);

    (*(v30 + 8))(v4, v25);
    (*(v31 + 8))(v8, v32);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_24524F2E8();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24521859C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_245218614(unint64_t a1, uint64_t a2, NSObject *a3)
{
  if (a1 >> 62)
  {
    v5 = sub_24525556C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  *(a2 + 16) = v5;
  dispatch_group_leave(a3);
}

uint64_t sub_245218690(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_245217E28(0, &qword_27EE0DBC0);
  v2 = sub_2452552BC();

  v1(v2);
}

uint64_t sub_245218714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (*(result + 16) & 1) != 0 || (swift_beginAccess(), (*(a2 + 16)))
    {
      v7 = 1;
    }

    else
    {
      swift_beginAccess();
      v7 = *(a3 + 16) > 0;
    }

    *(v6 + 16) = v7;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24524F2E8();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2452187F0()
{
  sub_245217ED4((v0 + 6));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_245218864(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  dispatch_group_leave(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_245218924()
{
  result = qword_27EE0DB88;
  if (!qword_27EE0DB88)
  {
    sub_2452550CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DB88);
  }

  return result;
}

void sub_24521898C(uint64_t a1, uint64_t a2)
{
  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24525420C();
  __swift_project_value_buffer(v4, qword_27EE11750);
  v5 = sub_2452541EC();
  v6 = sub_24525536C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    aBlock[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBC8);
    v9 = sub_2452551AC();
    v11 = sub_24524031C(v9, v10, aBlock);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24524031C(0xD000000000000025, 0x8000000245262380, aBlock);
    _os_log_impl(&dword_2451DB000, v5, v6, "[%s %s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D66A70](v8, -1, -1);
    MEMORY[0x245D66A70](v7, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_245219AA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24521859C;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  [v12 isWalrusStatusMismatchDetectionEnabledWithCompletion_];
  _Block_release(v14);
}

void sub_245218BF4(char a1, id a2, void (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v8 = sub_24525420C();
    __swift_project_value_buffer(v8, qword_27EE11750);
    v9 = a2;
    v10 = sub_2452541EC();
    v11 = sub_24525537C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBD8);
      v15 = sub_2452551AC();
      v17 = sub_24524031C(v15, v16, aBlock);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2451DB000, v10, v11, "Could not fetch WalrusStatusMismatchDetectionEnabled configuration. Error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D66A70](v13, -1, -1);
      MEMORY[0x245D66A70](v12, -1, -1);
    }

    a3(0);
  }

  else if (a1)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CFD568]) init];
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    aBlock[4] = sub_245219AC4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245219190;
    aBlock[3] = &block_descriptor_6;
    v20 = _Block_copy(aBlock);

    [v18 combinedWalrusStatusWithCompletion_];
    _Block_release(v20);
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v21 = sub_24525420C();
    __swift_project_value_buffer(v21, qword_27EE11750);
    v22 = sub_2452541EC();
    v23 = sub_24525536C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2451DB000, v22, v23, "WalrusStatusMismatchDetectionEnabled feature disabled through server config", v24, 2u);
      MEMORY[0x245D66A70](v24, -1, -1);
    }

    a3(0);
  }
}

void sub_245218F40(void *a1, id a2, void (*a3)(id))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24525420C();
    __swift_project_value_buffer(v6, qword_27EE11750);
    v7 = a2;
    v8 = sub_2452541EC();
    v9 = sub_24525537C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v10 = 136315650;
      v18 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBC8);
      v13 = sub_2452551AC();
      v15 = sub_24524031C(v13, v14, &v18);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24524031C(0xD000000000000025, 0x8000000245262380, &v18);
      *(v10 + 22) = 2112;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v17;
      *v11 = v17;
      _os_log_impl(&dword_2451DB000, v8, v9, "[%s %s]: Error while fetching combined walrus status: %@", v10, 0x20u);
      sub_245219A3C(v11);
      MEMORY[0x245D66A70](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x245D66A70](v12, -1, -1);
      MEMORY[0x245D66A70](v10, -1, -1);
    }

    a3(0);
  }

  else
  {
    a3([a1 mismatchDetected]);
  }
}

void sub_245219190(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_24521921C(void *a1, id a2, void (*a3)(id, uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24525420C();
    __swift_project_value_buffer(v6, qword_27EE11750);
    v7 = a2;
    v8 = sub_2452541EC();
    v9 = sub_24525537C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136315138;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBD8);
      v13 = sub_2452551AC();
      v15 = sub_24524031C(v13, v14, &v37);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2451DB000, v8, v9, "Could not fetch walrus availability configuration. Error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245D66A70](v11, -1, -1);
      MEMORY[0x245D66A70](v10, -1, -1);
    }

    a3(0, 0, 0);
  }

  else
  {
    if (a1)
    {
      v16 = qword_27EE0D9E8;
      v17 = a1;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = sub_24525420C();
      __swift_project_value_buffer(v18, qword_27EE11750);
      v19 = v17;
      v20 = sub_2452541EC();
      v21 = sub_24525539C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v37 = v23;
        *v22 = 136315138;
        [v19 featureStatus];
        type metadata accessor for AKFeatureAvailableStatus(0);
        v24 = sub_2452551AC();
        v26 = sub_24524031C(v24, v25, &v37);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_2451DB000, v20, v21, "Setting walrus feature availability status for primary account - %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x245D66A70](v23, -1, -1);
        MEMORY[0x245D66A70](v22, -1, -1);
      }

      v27 = [v19 featureStatus];
      if (v27)
      {
        if (v27 == 2)
        {
          v32 = [v19 localizedStatusDescription];
          if (v32)
          {
            v33 = v32;
            v34 = sub_24525518C();
            v36 = v35;
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          a3(0, v34, v36);

          return;
        }

        if (v27 != 1)
        {
          v27 = 0;
        }
      }

      a3(v27, 0, 0);

      return;
    }

    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v28 = sub_24525420C();
    __swift_project_value_buffer(v28, qword_27EE11750);
    v29 = sub_2452541EC();
    v30 = sub_24525537C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2451DB000, v29, v30, "There is no walrus config.", v31, 2u);
      MEMORY[0x245D66A70](v31, -1, -1);
    }

    a3(0, 0, 0);
  }
}

uint64_t sub_24521968C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2452196EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

BOOL sub_245219760()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CFD568]) init];
  v19[0] = 0;
  v1 = [v0 walrusStatus_];
  v2 = v19[0];
  if (v19[0])
  {
    swift_willThrow();
    v3 = qword_27EE0D9E8;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_24525420C();
    __swift_project_value_buffer(v5, qword_27EE11750);
    v6 = v4;
    v7 = sub_2452541EC();
    v8 = sub_24525537C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v9 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBC8);
      v12 = sub_2452551AC();
      v14 = sub_24524031C(v12, v13, v19);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24524031C(0xD000000000000011, 0x8000000245262360, v19);
      *(v9 + 22) = 2112;
      v15 = v6;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v16;
      *v10 = v16;
      _os_log_impl(&dword_2451DB000, v7, v8, "[%s %s]: Error while fetching walrus status: %@", v9, 0x20u);
      sub_245219A3C(v10);
      MEMORY[0x245D66A70](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x245D66A70](v11, -1, -1);
      MEMORY[0x245D66A70](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v17 = v1;

    return v17 == 1;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_245219A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245219AF8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v34 = type metadata accessor for PassphraseEntryView(0);
  MEMORY[0x28223BE20](v34);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD38);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  *&v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  sub_24525500C();
  v11 = *(v38 + 160);
  v12 = *(v38 + 184);
  sub_24521D71C();

  sub_24521D724();
  if (v11 < 0)
  {
    sub_24525500C();
    v21 = type metadata accessor for iOSRemoteSecretEntryView(0);
    v22 = (v1 + *(v21 + 20));
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v1 + *(v21 + 24));
    type metadata accessor for RemoteSecretViewModel();
    sub_24521D72C(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);

    v26 = v30;
    sub_24525502C();
    v27 = v34;
    v28 = (v26 + *(v34 + 20));
    *v28 = v23;
    v28[1] = v24;
    *(v26 + *(v27 + 24)) = v25;
    sub_24521E8D4(v26, v4, type metadata accessor for PassphraseEntryView);
    swift_storeEnumTagMultiPayload();
    sub_24521D774();
    sub_24521D72C(&unk_27EE0DD50, type metadata accessor for PassphraseEntryView);
    sub_24525489C();
    return sub_24521D7C8(v26);
  }

  else
  {
    v13 = v1;
    sub_24525501C();
    swift_getKeyPath();
    sub_24525503C();

    v14 = *(v31 + 8);
    v14(v10, v5);
    v31 = v38;
    v15 = v39;
    v30 = v40;
    sub_24525501C();
    swift_getKeyPath();
    sub_24525503C();

    v14(v8, v5);
    v16 = v35;
    v17 = v36;
    LOBYTE(v14) = v37;
    v18 = *(v13 + *(type metadata accessor for iOSRemoteSecretEntryView(0) + 24));
    *v4 = v31;
    v19 = v30;
    *(v4 + 2) = v15;
    *(v4 + 3) = v19;
    *(v4 + 4) = v16;
    *(v4 + 5) = v17;
    v4[48] = v14;
    *(v4 + 7) = v12;
    v4[64] = v18;
    swift_storeEnumTagMultiPayload();
    sub_24521D774();
    sub_24521D72C(&unk_27EE0DD50, type metadata accessor for PassphraseEntryView);
    return sub_24525489C();
  }
}

uint64_t sub_245219F74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD08);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24525AD00;
  *(v0 + 32) = sub_24525518C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_24525518C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_24525518C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_24525518C();
  *(v0 + 88) = v4;
  result = sub_24525518C();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  qword_27EE0DBE0 = v0;
  return result;
}

BOOL sub_24521A170()
{
  v2 = *(v0 + OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 16);
  v1 = *(v0 + OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 24);
  v9 = *(v0 + OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret);
  v10 = v2;
  v11 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  MEMORY[0x245D659F0](v8, v3);
  v5 = v8[0];
  v4 = v8[1];

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t sub_24521A1F4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v27 = sub_24525407C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView_maxLength];
  sub_24525403C();
  v9 = &v2[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret];
  v10 = *&v2[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret];
  v11 = *&v2[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 8];
  v12 = *&v2[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 16];
  v13 = *&v2[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 24];
  *&v32 = v10;
  *(&v32 + 1) = v11;
  v26 = v12;
  v33 = v12;
  v34 = v13;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  MEMORY[0x245D659F0](v35);
  result = sub_24525520C();
  if (__OFSUB__(v8, result))
  {
    __break(1u);
  }

  else
  {
    if (v8 - result < 1)
    {
      v19 = 0;
    }

    else
    {
      v23 = &v23;
      v24 = v2;
      MEMORY[0x28223BE20](result);
      *(&v23 - 2) = v7;

      v15 = sub_24521CFA8(sub_24521CDF0, (&v23 - 4), v25, a2);
      v17 = v16;

      v3 = v24;
      MEMORY[0x245D65CD0](v15, v17);

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      v19 = v18 != 0;
    }

    (*(v5 + 8))(v7, v27);
    v31[0] = v10;
    v31[1] = v11;
    v31[2] = v26;
    v31[3] = v13;
    v29 = v35[0];
    v30 = v35[1];
    v20 = v28;
    sub_245254F7C();

    if (v19)
    {
      [v3 setNeedsDisplay];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v21 = *(v9 + 2);
        v22 = *(v9 + 3);
        v32 = *v9;
        v33 = v21;
        v34 = v22;
        MEMORY[0x245D659F0](v31, v20);
        type metadata accessor for PinEntryViewWrapper.Coordinator();
        sub_24521AD2C();

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24521A538()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret];
  v3 = *&v0[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 16];
  v4 = *&v0[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret + 24];
  v24 = *&v0[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret];
  v25 = v3;
  v26 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  MEMORY[0x245D659F0](&v19);
  v7 = v19;
  v6 = v20;

  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v11 = *(v2 + 1);
    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    *&v24 = *v2;
    v10 = v24;
    *(&v24 + 1) = v11;
    v25 = v13;
    v26 = v12;

    v14 = MEMORY[0x245D659F0](v23, v5);
    sub_24521A6D4(v14);

    v19 = v10;
    v20 = v11;
    v21 = v13;
    v22 = v12;
    v17 = v23[0];
    v18 = v23[1];
    sub_245254F7C();

    [v1 setNeedsDisplay];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v15 = *(v2 + 2);
      v16 = *(v2 + 3);
      v24 = *v2;
      v25 = v15;
      v26 = v16;
      MEMORY[0x245D659F0](&v19, v5);
      type metadata accessor for PinEntryViewWrapper.Coordinator();
      sub_24521AD2C();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24521A6D4(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_24525521C();

  return MEMORY[0x2821FBE70](a1);
}

id sub_24521A86C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrappedPinEntryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24521A930()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE8);
  sub_24525497C();
  v2 = v0[1];
  v16 = *v0;
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  sub_245254F8C();
  v11 = v13;
  v3 = v14;
  v4 = v15;
  v5 = type metadata accessor for WrappedPinEntryView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView_delegate + 8] = 0;
  v7 = swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView_isSecureTextEntry] = 1;
  *&v6[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView_maxLength] = v1;
  *(v7 + 8) = &off_2858246E8;
  swift_unknownObjectWeakAssign();
  v8 = &v6[OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView__secret];
  *v8 = v11;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v9;
}

id sub_24521AA68(void *a1)
{
  if ([a1 isFirstResponder])
  {
    goto LABEL_9;
  }

  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  MEMORY[0x245D659F0](v16, v4);
  v6 = v16[0];
  v5 = v16[1];

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_9:
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v13 = sub_24525420C();
    __swift_project_value_buffer(v13, qword_27EE11750);
    v9 = sub_2452541EC();
    v14 = sub_24525536C();
    if (!os_log_type_enabled(v9, v14))
    {
      v12 = &selRef_becomeFirstResponder;
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2451DB000, v9, v14, "Pin Entry View is becoming first responder.", v11, 2u);
    v12 = &selRef_becomeFirstResponder;
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v8 = sub_24525420C();
    __swift_project_value_buffer(v8, qword_27EE11750);
    v9 = sub_2452541EC();
    v10 = sub_24525536C();
    if (!os_log_type_enabled(v9, v10))
    {
      v12 = &selRef_resignFirstResponder;
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2451DB000, v9, v10, "Pin Entry View is resigning first responder status.", v11, 2u);
    v12 = &selRef_resignFirstResponder;
  }

  MEMORY[0x245D66A70](v11, -1, -1);
LABEL_16:

  return [a1 *v12];
}

uint64_t sub_24521AC7C()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
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

uint64_t sub_24521AD2C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  return sub_245254F7C();
}

uint64_t sub_24521ADA0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  type metadata accessor for PinEntryViewWrapper.Coordinator();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v7;
  *a1 = v8;
}

uint64_t sub_24521AE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24521CD9C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24521AECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24521CD9C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24521AF30()
{
  sub_24521CD9C();
  sub_24525487C();
  __break(1u);
}

unint64_t sub_24521AF5C()
{
  result = qword_27EE0DCD8;
  if (!qword_27EE0DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DCD8);
  }

  return result;
}

__n128 sub_24521AFB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  sub_245254F8C();
  v6 = sub_24525506C();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF48);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF50) + 36));
  result = v12;
  *v10 = v12;
  v10[1].n128_u64[0] = v13;
  v10[1].n128_u64[1] = v14;
  v10[2].n128_u64[0] = v5;
  v10[2].n128_u64[1] = v6;
  v10[3].n128_u64[0] = v8;
  return result;
}

uint64_t sub_24521B0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD80);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD88);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  *v8 = sub_24525471C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD90);
  sub_24521B338(a2, a1, &v8[*(v12 + 44)]);
  v13 = *(a2 + 16);
  v30 = *a2;
  v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  sub_245254F8C();
  v27[0] = v27[1];
  v14 = v28;
  v15 = v29;
  v16 = *(a2 + 56);
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD98) + 36)];
  *v17 = v27[0];
  *(v17 + 2) = v14;
  *(v17 + 3) = v15;
  *(v17 + 4) = v16;
  sub_24525440C();
  v19 = &v8[*(v6 + 36)];
  *v19 = v18 * 0.5;
  *(v19 + 1) = 0;
  sub_24521DC68();
  sub_245254D3C();
  sub_24521E5B0(v8, &qword_27EE0DD80);
  v20 = sub_24521DE00();
  MEMORY[0x245D65790](1, v9, v20);
  sub_24521E5B0(v11, &qword_27EE0DD88);
  KeyPath = swift_getKeyPath();
  v22 = sub_24525518C();
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDD8);
  v26 = (a3 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v22;
  v26[2] = v24;
  return result;
}

uint64_t sub_24521B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDE0);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDE8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v10;
  v11 = sub_24525441C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDF0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *(a1 + 56);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = v18;
    v48 = v9;
    v55[0] = 0;
    v55[1] = v21;
    swift_getKeyPath();
    v22 = *(v12 + 16);
    v45 = a2;
    v22(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v23 = (*(v12 + 80) + 81) & ~*(v12 + 80);
    v24 = swift_allocObject();
    v25 = *(a1 + 48);
    *(v24 + 48) = *(a1 + 32);
    *(v24 + 64) = v25;
    *(v24 + 80) = *(a1 + 64);
    v26 = *(a1 + 16);
    *(v24 + 16) = *a1;
    *(v24 + 32) = v26;
    (*(v12 + 32))(v24 + v23, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    sub_24521DC30(a1, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE00);
    sub_24521DF40();
    sub_24521E020();
    sub_245254FCC();
    if (*(a1 + 64))
    {
      v53 = *(a1 + 32);
      v54 = *(a1 + 48);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE58);
      MEMORY[0x245D659F0](v55, v27);
      v28 = v50;
      if (LOBYTE(v55[0]) == 1)
      {
        v29 = v46;
        sub_24525439C();
        v30 = sub_245254A8C();
        sub_24525440C();
        sub_2452542DC();
        v31 = v51;
        v32 = v29 + *(v51 + 36);
        *v32 = v30;
        *(v32 + 8) = v33;
        *(v32 + 16) = v34;
        *(v32 + 24) = v35;
        *(v32 + 32) = v36;
        *(v32 + 40) = 0;
        sub_24521E3D8(v29, v28, &qword_27EE0DDE0);
        v37 = v31;
        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v51;
      }

      v39 = v52;
      v40 = v48;
    }

    else
    {
      v38 = 1;
      v37 = v51;
      v39 = v52;
      v40 = v48;
      v28 = v50;
    }

    (*(v49 + 56))(v28, v38, 1, v37);
    v41 = *(v15 + 16);
    v42 = v47;
    v41(v47, v20, v14);
    sub_24521E22C(v28, v40);
    v41(v39, v42, v14);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE50);
    sub_24521E22C(v40, v39 + *(v43 + 48));
    sub_24521E5B0(v28, &qword_27EE0DDE8);
    v44 = *(v15 + 8);
    v44(v20, v14);
    sub_24521E5B0(v40, &qword_27EE0DDE8);
    return (v44)(v42, v14);
  }

  return result;
}

uint64_t sub_24521B888@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v45 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE60);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE28);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - v9;
  v11 = *a1;
  v12 = a2[1];
  v50 = *a2;
  v51 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DCE0);
  MEMORY[0x245D659F0](&v49, v13);
  sub_24525520C();

  v14 = sub_245254EBC();
  v15 = sub_245254B4C();
  KeyPath = swift_getKeyPath();
  *&v50 = v14;
  *(&v50 + 1) = KeyPath;
  *&v51 = v15;
  sub_245254AFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE30);
  sub_24521E174();
  sub_245254C4C();

  v17 = sub_245254A8C();
  v18 = *(a2 + 64);
  if ((v18 & 1) == 0 || v11)
  {
    sub_24525440C();
  }

  sub_2452542DC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v47 + 32))(v10, v8, v48);
  v27 = &v10[*(v46 + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  result = sub_245254AAC();
  v29 = result;
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = *(a2 + 7);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (!v31)
  {
    if (v11 == v32)
    {
LABEL_8:
      sub_2452542DC();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = v44;
      sub_24521E3D8(v10, v44, &qword_27EE0DE28);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE00);
      v42 = v41 + *(result + 36);
      *v42 = v29;
      *(v42 + 8) = v34;
      *(v42 + 16) = v36;
      *(v42 + 24) = v38;
      *(v42 + 32) = v40;
      *(v42 + 40) = 0;
      return result;
    }

LABEL_7:
    sub_24525440C();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24521BBC0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_24521DC28;
  a1[1] = v5;
  return sub_24521DC30(v10, v9);
}

uint64_t sub_24521BC4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE70);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  *v6 = sub_24525471C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE78);
  sub_24521BE18(a1, &v6[*(v10 + 44)]);
  if (*(a1 + *(type metadata accessor for PassphraseEntryView(0) + 24)) == 1)
  {
    v11 = sub_245254A9C();
  }

  else
  {
    v11 = sub_245254A4C();
  }

  v12 = v11;
  sub_24521E3D8(v6, v9, &qword_27EE0DE68);
  v13 = &v9[*(v7 + 36)];
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  sub_24525440C();
  v15 = v14 * 0.5;
  sub_24521E3D8(v9, a2, &qword_27EE0DE70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE80);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = 0;
  return result;
}

uint64_t sub_24521BE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v60 = sub_24525458C() - 8;
  MEMORY[0x28223BE20](v60);
  v57 = (v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE88) - 8;
  MEMORY[0x28223BE20](v68);
  v62 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - v7;
  v54[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE90);
  MEMORY[0x28223BE20](v54[0]);
  v10 = v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DE98);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  MEMORY[0x28223BE20](v11);
  v55 = v54 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DEA0);
  MEMORY[0x28223BE20](v63);
  v58 = v54 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DEA8);
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v56 = v54 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DEB0) - 8;
  MEMORY[0x28223BE20](v61);
  v59 = v54 - v16;
  v17 = type metadata accessor for PassphraseEntryView(0);
  v18 = (a1 + *(v17 + 20));
  v20 = *v18;
  v19 = v18[1];

  sub_24525501C();
  swift_getKeyPath();
  v54[1] = v5;
  sub_24525503C();

  (*(v6 + 8))(v8, v5);
  v70 = v20;
  v71 = v19;
  sub_24521E31C();
  sub_24525435C();
  LOBYTE(v19) = sub_245254A5C();
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DEC0) + 36)];
  *v21 = v19;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = sub_24525506C();
  v24 = v23;
  v25 = *(a1 + *(v17 + 24));
  v26 = v54[0];
  v27 = &v10[*(v54[0] + 36)];
  if (v25)
  {
    v28 = 26.0;
  }

  else
  {
    v28 = 8.0;
  }

  v29 = *(v60 + 28);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_24525477C();
  v32 = v57;
  (*(*(v31 - 8) + 104))(v57 + v29, v30, v31);
  *v32 = v28;
  v32[1] = v28;
  v33 = [objc_opt_self() systemGray6Color];
  v34 = sub_245254E2C();
  v35 = v62;
  sub_24521E370(v32, v62, MEMORY[0x277CDFC08]);
  *(v35 + *(v68 + 44)) = v34;
  sub_24521E3D8(v35, v27, &qword_27EE0DE88);
  v36 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DEC8) + 36));
  *v36 = v22;
  v36[1] = v24;
  v37 = sub_24521E440();
  v38 = v55;
  sub_245254C7C();
  sub_24521E5B0(v10, &qword_27EE0DE90);
  v72 = v26;
  v73 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v58;
  v40 = v65;
  sub_245254D3C();
  (*(v66 + 8))(v38, v40);
  v41 = sub_24521E610();
  v42 = v56;
  MEMORY[0x245D65790](1, v63, v41);
  sub_24521E5B0(v39, &qword_27EE0DEA0);
  KeyPath = swift_getKeyPath();
  v44 = sub_24525518C();
  v46 = v45;
  v47 = v59;
  (*(v64 + 32))(v59, v42, v67);
  v48 = &v47[*(v61 + 44)];
  v49 = v47;
  *v48 = KeyPath;
  v48[1] = v44;
  v48[2] = v46;
  sub_24525500C();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DF00);
  v51 = v69;
  v52 = v69 + *(v50 + 36);
  type metadata accessor for RemoteSecretViewModel();
  sub_24521D72C(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  sub_24525502C();
  *(v52 + *(type metadata accessor for NaturalizedKeyboardModifier(0) + 20)) = v25;
  return sub_24521E3D8(v49, v51, &qword_27EE0DEB0);
}

uint64_t sub_24521C5D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24521E8D4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PassphraseEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24521E370(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PassphraseEntryView);
  *a2 = sub_24521E29C;
  a2[1] = v7;
  return result;
}

uint64_t sub_24521C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v44 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF58);
  MEMORY[0x28223BE20](v46);
  v47 = &v34 - v4;
  v5 = sub_2452544BC();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NaturalizedKeyboardModifier(0);
  v8 = v7 - 8;
  v37 = *(v7 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_24525437C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF60);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v34 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF68);
  MEMORY[0x28223BE20](v45);
  if (*(v3 + *(v8 + 28)) == 1)
  {
    v18 = v3;
    v35 = &v34 - v16;
    v36 = v17;
    sub_24525436C();
    v19 = v11;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF70);
    v21 = sub_24521EA80(&qword_27EE0DF78, &qword_27EE0DF70);
    sub_245254C6C();
    (*(v19 + 8))(v13, v10);
    sub_24521E8D4(v18, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NaturalizedKeyboardModifier);
    v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_24521E370(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for NaturalizedKeyboardModifier);
    v24 = v39;
    sub_2452544AC();
    v48 = v20;
    v49 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = v35;
    v27 = v42;
    sub_245254DEC();

    (*(v40 + 8))(v24, v41);
    (*(v38 + 8))(v15, v27);
    v28 = v36;
    v29 = v45;
    (*(v36 + 16))(v47, v26, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v27;
    v49 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24525489C();
    return (*(v28 + 8))(v26, v29);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DF70);
    (*(*(v31 - 8) + 16))(v47, v44, v31);
    swift_storeEnumTagMultiPayload();
    v32 = sub_24521EA80(&qword_27EE0DF78, &qword_27EE0DF70);
    v48 = v31;
    v49 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v48 = v42;
    v49 = v33;
    swift_getOpaqueTypeConformance2();
    return sub_24525489C();
  }
}

uint64_t sub_24521CD44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  sub_24524A798();
}

unint64_t sub_24521CD9C()
{
  result = qword_27EE0DCF0;
  if (!qword_27EE0DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DCF0);
  }

  return result;
}

uint64_t sub_24521CE14(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_24521CFA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_24525551C();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_24525554C();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        sub_2452551EC();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

unint64_t sub_24521D178()
{
  result = qword_27EE0DCF8;
  if (!qword_27EE0DCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0DCF8);
  }

  return result;
}

void sub_24521D1C4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2452554EC();
    sub_24521D178();
    sub_24521D72C(&qword_27EE0DD00, sub_24521D178);
    sub_24525533C();
    v1 = v47[2];
    v2 = v47[3];
    v4 = v47[4];
    v3 = v47[5];
    v5 = v47[6];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v9 = 0;
  v40[5] = v4;
  v10 = (v4 + 64) >> 6;
  v40[7] = *MEMORY[0x277D76AB8];
  v11 = &__block_descriptor_40_e8_32bs_e17_v16__0__NSError_8ls32l8;
  v43 = v2;
  v44 = v1;
  v42 = v10;
  while (v1 < 0)
  {
    v19 = sub_2452554FC();
    if (!v19 || (v46 = v19, sub_24521D178(), swift_dynamicCast(), v14 = v47[0], v18 = v3, v15 = v5, !v47[0]))
    {
LABEL_33:
      sub_24521D5E0();
      return;
    }

LABEL_20:
    v20 = [v14 key];
    if (v20)
    {
      v13 = v20;
      v45 = v15;
      if (qword_27EE0D9E0 != -1)
      {
        swift_once();
      }

      v21 = qword_27EE0DBE0;

      v22 = [v13 v11[238]];
      v23 = sub_24525518C();
      v24 = v11;
      v26 = v25;

      v47[0] = v23;
      v47[1] = v26;
      MEMORY[0x28223BE20](v27);
      v40[2] = v47;
      LOBYTE(v22) = sub_24521CE14(sub_24521D5E8, v40, v21);

      if (v22)
      {
        v12 = v13;
        v13 = v14;
        v2 = v43;
        v1 = v44;
        v11 = v24;
        v10 = v42;
      }

      else
      {
        v41 = v9;
        v28 = v24;
        v29 = [v13 v24 + 3685];
        v30 = sub_24525518C();
        v32 = v31;

        if (v30 == sub_24525518C() && v32 == v33)
        {

          v2 = v43;
          v1 = v44;
          v10 = v42;
        }

        else
        {
          v35 = sub_2452555BC();

          v2 = v43;
          v1 = v44;
          v10 = v42;
          if ((v35 & 1) == 0)
          {
            v36 = [v13 characters];
            v37 = sub_24525518C();
            v39 = v38;

            sub_24521A1F4(v37, v39);

            goto LABEL_32;
          }
        }

        sub_24521A538();
LABEL_32:
        v12 = v14;
        v11 = v28;
        v9 = v41;
      }

      v14 = v13;
      v15 = v45;
    }

    v3 = v18;
    v5 = v15;
  }

  v16 = v3;
  v17 = v5;
  v18 = v3;
  if (v5)
  {
LABEL_16:
    v15 = (v17 - 1) & v17;
    v14 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v14)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_33;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_24521D5E8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2452555BC() & 1;
  }
}

void sub_24521D688()
{
  if (!qword_27EE0DD30)
  {
    type metadata accessor for RemoteSecretViewModel();
    v0 = sub_24525504C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0DD30);
    }
  }
}

uint64_t sub_24521D72C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24521D774()
{
  result = qword_27EE0DD48;
  if (!qword_27EE0DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DD48);
  }

  return result;
}

uint64_t sub_24521D7C8(uint64_t a1)
{
  v2 = type metadata accessor for PassphraseEntryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24521D9E0()
{
  sub_24521D688();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24521DA88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24521DAD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24521DB34()
{
  result = qword_27EE0DD70;
  if (!qword_27EE0DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DD78);
    sub_24521D774();
    sub_24521D72C(&unk_27EE0DD50, type metadata accessor for PassphraseEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DD70);
  }

  return result;
}

unint64_t sub_24521DC68()
{
  result = qword_27EE0DDA0;
  if (!qword_27EE0DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DD80);
    sub_24521DCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DDA0);
  }

  return result;
}

unint64_t sub_24521DCF4()
{
  result = qword_27EE0DDA8;
  if (!qword_27EE0DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DD98);
    sub_24521EA80(&qword_27EE0DDB0, &qword_27EE0DDB8);
    sub_24521DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DDA8);
  }

  return result;
}

unint64_t sub_24521DDAC()
{
  result = qword_27EE0DDC0;
  if (!qword_27EE0DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DDC0);
  }

  return result;
}

unint64_t sub_24521DE00()
{
  result = qword_27EE0DDC8;
  if (!qword_27EE0DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DD88);
    sub_24521DC68();
    sub_24521D72C(&qword_27EE0DDD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DDC8);
  }

  return result;
}

uint64_t sub_24521DEBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24525441C() - 8);
  v6 = v2 + ((*(v5 + 80) + 81) & ~*(v5 + 80));

  return sub_24521B888(a1, (v2 + 16), v6, a2);
}

unint64_t sub_24521DF40()
{
  result = qword_27EE0DE08;
  if (!qword_27EE0DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DDF8);
    sub_24521DFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DE08);
  }

  return result;
}

unint64_t sub_24521DFCC()
{
  result = qword_27EE0DE10;
  if (!qword_27EE0DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DE10);
  }

  return result;
}

unint64_t sub_24521E020()
{
  result = qword_27EE0DE18;
  if (!qword_27EE0DE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DE00);
    sub_24521E0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DE18);
  }

  return result;
}

unint64_t sub_24521E0AC()
{
  result = qword_27EE0DE20;
  if (!qword_27EE0DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DE30);
    sub_24521E174();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DE20);
  }

  return result;
}

unint64_t sub_24521E174()
{
  result = qword_27EE0DE38;
  if (!qword_27EE0DE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DE30);
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DE38);
  }

  return result;
}

uint64_t sub_24521E22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24521E29C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassphraseEntryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24521BC4C(v4, a1);
}

unint64_t sub_24521E31C()
{
  result = qword_27EE0DEB8;
  if (!qword_27EE0DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DEB8);
  }

  return result;
}

uint64_t sub_24521E370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24521E3D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24521E440()
{
  result = qword_27EE0DED0;
  if (!qword_27EE0DED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DE90);
    sub_24521E4F8();
    sub_24521EA80(&qword_27EE0DEF0, &qword_27EE0DEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DED0);
  }

  return result;
}

unint64_t sub_24521E4F8()
{
  result = qword_27EE0DED8;
  if (!qword_27EE0DED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DEC0);
    sub_24521EA80(&qword_27EE0DEE0, &qword_27EE0DEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DED8);
  }

  return result;
}

uint64_t sub_24521E5B0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24521E610()
{
  result = qword_27EE0DEF8;
  if (!qword_27EE0DEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DE90);
    sub_24521E440();
    swift_getOpaqueTypeConformance2();
    sub_24521D72C(&qword_27EE0DDD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DEF8);
  }

  return result;
}

uint64_t sub_24521E728(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24521E760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24521E7A8(uint64_t result, int a2, int a3)
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

void sub_24521E828()
{
  sub_24521D688();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24521E8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24521E93C()
{
  type metadata accessor for NaturalizedKeyboardModifier(0);

  return sub_24521CD44();
}

unint64_t sub_24521E99C()
{
  result = qword_27EE0DF80;
  if (!qword_27EE0DF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DF50);
    sub_24521EA80(&qword_27EE0DF88, &qword_27EE0DF48);
    sub_24521EA80(&qword_27EE0DF90, &qword_27EE0DF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DF80);
  }

  return result;
}

uint64_t sub_24521EA80(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24521EAC8()
{
  result = qword_27EE0DFA0;
  if (!qword_27EE0DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0DF70);
    sub_24521EA80(&qword_27EE0DF78, &qword_27EE0DF70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DFA0);
  }

  return result;
}

uint64_t sub_24521EC54(uint64_t a1)
{
  v3 = type metadata accessor for AdvancedDataProtectionView();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_245217FA8(a1, v5);
  v7 = sub_2452547DC();
  sub_24521800C(a1);
  return v7;
}

uint64_t sub_24521ECF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedDataProtectionView();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_245217FA8(a2, v6);
  v8 = sub_2452547CC();
  sub_24521800C(a2);
  return v8;
}

id sub_24521EE5C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_24521EEF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_24521EF74(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = objc_allocWithZone(type metadata accessor for ADPUpsellHostingController(0));
  v4 = v2;
  v5 = sub_2452547CC();
  v6 = v5;

  if (v5)
  {
  }

  return v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24521F008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24521F050(uint64_t result, int a2, int a3)
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

uint64_t sub_24521F0B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E038);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v29 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-v10];
  v12 = [objc_opt_self() bundle];
  v13 = sub_2452540EC();
  v15 = v14;

  v32 = v13;
  v33 = v15;
  sub_24521E31C();
  v16 = sub_245254BFC();
  v18 = v17;
  v28 = v19;
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v30 = a1;
  v31 = a2;
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E040);
  sub_24521EA80(&qword_27EE0E048, &qword_27EE0E040);
  sub_245254F4C();
  *&v11[*(v7 + 44)] = 256;
  v24 = v29;
  sub_24521F96C(v11, v29, &qword_27EE0E038);
  *a3 = v16;
  *(a3 + 8) = v18;
  LOBYTE(a1) = v28 & 1;
  *(a3 + 16) = v28 & 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E050);
  sub_24521F96C(v24, a3 + *(v25 + 64), &qword_27EE0E038);
  sub_24521F94C(v16, v18, a1);

  sub_24521E5B0(v11, &qword_27EE0E038);
  sub_24521E5B0(v24, &qword_27EE0E038);
  sub_24521F95C(v16, v18, a1);
}

void *sub_24521F3AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result presentAccountRecoveryFlow];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24521F40C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDE8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = a1;
  sub_24525423C();

  v53 = v11;
  if (v54)
  {
    v49 = 0;
    v50 = 0;
    v46 = 0;
    v48 = 0;
  }

  else
  {
    v12 = [objc_opt_self() bundle];
    v13 = sub_2452540EC();
    v44 = v6;
    v15 = v14;

    v54 = v13;
    v55 = v15;
    sub_24521E31C();
    v16 = sub_245254BFC();
    v18 = v17;
    v20 = v19;
    v45 = v4;
    sub_245254E9C();
    v21 = sub_245254BAC();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v6 = v44;

    v28 = v20 & 1;
    v11 = v53;
    sub_24521F95C(v16, v18, v28);
    v4 = v45;

    v49 = v23;
    v50 = v21;
    v46 = v25 & 1;
    sub_24521F94C(v21, v23, v25 & 1);
    v48 = v27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v29 = 1;
  if (v54 == 1)
  {
    sub_24525439C();
    v30 = sub_245254A8C();
    v31 = &v6[*(v3 + 36)];
    *v31 = v30;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    v31[40] = 1;
    sub_24521FA5C(v6, v11);
    v29 = 0;
  }

  (*(v4 + 56))(v11, v29, 1, v3);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = v52;
  sub_24521F96C(v11, v52, &qword_27EE0DDE8);
  v35 = v49;
  v36 = v50;
  v37 = v46;
  v38 = v47;
  *v47 = v50;
  v38[1] = v35;
  v39 = v48;
  v38[2] = v37;
  v38[3] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E058);
  sub_24521F96C(v34, v38 + *(v40 + 48), &qword_27EE0DDE8);
  v41 = v38 + *(v40 + 64);
  sub_24521F9D4(v36, v35, v37, v39);
  sub_2451DDD4C(KeyPath, 0);
  sub_2451DDD4C(v33, 0);
  sub_24521FA18(v36, v35, v37, v39);
  *v41 = KeyPath;
  v41[8] = 0;
  *(v41 + 2) = v33;
  v41[24] = 0;
  sub_24521E5B0(v53, &qword_27EE0DDE8);
  sub_2451DDD58(KeyPath, 0);
  sub_2451DDD58(v33, 0);
  sub_24521E5B0(v34, &qword_27EE0DDE8);
  return sub_24521FA18(v36, v35, v37, v39);
}

uint64_t sub_24521F8D8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_24525471C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E030);
  return sub_24521F0B8(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_24521F94C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24521F95C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24521F96C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24521F9D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24521F94C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24521FA18(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24521F95C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24521FA5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall UIButton.applyGlassWithProminence(_:)(Swift::Bool a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  if (_UISolariumEnabled())
  {
    if (a1)
    {
      sub_24525543C();
    }

    else
    {
      sub_24525544C();
    }

    v5 = sub_24525545C();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    sub_24525546C();
  }
}

void sub_24521FBB0(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E070);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v11 = a1;
  if (_UISolariumEnabled())
  {
    if (a3)
    {
      sub_24525543C();
    }

    else
    {
      sub_24525544C();
    }

    v9 = sub_24525545C();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    sub_24525546C();
  }

  else
  {
    v8 = v11;
  }
}

void sub_24521FCD0()
{
  v1 = [*v0 walrusCountryAnchorKBURL];
  if (v1)
  {
    v2 = v1;
    sub_24525413C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for AdvancedDataProtectionView()
{
  result = qword_27EE0E080;
  if (!qword_27EE0E080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24521FE20()
{
  sub_24521FEA4();
  if (v0 <= 0x3F)
  {
    sub_24521FEFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24521FEA4()
{
  if (!qword_27EE0E090)
  {
    sub_2452543FC();
    v0 = sub_24525434C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0E090);
    }
  }
}

void sub_24521FEFC()
{
  if (!qword_27EE0E098)
  {
    type metadata accessor for AdvancedDataProtectionViewModelInterface();
    sub_24522807C(&qword_27EE0DBB8, type metadata accessor for AdvancedDataProtectionViewModelInterface);
    v0 = sub_24525449C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0E098);
    }
  }
}

BOOL sub_24521FFAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_24521FFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_24525492C();
  v4 = *(v3 - 8);
  v90 = v3;
  v91 = v4;
  MEMORY[0x28223BE20](v3);
  v89 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2452546EC();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24525455C();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  MEMORY[0x28223BE20](v8);
  v82 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24525457C();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AdvancedDataProtectionView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0E8);
  MEMORY[0x28223BE20](v66);
  v17 = v64 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0C8);
  MEMORY[0x28223BE20](v68);
  v65 = v64 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0C0);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = v64 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0B8);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = v64 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0B0);
  v79 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = v64 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0A8);
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v71 = v64 - v22;
  *v17 = sub_2452547AC();
  *(v17 + 1) = 0x4030000000000000;
  v17[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E118);
  sub_245220B70(a1, &v17[*(v23 + 44)]);
  sub_245217FA8(a1, v15);
  sub_2452552FC();
  v24 = sub_2452552EC();
  v25 = *(v13 + 80);
  v26 = (v25 + 32) & ~v25;
  v64[1] = v14;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v24;
  *(v27 + 24) = v28;
  sub_24522422C(v15, v27 + v26);
  sub_245217FA8(a1, v15);
  v29 = sub_2452552EC();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  sub_24522422C(v15, v30 + v26);
  sub_245254F9C();
  v93 = a1;
  sub_24521EA80(&qword_27EE0E0F0, &qword_27EE0E0E8);
  v31 = v65;
  sub_245254D8C();

  sub_24521E5B0(v17, &qword_27EE0E0E8);
  sub_245217FA8(a1, v15);
  v32 = swift_allocObject();
  sub_24522422C(v15, v32 + ((v25 + 16) & ~v25));
  v33 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0E0) + 36)];
  *v33 = sub_2452244AC;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;
  v34 = sub_245254A5C();
  v35 = v68;
  v36 = &v31[*(v68 + 36)];
  v37 = v31;
  *v36 = v34;
  *(v36 + 8) = xmmword_24525B650;
  *(v36 + 24) = xmmword_24525B660;
  v36[40] = 0;
  v38 = v72;
  sub_24525456C();
  v39 = sub_2452240A4();
  v40 = sub_24522807C(&qword_27EE0E0F8, MEMORY[0x277CDDB18]);
  v41 = v67;
  v42 = v35;
  v43 = v78;
  sub_245254C5C();
  (*(v80 + 8))(v38, v43);
  sub_24521E5B0(v37, &qword_27EE0E0C8);
  v44 = v82;
  sub_2452550AC();
  v94 = v42;
  v95 = v43;
  v96 = v39;
  v97 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_24522807C(&qword_27EE0E100, MEMORY[0x277CDDAB8]);
  v47 = v69;
  v48 = v73;
  v49 = v84;
  sub_245254DFC();
  (*(v85 + 8))(v44, v49);
  (*(v74 + 8))(v41, v48);
  v94 = v48;
  v95 = v49;
  v96 = OpaqueTypeConformance2;
  v97 = v46;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v70;
  v52 = v75;
  sub_245254D4C();
  v53 = v52;
  (*(v76 + 8))(v47, v52);
  v54 = v86;
  v55 = v87;
  v56 = v88;
  (*(v87 + 104))(v86, *MEMORY[0x277CDDDC0], v88);
  v94 = v53;
  v95 = v50;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v71;
  v59 = v77;
  sub_245254D7C();
  (*(v55 + 8))(v54, v56);
  (*(v79 + 8))(v51, v59);
  v60 = v89;
  sub_24525491C();
  v94 = v59;
  v95 = v57;
  swift_getOpaqueTypeConformance2();
  sub_24522807C(&qword_27EE0E108, MEMORY[0x277CDE2A0]);
  v61 = v81;
  v62 = v90;
  sub_245254C1C();
  (*(v91 + 8))(v60, v62);
  return (*(v83 + 8))(v58, v61);
}

uint64_t sub_245220B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E128);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = &v64 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E130);
  v65 = *(v70 - 8);
  v7 = v65;
  v8 = MEMORY[0x28223BE20](v70);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E138);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E140);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E148);
  sub_245226E08();
  sub_245254FEC();
  v23 = sub_245254A7C();
  sub_2452542DC();
  v24 = &v22[*(v18 + 44)];
  v67 = v22;
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1C8);
  sub_24522719C();
  sub_245254FEC();
  LOBYTE(v18) = sub_245254A5C();
  sub_2452542DC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E250) + 36)];
  *v37 = v18;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = *MEMORY[0x277D85000] & **(a1 + *(type metadata accessor for AdvancedDataProtectionView() + 20) + 8);
  v39 = (*(v38 + 608))();
  v40 = sub_245254A5C();
  v41 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E258) + 36)];
  *v41 = v39;
  v41[8] = v40;
  v42 = &v16[*(v12 + 44)];
  v66 = v16;
  v43 = *(sub_24525458C() + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_24525477C();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #26.0 }

  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1C0) + 36)] = 256;
  v76 = a1;
  sub_245223478(v94);
  v91 = v94[12];
  v92 = v94[13];
  v93 = v95;
  v87 = v94[8];
  v88 = v94[9];
  v89 = v94[10];
  v90 = v94[11];
  v83 = v94[4];
  v84 = v94[5];
  v85 = v94[6];
  v86 = v94[7];
  v79 = v94[0];
  v80 = v94[1];
  v81 = v94[2];
  v82 = v94[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E268);
  sub_2452277E4();
  sub_245227980();
  v51 = v74;
  sub_245254FFC();
  v52 = v69;
  sub_24522366C(v69);
  v53 = v22;
  v54 = v73;
  sub_24521F96C(v53, v73, &qword_27EE0E140);
  v55 = v75;
  sub_24521F96C(v16, v75, &qword_27EE0E138);
  v64 = *(v7 + 16);
  v56 = v68;
  v57 = v70;
  v64(v68, v51, v70);
  v58 = v71;
  sub_24521F96C(v52, v71, &qword_27EE0E128);
  v59 = v72;
  sub_24521F96C(v54, v72, &qword_27EE0E140);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E2D0);
  sub_24521F96C(v55, v59 + v60[12], &qword_27EE0E138);
  v64((v59 + v60[16]), v56, v57);
  v61 = v59 + v60[20];
  *v61 = 0x4018000000000000;
  *(v61 + 8) = 0;
  sub_24521F96C(v58, v59 + v60[24], &qword_27EE0E128);
  sub_24521E5B0(v52, &qword_27EE0E128);
  v62 = *(v65 + 8);
  v62(v74, v57);
  sub_24521E5B0(v66, &qword_27EE0E138);
  sub_24521E5B0(v67, &qword_27EE0E140);
  sub_24521E5B0(v58, &qword_27EE0E128);
  v62(v56, v57);
  sub_24521E5B0(v75, &qword_27EE0E138);
  return sub_24521E5B0(v73, &qword_27EE0E140);
}

uint64_t sub_2452212DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24522144C();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E170) + 36)) = 256;
  v4 = *MEMORY[0x277D85000] & **(a1 + *(type metadata accessor for AdvancedDataProtectionView() + 20) + 8);
  v5 = (*(v4 + 608))();
  v6 = sub_245254A5C();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E160) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E148) + 36));
  v9 = *(sub_24525458C() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24525477C();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #26.0 }

  *v8 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1C0);
  *&v8[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24522144C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E488);
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E190);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (v11[15] == 1)
  {
    *v6 = sub_24525470C();
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = 0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E490);
    sub_245225220(v0, &v6[*(v7 + 44)]);
    v8 = sub_245254A5C();
    v9 = &v6[*(v4 + 36)];
    *v9 = v8;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    v9[40] = 1;
    sub_24521F96C(v6, v3, &qword_27EE0E190);
    swift_storeEnumTagMultiPayload();
    sub_245227090();
    sub_24525489C();
    return sub_24521E5B0(v6, &qword_27EE0E190);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_245227090();
    return sub_24525489C();
  }
}

__n128 sub_2452216A0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24525408C();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24525409C();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2452540BC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_2452540DC();
  v64 = *(v14 - 8);
  *&v65 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v57 - v18;
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (v84 == 1)
  {
    v78 = 0;
    v88[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0EA40);
    sub_2452272B4();
    sub_24525489C();
    v81 = v68;
    v82 = v69;
    v83[0] = v70[0];
    *(v83 + 9) = *(v70 + 9);
    v79 = v66;
    v80 = v67;
    LOBYTE(v71) = 0;
    BYTE8(v83[2]) = 0;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E220);
    sub_245227228();
    sub_245227560();
    sub_24525489C();
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (!*(&v84 + 1))
  {
    v20 = objc_opt_self();
    v21 = [v20 bundle];
    v22 = sub_2452540EC();
    v24 = v23;

    v25 = [v20 bundle];
    v26 = sub_2452540EC();
    v28 = v27;

    v29.value._countAndFlagsBits = sub_24524FD38();
    v29.value._object = v30;
    v31._countAndFlagsBits = v26;
    v31._object = v28;
    InformationLabelView.Link.init(text:url:)(v31, v29);
    v65 = v84;
    v32 = v85;
    KeyPath = swift_getKeyPath();
    v34 = sub_245254ACC();
    v35 = swift_getKeyPath();
    v36 = sub_245254E8C();
    v37 = swift_getKeyPath();
    LOBYTE(v66) = 1;
    *&v79 = v22;
    *(&v79 + 1) = v24;
    v80 = v65;
    v81 = v32;
    v82.n128_u16[0] = 0;
    v82.n128_u64[1] = KeyPath;
    LOBYTE(v83[0]) = 1;
    *(&v83[0] + 1) = v35;
    *&v83[1] = v34;
    *(&v83[1] + 1) = v37;
    *&v83[2] = v36;
    BYTE8(v83[2]) = 1;
    goto LABEL_6;
  }

  v19 = sub_24525415C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  (*(v59 + 104))(v6, *MEMORY[0x277CC8BB0], v60);
  (*(v62 + 104))(v61, *MEMORY[0x277CC8B98], v63);
  sub_2452540AC();
  sub_2452540CC();
  v41 = v64;
  v42 = v65;
  (*(v64 + 56))(v13, 0, 1, v65);
  v43 = v58;
  (*(v41 + 32))(v58, v13, v42);
  (*(v41 + 16))(v17, v43, v42);
  v44 = sub_245254BEC();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = swift_getKeyPath();
  v52 = v48 & 1;
  LOBYTE(v84) = v48 & 1;
  v53 = sub_245254ACC();
  v54 = swift_getKeyPath();
  v55 = sub_245254E8C();
  v56 = swift_getKeyPath();
  *&v71 = v44;
  *(&v71 + 1) = v46;
  LOBYTE(v72) = v52;
  *(&v72 + 1) = v50;
  LOWORD(v73) = 256;
  *(&v73 + 1) = v51;
  v74.n128_u8[0] = 1;
  v74.n128_u64[1] = v54;
  *&v75 = v53;
  *(&v75 + 1) = v56;
  v76 = v55;
  v86 = v73;
  v87 = v74;
  *v88 = v75;
  *&v88[16] = v55;
  v84 = v71;
  v85 = v72;
  v77 = 1;
  v88[24] = 1;
  sub_24521F96C(&v71, &v79, &unk_27EE0EA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0EA40);
  sub_2452272B4();
  sub_24525489C();
  v86 = v68;
  v87 = v69;
  *v88 = v70[0];
  *&v88[9] = *(v70 + 9);
  v84 = v66;
  v85 = v67;
  v78 = 0;
  v88[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E220);
  sub_245227228();
  sub_245227560();
  sub_24525489C();
  sub_24521E5B0(&v71, &unk_27EE0EA40);
  (*(v64 + 8))(v58, v65);
  *v88 = v83[0];
  *&v88[16] = v83[1];
  *&v88[25] = *(&v83[1] + 9);
  v84 = v79;
  v85 = v80;
  v86 = v81;
  v87 = v82;
LABEL_7:
  v38 = *&v88[16];
  *(a1 + 64) = *v88;
  *(a1 + 80) = v38;
  *(a1 + 89) = *&v88[25];
  v39 = v85;
  *a1 = v84;
  *(a1 + 16) = v39;
  result = v87;
  *(a1 + 32) = v86;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_245221FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2452547AC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E358);
  sub_24522213C(a1, a2 + *(v4 + 44));
  v5 = *MEMORY[0x277D85000] & **(a1 + *(type metadata accessor for AdvancedDataProtectionView() + 20) + 8);
  v6 = (*(v5 + 608))();
  v7 = sub_245254A5C();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E280) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E260) + 36));
  v10 = *(sub_24525458C() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_24525477C();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #26.0 }

  *v9 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1C0);
  *&v9[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24522213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E360);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E368);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E370);
  v11 = MEMORY[0x28223BE20](v38);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  *v10 = sub_2452547AC();
  *(v10 + 1) = 0x4030000000000000;
  v10[16] = 0;
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E378) + 44)];
  v39 = a1;
  sub_245222540(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24525B670;
  LOBYTE(a1) = sub_245254AAC();
  *(inited + 32) = a1;
  v21 = sub_245254A8C();
  *(inited + 33) = v21;
  v22 = sub_245254A7C();
  *(inited + 34) = v22;
  v23 = sub_245254A9C();
  sub_245254A9C();
  if (sub_245254A9C() != a1)
  {
    v23 = sub_245254A9C();
  }

  sub_245254A9C();
  if (sub_245254A9C() != v21)
  {
    v23 = sub_245254A9C();
  }

  sub_245254A9C();
  if (sub_245254A9C() != v22)
  {
    v23 = sub_245254A9C();
  }

  sub_2452542DC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24521E3D8(v10, v16, &qword_27EE0E368);
  v32 = &v16[*(v38 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_24521E3D8(v16, v18, &qword_27EE0E370);
  sub_2452231FC();
  sub_24521F96C(v18, v13, &qword_27EE0E370);
  v33 = v41;
  sub_24521F96C(v7, v41, &qword_27EE0E360);
  v34 = v40;
  sub_24521F96C(v13, v40, &qword_27EE0E370);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E388);
  sub_24521F96C(v33, v34 + *(v35 + 48), &qword_27EE0E360);
  sub_24521E5B0(v7, &qword_27EE0E360);
  sub_24521E5B0(v18, &qword_27EE0E370);
  sub_24521E5B0(v33, &qword_27EE0E360);
  return sub_24521E5B0(v13, &qword_27EE0E370);
}

uint64_t sub_245222540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E420);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E428);
  v58 = *(v63 - 8);
  v9 = v58;
  v10 = MEMORY[0x28223BE20](v63);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E430);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v59 = &v56 - v16;
  sub_245222B90(&v56 - v16);
  sub_245222E88();
  v18 = [objc_opt_self() bundle];
  v19 = sub_2452540EC();
  v21 = v20;

  *&v84[0] = v19;
  *(&v84[0] + 1) = v21;
  sub_24521E31C();
  v56 = sub_245254BFC();
  v67 = v23;
  v68 = v22;
  LOBYTE(v21) = v24;
  KeyPath = swift_getKeyPath();
  v65 = v21 & 1;
  LOBYTE(v84[0]) = v21 & 1;
  v25 = *(a1 + *(type metadata accessor for AdvancedDataProtectionView() + 20) + 8);
  v26 = *(v25 + OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_adpViewModelHelper);
  v27 = *(v26 + 120);
  v28 = *(v26 + 128);

  sub_245236654(v27, v28, v8);
  v29 = swift_getKeyPath();
  v30 = &v8[*(v4 + 44)];
  v31 = v8;
  v57 = v8;
  *v30 = v29;
  v30[8] = 1;
  sub_245223070(v76);
  v32 = *(v25 + OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_advancedDataProtectionDataClassViewModel);
  v33 = v17;
  v34 = v62;
  sub_24521F96C(v33, v62, &qword_27EE0E430);
  v35 = *(v9 + 16);
  v36 = v61;
  v37 = v63;
  v35(v61, v69, v63);
  v38 = v31;
  v39 = v64;
  sub_24521F96C(v38, v64, &qword_27EE0E420);
  v72 = v76[2];
  v73 = v76[3];
  v74 = v76[4];
  v75 = v77;
  v70 = v76[0];
  v71 = v76[1];
  v40 = v34;
  v41 = v60;
  sub_24521F96C(v40, v60, &qword_27EE0E430);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E438);
  v35((v41 + v42[12]), v36, v37);
  v43 = v41 + v42[16];
  v44 = v56;
  *&v78 = v56;
  *(&v78 + 1) = v68;
  LOBYTE(v79) = v65;
  *(&v79 + 1) = v67;
  LOWORD(v80) = 256;
  *(&v80 + 1) = KeyPath;
  v81 = 1;
  v45 = v79;
  *v43 = v78;
  *(v43 + 16) = v45;
  *(v43 + 32) = v80;
  *(v43 + 48) = 1;
  sub_24521F96C(v39, v41 + v42[20], &qword_27EE0E420);
  v46 = v41 + v42[24];
  v47 = v73;
  v82[2] = v72;
  v82[3] = v73;
  v48 = v74;
  v82[4] = v74;
  v49 = v75;
  v83 = v75;
  v50 = v70;
  v51 = v71;
  v82[0] = v70;
  v82[1] = v71;
  *(v46 + 32) = v72;
  *(v46 + 48) = v47;
  *(v46 + 64) = v48;
  *(v46 + 80) = v49;
  *v46 = v50;
  *(v46 + 16) = v51;
  v52 = v41 + v42[28];
  *v52 = v32;
  *(v52 + 8) = xmmword_24525B680;

  sub_24521F96C(&v78, v84, &qword_27EE0E1F8);
  sub_24521F96C(v82, v84, &unk_27EE0EA40);

  sub_24521E5B0(v57, &qword_27EE0E420);
  v53 = *(v58 + 8);
  v54 = v63;
  v53(v69, v63);
  sub_24521E5B0(v59, &qword_27EE0E430);

  v84[2] = v72;
  v84[3] = v73;
  v84[4] = v74;
  v85 = v75;
  v84[0] = v70;
  v84[1] = v71;
  sub_24521E5B0(v84, &unk_27EE0EA40);
  sub_24521E5B0(v64, &qword_27EE0E420);
  v86[0] = v44;
  v86[1] = v68;
  v87 = v65;
  v88 = v67;
  v89 = 256;
  v90 = KeyPath;
  v91 = 1;
  sub_24521E5B0(v86, &qword_27EE0E1F8);
  v53(v61, v54);
  return sub_24521E5B0(v62, &qword_27EE0E430);
}

uint64_t sub_245222B90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_245254ECC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245254EBC();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_245254EEC();

  (*(v3 + 8))(v5, v2);
  sub_24525506C();
  sub_2452543EC();
  v7 = v34;
  v8 = v35;
  v9 = v36;
  v10 = v37;
  v11 = v38;
  v12 = v39;
  LOBYTE(v2) = sub_245254A6C();
  sub_2452542DC();
  v33 = v8;
  v32 = v10;
  v31 = 0;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  LOBYTE(v25) = v8;
  *(&v25 + 1) = v9;
  LOBYTE(v26) = v10;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  BYTE8(v27) = v2;
  *&v28 = v13;
  *(&v28 + 1) = v14;
  *&v29 = v15;
  *(&v29 + 1) = v16;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E450);
  sub_245228434();
  sub_245254CEC();
  v40[4] = v28;
  v40[5] = v29;
  v41 = v30;
  v40[0] = v24;
  v40[1] = v25;
  v40[2] = v26;
  v40[3] = v27;
  sub_24521E5B0(v40, &qword_27EE0E450);
  v17 = sub_245254E5C();
  KeyPath = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E470) + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E430) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E478) + 28);
  sub_24525493C();
  v22 = sub_24525494C();
  (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t sub_245222E88()
{
  v0 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  v1 = sub_245254BFC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = v5 & 1;
  v10 = sub_245254E8C();
  v11 = swift_getKeyPath();
  v12 = sub_245254B3C();
  *&v14 = v1;
  *(&v14 + 1) = v3;
  LOBYTE(v15) = v9;
  *(&v15 + 1) = v7;
  LOWORD(v16) = 256;
  *(&v16 + 1) = KeyPath;
  LOBYTE(v17) = 1;
  *(&v17 + 1) = v11;
  *&v18 = v10;
  *(&v18 + 1) = swift_getKeyPath();
  sub_245254AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0E9A0);
  sub_2452282C4();
  sub_245254C4C();
  v19[3] = v17;
  v19[4] = v18;
  v20 = v12;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  return sub_24521E5B0(v19, &unk_27EE0E9A0);
}

uint64_t sub_245223070@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  sub_2452500E0();
  sub_24521E31C();
  v2 = sub_245254BFC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = v6 & 1;
  v11 = sub_245254ACC();
  v12 = swift_getKeyPath();
  v13 = sub_245254E8C();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = 256;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 1;
  *(a1 + 56) = v12;
  *(a1 + 64) = v11;
  *(a1 + 72) = result;
  *(a1 + 80) = v13;
  return result;
}

uint64_t sub_2452231FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E390);
  MEMORY[0x28223BE20](v0);
  v2 = &v8[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E398);
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-v4];
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (v8[15] == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24521EA80(&qword_27EE0E3A8, &qword_27EE0E390);
    return sub_24525489C();
  }

  else
  {
    *v2 = sub_2452547AC();
    *(v2 + 1) = 0;
    v2[16] = 0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3A0);
    sub_2452244C4(&v2[*(v7 + 44)]);
    sub_24521F96C(v2, v5, &qword_27EE0E390);
    swift_storeEnumTagMultiPayload();
    sub_24521EA80(&qword_27EE0E3A8, &qword_27EE0E390);
    sub_24525489C();
    return sub_24521E5B0(v2, &qword_27EE0E390);
  }
}

uint64_t sub_245223478@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  *&v22 = sub_24524FC5C();
  *(&v22 + 1) = v2;
  sub_24521E31C();
  v3 = sub_245254BFC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24525507C();
  sub_24525459C();
  *&v21[54] = v25;
  *&v21[70] = v26;
  *&v21[86] = v27;
  *&v21[102] = v28;
  *&v21[6] = v22;
  *&v21[22] = v23;
  v10 = v7 & 1;
  *&v21[38] = v24;
  v11 = sub_245254E9C();
  KeyPath = swift_getKeyPath();
  v13 = sub_245254B8C();
  v14 = swift_getKeyPath();
  v15 = sub_245254A8C();
  result = sub_2452542DC();
  *(a1 + 98) = *&v21[64];
  *(a1 + 114) = *&v21[80];
  *(a1 + 130) = *&v21[96];
  *(a1 + 34) = *v21;
  *(a1 + 50) = *&v21[16];
  *(a1 + 66) = *&v21[32];
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 32) = 256;
  *(a1 + 82) = *&v21[48];
  *(a1 + 144) = *(&v28 + 1);
  *(a1 + 152) = KeyPath;
  *(a1 + 160) = v11;
  *(a1 + 168) = v14;
  *(a1 + 176) = v13;
  *(a1 + 184) = v15;
  *(a1 + 192) = v17;
  *(a1 + 200) = v18;
  *(a1 + 208) = v19;
  *(a1 + 216) = v20;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_24522366C@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E2D8);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E2E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (LOBYTE(v27[0]) == 1)
  {
    v11[0] = v11;
    MEMORY[0x28223BE20](v9);
    v11[-2] = v1;
    sub_245225008(v27);
    v24 = v27[12];
    v25 = v27[13];
    v26 = v28;
    v20 = v27[8];
    v21 = v27[9];
    v22 = v27[10];
    v23 = v27[11];
    v16 = v27[4];
    v17 = v27[5];
    v18 = v27[6];
    v19 = v27[7];
    v12 = v27[0];
    v13 = v27[1];
    v14 = v27[2];
    v15 = v27[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E2F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E268);
    sub_245227CA0();
    sub_245227980();
    sub_245254FFC();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_245227C08();
    sub_24525489C();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_245227C08();
    return sub_24525489C();
  }
}

uint64_t sub_24522398C@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v3 = &byte_285824030;
  v4 = qword_285824020;
  do
  {
    v5 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v7 = *v3++;
  }

  while (v7 != v8);
  *a1 = v5 != 0;
  return result;
}

uint64_t sub_245223A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + *(type metadata accessor for AdvancedDataProtectionView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_24525424C();
}

uint64_t sub_245223ACC@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - v2;
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v11 = v9;
  v9 = sub_245250218();
  v10 = v4;
  sub_24521E31C();
  sub_245254BFC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v11 = v9;
  v9 = sub_245250324();
  v10 = v5;
  sub_245254BFC();
  v6 = sub_245254E1C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  return sub_245254E0C();
}

uint64_t sub_245223CE8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AdvancedDataProtectionView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_24525424C();
}

uint64_t sub_245223D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_245254A3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E0A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0A8);
  sub_24525492C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0C0);
  sub_24525455C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0C8);
  sub_24525457C();
  sub_2452240A4();
  sub_24522807C(&qword_27EE0E0F8, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeConformance2();
  sub_24522807C(&qword_27EE0E100, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24522807C(&qword_27EE0E108, MEMORY[0x277CDE2A0]);
  swift_getOpaqueTypeConformance2();
  v4 = sub_24525433C();
  v5 = (*((*MEMORY[0x277D85000] & **(v2 + *(a1 + 20) + 8)) + 0x258))(v4);
  v6 = sub_245254A5C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E110);
  v8 = a2 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

unint64_t sub_2452240A4()
{
  result = qword_27EE0E0D0;
  if (!qword_27EE0E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0C8);
    sub_245224130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E0D0);
  }

  return result;
}

unint64_t sub_245224130()
{
  result = qword_27EE0E0D8;
  if (!qword_27EE0E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E0E8);
    sub_24521EA80(&qword_27EE0E0F0, &qword_27EE0E0E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E0D8);
  }

  return result;
}

uint64_t sub_24522422C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedDataProtectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245224290@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for AdvancedDataProtectionView();

  return sub_24522398C(a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for AdvancedDataProtectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2452543FC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_245224430(uint64_t a1)
{
  v3 = *(type metadata accessor for AdvancedDataProtectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_245223A4C(a1, v4, v5, v6);
}

uint64_t sub_2452244C4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_245254FBC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_245254FAC();
  *v7 = sub_24525471C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3B8);
  sub_24522472C(&v7[*(v15 + 44)]);
  v16 = *(v9 + 16);
  v16(v12, v14, v8);
  sub_24521F96C(v7, v5, &qword_27EE0E3B0);
  v16(a1, v12, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3C0);
  sub_24521F96C(v5, &a1[*(v17 + 48)], &qword_27EE0E3B0);
  sub_24521E5B0(v7, &qword_27EE0E3B0);
  v18 = *(v9 + 8);
  v18(v14, v8);
  sub_24521E5B0(v5, &qword_27EE0E3B0);
  return (v18)(v12, v8);
}

uint64_t sub_24522472C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3D0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  sub_2452249F8(&v22 - v11);
  v13 = sub_24525508C();
  v23 = v14;
  v24 = v13;
  v15 = &v12[*(v7 + 44)];
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v16 = 1;
  if (v25 == 1)
  {
    sub_24525439C();
    *&v5[*(v2 + 36)] = xmmword_24525B690;
    sub_24521E3D8(v5, v15, &qword_27EE0E3C8);
    v16 = 0;
  }

  (*(v3 + 56))(v15, v16, 1, v2);
  v17 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3D8) + 36));
  v18 = v23;
  *v17 = v24;
  v17[1] = v18;
  sub_24521F96C(v12, v10, &qword_27EE0E3D0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3E0);
  sub_24521F96C(v10, a1 + *(v19 + 48), &qword_27EE0E3D0);
  v20 = a1 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_24521E5B0(v12, &qword_27EE0E3D0);
  return sub_24521E5B0(v10, &qword_27EE0E3D0);
}

uint64_t sub_2452249F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for AdvancedDataProtectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3E8);
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v31 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3F0);
  MEMORY[0x28223BE20](v34);
  v10 = &v31 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3F8);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E400);
  MEMORY[0x28223BE20](v33);
  v14 = &v31 - v13;
  sub_245217FA8(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_24522422C(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E408);
  sub_245228204();
  sub_245254F4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (v39 == 1)
  {
    v17 = sub_245254E4C();
  }

  else
  {
    v17 = sub_245254E3C();
  }

  v18 = v17;
  KeyPath = swift_getKeyPath();
  (*(v6 + 32))(v10, v8, v35);
  v20 = &v10[*(v34 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_24521E3D8(v10, v12, &qword_27EE0E3F0);
  *&v12[*(v32 + 36)] = 256;
  sub_24525506C();
  sub_2452543EC();
  sub_24521E3D8(v12, v14, &qword_27EE0E3F8);
  v21 = &v14[*(v33 + 36)];
  v22 = v40;
  *v21 = v39;
  *(v21 + 1) = v22;
  *(v21 + 2) = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v23 = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v24 = v23 | v38;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = (v24 & 1) == 0;
  v27 = v14;
  v28 = v36;
  sub_24521E3D8(v27, v36, &qword_27EE0E400);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E418);
  v30 = (v28 + *(result + 36));
  *v30 = v25;
  v30[1] = sub_2452282BC;
  v30[2] = v26;
  return result;
}

uint64_t sub_245224F1C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AdvancedDataProtectionView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  sub_245250430();
  sub_24521E31C();
  v2 = sub_245254BFC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_245225008@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  v3 = sub_2452540EC();
  v5 = v4;

  *&v25 = v3;
  *(&v25 + 1) = v5;
  sub_24521E31C();
  v6 = sub_245254BFC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_24525507C();
  sub_24525459C();
  *&v24[54] = v28;
  *&v24[70] = v29;
  *&v24[86] = v30;
  *&v24[102] = v31;
  *&v24[6] = v25;
  *&v24[22] = v26;
  v13 = v10 & 1;
  *&v24[38] = v27;
  v14 = sub_245254E9C();
  KeyPath = swift_getKeyPath();
  v16 = sub_245254B8C();
  v17 = swift_getKeyPath();
  v18 = sub_245254A8C();
  result = sub_2452542DC();
  *(a1 + 98) = *&v24[64];
  *(a1 + 114) = *&v24[80];
  *(a1 + 130) = *&v24[96];
  *(a1 + 34) = *v24;
  *(a1 + 50) = *&v24[16];
  *(a1 + 66) = *&v24[32];
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = 256;
  *(a1 + 82) = *&v24[48];
  *(a1 + 144) = *(&v31 + 1);
  *(a1 + 152) = KeyPath;
  *(a1 + 160) = v14;
  *(a1 + 168) = v17;
  *(a1 + 176) = v16;
  *(a1 + 184) = v18;
  *(a1 + 192) = v20;
  *(a1 + 200) = v21;
  *(a1 + 208) = v22;
  *(a1 + 216) = v23;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_245225220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E498);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_245254ECC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvancedDataProtectionViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_245254EFC();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v26 = sub_245254EEC();

  (*(v11 + 8))(v13, v10);
  sub_24525506C();
  sub_2452543EC();
  LOBYTE(v10) = v28;
  v16 = v29;
  v17 = v30;
  v18 = v32;
  v24 = v31;
  v25 = v27;
  *v9 = sub_2452547BC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4A0);
  sub_24522552C(a1, &v9[*(v19 + 44)]);
  sub_24521F96C(v9, v7, &qword_27EE0E498);
  v20 = v25;
  *a2 = v26;
  *(a2 + 8) = v20;
  *(a2 + 16) = v10;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v24;
  *(a2 + 48) = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4A8);
  sub_24521F96C(v7, a2 + *(v21 + 48), &qword_27EE0E498);

  sub_24521E5B0(v9, &qword_27EE0E498);
  sub_24521E5B0(v7, &qword_27EE0E498);
}

uint64_t sub_24522552C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v105 = a2;
  v2 = type metadata accessor for AdvancedDataProtectionView();
  v98 = *(v2 - 8);
  v99 = v2 - 8;
  v116 = *(v98 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v117 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3E8);
  v127 = *(v120 - 8);
  v4 = MEMORY[0x28223BE20](v120);
  v102 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v97 = &v96 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3F0);
  v7 = MEMORY[0x28223BE20](v119);
  v101 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = &v96 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3F8);
  v10 = MEMORY[0x28223BE20](v118);
  v125 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v131 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v96 - v15;
  MEMORY[0x28223BE20](v14);
  v130 = &v96 - v16;
  v17 = sub_245254FBC();
  v103 = *(v17 - 8);
  v104 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v129 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v124 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v128 = &v96 - v23;
  MEMORY[0x28223BE20](v22);
  v126 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4B0);
  v26 = v25 - 8;
  v27 = MEMORY[0x28223BE20](v25);
  v123 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v96 - v29;
  v113 = "UNT_RECOVERY_TITLE";
  v114 = objc_opt_self();
  v31 = [v114 bundle];
  v32 = sub_2452540EC();
  v34 = v33;

  *&v138 = v32;
  *(&v138 + 1) = v34;
  sub_24521E31C();
  v35 = sub_245254BFC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = v39 & 1;
  LOBYTE(v138) = v39 & 1;
  v44 = sub_245254B6C();
  v45 = swift_getKeyPath();
  *&v138 = v35;
  *(&v138 + 1) = v37;
  LOBYTE(v139) = v43;
  *(&v139 + 1) = v41;
  LOWORD(v140) = 256;
  *(&v140 + 1) = KeyPath;
  LOBYTE(v141) = 0;
  *(&v141 + 1) = v45;
  v142 = v44;
  sub_245254AFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA50);
  sub_24522736C();
  sub_245254C4C();
  v145[2] = v140;
  v145[3] = v141;
  v146 = v142;
  v145[0] = v138;
  v145[1] = v139;
  sub_24521E5B0(v145, &qword_27EE0EA50);
  v46 = sub_245254E8C();
  v47 = swift_getKeyPath();
  v48 = *(v26 + 44);
  v121 = v30;
  v49 = &v30[v48];
  *v49 = v47;
  v49[1] = v46;
  v50 = [v114 bundle];
  v51 = sub_2452540EC();
  v53 = v52;

  *&v138 = v51;
  *(&v138 + 1) = v53;
  v54 = sub_245254BFC();
  v110 = v55;
  v111 = v54;
  LOBYTE(v31) = v56;
  v112 = v57;
  v113 = swift_getKeyPath();
  v107 = v31 & 1;
  LOBYTE(v138) = v31 & 1;
  v114 = sub_245254ACC();
  v109 = swift_getKeyPath();
  v108 = sub_245254E9C();
  v106 = swift_getKeyPath();
  sub_245254FAC();
  v58 = v117;
  sub_245217FA8(v115, v117);
  v59 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v60 = swift_allocObject();
  sub_24522422C(v58, v60 + v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E408);
  sub_245228204();
  v62 = v97;
  v98 = v61;
  sub_245254F4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (v138 == 1)
  {
    v63 = sub_245254E4C();
  }

  else
  {
    v63 = sub_245254E3C();
  }

  v64 = v63;
  v65 = swift_getKeyPath();
  v66 = *(v127 + 32);
  v67 = v100;
  v127 += 32;
  v66(v100, v62, v120);
  v68 = (v67 + *(v119 + 36));
  *v68 = v65;
  v68[1] = v64;
  v69 = v130;
  sub_24521E3D8(v67, v130, &qword_27EE0E3F0);
  *(v69 + *(v118 + 36)) = 256;
  sub_245254FAC();
  v70 = v117;
  sub_245217FA8(v115, v117);
  v71 = swift_allocObject();
  sub_24522422C(v70, v71 + v59);
  v72 = v102;
  sub_245254F4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  if (v138 == 1)
  {
    v73 = sub_245254E4C();
  }

  else
  {
    v73 = sub_245254E3C();
  }

  v74 = v73;
  v75 = swift_getKeyPath();
  v76 = v101;
  v66(v101, v72, v120);
  v77 = &v76[*(v119 + 36)];
  *v77 = v75;
  v77[1] = v74;
  v78 = v76;
  v79 = v122;
  sub_24521E3D8(v78, v122, &qword_27EE0E3F0);
  *(v79 + *(v118 + 36)) = 256;
  v80 = v123;
  sub_24521F96C(v121, v123, &qword_27EE0E4B0);
  v81 = v103;
  v82 = v104;
  v83 = *(v103 + 16);
  v84 = v124;
  v83(v124, v126, v104);
  sub_24521F96C(v130, v131, &qword_27EE0E3F8);
  v83(v129, v128, v82);
  sub_24521F96C(v79, v125, &qword_27EE0E3F8);
  v85 = v80;
  v86 = v105;
  sub_24521F96C(v85, v105, &qword_27EE0E4B0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4B8);
  v88 = v86 + v87[12];
  *&v132 = v111;
  *(&v132 + 1) = v110;
  LOBYTE(v133) = v107;
  *(&v133 + 1) = v150[0];
  DWORD1(v133) = *(v150 + 3);
  *(&v133 + 1) = v112;
  LOWORD(v134) = 256;
  *(&v134 + 2) = v148;
  WORD3(v134) = v149;
  *(&v134 + 1) = v113;
  LOBYTE(v135) = 0;
  DWORD1(v135) = *&v147[3];
  *(&v135 + 1) = *v147;
  *(&v135 + 1) = v109;
  *&v136 = v114;
  *(&v136 + 1) = v106;
  v137 = v108;
  v90 = v134;
  v89 = v135;
  v91 = v136;
  *(v88 + 80) = v108;
  *(v88 + 48) = v89;
  *(v88 + 64) = v91;
  v92 = v132;
  *(v88 + 16) = v133;
  *(v88 + 32) = v90;
  *v88 = v92;
  v83(v86 + v87[16], v84, v82);
  sub_24521F96C(v131, v86 + v87[20], &qword_27EE0E3F8);
  v83(v86 + v87[24], v129, v82);
  v93 = v125;
  sub_24521F96C(v125, v86 + v87[28], &qword_27EE0E3F8);
  sub_24521F96C(&v132, &v138, &unk_27EE0EA40);
  sub_24521E5B0(v122, &qword_27EE0E3F8);
  v94 = *(v81 + 8);
  v94(v128, v82);
  sub_24521E5B0(v130, &qword_27EE0E3F8);
  v94(v126, v82);
  sub_24521E5B0(v121, &qword_27EE0E4B0);
  sub_24521E5B0(v93, &qword_27EE0E3F8);
  v94(v129, v82);
  sub_24521E5B0(v131, &qword_27EE0E3F8);
  v94(v124, v82);
  *&v138 = v111;
  *(&v138 + 1) = v110;
  LOBYTE(v139) = v107;
  *(&v139 + 1) = v150[0];
  DWORD1(v139) = *(v150 + 3);
  *(&v139 + 1) = v112;
  LOWORD(v140) = 256;
  *(&v140 + 2) = v148;
  WORD3(v140) = v149;
  *(&v140 + 1) = v113;
  LOBYTE(v141) = 0;
  *(&v141 + 1) = *v147;
  DWORD1(v141) = *&v147[3];
  *(&v141 + 1) = v109;
  v142 = v114;
  v143 = v106;
  v144 = v108;
  sub_24521E5B0(&v138, &unk_27EE0EA40);
  return sub_24521E5B0(v123, &qword_27EE0E4B0);
}

uint64_t sub_245226238@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  v3 = sub_245254BFC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_245226340@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  v3 = sub_245254BFC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_245226448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v57 = a2;
  v58 = sub_24525479C();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for AdvancedDataProtectionView();
  v5 = v4 - 8;
  v52 = *(v4 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E300);
  MEMORY[0x28223BE20](v7);
  v9 = &v47[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E348);
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v47[-v12];
  v14 = *(a1 + *(v5 + 28) + 8);
  v15 = *(v14 + OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_accountRecoveryRowViewModel);
  type metadata accessor for AccountRecoveryRowViewModel();
  sub_24522807C(&qword_27EE0E350, type metadata accessor for AccountRecoveryRowViewModel);
  v16 = v15;
  v17 = sub_24525448C();
  v19 = v18;
  v48 = sub_245254A5C();
  v20 = sub_2452542DC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v59) = 0;
  v29 = (*((*MEMORY[0x277D85000] & *v14) + 0x260))(v20);
  v30 = sub_245254A5C();
  v31 = &v9[*(v7 + 36)];
  v32 = *(sub_24525458C() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_24525477C();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #26.0 }

  *v31 = _Q0;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1C0) + 36)] = 256;
  *v9 = v17;
  *(v9 + 1) = v19;
  *(v9 + 8) = 256;
  *(v9 + 18) = *&v62[7];
  *(v9 + 11) = v63;
  v9[24] = v48;
  *(v9 + 25) = *v62;
  *(v9 + 7) = *&v62[3];
  *(v9 + 4) = v22;
  *(v9 + 5) = v24;
  *(v9 + 6) = v26;
  *(v9 + 7) = v28;
  v9[64] = 0;
  *(v9 + 65) = *v61;
  *(v9 + 17) = *&v61[3];
  *(v9 + 9) = v29;
  v9[80] = v30;
  v40 = v50;
  sub_245217FA8(v49, v50);
  v41 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v42 = swift_allocObject();
  sub_24522422C(v40, v42 + v41);
  v43 = sub_245227D98();
  sub_245254C8C();

  sub_24521E5B0(v9, &qword_27EE0E300);
  v44 = v55;
  sub_24525478C();
  v59 = v7;
  v60 = v43;
  swift_getOpaqueTypeConformance2();
  v45 = v53;
  sub_245254D1C();
  (*(v56 + 8))(v44, v58);
  return (*(v54 + 8))(v13, v45);
}

void *sub_245226958()
{
  type metadata accessor for AdvancedDataProtectionView();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result presentAccountRecoveryFlow];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_245226A58@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  *a1 = v3;
  return result;
}

uint64_t sub_245226AD8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_24525424C();
}

uint64_t sub_245226B5C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  *a1 = v3;
  return result;
}

uint64_t sub_245226BEC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_24525424C();
}

double sub_245226C58@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_245226CD8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_24525424C();
}

uint64_t sub_245226D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E480);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24521F96C(a1, &v5 - v3, &qword_27EE0E480);
  return sub_2452546BC();
}

unint64_t sub_245226E08()
{
  result = qword_27EE0E150;
  if (!qword_27EE0E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E148);
    sub_245226EC0();
    sub_24521EA80(&qword_27EE0E1B8, &qword_27EE0E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E150);
  }

  return result;
}

unint64_t sub_245226EC0()
{
  result = qword_27EE0E158;
  if (!qword_27EE0E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E160);
    sub_245226F78();
    sub_24521EA80(&qword_27EE0E1A8, &qword_27EE0E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E158);
  }

  return result;
}

unint64_t sub_245226F78()
{
  result = qword_27EE0E168;
  if (!qword_27EE0E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E170);
    sub_245227004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E168);
  }

  return result;
}

unint64_t sub_245227004()
{
  result = qword_27EE0E178;
  if (!qword_27EE0E178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E180);
    sub_245227090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E178);
  }

  return result;
}

unint64_t sub_245227090()
{
  result = qword_27EE0E188;
  if (!qword_27EE0E188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E190);
    sub_24521EA80(&qword_27EE0E198, &qword_27EE0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E188);
  }

  return result;
}

__n128 sub_245227148@<Q0>(uint64_t a1@<X8>)
{
  sub_2452216A0(v5);
  v2 = v6[0];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 89) = *(v6 + 9);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_24522719C()
{
  result = qword_27EE0E1D0;
  if (!qword_27EE0E1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E1C8);
    sub_245227228();
    sub_245227560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E1D0);
  }

  return result;
}

unint64_t sub_245227228()
{
  result = qword_27EE0E1D8;
  if (!qword_27EE0E1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E1E0);
    sub_2452272B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E1D8);
  }

  return result;
}

unint64_t sub_2452272B4()
{
  result = qword_27EE0E1E8;
  if (!qword_27EE0E1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE0EA40);
    sub_24522736C();
    sub_24521EA80(&unk_27EE0E9F0, &qword_27EE0E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E1E8);
  }

  return result;
}

unint64_t sub_24522736C()
{
  result = qword_27EE0E1F0;
  if (!qword_27EE0E1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EA50);
    sub_245227424();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E1F0);
  }

  return result;
}

unint64_t sub_245227424()
{
  result = qword_27EE0E9C0;
  if (!qword_27EE0E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E1F8);
    sub_2452274DC();
    sub_24521EA80(&qword_27EE0E9E0, &qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E9C0);
  }

  return result;
}

unint64_t sub_2452274DC()
{
  result = qword_27EE0E9D0;
  if (!qword_27EE0E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E9D0);
  }

  return result;
}

unint64_t sub_245227560()
{
  result = qword_27EE0E218;
  if (!qword_27EE0E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E220);
    sub_245227618();
    sub_24521EA80(&unk_27EE0E9F0, &qword_27EE0E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E218);
  }

  return result;
}

unint64_t sub_245227618()
{
  result = qword_27EE0E228;
  if (!qword_27EE0E228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E230);
    sub_2452276D0();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E228);
  }

  return result;
}

unint64_t sub_2452276D0()
{
  result = qword_27EE0E238;
  if (!qword_27EE0E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E240);
    sub_245227788();
    sub_24521EA80(&qword_27EE0E9E0, &qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E238);
  }

  return result;
}

unint64_t sub_245227788()
{
  result = qword_27EE0E248;
  if (!qword_27EE0E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E248);
  }

  return result;
}

unint64_t sub_2452277E4()
{
  result = qword_27EE0E270;
  if (!qword_27EE0E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E260);
    sub_24522789C();
    sub_24521EA80(&qword_27EE0E1B8, &qword_27EE0E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E270);
  }

  return result;
}

unint64_t sub_24522789C()
{
  result = qword_27EE0E278;
  if (!qword_27EE0E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E280);
    sub_24521EA80(&qword_27EE0E288, &qword_27EE0E290);
    sub_24521EA80(&qword_27EE0E1A8, &qword_27EE0E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E278);
  }

  return result;
}

unint64_t sub_245227980()
{
  result = qword_27EE0E298;
  if (!qword_27EE0E298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E268);
    sub_245227A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E298);
  }

  return result;
}

unint64_t sub_245227A0C()
{
  result = qword_27EE0E2A0;
  if (!qword_27EE0E2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E2A8);
    sub_245227AC4();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E2A0);
  }

  return result;
}

unint64_t sub_245227AC4()
{
  result = qword_27EE0E2B0;
  if (!qword_27EE0E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E2B8);
    sub_245227B7C();
    sub_24521EA80(&unk_27EE0E9F0, &qword_27EE0E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E2B0);
  }

  return result;
}

unint64_t sub_245227B7C()
{
  result = qword_27EE0E2C0;
  if (!qword_27EE0E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E2C8);
    sub_2452274DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E2C0);
  }

  return result;
}

unint64_t sub_245227C08()
{
  result = qword_27EE0E2E8;
  if (!qword_27EE0E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E2E0);
    sub_245227CA0();
    sub_245227980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E2E8);
  }

  return result;
}

unint64_t sub_245227CA0()
{
  result = qword_27EE0E2F0;
  if (!qword_27EE0E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E2F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E300);
    sub_245227D98();
    swift_getOpaqueTypeConformance2();
    sub_24522807C(&qword_27EE0DDD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E2F0);
  }

  return result;
}

unint64_t sub_245227D98()
{
  result = qword_27EE0E308;
  if (!qword_27EE0E308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E300);
    sub_245227E50();
    sub_24521EA80(&qword_27EE0E1B8, &qword_27EE0E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E308);
  }

  return result;
}

unint64_t sub_245227E50()
{
  result = qword_27EE0E310;
  if (!qword_27EE0E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E318);
    sub_245227F08();
    sub_24521EA80(&qword_27EE0E1A8, &qword_27EE0E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E310);
  }

  return result;
}

unint64_t sub_245227F08()
{
  result = qword_27EE0E320;
  if (!qword_27EE0E320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E328);
    sub_245227F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E320);
  }

  return result;
}

unint64_t sub_245227F94()
{
  result = qword_27EE0E330;
  if (!qword_27EE0E330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E338);
    sub_245228020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E330);
  }

  return result;
}

unint64_t sub_245228020()
{
  result = qword_27EE0E340;
  if (!qword_27EE0E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E340);
  }

  return result;
}

uint64_t sub_24522807C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2452280DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AdvancedDataProtectionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_245228204()
{
  result = qword_27EE0E410;
  if (!qword_27EE0E410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E408);
    sub_24521EA80(&qword_27EE0E9E0, &qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E410);
  }

  return result;
}

unint64_t sub_2452282C4()
{
  result = qword_27EE0E440;
  if (!qword_27EE0E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE0E9A0);
    sub_24522837C();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E440);
  }

  return result;
}

unint64_t sub_24522837C()
{
  result = qword_27EE0E9B0;
  if (!qword_27EE0E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E448);
    sub_245227424();
    sub_24521EA80(&unk_27EE0E9F0, &qword_27EE0E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E9B0);
  }

  return result;
}

unint64_t sub_245228434()
{
  result = qword_27EE0E458;
  if (!qword_27EE0E458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E450);
    sub_2452284C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E458);
  }

  return result;
}

unint64_t sub_2452284C0()
{
  result = qword_27EE0E460;
  if (!qword_27EE0E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E460);
  }

  return result;
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = type metadata accessor for AdvancedDataProtectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2452543FC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24522872C()
{
  result = qword_27EE0E4C0;
  if (!qword_27EE0E4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E110);
    sub_24521EA80(&qword_27EE0E4C8, &qword_27EE0E4D0);
    sub_24521EA80(&qword_27EE0E1A8, &qword_27EE0E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E4C0);
  }

  return result;
}

uint64_t sub_24522883C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4D8);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v66 - v4;
  v5 = sub_24525540C();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v75 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v66 - v10;
  v72 = sub_2452548BC();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4E8);
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4F0);
  v71 = *(v73 - 8);
  v16 = MEMORY[0x28223BE20](v73);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4F8);
  MEMORY[0x28223BE20](v80);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E500);
  v82 = *(v23 - 8);
  v83 = v23;
  MEMORY[0x28223BE20](v23);
  v81 = &v66 - v24;
  *v22 = sub_2452547AC();
  *(v22 + 1) = 0x4030000000000000;
  v22[16] = 0;
  sub_245254A3C();
  v85 = a1;
  v86 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E508);
  sub_24521EA80(&qword_27EE0E510, &qword_27EE0E508);
  sub_24525433C();
  sub_2452548AC();
  v25 = sub_245254A3C();
  sub_245254A2C();
  sub_245254A2C();
  if (sub_245254A2C() != v25)
  {
    sub_245254A2C();
  }

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E518) + 44);
  v68 = v22;
  v67 = &v22[v26];
  sub_24521EA80(&qword_27EE0E520, &qword_27EE0E4E8);
  sub_245254CFC();
  (*(v70 + 8))(v12, v72);
  (*(v69 + 8))(v15, v13);
  v27 = v74;
  v28 = sub_2452293AC(v85, v74);
  v29 = v71;
  v30 = *(v71 + 16);
  v31 = v73;
  v30(v18, v20, v73, v28);
  v32 = v75;
  sub_24521F96C(v27, v75, &qword_27EE0E4E0);
  v33 = v67;
  (v30)(v67, v18, v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E528);
  sub_24521F96C(v32, &v33[*(v34 + 48)], &qword_27EE0E4E0);
  sub_24521E5B0(v27, &qword_27EE0E4E0);
  v35 = *(v29 + 8);
  v35(v20, v31);
  sub_24521E5B0(v32, &qword_27EE0E4E0);
  v35(v18, v31);
  v36 = swift_allocObject();
  v37 = v85;
  *(v36 + 16) = v85;
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 defaultCenter];
  v41 = v76;
  sub_24525541C();

  sub_245229E90();
  v42 = sub_2452553DC();
  v87 = v42;
  v43 = sub_2452553CC();
  v44 = v79;
  (*(*(v43 - 8) + 56))(v79, 1, 1, v43);
  v45 = v80;
  sub_24522B738(&qword_27EE0E530, MEMORY[0x277CC9DB0]);
  sub_24522B738(&qword_27EE0E538, sub_245229E90);
  v46 = v68;
  v47 = v78;
  sub_24525427C();
  sub_24521E5B0(v44, &qword_27EE0E4D8);
  (*(v77 + 8))(v41, v47);

  v48 = swift_allocObject();
  *(v48 + 16) = sub_245229E88;
  *(v48 + 24) = v36;
  v49 = (v46 + *(v45 + 56));
  *v49 = sub_245229EDC;
  v49[1] = v48;
  MEMORY[0x28223BE20](v48);
  *(&v66 - 2) = v39;
  v50 = v39;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E540);
  v51 = sub_24521EA80(&qword_27EE0E548, &qword_27EE0E4F8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E550);
  v53 = sub_24521EA80(&qword_27EE0E558, &qword_27EE0E550);
  v87 = v52;
  v88 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v81;
  sub_245254DBC();
  sub_24521E5B0(v46, &qword_27EE0E4F8);
  sub_2452552FC();
  v56 = v50;
  v57 = sub_2452552EC();
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D85700];
  v58[2] = v57;
  v58[3] = v59;
  v58[4] = v56;
  v60 = v56;
  v61 = sub_2452552EC();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = v59;
  v62[4] = v60;
  v63 = sub_245254F9C();
  MEMORY[0x28223BE20](v63);
  *(&v66 - 2) = v60;
  v87 = v45;
  v88 = v85;
  v89 = v51;
  v90 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v83;
  sub_245254D8C();

  return (*(v82 + 8))(v55, v64);
}

__n128 sub_2452293AC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E570);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  *v7 = sub_2452547AC();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E578);
  sub_24522A7F0(a1, &v7[*(v8 + 44)]);
  LOBYTE(a1) = sub_245254A7C();
  sub_2452542DC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E580) + 36)];
  *v17 = a1;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  LOBYTE(a1) = sub_245254A4C();
  sub_2452542DC();
  v18 = &v7[*(v5 + 44)];
  *v18 = a1;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_24525506C();
  sub_24525459C();
  sub_24521E3D8(v7, a2, &qword_27EE0E570);
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4E0) + 36);
  v24 = v27[5];
  *(v23 + 64) = v27[4];
  *(v23 + 80) = v24;
  *(v23 + 96) = v27[6];
  v25 = v27[1];
  *v23 = v27[0];
  *(v23 + 16) = v25;
  result = v27[3];
  *(v23 + 32) = v27[2];
  *(v23 + 48) = result;
  return result;
}

uint64_t sub_245229594(uint64_t a1)
{
  result = sub_245219760();
  if ((result & 1) == *(a1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled))
  {
    *(a1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24522B738(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
    sub_24525416C();
  }

  return result;
}

uint64_t sub_2452296B4(uint64_t a1)
{
  v2 = sub_2452548DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E550);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2452548CC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E560);
  sub_24521EA80(&qword_27EE0E568, &qword_27EE0E560);
  sub_24525438C();
  v7 = sub_24521EA80(&qword_27EE0E558, &qword_27EE0E550);
  MEMORY[0x245D65370](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2452298A0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;

  return sub_245254F4C();
}

uint64_t sub_245229940@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  swift_getKeyPath();
  sub_24522B738(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  *a2 = *(a1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 8) != 0;
  return result;
}

uint64_t sub_2452299FC()
{
  swift_getKeyPath();
  sub_24522B738(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525416C();
}

uint64_t sub_245229AD8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5C8);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5D0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5D8);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  sub_245232000(&v41 - v17);
  v19 = sub_245254A6C();
  v20 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5E0) + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = sub_245254A4C();
  sub_2452542DC();
  v22 = &v18[*(v13 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  *v4 = sub_2452547AC();
  *(v4 + 1) = 0x4030000000000000;
  v4[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5E8);
  sub_245229F68(&v4[*(v27 + 44)]);
  v28 = sub_245254A4C();
  sub_2452542DC();
  v29 = &v4[*(v2 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_24525506C();
  sub_24525459C();
  sub_24521E3D8(v4, v11, &qword_27EE0E5C8);
  v34 = &v11[*(v6 + 44)];
  v35 = v48;
  *(v34 + 4) = v47;
  *(v34 + 5) = v35;
  *(v34 + 6) = v49;
  v36 = v44;
  *v34 = v43;
  *(v34 + 1) = v36;
  v37 = v46;
  *(v34 + 2) = v45;
  *(v34 + 3) = v37;
  sub_24521F96C(v18, v16, &qword_27EE0E5D8);
  sub_24521F96C(v11, v9, &qword_27EE0E5D0);
  v38 = v42;
  sub_24521F96C(v16, v42, &qword_27EE0E5D8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5F0);
  sub_24521F96C(v9, v38 + *(v39 + 48), &qword_27EE0E5D0);
  sub_24521E5B0(v11, &qword_27EE0E5D0);
  sub_24521E5B0(v18, &qword_27EE0E5D8);
  sub_24521E5B0(v9, &qword_27EE0E5D0);
  return sub_24521E5B0(v16, &qword_27EE0E5D8);
}

unint64_t sub_245229E90()
{
  result = qword_27EE0DB80;
  if (!qword_27EE0DB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0DB80);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_245229F68@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5F8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E428);
  v43 = *(v7 - 8);
  v8 = v43;
  v44 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = sub_245254ECC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245254EBC();
  (*(v14 + 104))(v16, *MEMORY[0x277CE0FE0], v13);
  v48 = sub_245254EEC();

  (*(v14 + 8))(v16, v13);
  sub_24525506C();
  sub_2452543EC();
  LOBYTE(v60) = 1;
  *&v55[3] = *&v55[27];
  *&v55[11] = *&v55[35];
  *&v55[19] = *&v55[43];
  v47 = sub_245254E5C();
  v17 = v12;
  v42 = v12;
  sub_245232A20();
  *v6 = sub_2452547AC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E600) + 44)];
  v41 = v6;
  sub_24522A518(v18);
  type metadata accessor for AdvancedDataProtectionDataClassViewModel();
  v40 = swift_allocObject();
  v19 = sub_245254B8C();
  sub_245232C08(v19, &v60);

  v51 = v62;
  v52 = v63;
  v53 = v64;
  v54 = v65;
  v49 = v60;
  v50 = v61;
  v20 = *(v8 + 16);
  v21 = v44;
  v22 = v45;
  v20(v45, v17, v44);
  v23 = v6;
  v24 = v46;
  sub_24521F96C(v23, v46, &qword_27EE0E5F8);
  v56[0] = v48;
  v56[1] = 0;
  LOWORD(v57[0]) = 257;
  *(v57 + 2) = *v55;
  *(&v57[1] + 2) = *&v55[8];
  *(&v57[2] + 2) = *&v55[16];
  *&v57[3] = *&v55[23];
  *(&v57[3] + 1) = v47;
  v25 = v48;
  v26 = v57[0];
  v27 = v57[3];
  *(a1 + 3) = v57[2];
  *(a1 + 4) = v27;
  v28 = v57[1];
  *(a1 + 1) = v26;
  *(a1 + 2) = v28;
  *a1 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E608);
  v20(&a1[v29[12]], v22, v21);
  sub_24521F96C(v24, &a1[v29[16]], &qword_27EE0E5F8);
  v30 = &a1[v29[20]];
  *v30 = v40;
  *(v30 + 8) = xmmword_24525B680;
  v31 = &a1[v29[24]];
  v59 = v54;
  v32 = v51;
  v33 = v52;
  v58[2] = v51;
  v58[3] = v52;
  v34 = v53;
  v58[4] = v53;
  v35 = v49;
  v36 = v50;
  v58[0] = v49;
  v58[1] = v50;
  *(v31 + 10) = v54;
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  *(v31 + 4) = v34;
  *v31 = v35;
  *(v31 + 1) = v36;
  sub_24521F96C(v56, &v60, &qword_27EE0E610);

  sub_24521F96C(v58, &v60, &unk_27EE0E9A0);
  sub_24521E5B0(v41, &qword_27EE0E5F8);
  v37 = *(v43 + 8);
  v37(v42, v21);
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v60 = v49;
  v61 = v50;
  sub_24521E5B0(&v60, &unk_27EE0E9A0);

  sub_24521E5B0(v46, &qword_27EE0E5F8);
  v37(v45, v21);
  v66[0] = v48;
  v66[1] = 0;
  v67 = 257;
  v68 = *v55;
  v69 = *&v55[8];
  *v70 = *&v55[16];
  *&v70[14] = *&v55[23];
  v71 = v47;
  return sub_24521E5B0(v66, &qword_27EE0E610);
}

uint64_t sub_24522A518@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E420);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = [objc_opt_self() bundle];
  v9 = sub_2452540EC();
  v11 = v10;

  v32 = v9;
  v33 = v11;
  sub_24521E31C();
  v12 = sub_245254BFC();
  v26 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = v16 & 1;
  sub_245236654(0xD000000000000021, 0x80000002452628F0, v7);
  v20 = swift_getKeyPath();
  v21 = &v7[*(v3 + 44)];
  *v21 = v20;
  v21[8] = 1;
  v22 = v27;
  sub_24521F96C(v7, v27, &qword_27EE0E420);
  *&v28 = v12;
  *(&v28 + 1) = v14;
  LOBYTE(v29) = v16 & 1;
  *(&v29 + 1) = v18;
  LOWORD(v30) = 256;
  *(&v30 + 1) = KeyPath;
  v31 = 1;
  *(a1 + 48) = 1;
  v23 = v29;
  *a1 = v28;
  *(a1 + 16) = v23;
  *(a1 + 32) = v30;
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E618) + 48);
  sub_24521F96C(v22, v24, &qword_27EE0E420);
  sub_24521F96C(&v28, &v32, &qword_27EE0E1F8);
  sub_24521E5B0(v7, &qword_27EE0E420);
  sub_24521E5B0(v22, &qword_27EE0E420);
  v32 = v26;
  v33 = v14;
  v34 = v16 & 1;
  v35 = v18;
  v36 = 256;
  v37 = KeyPath;
  v38 = 1;
  return sub_24521E5B0(&v32, &qword_27EE0E1F8);
}

uint64_t sub_24522A7F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E3E8);
  v23 = *(v3 - 8);
  v4 = v23;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E588);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_24522AAC4(a1, &v23 - v14);
  *(swift_allocObject() + 16) = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E408);
  sub_245228204();
  sub_245254F4C();
  sub_24521F96C(v15, v13, &qword_27EE0E588);
  v17 = *(v4 + 16);
  v18 = v3;
  v17(v7, v9, v3);
  v19 = v24;
  sub_24521F96C(v13, v24, &qword_27EE0E588);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E590) + 48);
  v17(v20, v7, v18);
  v21 = *(v23 + 8);
  v21(v9, v18);
  sub_24521E5B0(v15, &qword_27EE0E588);
  v21(v7, v18);
  return sub_24521E5B0(v13, &qword_27EE0E588);
}

uint64_t sub_24522AAC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_2452549CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E598);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5A0);
  v21 = *(v11 - 8);
  v22 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  *(swift_allocObject() + 16) = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E5A8);
  sub_24522B6AC();
  sub_245254F4C();
  sub_2452549BC();
  sub_24521EA80(&qword_27EE0E5B8, &qword_27EE0E598);
  sub_24522B738(&qword_27EE0E5C0, MEMORY[0x277CDE400]);
  sub_245254C5C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v24 = v14;
  sub_24522B738(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  if (v14[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled])
  {
    v15 = 0;
  }

  else
  {
    swift_getKeyPath();
    v24 = v14;
    sub_24525417C();

    v15 = *&v14[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage + 8] != 0;
  }

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = v23;
  (*(v21 + 32))(v23, v13, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E588);
  v20 = (v18 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = sub_24522B780;
  v20[2] = v17;
  return result;
}

__n128 sub_24522AF10@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_2452540EC();
  v4 = v3;

  *(&v24 + 1) = v4;
  sub_24521E31C();
  v5 = sub_245254BFC();
  v7 = v6;
  LOBYTE(v4) = v8;
  v9 = sub_245254BCC();
  v11 = v10;
  v13 = v12;
  sub_24521F95C(v5, v7, v4 & 1);

  *&v24 = sub_245254E7C();
  v14 = sub_245254BBC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24521F95C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  sub_24525506C();
  sub_24525459C();
  *&v23[23] = v25;
  *&v23[7] = v24;
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[39] = v26;
  *(a1 + 105) = *&v23[64];
  *(a1 + 121) = *&v23[80];
  *(a1 + 137) = *&v23[96];
  *(a1 + 41) = *v23;
  *(a1 + 57) = *&v23[16];
  result = *&v23[32];
  *(a1 + 73) = *&v23[32];
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *(&v30 + 1);
  *(a1 + 89) = *&v23[48];
  return result;
}

uint64_t sub_24522B198@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  v3 = sub_245254BFC();
  v5 = v4;
  v7 = v6;
  v8 = sub_245254BCC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_24521F95C(v3, v5, v7 & 1);

  result = swift_getKeyPath();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_24522B2E4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  result = sub_245254BFC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_24522B3B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24522B738(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  *a2 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled);
  return result;
}

uint64_t sub_24522B490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24522B738(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  v4 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage);
  a2[1] = v4;
}

uint64_t sub_24522B548(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_245233B54(v1, v2);
}

uint64_t sub_24522B5D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24525468C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24522B6AC()
{
  result = qword_27EE0E5B0;
  if (!qword_27EE0E5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E5A8);
    sub_245228204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E5B0);
  }

  return result;
}

uint64_t sub_24522B738(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24522B798(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24522B860()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  return v1;
}

uint64_t sub_24522B8E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  return v1;
}

uint64_t sub_24522B954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();
}

BOOL sub_24522B9CC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_245219760();
  *a1 = result;
  return result;
}

uint64_t sub_24522B9F8()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24525424C();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    sub_24521898C(sub_24522D8C4, v2);
  }

  return result;
}

void sub_24522BAF4()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_opt_self();

  v2 = [v1 sharedInstance];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24522C9AC;
  *(v3 + 24) = v0;
  v5[4] = sub_245217F04;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_24522B798;
  v5[3] = &block_descriptor_2;
  v4 = _Block_copy(v5);

  [v2 getWalrusConfigWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_24522BC44(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2452550CC();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2452550FC();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245217E28(0, &qword_27EE0DB80);
  v12 = sub_2452553DC();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_24522C9CC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor_60;
  v16 = _Block_copy(aBlock);

  sub_2452550EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24522D7B4(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_24521EA80(&qword_27EE0DB98, &qword_27EE0DB90);
  sub_2452554DC();
  MEMORY[0x245D65E70](0, v11, v8, v16);
  _Block_release(v16);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_24522BF98()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_24525424C();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_24525424C();
  }

  return result;
}

uint64_t sub_24522C084(char a1)
{
  v2 = sub_2452550CC();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2452550FC();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245217E28(0, &qword_27EE0DB80);
  v8 = sub_2452553DC();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24522D8A4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor_103;
  v11 = _Block_copy(aBlock);

  sub_2452550EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24522D7B4(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_24521EA80(&qword_27EE0DB98, &qword_27EE0DB90);
  sub_2452554DC();
  MEMORY[0x245D65E70](0, v7, v4, v11);
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_24522C39C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24525424C();
  }

  return result;
}

id sub_24522C460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvancedDataProtectionViewModelInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AdvancedDataProtectionViewModelInterface()
{
  result = qword_27EE0E678;
  if (!qword_27EE0E678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24522C708()
{
  sub_24522C914(319, &qword_27EE0F200);
  if (v0 <= 0x3F)
  {
    sub_24522C8B0();
    if (v1 <= 0x3F)
    {
      sub_24522C914(319, &qword_27EE0E698);
      if (v2 <= 0x3F)
      {
        sub_24525540C();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24522C8B0()
{
  if (!qword_27EE0E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E690);
    v0 = sub_24525425C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0E688);
    }
  }
}

void sub_24522C914(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24525425C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_24522C96C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AdvancedDataProtectionViewModelInterface();
  result = sub_24525421C();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_24522C9DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v75 = a7;
  v73 = a6;
  v72 = a5;
  v78 = a4;
  v74 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E6B0);
  MEMORY[0x28223BE20]();
  v93 = &v72 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E4D8);
  MEMORY[0x28223BE20]();
  v86 = &v72 - v12;
  v79 = sub_2452550DC();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20]();
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24525540C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20]();
  v80 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E6B8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20]();
  v81 = &v72 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E6C0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20]();
  v87 = &v72 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E6C8);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20]();
  v90 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E6A0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20]();
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0F290);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20]();
  v25 = &v72 - v24;
  v26 = OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface__progressViewIsDisplayed;
  LOBYTE(v97[0]) = 0;
  sub_24525422C();
  (*(v23 + 32))(&v8[v26], v25, v22);
  v27 = OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface__localizedWalrusUnavailableMessage;
  v97[0] = 0;
  v97[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E690);
  sub_24525422C();
  (*(v19 + 32))(&v8[v27], v21, v18);
  v28 = [objc_opt_self() defaultCenter];
  sub_24525541C();

  *&v8[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_walrusStateSubscription] = 0;
  *&v8[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_cdpContext] = a1;
  v29 = objc_opt_self();
  v30 = a1;
  v31 = [v29 sharedInstance];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v33 = result;
    v34 = sub_245217E28(0, &qword_27EE0E6D0);
    type metadata accessor for AdvancedDataProtectionReporter();
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v31;
    v35[4] = v33;
    v35[5] = v34;
    v97[3] = sub_245217E28(0, &qword_27EE0DBA8);
    v97[4] = &off_285824968;
    v36 = a3;
    v97[0] = a3;
    v97[5] = v35;
    v97[6] = v30;
    v97[7] = v72;
    sub_24522D758(v97, v96);
    type metadata accessor for AdvancedDataProtectionViewModelHelper();
    v37 = swift_allocObject();
    v38 = v96[1];
    *(v37 + 56) = v96[0];
    *(v37 + 72) = v38;
    v39 = v96[3];
    *(v37 + 88) = v96[2];
    *(v37 + 120) = 0xD000000000000021;
    *(v37 + 128) = 0x80000002452628F0;
    *(v37 + 40) = v35;
    *(v37 + 48) = a3;
    *(v37 + 104) = v39;
    v40 = v73;
    *(v37 + 16) = v30;
    *(v37 + 24) = v40;
    v41 = v75;
    *(v37 + 32) = v75;
    *&v8[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_adpViewModelHelper] = v37;
    v42 = v74;
    *&v8[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_accountRecoveryRowViewModel] = v74;
    v43 = v30;
    v44 = v36;

    v45 = v42;
    v46 = sub_245219760();
    swift_beginAccess();
    v95 = v46;
    sub_24525422C();
    swift_endAccess();
    swift_beginAccess();
    v95 = 0;
    sub_24525422C();
    swift_endAccess();
    swift_beginAccess();
    v95 = 0;
    sub_24525422C();
    swift_endAccess();
    swift_beginAccess();
    v95 = 0;
    sub_24525422C();
    swift_endAccess();
    v47 = &v8[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_contextProvider];
    *v47 = v40;
    *(v47 + 1) = v41;
    *&v8[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_advancedDataProtectionDataClassViewModel] = v78;
    v48 = type metadata accessor for AdvancedDataProtectionViewModelInterface();
    v94.receiver = v8;
    v94.super_class = v48;

    v49 = objc_msgSendSuper2(&v94, sel_init);
    v50 = v82;
    v51 = v80;
    v52 = v83;
    (*(v82 + 16))(v80, v49 + OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_walrusStatePublisher, v83);
    sub_245217E28(0, &qword_27EE0DB80);
    v53 = v77;
    v54 = v76;
    v55 = v79;
    (*(v77 + 104))(v76, *MEMORY[0x277D851C8], v79);
    v56 = v49;
    v57 = sub_2452553FC();
    (*(v53 + 8))(v54, v55);
    *&v96[0] = v57;
    v58 = sub_2452553CC();
    v59 = v86;
    (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
    sub_24522D7B4(&qword_27EE0E530, MEMORY[0x277CC9DB0]);
    sub_24522D7FC(&qword_27EE0E538, &qword_27EE0DB80);
    v60 = v81;
    sub_24525427C();
    sub_24521E5B0(v59, &qword_27EE0E4D8);

    (*(v50 + 8))(v51, v52);
    sub_24521EA80(&qword_27EE0E6D8, &qword_27EE0E6B8);
    v61 = v87;
    v62 = v85;
    sub_24525426C();
    (*(v84 + 8))(v60, v62);
    v63 = [objc_opt_self() mainRunLoop];
    *&v96[0] = v63;
    v64 = sub_24525547C();
    v65 = v93;
    (*(*(v64 - 8) + 56))(v93, 1, 1, v64);
    sub_245217E28(0, &qword_27EE0E6E0);
    sub_24521EA80(&qword_27EE0E6E8, &qword_27EE0E6C0);
    sub_24522D7FC(&qword_27EE0E6F0, &qword_27EE0E6E0);
    v66 = v90;
    v67 = v89;
    sub_24525427C();
    sub_24521E5B0(v65, &qword_27EE0E6B0);

    (*(v88 + 8))(v61, v67);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24521EA80(&qword_27EE0E6F8, &qword_27EE0E6C8);
    v68 = v92;
    v69 = sub_24525428C();

    (*(v91 + 8))(v66, v68);
    *&v56[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_walrusStateSubscription] = v69;

    sub_24522BAF4();
    v70 = swift_allocObject();
    *(v70 + 16) = v56;
    v71 = v56;
    sub_24521898C(sub_24522D848, v70);

    sub_24522D850(v97);
    return v71;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24522D7B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24522D7FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_245217E28(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9CoreCDPUI19ADPUpsellAlertStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24522D8EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24522D93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_24522D994(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24522D9C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24522DA34(uint64_t a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];

  return sub_245254E2C();
}

void sub_24522DA7C(char a1)
{
  [v1 startSpinner];
  v3 = *&v1[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_adpViewModelHelper];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v4 = v1;
  sub_245245D14(a1, v5, (v3 + 56), v4, a1);
}

uint64_t sub_24522DB40(char *a1, char a2, uint64_t a3, int a4)
{
  v20 = a4;
  v6 = sub_2452550CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_2452550FC();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  sub_245229E90();
  v14 = sub_2452553DC();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  *(v16 + 25) = a2;
  *(v16 + 26) = v20;
  aBlock[4] = sub_24522F1F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor_81;
  v17 = _Block_copy(aBlock);

  sub_2452550EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24522F1B0(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_245217D7C();
  sub_2452554DC();
  MEMORY[0x245D65E70](0, v12, v9, v17);
  _Block_release(v17);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

void sub_24522DE30(uint64_t a1, char a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong stopSpinner];
    if (a2 != 5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v8;
      sub_24525424C();
    }

    if (a3)
    {
      if (qword_27EE0D9E8 != -1)
      {
        swift_once();
      }

      v10 = sub_24525420C();
      __swift_project_value_buffer(v10, qword_27EE11750);
      v11 = sub_2452541EC();
      v12 = sub_24525536C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2451DB000, v11, v12, "Beginning enablement flow", v13, 2u);
        MEMORY[0x245D66A70](v13, -1, -1);
      }

      sub_24522EA38(a4 & 1);
    }
  }
}

void sub_24522DFB4()
{
  [v0 startSpinner];
  v1 = *&v0[OBJC_IVAR____TtC9CoreCDPUI40AdvancedDataProtectionViewModelInterface_adpViewModelHelper];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  v2 = v0;
  sub_245245A10(v4, v3, (v1 + 56));
}

uint64_t sub_24522E0B8(char *a1, char a2)
{
  v4 = sub_2452550CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2452550FC();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_245229E90();
  v12 = sub_2452553DC();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;
  *(v14 + 25) = a2;
  aBlock[4] = sub_24522F188;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);

  sub_2452550EC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24522F1B0(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_245217D7C();
  sub_2452554DC();
  MEMORY[0x245D65E70](0, v10, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

void sub_24522E39C(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong stopSpinner];
    if (a2 != 5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = v6;
      sub_24525424C();
    }

    if (a3)
    {
      if (qword_27EE0D9E8 != -1)
      {
        swift_once();
      }

      v8 = sub_24525420C();
      __swift_project_value_buffer(v8, qword_27EE11750);
      v9 = sub_2452541EC();
      v10 = sub_24525536C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2451DB000, v9, v10, "Beginning enablement flow", v11, 2u);
        MEMORY[0x245D66A70](v11, -1, -1);
      }

      sub_24522E518();
    }
  }
}

void sub_24522E518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - v3;
  v5 = sub_24525415C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24525423C();

  sub_24524575C(v33, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24522F120(v4);
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v12 = sub_24525420C();
    __swift_project_value_buffer(v12, qword_27EE11750);
    v13 = v0;
    v14 = sub_2452541EC();
    v15 = sub_24525536C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24525423C();

      *(v16 + 4) = v32;

      _os_log_impl(&dword_2451DB000, v14, v15, "enablement flow cancelled nil url, walrus enabled: %{BOOL}d", v16, 8u);
      MEMORY[0x245D66A70](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v17 = sub_24525420C();
    __swift_project_value_buffer(v17, qword_27EE11750);
    (*(v6 + 16))(v9, v11, v5);
    v18 = sub_2452541EC();
    v19 = sub_24525536C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      v31 = v30[0];
      *v20 = 136315138;
      sub_24522F1B0(&qword_27EE0E7E8, MEMORY[0x277CC9260]);
      v21 = sub_2452555AC();
      v30[1] = v1;
      v23 = v22;
      v24 = *(v6 + 8);
      v24(v9, v5);
      v25 = sub_24524031C(v21, v23, &v31);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2451DB000, v18, v19, "Beginning enablement flow with URL: %s", v20, 0xCu);
      v26 = v30[0];
      __swift_destroy_boxed_opaque_existential_1(v30[0]);
      MEMORY[0x245D66A70](v26, -1, -1);
      MEMORY[0x245D66A70](v20, -1, -1);
    }

    else
    {

      v24 = *(v6 + 8);
      v24(v9, v5);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = sub_24525412C();
      [v28 beginEnablementFlow_];
      swift_unknownObjectRelease();
    }

    v24(v11, v5);
  }
}

void sub_24522EA38(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = sub_24525415C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  sub_24524575C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24522F120(v6);
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v14 = sub_24525420C();
    __swift_project_value_buffer(v14, qword_27EE11750);
    v15 = v1;
    v16 = sub_2452541EC();
    v17 = sub_24525536C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24525423C();

      *(v18 + 4) = v34;

      _os_log_impl(&dword_2451DB000, v16, v17, "ADP Status Healing flow cancelled nil url, walrus enabled: %{BOOL}d", v18, 8u);
      MEMORY[0x245D66A70](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v19 = sub_24525420C();
    __swift_project_value_buffer(v19, qword_27EE11750);
    (*(v8 + 16))(v11, v13, v7);
    v20 = sub_2452541EC();
    v21 = sub_24525536C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      v33 = v32[0];
      *v22 = 136315138;
      sub_24522F1B0(&qword_27EE0E7E8, MEMORY[0x277CC9260]);
      v23 = sub_2452555AC();
      v32[1] = v2;
      v25 = v24;
      v26 = *(v8 + 8);
      v26(v11, v7);
      v27 = sub_24524031C(v23, v25, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2451DB000, v20, v21, "Beginning ADP Status Healing flow with URL: %s", v22, 0xCu);
      v28 = v32[0];
      __swift_destroy_boxed_opaque_existential_1(v32[0]);
      MEMORY[0x245D66A70](v28, -1, -1);
      MEMORY[0x245D66A70](v22, -1, -1);
    }

    else
    {

      v26 = *(v8 + 8);
      v26(v11, v7);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v31 = sub_24525412C();
      [v30 beginEnablementFlow_];
      swift_unknownObjectRelease();
    }

    v26(v13, v7);
  }
}

id sub_24522EF28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvancedDataProtectionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AdvancedDataProtectionViewModel()
{
  result = qword_27EE0E710;
  if (!qword_27EE0E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24522F018(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_24525424C();
}

uint64_t sub_24522F0B0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_24525424C();
}

uint64_t sub_24522F120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24522F1B0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24522F238(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24522F280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24522F2F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v51 = a1;
  v55 = a5;
  v5 = sub_2452544FC();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_245254B7C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7F8);
  MEMORY[0x28223BE20](v45);
  v17 = (&v44 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E800);
  v46 = *(v18 - 8);
  v47 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = sub_245254EBC();
  v22 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E808) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E810) + 28);
  v24 = *MEMORY[0x277CE1050];
  v25 = sub_245254EDC();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v17 = v21;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  v26 = sub_245254ADC();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_245254B1C();
  v27 = sub_245254B2C();
  sub_24521E5B0(v11, &qword_27EE0E7F0);
  v28 = v12;
  v29 = v45;
  (*(v13 + 8))(v15, v28);
  KeyPath = swift_getKeyPath();
  v31 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E818) + 36));
  *v31 = KeyPath;
  v31[1] = v27;
  LODWORD(KeyPath) = sub_2452548FC();
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E820) + 36)) = KeyPath;
  LOBYTE(KeyPath) = sub_245254A6C();
  sub_2452374C8(v49, v48 & 1);
  sub_2452542DC();
  v32 = v17 + *(v29 + 36);
  *v32 = KeyPath;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  if (sub_245237694(v51, v50 & 1))
  {
    v37 = v44;
    sub_2452544EC();
    v38 = v52;
    sub_2452544CC();
    v40 = v53;
    v39 = v54;
    (*(v53 + 8))(v37, v54);
  }

  else
  {
    v38 = v52;
    sub_2452544DC();
    v40 = v53;
    v39 = v54;
  }

  v41 = sub_24522F96C();
  sub_245254C9C();
  (*(v40 + 8))(v38, v39);
  sub_24521E5B0(v17, &qword_27EE0E7F8);
  v56 = v29;
  v57 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v47;
  sub_245254CEC();
  return (*(v46 + 8))(v20, v42);
}